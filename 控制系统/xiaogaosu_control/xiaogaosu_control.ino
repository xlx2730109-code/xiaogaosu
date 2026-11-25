/*
 * 小高速 ESP32-S3 底盘控制固件 FW=SIMPLE-0.4
 * 与 控制系统/esp32_control_simple/src/main.cpp 源码同步，供 Arduino IDE 编译与 Jetson 联调。
 *
 * Arduino IDE 配置（Arduino-ESP32 2.0.17）：
 * - 板型：ESP32S3 Dev Module
 * - Flash Mode：QIO
 * - Flash Size：16MB
 * - Partition Scheme：16MB 默认分区
 * - PSRAM：OPI PSRAM
 * - 使用板载 USB-UART（CP210x）时，USB CDC On Boot 选 Disabled
 *
 * 通道与运动说明：
 * - 遥控接收机已完成油门与转向差速混控，ESP32 不做二次混控。
 * - CH2（GPIO15）原样转发至左侧 GPIO4（左前）、GPIO5（左后）。
 * - CH4（GPIO16）原样转发至右侧 GPIO6（右前）、GPIO7（右后）。
 *
 * Jetson 串口格式与调试命令（115200 波特率）：
 * - 只读状态无需发送命令；上电后约每 300 ms 输出一行：
 *   MODE=PASS|FIX | CH2=<us|NO_PULSE> CH4=<us|NO_PULSE> | OUT_L=<us> OUT_R=<us>
 * - 支持串口命令：HELP | FIX <1100-1900> | FIX L|R <1100-1900> | STOP
 *   （FIX 限时 5 秒，约 71 Hz，结束后自动发 1500 us 回中并恢复 PASS 模式）
 */

#include <Arduino.h>
#include <driver/rmt.h>
#include <esp_timer.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

namespace {

constexpr int64_t kMinPulseUs = 800;
constexpr int64_t kMaxPulseUs = 2200;
constexpr int64_t kPulseTimeoutUs = 100000;  // 100 ms 无有效脉冲显示 NO_PULSE。
constexpr uint32_t kReportIntervalMs = 300;
constexpr uint32_t kFixPeriodMs = 14;        // FIX 模式按约 71 Hz（14 ms）发送脉宽。
constexpr uint32_t kFixTimeoutMs = 5000;     // FIX 单次定脉宽测试限时 5 秒。
constexpr uint16_t kFixMinUs = 1100;
constexpr uint16_t kFixMaxUs = 1900;
constexpr uint16_t kNeutralUs = 1500;

struct Side {
    Side(gpio_num_t input, gpio_num_t front, gpio_num_t rear, rmt_channel_t output)
        : input(input), front(front), rear(rear), output(output) {}

    gpio_num_t input;
    gpio_num_t front;
    gpio_num_t rear;
    rmt_channel_t output;
    int64_t riseUs = 0;
    bool waitingForFall = false;
    uint16_t pendingPulseUs = 0;
    uint16_t lastWidthUs = 0;
    int64_t lastValidAtUs = 0;
    uint16_t lastOutUs = 0;
    rmt_item32_t pulse{};
};

// The receiver has already mixed throttle and steering into left/right commands.
// CH2 drives both left ESCs; CH4 drives both right ESCs without remixing.
Side sides[] = {
    {GPIO_NUM_15, GPIO_NUM_4, GPIO_NUM_5, RMT_CHANNEL_0},
    {GPIO_NUM_16, GPIO_NUM_6, GPIO_NUM_7, RMT_CHANNEL_1},
};
portMUX_TYPE pulseLock = portMUX_INITIALIZER_UNLOCKED;

bool fixActive = false;
uint16_t fixTargetUs[2] = {kNeutralUs, kNeutralUs};
uint32_t fixStartedAtMs = 0;
uint32_t lastFixSentAtMs = 0;
uint32_t lastReportAtMs = 0;
char commandBuffer[64]{};
uint8_t commandLength = 0;

void IRAM_ATTR capturePulse(void *argument) {
    auto &side = *static_cast<Side *>(argument);
    const int64_t nowUs = esp_timer_get_time();
    if (gpio_get_level(side.input)) {
        side.riseUs = nowUs;
        side.waitingForFall = true;
        return;
    }
    if (!side.waitingForFall) {
        return;
    }

    side.waitingForFall = false;
    const int64_t widthUs = nowUs - side.riseUs;
    if (widthUs < kMinPulseUs || widthUs > kMaxPulseUs) {
        return;
    }

    portENTER_CRITICAL_ISR(&pulseLock);
    side.pendingPulseUs = static_cast<uint16_t>(widthUs);
    side.lastWidthUs = static_cast<uint16_t>(widthUs);
    side.lastValidAtUs = nowUs;
    portEXIT_CRITICAL_ISR(&pulseLock);
}

void sendSidePulse(Side &side, uint16_t widthUs) {
    ESP_ERROR_CHECK(rmt_wait_tx_done(side.output, portMAX_DELAY));
    side.pulse.duration0 = widthUs;
    ESP_ERROR_CHECK(rmt_write_items(side.output, &side.pulse, 1, false));
    side.lastOutUs = widthUs;
}

void stopFixAndNeutral() {
    fixActive = false;
    sendSidePulse(sides[0], kNeutralUs);
    sendSidePulse(sides[1], kNeutralUs);
    // 丢弃测试期间累积的待转发脉冲，恢复透传。
    portENTER_CRITICAL(&pulseLock);
    sides[0].pendingPulseUs = 0;
    sides[1].pendingPulseUs = 0;
    portEXIT_CRITICAL(&pulseLock);
}

void handleCommand(char *line, uint32_t nowMs) {
    char cmd[12]{};
    char arg1[12]{};
    long val = 0;
    if (sscanf(line, "%11s", cmd) != 1) {
        return;
    }
    for (char *p = cmd; *p; ++p) {
        *p = static_cast<char>(toupper(*p));
    }

    if (strcmp(cmd, "HELP") == 0) {
        Serial.println("CMD: HELP | FIX <1100-1900> | FIX L|R <1100-1900> | STOP");
        return;
    }
    if (strcmp(cmd, "STOP") == 0) {
        stopFixAndNeutral();
        Serial.println("STOPPED: sent 1500 us and returned to PASS mode");
        return;
    }
    if (strcmp(cmd, "FIX") != 0) {
        Serial.println("Unknown cmd; type HELP");
        return;
    }

    if (sscanf(line, "%*s %ld", &val) == 1) {
        if (val < kFixMinUs || val > kFixMaxUs) {
            Serial.printf("FIX pulse must be %u-%u us\n", kFixMinUs, kFixMaxUs);
            return;
        }
        fixTargetUs[0] = static_cast<uint16_t>(val);
        fixTargetUs[1] = static_cast<uint16_t>(val);
        fixActive = true;
        fixStartedAtMs = nowMs;
        lastFixSentAtMs = 0;
        Serial.printf("FIX BOTH=%ld us for 5 s\n", val);
        return;
    }

    if (sscanf(line, "%*s %11s %ld", arg1, &val) == 2 && val >= kFixMinUs && val <= kFixMaxUs) {
        const char sideChar = static_cast<char>(toupper(arg1[0]));
        if (arg1[1] == '\0' && (sideChar == 'L' || sideChar == 'R')) {
            fixTargetUs[0] = (sideChar == 'L') ? static_cast<uint16_t>(val) : kNeutralUs;
            fixTargetUs[1] = (sideChar == 'R') ? static_cast<uint16_t>(val) : kNeutralUs;
            fixActive = true;
            fixStartedAtMs = nowMs;
            lastFixSentAtMs = 0;
            Serial.printf("FIX %c=%ld us (other=1500 us) for 5 s\n", sideChar, val);
            return;
        }
    }

    Serial.println("Usage: FIX <1100-1900> | FIX L|R <1100-1900>");
}

void processSerialCommands(uint32_t nowMs) {
    while (Serial.available() > 0) {
        const char c = static_cast<char>(Serial.read());
        if (c == '\r' || c == '\n') {
            if (commandLength > 0) {
                commandBuffer[commandLength] = '\0';
                handleCommand(commandBuffer, nowMs);
                commandLength = 0;
            }
        } else if (commandLength < sizeof(commandBuffer) - 1) {
            commandBuffer[commandLength++] = c;
        } else {
            commandLength = 0;
            Serial.println("Command too long");
        }
    }
}

void printStatus(uint32_t nowMs, int64_t nowUs) {
    if (nowMs - lastReportAtMs < kReportIntervalMs) {
        return;
    }
    lastReportAtMs = nowMs;

    uint16_t ch2Width = 0;
    uint16_t ch4Width = 0;
    int64_t ch2At = 0;
    int64_t ch4At = 0;

    portENTER_CRITICAL(&pulseLock);
    ch2Width = sides[0].lastWidthUs;
    ch2At = sides[0].lastValidAtUs;
    ch4Width = sides[1].lastWidthUs;
    ch4At = sides[1].lastValidAtUs;
    portEXIT_CRITICAL(&pulseLock);

    const bool ch2Valid = ch2At > 0 && (nowUs - ch2At) < kPulseTimeoutUs;
    const bool ch4Valid = ch4At > 0 && (nowUs - ch4At) < kPulseTimeoutUs;

    Serial.printf("MODE=%s | CH2=", fixActive ? "FIX" : "PASS");
    if (ch2Valid) {
        Serial.printf("%u", ch2Width);
    } else {
        Serial.print("NO_PULSE");
    }
    Serial.print(" CH4=");
    if (ch4Valid) {
        Serial.printf("%u", ch4Width);
    } else {
        Serial.print("NO_PULSE");
    }
    Serial.printf(" | OUT_L=%u OUT_R=%u\n", sides[0].lastOutUs, sides[1].lastOutUs);
}

}  // namespace

void setup() {
    Serial.begin(115200);

    for (auto &side : sides) {
        rmt_config_t config = RMT_DEFAULT_CONFIG_TX(side.front, side.output);
        config.clk_div = 80;  // ESP32-S3 默认 80 MHz APB 时钟，分频后每 tick 为 1 µs。
        ESP_ERROR_CHECK(rmt_config(&config));
        // 同一个 RMT 硬件信号接到同侧两只电调，两个引脚同步输出。
        ESP_ERROR_CHECK(rmt_set_gpio(side.output, RMT_MODE_TX, side.rear, false));
        ESP_ERROR_CHECK(rmt_driver_install(side.output, 0, 0));

        side.pulse.level0 = 1;
        side.pulse.level1 = 0;
        side.pulse.duration1 = 1;  // 脉冲结束后由 RMT 保持低电平。
        pinMode(side.input, INPUT_PULLDOWN);
        attachInterruptArg(side.input, capturePulse, &side, CHANGE);
    }

    Serial.println("FW=SIMPLE-0.4 SIDE-PASS CH2->GPIO4/5 CH4->GPIO6/7 | cmd: HELP / FIX <us> / FIX L|R <us> / STOP");
}

void loop() {
    const uint32_t nowMs = millis();
    const int64_t nowUs = esp_timer_get_time();

    processSerialCommands(nowMs);

    if (fixActive) {
        if (nowMs - fixStartedAtMs >= kFixTimeoutMs) {
            stopFixAndNeutral();
            Serial.println("FIX ended; returned to PASS mode");
        } else if (lastFixSentAtMs == 0 || nowMs - lastFixSentAtMs >= kFixPeriodMs) {
            lastFixSentAtMs = nowMs;
            sendSidePulse(sides[0], fixTargetUs[0]);
            sendSidePulse(sides[1], fixTargetUs[1]);
        }
    } else {
        for (auto &side : sides) {
            if (rmt_wait_tx_done(side.output, 0) != ESP_OK) {
                continue;
            }

            portENTER_CRITICAL(&pulseLock);
            const uint16_t widthUs = side.pendingPulseUs;
            side.pendingPulseUs = 0;
            portEXIT_CRITICAL(&pulseLock);

            // 新的有效脉冲触发一次输出，其余时间由 RMT 保持低电平。
            if (widthUs != 0) {
                side.pulse.duration0 = widthUs;
                ESP_ERROR_CHECK(rmt_write_items(side.output, &side.pulse, 1, false));
                side.lastOutUs = widthUs;
            }
        }
    }

    printStatus(nowMs, nowUs);
    delay(1);
}

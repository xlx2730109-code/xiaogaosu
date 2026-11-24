#include <Arduino.h>
#include <driver/gpio.h>
#include <esp_timer.h>

namespace {

// 100 ms 内没有收到完整脉冲，就将该通道标记为无有效信号。
constexpr int64_t pulseTimeoutUs = 100000;
// 每 200 ms 输出一次最新读数，即每秒 5 次。
constexpr uint32_t reportIntervalMs = 200;

struct PulseSample {
    int64_t widthUs = 0;       // PWM 高电平持续时间，也就是脉宽。
    int64_t periodUs = 0;      // 相邻两个上升沿之间的时间，也就是周期。
    int64_t completedAtUs = 0; // 最近一次完整脉冲的采集时间。
};

struct Channel {
    explicit Channel(gpio_num_t inputPin) : pin(inputPin) {}

    const gpio_num_t pin;
    int64_t riseAtUs = 0;      // 当前脉冲上升沿的时间。
    int64_t periodUs = 0;      // 最近一次测得的信号周期。
    bool waitingForFall = false;
    PulseSample latest{};      // 最近一次完整脉冲，供主循环读取。
};

// 接收机信号输入：CH2 的 S 接 GPIO15，CH4 的 S 接 GPIO16。
Channel ch2{GPIO_NUM_15};
Channel ch4{GPIO_NUM_16};
portMUX_TYPE sampleLock = portMUX_INITIALIZER_UNLOCKED;

// CHANGE 中断同时捕获上升沿和下降沿，用于计算脉宽与周期。
void IRAM_ATTR captureEdge(void *argument) {
    auto &channel = *static_cast<Channel *>(argument);
    const int64_t nowUs = esp_timer_get_time();

    if (gpio_get_level(channel.pin)) {
        // 上升沿：计算周期，并开始记录本次高电平的起始时间。
        const int64_t elapsedUs = nowUs - channel.riseAtUs;
        channel.periodUs = channel.riseAtUs && elapsedUs < pulseTimeoutUs ? elapsedUs : 0;
        channel.riseAtUs = nowUs;
        channel.waitingForFall = true;
        return;
    }

    if (!channel.waitingForFall) {
        return;
    }
    // 下降沿：计算脉宽，并保存完整的一次采样。
    channel.waitingForFall = false;
    const int64_t widthUs = nowUs - channel.riseAtUs;
    if (widthUs <= 0 || widthUs >= pulseTimeoutUs) {
        return;
    }

    portENTER_CRITICAL_ISR(&sampleLock);
    channel.latest.widthUs = widthUs;
    channel.latest.periodUs = channel.periodUs;
    channel.latest.completedAtUs = nowUs;
    portEXIT_CRITICAL_ISR(&sampleLock);
}

void printSample(const char *name, const PulseSample &sample, int64_t nowUs) {
    // NO_PULSE 表示近期没有采集到完整脉冲，可能是信号中断。
    if (sample.completedAtUs == 0 || nowUs - sample.completedAtUs >= pulseTimeoutUs) {
        Serial.printf("%s: NO_PULSE", name);
        return;
    }
    Serial.printf("%s: %lld us", name, static_cast<long long>(sample.widthUs));
    if (sample.periodUs > 0) {
        Serial.printf(", period %lld us", static_cast<long long>(sample.periodUs));
    }
}

}  // namespace

void setup() {
    Serial.begin(115200);
    // 输入端启用下拉，并为两路接收机信号注册双边沿中断。
    pinMode(ch2.pin, INPUT_PULLDOWN);
    pinMode(ch4.pin, INPUT_PULLDOWN);
    attachInterruptArg(ch2.pin, captureEdge, &ch2, CHANGE);
    attachInterruptArg(ch4.pin, captureEdge, &ch4, CHANGE);
    Serial.println("Receiver PWM diagnostic: CH2=GPIO15, CH4=GPIO16");
}

void loop() {
    PulseSample sample2;
    PulseSample sample4;
    // 在临界区内复制中断数据，避免主循环读取时数据同时被更新。
    portENTER_CRITICAL(&sampleLock);
    sample2 = ch2.latest;
    sample4 = ch4.latest;
    portEXIT_CRITICAL(&sampleLock);
    const int64_t nowUs = esp_timer_get_time();

    printSample("CH2", sample2, nowUs);
    Serial.print(" | ");
    printSample("CH4", sample4, nowUs);
    Serial.println();
    delay(reportIntervalMs);
}

#include <Arduino.h>
#include <driver/gpio.h>
#include <esp_timer.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

namespace {

// 无完整有效输入 100 ms 后进入中位保护。
constexpr int64_t kPulseTimeoutUs = 100000;
// LEDC API 接收整数 Hz；71 Hz 时实际帧周期约为 14.085 ms。
constexpr uint32_t kOutputFrequencyHz = 71;
constexpr uint8_t kLedcResolutionBits = 14;
constexpr uint32_t kLedcDutyTicks = 1U << kLedcResolutionBits;
constexpr uint32_t kLedcDutyMax = (1U << kLedcResolutionBits) - 1;
constexpr uint32_t kReportIntervalMs = 200;
constexpr uint32_t kTestTimeoutMs = 5000;
// 解锁须有明确的同向油门动作，再回中保持 2 秒。
constexpr uint32_t kArmNeutralHoldMs = 2000;
constexpr uint16_t kArmGestureOffsetUs = 100;
constexpr uint8_t kArmGestureFrames = 3;
// 限制输出脉宽变化速度，减缓电调指令突变。
constexpr uint32_t kSlewLimitUsPerSecond = 900;
constexpr uint32_t kMaxSlewElapsedUs = 20000;
// 仅接收合理的普通 PPM 脉宽和周期，剔除明显毛刺。
constexpr uint16_t kMinInputPulseUs = 800;
constexpr uint16_t kMaxInputPulseUs = 2200;
constexpr uint32_t kMinInputPeriodUs = 10000;
constexpr uint32_t kMaxInputPeriodUs = 20000;
// 使用最近 3 帧的中值，抑制单帧异常值。
constexpr uint8_t kFilterSamples = 3;
constexpr uint16_t kDeadbandUs = 20;

// 输入校准；初值来自遥控器实测。
uint16_t leftInputMinUs = 1248, leftInputNeutralUs = 1500, leftInputMaxUs = 1751;
uint16_t rightInputMinUs = 1242, rightInputNeutralUs = 1497, rightInputMaxUs = 1749;

struct ChannelInput {
    explicit ChannelInput(gpio_num_t pin) : inputPin(pin) {}

    // CH2 与 CH4 的 GPIO 输入及脉冲采集状态。
    gpio_num_t inputPin;
    int64_t riseAtUs = 0;
    volatile uint32_t periodUs = 0;
    bool waitingForFall = false;
    uint16_t pulseSamples[kFilterSamples]{};
    uint8_t sampleCount = 0;
    uint8_t nextSample = 0;
    int64_t lastValidAtUs = 0;
    uint32_t rejectedPulseCount = 0;
};

struct InputSnapshot {
    // 主循环读取的一份稳定通道采样。
    uint16_t pulseUs = 0;
    uint32_t periodUs = 0;
    int64_t lastValidAtUs = 0;
    uint32_t rejectedPulseCount = 0;
    bool valid = false;
};

struct MotorOutput {
    MotorOutput(uint8_t outputPin,
                uint8_t outputChannel,
                uint16_t stopPulseUs,
                uint16_t minimumPulseUs,
                uint16_t maximumPulseUs,
                bool reverseDirection,
                uint16_t initialPulseUs)
        : pin(outputPin),
          ledcChannel(outputChannel),
          escStopUs(stopPulseUs),
          minUs(minimumPulseUs),
          maxUs(maximumPulseUs),
          invert(reverseDirection),
          currentUs(initialPulseUs) {}

    // 一个电调的信号引脚、LEDC 通道及当前输出脉宽。
    uint8_t pin;
    uint8_t ledcChannel;
    uint16_t escStopUs;
    uint16_t minUs;
    uint16_t maxUs;
    bool invert;
    uint16_t currentUs;
    uint32_t frequencyHz = 0;
    bool initialized = false;
};

ChannelInput leftInput{GPIO_NUM_15};
ChannelInput rightInput{GPIO_NUM_16};
portMUX_TYPE inputLock = portMUX_INITIALIZER_UNLOCKED;

// CH2 直通左侧两台电调，CH4 直通右侧两台电调，不再做混控。
MotorOutput motors[] = {
    {4, 0, 1500, 1248, 1751, false, 1500},
    {5, 1, 1500, 1248, 1751, false, 1500},
    {6, 2, 1497, 1242, 1749, false, 1497},
    {7, 3, 1497, 1242, 1749, false, 1497},
};

bool armMovementSeen = false;
bool armed = false;
uint8_t armGestureFrameCount = 0;
uint32_t neutralSinceMs = 0;
uint32_t lastControlAtMs = 0;
uint32_t lastReportAtMs = 0;
bool outputsReady = false;
bool inputsReady = false;
int8_t testMotorIndex = -1;
uint16_t testPulseUs = 0;
uint32_t testStartedAtMs = 0;
char commandBuffer[80]{};
uint8_t commandLength = 0;
int64_t lastArmPairLeftAtUs = 0;
int64_t lastArmPairRightAtUs = 0;

void writeAllStop();
void writePulse(MotorOutput &motor, uint16_t pulseUs);
void disableOutputs();
void printStatus(const InputSnapshot &left,
                 const InputSnapshot &right,
                 uint32_t nowMs,
                 bool force);

void stopAndLock() {
    armed = false;
    armMovementSeen = false;
    armGestureFrameCount = 0;
    neutralSinceMs = 0;
    testMotorIndex = -1;
    lastControlAtMs = millis();
    writeAllStop();
}

void handleCommand(char *line, const InputSnapshot &left, const InputSnapshot &right, uint32_t nowMs) {
    char command[12]{};
    int motorNumber = 0;
    long pulseUs = 0;
    char parameter[12]{};
    if (sscanf(line, "%11s", command) != 1) return;
    for (char *p = command; *p; ++p) *p = static_cast<char>(toupper(*p));

    if (strcmp(command, "HELP") == 0) {
        Serial.println("STATUS | STOP | TEST <1-4> <us> | SET <1-4> STOP|MIN|MAX|INV <value>");
        return;
    }
    if (strcmp(command, "STATUS") == 0) {
        printStatus(left, right, nowMs, true);
        for (uint8_t i = 0; i < 4; ++i) {
            const auto &motor = motors[i];
            Serial.printf("M%u STOP=%u MIN=%u MAX=%u INV=%u\n",
                          i + 1, motor.escStopUs, motor.minUs, motor.maxUs, motor.invert);
        }
        return;
    }
    if (strcmp(command, "STOP") == 0) {
        stopAndLock();
        Serial.println("LOCKED; outputs at configured stop pulses");
        return;
    }
    if (strcmp(command, "TEST") == 0) {
        if (sscanf(line, "%*s %d %ld", &motorNumber, &pulseUs) != 2 ||
            armed || testMotorIndex >= 0 || !left.valid || !right.valid ||
            motorNumber < 1 || motorNumber > 4) {
            Serial.println("TEST requires LOCKED, valid inputs, motor 1-4 and pulse_us");
            return;
        }
        MotorOutput &motor = motors[motorNumber - 1];
        if (pulseUs < motor.minUs || pulseUs > motor.maxUs) {
            Serial.printf("M%d range is %u-%u us\n", motorNumber, motor.minUs, motor.maxUs);
            return;
        }
        testMotorIndex = static_cast<int8_t>(motorNumber - 1);
        testPulseUs = static_cast<uint16_t>(pulseUs);
        testStartedAtMs = nowMs;
        lastControlAtMs = nowMs;
        writeAllStop();
        Serial.printf("M%d test for 5 s; wheels must be raised\n", motorNumber);
        return;
    }
    if (strcmp(command, "SET") != 0 || armed || testMotorIndex >= 0 ||
        sscanf(line, "%*s %d %11s %ld", &motorNumber, parameter, &pulseUs) != 3 ||
        motorNumber < 1 || motorNumber > 4) {
        Serial.println("SET requires LOCKED: SET <1-4> STOP|MIN|MAX|INV <value>");
        return;
    }
    for (char *p = parameter; *p; ++p) *p = static_cast<char>(toupper(*p));
    MotorOutput &motor = motors[motorNumber - 1];
    if (strcmp(parameter, "INV") == 0 && (pulseUs == 0 || pulseUs == 1)) {
        motor.invert = pulseUs == 1;
    } else if (strcmp(parameter, "STOP") == 0 && pulseUs >= motor.minUs && pulseUs <= motor.maxUs) {
        motor.escStopUs = static_cast<uint16_t>(pulseUs);
    } else if (strcmp(parameter, "MIN") == 0 && pulseUs >= kMinInputPulseUs &&
               pulseUs < motor.escStopUs && pulseUs < motor.maxUs) {
        motor.minUs = static_cast<uint16_t>(pulseUs);
    } else if (strcmp(parameter, "MAX") == 0 && pulseUs <= kMaxInputPulseUs &&
               pulseUs > motor.escStopUs && pulseUs > motor.minUs) {
        motor.maxUs = static_cast<uint16_t>(pulseUs);
    } else {
        Serial.println("SET rejected: value is outside the valid STOP/MIN/MAX/INV order");
        return;
    }
    writeAllStop();
    Serial.println("Updated in RAM; STATUS shows current settings");
}

// 双边沿中断测量接收机 PWM 的高电平脉宽和帧周期。
void IRAM_ATTR captureEdge(void *argument) {
    auto &channel = *static_cast<ChannelInput *>(argument);
    const int64_t nowUs = esp_timer_get_time();

    if (gpio_get_level(channel.inputPin)) {
        // 上升沿开始新脉冲，并计算与上一帧的间隔。
        const int64_t periodUs = nowUs - channel.riseAtUs;
        portENTER_CRITICAL_ISR(&inputLock);
        channel.periodUs = channel.riseAtUs > 0 ? static_cast<uint32_t>(periodUs) : 0;
        portEXIT_CRITICAL_ISR(&inputLock);
        channel.riseAtUs = nowUs;
        channel.waitingForFall = true;
        return;
    }

    if (!channel.waitingForFall) {
        return;
    }
    // 下降沿结束高电平；只把脉宽、周期均在有效范围内的帧存入滤波器。
    channel.waitingForFall = false;
    const int64_t pulseUs = nowUs - channel.riseAtUs;
    if (pulseUs < kMinInputPulseUs || pulseUs > kMaxInputPulseUs ||
        channel.periodUs < kMinInputPeriodUs || channel.periodUs > kMaxInputPeriodUs) {
        portENTER_CRITICAL_ISR(&inputLock);
        ++channel.rejectedPulseCount;
        portEXIT_CRITICAL_ISR(&inputLock);
        return;
    }

    portENTER_CRITICAL_ISR(&inputLock);
    channel.pulseSamples[channel.nextSample] = static_cast<uint16_t>(pulseUs);
    channel.nextSample = (channel.nextSample + 1) % kFilterSamples;
    if (channel.sampleCount < kFilterSamples) {
        ++channel.sampleCount;
    }
    channel.lastValidAtUs = nowUs;
    portEXIT_CRITICAL_ISR(&inputLock);
}

// 对最近几帧排序后取中值，避免单个异常脉冲改变电机指令。
uint16_t medianPulse(const uint16_t *samples, uint8_t count) {
    uint16_t sorted[kFilterSamples];
    for (uint8_t i = 0; i < count; ++i) {
        sorted[i] = samples[i];
    }
    for (uint8_t i = 1; i < count; ++i) {
        const uint16_t value = sorted[i];
        int8_t j = static_cast<int8_t>(i) - 1;
        while (j >= 0 && sorted[j] > value) {
            sorted[j + 1] = sorted[j];
            --j;
        }
        sorted[j + 1] = value;
    }
    return sorted[count / 2];
}

InputSnapshot readInput(ChannelInput &channel, int64_t nowUs) {
    uint16_t samples[kFilterSamples];
    uint8_t count;
    uint32_t periodUs;
    int64_t lastValidAtUs;
    uint32_t rejectedPulseCount;

    // 中断可能同时更新采样环形缓冲区，复制时使用临界区。
    portENTER_CRITICAL(&inputLock);
    count = channel.sampleCount;
    periodUs = channel.periodUs;
    lastValidAtUs = channel.lastValidAtUs;
    rejectedPulseCount = channel.rejectedPulseCount;
    for (uint8_t i = 0; i < count; ++i) {
        samples[i] = channel.pulseSamples[i];
    }
    portEXIT_CRITICAL(&inputLock);

    InputSnapshot result;
    result.periodUs = periodUs;
    result.lastValidAtUs = lastValidAtUs;
    result.rejectedPulseCount = rejectedPulseCount;
    result.valid = count == kFilterSamples &&
                   lastValidAtUs > 0 &&
                   nowUs - lastValidAtUs < kPulseTimeoutUs &&
                   periodUs >= kMinInputPeriodUs &&
                   periodUs <= kMaxInputPeriodUs;
    if (result.valid) {
        result.pulseUs = medianPulse(samples, count);
    }
    return result;
}

uint16_t motorTargetUs(uint16_t inputPulseUs,
                       uint16_t inputMinUs,
                       uint16_t inputNeutralUs,
                       uint16_t inputMaxUs,
                       const MotorOutput &motor) {
    const int32_t inputDeltaUs = static_cast<int32_t>(inputPulseUs) - inputNeutralUs;
    if (abs(inputDeltaUs) <= kDeadbandUs) {
        return motor.escStopUs;
    }

    const bool inputAboveNeutral = inputDeltaUs > 0;
    const bool outputAboveStop = motor.invert ? !inputAboveNeutral : inputAboveNeutral;
    const uint32_t inputSpanUs = inputAboveNeutral
        ? inputMaxUs - inputNeutralUs
        : inputNeutralUs - inputMinUs;
    const uint32_t outputSpanUs = outputAboveStop
        ? motor.maxUs - motor.escStopUs
        : motor.escStopUs - motor.minUs;
    if (inputSpanUs == 0) {
        return motor.escStopUs;
    }

    const uint32_t mappedDeltaUs =
        (static_cast<uint32_t>(abs(inputDeltaUs)) * outputSpanUs + inputSpanUs / 2) / inputSpanUs;
    const int32_t targetUs = static_cast<int32_t>(motor.escStopUs) +
                             (outputAboveStop ? mappedDeltaUs : -static_cast<int32_t>(mappedDeltaUs));
    return constrain(targetUs, static_cast<int32_t>(motor.minUs), static_cast<int32_t>(motor.maxUs));
}

// 按经过的时间逐步靠近目标脉宽，避免输出瞬间跳变。
uint16_t slewToward(uint16_t currentUs, uint16_t targetUs, uint32_t elapsedUs) {
    elapsedUs = min(elapsedUs, kMaxSlewElapsedUs);
    const uint32_t maxStepUs = max<uint32_t>(
        1, (static_cast<uint64_t>(kSlewLimitUsPerSecond) * elapsedUs) / 1000000);
    if (targetUs > currentUs) {
        return static_cast<uint16_t>(min<uint32_t>(targetUs, currentUs + maxStepUs));
    }
    return static_cast<uint16_t>(max<int32_t>(targetUs, currentUs - min<uint32_t>(currentUs, maxStepUs)));
}

void writePulse(MotorOutput &motor, uint16_t pulseUs) {
    motor.currentUs = pulseUs;
    // 用每个 LEDC 定时器的实际频率换算脉宽，避免整数频率取整造成中位偏移。
    uint32_t duty = static_cast<uint32_t>(
        (static_cast<uint64_t>(pulseUs) * motor.frequencyHz * kLedcDutyTicks + 500000U) / 1000000U);
    duty = min(duty, kLedcDutyMax);
    ledcWrite(motor.ledcChannel, min(duty, kLedcDutyMax));
}

void writeAllStop() {
    // 未解锁或输入无效时，四路输出各自可配置的电调停止脉宽。
    for (auto &motor : motors) {
        if (motor.initialized) {
            writePulse(motor, motor.escStopUs);
        }
    }
}

bool initializeOutputs() {
    for (auto &motor : motors) {
        // ESP32-S3 LEDC 最高 14 位；输出帧频率按整数 Hz 设置。
        motor.frequencyHz = ledcSetup(motor.ledcChannel, kOutputFrequencyHz, kLedcResolutionBits);
        if (motor.frequencyHz == 0) {
            Serial.printf("LEDC setup failed on GPIO%u\n", motor.pin);
            for (auto &configuredMotor : motors) {
                if (configuredMotor.initialized) {
                    ledcDetachPin(configuredMotor.pin);
                    configuredMotor.initialized = false;
                }
                pinMode(configuredMotor.pin, INPUT_PULLDOWN);
            }
            return false;
        }
        ledcAttachPin(motor.pin, motor.ledcChannel);
        motor.initialized = true;
    }
    writeAllStop();
    return true;
}

void disableOutputs() {
    for (auto &motor : motors) {
        if (motor.initialized) {
            ledcDetachPin(motor.pin);
            motor.initialized = false;
        }
        pinMode(motor.pin, INPUT_PULLDOWN);
    }
}

bool initializeInputs() {
    gpio_config_t inputConfig{};
    inputConfig.pin_bit_mask = (1ULL << leftInput.inputPin) | (1ULL << rightInput.inputPin);
    inputConfig.mode = GPIO_MODE_INPUT;
    inputConfig.pull_up_en = GPIO_PULLUP_DISABLE;
    inputConfig.pull_down_en = GPIO_PULLDOWN_ENABLE;
    inputConfig.intr_type = GPIO_INTR_ANYEDGE;
    if (gpio_config(&inputConfig) != ESP_OK) {
        Serial.println("Receiver GPIO configuration failed");
        return false;
    }

    const esp_err_t serviceResult = gpio_install_isr_service(ESP_INTR_FLAG_IRAM);
    if (serviceResult != ESP_OK && serviceResult != ESP_ERR_INVALID_STATE) {
        Serial.printf("GPIO ISR service failed: %d\n", serviceResult);
        return false;
    }
    if (gpio_isr_handler_add(leftInput.inputPin, captureEdge, &leftInput) != ESP_OK) {
        Serial.println("CH2 interrupt registration failed");
        return false;
    }
    if (gpio_isr_handler_add(rightInput.inputPin, captureEdge, &rightInput) != ESP_OK) {
        gpio_isr_handler_remove(leftInput.inputPin);
        Serial.println("CH4 interrupt registration failed");
        return false;
    }
    return true;
}

void updateArmState(const InputSnapshot &left, const InputSnapshot &right, uint32_t nowMs) {
    if (testMotorIndex >= 0) {
        armed = false;
        return;
    }

    if (!left.valid || !right.valid) {
        // 任一路失去有效帧，锁定输出并要求重新执行解锁动作。
        armed = false;
        armMovementSeen = false;
        armGestureFrameCount = 0;
        neutralSinceMs = 0;
        lastArmPairLeftAtUs = 0;
        lastArmPairRightAtUs = 0;
        return;
    }

    const bool bothNeutral =
        abs(static_cast<int32_t>(left.pulseUs) - leftInputNeutralUs) <= kDeadbandUs &&
        abs(static_cast<int32_t>(right.pulseUs) - rightInputNeutralUs) <= kDeadbandUs;
    const bool newInputPair =
        left.lastValidAtUs > lastArmPairLeftAtUs &&
        right.lastValidAtUs > lastArmPairRightAtUs;

    if (newInputPair) {
        lastArmPairLeftAtUs = left.lastValidAtUs;
        lastArmPairRightAtUs = right.lastValidAtUs;
    }

    if (newInputPair && !armed) {
        if (!armed && !bothNeutral) {
            const int32_t leftDeltaUs = static_cast<int32_t>(left.pulseUs) - leftInputNeutralUs;
            const int32_t rightDeltaUs = static_cast<int32_t>(right.pulseUs) - rightInputNeutralUs;
            const bool deliberateThrottle =
                (leftDeltaUs >= kArmGestureOffsetUs && rightDeltaUs >= kArmGestureOffsetUs) ||
                (leftDeltaUs <= -kArmGestureOffsetUs && rightDeltaUs <= -kArmGestureOffsetUs);
            armGestureFrameCount = deliberateThrottle
                ? min<uint8_t>(kArmGestureFrames, armGestureFrameCount + 1)
                : 0;
            armMovementSeen = armGestureFrameCount >= kArmGestureFrames;
            neutralSinceMs = 0;
        }
    }

    if (armed) {
        return;
    }

    if (!bothNeutral) {
        neutralSinceMs = 0;
        return;
    }

    if (armMovementSeen) {
        // 只认前后油门同向动作，左右转向动作不能单独解锁。
        if (neutralSinceMs == 0) {
            neutralSinceMs = nowMs;
        } else if (nowMs - neutralSinceMs >= kArmNeutralHoldMs) {
            armed = true;
            armGestureFrameCount = 0;
            lastControlAtMs = nowMs;
        }
    }
}

void updateOutputs(const InputSnapshot &left, const InputSnapshot &right, uint32_t nowMs) {
    if (testMotorIndex >= 0) {
        if (!left.valid || !right.valid || nowMs - testStartedAtMs >= kTestTimeoutMs) {
            const int8_t finishedMotor = testMotorIndex;
            stopAndLock();
            Serial.printf("TEST M%d ended; outputs at configured stop pulses\n", finishedMotor + 1);
            return;
        }
        for (uint8_t i = 0; i < 4; ++i) {
            if (i != static_cast<uint8_t>(testMotorIndex)) {
                writePulse(motors[i], motors[i].escStopUs);
            }
        }
        MotorOutput &motor = motors[testMotorIndex];
        const uint32_t elapsedMs = nowMs - lastControlAtMs;
        lastControlAtMs = nowMs;
        const uint32_t elapsedUs = min(elapsedMs * 1000U, kMaxSlewElapsedUs);
        writePulse(motor, slewToward(motor.currentUs, testPulseUs, elapsedUs));
        return;
    }

    if (!left.valid || !right.valid || !armed) {
        writeAllStop();
        lastControlAtMs = nowMs;
        return;
    }

    const bool bothNeutral =
        abs(static_cast<int32_t>(left.pulseUs) - leftInputNeutralUs) <= kDeadbandUs &&
        abs(static_cast<int32_t>(right.pulseUs) - rightInputNeutralUs) <= kDeadbandUs;
    if (bothNeutral) {
        writeAllStop();
        lastControlAtMs = nowMs;
        return;
    }

    const uint32_t elapsedMs = lastControlAtMs == 0 ? 0 : nowMs - lastControlAtMs;
    const uint32_t elapsedUs = min(elapsedMs * 1000U, kMaxSlewElapsedUs);
    lastControlAtMs = nowMs;

    for (auto &motor : motors) {
        const bool leftSide = motor.pin == 4 || motor.pin == 5;
        const uint16_t inputPulseUs = leftSide ? left.pulseUs : right.pulseUs;
        const uint16_t inputNeutralUs = leftSide ? leftInputNeutralUs : rightInputNeutralUs;
        const uint16_t inputMinUs = leftSide ? leftInputMinUs : rightInputMinUs;
        const uint16_t inputMaxUs = leftSide ? leftInputMaxUs : rightInputMaxUs;
        const uint16_t targetUs =
            motorTargetUs(inputPulseUs, inputMinUs, inputNeutralUs, inputMaxUs, motor);
        writePulse(motor, slewToward(motor.currentUs, targetUs, elapsedUs));
    }
}

void printStatus(const InputSnapshot &left, const InputSnapshot &right, uint32_t nowMs, bool force) {
    if (!force && nowMs - lastReportAtMs < kReportIntervalMs) {
        return;
    }
    lastReportAtMs = nowMs;
    Serial.printf(
        "%s | CH2=%s%u us CH4=%s%u us | M1=%u M2=%u M3=%u M4=%u us | REJ=%lu/%lu\n",
        testMotorIndex >= 0 ? "TEST" : (armed ? "ARMED" : "LOCKED"),
        left.valid ? "" : "NO_PULSE ",
        left.valid ? left.pulseUs : 0,
        right.valid ? "" : "NO_PULSE ",
        right.valid ? right.pulseUs : 0,
        motors[0].currentUs,
        motors[1].currentUs,
        motors[2].currentUs,
        motors[3].currentUs,
        static_cast<unsigned long>(left.rejectedPulseCount),
        static_cast<unsigned long>(right.rejectedPulseCount));
}

void processSerialCommands(const InputSnapshot &left,
                           const InputSnapshot &right,
                           uint32_t nowMs) {
    while (Serial.available() > 0) {
        const char value = static_cast<char>(Serial.read());
        if (value == '\r' || value == '\n') {
            if (commandLength > 0) {
                commandBuffer[commandLength] = '\0';
                handleCommand(commandBuffer, left, right, nowMs);
                commandLength = 0;
            }
        } else if (commandLength < sizeof(commandBuffer) - 1) {
            commandBuffer[commandLength++] = value;
        } else {
            commandLength = 0;
            Serial.println("Command too long");
        }
    }
}

void printSetupFault(uint32_t nowMs) {
    if (nowMs - lastReportAtMs < 1000) {
        return;
    }
    lastReportAtMs = nowMs;
    Serial.printf("SETUP_FAULT LEDC=%s GPIO_ISR=%s\n",
                  outputsReady ? "OK" : "FAILED",
                  inputsReady ? "OK" : "FAILED");
}

}  // namespace

void setup() {
    Serial.begin(115200);
    enableLoopWDT();
    outputsReady = initializeOutputs();
    inputsReady = initializeInputs();
    const uint32_t actualFrequencyHz = outputsReady ? motors[0].frequencyHz : 0;
    const uint32_t actualPeriodUs = actualFrequencyHz > 0 ? 1000000U / actualFrequencyHz : 0;
    Serial.printf("FW=0.4.0 PWM=%lu Hz period=%lu us LEDC=%u-bit\n",
                  static_cast<unsigned long>(actualFrequencyHz),
                  static_cast<unsigned long>(actualPeriodUs),
                  kLedcResolutionBits);
    Serial.println("CH2=left CH4=right; move both in one direction, then center for 2 s to arm.");
}

void loop() {
    const int64_t nowUs = esp_timer_get_time();
    const uint32_t nowMs = millis();
    if (!outputsReady || !inputsReady) {
        if (outputsReady) {
            writeAllStop();
        }
        printSetupFault(nowMs);
        feedLoopWDT();
        delay(20);
        return;
    }

    const InputSnapshot left = readInput(leftInput, nowUs);
    const InputSnapshot right = readInput(rightInput, nowUs);

    processSerialCommands(left, right, nowMs);
    updateArmState(left, right, nowMs);
    updateOutputs(left, right, nowMs);
    printStatus(left, right, nowMs, false);

    delay(5);
    feedLoopWDT();
}

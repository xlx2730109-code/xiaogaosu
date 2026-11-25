#include <Arduino.h>
#include <driver/rmt.h>

namespace {

constexpr uint32_t kMinPulseUs = 800;
constexpr uint32_t kMaxPulseUs = 2200;

struct Side {
    Side(gpio_num_t input, gpio_num_t front, gpio_num_t rear, rmt_channel_t output)
        : input(input), front(front), rear(rear), output(output) {}

    gpio_num_t input;
    gpio_num_t front;
    gpio_num_t rear;
    rmt_channel_t output;
    uint32_t riseUs = 0;
    bool waitingForFall = false;
    uint16_t pendingPulseUs = 0;
    rmt_item32_t pulse{};
};

// The receiver has already mixed throttle and steering into left/right commands.
// CH2 drives both left ESCs; CH4 drives both right ESCs without remixing.
Side sides[] = {
    {GPIO_NUM_15, GPIO_NUM_4, GPIO_NUM_5, RMT_CHANNEL_0},
    {GPIO_NUM_16, GPIO_NUM_6, GPIO_NUM_7, RMT_CHANNEL_1},
};
portMUX_TYPE pulseLock = portMUX_INITIALIZER_UNLOCKED;

void IRAM_ATTR capturePulse(void *argument) {
    auto &side = *static_cast<Side *>(argument);
    const uint32_t nowUs = micros();
    if (gpio_get_level(side.input)) {
        side.riseUs = nowUs;
        side.waitingForFall = true;
        return;
    }
    if (!side.waitingForFall) {
        return;
    }

    side.waitingForFall = false;
    const uint32_t widthUs = nowUs - side.riseUs;
    if (widthUs < kMinPulseUs || widthUs > kMaxPulseUs) {
        return;
    }

    portENTER_CRITICAL_ISR(&pulseLock);
    side.pendingPulseUs = static_cast<uint16_t>(widthUs);
    portEXIT_CRITICAL_ISR(&pulseLock);
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

    Serial.println("FW=SIMPLE-0.4 SIDE-PASS CH2->GPIO4/5 CH4->GPIO6/7");
}

void loop() {
    for (auto &side : sides) {
        if (rmt_wait_tx_done(side.output, 0) != ESP_OK) {
            continue;
        }

        portENTER_CRITICAL(&pulseLock);
        const uint16_t widthUs = side.pendingPulseUs;
        side.pendingPulseUs = 0;
        portEXIT_CRITICAL(&pulseLock);

        // Forward the receiver's already-mixed side command unchanged.
        if (widthUs != 0) {
            side.pulse.duration0 = widthUs;
            ESP_ERROR_CHECK(rmt_write_items(side.output, &side.pulse, 1, false));
        }
    }
    delay(1);
}

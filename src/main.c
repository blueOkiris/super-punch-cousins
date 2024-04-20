// Entry point for game

#include <stdint.h>
#include <mmap.h>
#include <ppu.h>
#include <input.h>

// Together, it means we have a speed of 4 sbpx / loop * 1 subpx / 2^6 pixels = 0.0625 px/frame
#define TEST_SUB_SHIFT_SCALE    6           // Each sub pixel is (1/2^6)th of a pixel
#define TEST_SUB_COUNT_SCALE    4           // Sub pixels only add every 4th loop

const palette_t TEST_SPR_PALETTE = {
    0x15,
    0x12,
    0x30
};

uint16_t COUNTER = 0;
spr_t TEST = { 0 };
uint16_t TEST_X_SUB = 0;

void start(void) {
    // Enable Rendering
    PPU_CTRL = 0b10000000;
    PPU_MASK = 0b00010000;

    TEST.y = 100;
    TEST.tile_ind = CHR_EXCLAM;
    TEST.attr = 0b00000001;
    TEST.x = 100;
    TEST_X_SUB = ((uint16_t) TEST.x) << TEST_SUB_SHIFT_SCALE;

    while (1) {
        COUNTER++;
        input_read_p1();
        if (BTNS & BTN_RIGHT && COUNTER % TEST_SUB_COUNT_SCALE == 0) {
            TEST_X_SUB++;
            TEST.x = (uint8_t) (TEST_X_SUB >> TEST_SUB_COUNT_SCALE);
        } else if (BTNS & BTN_LEFT && COUNTER % TEST_SUB_COUNT_SCALE == 0) {
            TEST_X_SUB--;
            TEST.x = (uint8_t) (TEST_X_SUB >> TEST_SUB_COUNT_SCALE);
        }
        if (TEST.x > 240) {
            TEST.x = 8;
            TEST_X_SUB = 8 << TEST_SUB_COUNT_SCALE;
        } else if (TEST.x < 8) {
            TEST.x = 240;
            TEST_X_SUB = 240 << TEST_SUB_COUNT_SCALE;
        }
    }
}

void nmi(void) {
    PPU_SET_BG(0x0F)
    PPU_SET_PALETTE(PLT_SPR1, (&TEST_SPR_PALETTE))
    PPU_SET_SPR(0, (&TEST))
}


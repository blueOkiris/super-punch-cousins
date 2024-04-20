// Entry point for game

#include <stdint.h>
#include <mmap.h>
#include <ppu.h>

const palette_t TEST_SPR_PALETTE = {
    0x15,
    0x12,
    0x30
};

spr_t TEST = { 0 };
uint16_t TEST_X_SUB = 0;

void start(void) {
    uint8_t a = sizeof(spr_attr_t);
    // Enable Rendering
    PPU_CTRL = 0b10000000;
    PPU_MASK = 0b00010000;

    TEST.y = 100;
    TEST.tile_ind = CHR_EXCLAM;
    TEST.attr = 0b00000001;
    TEST.x = 100;
    TEST_X_SUB = ((uint16_t) TEST.x) << 8;

    while (1) {
        TEST_X_SUB++;
        if (TEST_X_SUB > ((uint16_t) 240) << 8) {
            TEST_X_SUB = 0;
        }
        TEST.x = (uint8_t) (TEST_X_SUB >> 8);
    }
}

void nmi(void) {
    PPU_SET_BG(0x0F)
    PPU_SET_PALETTE(PLT_SPR1, (&TEST_SPR_PALETTE))
    PPU_SET_SPR(0, (&TEST))
}


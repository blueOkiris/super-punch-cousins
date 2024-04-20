// Sprites and how to manipulate them

#ifndef __PPU_H__
#define __PPU_H__

#include <stdint.h>

#define PPU_SET_BG(color) \
    PPU_ADDR = PPU_MEM_PALETTE_HI; \
    PPU_ADDR = PLT_BG_COL; \
    PPU_DATA = color;

#define PPU_SET_PALETTE(id, ref_palette) \
    PPU_ADDR = PPU_MEM_PALETTE_HI; \
    PPU_ADDR = id; \
    PPU_DATA = ref_palette->col1; \
    PPU_DATA = ref_palette->col2; \
    PPU_DATA = ref_palette->col3;

#define PPU_SET_SPR(id, ref_spr) \
    OAM_ADDR = id << 2; \
    OAM_DATA = ref_spr->y - 1; \
    OAM_DATA = ref_spr->tile_ind; \
    OAM_DATA = *((uint8_t *) &(ref_spr->attr)); \
    OAM_DATA = ref_spr->x;

#define CHR_SP      0
#define CHR_EXCLAM  1

#define PLT_BG_COL  0x00
#define PLT_BG0     0x01
#define PLT_BG1     0x05
#define PLT_BG2     0x09
#define PLT_BG3     0x0D
#define PLT_SPR0    0x11
#define PLT_SPR1    0x15
#define PLT_SPR2    0x19
#define PLT_SPR3    0x1D

#define NUM_SPRS    64

typedef struct {
    int palette: 2;
    int zero: 3;
    int behind: 1;
    int flip_h: 1;
    int flip_v: 1;
} spr_attr_t;

typedef struct {
    uint8_t y;
    uint8_t tile_ind;
    uint8_t attr;
    uint8_t x;
} spr_t;

typedef struct {
    uint8_t col1;
    uint8_t col2;
    uint8_t col3;
} palette_t;

#endif


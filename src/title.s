; Implement title screen drawing and functionality

.include "../include/ppu.s"
.include "../include/colors.s"

.import ppu_disable
.import ppu_enable
.import ppu_load_nametable
.import ppu_load_attrtable
.import ATTRTABLE
.import NAMETABLE
.import TITLE_BG
.import TITLE_BG_ATTR

.export title_init

.segment "RODATA"

PL_BG1:
    .byte   BLACK, BLACK, WHITE

.segment "CODE"

title_init:
    jsr     ppu_disable

    PPU_SET_BG              YELLOW

    PPU_LOAD_PALETTE        PPU_MEM_PLT_BG1, PL_BG1

    DOUBLE_FILL_FROM_MEM    NAMETABLE, TITLE_BG, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 224, TITLE_BG + 224, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 448, TITLE_BG + 448, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 672, TITLE_BG + 672, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 896, TITLE_BG + 896, 32, 64

    DOUBLE_FILL_FROM_MEM    ATTRTABLE, TITLE_BG_ATTR, 8, 240

    jsr     ppu_load_nametable
    jsr     ppu_load_attrtable

    jsr     ppu_enable
    rts


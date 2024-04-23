; Functionality for messing with ppu

.include "../include/ppu.s"

.export ppu_enable
.export ppu_disable
.export ppu_load_nametable
.export ppu_load_attrtable
.import NAMETABLE
.import ATTRTABLE

.segment "CODE"

ppu_enable:
    lda     #%10000000
    sta     PPU_CTRL
    lda     #%00001010
    sta     PPU_MASK
    rts

ppu_disable:
    lda     #0
    sta     PPU_CTRL
    lda     #0
    sta     PPU_MASK
    rts

ppu_load_nametable:
    PPU_LOAD_NAMETABLE      PPU_MEM_NAMETABLE0_HI, NAMETABLE
    rts

ppu_load_attrtable:
    PPU_LOAD_ATTRTABLE      PPU_MEM_NAMETABLE0_HI, ATTRTABLE
    rts


; Functionality for messing with ppu

.include "../include/ppu.s"

.export ppu_enable
.export ppu_disable

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


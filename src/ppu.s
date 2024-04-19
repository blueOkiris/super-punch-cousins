; Graphical functionality goes here along with CHRS

.include "mmap.s"

.import palettes

.export palettes_to_ppu

.segment "CODE"

palettes_to_ppu:
    lda     #PPU_MEM_PALETTE_HI
    sta     PPU_ADDR
    lda     #PPU_MEM_PALETTE_BCC_LO ; We're actually loading BCC through Sprite Palette 3
    sta     PPU_ADDR
    ldx     #0
@loop:
    lda     palettes, x
    sta     PPU_DATA
    inx
    cpx     #32
    bne     @loop
    rts

.segment "CHARS"

    .byte %11000011	                ; H (00)
    .byte %11000011
    .byte %11000011
    .byte %11111111
    .byte %00000000
    .byte %00000000
    .byte %11000011
    .byte %11000011

    .byte %11000011
    .byte %11000011
    .byte %00000000
    .byte %00000000
    .byte %11111111
    .byte %11000011
    .byte 0, 0

    .byte %11111111	                ; E (01)
    .byte %11111111
    .byte %11000000
    .byte %11111100
    .byte %11111100
    .byte %11000000
    .byte %11111111
    .byte %11111111
    .byte $00, $00, $00, $00, $00, $00, $00, $00

    .byte %11000000	                ; L (02)
    .byte %11000000
    .byte %11000000
    .byte %11000000
    .byte %11000000
    .byte %11000000
    .byte %11111111
    .byte %11111111
    .byte $00, $00, $00, $00, $00, $00, $00, $00

    .byte %01111110	                ; O (03)
    .byte %11100111
    .byte %11000011
    .byte %11000011
    .byte %11000011
    .byte %11000011
    .byte %11100111
    .byte %01111110
    .byte $00, $00, $00, $00, $00, $00, $00, $00


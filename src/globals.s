; Global variables

.include "mmap.s"

.export init_global_vars
.export palettes
.export hello
.export counter16

.segment "CODE"

init_global_vars:
    ; Load palettes
    ldx     #0
@palettes_loop:
    lda     def_palettes, x
    sta     palettes, x
    inx
    cpx     #32
    bne     @palettes_loop

    ; Load hello
    ldx     #0
@hello_loop:
    lda     def_hello, x
    sta     hello, x
    inx
    cpx     #28
    bne     @hello_loop

    ; counter16
    lda     #0
    sta     counter16

    rts

; In read only memory, provide seed data for variables
.segment "RODATA"

def_palettes:
    ; Bg palettes
    .byte   $00, $00, $00, $00      ; Universal BG color
    .byte   $00, $00, $00, $00      ; BG Palette 0
    .byte   $00, $00, $00, $00      ; BG Palette 1
    .byte   $00, $00, $00, $00      ; BG Palette 2

    ; Spr palette
    .byte   $30, $16, $12, $19      ; Spr palette 0
    .byte   $00, $00, $00, $00      ; Spr palette 1
    .byte   $00, $00, $00, $00      ; Spr palette 2
    .byte   $00, $00, $00, $00      ; Spr palette 3

; List of OAM objects
; Y, Tile, Attributes, X
def_hello:
    .byte   $00, $00, $00, $00
    .byte   $00, $00, $00, $00
    .byte   $6C, $00, $00, $6C
    .byte   $6C, $01, $00, $76
    .byte   $6C, $02, $00, $80
    .byte   $6C, $02, $00, $8A
    .byte   $6C, $03, $00, $94

; Global variables defined to be big enough to hold the values they need
.segment "DATA"

palettes:
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0

hello:
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0
    .byte   0, 0, 0, 0

counter16:
    .byte   0
    .byte   0

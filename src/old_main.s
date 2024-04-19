; Entry point (code) for Super Punch Cousins (assume system is set up)

.include "mmap.s"

.export main
.export nmi

.import init_global_vars
.import hello
.import palettes_to_ppu
.import _counter16
.import right_shift
.import _incr_c16                   ; Little endian
.segment "CODE"

main:
    jsr     init_global_vars
    jsr     palettes_to_ppu

    ; Enable rendering
    lda     #%10000000              ; Enable NMI
    sta     PPU_CTRL
    lda     #%00010000              ; Enable sprites
    sta     PPU_MASK

    ldx     #0                      ; Flag to say if we counted this loop
    ldy     hello + 8 + 3           ; Store the H's OAM pos in y
loop:
    jsr     _incr_c16

    ; Calculate H position
    lda     _counter16              ; Little endian, so high byte is really low byte
    pha
    lda     #4
    pha
    jsr     right_shift
    pla
    pla
    cmp     #15                     ; Check if over max
    bne     @norm_loop
    cpx     #0
    bne     loop
    ldx     #1
    iny                             ; Increase y
    cpy     #240                    ; If at edge of screen
    bne     @update_pos
    ldy     0                       ; reset
@update_pos:
    sty     hello + 8 + 3
    jmp     loop
@norm_loop:
    ldx     #0
    jmp     loop

; Increment a 16 bit counter which we can use for subpixels
;incr_c16:
;    inc     counter16 + 1           ; Low byte
;    bne     @no_overflow
;    inc     counter16               ; High++ bc yes_overflow
;@no_overflow:
;    rts

; Update the PPU here
nmi:
    pha
    txa
    pha
    tya
    pha

    ; Copy hello data into OAM
    ldx     #0
    stx     OAM_ADDR
@loop:
    lda     hello, x
    sta     OAM_DATA
    inx
    cpx     #28
    bne     @loop

    pla
    tay
    pla
    tax
    pla
    rti


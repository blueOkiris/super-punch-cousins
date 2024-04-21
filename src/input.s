; Read from the controller

.include "../include/input.s"

.export BTNS
.export input_read

.segment "DATA"

BTNS:
    .byte   0, 0

.segment "CODE"

input_read:
    pha
    txa
    pha

    ldx     #1
    stx     JOYPAD1
    dex
    stx     JOYPAD1
    ldx     #8
@loop:
    lda     JOYPAD1
    and     #$03        ; Mask lowest 2 bits
    cmp     #1          ; Set carry to button state
    rol     BTNS
    lda     JOYPAD2
    and     #3
    cmp     #1
    rol     BTNS + 1
    dex
    bne     @loop

    pla
    tax
    pla
    rts


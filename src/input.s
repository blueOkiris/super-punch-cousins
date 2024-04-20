; Read from the controller

.export _BTNS
.export _input_read_p1

.define JOYPAD1     $4016

.segment "DATA"

_BTNS:
    .byte   0

.segment "CODE"

_input_read_p1:
    pha

    lda     #1
    sta     JOYPAD1
    sta     _BTNS
    lsr     a
    sta     JOYPAD1
@loop:
    lda     JOYPAD1
    lsr     a
    rol     _BTNS
    bcc     @loop

    pla
    rts


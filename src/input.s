; Read from the controller

.export _BTNS
.export _input_read_p1
.export _input_read_p2

.define JOYPAD1     $4016
.define JOYPAD2     $4017

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

_input_read_p2:
    pha

    lda     #1
    sta     JOYPAD1
    sta     _BTNS
    lsr     a
    sta     JOYPAD1
@loop:
    lda     JOYPAD2
    lsr     a
    rol     _BTNS
    bcc     @loop

    pla
    rts


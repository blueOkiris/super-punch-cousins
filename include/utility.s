; Helper macros/defs

.ifndef __UTILITY_S__
.define __UTILITY_S__

; Do lda # then call this
.macro FILL                     addr, len
    ldx     #0
    sta     addr, x
    inx
    cpx     #len
    bne     *-6
.endmacro

; Do lda # then call this
.macro DOUBLE_FILL              addr, row_len, len
    ldx     #0
    ldy     #0
    sta     addr, x
    inx
    iny
    cpy     #row_len
    bne     *-7
    cpx     #len
    bne     *-13
.endmacro

.macro CTRL_COPY_FILL           ctrl, ref, len
    ldx     #0
    lda     ref, x
    sta     ctrl
    inx
    cpx     #len
    bne     *-9
.endmacro

.macro DOUBLE_CTRL_COPY_FILL    ctrl, ref, row_len, len
    ldx     #0
    ldy     #0
    lda     ref, x
    sta     ctrl
    inx
    iny
    cpy     #row_len
    bne     *-10
    cpx     #len
    bne     *-16
.endmacro

.macro FILL_FROM_MEM            dest_addr, src_addr, len
    ldx     #0
    lda     src_addr, x
    sta     dest_addr, x
    inx
    cpx     #len
    bne     *-9
.endmacro

.macro DOUBLE_FILL_FROM_MEM     dest_addr, src_addr, row_len, len
    ldx     #0
    ldy     #0
    lda     src_addr, x
    sta     dest_addr, x
    inx
    iny
    cpy     #row_len
    bne     *-10
    cpx     #len
    bne     *-16
.endmacro

.macro INC_U16_BE               ref
    ldx     ref + 2
    inx
    stx     ref + 2
    cpx     #0
    bne     *+20
    ldx     ref + 1
    inx
    stx     ref + 1
    cpx     #0
    bne     *+9
    ldx     ref
    inx
    stx     ref
.endmacro

.macro DEC_U16_BE               ref
    ldx     ref + 2
    dex
    stx     ref + 2
    cpx     #$FF
    bne     *+20
    ldx     ref + 1
    dex
    stx     ref + 1
    cpx     #$FF
    bne     *+9
    ldx     ref
    dex
    stx     ref
.endmacro

.endif


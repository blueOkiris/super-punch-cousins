; Helper macros/defs

.ifndef __UTILITY_S__
.define __UTILITY_S__

; Do lda # then call this
.macro FILL                     addr, len, i
.if i < len
    sta     addr + i
    FILL                    addr, len, i + 1
.endif
.endmacro

; Do lda # then call this
.macro DOUBLE_FILL              addr, row_len, len, i
.if i < len
    FILL                    addr, i + row_len, i
    DOUBLE_FILL             addr, row_len, len, i + row_len
.endif
.endmacro

.macro CTRL_COPY_FILL           ctrl, ref, len, i
.if i < len
    lda     ref + i
    sta     ctrl
    CTRL_COPY_FILL          ctrl, ref, len, i + 1
.endif
.endmacro

.macro DOUBLE_CTRL_COPY_FILL    ctrl, ref, row_len, len, i
.if i < len
    CTRL_COPY_FILL          ctrl, ref, i + row_len, i
    DOUBLE_CTRL_COPY_FILL   ctrl, ref, row_len, len, i + row_len
.endif
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


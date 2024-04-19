; Math library

.export left_shift
.export right_shift

.segment "CODE"

; Left shift a value by an amount, instead of shifting accumulator once
; Input: TOS - Amount to shift, Second - Value to shift
; Output: 0 pushed to top of stack stack and shifted value behind it
left_shift:
    pha
    txa
    pha
    tya
    pha

    ; Load parameters off of stack. We push A, X, Y, and also the subroutine addr
    tsx
    inx
    inx
    inx
    inx
    inx
    inx
    lda     $0100, x
    tay                     ; Y = amount to shift
    inx
    lda     $0100, x        ; A = value to shift

@loop:
    cpy     #0
    beq     @done
    asl     a
    dey
    jmp     @loop

@done:
    ; Store output in proper place in stack
    sta     $0100, x
    dex
    tya
    sta     $0100, x

    pla
    tay
    pla
    tax
    pla
    rts

; Right shift a value by an amount, instead of shifting accumulator once
; Input: TOS - Amount to shift, Second - Value to shift
; Output: 0 pushed to top of stack stack and shifted value behind it
right_shift:
    pha
    txa
    pha
    tya
    pha

    ; Load parameters off of stack. We push A, X, Y, and also the subroutine addr
    tsx
    inx
    inx
    inx
    inx
    inx
    inx
    lda     $0100, x
    tay                     ; Y = amount to shift
    inx
    lda     $0100, x        ; A = value to shift

@loop:
    cpy     #0
    beq     @done
    lsr     a
    dey
    jmp     @loop

@done:
    ; Store output in proper place in stack
    sta     $0100, x
    dex
    tya
    sta     $0100, x

    pla
    tay
    pla
    tax
    pla
    rts

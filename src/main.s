; Entry point for game

.include "../include/chr.s"
.include "../include/input.s"
.include "../include/colors.s"
.include "../include/ppu.s"
.include "../include/loops.s"

.import ppu_enable
.import ppu_disable
.import BTNS
.import input_read

.export main
.export nmi

.segment "RODATA"

PL_SPR0:
    .byte   BLACK, BLACK, WHITE

PL_BG0:
    .byte   RED, BLACK, GRAY

PL_BG1:
    .byte   RED, BLACK, LIGHT_BLUE

.segment "DATA"

FRAME_DONE:
    .byte   0

NAMETABLE:
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

ATTRTABLE:
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

TEST_SPR:
    .byte   0, 0, 0, 0

TEST_SPR_SUB_X:
    .byte   0, 0, 0

TEST_SPR_SUB_Y:
    .byte   0, 0, 0

SUB_PX_TMP:
    .byte   0

.macro __INIT_NAMETABLE_ROW     end, depth
.if depth < end
    sta     NAMETABLE + depth
    __INIT_NAMETABLE_ROW    end, depth + 1
.endif
.endmacro

.macro INIT_NAMETABLE           index
.if index < 960
    __INIT_NAMETABLE_ROW    index + 32, index
    INIT_NAMETABLE          index + 32
.endif
.endmacro

.macro __INIT_ATTRTABLE_ROW     end, depth
.if depth < end
    sta     ATTRTABLE + depth
    __INIT_ATTRTABLE_ROW    end, depth + 1
.endif
.endmacro

.macro INIT_ATTRTABLE           index
.if index < 240
    __INIT_ATTRTABLE_ROW    index + 8, index
    INIT_NAMETABLE          index + 8
.endif
.endmacro

.segment "CODE"

main:
    lda     #0
    sta     PPU_SCROLL
    sta     PPU_SCROLL

    PPU_SET_BG              BLACK
    PPU_LOAD_PALETTE        PPU_MEM_PLT_SPR1, PL_SPR0
    PPU_LOAD_PALETTE        PPU_MEM_PLT_BG1, PL_BG0
    PPU_LOAD_PALETTE        PPU_MEM_PLT_BG2, PL_BG1

    lda     #5
    INIT_NAMETABLE          0
    PPU_LOAD_NAMETABLE      PPU_MEM_NAMETABLE0_HI, NAMETABLE
    lda     #%01010101
    INIT_ATTRTABLE          0
    PPU_LOAD_ATTRTABLE      PPU_MEM_NAMETABLE0_HI, ATTRTABLE 

    ldx     #0
    lda     #32
    sta     TEST_SPR, x
    inx
    lda     #CHR_EXCLAM
    sta     TEST_SPR, x
    inx
    lda     #%00000001
    sta     TEST_SPR, x
    inx
    lda     #32
    sta     TEST_SPR, x

    lda     #$00
    sta     TEST_SPR_SUB_X
    lda     #$40
    sta     TEST_SPR_SUB_X + 1
    lda     #$00
    sta     TEST_SPR_SUB_X + 2
    lda     #$00
    sta     TEST_SPR_SUB_Y
    lda     #$40
    sta     TEST_SPR_SUB_Y + 1
    lda     #$00
    sta     TEST_SPR_SUB_Y + 2

    jsr     ppu_enable

loop:

check_up:
    lda     BTNS
    and     #BTN_UP
    beq     check_down
    jsr     dec_sub_y
    jsr     update_y
    jmp     check_left
check_down:
    lda     BTNS
    and     #BTN_DOWN
    beq     check_left
    jsr     inc_sub_y
    jsr     update_y
    lda     TEST_SPR + 3
check_left:
    lda     BTNS
    and     #BTN_LEFT
    beq     check_right
    jsr     dec_sub_x
    jsr     update_x
    jmp     end_btns
check_right:
    lda     BTNS
    and     #BTN_RIGHT
    beq     end_btns
    jsr     inc_sub_x
    jsr     update_x
    lda     TEST_SPR + 3
end_btns:

    jmp     loop

nmi:
    PPU_LOAD_SPR        0, TEST_SPR

    lda     #0
    sta     FRAME_DONE
    jsr     input_read
    rti

wait_frame:
    inc     FRAME_DONE
@loop:
    lda     FRAME_DONE
    bne     @loop
    rts

inc_sub_x:
    ldx     TEST_SPR_SUB_X + 2
    inx
    stx     TEST_SPR_SUB_X + 2
    cpx     #0
    bne     @end
    ldx     TEST_SPR_SUB_X + 1
    inx
    stx     TEST_SPR_SUB_X + 1
    cpx     #0
    bne     @end
    ldx     TEST_SPR_SUB_X
    inx
    stx     TEST_SPR_SUB_X
@end:
    rts

inc_sub_y:
    ldx     TEST_SPR_SUB_Y + 2
    inx
    stx     TEST_SPR_SUB_Y + 2
    cpx     #0
    bne     @end
    ldx     TEST_SPR_SUB_Y + 1
    inx
    stx     TEST_SPR_SUB_Y + 1
    cpx     #0
    bne     @end
    ldx     TEST_SPR_SUB_Y
    inx
    stx     TEST_SPR_SUB_Y
@end:
    rts

dec_sub_x:
    ldx     TEST_SPR_SUB_X + 2
    dex
    stx     TEST_SPR_SUB_X + 2
    cpx     #$FF
    bne     @end
    ldx     TEST_SPR_SUB_X + 1
    dex
    stx     TEST_SPR_SUB_X + 1
    cpx     #$FF
    bne     @end
    ldx     TEST_SPR_SUB_X
    dex
    stx     TEST_SPR_SUB_X
@end:
    rts

dec_sub_y:
    ldx     TEST_SPR_SUB_Y + 2
    dex
    stx     TEST_SPR_SUB_Y + 2
    cpx     #$FF
    bne     @end
    ldx     TEST_SPR_SUB_Y + 1
    dex
    stx     TEST_SPR_SUB_Y + 1
    cpx     #$FF
    bne     @end
    ldx     TEST_SPR_SUB_Y
    dex
    stx     TEST_SPR_SUB_Y
@end:
    rts

update_x:
    ; Keep just the last bit of the upper byte
    lda     TEST_SPR_SUB_X
    asl
    asl
    asl
    asl
    asl
    asl
    asl
    sta     SUB_PX_TMP
    ; Add it to the upper bit (and ignore the bottom)
    lda     TEST_SPR_SUB_X + 1
    lsr
    adc     SUB_PX_TMP
    ; TEST_SPR.x = TEST_SPR_SUB_X >> 9
    sta     TEST_SPR + 3
    rts

update_y:
    ; Keep just the last bit of the upper byte
    lda     TEST_SPR_SUB_Y
    asl
    asl
    asl
    asl
    asl
    asl
    asl
    sta     SUB_PX_TMP
    ; Add it to the upper bit (and ignore the bottom)
    lda     TEST_SPR_SUB_Y + 1
    lsr
    adc     SUB_PX_TMP
    ; TEST_SPR.y = TEST_SPR_SUB_Y >> 9
    sta     TEST_SPR
    rts

; TODO: Make not glitch out if not in nmi
contain_x:
    lda     #8
    sec
    sbc     TEST_SPR + 3
    bcc     @check_past
    lda     #8
    sta     TEST_SPR + 3
    lda     #0
    sta     TEST_SPR_SUB_X
    lda     #$10
    sta     TEST_SPR_SUB_X + 1
@check_past:
    lda     TEST_SPR + 3
    sec
    sbc     #240
    bcc     @end
    lda     #240
    sta     TEST_SPR + 3
    lda     #$01
    sta     TEST_SPR_SUB_X
    lda     #$E0
    sta     TEST_SPR_SUB_X + 1
    lda     #$00
    sta     TEST_SPR_SUB_X + 2
@end:
    rts

; TODO: Make not glitch out if not in nmi
contain_y:
    lda     #8
    sec
    sbc     TEST_SPR
    bcc     @check_past
    lda     #8
    sta     TEST_SPR
    lda     #0
    sta     TEST_SPR_SUB_Y
    lda     #$10
    sta     TEST_SPR_SUB_Y + 1
@check_past:
    lda     TEST_SPR
    sec
    sbc     #224
    bcc     @end
    lda     #224
    sta     TEST_SPR
    lda     #$01
    sta     TEST_SPR_SUB_Y
    lda     #$C0
    sta     TEST_SPR_SUB_Y + 1
    lda     #$00
    sta     TEST_SPR_SUB_Y + 2
@end:
    rts


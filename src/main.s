; Entry point for game

.include "../include/chr.s"
.include "../include/input.s"
.include "../include/colors.s"
.include "../include/ppu.s"
;.include "../include/utility.s" - Included via ppu.s

.import ppu_enable
.import ppu_disable
.import input_read
.import TITLE_BG
.import NAMETABLE
.import ATTRTABLE

.export main
.export nmi
.export GAME_STATE

.segment "RODATA"

PL_BG1:
    .byte   RED, WHITE, BLUE

.segment "DATA"

FRAME_DONE:
    .byte   0

; 0 - Title
; 1 - Stage Select
; 2 - Char Select
; 3 - Accept Characters
; 4 - Start Game (i.e. Countdown)
; 5 - Match
; 6 - Match Results
GAME_STATE:
    .byte   0

.segment "CODE"

main:
    jsr     init_nametable
    jsr     init_attrtable
    jsr     load_nametable
    jsr     load_attrtable

    PPU_SET_BG              BLACK
    PPU_LOAD_PALETTE        PPU_MEM_PLT_BG1, PL_BG1

    jsr     ppu_enable
loop:
    jmp     loop

; Render loop
nmi:
    lda     PPU_STATUS
    lda     #0
    sta     PPU_SCROLL
    lda     #248
    sta     PPU_SCROLL

    lda     #0
    sta     FRAME_DONE
    jsr     input_read
    rti

init_nametable:
    DOUBLE_FILL_FROM_MEM    NAMETABLE, TITLE_BG, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 224, TITLE_BG + 224, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 448, TITLE_BG + 448, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 672, TITLE_BG + 672, 32, 224
    DOUBLE_FILL_FROM_MEM    NAMETABLE + 896, TITLE_BG + 896, 32, 64
    rts

init_attrtable:
    lda     #%01010101
    DOUBLE_FILL             ATTRTABLE, 8, 240
    rts

load_nametable:
    PPU_LOAD_NAMETABLE      PPU_MEM_NAMETABLE0_HI, NAMETABLE
    rts

load_attrtable:
    PPU_LOAD_ATTRTABLE      PPU_MEM_NAMETABLE0_HI, ATTRTABLE
    rts

wait_frame:
    inc     FRAME_DONE
@loop:
    lda     FRAME_DONE
    bne     @loop
    rts


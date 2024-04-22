; Entry point for game

.include "../include/chr.s"
.include "../include/input.s"
.include "../include/colors.s"
.include "../include/ppu.s"
.include "../include/loops.s"
;.include "../include/utility.s" - Included via ppu.s

.import ppu_enable
.import input_read
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
    .byte   0, 0, 0

.segment "CODE"

main:
    lda     #0
    sta     PPU_SCROLL
    sta     PPU_SCROLL

    PPU_SET_BG              BLACK
    PPU_LOAD_PALETTE        PPU_MEM_PLT_BG1, PL_BG1

    lda     #5
    DOUBLE_FILL             NAMETABLE, 32, 960, 0
    PPU_LOAD_NAMETABLE      PPU_MEM_NAMETABLE0_HI, NAMETABLE
    lda     #%01010101
    DOUBLE_FILL             ATTRTABLE, 8, 240, 0
    PPU_LOAD_ATTRTABLE      PPU_MEM_NAMETABLE0_HI, ATTRTABLE 

    jsr     ppu_enable

loop:
    ; TODO: game code
    jmp     loop

nmi:
    ; TODO: render

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


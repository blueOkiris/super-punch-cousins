; Entry point for game

.include "../include/chr.s"
.include "../include/input.s"
.include "../include/colors.s"
.include "../include/ppu.s"
;.include "../include/utility.s" - Included via ppu.s

.import ppu_enable
.import input_read
.import title_init

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
    jsr     title_init
    
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

wait_frame:
    inc     FRAME_DONE
@loop:
    lda     FRAME_DONE
    bne     @loop
    rts


; Super Punch Cousins system setup code

.include "../include/mmap.s"

.import _start
.import _nmi

; NES Header
.segment "HEADER"
    .byte   $4E, $45, $53, $1A      ; .byte "NES", $1A
    .byte   2                       ; 2x 16kB PRG code
    .byte   1                       ; 1x 8kB CHR data
    .byte   $01, $00                ; Mapper 0, vertical mirroring

.segment "VECTORS"
    ; When an NMI happens (once per frame if enabled) the label nmi:
    .addr   nmi
    ; When the processor first turns on or is reset, jump to the label reset
    .addr   reset
    ; External IRQ interrupt (unused)
    .addr 0

.segment "STARTUP"                  ; Required, even if unused

.segment "CODE"                     ; Main code segment

reset:
    sei                             ; Disable IRQs
    cld                             ; Disable decimal mode
    ldx     #$40
    stx     $4017                   ; Disable APU frame IRQ
    ldx     #$FF                    ; Set up stack
    txs                             ; .
    inx                             ; Now X = 0
    stx     PPU_CTRL                ; Disable NMI
    stx     PPU_MASK                ; Disable rendering
    stx     $4010                   ; Disable DMC IRQs

; Wait for vblank to make sure PPU ready
@vblankwait1:
    bit     PPU_STATUS
    bpl     @vblankwait1

@clrmem:
    lda     #$00
    sta     $0000, x
    sta     $0100, x
    sta     $0200, x
    sta     $0300, x
    sta     $0400, x
    sta     $0500, x
    sta     $0600, x
    sta     $0700, x
    inx
    bne     @clrmem

@vblankwait2:
    bit     PPU_STATUS
    bpl     @vblankwait2

    jmp     _start

nmi:
    jsr     _nmi
    rti


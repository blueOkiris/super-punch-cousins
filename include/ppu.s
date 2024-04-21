; Macros and defs for the PPU

.ifndef __PPU_S__
.define __PPU_S__

; Control registers

.define PPU_CTRL    $2000
.define PPU_MASK    $2001
.define PPU_STATUS  $2002
.define OAM_ADDR    $2003
.define OAM_DATA    $2004
.define PPU_SCROLL  $2005
.define PPU_ADDR    $2006
.define PPU_DATA    $2007

; PPU Memory locations

.define PPU_MEM_NAMETABLE0_HI           $20
.define PPU_MEM_NAMETABLE1_HI           $24
.define PPU_MEM_NAMETABLE2_HI           $28
.define PPU_MEM_NAMETABLE3_HI           $2C
.define PPU_MEM_ATTRIBTABLE_HI_OFFSET   $03
.define PPU_MEM_ATTRIBTABLE_LO          $C0
.define PPU_MEM_PALETTE_HI              $3F

; Palette locations

.define PPU_MEM_PLT_BG_COL  $00
.define PPU_MEM_PLT_BG0     $01
.define PPU_MEM_PLT_BG1     $05
.define PPU_MEM_PLT_BG2     $09
.define PPU_MEM_PLT_BG3     $0D
.define PPU_MEM_PLT_SPR0    $11
.define PPU_MEM_PLT_SPR1    $15
.define PPU_MEM_PLT_SPR2    $19
.define PPU_MEM_PLT_SPR3    $1D

.macro PPU_SET_BG                       color
    lda     #PPU_MEM_PALETTE_HI
    sta     PPU_ADDR
    lda     #PPU_MEM_PLT_BG_COL
    sta     PPU_ADDR
    lda     #color
    sta     PPU_DATA
.endmacro

.macro PPU_LOAD_PALETTE                 id, palette_addr
    lda     #PPU_MEM_PALETTE_HI
    sta     PPU_ADDR
    lda     #id
    sta     PPU_ADDR
    ldx     #0
    lda     palette_addr, x
    sta     PPU_DATA
    inx
    lda     palette_addr, x
    sta     PPU_DATA
    inx
    lda     palette_addr, x
    sta     PPU_DATA
.endmacro

.macro PPU_LOAD_SPR                     id, spr_addr
    lda     #id
    asl
    asl
    sta     OAM_ADDR
    ldx     #0
    lda     spr_addr, x
    sta     OAM_DATA
    inx
    lda     spr_addr, x
    sta     OAM_DATA
    inx
    lda     spr_addr, x
    sta     OAM_DATA
    inx
    lda     spr_addr, x
    sta     OAM_DATA
.endmacro

.macro __PPU_LOAD_NAMETABLE_ROW_LOOP    ref, end, depth
.if depth < end
    lda     ref + depth
    sta     PPU_DATA
    __PPU_LOAD_NAMETABLE_ROW_LOOP   ref, end, depth + 1
.endif
.endmacro

.macro __PPU_LOAD_NAMETABLE_LOOP        ref, index
.if index < 960
    __PPU_LOAD_NAMETABLE_ROW_LOOP   ref, index + 32, index
    __PPU_LOAD_NAMETABLE_LOOP       ref, index + 32
.endif
.endmacro

.macro PPU_LOAD_NAMETABLE               table, ref
    lda     #table
    sta     PPU_ADDR
    lda     #0
    sta     PPU_ADDR
    __PPU_LOAD_NAMETABLE_LOOP       ref, 0
.endmacro

.macro __PPU_LOAD_ATTRTABLE_LOOP       ref, index
.if index < 240
    __PPU_LOAD_NAMETABLE_ROW_LOOP   ref, index + 8, index
    __PPU_LOAD_ATTRTABLE_LOOP       ref, index + 8
.endif
.endmacro

.macro PPU_LOAD_ATTRTABLE               table, ref
    lda     #table + PPU_MEM_ATTRIBTABLE_HI_OFFSET
    sta     PPU_ADDR
    lda     #PPU_MEM_ATTRIBTABLE_LO
    sta     PPU_ADDR
    __PPU_LOAD_ATTRTABLE_LOOP       ref, 0
.endmacro

.endif


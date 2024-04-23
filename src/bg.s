; Define nametables for title screen, stages, etc

.export TITLE_BG

.include "../include/chr.s"

.segment "RODATA"

TITLE_BG:
    .byte    CHR_SP,        CHR_EXCLAM,     CHR_PERCENT,    CHR_APOSTR
        .byte    CHR_COMMA,     CHR_DASH,       CHR_PERIOD,     CHR_SLASH
        .byte    CHR_ZERO,      CHR_ONE,        CHR_TWO,        CHR_THREE
        .byte    CHR_FOUR,      CHR_FIVE,       CHR_SIX,        CHR_SEVEN
        .byte    CHR_EIGHT,     CHR_NINE,       CHR_A,          CHR_B
        .byte    CHR_C,         CHR_D,          CHR_E,          CHR_F
        .byte    CHR_G,         CHR_H,          CHR_I,          CHR_J
        .byte    CHR_K,         CHR_L,          CHR_M,          CHR_N
    .byte    CHR_O,         CHR_P,          CHR_Q,          CHR_R
        .byte    CHR_S,         CHR_T,          CHR_U,          CHR_V
        .byte    CHR_W,         CHR_X,          CHR_Y,          CHR_Z
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_ONE,        CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
    .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT
        .byte    CHR_PERCENT,   CHR_PERCENT,    CHR_PERCENT,    CHR_PERCENT

; Give names to the locations of characters in CHR

.ifndef __CHR_S__
.define __CHR_S__

; Note:
; - The ones for text aren't actually needed as you can do '<char>' - CHR_SP
; - For numbers, get the digit and do <digit> - '0' + CHR_ZERO
; - For letters, do <char> - 'A' + CHR_A

.define CHR_SP      0
.define CHR_EXCLAM  1
.define CHR_PERCENT 5
.define CHR_APOSTR  7
.define CHR_COMMA   12
.define CHR_DASH    13
.define CHR_PERIOD  14
.define CHR_SLASH   15
.define CHR_ZERO    16
.define CHR_ONE     17
.define CHR_TWO     18
.define CHR_THREE   19
.define CHR_FOUR    20
.define CHR_FIVE    21
.define CHR_SIX     22
.define CHR_SEVEN   23
.define CHR_EIGHT   24
.define CHR_NINE    25
.define CHR_A       33
.define CHR_B       34
.define CHR_C       35
.define CHR_D       36
.define CHR_E       37
.define CHR_F       38
.define CHR_G       39
.define CHR_H       40
.define CHR_I       41
.define CHR_J       42
.define CHR_K       43
.define CHR_L       44
.define CHR_M       45
.define CHR_N       46
.define CHR_O       47
.define CHR_P       48
.define CHR_Q       49
.define CHR_R       50
.define CHR_S       51
.define CHR_T       52
.define CHR_U       53
.define CHR_V       54
.define CHR_W       55
.define CHR_X       56
.define CHR_Y       57
.define CHR_Z       58

.endif __CHR_S__


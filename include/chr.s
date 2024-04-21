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

.endif __CHR_S__


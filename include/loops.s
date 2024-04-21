; Reusable data for big loops

.ifndef __LOOPS_S_
.define __LOOPS_S_

.segment "ZEROPAGE"

LOOP_DATA_ADDR:
    .byte   0, 0

.segment "DATA"

LOOP_IND:
    .byte   0, 0

.endif

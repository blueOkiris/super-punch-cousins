; Reusable data for big loops

.export LOOP_DATA_ADDR
.export LOOP_IND

.segment "ZEROPAGE"

LOOP_DATA_ADDR:
    .byte   0, 0

.segment "DATA"

LOOP_IND:
    .byte   0, 0


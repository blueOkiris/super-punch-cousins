// 

#include <stdint.h>

extern uint16_t counter16;
extern void incr_c16(void);

void incr_c16(void) {
    counter16 += 1;
}


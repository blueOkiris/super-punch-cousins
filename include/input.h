// API for controller input

#ifndef __INPUT_H__
#define __INPUT_H__

#include <stdint.h>

#define BTN_A       128
#define BTN_B       64
#define BTN_SEL     32
#define BTN_START   16
#define BTN_UP      8
#define BTN_DOWN    4
#define BTN_LEFT    2
#define BTN_RIGHT   1

extern uint8_t BTNS;

void input_read_p1(void);
void input_read_p2(void);

#endif


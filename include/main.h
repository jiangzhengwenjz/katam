#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

typedef void (*HBlankFunc)(u8);

extern u8 gUnk_0300248C;
extern u32 gUnk_03002440;
extern u32* gUnk_03002484;
extern u32 gUnk_03002760[0xa0];
extern u32* gUnk_03002EAC;
extern u8 gUnk_03006070;
extern u32 gUnk_030060B0[0x100];
extern u8 gUnk_030024E4;
extern HBlankFunc gUnk_03003A10[0xa0];
extern u32 gUnk_03003670;
extern u32 gUnk_03002440;

extern void sub_0815158C(void);
extern void sub_080001CC(void);
extern void sub_08151C54(void);

#endif

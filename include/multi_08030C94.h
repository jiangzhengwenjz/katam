#ifndef GUARD_MULTI_08030C94_H
#define GUARD_MULTI_08030C94_H

#include "global.h"

struct Unk_020382A0
{
    u8 filler00[8];
    struct Unk_020382A0_sub
    {
        u32 unk00;
        u8 unk04;
        u8 filler[3]; // must be here for matching
    } unk08[4]; // TODO: how many elements? 
    u8 unk28;
}; /* size = 0x2C */

extern struct Unk_020382A0 gUnk_020382A0;

void sub_08030C94(u8, struct Unk_020382A0_sub *);
s16 sub_08031C64(void);
void sub_08030E44(void);
u32 sub_08030FE0(void);
void sub_08031BFC(void);
void sub_08032E98(void);
void sub_08031C3C(void);
void sub_08031C54(void);
void sub_08031C70(u8);
void sub_08031CD4(void);
s32 sub_08030D4C(s32);

#endif // GUARD_MULTI_08030C94_H

#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"
#include "agb_sram.h"
#include "multi_08030C94.h"

struct Unk_0800A96C {
    u16 a, b, c, d;
}; /* size = 8 */


struct Multi_082D91FC
{
    u8 *unk0;
    u32 unk4;
}; /* size = 0x8 */

extern const struct Multi_082D91FC gUnk_082D91E4[];
extern const struct Multi_082D91FC gUnk_082D91FC[];

s16 sub_0800A91C(s32, u16);
void sub_0800A96C(s32 , struct Unk_0800A96C *);
s16 sub_0800A9F4(s32, u16);
s16 sub_0800AAE0(s32, u16);
u16 sub_0800ABFC(void);
void sub_0800AC00(u32);
void sub_0800AC5C(void);
s16 sub_0800ACD4(s32, u16);

#endif

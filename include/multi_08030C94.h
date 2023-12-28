#ifndef GUARD_MULTI_08030C94_H
#define GUARD_MULTI_08030C94_H

#include "global.h"
#include "task.h"

struct Unk_020382A0_8_0
{
    u32 unk00;
    u8 unk04;
    u8 filler[3]; // must be here for matching
};

struct Unk_020382A0_8_1
{
    u16 unk00;
    u8 unk02;
    u16 unk04;
};

union Unk_020382A0_8
{
    struct Unk_020382A0_8_0 pat0;
    struct Unk_020382A0_8_1 pat1;
};

struct Unk_020382A0
{
    struct Task *task;
    s16 unk04;
    u16 unk06;
    union Unk_020382A0_8 unk08[4];
    u8 unk28;
    u8 unk29;
}; /* size = 0x2C */

struct Multi_08030C94
{
    s32 (*func)(struct Multi_08030C94 *);
    union Unk_020382A0_8 unk4;
    u32 unkC;
    u16 unk10[4];
    u16 unk18;
    u16 unk1A;
    u8 unk1C;
}; /* size = 0x20 */

struct Multi_08032B0C
{
    struct Task *task;
    u16 unk4[4];
    u16 unkC;
    u16 unkE;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22[3][4];
    u32 filler3C;
    u32 unk40[4];
    u32 unk50;
    u16 unk54;
    u16 unk56;
    u16 unk58;
}; /* size = 0x5C */

extern struct Unk_020382A0 gUnk_020382A0;

void sub_08030C94(u8, union Unk_020382A0_8 *);
u32 sub_08030D4C(s32);
void sub_08030E44(void);
u32 sub_08030FE0(void);
void sub_08031BFC(void);
void sub_08032E98(void);
void sub_08031C3C(void);
void sub_08031C54(void);
s16 sub_08031C64(void);
void sub_08031C70(u8);
void sub_08031CC8(void);
void sub_08031CD4(void);
void sub_08031CE4(u8);
struct Multi_08032B0C *sub_08032B0C(void);
u32 sub_08032B84(struct Multi_08032B0C *);
void sub_08032BA4(struct Multi_08032B0C *);
void sub_08032BBC(struct Multi_08032B0C *);
void sub_08032BD4(struct Multi_08032B0C *);

#endif // GUARD_MULTI_08030C94_H

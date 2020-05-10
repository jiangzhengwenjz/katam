#ifndef GUARD_CODE_H
#define GUARD_CODE_H

#include "global.h"

extern struct MultiBootParam gMultiBootParam;
extern u32 gUnk_03002E60;
extern u16 gUnk_03000478[4];
extern u32 gUnk_03000480;
extern u16 gUnk_03000490[0x16];
extern u32 gUnk_0300050C;
extern u32* gUnk_03003674;

extern u32 gUnk_083B909C;

extern void sub_080002C8(void);
extern u32 sub_0800A91C(u16, u16);
extern void sub_0800AC00(u32);
extern void sub_0800AC5C(void);
extern s16 sub_0800ACD4(u32, u16);
extern void sub_08020490(void);
extern void sub_08031BFC(void);
extern void sub_08033478(void);
extern void CreateLogo(void);

#endif
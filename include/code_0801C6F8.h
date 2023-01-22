#ifndef GUARD_CODE_0801C6F8_H
#define GUARD_CODE_0801C6F8_H

#include "global.h"
#include "data.h"

struct Unk_0801C6F8
{
    struct Background unk0;
    struct Sprite unk40;
    struct Sprite unk68[8];
    struct Sprite unk1A8;
    u32 unk1D0;
    u32 unk1D4[8];
    u32 unk1F4[4];
    u32 filler204;
    void (*unk208)(struct Unk_0801C6F8 *);
    u32 unk20C;
    s32 unk210;
    s32 unk214;
    u16 unk218;
    u16 unk21A;
    u16 unk21C;
}; /* size = 0x220 */

struct Unk_0801D220
{
    struct Sprite unk0;
    struct Unk_0801C6F8 *unk28;
    s32 unk2C;
    s32 unk30;
    s16 unk34;
    s16 unk36;
    u16 unk38;
}; /* size = 0x3C */

struct Unk_0801DA58
{
    struct Background unk0;
    struct Background unk40; // not sure
    struct Sprite unk80[2];
    u32 unkD0[2];
    void (*unkD8)(struct Unk_0801DA58 *);
    u16 unkDC;
    u16 unkDE;
    u16 unkE0;
    u16 unkE2;
}; /* size = 0xE4 */

void sub_0801D618(void);
void sub_0801D624(void);
void sub_0801D630(void);
void sub_0801D63C(void);
void sub_0801D648(void);
void sub_0801D654(void);
void sub_0801D660(void);
void sub_0801D66C(void);

#endif

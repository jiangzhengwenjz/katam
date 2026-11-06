#ifndef GUARD_CODE_0802B4A8_H
#define GUARD_CODE_0802B4A8_H

#include "global.h"
#include "data.h"
#include "sprite.h"

struct Unk_0802B4A8_274 {
    /* 0x00 */ s32 x;
    /* 0x04 */ s32 y;
    /* 0x08 */ s32 dx;
    /* 0x0C */ s32 dy;
}; /* size = 0x10 */

struct Unk_0802B4A8 {
    /* 0x000 */ void (*unk0)(struct Unk_0802B4A8 *);
    /* 0x004 */ struct Sprite unk4[5];
    /* 0x0CC */ struct Sprite unkCC;
    /* 0x0F4 */ struct Sprite unkF4;
    /* 0x11C */ struct Sprite unk11C;
    /* 0x144 */ struct Sprite unk144;
    /* 0x16C */ struct Sprite unk16C;
    /* 0x194 */ struct Background unk194;
    /* 0x1D4 */ struct Background unk1D4;
    /* 0x214 */ u32 flags;
    /* 0x218 */ s32 unk218[5][2];
    /* 0x240 */ s16 unk240[5][2];
    /* 0x254 */ u16 unk254[5];
    /* 0x25E */ s16 unk25E[5];
    /* 0x268 */ s16 unk268[5];
    /* 0x272 */ u8 filler272[2];
    /* 0x274 */ struct Unk_0802B4A8_274 unk274[4];
    /* 0x2B4 */ s32 unk2B4;
    /* 0x2B8 */ s16 unk2B8;
    /* 0x2BA */ u16 unk2BA;
    /* 0x2BC */ u16 unk2BC;
    /* 0x2BE */ u16 unk2BE;
}; /* size = 0x2C0 */

struct Unk_0802CE64 {
    /* 0x00 */ struct Sprite spr;
    /* 0x28 */ struct Unk_0802B4A8 *parent;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ s16 unk34;
    /* 0x36 */ s16 unk36;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ s16 unk3A;
}; /* size = 0x3C */

struct Unk_0802DB48 {
    /* 0x00 */ void (*unk0)(struct Unk_0802DB48 *);
    /* 0x04 */ struct Background bg;
    /* 0x44 */ struct Unk_0802B4A8 *parent;
    /* 0x48 */ u16 unk48;
    /* 0x4A */ u16 unk4A;
    /* 0x4C */ u16 unk4C;
}; /* size = 0x50 */

void sub_0802B4A8(void);

#endif

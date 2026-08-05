#ifndef GUARD_CODE_0802E57C_H
#define GUARD_CODE_0802E57C_H

#include "global.h"
#include "sprite.h"
#include "task.h"

struct Unk_0802E57C;
struct Unk_0802E57C_C;

typedef void (*Unk_0802E57C_CFunc)(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

struct Unk_0802E57C_C {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ Unk_0802E57C_CFunc unk28;
    /* 0x2C */ u32 unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ s32 unk34;
    /* 0x38 */ s16 unk38;
    /* 0x3A */ s16 unk3A;
    /* 0x3C */ u16 *unk3C;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u16 unk42;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u16 unk48;
    /* 0x4A */ u8 filler4A[6];
}; /* size = 0x50 */

struct Unk_0802E57C {
    /* 0x000 */ struct Task *unk0;
    /* 0x004 */ void (*unk4)(struct Unk_0802E57C *);
    /* 0x008 */ u32 unk8; // vram
    /* 0x00C */ struct Unk_0802E57C_C unkC[4];
    /* 0x14C */ struct Sprite unk14C;
    /* 0x174 */ u8 filler174[4];
    /* 0x178 */ s32 unk178;
    /* 0x17C */ s32 unk17C;
    /* 0x180 */ s16 unk180;
    /* 0x182 */ s16 unk182;
    /* 0x184 */ u32 filler184;
    /* 0x188 */ u32 unk188;
    /* 0x18C */ u32 unk18C;
    /* 0x190 */ u16 unk190;
}; /* size = 0x194 */

#endif

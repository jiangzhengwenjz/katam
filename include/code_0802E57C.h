#ifndef GUARD_CODE_0802E57C_H
#define GUARD_CODE_0802E57C_H

#include "global.h"
#include "sprite.h"
#include "task.h"

struct Unk_0802E57C_C {
    struct Sprite unk0;
    void (*unk28)(struct Unk_0802E57C_C *);
    u32 unk2C;
    s32 unk30;
    s32 unk34;
    s16 unk38;
    s16 unk3A;
    u16 *unk3C;
    u16 unk40;
    u16 unk42;
    u16 unk44;
    u16 unk46;
    u8 filler48[8];
}; /* size = 0x50 */

struct Unk_0802E57C {
    struct Task *unk0;
    void (*unk4)(struct Unk_0802E57C *);
    u32 unk8; // vram
    struct Unk_0802E57C_C unkC[4];
    struct Sprite unk14C;
    u8 filler174[4];
    s32 unk178;
    s32 unk17C;
    s16 unk180;
    s16 unk182;
    u32 filler184;
    u32 unk188;
    u32 unk18C;
    u16 unk190;
}; /* size = 0x194 */

#endif

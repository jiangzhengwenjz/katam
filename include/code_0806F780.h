#ifndef GUARD_CODE_0806F780_H
#define GUARD_CODE_0806F780_H

#include "global.h"
#include "data.h"

struct Unk_0806FDF4_0 {
    u16 flags;
    u16 roomId;
    s16 unk4;
    u8 unk6;
}; /* size = 0x8 */

struct Unk_0806FDF4 {
    struct Unk_0806FDF4_0 unk0[4];
}; /* size = 0x20 */

struct Unk_080C4EDC { // laser struct?
    struct ObjectBase base;
    bool8 (*unk78)(struct Unk_080C4EDC *);
    bool8 (*unk7C)(struct Unk_080C4EDC *);
    bool8 (*unk80)(struct Unk_080C4EDC *);
    void (*unk84)(struct Unk_080C4EDC *);
    u8 unk88;
    u8 unk89;
    u16 unk8A;
}; /* size = 0x8C */

extern const s8 gUnk_08350BB0[][2];
extern const s8 gUnk_08350BCC[][2];
extern const s8 gUnk_08350BF0[][2];
extern const s8 gUnk_08350C20[][2];

bool16 sub_0806F780(struct ObjectBase *);
bool32 sub_0806F8BC(struct ObjectBase *);

#endif

#ifndef GUARD_CODE_0806F780_H
#define GUARD_CODE_0806F780_H

#include "global.h"
#include "data.h"

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
struct Object14 *sub_080706A0(struct ObjectBase *, u32, u16, u8, bool8 (*)(struct Object14 *), void (*)(struct Object14 *));
bool8 sub_08072B98(struct Object14 *);
void sub_08084AA0(struct Object14 *);
void sub_0808520C(struct Object2 *, s16);
void sub_080882B4(struct Kirby *);
void sub_08097B9C(struct Object2 *arg0, struct Kirby *kirby);

#endif

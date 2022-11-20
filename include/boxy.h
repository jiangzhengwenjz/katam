#ifndef GUARD_BOXY_H
#define GUARD_BOXY_H

#include "global.h"
#include "data.h"

struct Boxy
{
    struct Object2 obj2;
    struct Object2 *unkB4;
    u8 unkB8;
}; /* size = 0xBC */

void *CreateBoxy(struct Object *, u8);
void *CreateBoxyBox(struct Object *, u8);

void sub_080D777C(struct Boxy *);
void sub_080D7020(struct Object2 *);

extern const struct Unk_02021590 gUnk_08356184[];
extern const struct Unk_02021590 gUnk_083561C4[];
extern const struct Unk_02021590 gUnk_083561CC[];
extern const struct Unk_02021590 gUnk_08356208[];

#endif

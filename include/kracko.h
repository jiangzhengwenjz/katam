#ifndef GUARD_KRACKO_H
#define GUARD_KRACKO_H

#include "data.h"

struct Kracko_BC // TODO: struct Object6?
{
    u16 unk0;
    u16 unk2;
    struct Kracko *unk4;
}; /* size = 8 */

struct Kracko
{
    struct Object2 obj2;
    struct Object4 *unkB4;
    struct Object4 *unkB8;
    struct Kracko_BC *unkBC;
    u8 unkC0;
    u8 unkC1;
    u8 unkC2;
    u8 unkC3;
}; /* size = 0xC4 */

void *CreateKracko(struct Object *, u8);
void sub_080DBE3C(struct Kracko *);

extern const struct Unk_02021590 gUnk_083563EC[];

#endif

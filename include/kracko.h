#ifndef GUARD_KRACKO_H
#define GUARD_KRACKO_H

#include "data.h"

struct Kracko
{
    struct Object2 obj2;
    struct Object4 *unkB4;
    struct Object4 *unkB8;
    struct Object6 *unkBC;
    u8 unkC0;
    u8 unkC1;
    u8 unkC2;
    u8 unkC3;
}; /* size = 0xC4 */

void *CreateKracko(struct Object *, u8);
void sub_080DBE3C(struct Kracko *);

extern const struct Unk_02021590 gUnk_083563EC[];

#endif

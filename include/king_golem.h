#ifndef GUARD_KING_GOLEM_H
#define GUARD_KING_GOLEM_H

#include "global.h"
#include "data.h"

struct KingGolem
{
    struct Object2 obj2;
    struct Object4 *obj4;
    struct Object2 *enemy; // golem or foley
    u8 unkBC;
    u8 unkBD;
    u16 unkBE;
}; /* size = 0xC0 */

void *CreateKingGolem(struct Object *, u8);
void *CreateKingGolemRockOrGordo(struct Object *, u8);

void sub_080DA4B0(struct KingGolem *);
void sub_080DB5E0(struct Object2 *);

extern const struct Unk_02021590 gUnk_083563E8[];
extern const struct Unk_02021590 gUnk_083563B0[];

#endif

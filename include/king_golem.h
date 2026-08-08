#ifndef GUARD_KING_GOLEM_H
#define GUARD_KING_GOLEM_H

#include "global.h"
#include "data.h"

struct KingGolem
{
    struct Object obj2;
    struct EffectObject *obj4;
    struct Object *enemy; // golem or foley
    u8 unkBC;
    u8 unkBD;
    u16 unkBE;
}; /* size = 0xC0 */

void *CreateKingGolem(struct ObjectTemplate *, u8);
void *CreateKingGolemRockOrGordo(struct ObjectTemplate *, u8);

void sub_080DA4B0(struct KingGolem *);
void sub_080DB5E0(struct Object *);

extern const struct AnimInfo gUnk_083563E8[];
extern const struct AnimInfo gUnk_083563B0[];

#endif

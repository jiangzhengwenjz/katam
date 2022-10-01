#ifndef GUARD_CRAZY_HAND_H
#define GUARD_CRAZY_HAND_H

#include "data.h"
#include "kirby.h"

struct CrazyHand
{
    struct Object2 obj2;
    struct CrazyHand *unkB4; // ???
    u8 unkB8;
    u8 unkB9;
    u8 unkBA;
}; /* size = 0xBC */

void *CreateCrazyHand(struct Object *, u8);
void *CreateMasterHandBullet(struct Object *, u8);
void sub_080DF894(struct CrazyHand *);
void sub_080E3370(struct Object2 *);

extern const struct Unk_02021590 gUnk_08356910[];
extern const struct Unk_02021590 gUnk_08356974[];

#endif

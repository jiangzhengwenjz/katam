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
void CrazyHandStartIdle(struct CrazyHand *);
void MasterHandBulletInit(struct Object2 *);
bool8 CrazyHandGrab(struct CrazyHand *, struct Kirby *);

extern const struct AnimInfo gCrazyHandAnimInfo[];
extern const struct AnimInfo gCrazyHandAnimInfo2[];
extern const struct AnimInfo gCrazyHandAnimInfo3[];

#endif

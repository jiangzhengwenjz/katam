#ifndef GUARD_MASTER_HAND_H
#define GUARD_MASTER_HAND_H

#include "global.h"
#include "data.h"

void *CreateMasterHand(struct Object *, u8);
void *CreateShootingEnemyStar(struct Object *, u8);

void MasterHandStartIdle(struct Object2 *);
void ShootingEnemyStarInit(struct Object2 *);

bool8 MasterHandGrab(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gMasterHandAnimInfo[];
extern const struct AnimInfo gMasterHandAnimInfo2[];

#endif

#ifndef GUARD_MASTER_HAND_H
#define GUARD_MASTER_HAND_H

#include "global.h"
#include "data.h"

void *CreateMasterHand(struct Object *, u8);
void *CreateShootingEnemyStar(struct Object *, u8);

void sub_080D1A38(struct Object2 *);
void sub_080D4F3C(struct Object2 *);

bool8 sub_080D4004(struct Object2 *, struct Kirby *);

extern const struct AnimInfo gUnk_08356108[];
extern const struct AnimInfo gUnk_08356114[];

#endif

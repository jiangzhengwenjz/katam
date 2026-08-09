#ifndef GUARD_MASTER_HAND_H
#define GUARD_MASTER_HAND_H

#include "global.h"
#include "data.h"

void *CreateMasterHand(struct ObjectTemplate *, u8);
void *CreateShootingEnemyStar(struct ObjectTemplate *, u8);

void sub_080D1A38(struct Object *);
void sub_080D4F3C(struct Object *);

bool8 sub_080D4004(struct Object *, struct Kirby *);

extern const struct AnimInfo gUnk_08356108[];
extern const struct AnimInfo gUnk_08356114[];

#endif

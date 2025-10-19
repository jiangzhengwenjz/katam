#ifndef GUARD_FIRE_H
#define GUARD_FIRE_H

#include "data.h"
#include "global.h"
#include "object.h"

void* CreateFire(struct Object* arg0, u8 arg1);

void FireCounterInit(struct Object2* arg0);

extern const struct AnimInfo gUnk_08357BE8[];

#endif

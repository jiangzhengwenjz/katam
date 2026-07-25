#ifndef GUARD_BONKERS_H
#define GUARD_BONKERS_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateBonkers(struct Object*, u8);
void* CreateBonkersNut(struct Object*, u8);

void BonkersStartIdle(struct Object2*);
void BonkersNutInit(struct Object2*);

extern const struct AnimInfo gBonkersAnimInfo[];
extern const struct AnimInfo gBonkersAnimInfo2[];
extern const struct AnimInfo gBonkersAnimInfo3[];
extern const struct AnimInfo gBonkersAnimInfo4[];

#endif

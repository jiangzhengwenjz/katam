#ifndef GUARD_SHADOW_KIRBY_H
#define GUARD_SHADOW_KIRBY_H

#include "global.h"
#include "data.h"

void *CreateShadowKirby(struct Object *, u8);
void *CreateThrownBomb2(struct Object *, u8);

void ShadowKirbyStartLeave(struct Object2 *);
void ShadowKirbyBombStartHeld(struct Object2 *);

void ShadowKirbySpawnFood(struct Object2 *);

extern const struct AnimInfo gShadowKirbyAnimInfo[];

#endif

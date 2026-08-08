#ifndef GUARD_SHADOW_KIRBY_H
#define GUARD_SHADOW_KIRBY_H

#include "global.h"
#include "data.h"

void *CreateShadowKirby(struct ObjectTemplate *, u8);
void *sub_0802470C(struct ObjectTemplate *, u8);

void sub_08024F54(struct Object *);
void sub_08024FC0(struct Object *);

void sub_08024E20(struct Object *);

extern const struct AnimInfo gUnk_082DEAA4[];

#endif

#ifndef GUARD_FOLEY_H
#define GUARD_FOLEY_H

#include "global.h"
#include "data.h"

void *CreateFoley(struct ObjectTemplate *, u8);
void *CreateFoleyLeaves(struct ObjectTemplate *, u8);

void sub_080C0C6C(struct Object *);
void sub_080C0CF0(struct Object *);

extern const struct AnimInfo gUnk_08354E80[];
extern const struct AnimInfo gUnk_08354E94[];

#endif

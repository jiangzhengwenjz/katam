#ifndef GUARD_FOLEY_H
#define GUARD_FOLEY_H

#include "global.h"
#include "data.h"

void *CreateFoley(struct Object *, u8);
void *CreateFoleyLeaves(struct Object *, u8);

void sub_080C0C6C(struct Object2 *);
void sub_080C0CF0(struct Object2 *);

extern const struct Unk_02021590 gUnk_08354E80[];
extern const struct Unk_02021590 gUnk_08354E94[];

#endif

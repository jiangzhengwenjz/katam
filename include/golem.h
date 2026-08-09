#ifndef GUARD_GOLEM_H
#define GUARD_GOLEM_H

#include "global.h"
#include "data.h"

void *CreateGolem(struct ObjectTemplate *, u8);

void sub_080C6404(struct Object *);

extern const struct AnimInfo gUnk_08355674[];

#endif

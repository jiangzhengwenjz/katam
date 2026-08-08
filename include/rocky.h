#ifndef GUARD_ROCKY_H
#define GUARD_ROCKY_H

#include "global.h"
#include "data.h"
#include "object.h"

void *CreateRocky(struct ObjectTemplate *, u8);

void sub_080BE898(struct Object*);

extern const struct AnimInfo gUnk_08354BC8[];

#endif

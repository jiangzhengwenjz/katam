#ifndef GUARD_SQUISHY_H
#define GUARD_SQUISHY_H

#include "global.h"
#include "data.h"

void *CreateSquishy(struct ObjectTemplate *, u8);

void sub_080AF754(struct Object *);

extern const struct AnimInfo gUnk_08353C38[];

#endif

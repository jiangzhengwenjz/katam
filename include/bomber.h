#ifndef GUARD_BOMBER_H
#define GUARD_BOMBER_H

#include "data.h"
#include "global.h"
#include "object.h"

void* CreateBomber(struct ObjectTemplate*, u8);

void sub_080C478C(struct Object*);

extern const struct AnimInfo gUnk_08355590[];

#endif

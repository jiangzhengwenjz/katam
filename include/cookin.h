#ifndef GUARD_COOKIN_H
#define GUARD_COOKIN_H

#include "global.h"
#include "data.h"
#include "kirby.h"

void *CreateCookin(struct Object *, u8);
void *CreateCookinPan(struct Object *, u8);
bool32 sub_080B6368(struct Object2 *, struct Kirby *);
void sub_080B681C(struct Object2 *);
void sub_080B6880(struct Object2 *);

#endif

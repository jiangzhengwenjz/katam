#ifndef GUARD_CUPIE_H
#define GUARD_CUPIE_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateCupie(struct Object*, u8);
void* CreateCupieArrow(struct Object*, u8);

void sub_080A2AF0(struct Object2*);
void sub_080A37F4(struct Object2*);

extern const struct AnimInfo gUnk_08352F94[];
extern const struct AnimInfo gUnk_08352FAC[];

#endif

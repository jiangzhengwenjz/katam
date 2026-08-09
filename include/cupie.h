#ifndef GUARD_CUPIE_H
#define GUARD_CUPIE_H

#include "global.h"
#include "data.h"
#include "object.h"

void* CreateCupie(struct ObjectTemplate*, u8);
void* CreateCupieArrow(struct ObjectTemplate*, u8);

void sub_080A2AF0(struct Object*);
void sub_080A37F4(struct Object*);

extern const struct AnimInfo gUnk_08352F94[];
extern const struct AnimInfo gUnk_08352FAC[];

#endif

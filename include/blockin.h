#ifndef GUARD_BLOCKIN_H
#define GUARD_BLOCKIN_H

#include "data.h"
#include "object.h"

void* CreateBlockin(struct ObjectTemplate* arg0, u8 arg1);
void sub_080A49D0(struct Object*);

extern const struct AnimInfo gUnk_08353420[];

#endif

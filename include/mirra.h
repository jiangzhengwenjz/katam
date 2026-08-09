#ifndef GUARD_MIRRA_H
#define GUARD_MIRRA_H

#include "data.h"
#include "global.h"
#include "object.h"

void* CreateMirra(struct ObjectTemplate*, u8);
void sub_080B1174(struct Object*);
void sub_080B11C0(struct Object*);

extern const struct AnimInfo gUnk_08353F2C[];

#endif

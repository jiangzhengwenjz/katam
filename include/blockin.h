#ifndef GUARD_BLOCKIN_H
#define GUARD_BLOCKIN_H

#include "data.h"
#include "object.h"

extern u8 gUnk_02022F40[];
extern struct Object2* gUnk_02022EC0[];

struct Object2* CreateBlockin(struct Object* arg0, u8 arg1);
void sub_080A4A08(struct Object2*);

#endif

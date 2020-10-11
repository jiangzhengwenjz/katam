#ifndef GUARD_BLOCKIN_H
#define GUARD_BLOCKIN_H

#include "data.h"
#include "object.h"

extern u8 gUnk_02022F40[];
extern struct Object2* gUnk_02022EC0[][8];
extern u8 gUnk_08350BCC[][2];
extern u8 gUnk_08350BB0[][2];

struct Object2* CreateBlockin(struct Object* arg0, u8 arg1);
void sub_080A4728(struct Object2* arg0);
void sub_080A47C8(struct Object2* arg0);
void sub_080A4A08(struct Object2*);
void sub_080A4A7C(struct Object2*);

#endif

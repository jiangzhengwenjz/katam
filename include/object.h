#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"

void sub_0809DA30(struct Object2 *);
void sub_0809EF88(struct Object2 *obj);
void InitObject(struct Object2* arg0, struct Object* arg1, u8 arg2);
void ObjectInitSprite(struct Object2* arg0);
void ObjectSetFunc(struct Object2*, u16, void(*)(struct Object2*));

#endif

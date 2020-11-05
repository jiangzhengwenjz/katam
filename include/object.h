#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"
#include "task.h"
#include "constants/object_types.h"

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void sub_0809DA30(struct Object2 *);
void sub_0809E424(struct Object2 *);
void sub_0809E79C(struct Object2 *);
void sub_0809EB90(struct Object2 *);
void sub_0809EF88(struct Object2 *obj);
void InitObject(struct Object2 *arg0, struct Object *arg1, u8 arg2);
void ObjectInitSprite(struct Object2 *arg0);
void ObjectSetFunc(struct Object2 *, u16, void (*)(struct Object2 *));

#endif

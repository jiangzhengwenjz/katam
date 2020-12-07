#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"
#include "task.h"
#include "constants/object_types.h"

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void InitObject(struct Object2 *, struct Object *, u8);
void ObjectInitSprite(struct Object2 *);
void ObjectSetFunc(struct Object2 *, u16, void (*func)(struct Object2 *));
struct Object2 *CreateEmpty(struct Object *, u8);
void sub_0809B1E4(struct Object2 *);
void sub_0809C6D0(struct Object2 *);
void sub_0809CFC4(struct Object2 *);
void sub_0809D8C8(struct Object2 *);
u8 sub_0809D998(struct Object2 *);
void sub_0809DA30(struct Object2 *);
void sub_0809EF88(struct Object2 *);
void sub_0809F840(struct Object2 *);
void sub_0809C380(struct Object2 *);
void sub_0809E79C(struct Object2 *);

#endif

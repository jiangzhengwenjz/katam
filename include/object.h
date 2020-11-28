#ifndef GUARD_OBJECT_H
#define GUARD_OBJECT_H

#include "data.h"
#include "task.h"
#include "constants/object_types.h"

void ObjectMain(void);
void ObjectDestroy(struct Task *);
void sub_0809D060(struct Object2 *);
void sub_0809D710(struct Object2 *);
void sub_0809D7C8(struct Object2 *);
void sub_0809D8C8(struct Object2 *);
void sub_0809D1E0(struct Object2 *);
void sub_0809DA30(struct Object2 *);
void sub_0809E424(struct Object2 *);
void sub_0809E79C(struct Object2 *);
void sub_0809EB90(struct Object2 *);
void sub_0809EF88(struct Object2 *obj);
void InitObject(struct Object2 *arg0, struct Object *arg1, u8 arg2);
void ObjectInitSprite(struct Object2 *arg0);
void ObjectSetFunc(struct Object2 *, u16, void (*)(struct Object2 *));
void sub_0809F974(struct Object2 *);
void sub_0809D5D0(struct Object2 *);
void sub_0809F88C(struct Object2 *);
void sub_0809B6A8(struct Object2 *);
void sub_0809BBB0(struct Object2 *);
void sub_0809B93C(struct Object2 *);
void sub_0809F6BC(struct Object2 *);
void sub_0809C180(struct Object2 *);
void sub_0809BEF8(struct Object2 *);
void sub_0809C48C(struct Object2 *);
void sub_0809F8BC(struct Object2 *);
void sub_0809CDBC(struct Object2 *);
void sub_0809C994(struct Object2 *);
void sub_0809CE80(struct Object2 *);
void nullsub_123(struct Object2 *);

#endif

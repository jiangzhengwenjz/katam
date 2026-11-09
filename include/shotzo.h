#ifndef GUARD_SHOTZO_H
#define GUARD_SHOTZO_H

#include "global.h"
#include "data.h"
#include "object.h"

void *CreateShotzo(struct ObjectTemplate *, u8);
void *CreateShotzoBullet(struct ObjectTemplate *, u8);

void sub_0811A874(struct Object *);
void sub_0811AA2C(struct Object *);
void sub_0811B3E4(struct Object *);
void sub_0811B400(struct Object *);
void sub_0811B44C(struct Object *);
void sub_0811B48C(struct Object *);

#endif // GUARD_SHOTZO_H

#ifndef GUARD_WIZ_H
#define GUARD_WIZ_H

#include "global.h"
#include "data.h"

void *CreateWiz(struct ObjectTemplate *, u8);
void *CreateWizBalloon(struct ObjectTemplate *, u8);
void *CreateWizCloud(struct ObjectTemplate *, u8);
void *CreateWizFootball(struct ObjectTemplate *, u8);
void *CreateWizCar(struct ObjectTemplate *, u8);
void *CreateWizBomb(struct ObjectTemplate *, u8);
void *CreateWizApple(struct ObjectTemplate *, u8);
void *CreateWizDroppy(struct ObjectTemplate *, u8);

void sub_080E82C4(struct Object *);
void sub_080EA874(struct Object *);
void sub_080E9948(struct Object *);
void sub_080E9B18(struct Object *);
void sub_080EAA30(struct Object *);
void sub_080EA084(struct Object *);
void sub_080EA340(struct Object *);
void sub_080EA95C(struct Object *);

extern const struct AnimInfo gUnk_08356CD4[];
extern const struct AnimInfo gUnk_08356D28[];
extern const struct AnimInfo gUnk_08356D30[];
extern const struct AnimInfo gUnk_08356D38[];
extern const struct AnimInfo gUnk_08356D40[];
extern const struct AnimInfo gUnk_08356D4C[];
extern const struct AnimInfo gUnk_08356D54[];

#endif

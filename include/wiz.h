#ifndef GUARD_WIZ_H
#define GUARD_WIZ_H

#include "global.h"
#include "data.h"

void *CreateWiz(struct Object *, u8);
void *CreateWizBalloon(struct Object *, u8);
void *CreateWizCloud(struct Object *, u8);
void *CreateWizFootball(struct Object *, u8);
void *CreateWizCar(struct Object *, u8);
void *CreateWizBomb(struct Object *, u8);
void *CreateWizApple(struct Object *, u8);
void *CreateWizDroppy(struct Object *, u8);

void WizStartChooseAttack(struct Object2 *);
void sub_080EA874(struct Object2 *);
void sub_080E9948(struct Object2 *);
void sub_080E9B18(struct Object2 *);
void sub_080EAA30(struct Object2 *);
void sub_080EA084(struct Object2 *);
void sub_080EA340(struct Object2 *);
void sub_080EA95C(struct Object2 *);

extern const struct AnimInfo gWizAnimInfo[];
extern const struct AnimInfo gWizAnimInfo2[];
extern const struct AnimInfo gWizAnimInfo3[];
extern const struct AnimInfo gWizAnimInfo4[];
extern const struct AnimInfo gWizAnimInfo5[];
extern const struct AnimInfo gWizAnimInfo6[];
extern const struct AnimInfo gWizAnimInfo7[];

#endif

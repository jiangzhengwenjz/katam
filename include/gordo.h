#ifndef GUARD_GORDO_H
#define GUARD_GORDO_H

#include "data.h"
#include "functions.h"

struct Object2* CreateGordo(struct Object* arg0, u8 arg1);
void GordoSlowDownX(struct Object2* arg0);
void GordoSetYSpeed(struct Object2* arg0);
void GordoSetXYSpeed(struct Object2* arg0);
void GordoChooseYSpeed(struct Object2* arg0);
void sub_0809FC58(struct Object2* arg0);
void GordoInitType0(struct Object2* arg0);
void GordoInitType1(struct Object2* arg0);
void GordoInitType2(struct Object2* arg0);
void GordoSlowDownXAndSetY(struct Object2* arg0);
void GordoInitType3(struct Object2* arg0);

#endif

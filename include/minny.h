#ifndef GUARD_MINNY_H
#define GUARD_MINNY_H

#include "data.h"
#include "object.h"

struct Object2* CreateMinny(struct Object* arg0, u8 arg1);
void MinnySetDirection(struct Object2* arg0);
void MinnyInitSpeed(struct Object2* arg0);
void MinnyCalcSpeed(struct Object2* arg0);
void MinnyStart(struct Object2* arg0);
void MinnyTurnAround(struct Object2* arg0);
void MinnySubtype1Start(struct Object2* arg0);

#endif

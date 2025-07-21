#ifndef GUARD_BONUS_H
#define GUARD_BONUS_H

#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"

void* CreateBonus(struct Object* arg0, u8 arg1);
struct Object2* BonusCreateTomatoAt(struct Object2* arg0, s16 arg1, s16 arg2);
struct Object2* BonusCreateTomato(struct Kirby* arg0);
void BonusCreateRandom(struct ObjectBase* arg0, u8 arg1);
void sub_0812379C(struct Kirby* arg0);

#endif

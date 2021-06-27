#ifndef GUARD_BONUS_H
#define GUARD_BONUS_H

#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"

void* CreateBonus(struct Object* arg0, u8 arg1);
struct Object2* BonusCreateTomatoAt(struct Kirby* arg0, u16 arg1, u16 arg2);
struct Object2* BonusCreateTomato(struct Kirby* arg0);
void BonusCreateRandom(struct Object2* arg0, u8 arg1);
void sub_0812379C(struct Kirby* arg0);

#endif

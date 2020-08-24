#ifndef GUARD_BONUS_H
#define GUARD_BONUS_H

#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"

struct Object2* CreateBonus(struct Object* arg0, u8 arg1);
void sub_08122CEC(struct Object2* arg0);
void sub_08122E08(struct Object2* arg0);
void sub_08122ED4(struct Object2* arg0);
void BonusSetFunc(struct Object2* arg0);
void BonusAddHpOrBattery(struct Object2* arg0);
void sub_081232AC(struct Kirby* arg0, u8 arg1);
void BonusAddLives(struct Object2* arg0);
struct Object2* BonusCreateTomatoAt(struct Object2* arg0, u16 arg1, u16 arg2);
struct Object2* BonusCreateTomato(struct Kirby* arg0);
void BonusCreateRandom(struct Object2* arg0, u8 arg1);
void sub_08123780(struct Object2* arg0);
void BonusGiveInvincibility(struct Object2* arg0);
void sub_08123814(struct Object2* arg0);
void sub_0812385C(struct Object2* arg0);
void sub_081238D0(struct Object2* arg0);
void sub_081238FC(struct Object2* arg0);
void sub_08123924(struct Object2* arg0);

#endif

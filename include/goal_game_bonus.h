#ifndef GUARD_GOAL_GAME_BONUS_H
#define GUARD_GOAL_GAME_BONUS_H

#include "data.h"

struct GoalGameBonus {
    struct Object2 obj2;
    u32 unkB4;
    u32 unkB8;
    struct Kirby *kirby;
    u16 unkC0;
    u16 unkC2;
    s16 unkC4;
}; /* size = 0xC8 */

void* CreateGoalGameBonus(struct Object *arg0, u8 arg1);
void sub_0801ABFC(struct GoalGameBonus *arg0);

extern const struct Unk_02021590 gUnk_082DE3E0[];
extern const s16 gUnk_082DE40C[];

#endif

#include "goal_game_bonus.h"
#include "functions.h"
#include "kirby.h"

extern const s8 gUnk_082DE41C[][4];
extern const s16 gUnk_082DE474[];
void* CreateGoalGameBonus(struct Object *arg0, u8 arg1) {
    struct GoalGameBonus *ggb, *ggb2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct GoalGameBonus), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    ggb2 = TaskGetStructPtr(task);
    ggb = ggb2;
    InitObject(&ggb->obj2, arg0, arg1);
    ggb->unkB4 = arg0->subtype1;
    ggb->unkB8 = arg0->subtype2;
    ggb->unkC4 = 0;
    ggb->obj2.base.flags |= 0x10008141;
    ggb->obj2.base.unk68 &= ~7;
    sub_0803E2B0(&ggb->obj2.base, gUnk_082DE41C[ggb->unkB4][0], gUnk_082DE41C[ggb->unkB4][1], gUnk_082DE41C[ggb->unkB4][2], gUnk_082DE41C[ggb->unkB4][3]);
    sub_0803E308(&ggb->obj2.base, gUnk_082DE41C[ggb->unkB4][0], gUnk_082DE41C[ggb->unkB4][1], gUnk_082DE41C[ggb->unkB4][2], gUnk_082DE41C[ggb->unkB4][3]);
    ggb->obj2.unk83 = gUnk_082DE474[ggb->unkB4];
    if (ggb->unkB8 && ggb->unkB4 <= 2)
        ggb->obj2.unk83 = 4;
    ObjectInitSprite(&ggb->obj2);
    if (ggb->unkB4 > 9 && ggb->unkB4 < 0x14) {
        ggb->obj2.base.sprite.unk14 = ((ggb->obj2.base.sprite.unk14 >> 6) - 1) << 6;
    }
    gUnk_08351648[ggb->obj2.type].unk10(&ggb->obj2);

    return ggb;
}

extern const s16 gUnk_082DE4F8[][4];
extern void (*const gUnk_082DE4A0[])(struct GoalGameBonus *);
void sub_0801ABFC(struct GoalGameBonus *arg0) {
    struct Object2 *obj = &arg0->obj2;
    obj->base.xspeed = gUnk_082DE4F8[arg0->unkB4][0];
    obj->base.yspeed = -gUnk_082DE4F8[arg0->unkB4][2];
    if (arg0->unkB4 >= 10 && arg0->unkB4 < 20) {
        u32 val = sub_0803DF24(0x2e5);
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj->base.roomId) {
            if (val == 0xff) {
                val = sub_0803DFAC(0x2e5, 0);
            }
            obj->base.sprite.palId = val;
        }
    }
    obj->unk78 = gUnk_082DE4A0[arg0->unkB4];
}

static void sub_0801B834(struct GoalGameBonus *arg0);
static void sub_0801B85C(struct GoalGameBonus *arg0);
static void sub_0801AC98(struct GoalGameBonus *arg0) {
    struct Kirby *kirby = arg0->obj2.base.unk6C;
    switch (arg0->unkB4) {
    case 0:
        PlaySfx(&arg0->obj2.base, 0x1f4);
        if (arg0->unkB8) {
            if (kirby->lives > 0xfe) {
                kirby->lives = 0xff;
            }
            else {
                ++kirby->lives;
                PlaySfx(&kirby->base.base.base, 0x1f5);
            }
            arg0->obj2.unk78 = sub_0801B85C;
        }
        else {
            arg0->kirby = kirby;
            arg0->unkC0 = gUnk_08351648[OBJ_SMALL_FOOD].unk4;
            arg0->obj2.unk78 = sub_0801B834;
        }
        break;
    case 1:
        PlaySfx(&arg0->obj2.base, 0x1f4);
        if (arg0->unkB8) {
            if (kirby->lives > 0xfe) {
                kirby->lives = 0xff;
            }
            else {
                ++kirby->lives;
                PlaySfx(&kirby->base.base.base, 0x1f5);
            }
            arg0->obj2.unk78 = sub_0801B85C;
        }
        else {
            arg0->kirby = kirby;
            arg0->unkC0 = gUnk_08351648[OBJ_POP_SODA].unk4;
            arg0->obj2.unk78 = sub_0801B834;
        }
        break;
    case 2:
        PlaySfx(&arg0->obj2.base, 0x1f4);
        if (arg0->unkB8) {
            if (kirby->lives > 0xfe) {
                kirby->lives = 0xff;
            }
            else {
                ++kirby->lives;
                PlaySfx(&kirby->base.base.base, 0x1f5);
            }
            arg0->obj2.unk78 = sub_0801B85C;
        }
        else {
            arg0->kirby = kirby;
            arg0->unkC0 = gUnk_08351648[OBJ_MEAT].unk4;
            arg0->obj2.unk78 = sub_0801B834;
        }
        break;
    case 3:
    case 4:
        PlaySfx(&arg0->obj2.base, 0x1f4);
        arg0->kirby = kirby;
        arg0->unkC0 = gUnk_08351648[OBJ_TOMATO].unk4;
        arg0->obj2.unk78 = sub_0801B834;
        break;
    case 5:
    case 6:
    case 7:
    case 8:
        if (kirby->lives > 0xfe) {
            kirby->lives = 0xff;
        }
        else {
            ++kirby->lives;
            PlaySfx(&kirby->base.base.base, 0x1f5);
        }
        arg0->obj2.unk78 = sub_0801B85C;
        break;
    case 9:
        PlaySfx(&arg0->obj2.base, 0x1f4);
        if (kirby->battery < 3) {
            ++kirby->battery;
            PlaySfx(&kirby->base.base.base, 0x1f6);
        }
        arg0->obj2.unk78 = sub_0801B85C;
        break;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
        sub_0808AE30(&arg0->obj2.base, 0, 0x29b, 0);
        sub_08052E2C(kirby);
        arg0->obj2.unk78 = sub_0801B85C;
        break;
    }
}

static inline void GoalGameBonusIncrementXspeed(struct GoalGameBonus *arg0) {
    struct Object2 *obj = &arg0->obj2;
    bool32 a, b;
    obj->base.xspeed += gUnk_082DE4F8[arg0->unkB4][1];
    obj->base.yspeed -= gUnk_082DE4F8[arg0->unkB4][3];
    if ((obj->base.flags & 0x41000) == 0x40000) {
        struct Kirby *kirby = obj->base.unk6C;
        if (kirby->base.base.base.unk0)
            b = FALSE;
        else
            b = TRUE;
    }
    else
        b = FALSE;
    if (b)
        sub_0801AC98(arg0);
    a = FALSE;
    if (arg0->obj2.base.y > 0x34000 || arg0->obj2.base.x < -0x2000)
        a = TRUE;
    else if (arg0->obj2.base.x > 0x12000)
        a = TRUE;
    if (a) {
        obj->unk78 = sub_0801B85C;
    }
}

static inline void GoalGameBonusDecrementXspeed(struct GoalGameBonus *arg0) {
    struct Object2 *obj = &arg0->obj2;
    bool32 a, b;
    obj->base.xspeed -= gUnk_082DE4F8[arg0->unkB4][1];
    obj->base.yspeed -= gUnk_082DE4F8[arg0->unkB4][3];
    if ((obj->base.flags & 0x41000) == 0x40000) {
        struct Kirby *kirby = obj->base.unk6C;
        if (kirby->base.base.base.unk0)
            b = FALSE;
        else
            b = TRUE;
    }
    else
        b = FALSE;
    if (b)
        sub_0801AC98(arg0);
    a = FALSE;
    if (arg0->obj2.base.y > 0x34000 || arg0->obj2.base.x < -0x2000)
        a = TRUE;
    else if (arg0->obj2.base.x > 0x12000)
        a = TRUE;
    if (a) {
        obj->unk78 = sub_0801B85C;
    }
}

static void sub_0801B394(struct GoalGameBonus *arg0) {
    GoalGameBonusIncrementXspeed(arg0);
}

static void sub_0801B428(struct GoalGameBonus *arg0) {
    GoalGameBonusDecrementXspeed(arg0);
}

static void sub_0801B4BC(struct GoalGameBonus *arg0) {
    GoalGameBonusIncrementXspeed(arg0);
}

static void sub_0801B550(struct GoalGameBonus *arg0) {
    GoalGameBonusIncrementXspeed(arg0);
}

static void sub_0801B5E4(struct GoalGameBonus *arg0) {
    GoalGameBonusDecrementXspeed(arg0);
}

static void sub_0801B85C(struct GoalGameBonus *arg0);
static void sub_0801B678(struct GoalGameBonus *arg0) {
    struct GoalGameBonus *tmp;
    bool32 a;
    tmp = arg0;
    if (tmp->unkC2++ > 4) {
        if (arg0->kirby->hp >= arg0->kirby->maxHp) {
            a = FALSE;
            arg0->kirby->hp = arg0->kirby->maxHp;
        }
        else {
            a = TRUE;
            ++arg0->kirby->hp;
            PlaySfx(&arg0->kirby->base.base.base, 0x1f6);
        }
        if (a) {
            --arg0->unkC0;
        }
        else {
            arg0->unkC0 = 0;
        }
        arg0->unkC2 = 0;
    }
    if (!arg0->unkC0)
        tmp->obj2.unk78 = sub_0801B85C;
}

static void sub_0801B78C(struct GoalGameBonus *arg0) {
    if (arg0->obj2.base.x > 0x8800) {
        arg0->obj2.base.xspeed = -gUnk_082DE4F8[arg0->unkB4][0];
        arg0->obj2.unk78 = sub_0801B428;
    }
    else {
        arg0->obj2.base.xspeed = gUnk_082DE4F8[arg0->unkB4][0];
        arg0->obj2.unk78 = sub_0801B4BC;
    }
}

static void sub_0801B7E0(struct GoalGameBonus *arg0) {
    if (arg0->obj2.base.x > 0x8800) {
        arg0->obj2.base.xspeed = -gUnk_082DE4F8[arg0->unkB4][0];
        arg0->obj2.unk78 = sub_0801B550;
    }
    else {
        arg0->obj2.base.xspeed = gUnk_082DE4F8[arg0->unkB4][0];
        arg0->obj2.unk78 = sub_0801B5E4;
    }
}

static void sub_0801B834(struct GoalGameBonus *arg0) {
    arg0->obj2.base.xspeed = 0;
    arg0->obj2.base.yspeed = 0;
    arg0->obj2.base.flags |= 0x10600;
    arg0->unkC2 = 0;
    arg0->obj2.unk78 = sub_0801B678;
}

static void sub_0801B85C(struct GoalGameBonus *arg0) {
    arg0->obj2.base.xspeed = 0;
    arg0->obj2.base.yspeed = 0;
    arg0->obj2.base.flags |= 0x10600;
    arg0->obj2.base.flags |= 0x1000;
}

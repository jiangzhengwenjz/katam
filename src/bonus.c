#include "bonus.h"
#include "data.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "main.h"
#include "code_0806F780.h"

static void BonusAddHpOrBattery(struct Object2*);
static void BonusGiveInvincibility(struct Object2*);
static void BonusAddLives(struct Object2*);
static void BonusSetFunc(struct Object2*);
static void sub_08123780(struct Object2*);
static void sub_08123814(struct Object2*);
static void sub_081238D0(struct Object2*);
static void sub_08123924(struct Object2*);
static void sub_081238FC(struct Object2*);
static void sub_0812385C(struct Object2*);

void* CreateBonus(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x2f9c, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj, *obj2;

    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x10000000;
    obj->base.unkC |= 1;
    obj->base.flags |= 0x10000;
    obj->base.flags |= 0x200000;
    obj->base.flags |= 0x400000;
    obj->base.unk68 &= ~7;
    obj->base.unk5C |= ~0xa7;
    obj->base.flags |= 1;
    obj->base.unkC |= 0x100;
    sub_0803E2B0(&obj->base, -5, 1 - 7, 5, 5);
    sub_0803E308(&obj->base, -6, -7, 6, 7);
    if (obj->object->subtype2 == 0) {
        obj->base.y = ((obj->base.y + (obj->base.unk3F << 8) + 0xfff) & 0xfffff000) - (obj->base.unk3F << 8) - 1;
        obj->base.unk4C = obj->base.y;
    }
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x700;
    if (obj->type == OBJ_SMALL_FOOD) {
        obj->unk83 = obj->object->subtype1;
    }
    if (obj->object->subtype2 != 0) {
        if (obj->object->subtype2 != 3) {
            if (obj->object->subtype2 == 4) {
                sub_08123924(obj);
                return obj;
            }
            else {
                if (obj->object->subtype2 == 2) {
                    obj->base.yspeed = 0x180;
                    sub_08123814(obj);
                }
                else {
                    sub_081238D0(obj);
                }
            }
        }
        else {
            return obj;
        }
    }
    else {
        sub_08123780(obj);
        if (!(obj->object->unk22 & 4)) {
            sub_0809513C(&obj->base, 0, 0);
        }
    }
    if (obj->object->unk22 & 8) {
        obj->base.flags |= 0x40;
        obj->base.flags |= 0x100;
    }
    return obj;
}

static void sub_08122CEC(struct Object2* arg0) {
    struct Kirby* r8 = arg0->base.parent;
    arg0->base.flags |= 0x200;
    if (r8->unkD4 == 0x69) {
        if (--arg0->base.counter << 0x10 == 0) {
            PlaySfx(&arg0->base, SE_08D563F8);
            sub_08123814(arg0);
            arg0->base.xspeed = (Rand16() & 0xff) - 0x60;
            arg0->base.yspeed = (Rand16() & 0xff) + 0x1a0;
            if (r8->base.base.base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
    }
    else {
        if (r8->unkD4 == 0x34) {
            arg0->base.counter++;
        }
    }
}

static void sub_08122E08(struct Object2* arg0) {
    arg0->base.flags |= 0x200;
    if (--arg0->base.counter << 0x10 == 0) {
        PlaySfx(&arg0->base, SE_08D563F8);
        arg0->base.yspeed = 0x240;
        sub_0808AE30(&arg0->base, 0, 0x2B4, 0);
        sub_0809513C(&arg0->base, 0, 0);
        sub_08123814(arg0);
    }
}

static void sub_08122ED4(struct Object2* arg0) {
    if (arg0->object->subtype2 != 0) {
        if (arg0->base.counter > 0xf0) {
            if (arg0->base.counter & 2) {
                arg0->base.flags |= 0x400;
            }
            else {
                arg0->base.flags &= ~0x400;
            }
        }
        if (arg0->base.counter == 0x168) {
            arg0->base.flags |= 0x1000;
            arg0->base.flags |= 0x400;
            return;
        }
        else {
            arg0->base.counter++;
        }
    }
    if (arg0->base.flags & 0x40000) {
        struct Kirby* kirby = arg0->base.unk6C;
        if (kirby->base.base.base.unk0 == 0) {
            if (sub_0803925C(&arg0->base, &kirby->base.base.base) != 0) {
                if (kirby->base.base.base.unk56 < gUnk_0203AD30) {
                    BonusSetFunc(arg0);
                }
            }
        }
    }
}

static void BonusSetFunc(struct Object2* arg0) {
    struct Kirby* kirby = arg0->base.unk6C;
    if (kirby->hp > 0) {
        if (!Macro_0810B1F4(&arg0->base)) {
            arg0->base.counter = 0;
            arg0->base.flags |= 0x600;
            arg0->base.flags |= 0x800;
            switch (arg0->type) {
            default:
                sub_08033540(kirby->base.base.base.unk56);
                arg0->base.flags |= 0x2000;
                arg0->unk78 = BonusAddHpOrBattery;
                break;
            case OBJ_1UP:
                arg0->unk78 = BonusAddLives;
                break;
            case OBJ_INVINCIBLE_CANDY:
                arg0->unk78 = BonusGiveInvincibility;
                break;
            }

            if (arg0->object->unk2 != 0 || arg0->object->unk3 != 31) {
                sub_080029F4(gCurLevelInfo[arg0->base.unk56].unk65E, 1);
            }
            PlaySfx(&arg0->base, SE_08D5ACCC);
        }
    }
}

static void BonusAddHpOrBattery(struct Object2* arg0) {
    struct Kirby* kirby = arg0->base.unk6C;
    u8 r8;

    if (++arg0->base.counter > 4) {
        arg0->unk80--;
        arg0->base.counter = 0;
        if (arg0->type != OBJ_BATTERY) {
            if (kirby->hp >= kirby->maxHp) {
                r8 = 0;
                kirby->hp = kirby->maxHp;
            }
            else {
                r8 = 1;
                kirby->hp++;
                PlaySfx(&kirby->base.base.base, SE_08D5AD9C);
            }

            if (!r8 || arg0->unk80 == 0) {
                kirby->unkE1 = 0;
                kirby->unkE4 = 0;
                kirby->unkE5 = 0xff;
                kirby->unkE2 = gUnk_08351648[arg0->type].unk4;
                arg0->unk80 = 0;
                arg0->base.flags |= 0x1000;
                sub_080335B4(kirby->base.base.base.unk56);
                gUnk_0203AD20 &= ~1;
            }
        }
        else {
            if (kirby->battery <= 2) {
                kirby->battery++;
                PlaySfx(&kirby->base.base.base, SE_08D5AD9C);
            }
            arg0->unk80 = 0;
            arg0->base.flags |= 0x1000;
            sub_080335B4(kirby->base.base.base.unk56);
            gUnk_0203AD20 &= ~1;
        }
    }
    arg0->base.counter++;
}

static void sub_081232AC(struct Kirby* arg0, u8 arg1) {
    if (arg0->unkE5 != 0) {
        arg0->unkE5 = 0xff;
    }
    else {
        if (arg0->base.base.base.roomId > 0x383 || arg0->base.base.base.roomId == 0x321 || arg0->base.base.base.roomId == gUnk_0835105C[1]
            || arg0->base.base.base.roomId == gUnk_0835105C[2] || arg0->base.base.base.roomId == gUnk_0835105C[3]
            || arg0->base.base.base.roomId == gUnk_0835105C[4] || arg0->base.base.base.roomId == gUnk_0835105C[5]
            || arg0->base.base.base.roomId == gUnk_0835105C[6] || arg0->base.base.base.roomId == gUnk_0835105C[7] || arg0->base.base.base.roomId == gUnk_0835105C[8]) {
            if (arg1 == 4) {
                arg1 = 2;
            }
        }
        switch (arg1) {
        case 0:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[OBJ_SMALL_FOOD].unk4;
            break;
        case 1:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[OBJ_POP_SODA].unk4;
            break;
        case 2:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[OBJ_MEAT].unk4;
            break;
        case 3:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[OBJ_TOMATO].unk4;
            break;
        case 4:
            arg0->unkE1 = 0;
            arg0->unkE4 = 100;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = 1000;
            break;
        case 5:
            arg0->unkE1 = 0;
            arg0->unkE4 = 99;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = 1;
            break;
        }
    }
}

static void BonusAddLives(struct Object2* arg0) {
    struct Kirby* kirby = arg0->base.unk6C;
    if (kirby->lives >= 0xff) {
        kirby->lives = 0xff;
        arg0->base.flags |= 0x1000;
    }
    else {
        kirby->lives++;
        PlaySfx(&kirby->base.base.base, SE_08D5AD70);
        arg0->base.flags |= 0x1000;
    }
    arg0->unk80 = 0;
}

struct Object2* BonusCreateTomatoAt(struct Kirby* arg0, u16 arg1, u16 arg2) {
    struct Object2* obj = CreateObjTemplateAndObj(arg0->base.base.base.unk56, 1, 36, arg1, arg2, 
        0, 31, 0, 0, OBJ_TOMATO, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj->base.flags |= 0x2000000;
    return obj;
}

struct Object2* BonusCreateTomato(struct Kirby* arg0) {
    struct Object2* obj = CreateObjTemplateAndObj(arg0->base.base.base.unk56, 1, 36, arg0->base.base.base.x >> 8, 
        arg0->base.base.base.y >> 8, 0, 31, 0, 0, OBJ_TOMATO, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj->base.counter = 0;
    obj->base.xspeed = 0;
    obj->base.yspeed = 0;
    obj->base.flags |= 0xf00;
    obj->base.unk6C = arg0;
    obj->unk78 = sub_081238FC;
    return obj;
}

void BonusCreateRandom(struct ObjectBase* arg0, u8 arg1) {
    s32 rng;
    u16 i;
    u8 type, temp = 0;
    if (!(gKirbys[arg1].base.base.base.unkC & 0x1000000)) {
        gKirbys[arg1].base.base.base.unkC |= 0x1000000;
        if (arg1 < 5 && !(Rand16() & 1)) {
            type = gUnk_08357F44[Rand16() & 0xf] + OBJ_SMALL_FOOD;
            if (type == OBJ_SMALL_FOOD) {
                rng = Rand16();
                for (i = 0; i < 5; ++i) {
                    if (rng < (i + 1) * 0x2aaa) {
                        break;
                    }
                }
                temp = i;
            }
            CreateObjTemplateAndObj(arg0->unk56, 1, 36, arg0->x >> 8, 
                arg0->y >> 8, 0, 31, 0, 0, type, temp, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        }
    }
}

static void sub_08123780(struct Object2* arg0) {
    arg0->base.counter = 0;
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->unk78 = sub_08122ED4;
}

void sub_0812379C(struct Kirby* arg0) {
    sub_081232AC(arg0, gUnk_08357F24[Rand16() & 0x1f]);
}

static void BonusGiveInvincibility(struct Object2* arg0) {
    struct Kirby* kirby = arg0->base.unk6C;
    kirby->unkE1 = 0;
    kirby->unkE4 = 100;
    kirby->unkE5 = 0xff;
    kirby->unkE2 = 1000;
    sub_0808324C(kirby, 1000);
    arg0->base.flags |= 0x1000;
    arg0->unk80 = 0;
}

static void sub_08123814(struct Object2* arg0) {
    arg0->base.counter = 0;
    arg0->base.flags &= ~0x400;
    arg0->base.flags &= ~0x800;
    arg0->base.flags &= ~0x200;
    arg0->unk78 = sub_0812385C;
    if (arg0->object->subtype2 == 4) {
        arg0->base.flags &= ~0x100;
    }
}

static void sub_0812385C(struct Object2* arg0) {
    if (arg0->base.yspeed <= 0) {
        arg0->base.flags &= ~0x100;
    }
    if (arg0->base.flags & 0x40000) {
        struct Kirby* kirby = arg0->base.unk6C;
        if (kirby->base.base.base.unk0 == 0) {
            if (sub_0803925C(&arg0->base, &kirby->base.base.base) != 0) {
                if (kirby->base.base.base.unk56 < gUnk_0203AD30) {
                    BonusSetFunc(arg0);
                }
                return;
            }
        }
    }
    if (arg0->base.unk62 & 4) {
        sub_08123780(arg0);
    }
}

static void sub_081238D0(struct Object2* arg0) {
    arg0->base.counter = 5;
    arg0->base.flags |= 0x400;
    arg0->base.flags |= 0x800;
    arg0->base.flags |= 0x100;
    arg0->base.flags |= 0x200;
    arg0->unk78 = sub_08122CEC;
}

static void sub_081238FC(struct Object2* arg0) {
    struct Kirby* kirby = arg0->base.unk6C;
    if (kirby->base.base.base.unk0 == 0) {
        if (kirby->base.base.base.unk56 < gUnk_0203AD30) {
            BonusSetFunc(arg0);
        }
    }
}

static void sub_08123924(struct Object2* arg0) {
    arg0->base.counter = 0x20;
    arg0->base.flags |= 0x400;
    arg0->base.flags |= 0x800;
    arg0->base.flags |= 0x100;
    arg0->base.flags |= 0x200;
    arg0->unk78 = sub_08122E08;
}

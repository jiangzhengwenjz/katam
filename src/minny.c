#include "functions.h"
#include "minny.h"
#include "kirby.h"
#include "random.h"

static void MinnyInitSpeed(struct Object2*);
static void MinnySubtype1Start(struct Object2*);
static void MinnyTurnAround(struct Object2*);

void* CreateMinny(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -2, -2, 2, 2);
    sub_0803E308(&obj->base, -5, 0, 7, 4);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

static void MinnySetDirection(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    if (--arg0->base.counter == 0) {
        MinnyInitSpeed(arg0);
    }
    else {
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3bff) {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3bff) {
                MinnyInitSpeed(arg0);
            }
        }
    }
}

static void MinnyInitSpeed(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, MinnyTurnAround);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags ^= 1;
    arg0->base.xspeed = 0x120;
    if (arg0->subtype != 0) {
        arg0->base.xspeed = 0x200;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void MinnyCalcSpeed(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->subtype != 0) {
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x40;
            if (arg0->base.xspeed < -0x200) {
                arg0->base.xspeed = -0x200;
            }
            else {
                if (arg0->base.xspeed > 0x200) {
                    arg0->base.xspeed = 0x200;
                }
            }
        }
        else {
            arg0->base.xspeed += 0x40;
            if (arg0->base.xspeed > 0x200) {
                arg0->base.xspeed = 0x200;
            }
            else {
                if (arg0->base.xspeed < -0x200) {
                    arg0->base.xspeed = -0x200;
                }
            }
        }
    }
    else {
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x18;
            if (arg0->base.xspeed < -0x120) {
                arg0->base.xspeed = -0x120;
            }
            else {
                if (arg0->base.xspeed > 0x120) {
                    arg0->base.xspeed = 0x120;
                }
            }
        }
        else {
            arg0->base.xspeed += 0x18;
            if (arg0->base.xspeed > 0x120) {
                arg0->base.xspeed = 0x120;
            }
            else {
                if (arg0->base.xspeed < -0x120) {
                    arg0->base.xspeed = -0x120;
                }
            }
        }
    }
    if ((((arg0->base.flags & 1) && (arg0->base.xspeed < 0)) 
        || (!(arg0->base.flags & 1) && (arg0->base.xspeed > 0))) 
        && (--arg0->base.counter == 0)) {
        ObjectSetFunc(arg0, 1, MinnyCalcSpeed);
        arg0->base.flags ^= 1;
        arg0->base.counter = (Rand16() & 3) * 10 + 10;
    }
    else {
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3bff) {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3bff) {
                MinnyInitSpeed(arg0);
            }
        }
    }
}

static void MinnyStart(struct Object2* arg0) {
    if (arg0->object->subtype1 == 1) {
        MinnySubtype1Start(arg0);
    }
    else {
        ObjectSetFunc(arg0, 0, MinnySetDirection);
        arg0->base.xspeed = 0;
        arg0->base.counter = (arg0->object->unk11 + 1) * 60;
    }
}

static void MinnyTurnAround(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->object->unk14 != 0) {
        if (++arg0->base.counter > 0x28) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            MinnyInitSpeed(arg0);
        }
    }
}

static void MinnySubtype1Start(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, MinnyCalcSpeed);
    arg0->base.flags ^= 1;
    arg0->base.counter = (Rand16() % 4) * 10 + 10;
}

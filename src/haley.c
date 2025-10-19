#include "haley.h"
#include "kirby.h"

const struct AnimInfo gUnk_08352F00[] = {
    { 0x2F8, 0x0, 0x0 },
    { 0x2F8, 0x1, 0x0 },
    { 0x2F8, 0x2, 0x0 },
    { 0x2F8, 0x3, 0x0 },
};

void* CreateHaley(struct Object *arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.flags |= 0x140;
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);

    return obj;
}

static void sub_080A0F2C(struct Object2 *arg0);
static void sub_080A118C(struct Object2 *arg0);
void sub_080A0E98(struct Object2 *arg0) {
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x20;
    arg0->base.yspeed = 0;
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x200;
        break;
    case 1:
        arg0->base.xspeed = 0x300;
        break;
    case 2:
        arg0->base.xspeed = 0x380;
        break;
    default:
        arg0->base.xspeed = 0;
        break;
    }
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
    if (arg0->base.unk58 & 2) {
        sub_080A118C(arg0);
    }
    else {
        ObjectSetFunc(arg0, 0, sub_080A0F2C);
    }
}

static void sub_080A0F2C(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    switch (arg0->object->subtype1) {
    case 0:
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 5;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 5;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
        if (arg0->base.flags & 1) {
            if (arg0->base.xspeed > -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (arg0->base.xspeed < 0x100) {
            arg0->base.xspeed = 0x100;
        }
        break;
    case 2:
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 8;
            if (arg0->base.xspeed < -0x4c0) {
                arg0->base.xspeed = -0x4c0;
            }
            else if (arg0->base.xspeed > 0x4c0) {
                arg0->base.xspeed = 0x4c0;
            }
        }
        else {
            arg0->base.xspeed += 8;
            if (arg0->base.xspeed > 0x4c0) {
                arg0->base.xspeed = 0x4c0;
            }
            else if (arg0->base.xspeed < -0x4c0) {
                arg0->base.xspeed = -0x4c0;
            }
        }
        break;
    }
    if (arg0->base.unk58 & 2) {
        sub_080A118C(arg0);
    }
}

static void sub_080A100C(struct Object2 *arg0) {
    arg0->base.xspeed = arg0->base.counter;
    arg0->base.flags |= 4;
    switch (arg0->object->subtype1) {
    case 0:
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 5;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 5;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
        if (arg0->base.flags & 1) {
            if (arg0->base.xspeed > -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (arg0->base.xspeed <= 0xff) {
            arg0->base.xspeed = 0x100;
        }
        break;
    case 1:
        if (arg0->base.flags & 1) {
            if (arg0->base.xspeed > -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (arg0->base.xspeed <= 0xff) {
            arg0->base.xspeed = 0x100;
        }
    // fallthrough
    case 2:
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 8;
            if (arg0->base.xspeed < -0x4c0) {
                arg0->base.xspeed = -0x4c0;
            }
            else if (arg0->base.xspeed > 0x4c0) {
                arg0->base.xspeed = 0x4c0;
            }
        }
        else {
            arg0->base.xspeed += 8;
            if (arg0->base.xspeed > 0x4c0) {
                arg0->base.xspeed = 0x4c0;
            }
            else if (arg0->base.xspeed < -0x4c0) {
                arg0->base.xspeed = -0x4c0;
            }
        }
        if (arg0->base.flags & 1) {
            if (arg0->base.xspeed > -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (arg0->base.xspeed <= 0xff) {
            arg0->base.xspeed = 0x100;
        }
    }
    arg0->base.counter = arg0->base.xspeed;
    if (arg0->base.unk1 < 0x14) {
        arg0->base.xspeed >>= 2;
    }
    else {
        arg0->base.xspeed >>= 1;
    }
    if (!(arg0->base.unk58 & 2))
        sub_080A0E98(arg0);
}

static void sub_080A118C(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 1, sub_080A100C);
    arg0->base.counter = arg0->base.xspeed;
}

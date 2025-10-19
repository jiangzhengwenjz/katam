#include "big_waddle_dee.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "task.h"
#include "random.h"

static void BigWaddleDeeReverseX(struct Object2*);
static void BigWaddleDeeReverseXOnCounter(struct Object2*);
static void BigWaddleDeeChooseXSpeed0(struct Object2*);
static void BigWaddleDeeChooseXSpeed1(struct Object2*);
static void BigWaddleDeeChooseXSpeed2(struct Object2*);
static void sub_080A5084(struct Object2*);
static void sub_080A4E20(struct Object2*);
static void sub_080A5030(struct Object2*);
static void sub_080A5054(struct Object2*);

const struct AnimInfo gUnk_08353434[] = {
    { 0x314, 0, 0 },
    { 0x314, 1, 0 },
    { 0x314, 2, 0 },
    { 0x314, 3, 0 },
    { 0x314, 4, 0 },
};

void* CreateBigWaddleDee(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Kirby *kirby;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x200000;
    obj->base.unk5C &= ~7;
    obj->base.unk5C |= 3;
    sub_0803E2B0(&obj->base, -8, -4, 8, 10);
    sub_0803E308(&obj->base, -7, -7, 7, 14);
    kirby = sub_0803D368(&obj->base);
    if (obj->base.x > kirby->base.base.base.x) {
        obj->base.flags |= 1;
    }
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x6c0;
    switch (arg0->subtype1) {
    default:
    case 0:
        BigWaddleDeeChooseXSpeed0(obj);
        break;
    case 1:
        BigWaddleDeeChooseXSpeed1(obj);
        break;
    case 2:
        BigWaddleDeeChooseXSpeed2(obj);
        break;
    }
    return obj;
}

static void sub_080A4B68(struct Object2* arg0) {
    if (arg0->base.flags & 1) {
        arg0->base.xspeed -= 5;
        if (arg0->base.xspeed < -0x80) {
            arg0->base.xspeed = -0x80;
        }
        else if (arg0->base.xspeed > 0x80) {
            arg0->base.xspeed = 0x80;
        }
    }
    else {
        arg0->base.xspeed += 5;
        if (arg0->base.xspeed > 0x80) {
            arg0->base.xspeed = 0x80;
        }
        else if (arg0->base.xspeed < -0x80) {
            arg0->base.xspeed = -0x80;
        }
    }
    arg0->base.counter &= 0x1ff;
    if (arg0->base.counter & 0x100) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    if (arg0->base.unk62 & 1) {
        if (arg0->base.counter & 0x100) {
            arg0->base.counter = 0;
            arg0->base.xspeed = 0;
            arg0->base.flags &= ~1;
        }
        else {
            arg0->base.xspeed = 0;
            arg0->base.counter = 0x100;
            arg0->base.flags |= 1;
        }
    }
    arg0->base.counter++;
}

static void BigWaddleDeeChooseXSpeed0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, BigWaddleDeeReverseX);
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void BigWaddleDeeChooseXSpeed1(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, BigWaddleDeeReverseXOnCounter);
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void BigWaddleDeeReverseXOnCounter(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
        arg0->base.counter = 0;
    }
    switch (arg0->subtype) {
    case 0:
        if (arg0->base.counter > 0xc0) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
            arg0->base.counter = 0;
        }
        break;
    case 1:
        if (arg0->base.counter > 0x80) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
            arg0->base.counter = 0;
        }
        break;
    case 2:
        if (arg0->base.counter > 0x60) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
            arg0->base.counter = 0;
        }
        break;
    case 3:
        if (arg0->base.counter > 0x40) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
            arg0->base.counter = 0;
        }
        break;
    }
    arg0->base.counter++;
}

static void BigWaddleDeeChooseXSpeed2(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4E20);
    arg0->base.counter = 0x64;
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080A4E20(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.counter == 0x1e) {
        arg0->base.counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A5030(arg0);
        }
    }
    else if (arg0->base.counter > 0xb4) {
        arg0->base.counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A5030(arg0);
        }
    }
    if (arg0->base.unk62 & 4) {
        arg0->base.counter++;
    }
}

static void BigWaddleDeeChooseXSpeedAndPlaySfx(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A5084);
    arg0->base.yspeed = 0x280;
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    PlaySfx(&arg0->base, SE_08D585F8);
}

void sub_080A4FD0(struct Object2* arg0) {
    switch (arg0->object->subtype1) {
    default:
    case 0:
        BigWaddleDeeChooseXSpeed0(arg0);
        break;
    case 1:
        BigWaddleDeeChooseXSpeed1(arg0);
        break;
    case 2:
        BigWaddleDeeChooseXSpeed2(arg0);
        break;
    }
}

static void BigWaddleDeeReverseX(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080A5030(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080A5054);
    arg0->base.xspeed = 0;
    arg0->unk85 = 0;
}

static void sub_080A5054(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        if (arg0->unk85 != 0) {
            BigWaddleDeeChooseXSpeedAndPlaySfx(arg0);
        }
        else {
            arg0->base.flags |= 4;
            arg0->unk85 = 1;
        }
    }
}

static void sub_080A5084(struct Object2* arg0) {
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.unk62 & 4) {
        BigWaddleDeeChooseXSpeed2(arg0);
    }
}

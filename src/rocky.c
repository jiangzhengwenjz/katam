#include "rocky.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "task.h"

static const u16 gUnk_08354BA8[0x30] = { 
    0x20, 0x58, 0x58, 0x0, 0x20, 0x48, 0x48, 0x0,
    0x20, 0x58, 0x58, 0x0, 0x20, 0x48, 0x48, 0x0,
    0x323, 0x0, 0x323, 0x1, 0x323, 0x2, 0x323, 0x3,
    0x323, 0x4, 0x323, 0x5, 0x323, 0x6, 0x310, 0x0,
    0x310, 0x1, 0x310, 0x2, 0x310, 0x3, 0x310, 0x4,
    0x310, 0x5, 0x310, 0x6, 0x310, 0x7, 0x310, 0x8
};

static void sub_080BE3C8(struct Object2*);
static void sub_080BE404(struct Object2*);
static void sub_080BE4BC(struct Object2*);
static void sub_080BE67C(struct Object2*);
static void sub_080BE74C(struct Object2*);
static void sub_080BE7B8(struct Object2*);
static void sub_080BE898(struct Object2*);
static void sub_080BE8C8(struct Object2*);
static void sub_080BE8F0(struct Object2*);
static void sub_080BE928(struct Object2*);
static void sub_080BE95C(struct Object2*);
static void sub_080BE978(struct Object2*);
static void sub_080BE9A8(struct Object2*);
static void sub_080BE9CC(struct Object2*);
static void sub_080BE9D8(struct Object2*);
static void sub_080BE9FC(struct Object2*);

void *CreateRocky(struct Object* arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    sub_0803E308(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    switch (arg0->subtype1) {
    case 0:
    default:
        sub_080BE8C8(obj);
        break;
    case 1:
        sub_080BE9A8(obj);
        break;
    case 2:
        sub_080BE9D8(obj);
        break;
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

static void sub_080BE3C8(struct Object2* arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }
    arg0->base.counter++;
}

static void sub_080BE404(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        sub_080BE8F0(arg0);
    }
    else {
        if ((arg0->base.unk1 & 0x1f) == 0x1f) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }
        if (!(arg0->base.unk62 & 4)) {
            sub_080BE978(arg0);
        }
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x31ff) {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0xfff) {
                if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                    arg0->unk85 |= 1;
                }
                else {
                    arg0->unk85 &= ~1;
                }
            }
        }
    }
}

static void sub_080BE4BC(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->subtype != 0) {
        arg0->base.xspeed = gUnk_08354BA8[arg0->base.counter >> 3] * 2;
    }
    else {
        arg0->base.xspeed = gUnk_08354BA8[arg0->base.counter >> 3];
    }
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (!(arg0->base.unk62 & 4)) {
        sub_080BE978(arg0);
    }
    if (arg0->base.counter & 0x80) {
        ObjectSetFunc(&arg0->base, 0, sub_080BE404);
        arg0->base.xspeed = 0;
        arg0->base.flags &= ~0x40;
    }
    if (arg0->unk85 != 0) {
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x31ff) {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0xfff) {
                if (Rand16() & 3) {
                    arg0->unk85 = arg0->base.counter;
                }
                else {
                    sub_080BE67C(arg0);
                    return;
                }
            }
        }
    }
    else {
        if ((arg0->base.counter - arg0->unk85) > 0x3c) {
            if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x31ff) {
                if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0xfff) {
                    if (!(Rand16() & 3)) {
                        sub_080BE67C(arg0);
                        return;
                    }
                }
            }
        }
    }
    arg0->base.counter++;
}

static void sub_080BE67C(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 2, sub_080BE74C);
    arg0->base.xspeed = 0x180;
    arg0->base.yspeed = 0x2e8;
    arg0->base.flags &= ~2;
    arg0->base.flags |= 0x40;
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    PlaySfx(&arg0->base, 0x145);
}

static void sub_080BE74C(struct Object2* arg0) {
    if (arg0->base.unk1 <= 0x17) {
        arg0->base.yspeed -= 0x20;
        if (arg0->base.yspeed < -0xfff) {
            arg0->base.yspeed = -0xfff;
        }
    }
    else {
        arg0->base.flags &= ~0x40;
        arg0->base.xspeed = 0;
        arg0->base.yspeed = 0;
    }
    if (arg0->base.flags & 2 || arg0->base.unk62 & 8) {
        sub_080BE928(arg0);
    }
    arg0->base.counter++;
}

static void sub_080BE7B8(struct Object2* arg0) {
    if (arg0->base.unk62 & 4) {
        sub_0806FE64(1, &arg0->base);
        arg0->base.flags &= ~0x40;
        arg0->base.yspeed = 0;
        arg0->unk9A = 0;
        PlaySfx(&arg0->base, 0x13e);
        ObjectSetFunc(&arg0->base, 0, sub_080BE404);
        arg0->base.xspeed = 0;
        arg0->base.flags &= ~0x40;
    }
    arg0->base.counter++;
}

static void sub_080BE898(struct Object2* arg0) {
    switch (arg0->object->subtype1) {
    case 0:
    default:
        sub_080BE8C8(arg0);
        break;
    case 1:
        sub_080BE9A8(arg0);
        break;
    case 2:
        sub_080BE9D8(arg0);
        break;
    }
}

static void sub_080BE8C8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080BE404);
    arg0->base.xspeed = 0;
    arg0->base.flags &= ~0x40;
}

static void sub_080BE8F0(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 1, sub_080BE4BC);
    if (arg0->unk85 & 1) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080BE928(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 3, sub_080BE95C);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    if (arg0->subtype != 0) {
        arg0->base.counter = 8;
    }
    else {
        arg0->base.counter = 0x10;
    }
}

static void sub_080BE95C(struct Object2* arg0) {
    if (--arg0->base.counter == 0) {
        sub_080BE978(arg0);
    }
}

static void sub_080BE978(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 4, sub_080BE7B8);
    arg0->base.flags |= 0x40;
    arg0->base.xspeed = 0;
    arg0->base.yspeed = -0x800;
}

static void sub_080BE9A8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 1, sub_080BE9CC);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080BE9CC(struct Object2* arg0) {
    arg0->base.flags |= 4;
}

static void sub_080BE9D8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080BE9FC);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080BE9FC(struct Object2* arg0) {
    arg0->base.flags |= 4;
}

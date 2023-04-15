#include "functions.h"
#include "sparky.h"
#include "random.h"
#include "kirby.h"

static void sub_080C4688(struct Object2*);
static void sub_080C46A0(struct Object2*);
static void sub_080C4674(struct Object2*);
static void sub_080C4654(struct Object2*);
static void sub_080C45E0(struct Object2*);
static void sub_080C4618(struct Object2*);
static void sub_080C4300(struct Object2*);

const struct Unk_02021590 gUnk_08355550[] = {
    { 0x32E, 0x0, 0x0 },
    { 0x32E, 0x1, 0x0 },
    { 0x32E, 0x2, 0x0 },
    { 0x32E, 0x3, 0x0 },
    { 0x32E, 0x4, 0x0 },
    { 0x32E, 0x5, 0x0 },
    { 0x32E, 0x6, 0x0 },
    { 0x32E, 0x7, 0x0 },
    { 0x32E, 0x8, 0x0 },
    { 0x32E, 0x9, 0x0 },
};

static const struct Unk_02021590 gUnk_08355578[] = {
    { 0x32E, 0x0, 0x2 },
    { 0x32E, 0xA, 0x2 },
    { 0 },
};

static const struct Unk_02021590 gUnk_08355584[] = {
    { 0x2F7,  0xF, 0x2 },
    { 0x2F7, 0x1F, 0x2 },
    { 0 },
};

void* CreateSparky(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.y -= 0x100;
    obj->base.flags |= 0x4000;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    } else {
        obj->base.flags &= ~1;
    }
    obj->base.unk68 |= 0x400;
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    sub_0803E308(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    if (obj->base.unkC & 0x10) {
        sub_08088398(obj, gUnk_08355584);
    }
    else {
        sub_08085CE8(&obj->base, gUnk_08355578);
    }
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080C41B8(struct Object2* arg0) {
    if (arg0->object->subtype1 <= 1) {
        if (arg0->base.unk62 & 4) {
            if ((abs(arg0->kirby3->base.base.base.x - arg0->base.x) < 0x4000) && (Rand16() % 4 == 0)) {
                sub_080C4674(arg0);
            }
            else {
                if (arg0->object->subtype1 != 0) {
                    sub_080C4654(arg0);
                }
                else {
                    sub_080C45E0(arg0);
                }
            }
        }
    }
}

static void sub_080C4248(struct Object2* arg0) {
    u16 rand;
    ObjectSetFunc(arg0, 4, sub_080C4300);
    rand = Rand16();
    if (rand % 4 == 3) {
        if (arg0->subtype != 0) {
            arg0->base.xspeed = 0x180;
        }
        else {
            arg0->base.xspeed = 0x100;
        }
        arg0->base.yspeed = 0x400;
    }
    else {
        if (rand % 4 == 2) {
            arg0->base.xspeed = 0;
            arg0->base.yspeed = 0x200;
        }
        else {
            if (arg0->subtype != 0) {
                arg0->base.xspeed = 0x180;
            }
            else {
                arg0->base.xspeed = 0x100;
            }
            arg0->base.yspeed = 0x200;
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080C4300(struct Object2* arg0) {
    if ((arg0->base.yspeed -= 0x40) < -0x300) {
        arg0->base.yspeed = -0x300;
    }
    if (arg0->base.unk62 & 4) {
        sub_080C4654(arg0);
    }
}

static void sub_080C4338(struct Object2* arg0) {
    s32 unk0, unk1;
    if (arg0->object->subtype1 != 0) {
        unk0 = -5;
        unk1 = -6;
        if (++arg0->base.counter > 8) {
            ObjectSetFunc(arg0, 0, sub_080C41B8);
            sub_0803E2B0(&arg0->base, unk0, unk0, 5, 6);
            sub_0803E308(&arg0->base, unk1, unk1, 6, 8);
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->base.xspeed = 0;
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
    }
    else {
        unk0 = -5;
        unk1 = -6;
        if (++arg0->base.counter > 13) {
            ObjectSetFunc(arg0, 0, sub_080C41B8);
            sub_0803E2B0(&arg0->base, unk0, unk0, 5, 6);
            sub_0803E308(&arg0->base, unk1, unk1, 6, 8);
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->base.xspeed = 0;
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
    }
}

static void sub_080C4428(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (!(arg0->base.unk1 & 3) || (arg0->base.unk1 & 3) == 3) {
        sub_0803E2B0(&arg0->base, -17, -12, 17, 20);
    }
    else {
        sub_0803E2B0(&arg0->base, -5, -5, 5, 6);
        sub_0803E308(&arg0->base, -6, -6, 6, 8);
    }
    if ((arg0->base.flags & 2) && (++arg0->base.counter > 8)) {
        sub_0803E2B0(&arg0->base, -5, -5, 5, 6);
        sub_0803E308(&arg0->base, -6, -6, 6, 8);
        ObjectSetFunc(arg0, 0, sub_080C4338);
        arg0->base.xspeed >>= 1;
    }
    else {
        if (!(arg0->base.unk1 & 7)) {
            PlaySfx(&arg0->base, 0x140);
        }
    }
}

void sub_080C4570(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C41B8);
    sub_0803E2B0(&arg0->base, -5, -5, 5, 6);
    sub_0803E308(&arg0->base, -6, -6, 6, 8);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    arg0->base.xspeed = 0;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080C45E0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C4618);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080C4618(struct Object2* arg0) {
    if (arg0->object->subtype1 != 0) {
        if (++arg0->base.counter > 7) {
            sub_080C4248(arg0);
        }
    }
    else {
        if (++arg0->base.counter > 10) {
            sub_080C4248(arg0);
        }
    }
}

static void sub_080C4654(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C4338);
    arg0->base.xspeed >>= 1;
}

static void sub_080C4674(struct Object2* arg0) {
    ObjectSetFunc(arg0, 5, sub_080C4688);
}

static void sub_080C4688(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        sub_080C46A0(arg0);
    }
}

static void sub_080C46A0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 6, sub_080C4428);
}

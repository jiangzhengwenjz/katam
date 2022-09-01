#include "bomber.h"
#include "kirby.h"
#include "functions.h"

static void sub_080C478C(struct Object2*);
static void sub_080C47EC(struct Object2*);
static void sub_080C485C(struct Object2*);
static void sub_080C48B8(struct Object2*);
static void sub_080C48DC(struct Object2*);
static void sub_080C4900(struct Object2*);
static void sub_080C4928(struct Object2*);
static void sub_080C4968(struct Object2*);

void* CreateBomber(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.unkC |= 0x100;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -6, 5, 5);
    sub_0803E308(&obj->base, -6, -7, 6, 7);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080C478C(struct Object2* arg0) {
    if (arg0->object->subtype1 == 0 && !(arg0->base.unk62 & 4)) {
        sub_080C48DC(arg0);
    }
    else {
        ObjectSetFunc(arg0, 0, sub_080C485C);
        arg0->base.xspeed = 0x4d;
        if (arg0->base.flags & 1) {
            arg0->base.xspeed = -arg0->base.xspeed;
        }
        if (arg0->object->subtype1 != 0) {
            arg0->base.xspeed = 0;
        }
    }
}

static void sub_080C47EC(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.yspeed = 0;
    if (arg0->base.flags & 2) {
        if (arg0->base.counter == 3) {
            arg0->base.xspeed = 0x100;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
        if (++arg0->base.counter > 4) {
            sub_080C48DC(arg0);
            return;
        }
    }
    if (!(arg0->base.unk62 & 4)) {
        sub_080C48DC(arg0);
    }
}

static void sub_080C485C(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->object->subtype1 == 0) {
        if (arg0->base.unk62 & 1) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
        }
        if (sub_0809D998(arg0) != 0) {
            sub_080C48B8(arg0);
        }
        if (!(arg0->base.unk62 & 4)) {
            sub_080C48DC(arg0);
        }
    }
}

static void sub_080C48B8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080C47EC);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080C48DC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080C4900);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080C4900(struct Object2* arg0) {
    if (arg0->base.unk62 & 4) {
        if (!(arg0->base.flags & 0x1000)) {
            sub_080C4928(arg0);
        }
    }
}

static void sub_080C4928(struct Object2* arg0) {
    ObjectSetFunc(arg0, 3, sub_080C4968);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.flags |= 0x2000;
    arg0->base.flags |= 0x200;
    arg0->base.flags |= 0x2000000;
    sub_08033540(arg0->base.unk56);
}

static void sub_080C4968(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        if (++arg0->base.counter > 3) {
            sub_080335B4(arg0->base.unk56);
            sub_080860A8(&arg0->base, gUnk_083555A8);
            sub_08074420(arg0);
            arg0->base.flags |= 0x1000;
        }
    }
}

#include "functions.h"
#include "mirra.h"
#include "kirby.h"

static void sub_080B10A8(struct Object2*);
static void sub_080B1174(struct Object2*);
static void sub_080B1218(struct Object2*);
static void sub_080B1254(struct Object2*);

void* CreateMirra(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x3064, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x2000000;
    obj->base.unk5C |= 0xa0;
    obj->base.unk68 = 0;
    if (obj->object->unk14 != 0) {
        if ((1 << (obj->object->unk14 - 1)) & gUnk_020229D8) {
            sub_080B11C0(obj);
            obj->base.flags |= 0x1000;
        }
    }
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, 0, 5, 13);
    sub_0803E308(&obj->base, -6, -4, 6, 15);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080B10A8(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (sub_08070504(arg0)) {
        sub_080B1218(arg0);
    }
    else {
        u8 i;
        for (i = 0; i < gUnk_0203AD44; i++) {
            struct Kirby* kirby = &gKirbys[i];
            if (kirby->base.base.base.roomId == arg0->base.roomId
                && abs(kirby->base.base.base.x - arg0->base.x) < arg0->base.counter
                && abs(kirby->base.base.base.y - arg0->base.y) < arg0->base.counter) {
                if (kirby->base.base.base.unkC & 0x80 
                    || kirby->unkD4 == 0x61
                    || kirby->unkD4 == 0xd
                    || kirby->unkD4 == 0x20
                    || kirby->unkD4 == 0x14
                    || kirby->unkD4 == 0x15
                    || kirby->base.base.base.flags & 0x10) {
                    sub_080B1218(arg0);
                }
                return;
            }
        }
    }
}

static void sub_080B1174(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080B10A8);
    arg0->base.flags |= 0x800;
    arg0->base.flags |= 0x40;
    arg0->base.flags |= 0x2000000;
    switch (arg0->subtype) {
    case 0:
        arg0->base.counter = 0x3000;
        break;
    case 1:
        arg0->base.counter = 0x5000;
        break;
    default:
        arg0->base.counter = 0x8000;
        break;
    }
}

void sub_080B11C0(struct Object2* arg0) {
    if (arg0->object->unk14 != 0) {
        gUnk_020229D8 |= 1 << (arg0->object->unk14 - 1);
    }
    sub_08001408(arg0->base.unk56, sub_080025AC(arg0->base.unk56, arg0->object->x >> 4, arg0->object->y >> 4), 0, 0);
}

static void sub_080B1218(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080B1254);
    arg0->base.flags |= 0x200;
    arg0->base.flags |= 0x8000;
    arg0->base.flags |= 0x800;
    arg0->base.flags |= 0x40;
    arg0->base.flags |= 0x4000000;
    arg0->base.flags &= ~2;
}

static void sub_080B1254(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        arg0->unk83 = 2;
    }
}

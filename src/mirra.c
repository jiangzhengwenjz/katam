#include "functions.h"
#include "mirra.h"
#include "kirby.h"
#include "code_0806F780.h"

static void sub_080B10A8(struct Object*);
static void sub_080B1218(struct Object*);
static void sub_080B1254(struct Object*);

const struct AnimInfo gUnk_08353F2C[] = {
    { 0x336, 0x0, 0x0 },
    { 0x336, 0x1, 0x0 },
    { 0x336, 0x2, 0x0 },
    { 0x336, 0x3, 0x0 },
    // TODO: these are likely not part of the array
    { 0xED6, 0x1, 0x3 },
    {   0x0, 0x0, 0x2 },
    { 0xED6, 0x1, 0x3 },
    {   0x0, 0x0, 0x2 },
    { 0xED6, 0x1, 0x3 },
    {   0x0, 0x0, 0x0 },
};

void* CreateMirra(struct ObjectTemplate* arg0, u8 arg1) {
    struct Object *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x3064, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x2000000;
    obj->base.unk5C |= 0xa0;
    obj->base.unk68 = 0;
    if (obj->objTemplate->unk14 != 0) {
        if ((1 << (obj->objTemplate->unk14 - 1)) & gMirraEncounters) {
            sub_080B11C0(obj);
            obj->base.flags |= 0x1000;
        }
    }
    if (obj->base.x > obj->kirby3->base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, 0, 5, 13);
    ObjectSetBounds(&obj->base, -6, -4, 6, 15);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080B10A8(struct Object* arg0) {
    arg0->base.flags |= 4;
    if (sub_08070504(&arg0->base)) {
        sub_080B1218(arg0);
    }
    else {
        u8 i;
        for (i = 0; i < gNumKirbys; i++) {
            struct Kirby* kirby = &gKirbys[i];
            if (kirby->base.roomId == arg0->base.roomId
                && abs(kirby->base.x - arg0->base.x) < arg0->base.counter
                && abs(kirby->base.y - arg0->base.y) < arg0->base.counter) {
                if (kirby->base.unkC & 0x80
                    || kirby->animationIndex == 0x61
                    || kirby->animationIndex == 0xd
                    || kirby->animationIndex == 0x20
                    || kirby->animationIndex == 0x14
                    || kirby->animationIndex == 0x15
                    || kirby->base.flags & 0x10) {
                    sub_080B1218(arg0);
                }
                return;
            }
        }
    }
}

void sub_080B1174(struct Object* arg0) {
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

void sub_080B11C0(struct Object* arg0) {
    if (arg0->objTemplate->unk14 != 0) {
        gMirraEncounters |= 1 << (arg0->objTemplate->unk14 - 1);
    }
    sub_08001408(arg0->base.unk56, sub_080025AC(arg0->base.unk56, arg0->objTemplate->x >> 4, arg0->objTemplate->y >> 4), 0, 0);
}

static void sub_080B1218(struct Object* arg0) {
    ObjectSetFunc(arg0, 1, sub_080B1254);
    arg0->base.flags |= 0x200;
    arg0->base.flags |= 0x8000;
    arg0->base.flags |= 0x800;
    arg0->base.flags |= 0x40;
    arg0->base.flags |= 0x4000000;
    arg0->base.flags &= ~2;
}

static void sub_080B1254(struct Object* arg0) {
    if (arg0->base.flags & 2) {
        arg0->unk83 = 2;
    }
}

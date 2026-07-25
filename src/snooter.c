#include "snooter.h"
#include "soarar.h"
#include "kirby.h"
#include "functions.h"
#include "random.h"
#include "constants/object_types.h"

static void sub_080ACB74(struct Object2 *);
static void sub_080ACC44(struct Object2 *);
static void sub_080ACC90(struct Object2 *);

void *CreateSnooter(struct Object *arg0, u8 arg1) {
    struct Object2 *obj;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    ObjectSetHitbox(&obj->base, -5, -5, 5, 6);
    ObjectSetBounds(&obj->base, -6, -6, 6, 8);
    if (obj->base.x > FindClosestKirby(&obj->base)->base.base.base.x) {
        obj->base.flags |= 1;
    }
    ObjectInitSprite(obj);
    sub_080ACB74(obj);
    sub_080AC8CC(obj);
    return obj;
}

static void sub_080ACB74(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080ACBEC);
    arg0->base.xspeed = 0;
    arg0->base.counter = 2;
    arg0->base.flags &= ~0x2000000;
}

void sub_080ACBA4(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 8, sub_080AC45C);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.counter = 0x12C;
    arg0->type = OBJ_SNOOTER_2;
}

void sub_080ACBEC(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->base.flags ^= 1;
        arg0->base.counter--;
        if (arg0->base.counter == 0) {
            arg0->base.counter = 1;
            if (Rand16() & 1) {
                sub_080ACC44(arg0);
            }
        }
    }
}

static void sub_080ACC44(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 1, sub_080AC380);
    arg0->base.counter = 0xB4;
}

void sub_080ACC60(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.counter == 0x28) {
        ObjectSetFunc(arg0, 6, sub_080ACC90);
    }
    else {
        arg0->base.counter++;
    }
}

static void sub_080ACC90(struct Object2 *arg0) {
    if (arg0->base.flags & 2) {
        ObjectSetFunc(arg0, 0, sub_080ACBEC);
        arg0->base.xspeed = 0;
        arg0->base.counter = 2;
        arg0->base.flags &= ~0x2000000;
    }
    else {
        arg0->base.counter++;
    }
}

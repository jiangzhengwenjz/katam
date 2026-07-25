#include "fire.h"
#include "kirby.h"
#include "functions.h"

static void FireCounterIncrement(struct Object2* arg0); // declaration

const struct AnimInfo gFireAnimInfo[] = {
    { 0x305, 0, 0 },
};

void* CreateFire(struct Object* arg0, u8 arg1) {
    struct Object2 *obj;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x18000;
    obj->base.unk5C |= 0x20;
    ObjectSetHitbox(&obj->base, -6, -12, 6, -3);
    ObjectSetBounds(&obj->base, -7, -14, 7, -2);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

void FireCounterInit(struct Object2* arg0) {
    arg0->base.counter = 0;
    arg0->unk78 = FireCounterIncrement;
}

static void FireCounterIncrement(struct Object2* arg0) {
    arg0->base.counter++;
}

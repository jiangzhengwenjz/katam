#include "master_sword.h"
#include "kirby.h"
#include "functions.h"

static void sub_08025440(struct Object2* arg0);

const struct AnimInfo gUnk_082DEB0C[] = {
    { 0x2C3, 4, 0 },
};

void* CreateMasterSwordNonCollectible(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    obj->unk85 = 0;
    obj->base.flags |= 0x8200;
    obj->base.unk68 &= -8;
    sub_0803E308(&obj->base, -8, -12, 8, 12);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

void sub_08025434(struct Object2* arg0) {
    arg0->unk78 = sub_08025440;
}

static void sub_08025440(struct Object2* arg0) {
    arg0->base.flags |= 4;
}

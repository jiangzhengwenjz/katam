#include "destroyable_rock_block.h"
#include "functions.h"

static void DestroyDestroyableRockBlock(struct Task*);

const struct Unk_02021590 gUnk_08357C54[] = {
    { 0x2D1, 2, 0 },
};

void* CreateDestroyableRockBlock(struct Object* arg0, u8 arg1) {
    struct Task *task;
    struct RockBlock *obj, *obj2;
    task = TaskCreate(ObjectMain, sizeof(struct RockBlock), 0x1000, 0, DestroyDestroyableRockBlock);
    obj = TaskGetStructPtr(task);
    InitObject(&obj->base, arg0, arg1);
    obj->base.base.flags |= 0x2018f40;
    obj->base.base.unk5C |= 0x20;
    obj->base.base.unkC |= 1;
    gUnk_08351648[obj->base.type].unk10(&obj->base);
    return obj;
}

void DestroyableRockBlockInit(struct RockBlock* arg0) {
    arg0->base.base.counter = 0;
    arg0->unkB4 = 10;
    arg0->unkB6 = 0;
    arg0->base.unk78 = sub_0811BF24;
}

static void DestroyDestroyableRockBlock(struct Task* arg0) {
    struct RockBlock *obj;
    u8 unk3, unk56, r4;
    u32 unk2;
    obj = TaskGetStructPtr(arg0);
    unk56 = obj->base.base.unk56;
    unk2 = obj->base.object->unk2;
    unk3 = obj->base.object->unk3;
    r4 = gCurLevelInfo[unk56].unk65E;
    ObjectDestroy(arg0);
    if (unk2 != 0 || unk56 != 0xff) {
        sub_08001678(unk2, unk3, r4, 1);
    }
}

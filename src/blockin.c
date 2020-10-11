#include "blockin.h"
#include "functions.h"

struct Object2* CreateBlockin(struct Object* arg0, u8 arg1) {
    struct Task *task;
    struct Object2 *obj;
    task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    TASK_GET_STRUCT_PTR(task, obj);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x8000;
    obj->unk5C |= 0x20;
    obj->flags |= 0x140;
    obj->unk68 = 0;
    obj->unk5C |= 0x80000;
    sub_0803E2B0(obj, -5, -5, 5, 4);
    sub_0803E308(obj, -6, -10, 6, 7);
    ObjectInitSprite(obj);
    obj->unk10.unk14 = 0xe0*8;
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

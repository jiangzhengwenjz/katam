#include "functions.h"
#include "laser_ball.h"

struct Object2* CreateLaserBall(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x140;
    obj->unkC |= 5;
    sub_0803E2B0(obj, -5, -3, 5, 8);
    sub_0803E308(obj, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->unkC & 0x10) {
        sub_08088398(obj, gUnk_08353F98);
    }
    else {
        sub_08085CE8(obj, gUnk_08353F88);
    }
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

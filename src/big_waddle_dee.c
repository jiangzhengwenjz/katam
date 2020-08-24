#include "big_waddle_dee.h"
#include "functions.h"
#include "object.h"
#include "task.h"

struct Object2* CreateBigWaddleDee(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Kirby *kirby;
    struct Task *task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x80 << 0xe;
    obj->unk5C &= ~7;
    obj->unk5C |= 3;
    sub_0803E2B0(obj, -8, -4, 8, 10);
    sub_0803E308(obj, -7, -7, 7, 14);
    kirby = sub_0803D368(obj);
    if (obj->x > kirby->base.x) {
        obj->flags |= 1;
    }
    ObjectInitSprite(obj);
    obj->unk10.unk14 = 0x6c0;
    switch (arg0->unkE) {
    default:
    case 0:
        sub_080A4C34(obj);
        break;
    case 1:
        sub_080A4CA0(obj);
        break;
    case 2:
        sub_080A4DB0(obj);
        break;
    }
    return obj;
}

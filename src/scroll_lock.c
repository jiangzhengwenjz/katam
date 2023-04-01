#include "scroll_lock.h"
#include "kirby.h"
#include "functions.h"
#include "lava_wall.h"

const struct Unk_02021590 gUnk_08357C60[] = {
	{ 0x2D1, 2, 0 },
};

void* CreateScrollLock(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0xff6, 0, sub_0811D9AC);
    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x2018F40;
    obj->base.unk5C |= 0x20;
    obj->base.unkC |= 1;
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

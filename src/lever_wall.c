#include "functions.h"
#include "lever_wall.h"

static void LeverWallAction(struct Object2*);
static void LeverWallSetFunc(struct Object2*);
static void nullsub_115(struct Object2*);

void LeverWallAction(struct Object2* arg0) {
    bool16 r6 = FALSE;
    s16 x, y;
    u32 ret;
    struct Object2 *sb;
    switch (arg0->object->subtype1) {
    case 0:
        if (sub_080029BC(gCurLevelInfo[arg0->base.unk56].unk65E) == arg0->object->unkF) {
            r6 = TRUE;
        }
        break;
    case 1:
        if (sub_080029E4(gCurLevelInfo[arg0->base.unk56].unk65E) == arg0->object->unkF) {
            r6 = TRUE;
        }
        break;
    }
    if (r6) {
        sb = arg0;
        x = arg0->base.x >> 12;
        y = arg0->base.y >> 12;
        sub_08001408(arg0->base.unk56, sub_080025AC(arg0->base.unk56, x, y), 0, 0);
        sub_0800E0E4(arg0, x, y);
        PlaySfx(&arg0->base, 510);
        sub_0800E0E4(sb, x, y);
        arg0->unk78 = nullsub_115;
    }
}

struct Object2* CreateLeverWall(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x02018F40;
    obj->base.unkC |= 1;
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

static void LeverWallSetFunc(struct Object2* arg0) {
    arg0->unk78 = LeverWallAction;
}

static void nullsub_115(struct Object2* arg0) {}

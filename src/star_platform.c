#include "star_platform.h"
#include "kirby.h"
#include "functions.h"
#include "task.h"

void sub_08089864();

static void sub_0811FA90(struct StarPlatform *);
static void sub_0811FB54(struct StarPlatform *);
static void sub_0811FC4C(struct StarPlatform *);
static void sub_0811FC88(struct Task *);

void *CreateStarPlatform(struct Object *arg0, u8 arg1) {
    struct StarPlatform *plat;
    struct Object2 *obj;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct StarPlatform), 0x1000, TASK_USE_IWRAM, sub_0811FC88);
    plat = TaskGetStructPtr(task);
    obj = &plat->obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x210A940;
    obj->base.unk5C |= ~0x2000;
    obj->base.unkC |= 1;
    obj->base.unk68 &= ~7;
    obj->base.unk5C &= ~7;
    obj->unk83 = 0;
    plat->unkB4 = obj->object->unk1A + 8;
    plat->unkB6 = obj->object->unk1C;
    plat->unkB8 = plat->unkB4 + obj->object->unk1E - 0x10;
    plat->unkBA = plat->unkB6 + obj->object->unk20;
    sub_0803E2B0(&obj->base, (s8)plat->unkB4, (s8)plat->unkB6, (s8)plat->unkB8, (s8)plat->unkBA);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

static void sub_0811FA90(struct StarPlatform *plat) {
    u16 rect[4];
    u8 level = plat->obj2.base.unk56;
    u16 x, y, height;
    u16 i;
    rect[0] = (plat->obj2.base.x >> 8) + plat->obj2.object->unk1A;
    rect[1] = (plat->obj2.base.y >> 8) + plat->obj2.object->unk1C;
    rect[2] = rect[0] + plat->obj2.object->unk1E;
    rect[3] = rect[1] + plat->obj2.object->unk20;
    x = (s16)rect[0] >> 4;
    y = (s16)rect[1] >> 4;
    height = plat->obj2.object->unk20 >> 4;
    for (i = 0; i < height; i++) {
        sub_08001408(level, sub_080025AC(level, x, y + i), 0, 0);
        sub_08001408(level, sub_080025AC(level, x + 1, y + i), 0, 0);
    }
}

static void sub_0811FB54(struct StarPlatform *plat) {
    u8 level;
    s32 offset;
    const u32 *attrs;
    if (plat->obj2.base.flags & 0x40000
     && ((struct ObjectBase *)plat->obj2.base.unk6C)->unk68 & 0x2000) {
        level = plat->obj2.base.unk56;
        attrs = gUnk_082D88B8;
        if (attrs[sub_080023E4(level, plat->obj2.base.x >> 12, plat->obj2.base.y >> 12)] & 4) {
            sub_08001408(level, sub_080025AC(level, plat->obj2.base.x >> 12, plat->obj2.base.y >> 12), 0, 0);
            sub_08001408(level, sub_080025AC(level, (plat->obj2.base.x >> 12) - 1, plat->obj2.base.y >> 12), 0, 0);
            plat->obj2.base.flags &= ~0x40;
            plat->obj2.base.flags &= ~0x800;
            plat->obj2.base.flags |= 0x200;
            sub_0811FA90(plat);
            plat->obj2.unk78 = sub_0811FC4C;
            offset = (((struct ObjectBase *)plat->obj2.base.unk6C)->y - plat->obj2.base.y) >> 8;
            sub_08089864(&plat->obj2.base, 0, offset, 0);
            sub_08089864(&plat->obj2.base, 0, offset, 1);
        }
    }
    plat->obj2.base.counter++;
}

void sub_0811FC3C(struct Object2 *arg0) {
    arg0->base.counter = 0;
    arg0->unk78 = sub_0811FB54;
}

static void sub_0811FC4C(struct StarPlatform *plat) {
    if (plat->obj2.base.y >> 8 >= gCurLevelInfo[plat->obj2.base.unk56].roomHeight + 8) {
        plat->obj2.base.flags |= 0x1000;
    }
    plat->obj2.base.counter++;
}

static void sub_0811FC88(struct Task *task) {
    struct StarPlatform *plat = TaskGetStructPtr(task);
    u8 level = plat->obj2.base.unk56;
    u32 spawnX = plat->obj2.object->unk2;
    u8 spawnY = plat->obj2.object->unk3;
    u8 r4 = gCurLevelInfo[level].unk65E;
    ObjectDestroy(task);
    if (spawnX != 0 || level != 0xFF) {
        sub_08001678(spawnX, spawnY, r4, 1);
    }
}

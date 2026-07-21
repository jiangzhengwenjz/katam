#include "large_stone_block_7D.h"
#include "kirby.h"
#include "functions.h"

static void LargeStarStoneBlock7DFall(struct LargeStarStoneBlock7D *);

extern void sub_0811EC80(struct LargeStarStoneBlock7D *);

void *CreateLargeStarStoneBlock7D(struct Object *arg0, u8 arg1) {
    struct LargeStarStoneBlock7D *block, *block2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct LargeStarStoneBlock7D), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    block2 = TaskGetStructPtr(task);
    block = block2;
    InitObject(&block->obj2, arg0, arg1);
    block->obj2.base.flags |= 0x82C08000;
    block->obj2.base.unk68 &= ~7;
    block->obj2.base.unk5C &= ~7;
    block->obj2.base.unk5C |= 4;
    block->obj2.base.unk68 |= 0x800;
    block->obj2.base.unkC |= 1;
    if (block->obj2.object->unk22 & 1) {
        block->unkE1 = 5;
        block->obj2.unk83 = 1;
    }
    else {
        block->unkE1 = 4;
        block->obj2.unk83 = 0;
    }
    sub_0803E308(&block->obj2.base, -15, -16, 15, 16);
    sub_0803E2B0(&block->obj2.base, -15, -16, 15, 16);
    ObjectInitSprite(&block->obj2);
    gUnk_08351648[block->obj2.type].unk10(&block->obj2);
    return block;
}

void LargeStarStoneBlock7DSetFunc(struct LargeStarStoneBlock7D *arg0) {
    struct LargeStarStoneBlock7D *block = arg0;
    block->obj2.base.counter = 0;
    block->unkE2 = 0;
    block->unkE3 = 1;
    block->obj2.unk78 = LargeStarStoneBlock7DFall;
}

static void LargeStarStoneBlock7DFall(struct LargeStarStoneBlock7D *block) {
    sub_0811EC80(block);
    if (block->obj2.base.y >> 8 >= gCurLevelInfo[block->obj2.base.unk56].roomHeight - 0x10) {
        block->obj2.base.flags |= 0x1000;
    }
    block->obj2.base.counter++;
}

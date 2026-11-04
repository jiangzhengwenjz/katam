#include "destroyable_rock_block.h"
#include "functions.h"
#include "kirby.h"
#include "code_0806F780.h"

static void DestroyDestroyableRockBlock(struct Task*);
static void sub_0811C07C(struct RockBlock *);

const struct AnimInfo gUnk_08357C54[] = {
    { 0x2D1, 2, 0 },
};

void sub_0811BF24(struct RockBlock *block) {
    struct RockBlock *b = block;
    u16 currentRoom = gCurLevelInfo[b->base.base.unk56].currentRoom;
    u8 i;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == currentRoom) {
            s16 rect[4];
            s16 kirbyX, kirbyY;

            if (b->base.objTemplate->unk22 & 1) {
                rect[0] = (b->base.base.x >> 8) + b->base.objTemplate->unk1A;
                rect[1] = (b->base.base.y >> 8) + b->base.objTemplate->unk1C;
                rect[2] = rect[0] + b->base.objTemplate->unk1E;
                rect[3] = rect[1] + b->base.objTemplate->unk20;
            } else {
                rect[0] = (b->base.base.x >> 8) - 8;
                rect[1] = (b->base.base.y >> 8) - 24;
                rect[2] = (b->base.base.x >> 8) + 8;
                rect[3] = (b->base.base.y >> 8) - 8;
            }
            kirbyX = gKirbys[i].base.x >> 8;
            kirbyY = gKirbys[i].base.y >> 8;
            if (rect[0] <= kirbyX && rect[2] >= kirbyX
                && rect[1] <= kirbyY && rect[3] >= kirbyY
                && !(gKirbys[i].base.unkC & 0x8000)
                && !(gKirbys[i].base.flags & 0x20)
                && !(gKirbys[i].base.flags & 0x40)) {
                b->unkB6 |= 1;
                b->base.unk78 = sub_0811C07C;
            }
        }
    }
    ++b->base.base.counter;
}

static void sub_0811C07C(struct RockBlock *block)
{
    u8 unk56 = block->base.base.unk56;
    u32 tileX = (0x10u * block->base.base.x) >> 0x10;
    u32 tileY = (0x10u * block->base.base.y) >> 0x10;
    u16 unused[4];

    if ((s16)block->unkB4 == 0) {
        CreateEffectObject(&block->base.base, 0, 0x28D, 0);
        PlaySfx(&block->base.base, SE_BLOCK_BREAK);
        GetCollisionTile(unk56, tileX, tileY);
        sub_08001408(unk56, sub_080025AC(unk56, tileX, tileY), 0, 0);
        block->base.base.flags |= 0x1000;
    } else {
        --block->unkB4;
    }
}

void* CreateDestroyableRockBlock(struct ObjectTemplate* arg0, u8 arg1) {
    struct Task *task;
    struct RockBlock *obj;
    task = TaskCreate(ObjectMain, sizeof(struct RockBlock), 0x1000, TASK_USE_IWRAM, DestroyDestroyableRockBlock);
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
    unk2 = obj->base.objTemplate->unk2;
    unk3 = obj->base.objTemplate->unk3;
    r4 = gCurLevelInfo[unk56].unk65E;
    ObjectDestroy(arg0);
    if (unk2 != 0 || unk56 != 0xff) {
        sub_08001678(unk2, unk3, r4, 1);
    }
}

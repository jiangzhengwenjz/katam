#include "large_star_stone_block_88.h"
#include "code_0806F780.h"
#include "kirby.h"

static void sub_08121324(struct LargeStarStoneBlock *);
static void sub_081214B8(u8, u8, u8);
static void sub_081214F4(struct Task *);

const struct AnimInfo gUnk_08357E54[] = {
    { 0x2A2, 2, 0 },
    { 0x2A2, 2, 0 },
};

void *CreateLargeStarStoneBlock88(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct LargeStarStoneBlock), 0x1000, TASK_USE_IWRAM, sub_081214F4);
    struct LargeStarStoneBlock *tmp = TaskGetStructPtr(t), *block = tmp;

    InitObject(&block->block.obj, template, a2);
    block->block.obj.base.flags |= 0x82408040;
    block->block.obj.base.unk68 &= ~7;
    block->block.obj.base.unk5C &= ~7;
    block->block.obj.base.unk5C |= 4;
    block->block.obj.base.unk68 |= 0x800;
    block->block.obj.base.unkC |= 1;
    if (block->block.obj.objTemplate->unk22 & 1) {
        block->block.unkE1 = 5;
        block->block.obj.unk83 = 1;
    } else {
        block->block.unkE1 = 4;
        block->block.obj.unk83 = 0;
    }
    ObjectSetBounds(&block->block.obj.base, -16, -16, 16, 16);
    sub_0803E2B0(&block->block.obj.base, -16, -16, 16, 16);
    ObjectInitSprite(&block->block.obj);
    gUnk_08351648[block->block.obj.type].unk10(&block->block.obj);
    return block;
}

static void sub_08121194(struct LargeStarStoneBlock *arg0)
{
    struct LargeStarStoneBlock *tmp = arg0, *block = tmp;
    s32 x;

    sub_0811EC80(&block->block);
    x = block->block.obj.objTemplate->x * 0x100;
    if (block->unkE8 <= block->block.obj.base.x >> 12) {
        if (block->block.obj.base.xspeed < 0) {
            block->block.obj.base.xspeed += 0x200;
            if (block->block.obj.base.xspeed > 0)
                block->block.obj.base.xspeed = 0;
        } else {
            block->block.obj.base.xspeed -= 0x200;
            if (block->block.obj.base.xspeed < 0)
                block->block.obj.base.xspeed = 0;
        }
        *GetStateSlot(STATE_SLOT_ROOM, block->block.obj.objTemplate->unk4, gCurLevelInfo[block->block.obj.base.unk56].unk65E) = 0;
        sub_081214B8(block->block.obj.base.unk56, (block->block.obj.base.x >> 12) - 1, (block->block.obj.base.y >> 12) - 1);
        sub_081214B8(block->block.obj.base.unk56, block->block.obj.base.x >> 12, (block->block.obj.base.y >> 12) - 1);
        sub_081214B8(block->block.obj.base.unk56, (block->block.obj.base.x >> 12) - 1, block->block.obj.base.y >> 12);
        sub_081214B8(block->block.obj.base.unk56, block->block.obj.base.x >> 12, block->block.obj.base.y >> 12);
        sub_081214B8(block->block.obj.base.unk56, (block->block.obj.base.x >> 12) - 1, (block->block.obj.base.y >> 12) + 1);
        sub_081214B8(block->block.obj.base.unk56, block->block.obj.base.x >> 12, (block->block.obj.base.y >> 12) + 1);
        tmp->unkE8 = (block->block.obj.base.y >> 12) + 7;
        tmp->unkE7 = (block->block.obj.base.y >> 12) + 2;
        block->block.obj.base.flags &= ~0x40;
        block->block.obj.base.flags |= 0x100;
        block->block.obj.unk78 = sub_08121324;
    } else if (x > block->block.obj.base.x) {
        if (block->block.obj.base.xspeed < 0) {
            block->block.obj.base.xspeed += 0x200;
            if (block->block.obj.base.xspeed > 0)
                block->block.obj.base.xspeed = 0;
        } else {
            block->block.obj.base.xspeed -= 0x200;
            if (block->block.obj.base.xspeed < 0)
                block->block.obj.base.xspeed = 0;
        }
        block->block.obj.base.x = x;
    }
    block->block.obj.base.counter++;
}

static void sub_08121324(struct LargeStarStoneBlock *block)
{
    struct Object *obj = &block->block.obj;

    if (block->unkE8 >= obj->base.y >> 12 && block->unkE7 == obj->base.y >> 12) {
        LargeStarStoneBlockRestoreTile(obj->base.unk56, (obj->base.x >> 12) - 1, obj->base.y >> 12);
        LargeStarStoneBlockRestoreTile(obj->base.unk56, obj->base.x >> 12, obj->base.y >> 12);
        block->unkE7++;
    }
    if (block->unkE4 & 1)
        block->unkE4 |= 4;
    else
        block->unkE4 &= ~4;
    if (obj->base.y >> 8 > 0x70) {
        obj->base.sprite.unk8 &= ~0x3000;
        obj->base.sprite.unk8 |= 0x3000;
        block->unkE4 |= 1;
    }
    if (!(block->unkE4 & 4) && block->unkE4 & 1)
        block->unkE4 |= 2;
    else
        block->unkE4 &= ~2;
    if (block->unkE4 & 2) {
        sub_08089864(&obj->base, -16, 5, 0);
        sub_08089864(&obj->base, -16, 5, 1);
    }
    if (obj->base.y >> 8 >= gCurLevelInfo[obj->base.unk56].roomHeight + 16)
        obj->base.flags |= 0x1000;
    obj->base.counter++;
}

void sub_08121480(struct LargeStarStoneBlock *block)
{
    block->block.obj.base.counter = 0;
    block->block.unkE2 = 0;
    block->block.unkE3 = 0;
    block->unkE6 = 0;
    block->unkE7 = 0;
    block->unkE8 = (block->block.obj.base.x >> 12) + 2;
    block->unkE4 = 0;
    block->block.obj.unk78 = sub_08121194;
}

static void sub_081214B8(u8 unk56, u8 x, u8 y)
{
    GetCollisionTile(unk56, x, y);
    sub_08001408(unk56, sub_080025AC(unk56, x, y), NULL, NULL);
}

static void sub_081214F4(struct Task *t)
{
    struct LargeStarStoneBlock *block = TaskGetStructPtr(t);
    u8 unk56 = block->block.obj.base.unk56;
    u32 unk2 = block->block.obj.objTemplate->unk2;
    u8 unk3 = block->block.obj.objTemplate->unk3;
    // TODO: Original UB: gCurLevelInfo is read out of bounds when unk56 is 0xFF.
    u8 unk65E = gCurLevelInfo[unk56].unk65E;

    ObjectDestroy(t);
    if (unk2 != 0 || unk56 != 0xFF)
        sub_08001678(unk2, unk3, unk65E, 1);
}

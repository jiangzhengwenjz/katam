#include "star_stone_block.h"
#include "code_0806F780.h"
#include "functions.h"
#include "kirby.h"

static void sub_0811F034(struct Task *);
static void sub_0811F0E8(struct StarStoneBlock *);

const struct AnimInfo gUnk_08357CC8[] = {
    { 0x2A2, 0, 0 },
    { 0x2A2, 1, 0 },
};

void *CreateStarStoneBlock(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct StarStoneBlock), 0x1000, TASK_USE_IWRAM, sub_0811F034);
    struct StarStoneBlock *tmp = TaskGetStructPtr(t), *block = tmp;

    InitObject(&block->obj, template, a2);
    block->obj.base.flags |= 0x82C08000;
    block->obj.base.unk68 &= ~7;
    block->obj.base.unk5C &= ~7;
    block->obj.base.unk5C |= 4;
    block->obj.base.unk68 |= 0x800;
    block->obj.base.unkC |= 1;
    if (block->obj.objTemplate->unk22 & 1) {
        block->unkE1 = 3;
        block->obj.unk83 = 1;
    } else {
        block->unkE1 = 2;
        block->obj.unk83 = 0;
    }
    ObjectSetBounds(&block->obj.base, -7, -8, 7, 8);
    sub_0803E2B0(&block->obj.base, -7, -8, 7, 8);
    ObjectInitSprite(&block->obj);
    gUnk_08351648[block->obj.type].unk10(&block->obj);
    return block;
}

static void sub_0811EA60(struct StarStoneBlock *block, u32 playerId)
{
    s32 kirbyRect[4], blockRect[4];
    u8 contact;

    if (gKirbys[playerId].base.roomId != block->obj.base.roomId)
        return;
    kirbyRect[0] = (gKirbys[playerId].base.x >> 8) + gKirbys[playerId].base.unk3C;
    kirbyRect[1] = (gKirbys[playerId].base.y >> 8) + gKirbys[playerId].base.unk3D;
    kirbyRect[2] = (gKirbys[playerId].base.x >> 8) + gKirbys[playerId].base.unk3E;
    kirbyRect[3] = (gKirbys[playerId].base.y >> 8) + gKirbys[playerId].base.unk3F;
    blockRect[0] = (block->obj.base.x >> 8) + block->obj.base.unk3C - 4;
    blockRect[1] = (block->obj.base.y >> 8) + block->obj.base.unk3D;
    blockRect[2] = (block->obj.base.x >> 8) + block->obj.base.unk3E + 4;
    blockRect[3] = (block->obj.base.y >> 8) + block->obj.base.unk3F;
    contact = (block->obj.unk90 & (3 << (playerId * 2))) >> (playerId * 2);
    if (contact & 3) {
        if (gKirbys[playerId].base.unk74 == &block->obj.base)
            return;
        if (gKirbys[playerId].base.x >> 8 > block->obj.base.x >> 8) {
            block->unkE0--;
            if (contact & 2)
                block->unkE0--;
            if (((kirbyRect[0] <= blockRect[0] && kirbyRect[2] >= blockRect[0])
                    || (kirbyRect[0] >= blockRect[0] && blockRect[2] >= kirbyRect[0]))
                && ((kirbyRect[1] <= blockRect[1] && kirbyRect[3] >= blockRect[1])
                    || (kirbyRect[1] >= blockRect[1] && blockRect[3] >= kirbyRect[1])))
                block->unkE3 |= 0x10;
        } else {
            block->unkE0++;
            if (contact & 2)
                block->unkE0++;
            if (((kirbyRect[0] <= blockRect[0] && kirbyRect[2] >= blockRect[0])
                    || (kirbyRect[0] >= blockRect[0] && blockRect[2] >= kirbyRect[0]))
                && ((kirbyRect[1] <= blockRect[1] && kirbyRect[3] >= blockRect[1])
                    || (kirbyRect[1] >= blockRect[1] && blockRect[3] >= kirbyRect[1])))
                block->unkE3 |= 0x20;
        }
    } else if (sub_08070504(&block->obj.base) && gKirbys[playerId].base.unk74 != &block->obj.base) {
        if (block->obj.objTemplate->unk22 & 2) {
            if (((kirbyRect[0] <= blockRect[0] && kirbyRect[2] >= blockRect[0])
                    || (kirbyRect[0] >= blockRect[0] && blockRect[2] >= kirbyRect[0]))
                && ((kirbyRect[1] <= blockRect[1] && kirbyRect[3] >= blockRect[1])
                    || (kirbyRect[1] >= blockRect[1] && blockRect[3] >= kirbyRect[1])))
                block->unkE3 |= 0x20;
        } else {
            if (((kirbyRect[0] <= blockRect[0] && kirbyRect[2] >= blockRect[0])
                    || (kirbyRect[0] >= blockRect[0] && blockRect[2] >= kirbyRect[0]))
                && ((kirbyRect[1] <= blockRect[1] && kirbyRect[3] >= blockRect[1])
                    || (kirbyRect[1] >= blockRect[1] && blockRect[3] >= kirbyRect[1])))
                block->unkE3 |= 0x10;
        }
    }
}

void sub_0811EC80(struct StarStoneBlock *block)
{
    struct Object *obj = &block->obj;
    s8 push;

    Macro_080A4728(obj);
    block->unkE0 = 0;
    block->unkE3 &= ~0x30;
    sub_0811EA60(block, 0);
    sub_0811EA60(block, 1);
    sub_0811EA60(block, 2);
    sub_0811EA60(block, 3);
    if (obj->base.unk62 & 1)
        block->unkE3 |= 0x10;
    if (obj->base.unk62 & 2)
        block->unkE3 |= 0x20;
    push = abs(block->unkE0);
    if (obj->base.xspeed < 0) {
        obj->base.xspeed += 0x200;
        if (obj->base.xspeed > 0)
            obj->base.xspeed = 0;
    } else {
        obj->base.xspeed -= 0x200;
        if (obj->base.xspeed < 0)
            obj->base.xspeed = 0;
    }
    if (push == 0) {
        if (sub_08070504(&obj->base)) {
            block->unkE3 &= ~8;
            if (!(block->unkE3 & 4))
                block->unkE3 |= 8;
            block->unkE3 |= 4;
            if (obj->objTemplate->unk22 & 2) {
                if (block->unkE3 & 8) {
                    if (!(block->unkE3 & 0x20)) {
                        if (obj->base.flags & 1) {
                            obj->base.xspeed += 0x200;
                            if (obj->base.xspeed < -0x200)
                                obj->base.xspeed = -0x200;
                            else if (obj->base.xspeed > 0x200)
                                obj->base.xspeed = 0x200;
                        } else {
                            obj->base.xspeed -= 0x200;
                            if (obj->base.xspeed > 0x200)
                                obj->base.xspeed = 0x200;
                            else if (obj->base.xspeed < -0x200)
                                obj->base.xspeed = -0x200;
                        }
                        if (block->unkE3 & 1)
                            sub_08089864(&obj->base, 0, 12, 1);
                        else
                            sub_08089864(&obj->base, 0, 4, 1);
                    }
                }
            } else {
                if (block->unkE3 & 8) {
                    if (!(block->unkE3 & 0x10)) {
                        if (obj->base.flags & 1) {
                            obj->base.xspeed -= 0x200;
                            if (obj->base.xspeed < -0x200)
                                obj->base.xspeed = -0x200;
                            else if (obj->base.xspeed > 0x200)
                                obj->base.xspeed = 0x200;
                        } else {
                            obj->base.xspeed += 0x200;
                            if (obj->base.xspeed > 0x200)
                                obj->base.xspeed = 0x200;
                            else if (obj->base.xspeed < -0x200)
                                obj->base.xspeed = -0x200;
                        }
                        if (block->unkE3 & 1)
                            sub_08089864(&obj->base, 0, 12, 0);
                        else
                            sub_08089864(&obj->base, 0, 4, 0);
                    }
                }
            }
        } else {
            if (obj->base.xspeed < 0) {
                obj->base.xspeed += 0x200;
                if (obj->base.xspeed > 0)
                    obj->base.xspeed = 0;
            } else {
                obj->base.xspeed -= 0x200;
                if (obj->base.xspeed < 0)
                    obj->base.xspeed = 0;
            }
            block->unkE3 &= ~4;
        }
    } else if (push >= block->unkE1) {
        if (block->unkE3 & 0x30) {
            if (block->unkE3 & 0x20) {
                if (!(block->unkE3 & 0x10) && block->unkE0 < 0) {
                    if (obj->base.flags & 1) {
                        obj->base.xspeed -= 0x40;
                        if (obj->base.xspeed < -0x40)
                            obj->base.xspeed = -0x40;
                        else if (obj->base.xspeed > 0x40)
                            obj->base.xspeed = 0x40;
                    } else {
                        obj->base.xspeed += 0x40;
                        if (obj->base.xspeed > 0x40)
                            obj->base.xspeed = 0x40;
                        else if (obj->base.xspeed < -0x40)
                            obj->base.xspeed = -0x40;
                    }
                }
            } else if (block->unkE3 & 0x10 && block->unkE0 > 0) {
                if (obj->base.flags & 1) {
                    obj->base.xspeed += 0x40;
                    if (obj->base.xspeed < -0x40)
                        obj->base.xspeed = -0x40;
                    else if (obj->base.xspeed > 0x40)
                        obj->base.xspeed = 0x40;
                } else {
                    obj->base.xspeed -= 0x40;
                    if (obj->base.xspeed > 0x40)
                        obj->base.xspeed = 0x40;
                    else if (obj->base.xspeed < -0x40)
                        obj->base.xspeed = -0x40;
                }
            }
        } else if (block->unkE0 > 0) {
            if (obj->base.flags & 1) {
                obj->base.xspeed += 0x40;
                if (obj->base.xspeed < -0x40)
                    obj->base.xspeed = -0x40;
                else if (obj->base.xspeed > 0x40)
                    obj->base.xspeed = 0x40;
            } else {
                obj->base.xspeed -= 0x40;
                if (obj->base.xspeed > 0x40)
                    obj->base.xspeed = 0x40;
                else if (obj->base.xspeed < -0x40)
                    obj->base.xspeed = -0x40;
            }
        } else {
            if (obj->base.flags & 1) {
                obj->base.xspeed -= 0x40;
                if (obj->base.xspeed < -0x40)
                    obj->base.xspeed = -0x40;
                else if (obj->base.xspeed > 0x40)
                    obj->base.xspeed = 0x40;
            } else {
                obj->base.xspeed += 0x40;
                if (obj->base.xspeed > 0x40)
                    obj->base.xspeed = 0x40;
                else if (obj->base.xspeed < -0x40)
                    obj->base.xspeed = -0x40;
            }
        }
    }
    if (obj->base.flags & 0x20) {
        if (block->unkE2) {
            if (!(obj->objTemplate->unk22 & 4)) {
                obj->base.flags |= 0x100;
                block->unkE3 |= 2;
                block->unkE3 |= 0x40;
            }
        } else {
            block->unkE2 = 1;
        }
    }
}

static void sub_0811F034(struct Task *t)
{
    struct StarStoneBlock *block = TaskGetStructPtr(t);
    u8 unkE3 = block->unkE3;
    u8 unk56 = block->obj.base.unk56;
    u32 unk2 = block->obj.objTemplate->unk2;
    u8 unk3 = block->obj.objTemplate->unk3;
    u8 unk65E;

    // TODO: Original UB: unk65E is read uninitialized when unk56 is 0xFF and unk2 is nonzero.
    if (unk56 != 0xFF)
        unk65E = gCurLevelInfo[unk56].unk65E;
    ObjectDestroy(t);
    if (unk2 != 0 || unk56 != 0xFF) {
        if (unkE3 & 0x40)
            sub_08001678(unk2, unk3, unk65E, 1);
        else
            sub_08001678(unk2, unk3, unk65E, 0);
    }
}

void sub_0811F0CC(struct StarStoneBlock *block)
{
    block->obj.base.counter = 0;
    block->unkE2 = 0;
    block->unkE3 = 0;
    block->obj.unk78 = sub_0811F0E8;
}

static void sub_0811F0E8(struct StarStoneBlock *block)
{
    sub_0811EC80(block);
    if (block->obj.base.y >> 8 >= gCurLevelInfo[block->obj.base.unk56].roomHeight - 8)
        block->obj.base.flags |= 0x1000;
    block->obj.base.counter++;
}

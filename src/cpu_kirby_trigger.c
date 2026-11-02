#include "cpu_kirby_trigger.h"
#include "functions.h"
#include "kirby.h"

static void sub_081209D8(struct Task *);

const struct AnimInfo gUnk_08357D18[] = {
    { 0x2D1, 2, 0 },
};

static void sub_08120670(struct Object *obj)
{
    s16 rect[4];
    u16 room = gCurLevelInfo[obj->base.unk56].currentRoom;
    struct ObjectBase **list = GetRoomObjectCollisionList(&obj->base);

    rect[0] = (obj->base.x >> 8) + obj->objTemplate->unk1A;
    rect[1] = (obj->base.y >> 8) + obj->objTemplate->unk1C;
    rect[2] = rect[0] + obj->objTemplate->unk1E;
    rect[3] = rect[1] + obj->objTemplate->unk20;
    for (; *list; list++) {
        struct Object *block = (struct Object *)*list;

        if (room == gCurLevelInfo[block->base.unk56].currentRoom
            && (block->type == OBJ_STAR_STONE_BLOCK || block->type == OBJ_LARGE_STAR_STONE_BLOCK_7D)) {
            s16 x = block->base.x >> 8;
            s16 y = block->base.y >> 8;

            if (rect[0] <= x && rect[2] >= x && rect[1] <= y && rect[3] >= y) {
                u32 *slot = GetStateSlot(STATE_SLOT_ROOM, 0xF, gCurLevelInfo[obj->base.unk56].unk65E);

                if (*slot < obj->objTemplate->unk11)
                    *slot = obj->objTemplate->unk11;
                obj->base.flags |= 0x1000;
            }
        }
    }
    obj->base.counter++;
}

static void sub_08120788(struct Object *obj)
{
    s16 rect[4];
    u16 room;
    u8 i;
    s32 min; // TODO(match): min shouldn't be needed, but without it the rect bounds and the Kirby position swap registers

    rect[0] = (obj->base.x >> 8) + obj->objTemplate->unk1A;
    rect[1] = (obj->base.y >> 8) + obj->objTemplate->unk1C;
    rect[2] = rect[0] + obj->objTemplate->unk1E;
    rect[3] = rect[1] + obj->objTemplate->unk20;
    room = gCurLevelInfo[obj->base.unk56].currentRoom;
    for (i = 0; i < gNumKirbys; i++) {
        if (room == gCurLevelInfo[i].currentRoom
            && (obj->objTemplate->unk22 & 2 || i >= gNumHumanPlayers)
            && (obj->objTemplate->unk22 & 4 || i < gNumHumanPlayers)
            && (min = rect[0]) <= gKirbys[i].base.x >> 8 && rect[2] >= gKirbys[i].base.x >> 8
            && (min = rect[1]) <= gKirbys[i].base.y >> 8 && rect[3] >= gKirbys[i].base.y >> 8
            && !(gKirbys[i].base.unkC & 0x8000)) {
            u32 *slot = GetStateSlot(STATE_SLOT_ROOM, 0xF, gCurLevelInfo[obj->base.unk56].unk65E);

            if (*slot < obj->objTemplate->unk11)
                *slot = obj->objTemplate->unk11;
            obj->base.flags |= 0x1000;
        }
    }
    obj->base.counter++;
}

void *CreateCPUKirbyTrigger(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1001, TASK_USE_IWRAM, sub_081209D8);
    struct Object *obj = TaskGetStructPtr(t);

    InitObject(obj, template, a2);
    obj->base.flags |= 0x2018F40;
    obj->base.unk5C |= 0x20;
    obj->base.unkC |= 1;
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

void sub_0812098C(struct Object *obj)
{
    obj->base.counter = 0;
    obj->base.x -= 0x800;
    obj->base.y -= 0x800;
    obj->base.unk48 = obj->base.x;
    obj->base.unk4C = obj->base.y;
    if (!(obj->objTemplate->unk22 & 1) && obj->objTemplate->unk22 & 6)
        obj->unk78 = sub_08120788;
    else
        obj->unk78 = sub_08120670;
}

static void sub_081209D8(struct Task *t)
{
    struct Object *obj = TaskGetStructPtr(t);
    u8 unk56 = obj->base.unk56;
    u32 unk2 = obj->objTemplate->unk2;
    u8 unk3 = obj->objTemplate->unk3;
    // TODO: Original UB: gCurLevelInfo is read out of bounds when unk56 is 0xFF.
    u8 unk65E = gCurLevelInfo[unk56].unk65E;

    ObjectDestroy(t);
    if (unk2 != 0 || unk56 != 0xFF)
        sub_08001678(unk2, unk3, unk65E, 1);
}

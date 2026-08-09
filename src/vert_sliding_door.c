#include "vert_sliding_door.h"
#include "kirby.h"
#include "functions.h"
#include "task.h"
#include "constants/songs.h"

static void VertSlidingDoorIdle(struct VertSlidingDoor *);
static void VertSlidingDoorOpen(struct VertSlidingDoor *);
static void VertSlidingDoorClose(struct VertSlidingDoor *);

void *CreateVertSlidingDoor(struct ObjectTemplate *arg0, u8 arg1) {
    struct VertSlidingDoor *door;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct VertSlidingDoor), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    door = TaskGetStructPtr(task);
    InitObject(&door->obj2, arg0, arg1);
    door->obj2.base.flags |= 0x02408940;
    door->obj2.base.unk5C |= 0x20;
    door->obj2.base.unkC |= 1;
    door->obj2.base.unk68 &= ~7;
    door->obj2.base.unk5C &= ~7;
    ObjectSetBounds(&door->obj2.base, -8, -0x20, 8, 0);
    sub_0803E2B0(&door->obj2.base, -8, -0x20, 8, 0);
    ObjectInitSprite(&door->obj2);
    gUnk_08351648[door->obj2.type].unk10(&door->obj2);
    return door;
}

static void VertSlidingDoorIdle(struct VertSlidingDoor *door) {
    u32 open;

    door->obj2.base.counter = 0;
    open = *GetStateSlot(STATE_SLOT_ROOM, door->obj2.objTemplate->unk4, gCurLevelInfo[door->obj2.base.unk56].unk65E);
    if (!(door->unkB4 & 1)) {
        if (open) {
            if (!(door->unkB4 & 2)) {
                door->obj2.unk78 = VertSlidingDoorOpen;
                door->obj2.unk83 = 1;
                door->unkB7 = 0;
                door->unkB4 |= 1;
                PlaySfx(&door->obj2.base, SE_VERT_SLIDING_DOOR_OPEN_CLOSE);
            }
        } else if (door->unkB4 & 2) {
            door->obj2.unk78 = VertSlidingDoorClose;
            door->obj2.unk83 = 2;
            door->unkB4 |= 1;
            PlaySfx(&door->obj2.base, SE_VERT_SLIDING_DOOR_OPEN_CLOSE);
        }
    }
    Macro_080A4728(&door->obj2);
}

static void VertSlidingDoorOpen(struct VertSlidingDoor *door) {
    struct Object *obj = &door->obj2;

    if (door->unkB6 > 6) {
        door->unkB6 = 0;
        if (door->unkB7 <= 7) {
            door->unkB7++;
            ObjectSetBounds(&obj->base, -8, -0x20, 8, -(door->unkB7 * 4));
            sub_0803E2B0(&obj->base, -8, -0x20, 8, -(door->unkB7 * 4));
        }
    }
    door->unkB6++;
    if (obj->base.flags & 2) {
        door->unkB7 = 7;
        ObjectSetBounds(&obj->base, -8, -0x20, 8, -0x1C);
        sub_0803E2B0(&obj->base, -8, -0x20, 8, -(door->unkB7 * 4));
        obj->unk78 = VertSlidingDoorIdle;
        door->unkB4 &= ~1;
        door->unkB4 |= 2;
    }
    Macro_080A4728(obj);
}

static void VertSlidingDoorClose(struct VertSlidingDoor *door) {
    struct Object *obj = &door->obj2;

    if (door->unkB6 > 6) {
        door->unkB6 = 0;
        if (door->unkB7 >= 0) {
            door->unkB7--;
            ObjectSetBounds(&obj->base, -8, -0x20, 8, -(door->unkB7 * 4));
            sub_0803E2B0(&obj->base, -8, -0x20, 8, -(door->unkB7 * 4));
        }
    }
    door->unkB6++;
    if (obj->base.flags & 2) {
        door->unkB7 = 0;
        ObjectSetBounds(&obj->base, -8, -0x20, 8, 0);
        sub_0803E2B0(&obj->base, -8, -0x20, 8, 0);
        obj->unk78 = VertSlidingDoorIdle;
        door->unkB4 &= ~1;
        door->unkB4 &= ~2;
    }
    Macro_080A4728(obj);
}

void VertSlidingDoorSetFunc(struct VertSlidingDoor *door) {
    door->obj2.base.counter = 0;
    door->obj2.unk78 = VertSlidingDoorIdle;
    door->unkB4 = 0;
    door->unkB6 = 0;
    door->unkB7 = 0;
}

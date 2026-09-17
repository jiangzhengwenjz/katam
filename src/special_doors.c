#include "special_doors.h"
#include "constants/kirby.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "shard.h"
#include "code_0806F780.h"

static void sub_0802AC5C(struct DoorToHub *);
static void sub_0802AD00(struct DoorToHub *);
static void sub_0802B088(struct DoorToHub *);
static void sub_0802B0D0(struct DoorToHub *);
static void sub_0802B0DC(struct DoorToHub *);
static void sub_0802B0FC(struct DoorToHub *);
static void sub_0802B134(struct DoorToHub *);
static void sub_0802B150(struct DoorToHub *);
static void sub_0802B170(struct DoorToHub *);
static void sub_0802B190(struct DoorToHub *);

static void sub_0802B2F4(struct AreaDoor *);
static void sub_0802B43C(struct AreaDoor *);
static void sub_0802B450(struct AreaDoor *);

static const struct AnimInfo gUnk_082EB444[] = {
    { 0x2C5, 0, 0 },
    { 0x2C5, 1, 0 },
    { 0x2C5, 2, 0 },
    { 0x2C5, 3, 0 },
};

const struct AnimInfo gUnk_082EB454[] = {
    { 0x2C6,    0, 0 },
    { 0x2C6,    1, 0 },
    { 0x2C6,    2, 0 },
    { 0x2C6,    3, 0 },
    { 0x2C6,    4, 0 },
    { 0x2C6,    5, 0 },
    { 0x2C6,    6, 0 },
    { 0x2C6,    7, 0 },
    { 0x2C6,    8, 0 },
    { 0x2C6,    9, 0 },
    { 0x2C6,  0xA, 0 },
    { 0x2C6,  0xB, 0 },
    { 0x2C6,  0xC, 0 },
    { 0x2C6,  0xD, 0 },
    { 0x2C6,  0xE, 0 },
    { 0x2C6,  0xF, 0 },
    { 0x2C6, 0x10, 0 },
    { 0x2C6, 0x11, 0 },
};

const struct AnimInfo gUnk_082EB49C[] = {
    { 0x2D0, 0, 0 },
};

void *CreateDoorToHub(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct DoorToHub), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct DoorToHub *tmp = TaskGetStructPtr(t), *door = tmp;

    InitObject(&door->obj, template, a2);
    door->effectObjects[0] = NULL;
    door->effectObjects[1] = NULL;
    door->obj.base.flags |= 0x340;
    door->obj.base.unkC |= 1;
    sub_0803E2B0(&door->obj.base, -8, -0x10, 8, 0);
    ObjectSetBounds(&door->obj.base, -8, -0x10, 8, 0);
    door->obj.unk83 = template->subtype1;
    ObjectInitSprite(&door->obj);
    door->obj.base.sprite.unk14 = 0x7C0;
    if (template->unk22 & 1)
    {
        door->obj.base.flags |= 0x400;
        door->obj.unk78 = sub_0802B0DC;
    }
    else if (gCollisionAttributes[GetCollisionTile(a2, door->obj.base.x >> 12, (door->obj.base.y - 0x800) >> 12)] & 0x4000)
    {
        door->obj.base.flags &= ~0x400;
        door->effectObjects[0] = sub_0808B62C(&door->obj.base, 8,
                                     gUnk_082EB444[0].animId,
                                     gUnk_082EB444[0].variant, 0);
        door->effectObjects[0]->sprite.unk14 = 0x7C0;
        sub_0802AC5C(door);
        door->obj.unk78 = sub_0802B0D0;
    }
    else
    {
        door->obj.base.flags |= 0x400;
        door->obj.unk78 = sub_0802AD00;
    }
    return door;
}

static void sub_0802AC5C(struct DoorToHub *door)
{
    struct Unk_0888562C_3 *var = sub_080025AC(door->obj.base.unk56, door->obj.base.x >> 12, (door->obj.base.y - 0xFFF) >> 12).pat3;

    if (!sub_08002BA8(door->obj.base.roomId, var->unk08, var->unk0A, var->unk0B))
    {
        if (!door->effectObjects[1])
        {
            door->effectObjects[1] = sub_0808B62C(&door->obj.base, 0, 0x2CF, 0, 0);
            door->effectObjects[1]->flags |= 1;
            door->effectObjects[1]->x = door->obj.base.x;
            door->effectObjects[1]->y = door->obj.base.y - 0x2800;
            door->effectObjects[1]->sprite.unk14 = 0x780;
        }
    }
    else
    {
        if (door->effectObjects[1])
        {
            door->effectObjects[1]->flags |= 0x1000;
            door->effectObjects[1] = NULL;
        }
    }
}

static void sub_0802AD00(struct DoorToHub *door)
{
    if (*GetStateSlot(STATE_SLOT_WORLD, door->obj.objTemplate->unk4, gCurLevelInfo[door->obj.base.unk56].unk65E))
    {
        u8 playerId = door->obj.base.unk56;
        union LevelInfo_1E0 var = sub_080025AC(playerId, door->obj.base.x >> 12, (door->obj.base.y - 0x800) >> 12);

        sub_08001408(playerId, var, NULL, NULL);
        door->obj.base.flags &= ~0x400;
        door->effectObjects[0] = sub_0808B62C(&door->obj.base, 8,
                                     gUnk_082EB444[0].animId,
                                     gUnk_082EB444[0].variant, 0);
        door->effectObjects[0]->sprite.unk14 = 0x7C0;
        sub_0802AC5C(door);
        door->obj.unk78 = sub_0802B0D0;
        sub_0802B0D0(door);
    }
}

static void sub_0802ADAC(struct DoorToHub *door)
{
    if (!(gCollisionAttributes[GetCollisionTile(door->obj.base.unk56, door->obj.base.x >> 12, (door->obj.base.y >> 12) - 1)] & 0x200))
    {
        door->obj.base.flags &= ~0x400;
        door->effectObjects[0] = sub_0808B62C(&door->obj.base, 8,
                                     gUnk_082EB444[1].animId,
                                     gUnk_082EB444[1].variant, 0);
        door->effectObjects[0]->sprite.unk14 = 0x7C0;
        door->effectObjects[0]->flags |= 0x8000;
        door->effectObjects[1] = sub_0808B62C(&door->obj.base, 0, 0x294, 0xA, 0);
        door->effectObjects[1]->x = door->obj.base.x;
        door->effectObjects[1]->y = door->obj.base.y - 0x800;
        door->effectObjects[1]->sprite.unk14 = 0x780;
        door->obj.unk78 = sub_0802B0FC;
    }
}

static void sub_0802AE58(struct DoorToHub *door)
{
    door->effectObjects[0]->sprite.animId = gUnk_082EB444[3].animId;
    door->effectObjects[0]->sprite.variant = gUnk_082EB444[3].variant;
    door->effectObjects[0]->sprite.unk1B = 0xFF;
    door->effectObjects[0]->flags &= ~2;
    door->effectObjects[0]->unk4 = 1;
    door->obj.unk78 = sub_0802B150;
}

// force generating the offset of currentRoom
static inline u16 GetLevelCurrentRoom(u32 level) {
    return gCurLevelInfo[level].currentRoom;
}

static void sub_0802AE9C(struct DoorToHub *door)
{
    u16 i, j;

    if (!sub_0801BA18(&door->obj.base, FALSE))
        door->obj.unk78 = sub_0802B088;
    else
    {
        struct LevelInfo *li = &gCurLevelInfo[door->obj.base.unk56];
        s32 var[2] = { door->obj.base.x + door->obj.base.unk3C * 0x100, door->obj.base.y + door->obj.base.unk3D * 0x100 };
        s32 sp[2] = { (door->obj.base.unk3E - door->obj.base.unk3C) * 0x100, (door->obj.base.unk3F - door->obj.base.unk3D) * 0x100 };
        bool32 r8;

        // fix regswap
        if (li)
            r8 = FALSE;
        else
            r8 = FALSE;
        r8 = FALSE;
        for (j = 0; j < gNumHumanPlayers; ++j)
        {
            struct Kirby *kirby = gKirbys + j;

            if (li->currentRoom == gCurLevelInfo[j].currentRoom
                && kirby->movementState & 0x40
                && kirby->base.unkC & 0x1000
                && var[0] <= kirby->base.x && var[0] + sp[0] >= kirby->base.x
                && var[1] <= kirby->base.y && var[1] + sp[1] >= kirby->base.y)
            {
                r8 = TRUE;
                break;
            }
#ifndef NONMATCHING
            asm(""::"r"(r8)); // somehow use r8
#endif
        }
        if (r8 && sub_080395D4())
        {
            struct LevelInfo *li = &gCurLevelInfo[door->obj.base.unk56];

            for (i = 0; i < gNumHumanPlayers; ++i)
            {
                struct Kirby *kirby = gKirbys + i;

                if (kirby->hp <= 0) return;
                if (li->currentRoom != GetLevelCurrentRoom(i)) return;
            }
            for (j = 0; j < gNumHumanPlayers; ++j)
            {
                gKirbys[j].base.unkC |= 0x800000;
                sub_0805BDF4(&gKirbys[j], gUnk_082D8CF0[j], gUnk_082D8D08[j][0] >> 12, gUnk_082D8D08[j][1] >> 12);
            }
            if (gAIKirbyState < AI_KIRBY_STATE_CUTSCENE)
                sub_08039600(0x19);
        }
    }
}

static void sub_0802B088(struct DoorToHub *door)
{
    door->effectObjects[0]->sprite.animId = gUnk_082EB444[2].animId;
    door->effectObjects[0]->sprite.variant = gUnk_082EB444[2].variant;
    door->effectObjects[0]->sprite.unk1B = 0xFF;
    door->effectObjects[0]->flags &= ~2;
    door->effectObjects[0]->unk4 = 1;
    door->obj.unk78 = sub_0802B170;
}

void nullsub_116(struct DoorToHub *door)
{}

static void sub_0802B0D0(struct DoorToHub *door)
{
    sub_0802AC5C(door);
}

static void sub_0802B0DC(struct DoorToHub *door)
{
    door->obj.base.flags |= 0x400;
    door->effectObjects[0]->flags |= 0x400;
    door->obj.unk78 = sub_0802ADAC;
}

static void sub_0802B0FC(struct DoorToHub *door)
{
    door->effectObjects[0]->sprite.animId = gUnk_082EB444[1].animId;
    door->effectObjects[0]->sprite.variant = gUnk_082EB444[1].variant;
    door->effectObjects[0]->sprite.unk1B = 0xFF;
    door->effectObjects[0]->unk4 = 0;
    door->obj.unk78 = sub_0802B134;
}

static void sub_0802B134(struct DoorToHub *door)
{
    if (sub_0801BA18(&door->obj.base, FALSE))
        door->obj.unk78 = sub_0802AE58;
}

static void sub_0802B150(struct DoorToHub *door)
{
    if (door->effectObjects[0]->flags & 2)
        door->obj.unk78 = sub_0802B190;
}

static void sub_0802B170(struct DoorToHub *door)
{
    if (door->effectObjects[0]->flags & 2)
        door->obj.unk78 = sub_0802B0FC;
}

static void sub_0802B190(struct DoorToHub *door)
{
    door->effectObjects[0]->sprite.animId = gUnk_082EB444[0].animId;
    door->effectObjects[0]->sprite.variant = gUnk_082EB444[0].variant;
    door->effectObjects[0]->sprite.unk1B = 0xFF;
    door->effectObjects[0]->unk4 = 0;
    door->obj.unk78 = sub_0802AE9C;
}

void *CreateAreaDoor(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct AreaDoor), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct AreaDoor *tmp = TaskGetStructPtr(t), *door = tmp;

    InitObject(&door->obj, template, a2);
    door->effectObject = 0;
    door->obj.base.flags |= 0x18B40;
    door->obj.base.unkC |= 1;
    door->obj.base.unk68 &= ~7;
    door->obj.base.unk5C |= 0x20;
    sub_0803E2B0(&door->obj.base, -8, -8, 8, 8);
    ObjectSetBounds(&door->obj.base, -8, -8, 8, 8);
    ObjectInitSprite(&door->obj);
    door->obj.base.sprite.unk14 = 0x7C0;
    gUnk_08351648[door->obj.type].unk10(&door->obj);
    if (gCollisionAttributes[GetCollisionTile(a2, door->obj.base.x >> 12, (door->obj.base.y - 0x800) >> 12)] & 0x4000)
    {
        door->obj.base.flags &= ~0x400;
        sub_0802B2F4(door);
        door->obj.unk78 = sub_0802B43C;
    }
    else
    {
        door->obj.base.flags |= 0x400;
        door->obj.unk78 = sub_0802B450;
    }
    return door;
}

static void sub_0802B2F4(struct AreaDoor *door)
{
    struct Unk_0888562C_3 *var = sub_080025AC(door->obj.base.unk56, door->obj.base.x >> 12, (door->obj.base.y - 0xFFF) >> 12).pat3;

    if (!sub_08002BA8(door->obj.base.roomId, var->unk08, var->unk0A, var->unk0B))
    {
        if (!door->effectObject)
        {
            if (door->obj.objTemplate->unk22 & 0x100)
            {
                door->effectObject = sub_0808B62C(&door->obj.base, 0, 0x294, 0xA, 0);
                door->effectObject->x = door->obj.base.x;
                door->effectObject->y = door->obj.base.y - 0xA00;
            }
            else
            {
                door->effectObject = sub_0808B62C(&door->obj.base, 0, 0x2CF, 0, 0);
                door->effectObject->flags |= 1;
                door->effectObject->x = door->obj.base.x;
                door->effectObject->y = door->obj.base.y - 0x2800;
            }
            door->effectObject->sprite.unk14 = 0x780;
        }
    }
    else
    {
        if (door->obj.objTemplate->unk22 & 0x100)
        {
            if (!door->effectObject)
            {
                door->effectObject = sub_0808B62C(&door->obj.base, 0, 0x294, 9, 0);
                door->effectObject->x = door->obj.base.x;
                door->effectObject->y = door->obj.base.y - 0xA00;
            }
            else if (door->effectObject->sprite.variant != 9)
            {
                door->effectObject->sprite.animId = 0x294;
                door->effectObject->sprite.variant = 9;
                door->effectObject->sprite.unk1B = 0xFF;
            }
            door->effectObject->sprite.unk14 = 0x780;
        }
        else
        {
            door->effectObject->flags |= 0x1000;
            door->effectObject = NULL;
        }
    }
}

void nullsub_117(struct AreaDoor *door)
{}

static void sub_0802B43C(struct AreaDoor *door)
{
    door->obj.base.flags |= 4;
    sub_0802B2F4(door);
}

static void sub_0802B450(struct AreaDoor *door)
{
    if (gCollisionAttributes[GetCollisionTile(door->obj.base.unk56, door->obj.base.x >> 12, (door->obj.base.y - 0x800) >> 12)] & 0x4000)
    {
        door->obj.base.flags &= ~0x400;
        sub_0802B2F4(door);
        door->obj.unk78 = sub_0802B43C;
    }
}

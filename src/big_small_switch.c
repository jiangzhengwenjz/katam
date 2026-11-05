#include "big_small_switch.h"
#include "bonus.h"
#include "functions.h"
#include "in_game_interlude.h"
#include "kirby.h"
#include "object.h"
#include "object_collision.h"
#include "pause_world_map.h"
#include "task.h"
#include "constants/object_types.h"
#include "constants/songs.h"

static void SwitchMain(struct Switch *);
static void SwitchUpdateHeldCount(struct Switch *);
static void sub_08119AA8(struct Switch *);
static void SwitchStartWorldMapUnlock(struct Switch *);
static void nullsub_127(void);
static void SwitchUpdateCPUKirbyTrigger(struct Switch *);
static void SwitchDespawn(struct Switch *);

static void (*const gUnk_08357B8C[])(void) = {
    [WORLDMAP_NO_UNLOCK] = nullsub_127,
    [WORLDMAP_MOONLIGHT_MANSION] = StartWorldMapUnlockMoonlightMansion,
    [WORLDMAP_RAINBOW_ROUTE_EAST] = StartWorldMapUnlockRainbowRouteEast,
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = StartWorldMapUnlockRainbowRouteSouth,
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = StartWorldMapUnlockCabbageCavernCenter,
    [WORLDMAP_RAINBOW_ROUTE_WEST] = StartWorldMapUnlockRainbowRouteWest,
    [WORLDMAP_CARROT_CASTLE] = StartWorldMapUnlockCarrotCastle,
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = StartWorldMapUnlockRainbowRouteNorth,
    [WORLDMAP_MUSTARD_MOUNTAIN] = StartWorldMapUnlockMustardMountain,
    [WORLDMAP_CABBAGE_CAVERN_WEST] = StartWorldMapUnlockCabbageCavernWest,
    [WORLDMAP_RADISH_RUINS] = StartWorldMapUnlockRadishRuins,
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = StartWorldMapUnlockPeppermintPalaceEast,
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = StartWorldMapUnlockPeppermintPalaceWest,
    [WORLDMAP_CABBAGE_CAVERN_EAST] = StartWorldMapUnlockCabbageCavernEast,
    [WORLDMAP_OLIVE_OCEAN] = StartWorldMapUnlockOliveOcean,
    [WORLDMAP_CANDY_CONSTELLATION] = StartWorldMapUnlockCandyConstellation,
    sub_080396BC,
};

const struct AnimInfo gUnk_08357BD0[] = {
    { 0x304, 0, 0 },
    { 0x304, 1, 0 },
    { 0x304, 2, 0 },
};

const struct AnimInfo gUnk_08357BDC[] = {
    { 0x2E0, 0, 0 },
    { 0x2E0, 1, 0 },
    { 0x2E0, 1, 0 },
};

void *CreateSmallSwitch(struct ObjectTemplate *template, u8 arg1)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Switch), 0x1001, TASK_USE_IWRAM, ObjectDestroy);
    struct Switch *sw = TaskGetStructPtr(t);

    InitObject(&sw->obj, template, arg1);
    sw->obj.base.flags |= 0x2608000;
    sw->obj.base.unk68 &= ~7;
    sw->obj.base.unk5C |= 0x308020;
    sw->obj.base.unkC |= 1;
    sw->unkB8 = FALSE;
    sub_0803E2B0(&sw->obj.base, -7, -10, 7, -2);
    ObjectSetBounds(&sw->obj.base, -7, -10, 7, -2);
    sw->obj.base.unk4C = sw->obj.base.y = ((sw->obj.base.y + sw->obj.base.unk3F * 0x100 + 0xFFF) & ~0xFFF) - sw->obj.base.unk3F * 0x100 - 1;
    ObjectInitSprite(&sw->obj);
    gUnk_08351648[sw->obj.type].unk10(&sw->obj);
    return sw;
}

void *CreateBigSwitch(struct ObjectTemplate *template, u8 arg1)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Switch), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Switch *sw = TaskGetStructPtr(t);

    InitObject(&sw->obj, template, arg1);
    sw->obj.base.flags |= 0x2308000;
    sw->obj.base.unk68 &= ~7;
    sw->obj.base.unk5C |= ~0x87;
    sw->unkB8 = TRUE;
    sub_0803E2B0(&sw->obj.base, -14, -24, 14, 0);
    ObjectSetBounds(&sw->obj.base, -14, -24, 14, 0);
    ObjectInitSprite(&sw->obj);
    gUnk_08351648[sw->obj.type].unk10(&sw->obj);
    return sw;
}

void SwitchSetFunc(struct Switch *arg0)
{
    struct Switch *sw = arg0;

    ObjectSetFunc(arg0, 0, SwitchMain);
    if (arg0->unkB8 && *GetStateSlot(STATE_SLOT_WORLD, arg0->obj.objTemplate->unk4, gCurLevelInfo[arg0->obj.base.unk56].unk65E)) {
        arg0->obj.unk78 = SwitchDespawn;
        arg0->obj.base.flags |= 0xF40;
    } else {
        sw->unkB4 = 0;
        sw->unkB6 = 0;
        if (arg0->obj.objTemplate->unk18)
            sw->unkB6 |= 0x400;
        else if (arg0->obj.objTemplate->unk22 & 4)
            sw->unkB6 |= 0x400;
    }
}

static bool32 sub_0811942C(struct Switch *sw)
{
    if ((sw->obj.base.y >> 8) >= gCurLevelInfo[sw->obj.base.unk56].roomHeight - 20) {
        sw->obj.base.flags |= 0x40;
        if (sw->obj.base.xspeed < 0) {
            sw->obj.base.xspeed += 0x200;
            if (sw->obj.base.xspeed > 0)
                sw->obj.base.xspeed = 0;
        } else {
            sw->obj.base.xspeed -= 0x200;
            if (sw->obj.base.xspeed < 0)
                sw->obj.base.xspeed = 0;
        }
        if (sw->obj.base.yspeed < 0) {
            sw->obj.base.yspeed += 0x200;
            if (sw->obj.base.yspeed > 0)
                sw->obj.base.yspeed = 0;
        } else {
            sw->obj.base.yspeed -= 0x200;
            if (sw->obj.base.yspeed < 0)
                sw->obj.base.yspeed = 0;
        }
    }
    if (sw->obj.base.flags & 0x40)
        return FALSE;
    return TRUE;
}

static bool32 SwitchCheckPressAndGiveTomato(struct Switch *sw)
{
    struct ObjectBase **list;
    s16 rect[4], other[4];
    u8 i;

    if (!sub_0811942C(sw))
        return FALSE;
    list = GetRoomObjectCollisionList(&sw->obj.base);
    rect[0] = (sw->obj.base.x >> 8) + sw->obj.base.unk3C;
    rect[1] = (sw->obj.base.y >> 8) + sw->obj.base.unk3D;
    rect[2] = (sw->obj.base.x >> 8) + sw->obj.base.unk3E;
    rect[3] = (sw->obj.base.y >> 8) + sw->obj.base.unk3F;
    for (; *list; list++) {
        u8 type = ((struct Object *)*list)->type;

        if (type == OBJ_STAR_STONE_BLOCK || type == OBJ_LARGE_STAR_STONE_BLOCK_7D) {
            other[0] = ((*list)->x >> 8) + (*list)->unk3C;
            other[1] = ((*list)->y >> 8) + (*list)->unk3D;
            other[2] = ((*list)->x >> 8) + (*list)->unk3E;
            other[3] = ((*list)->y >> 8) + (*list)->unk3F;
            if (COLLISION_AXIS_OVERLAP(rect[0], rect[2] - rect[0], other[0], other[2] - other[0])
                && COLLISION_AXIS_OVERLAP(rect[1], rect[3] - rect[1], other[1], other[3] - other[1]))
                return TRUE;
        }
    }
    if (!(sw->obj.objTemplate->unk22 & 2)) {
        if (sw->unkB6 & 0x400) {
            if (!(sw->obj.base.flags & 0x40000)) {
                if (sw->obj.base.flags & 0x1000000)
                    return TRUE;
            }
        } else {
            for (i = 0; i < gNumKirbys; i++) {
                if (gKirbys[i].base.unk56 == sw->obj.base.unk56) {
                    other[0] = (gKirbys[i].base.x >> 8) + gKirbys[i].base.unk38;
                    other[1] = (gKirbys[i].base.y >> 8) + gKirbys[i].base.unk39;
                    other[2] = (gKirbys[i].base.x >> 8) + gKirbys[i].base.unk3A;
                    other[3] = (gKirbys[i].base.y >> 8) + gKirbys[i].base.unk3B;
                    if (COLLISION_AXIS_OVERLAP(rect[0], rect[2] - rect[0], other[0], other[2] - other[0])
                        && COLLISION_AXIS_OVERLAP(rect[1], rect[3] - rect[1], other[1], other[3] - other[1])) {
                        if (!(gKirbys[i].base.unkC & 0x8000))
                            return TRUE;
                    } else if (sw->obj.base.flags & 0x1000000) {
                        return TRUE;
                    }
                }
            }
        }
    }
    if (sw->obj.base.flags & 0x40000) {
        struct Kirby *kirby;

        if (!sw->unkB8)
            return TRUE;
        kirby = sw->obj.base.unk6C;
        if (kirby->base.unk56 < gNumHumanPlayers) {
            if (!(sw->unkB6 & 0x2000))
                BonusCreateTomato(kirby);
            return TRUE;
        }
    }
    return FALSE;
}

static void SwitchUpdatePressState(struct Switch *sw)
{
    if (SwitchCheckPressAndGiveTomato(sw)) {
        sw->unkB6 &= ~4;
        sw->unkB6 |= 0x100;
        if (sw->unkB6 & 1) {
            sw->unkB6 &= ~2;
        } else {
            sw->unkB6 |= 2;
            sw->unkB4 = sw->obj.objTemplate->unk18 + 2;
            PlaySfx(&sw->obj.base, SE_SWITCH_ACTIVATE);
        }
        sw->unkB6 |= 1;
        sw->unkB6 |= 0x200;
    } else {
        if (sw->unkB6 & 1)
            sw->unkB6 &= ~2;
        sw->unkB6 &= ~0x100;
        if (sw->unkB4 <= 0) {
            if (!(sw->obj.objTemplate->unk22 & 4)) {
                sw->unkB6 &= ~0x20;
                sw->unkB6 &= ~0x10;
                if (sw->unkB6 & 4)
                    sw->unkB6 &= ~4;
                if (sw->unkB6 & 1)
                    sw->unkB6 |= 4;
                sw->unkB6 &= ~1;
            }
        } else {
            if (sw->unkB6 & 0x10)
                sw->unkB6 &= ~0x20;
            else
                sw->unkB6 |= 0x20;
            sw->unkB6 |= 0x10;
            sw->unkB4--;
        }
    }
}

static void SwitchMain(struct Switch *arg0)
{
    struct Switch *sw = arg0;

    SwitchUpdatePressState(arg0);
    if (sw->unkB6 & 1) {
        sw->obj.unk83 = 1;
        if (sw->unkB6 & 0x400)
            sw->obj.base.flags |= 0x10000;
    } else {
        sw->obj.unk83 = 0;
        if (sw->obj.base.flags & 0x10000)
            sw->obj.base.flags &= ~0x10000;
    }
    if (sw->obj.objTemplate->unk22 & 1)
        sub_08119AA8(arg0);
    else if (sw->obj.objTemplate->unk22 & 2)
        SwitchStartWorldMapUnlock(arg0);
    else if (sw->obj.objTemplate->unk22 & 0x8000)
        SwitchUpdateCPUKirbyTrigger(arg0);
    else
        SwitchUpdateHeldCount(arg0);
    sw->obj.base.counter++;
}

static void SwitchUpdateHeldCount(struct Switch *sw)
{
    u32 *count;

    if (sw->unkB6 & 2) {
        count = GetStateSlot(STATE_SLOT_ROOM, sw->obj.objTemplate->unk4, gCurLevelInfo[sw->obj.base.unk56].unk65E);
        ++*count;
    } else if (sw->unkB6 & 4) {
        count = GetStateSlot(STATE_SLOT_ROOM, sw->obj.objTemplate->unk4, gCurLevelInfo[sw->obj.base.unk56].unk65E);
        if (*count)
            --*count;
    }
}

static inline bool32 SlotEquals(u8 *slot, u8 a, u8 b, u8 c)
{
    if (slot[0] != a || slot[1] != b)
        return FALSE;
    if (slot[2] != c)
        return FALSE;
    return TRUE;
}

static void sub_08119AA8(struct Switch *sw)
{
    u32 r1;
    u8 *slot = (u8 *)GetStateSlot(STATE_SLOT_ROOM, sw->obj.objTemplate->unk4, gCurLevelInfo[sw->obj.base.unk56].unk65E);

    if (sw->unkB6 & 1) {
        u8 val = sw->obj.objTemplate->unk14 >> 8;

        r1 = 0; // TODO(match): fake var r1 is for using the other zero register
        slot[0] = val;
        slot[1] = sw->obj.objTemplate->unk14;
        slot[2] = sw->obj.objTemplate->unk12 >> 8;
        slot[3] = r1;
    } else if (SlotEquals(slot, sw->obj.objTemplate->unk14 >> 8, sw->obj.objTemplate->unk14, sw->obj.objTemplate->unk12 >> 8)) {
        slot[0] = 0;
        slot[1] = 0;
        slot[2] = 0;
        slot[3] = 0;
    }
}

static void SwitchStartWorldMapUnlock(struct Switch *sw)
{
    if (sw->unkB6 & 0x2000 && !(sw->unkB6 & 0x1000))
        sw->obj.base.flags |= 0xF40;
    if (sw->unkB6 & 2) {
        sw->unkB6 |= 0x1000;
        sw->unkB6 |= 0x2000;
    }
    if (sw->unkB6 & 0x1000 && CanStartInGameInterlude()) {
        gUnk_08357B8C[sw->obj.objTemplate->unk14]();
        sw->unkB6 &= ~0x1000;
    }
}

static void nullsub_127(void)
{
}

static void SwitchUpdateCPUKirbyTrigger(struct Switch *sw)
{
    SwitchUpdateHeldCount(sw);
    if (sw->unkB6 & 1) {
        u32 *slot = GetStateSlot(STATE_SLOT_ROOM, 0xF, gCurLevelInfo[sw->obj.base.unk56].unk65E);

        if (*slot < sw->obj.objTemplate->unk11)
            *slot = sw->obj.objTemplate->unk11;
    }
}

static void SwitchDespawn(struct Switch *sw)
{
    sw->obj.base.flags |= 0x1000;
}

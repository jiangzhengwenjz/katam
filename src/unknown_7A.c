#include "unknown_7A.h"
#include "functions.h"
#include "kirby.h"
#include "malloc_ewram.h"

static void sub_0811F824(struct Task *);
static void sub_0811F918(struct Unknown7A *);

const struct AnimInfo gUnk_08357CD0[] = {
    { 0x2D1, 2, 0 },
};

void *CreateUnknown7A(struct ObjectTemplate *template, u8 a2)
{
    s16 rect[4];
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Unknown7A), 0x1000, TASK_USE_IWRAM, sub_0811F824);
    struct Unknown7A *u = TaskGetStructPtr(t);

    InitObject(&u->obj, template, a2);
    u->obj.base.flags |= 0x2008740;
    u->obj.base.unk68 &= ~7;
    u->obj.base.unk5C |= 0x20;
    u->obj.base.unkC |= 1;
    rect[0] = u->obj.objTemplate->unk1A;
    rect[1] = u->obj.objTemplate->unk1C;
    rect[2] = rect[0] + u->obj.objTemplate->unk1E;
    rect[3] = rect[1] + u->obj.objTemplate->unk20;
    ObjectSetBounds(&u->obj.base, rect[0], rect[1], rect[2], rect[3]);
    gUnk_08351648[u->obj.type].unk10(&u->obj);
    return u;
}

void sub_0811F20C(struct Unknown7A *u)
{
    u->obj.base.counter = 0;
    u->unkB8.x = u->obj.objTemplate->x;
    u->unkB8.y = u->obj.objTemplate->y;
    u->unkBC.x = u->unkB8.x;
    u->unkBC.y = u->unkB8.y;
    u->unkC0.x = u->unkB8.x;
    u->unkC0.y = u->unkB8.y;
    u->unkC4 = 0;
    u->unkC6 = u->obj.objTemplate->unk14;
    u->obj.unk78 = sub_0811F918;
}

static inline bool32 StateSlotChanged(u8 *slot, struct Unknown7AState *state)
{
    if (slot[0] != state->unk0 || slot[1] != state->unk1)
        return TRUE;
    return slot[2] != state->unk2;
}

static inline void LoadStateSlot(struct Unknown7AState *state, u8 *slot)
{
    state->unk0 = slot[0];
    state->unk1 = slot[1];
    state->unk2 = slot[2];
    state->unk3 = 0;
}

static inline void ClearState(struct Unknown7AState *state)
{
    state->unk0 = 0;
    state->unk1 = 0;
    state->unk2 = 0;
    state->unk3 = 0;
}

// TODO(match): the coordinates should all be s16, but y must be u16 to match
static inline bool32 PositionsEqual(s16 x1, u16 y1, s16 x2, u16 y2)
{
    s16 r = FALSE;

    if (r) { ++r; --r; } // TODO(match): fake var r is for using the other zero register
    if (x1 == x2 && y1 == y2)
        r = TRUE;
    else
        r = FALSE;
    return r;
}

static void sub_0811F26C(struct Unknown7A *u)
{
    u8 *slot = (u8 *)GetStateSlot(STATE_SLOT_ROOM, u->obj.objTemplate->unk4, gCurLevelInfo[u->obj.base.unk56].unk65E);

    if (slot[0] || slot[1] || slot[2]) {
        if (StateSlotChanged(slot, &u->unkB4)) {
            LoadStateSlot(&u->unkB4, slot);
            u->unkC6 = u->obj.objTemplate->unk14;
            u->unkC4 &= ~0x200;
        } else if (u->unkC4 & 0x200) {
            LoadStateSlot(&u->unkB4, slot);
            u->unkC6 = u->obj.objTemplate->unk14;
            u->unkC4 &= ~0x200;
        }
    } else if (!(u->unkC4 & 0x100)) {
        if (PositionsEqual(u->obj.objTemplate->x, u->obj.objTemplate->y, u->unkB8.x, u->unkB8.y)) {
            u->unkC4 &= ~0x200;
            ClearState(&u->unkB4);
        } else if (u->unkB4.unk0 & 0x10) {
            if (u->unkC6 >= 0) {
                u->unkC6--;
            } else {
                u->unkBC.x = u->unkB8.x;
                u->unkBC.y = u->unkB8.y;
                u->unkC0.x = u->obj.objTemplate->x;
                u->unkC0.y = u->obj.objTemplate->y;
                u->unkC6 = u->obj.objTemplate->unk14;
                u->unkC4 |= 0x200;
            }
        }
    }
}

static void sub_0811F410(struct Unknown7A *u)
{
    u->unkC0.x = u->obj.objTemplate->x;
    u->unkC0.y = u->obj.objTemplate->y;
    if (!(u->unkC4 & 0x200)) {
        switch (u->unkB4.unk0 & 3) {
        case 0:
            u->unkC0.x -= u->unkB4.unk2 * 0x10;
            break;
        case 1:
            u->unkC0.y -= u->unkB4.unk2 * 0x10;
            break;
        case 2:
            u->unkC0.x += u->unkB4.unk2 * 0x10;
            break;
        case 3:
            u->unkC0.y += u->unkB4.unk2 * 0x10;
            break;
        }
    }
    u->unkC4 &= ~0x1F;
    if (u->unkC0.x == u->unkB8.x && u->unkC0.y == u->unkB8.y) {
        u->unkC4 |= 0x10;
    } else if (u->unkC0.x != u->unkB8.x) {
        if (u->unkC0.y == u->unkB8.y) {
            if (u->unkB8.x < u->unkC0.x)
                u->unkC4 |= 4;
            else
                u->unkC4 |= 1;
        }
    } else if (u->unkC0.y != u->unkB8.y) {
        if (u->unkB8.y < u->unkC0.y)
            u->unkC4 |= 8;
        else
            u->unkC4 |= 2;
    }
    u->unkC4 |= 0x100;
    switch (u->unkC4 & 0x1F) {
    case 1:
        if (u->obj.base.flags & 1) {
            u->obj.base.xspeed += u->unkB4.unk1;
            if (u->obj.base.xspeed < -u->unkB4.unk1)
                u->obj.base.xspeed = -u->unkB4.unk1;
            else if (u->obj.base.xspeed > u->unkB4.unk1)
                u->obj.base.xspeed = u->unkB4.unk1;
        } else {
            u->obj.base.xspeed -= u->unkB4.unk1;
            if (u->obj.base.xspeed > u->unkB4.unk1)
                u->obj.base.xspeed = u->unkB4.unk1;
            else if (u->obj.base.xspeed < -u->unkB4.unk1)
                u->obj.base.xspeed = -u->unkB4.unk1;
        }
        u->unkB8.x = u->obj.base.x >> 8;
        break;
    case 2:
        if (u->unkB4.unk1 > 0) {
            u->obj.base.yspeed += u->unkB4.unk1;
            if (u->obj.base.yspeed > u->unkB4.unk1)
                u->obj.base.yspeed = u->unkB4.unk1;
        } else {
            u->obj.base.yspeed += u->unkB4.unk1;
            if (u->obj.base.yspeed < -u->unkB4.unk1)
                u->obj.base.yspeed = -u->unkB4.unk1;
        }
        u->unkB8.y = u->obj.base.y >> 8;
        break;
    case 4:
        if (u->obj.base.flags & 1) {
            u->obj.base.xspeed -= u->unkB4.unk1;
            if (u->obj.base.xspeed < -u->unkB4.unk1)
                u->obj.base.xspeed = -u->unkB4.unk1;
            else if (u->obj.base.xspeed > u->unkB4.unk1)
                u->obj.base.xspeed = u->unkB4.unk1;
        } else {
            u->obj.base.xspeed += u->unkB4.unk1;
            if (u->obj.base.xspeed > u->unkB4.unk1)
                u->obj.base.xspeed = u->unkB4.unk1;
            else if (u->obj.base.xspeed < -u->unkB4.unk1)
                u->obj.base.xspeed = -u->unkB4.unk1;
        }
        u->unkB8.x = u->obj.base.x >> 8;
        break;
    case 8:
        if (-u->unkB4.unk1 > 0) {
            u->obj.base.yspeed -= u->unkB4.unk1;
            if (u->obj.base.yspeed > u->unkB4.unk1)
                u->obj.base.yspeed = u->unkB4.unk1;
        } else {
            u->obj.base.yspeed -= u->unkB4.unk1;
            if (u->obj.base.yspeed < -u->unkB4.unk1)
                u->obj.base.yspeed = -u->unkB4.unk1;
        }
        u->unkB8.y = u->obj.base.y >> 8;
        break;
    }
    switch (u->unkC4 & 0x1F) {
    case 1:
        if (u->unkC0.x >= u->unkB8.x) {
            if (u->obj.base.xspeed < 0) {
                u->obj.base.xspeed += 0x7FFF;
                if (u->obj.base.xspeed > 0)
                    u->obj.base.xspeed = 0;
            } else {
                u->obj.base.xspeed -= 0x7FFF;
                if (u->obj.base.xspeed < 0)
                    u->obj.base.xspeed = 0;
            }
            u->unkB8.x = u->unkC0.x;
            u->unkC4 &= ~0x100;
        }
        break;
    case 2:
        if (u->unkC0.y >= u->unkB8.y) {
            if (u->obj.base.yspeed < 0) {
                u->obj.base.yspeed += 0x7FFF;
                if (u->obj.base.yspeed > 0)
                    u->obj.base.yspeed = 0;
            } else {
                u->obj.base.yspeed -= 0x7FFF;
                if (u->obj.base.yspeed < 0)
                    u->obj.base.yspeed = 0;
            }
            u->unkB8.y = u->unkC0.y;
            u->unkC4 &= ~0x100;
        }
        break;
    case 4:
        if (u->unkC0.x <= u->unkB8.x) {
            if (u->obj.base.xspeed < 0) {
                u->obj.base.xspeed += 0x7FFF;
                if (u->obj.base.xspeed > 0)
                    u->obj.base.xspeed = 0;
            } else {
                u->obj.base.xspeed -= 0x7FFF;
                if (u->obj.base.xspeed < 0)
                    u->obj.base.xspeed = 0;
            }
            u->unkB8.x = u->unkC0.x;
            u->unkC4 &= ~0x100;
        }
        break;
    case 8:
        if (u->unkC0.y <= u->unkB8.y) {
            if (u->obj.base.yspeed < 0) {
                u->obj.base.yspeed += 0x7FFF;
                if (u->obj.base.yspeed > 0)
                    u->obj.base.yspeed = 0;
            } else {
                u->obj.base.yspeed -= 0x7FFF;
                if (u->obj.base.yspeed < 0)
                    u->obj.base.yspeed = 0;
            }
            u->unkB8.y = u->unkC0.y;
            u->unkC4 &= ~0x100;
        }
        break;
    default:
        u->unkC4 &= ~0x100;
        break;
    }
    gCurLevelInfo[u->obj.base.unk56].unk2C = (u->obj.objTemplate->x - u->unkB8.x) * -0x100;
    gCurLevelInfo[u->obj.base.unk56].unk30 = (u->obj.objTemplate->y - u->unkB8.y) * 0x100;
}

static void sub_0811F824(struct Task *t)
{
    struct Unknown7A *tmp = TaskGetStructPtr(t), *u = tmp;

    if (u->obj.base.sprite.tilesVram && !(u->obj.base.flags & 0x4000))
        VramFree(u->obj.base.sprite.tilesVram);
    if (u->obj.unk8C)
        EwramFree(u->obj.unk8C);
    if (u->obj.objTemplate) {
        if (u->obj.objTemplate->unk2 != 0 || u->obj.objTemplate->unk3 != 31) {
            if (u->obj.objTemplate->unk2 != 0 || u->obj.base.unk56 != 0xFF)
                sub_08001678(u->obj.objTemplate->unk2, u->obj.objTemplate->unk3, gCurLevelInfo[u->obj.base.unk56].unk65E, 1);
            else
                return;
        } else {
            struct ObjectTemplate *template = gUnk_020229E0;
            u8 i;

            for (i = 0; i < 0x20; i++, template++) {
                if (template == u->obj.objTemplate) {
                    gUnk_020229D4 &= ~(1 << i);
                    break;
                }
            }
        }
    }
    if (u->obj.base.unk56 != 0xFF)
        sub_080028CC(u->obj.base.unk56, sub_08002984(u->obj.base.unk56, &u->obj.base.unk56));
}

static void sub_0811F918(struct Unknown7A *u)
{
    sub_0811F26C(u);
    sub_0811F410(u);
    Macro_080A4728(&u->obj);
    u->obj.base.counter++;
}

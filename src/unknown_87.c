#include "unknown_87.h"
#include "functions.h"
#include "kirby.h"

static void sub_08121080(struct Unknown87 *);

const struct AnimInfo gUnk_08357E50[] = {
    { 0x2D1, 2, 0 },
};

static bool32 sub_08120DE0(struct Unknown87 *u)
{
    if (u->unkBA <= 0) {
        u->unkBA = u->obj.objTemplate->unk1A;
        if (u->unkB8)
            u->unkB8 = FALSE;
        else
            u->unkB8 = TRUE;
        return TRUE;
    }
    u->unkBA--;
    return FALSE;
}

static void sub_08120E1C(struct Unknown87 *u)
{
    if (sub_08120DE0(u)) {
        u->unkB6 |= 0x100;
        if (u->unkB6 & 1)
            u->unkB6 &= ~2;
        else
            u->unkB6 |= 2;
        u->unkB6 |= 1;
    } else {
        u->unkB6 &= ~0x100;
        if (u->unkB4 < 0) {
            u->unkB6 &= ~1;
            u->unkB6 &= ~0x20;
            u->unkB6 &= ~0x10;
            if (u->unkB6 & 4)
                u->unkB6 &= ~4;
            else
                u->unkB6 |= 4;
        } else {
            if (u->unkB6 & 0x10)
                u->unkB6 &= ~0x20;
            else
                u->unkB6 |= 0x20;
            u->unkB6 |= 0x10;
            u->unkB4--;
        }
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

static void sub_08120EE0(struct Unknown87 *u)
{
    u32 r1;
    u8 *slot = (u8 *)GetStateSlot(STATE_SLOT_ROOM, u->obj.objTemplate->unk4, gCurLevelInfo[u->obj.base.unk56].unk65E);

    if (u->unkB6 & 1) {
        if (u->unkB8) {
            u8 val = u->obj.objTemplate->unk14 >> 8;

            r1 = 0; // TODO(match): fake var r1 is for using the other zero register
            slot[0] = val;
            slot[1] = u->obj.objTemplate->unk14;
            slot[2] = u->obj.objTemplate->unk12 >> 8;
            slot[3] = r1;
        } else {
            slot[0] = u->obj.objTemplate->unk18 >> 8;
            slot[1] = u->obj.objTemplate->unk18;
            slot[2] = u->obj.objTemplate->unk16 >> 8;
            slot[3] = 0;
        }
    } else if (SlotEquals(slot, u->obj.objTemplate->unk14 >> 8, u->obj.objTemplate->unk14, u->obj.objTemplate->unk12 >> 8)) {
        slot[0] = 0;
        slot[1] = 0;
        slot[2] = 0;
        slot[3] = 0;
    }
}

void *CreateUnknown87(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Unknown87), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Unknown87 *u = TaskGetStructPtr(t);

    InitObject(&u->obj, template, a2);
    u->obj.base.flags |= 0x2008300;
    u->obj.base.unk68 &= ~7;
    u->obj.base.unk5C |= 0x20;
    u->obj.base.unkC |= 1;
    gUnk_08351648[u->obj.type].unk10(&u->obj);
    return u;
}

void sub_0812102C(struct Unknown87 *u)
{
    u->obj.unk78 = sub_08121080;
    *GetStateSlot(STATE_SLOT_ROOM, u->obj.objTemplate->unk4, gCurLevelInfo[u->obj.base.unk56].unk65E) = 0;
    u->unkB4 = 0;
    u->unkB6 = 0;
    u->unkB8 = FALSE;
    u->unkBA = 0;
}

static void sub_08121080(struct Unknown87 *u)
{
    sub_08120E1C(u);
    sub_08120EE0(u);
    u->obj.base.counter++;
}

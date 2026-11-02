#include "unknown_82.h"
#include "functions.h"
#include "kirby.h"
#include "malloc_ewram.h"
#include "unknown_75.h"

static void sub_08120B90(struct Unknown82 *);
static void sub_08120D78(struct Task *);

const struct AnimInfo gUnk_08357D1C[] = {
    { 0x2D1, 2, 0 },
};

static const u8 gUnk_08357D20[16] = { 2, 3, 2, 4, 3, 4, 9, 4, 4, 4, 4, 4, 4, 4, 4, 5 };

static const s8 gUnk_08357D30[16][18] = {
    {  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1,  0,  0,  0,  1,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  0, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  0, -1,  0,  0,  0,  1,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -2,  2, -2,  1, -2,  0, -1,  0,  0,  0,  1,  0,  2,  0,  2,  1,  2,  2 },
    { -1,  1, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1,  0,  0,  0,  1,  0,  1, -1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1,  0,  0,  0,  1,  0,  1,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1, -1, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  0, -1,  0,  0,  0,  1,  1,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1, -1,  0, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  1, -1,  0, -1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    {  1, -1,  0,  0,  0,  1, -1,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    { -1,  1, -1,  0,  0,  1,  0,  1,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0 },
};

void sub_08120A40(struct Unknown82 *arg0)
{
    struct Unknown82 *tmp = arg0, *u = tmp;
    struct Unk_0888562C_4 *p;
    u8 roomId;
    s16 x, y;
    u32 i, j;

    u->obj.base.counter = 0;
    u->unkB4 = gUnk_08357D20[u->obj.objTemplate->unk14];
    u->unkB6 = u->obj.objTemplate->unk14;
    u->unkB8 = 0;
    u->unkBA = 0;
    u->obj.unk8C = p = EwramMalloc(u->unkB4 * sizeof(struct Unk_0888562C_4));
    roomId = u->obj.base.unk56;
    x = (0x10u * u->obj.base.x) >> 0x10;
    y = (0x10u * u->obj.base.y) >> 0x10;
    for (i = 0, j = 0; i < tmp->unkB4; i++) {
        s16 dx = gUnk_08357D30[tmp->unkB6][j++];
        s16 dy = gUnk_08357D30[tmp->unkB6][j++];

        p[i].unk14 = sub_080025AC(roomId, x + dx, y + dy);
        sub_080015A8(roomId, x + dx, y + dy, p[i].unk0.unk08);
        p[i].unk0.unk10 = GetCollisionTile(roomId, x + dx, y + dy);
        p[i].unk0.unk00 = 1;
        p[i].unk0.unk02 = x + dx;
        p[i].unk0.unk03 = y + dy;
        p[i].unk0.unk04 = (sizeof(struct Unk_0888562C) + 3) & ~3;
    }
    u->obj.unk78 = sub_08120B90;
}

static void sub_08120B90(struct Unknown82 *arg0)
{
    struct Unknown82 *tmp = arg0, *u = tmp;
    struct Unk_0888562C_4 *p = u->obj.unk8C;
    u8 roomId = u->obj.base.unk56;
    u32 i;

    if (*GetStateSlot(STATE_SLOT_ROOM, u->obj.objTemplate->unk4, gCurLevelInfo[roomId].unk65E)) {
        *GetStateSlot(STATE_SLOT_ROOM, u->obj.objTemplate->unk4, gCurLevelInfo[u->obj.base.unk56].unk65E) = 0;
        u->unkBA = u->obj.objTemplate->unk12;
        if (!(u->unkB8 & 1))
            u->unkB8 |= 0x10;
    }
    if (tmp->unkBA > 0) {
        tmp->unkBA--;
    } else {
        if (tmp->unkB8 & 1)
            tmp->unkB8 |= 0x10;
        tmp->unkBA = 0;
    }
    if (tmp->unkB8 & 0x10) {
        tmp->unkB8 &= ~0x10;
        if (tmp->unkB8 & 1) {
            tmp->unkB8 &= ~1;
            for (i = 0; i < tmp->unkB4; i++)
                sub_08001408(roomId, &p[i].unk0, NULL, NULL);
        } else {
            tmp->unkB8 |= 1;
            for (i = 0; i < tmp->unkB4; i++)
                sub_08001408(roomId, p[i].unk14, NULL, NULL);
        }
    }
    u->obj.base.counter++;
}

void *CreateUnknown82(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Unknown82), 0x1000, TASK_USE_IWRAM, sub_08120D78);
    struct Unknown82 *u = TaskGetStructPtr(t);

    InitObject(&u->obj, template, a2);
    u->obj.base.flags |= 0x2018F40;
    u->obj.base.unk5C |= 0x20;
    u->obj.base.unkC |= 1;
    gUnk_08351648[u->obj.type].unk10(&u->obj);
    return u;
}

static void sub_08120D78(struct Task *t)
{
    struct Unknown82 *u = TaskGetStructPtr(t);
    u8 unk56 = u->obj.base.unk56;
    u32 unk2 = u->obj.objTemplate->unk2;
    u8 unk3 = u->obj.objTemplate->unk3;
    // TODO: Original UB: gCurLevelInfo is read out of bounds when unk56 is 0xFF.
    u8 unk65E = gCurLevelInfo[unk56].unk65E;

    ObjectDestroy(t);
    if (unk2 != 0 || unk56 != 0xFF)
        sub_08001678(unk2, unk3, unk65E, 1);
}

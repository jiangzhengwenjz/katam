#include "unknown_75.h"
#include "malloc_ewram.h"
#include "functions.h"
#include "kirby.h"
#include "constants/kirby.h"

static void sub_0811C328(struct Object2 *);

const struct Unk_02021590 gUnk_08357C58[] = {
    { 0x2D1, 2, 0 },
};

void sub_0811C29C(struct Object2 *unknown75)
{
    struct Unk_0888562C_4 *p;
    u8 roomId;
    u32 a, b;

    unknown75->base.counter = 0;
    unknown75->unk78 = sub_0811C328;
    unknown75->unk8C = p = EwramMalloc(sizeof(struct Unk_0888562C_4));
    roomId = unknown75->base.roomId;
    a = (0x10u * unknown75->base.x) >> 0x10;
    b = (0x10u * unknown75->base.y) >> 0x10;
    p->unk14.pat1 = sub_080025AC(roomId, a, b).pat1;
    sub_080015A8(roomId, a, b, p->unk0.unk08);
    p->unk0.unk10 = sub_080023E4(roomId, a, b);
    p->unk0.unk00 = 1;
    p->unk0.unk01 = p->unk14.pat1->unk10;
    p->unk0.unk02 = a;
    p->unk0.unk03 = b;
    p->unk0.unk04 = (sizeof(struct Unk_0888562C) + 3) & ~3; // TODO: size of a wrapper struct w/ default alignment?
    unknown75->unk85 = 0;
    unknown75->kirbyAbility = KIRBY_ABILITY_NORMAL;
}

static void sub_0811C328(struct Object2 *unknown75)
{
    struct Unk_0888562C_4 *p = unknown75->unk8C;
    u8 roomId = unknown75->base.roomId;

    if (unknown75->kirbyAbility > unknown75->object->unk1E)
    {
        if (unknown75->unk85 & 1)
        {
            sub_08001408(roomId, &p->unk0, NULL, NULL);
            unknown75->unk85 = 0;
        }
        else
        {
            sub_08001408(roomId, p->unk14, NULL, NULL);
            unknown75->unk85 = 1;
        }
        unknown75->kirbyAbility = KIRBY_ABILITY_NORMAL;
    }
    ++unknown75->kirbyAbility;
    ++unknown75->base.counter;
}

void *CreateUnknown75(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Object2 *unknown75 = TaskGetStructPtr(t);

    InitObject(unknown75, template, a2);
    unknown75->base.flags |= 0x2018F40;
    unknown75->base.unk5C |= 0x20;
    unknown75->base.unkC |= 1;
    gUnk_08351648[unknown75->type].unk10(unknown75);
    return unknown75;
}

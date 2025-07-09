#include "inhalable_star.h"
#include "functions.h"
#include "object.h"
#include "task.h"
#include "kirby.h"
#include "code_0806F780.h"
#include "constants/object_types.h"
#include "constants/kirby.h"

static void sub_080A8F64(struct Object2 *);

const struct Unk_02021590 gUnk_0835366C[] = {
    { 0x29C, 0, 0 },
    { 0x29C, 1, 0 },
    { 0x29C, 2, 0 },
    { 0x2A9, 1, 0 },
    { 0x295, 1, 0 },
    { 0x295, 1, 0 },
};

void sub_080A8C28(struct Object2 *obj2, s16 a2, s16 a3)
{
    s32 x = obj2->base.flags & 1 ? (obj2->base.x >> 8) - a2 : (obj2->base.x >> 8) + a2;
    s32 y = (obj2->base.y >> 8) + a3;
    struct Object2 *star = CreateObjTemplateAndObj(obj2->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_INHALABLE_STAR,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    star->base.parent = obj2;
    if (obj2->base.flags & 1)
        star->base.flags |= 1;
    sub_080A8EF4(star);
}

void sub_080A8D18(struct Object2 *obj2, s16 a2, s16 a3, u8 a4, u8 a5)
{
    s32 x = obj2->base.flags & 1 ? (obj2->base.x >> 8) - a2 : (obj2->base.x >> 8) + a2;
    s32 y = (obj2->base.y >> 8) + a3;
    struct Object2 *star = CreateObjTemplateAndObj(obj2->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_INHALABLE_STAR,
        a4, 0, a5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    star->base.parent = obj2;
    if (obj2->base.flags & 1)
        star->base.flags |= 1;
    sub_080A8EF4(star);
}

void *CreateInhalableStar(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *star = TaskGetStructPtr(t);

    InitObject(star, template, a2);
    star->base.unkC |= 1;
    star->base.unkC |= 4;
    star->base.flags |= 0x4000;
    star->base.flags |= 0x40;
    star->base.flags |= 0x10000;
    star->base.unk5C = ~0x227;
    star->base.flags |= 0x400000;
    star->base.flags |= 0x100;
    star->base.unk68 = 0;
    star->base.flags &= ~0x10000000;
    sub_0803E2B0(&star->base, -5, -3, 5, 8);
    sub_0803E308(&star->base, -6, -4, 6, 0xA);
    ObjectInitSprite(star);
    star->unk9E = 0;
    star->unk7C = sub_0809F840;
    return star;
}

void sub_080A8EF4(struct Object2 *star)
{
    ObjectSetFunc(star, 0, sub_080A8F64);
    star->base.xspeed = 0x200;
    star->base.yspeed = 0x180;
    star->base.sprite.unk14 = 0x540;
    if (star->object->subtype1 & 1)
        star->base.yspeed = -star->base.yspeed;
    if (star->object->subtype1 & 2)
        star->base.xspeed = 0;
    if (star->base.flags & 1)
        star->base.xspeed = -star->base.xspeed;
    star->kirbyAbility = star->object->subtype2; // e.g. KIRBY_ABILITY_SWORD when battling dark meta knight
}

static void sub_080A8F64(struct Object2 *star)
{
    if (!star->unk83)
    {
        if (star->base.flags & 2)
        {
            star->base.xspeed = 0x80;
            star->base.yspeed = 0x80;
            if (star->object->subtype1 & 1)
                star->base.yspeed = -star->base.yspeed;
            if (star->object->subtype1 & 2)
                star->base.xspeed = 0;
            if (star->base.flags & 1)
                star->base.xspeed = -star->base.xspeed;
            star->unk83 = 1;
        }
    }
    else if (star->unk83 == 1)
    {
        star->base.flags |= 4;
        if (star->base.flags & 2)
        {
            if (++star->base.counter > 3)
                star->unk83 = 2;
        }
        if (star->base.unk1 == 0xC)
        {
            star->base.xspeed = 0;
            star->base.yspeed = 0;
        }
    }
    else
    {
        if (star->base.flags & 2)
        {
            star->base.flags |= 0x1000;
            return;
        }
    }
    if (star->base.counter <= 0x2D)
        ++star->base.counter;
}

void sub_080A9038(struct Kirby *kirby, bool8 a2)
{
    u8 type = OBJ_ABILITY_STAR_1;
    s32 x, y;
    struct Object2 *star;

    if (kirby->base.base.base.flags & 1)
        x = kirby->base.base.base.x >> 8;
    else
        x = kirby->base.base.base.x >> 8;
    y = kirby->base.base.base.y >> 8;
    if (kirby->ability == KIRBY_ABILITY_MASTER)
        type = OBJ_ABILITY_STAR_2;
    star = CreateObjTemplateAndObj(kirby->base.base.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, type,
        kirby->ability, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    star->base.parent = kirby;
    if (!a2) star->unk9E = kirby->unkF0 & 3;
    if (kirby->base.base.base.flags & 1)
        star->base.flags |= 1;
    sub_0808AE30(&kirby->base.base.base, 0, 0x2A9, 0);
}

#include "king_golem.h"
#include "object.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "treasures.h"

static void sub_080DA540(struct KingGolem *);
static struct Object4 *sub_080DA68C(struct KingGolem *);
static void sub_080DA768(void);
static void sub_080DAB00(void);
static void sub_080DB1B8(struct KingGolem *, u8);
static void sub_080DB640(struct KingGolem *);
static void sub_080DB664(struct KingGolem *);
static void sub_080DB694(struct KingGolem *);
static void sub_080DB6BC(struct KingGolem *);
static void sub_080DB6DC(struct KingGolem *);
static void sub_080DB754(struct KingGolem *);
static void sub_080DB774(struct KingGolem *);
static void sub_080DB790(struct KingGolem *);
static void sub_080DB7DC(struct KingGolem *);
static void sub_080DB7FC(struct KingGolem *);
static void sub_080DB85C(struct KingGolem *);

const struct Unk_02021590 gUnk_083563E8[] = {
    { 0x303, 0, 0 },
    { 0x303, 1, 0 },
    { 0x303, 2, 0 },
    { 0x303, 3, 0 },
    { 0x303, 4, 0 },
    { 0x303, 5, 0 },
    { 0x303, 6, 0 },
    { 0x303, 7, 0 },
    { 0x303, 7, 0 },
    { 0x303, 7, 0 },
    { 0x303, 8, 0 },
    { 0x303, 7, 0 },
    { 0x303, 7, 0 },
    { 0x303, 7, 0 },
};

const struct Unk_02021590 gUnk_083563B0[] = {
    { 0x303, 9, 0 },
};

void *CreateKingGolem(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct KingGolem), 0x1001, TASK_USE_EWRAM, ObjectDestroy);
    struct KingGolem *tmp = TaskGetStructPtr(t);
    struct KingGolem *kg1 = tmp, *kg2 = tmp;

    InitObject(&kg1->obj2, template, a2);
    kg1->obj2.base.unkC |= 1;
    kg1->obj2.base.flags |= 0x2000000;
    kg1->obj2.unk85 = 0;
    kg1->enemy = NULL;
    kg1->unkBC = 0;
    kg1->unkBE = 0;
    kg1->unkBD = 0;
    kg1->obj2.base.flags |= 0x100;
    kg1->obj2.base.flags |= 1;
    kg1->obj2.base.flags |= 0x200000;
    kg1->obj2.base.flags |= 0x100000;
    kg1->obj2.base.flags |= 0x200;
    kg1->obj2.base.flags |= 0x40;
    kg1->obj2.base.unk68 &= ~7;
    kg1->obj2.base.unk5C &= ~7;
    kg1->obj2.base.unk5C |= 3;
    kg1->obj2.base.unk5C |= 0x1080A0;
    if (gUnk_0203AD10 & 4 || HasShard(1))
        kg1->obj2.subtype = 1;
    kg1->obj2.base.x = 0xD400;
    kg1->obj2.base.y = 0xEC00;
    sub_0803E2B0(&kg1->obj2.base, -0x20, 0xC0, 0x20, 0x40);
    sub_0803E308(&kg1->obj2.base, -7, -0xE, 7, -2);
    ObjectInitSprite(&kg1->obj2);
    kg1->obj2.base.sprite.unk14 = 0x6C0;
    kg1->obj2.unk9E = 0;
    kg1->obj2.unk7C = sub_080DB85C;
    kg2->obj4 = sub_080DA68C(kg1);
    Macro_080E7D74(&kg1->obj2);
    sub_080DB640(kg1);
    return kg1;
}

static void sub_080DA2BC(struct KingGolem *kg)
{
    kg->obj2.base.flags |= 4;
    kg->obj2.kirby3 = sub_0803D368(&kg->obj2.base);
    if (!(kg->obj2.kirby3->base.base.base.unkC & 0x8000)
        && kg->obj2.base.roomId == kg->obj2.kirby3->base.base.base.roomId
        && Macro_08039430_1(&kg->obj2.kirby3->base.base.base, &kg->obj2))
    {
        Macro_081003EC(&kg->obj2, &kg->obj2.kirby3->base.base.base);
        sub_080DA4B0(kg);
        kg->obj2.unk78 = sub_080DB664;
        kg->obj2.base.flags &= ~0x200;
        Macro_08100F18(&kg->obj2);
    }
}

void sub_080DA4B0(struct KingGolem *kg)
{
    kg->obj2.base.counter = 0;
    kg->obj2.unk9F = 0;
    kg->obj2.unk9E = 0;
    kg->obj2.unk83 = 0;
    kg->obj2.base.flags |= 0x100;
    if (kg->obj2.unk80 <= 0)
    {
        kg->obj2.base.counter = 0;
        kg->obj2.base.flags |= 0x200;
        kg->obj2.unk83 = 5;
        kg->obj2.unk78 = sub_080DB694;
    }
    else
    {
        kg->obj2.unk78 = sub_080DA540;
        if (kg->obj2.subtype || kg->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
            kg->obj2.base.counter = 0x10;
        else
            kg->obj2.base.counter = 0x30;
    }
}

static void sub_080DA540(struct KingGolem *kg1)
{
    struct KingGolem *kg2 = kg1;
    
    kg1->obj2.base.flags |= 4;
    if (kg1->obj2.unk83 == 4)
    {
        if (++kg1->obj2.unk9E > 0x2A)
            kg1->obj2.unk83 = 0;
    }
    else
        kg1->obj2.unk9E = 0;
    if (!--kg2->obj2.base.counter)
    {
        ++kg2->obj2.unk9F;
        if (kg2->obj2.subtype || kg2->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
            kg2->obj2.base.counter = 0x10;
        else
            kg2->obj2.base.counter = 0x30;
        if (!(Rand16() & 1) || kg2->obj2.unk9F > 3)
        {
            if (kg2->obj2.unk80 <= gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1
                && ((Rand16() & 1) || !kg2->obj2.unk85))
            {
                kg2->obj2.unk85 = 1;
                if (!kg1->enemy)
                    sub_080DB6BC(kg2);
                else
                    sub_080DB790(kg2);
            }
            else
                sub_080DB790(kg2);
        }
    }
    ++kg1->unkBE;
}

static struct Object4 *sub_080DA68C(struct KingGolem *kg)
{
    struct Task *t = TaskCreate(sub_080DA768, sizeof(struct Object4), 0x1000, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = kg->obj2.base.x;
    obj4->y = kg->obj2.base.y;
    obj4->parent = kg;
    obj4->roomId = kg->obj2.base.roomId;
    sub_080709F8(obj4, &obj4->sprite, 0x1E, 0x303, 7, 0x1B);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x303, 1);
    return obj4;
}

static void sub_080DA768(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct KingGolem *kg1 = obj4->parent, *kg2 = kg1, *kg3;
    struct Sprite sprite;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kg1->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_0809E55C(obj4);
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x1E, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x303, !obj4->sprite.palId);
        kg3 = obj4->parent;
        if (kg3)
        {
            if (kg3->obj2.base.unk0 && kg3->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                kg3 = NULL;
            }
            if (!kg3)
                goto label;
            if (Macro_0810B1F4(&kg3->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        if (kg1->obj2.unk78 == sub_080DB7DC)
        {
            kg2->unkBD = 0;
            kg2->unkBC = 0;
            obj4->unk8 = 1;
            if (kg1->obj2.subtype || kg1->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
            {
                if (!(Rand16() & 3)) obj4->unk8 = 2;
            }
            else
            {
                if (Rand16() & 1) obj4->unk8 = 2;
            }
            obj4->sprite.animId = 0x303;
            obj4->sprite.variant = 8;
            gCurTask->main = sub_080DAB00;
        }
        sub_0806FAC8(obj4);
        if (kg1->obj2.unk83 == 6)
            obj4->flags |= 4;
    }
}

static void sub_080DAB00(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct KingGolem *kg1 = obj4->parent, *kg2 = kg1, *kg3;
    struct Sprite sprite;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kg1->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_0809E55C(obj4);
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x1E, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x303, !obj4->sprite.palId);
        kg3 = obj4->parent;
        if (kg3)
        {
            if (kg3->obj2.base.unk0 && kg3->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                kg3 = NULL;
            }
            if (!kg3)
                goto label;
            if (Macro_0810B1F4(&kg3->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        if (obj4->unk4 == 0x12)
        {
            if (kg2->unkBD)
            {
                sub_080DB1B8(kg1, 0);
                switch (obj4->unk8)
                {
                default:
                case 1:
                    if (kg1->obj2.subtype)
                        sub_080DB1B8(kg1, 1);
                    else
                        sub_080DB1B8(kg1, 0);
                    break;
                case 2:
                    if (kg1->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
                    {
                        if (kg1->obj2.subtype)
                            sub_080DB1B8(kg1, 1);
                        else
                            sub_080DB1B8(kg1, 0);
                    }
                    break;
                }
                PlaySfx(&kg1->obj2.base, SE_08D5992C);
            }
            else
            {
                sub_080DB1B8(kg1, 0);
                PlaySfx(&kg1->obj2.base, SE_08D5992C);
            }
            sub_0806FE64(2, &kg1->obj2.base);
        }
        if (obj4->flags & 2 && kg2->unkBD >= obj4->unk8 && obj4->unk4 > 0x64)
        {
            if (kg1->obj2.unk80 > 0)
                sub_080DA4B0(kg1);
            kg2->unkBC = 0;
            obj4->unk4 = 0;
            obj4->sprite.animId = 0x303;
            obj4->sprite.variant = 7;
            gCurTask->main = sub_080DA768;
        }
        if (obj4->unk1 == 0x20 && kg2->unkBD < obj4->unk8)
        {
            ++kg2->unkBD;
            obj4->flags |= 4;
            obj4->unk4 = 0;
            kg1->obj2.base.flags |= 4;
            obj4->flags &= ~2;
        }
        sub_0806FAC8(obj4);
        ++obj4->unk4;
    }
}

void *CreateKingGolemRockOrGordo(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2 = TaskGetStructPtr(t);

    InitObject(obj2, template, a2);
    obj2->base.flags |= 0x140;
    obj2->base.unkC |= 2;
    if (obj2->type == OBJ_KING_GOLEM_GORDO)
    {
        obj2->base.flags |= 0x8000;
        obj2->base.flags |= 0x4000;
        obj2->base.unk5C |= 0x108020;
        obj2->base.unk5C &= ~7;
        obj2->base.unk5C |= 6;
    }
    sub_0803E2B0(&obj2->base, -4, -4, 4, 4);
    sub_0803E308(&obj2->base, -7, -5, 7, 7);
    ObjectInitSprite(obj2);
    gUnk_08351648[obj2->type].unk10(obj2);
    obj2->unk9E = 0;
    obj2->unk7C = sub_0809F840;
    return obj2;
}

static void sub_080DB0FC(struct Object2 *obj2)
{
    obj2->base.flags |= 4;
    if (obj2->base.xspeed < 0)
    {
        obj2->base.xspeed += 4;
        if (obj2->base.xspeed > 0)
            obj2->base.xspeed = 0;
    }
    else
    {
        obj2->base.xspeed -= 4;
        if (obj2->base.xspeed < 0)
            obj2->base.xspeed = 0;
    }
    if (obj2->base.y > 0x12800)
    {
        if (obj2->unk85 == 1)
        {
            if (obj2->subtype && obj2->base.xspeed)
            {
                obj2->base.flags |= 0x100;
                obj2->unk85 = 2;
                obj2->base.unk62 = 0;
                obj2->base.yspeed = 0x180;
            }
        }
        else if (!obj2->unk85)
        {
            obj2->unk85 = 1;
            obj2->base.yspeed = 0x1A0;
            obj2->base.sprite.unk1C = 0x20;
            if (obj2->base.flags & 1)
                obj2->base.xspeed = 0x100;
            else
                obj2->base.xspeed = -0x100;
        }
    }
}

static void sub_080DB1B8(struct KingGolem *kg, u8 a2)
{
    u8 type = OBJ_KING_GOLEM_ROCK;
    s32 x, y;
    u16 r3;
    struct Object2 *obj2;

    if (a2) type = OBJ_KING_GOLEM_GORDO;
    x = kg->obj2.base.x >> 8;
    y = kg->obj2.base.y >> 8;
    if (kg->obj2.subtype || kg->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
    {
        r3 = RandLessThan(6);
        while ((kg->unkBC >> r3) & 1) // why not use do while?
            r3 = RandLessThan(6);
        x = ({x - 0x32;}) - 0x1A * r3;
        y = ({y - 0x1C;}) - (Rand16() & 0x18);
    }
    else
    {
        r3 = RandLessThan(4);
        while ((kg->unkBC >> r3) & 1)
            r3 = RandLessThan(4);
        x = ({x - 0x3A;}) - 0x2A * r3;
        y = ({y - 0x1C;}) - (Rand16() & 0x18);
    }
    kg->unkBC |= 1 << r3;
    obj2 = CreateObjTemplateAndObj(kg->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, type,
        0, 0, kg->obj2.object->subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj2->base.parent = kg;
}

static void sub_080DB43C(struct KingGolem *kg1)
{
    struct KingGolem *kg2 = kg1;
    s32 x, y;
    u8 r;
    
    while ((r = Rand16() & 3) == 3)
        ;
    x = (kg1->obj2.base.x >> 8) - 0x10;
    y = (kg1->obj2.base.y >> 8) + 0x28;
    kg2->enemy = CreateObjTemplateAndObj((({ while (0) ; }), kg1->obj2.base.unk56), 1, 0x24, x, y, 0, 0x1F, 0, 0, r + OBJ_GOLEM_1,
        0x80, 0, kg1->obj2.object->subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); // TODO: solve stack mislocation
    kg2->enemy->base.parent = kg2;
    PlaySfx(&kg1->obj2.base, SE_08D59980);
}

void sub_080DB5E0(struct Object2 *obj2)
{
    obj2->base.counter = 0;
    obj2->unk83 = 0;
    if (Rand16() & 1)
        obj2->base.flags |= 1;
    obj2->base.flags |= 8;
    obj2->base.flags |= 0x100;
    obj2->base.flags |= 0x200;
    obj2->unk85 = 0;
    obj2->unk78 = sub_080DB7FC;
}

static void sub_080DB640(struct KingGolem *kg)
{
    ObjectSetFunc(kg, 0, sub_080DA2BC);
    kg->obj2.base.xspeed = 0;
    kg->obj2.base.yspeed = 0;
}

static void sub_080DB664(struct KingGolem *kg)
{
    if (kg->obj2.unk83 != 4)
        kg->obj2.base.flags |= 4;
    if (++kg->obj2.base.counter > 0x3C)
    {
        kg->obj2.base.counter = 0;
        sub_080DA4B0(kg);
    }
}

static void sub_080DB694(struct KingGolem *kg)
{
    if (kg->obj2.base.counter > 0x23)
    {
        kg->obj2.base.flags |= 4;
        kg->obj2.unk83 = 6;
    }
    ++kg->obj2.base.counter;
}

static void sub_080DB6BC(struct KingGolem *kg)
{
    kg->obj2.base.counter = 0;
    kg->obj2.unk83 = 1;
    kg->obj2.base.flags |= 0x100;
    kg->obj2.unk78 = sub_080DB6DC;
}

static void sub_080DB6DC(struct KingGolem *kg)
{
    if (++kg->obj2.base.counter == 8)
    {
        sub_0806FE64(2, &kg->obj2.base);
        sub_080DB43C(kg);
    }
    if (kg->obj2.subtype || kg->obj2.unk80 < gUnk_08351530[0xE][gUnk_0203AD30 - 1] >> 1)
    {
        if (kg->obj2.base.counter > 0x38)
            sub_080DB754(kg);
    }
    else if (kg->obj2.base.counter > 0x52)
        sub_080DB754(kg);
}

static void sub_080DB754(struct KingGolem *kg)
{
    kg->obj2.base.counter = 0;
    kg->obj2.unk83 = 2;
    kg->obj2.base.flags |= 0x100;
    kg->obj2.unk78 = sub_080DB774;
}

static void sub_080DB774(struct KingGolem *kg)
{
    if (++kg->obj2.base.counter > 4)
        sub_080DA4B0(kg);
}

static void sub_080DB790(struct KingGolem *kg)
{
    struct KingGolem *kg2 = kg;

    if ((kg2->obj2.subtype && kg->unkBE < 0x38)
        || (!kg2->obj2.subtype && kg->unkBE < 0x58))
        return;
    kg2->unkBE = 0;
    kg->obj2.base.counter = 0;
    kg->obj2.unk83 = 3;
    kg->obj2.base.flags |= 0x100;
    kg->obj2.unk78 = sub_080DB7DC;
}

static void sub_080DB7DC(struct KingGolem *kg)
{
    if (++kg->obj2.base.counter > 0x3E7)
        sub_080DA4B0(kg);
}

static void sub_080DB7FC(struct KingGolem *kg)
{
    if (!(++kg->obj2.base.counter & 3))
        kg->obj2.base.flags ^= 0x400;
    if ((kg->obj2.base.counter == 0x24 && kg->obj2.subtype)
        || (kg->obj2.base.counter == 0x3C && !kg->obj2.subtype))
    {
        kg->obj2.base.counter = 0;
        kg->obj2.base.flags &= ~0x400;
        kg->obj2.base.flags &= ~0xA48;
        kg->obj2.unk78 = sub_080DB0FC;
    }
}

static void sub_080DB85C(struct KingGolem *kg)
{
    if (!Macro_0810B1F4(&kg->obj2.base)
        && kg->obj2.base.unkC & 0x20)
        kg->obj2.unk83 = gUnk_08351648[kg->obj2.type].unk0;
}

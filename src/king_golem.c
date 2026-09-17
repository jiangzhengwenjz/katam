#include "king_golem.h"
#include "object.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "treasures.h"
#include "code_0806F780.h"

static void sub_080DA540(struct KingGolem *);
static struct EffectObject *sub_080DA68C(struct KingGolem *);
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

const struct AnimInfo gUnk_083563E8[] = {
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

const struct AnimInfo gUnk_083563B0[] = {
    { 0x303, 9, 0 },
};

void *CreateKingGolem(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct KingGolem), 0x1001, TASK_USE_EWRAM, ObjectDestroy);
    struct KingGolem *tmp = TaskGetStructPtr(t);
    struct KingGolem *kg1 = tmp, *kg2 = tmp;

    InitObject(&kg1->obj, template, a2);
    kg1->obj.base.unkC |= 1;
    kg1->obj.base.flags |= 0x2000000;
    kg1->obj.unk85 = 0;
    kg1->enemy = NULL;
    kg1->unkBC = 0;
    kg1->unkBE = 0;
    kg1->unkBD = 0;
    kg1->obj.base.flags |= 0x100;
    kg1->obj.base.flags |= 1;
    kg1->obj.base.flags |= 0x200000;
    kg1->obj.base.flags |= 0x100000;
    kg1->obj.base.flags |= 0x200;
    kg1->obj.base.flags |= 0x40;
    kg1->obj.base.unk68 &= ~7;
    kg1->obj.base.unk5C &= ~7;
    kg1->obj.base.unk5C |= 3;
    kg1->obj.base.unk5C |= 0x1080A0;
    if (gUnk_0203AD10 & 4 || HasShard(1))
        kg1->obj.subtype = 1;
    kg1->obj.base.x = 0xD400;
    kg1->obj.base.y = 0xEC00;
    sub_0803E2B0(&kg1->obj.base, -0x20, 0xC0, 0x20, 0x40);
    ObjectSetBounds(&kg1->obj.base, -7, -0xE, 7, -2);
    ObjectInitSprite(&kg1->obj);
    kg1->obj.base.sprite.unk14 = 0x6C0;
    kg1->obj.unk9E = 0;
    kg1->obj.unk7C = sub_080DB85C;
    kg2->effect = sub_080DA68C(kg1);
    Macro_080E7D74(&kg1->obj);
    sub_080DB640(kg1);
    return kg1;
}

static void sub_080DA2BC(struct KingGolem *kg)
{
    kg->obj.base.flags |= 4;
    kg->obj.kirby3 = FindTargetKirby(&kg->obj.base);
    if (!(kg->obj.kirby3->base.unkC & 0x8000)
        && kg->obj.base.roomId == kg->obj.kirby3->base.roomId
        && Macro_08039430_1(&kg->obj.kirby3->base, &kg->obj))
    {
        Macro_081003EC(&kg->obj, &kg->obj.kirby3->base);
        sub_080DA4B0(kg);
        kg->obj.unk78 = sub_080DB664;
        kg->obj.base.flags &= ~0x200;
        Macro_08100F18(&kg->obj);
    }
}

void sub_080DA4B0(struct KingGolem *kg)
{
    kg->obj.base.counter = 0;
    kg->obj.unk9F = 0;
    kg->obj.unk9E = 0;
    kg->obj.unk83 = 0;
    kg->obj.base.flags |= 0x100;
    if (kg->obj.unk80 <= 0)
    {
        kg->obj.base.counter = 0;
        kg->obj.base.flags |= 0x200;
        kg->obj.unk83 = 5;
        kg->obj.unk78 = sub_080DB694;
    }
    else
    {
        kg->obj.unk78 = sub_080DA540;
        if (kg->obj.subtype || kg->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
            kg->obj.base.counter = 0x10;
        else
            kg->obj.base.counter = 0x30;
    }
}

static void sub_080DA540(struct KingGolem *kg1)
{
    struct KingGolem *kg2 = kg1;
    
    kg1->obj.base.flags |= 4;
    if (kg1->obj.unk83 == 4)
    {
        if (++kg1->obj.unk9E > 0x2A)
            kg1->obj.unk83 = 0;
    }
    else
        kg1->obj.unk9E = 0;
    if (!--kg2->obj.base.counter)
    {
        ++kg2->obj.unk9F;
        if (kg2->obj.subtype || kg2->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
            kg2->obj.base.counter = 0x10;
        else
            kg2->obj.base.counter = 0x30;
        if (!(Rand16() & 1) || kg2->obj.unk9F > 3)
        {
            if (kg2->obj.unk80 <= gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1
                && ((Rand16() & 1) || !kg2->obj.unk85))
            {
                kg2->obj.unk85 = 1;
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

static struct EffectObject *sub_080DA68C(struct KingGolem *kg)
{
    struct Task *t = TaskCreate(sub_080DA768, sizeof(struct EffectObject), 0x1000, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kg->obj.base.x;
    effect->y = kg->obj.base.y;
    effect->parent = kg;
    effect->roomId = kg->obj.base.roomId;
    EffectObjectInitSprite(effect, &effect->sprite, 0x1E, 0x303, 7, 0x1B);
    effect->sprite.palId = 0;
    Macro_081050E8(effect, &effect->sprite, 0x303, 0, 1);
    return effect;
}

static void sub_080DA768(void)
{
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct KingGolem *kg1 = effect->parent, *kg2 = kg1, *kg3;
    struct Sprite sprite;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kg1->obj.base.flags & 0x1000)
        effect->flags |= 0x1000;
    else
    {
        Macro_0809E55C(effect);
        Macro_08107BA8_4(effect, &effect->sprite, &sprite, 0x1E, &effect->sprite);
        Macro_081050E8(effect, &effect->sprite, 0x303, 0, !effect->sprite.palId);
        kg3 = effect->parent;
        if (kg3)
        {
            if (kg3->obj.base.header.kind && kg3->obj.base.flags & 0x1000)
            {
                effect->parent = NULL;
                kg3 = NULL;
            }
            if (!kg3)
                goto label;
            if (Macro_0810B1F4(&kg3->obj.base) && !(effect->flags & 0x2000))
            {
                EffectObjectDisplaySprite(effect);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(effect);
        }
        if (kg1->obj.unk78 == sub_080DB7DC)
        {
            kg2->unkBD = 0;
            kg2->unkBC = 0;
            effect->unk8 = 1;
            if (kg1->obj.subtype || kg1->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
            {
                if (!(Rand16() & 3)) effect->unk8 = 2;
            }
            else
            {
                if (Rand16() & 1) effect->unk8 = 2;
            }
            effect->sprite.animId = 0x303;
            effect->sprite.variant = 8;
            gCurTask->main = sub_080DAB00;
        }
        EffectObjectPostUpdate(effect);
        if (kg1->obj.unk83 == 6)
            effect->flags |= 4;
    }
}

static void sub_080DAB00(void)
{
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct KingGolem *kg1 = effect->parent, *kg2 = kg1, *kg3;
    struct Sprite sprite;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kg1->obj.base.flags & 0x1000)
        effect->flags |= 0x1000;
    else
    {
        Macro_0809E55C(effect);
        Macro_08107BA8_4(effect, &effect->sprite, &sprite, 0x1E, &effect->sprite);
        Macro_081050E8(effect, &effect->sprite, 0x303, 0, !effect->sprite.palId);
        kg3 = effect->parent;
        if (kg3)
        {
            if (kg3->obj.base.header.kind && kg3->obj.base.flags & 0x1000)
            {
                effect->parent = NULL;
                kg3 = NULL;
            }
            if (!kg3)
                goto label;
            if (Macro_0810B1F4(&kg3->obj.base) && !(effect->flags & 0x2000))
            {
                EffectObjectDisplaySprite(effect);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(effect);
        }
        if (effect->unk4 == 0x12)
        {
            if (kg2->unkBD)
            {
                sub_080DB1B8(kg1, 0);
                switch (effect->unk8)
                {
                default:
                case 1:
                    if (kg1->obj.subtype)
                        sub_080DB1B8(kg1, 1);
                    else
                        sub_080DB1B8(kg1, 0);
                    break;
                case 2:
                    if (kg1->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
                    {
                        if (kg1->obj.subtype)
                            sub_080DB1B8(kg1, 1);
                        else
                            sub_080DB1B8(kg1, 0);
                    }
                    break;
                }
                PlaySfx(&kg1->obj.base, SE_KING_GOLEM_HAND_SLAM);
            }
            else
            {
                sub_080DB1B8(kg1, 0);
                PlaySfx(&kg1->obj.base, SE_KING_GOLEM_HAND_SLAM);
            }
            RequestScreenShake(2, &kg1->obj.base);
        }
        if (effect->flags & 2 && kg2->unkBD >= effect->unk8 && effect->unk4 > 0x64)
        {
            if (kg1->obj.unk80 > 0)
                sub_080DA4B0(kg1);
            kg2->unkBC = 0;
            effect->unk4 = 0;
            effect->sprite.animId = 0x303;
            effect->sprite.variant = 7;
            gCurTask->main = sub_080DA768;
        }
        if (effect->header.unk1 == 0x20 && kg2->unkBD < effect->unk8)
        {
            ++kg2->unkBD;
            effect->flags |= 4;
            effect->unk4 = 0;
            kg1->obj.base.flags |= 4;
            effect->flags &= ~2;
        }
        EffectObjectPostUpdate(effect);
        ++effect->unk4;
    }
}

void *CreateKingGolemRockOrGordo(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *obj = TaskGetStructPtr(t);

    InitObject(obj, template, a2);
    obj->base.flags |= 0x140;
    obj->base.unkC |= 2;
    if (obj->type == OBJ_KING_GOLEM_GORDO)
    {
        obj->base.flags |= 0x8000;
        obj->base.flags |= 0x4000;
        obj->base.unk5C |= 0x108020;
        obj->base.unk5C &= ~7;
        obj->base.unk5C |= 6;
    }
    sub_0803E2B0(&obj->base, -4, -4, 4, 4);
    ObjectSetBounds(&obj->base, -7, -5, 7, 7);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = sub_0809F840;
    return obj;
}

static void sub_080DB0FC(struct Object *obj)
{
    obj->base.flags |= 4;
    if (obj->base.xspeed < 0)
    {
        obj->base.xspeed += 4;
        if (obj->base.xspeed > 0)
            obj->base.xspeed = 0;
    }
    else
    {
        obj->base.xspeed -= 4;
        if (obj->base.xspeed < 0)
            obj->base.xspeed = 0;
    }
    if (obj->base.y > 0x12800)
    {
        if (obj->unk85 == 1)
        {
            if (obj->subtype && obj->base.xspeed)
            {
                obj->base.flags |= 0x100;
                obj->unk85 = 2;
                obj->base.unk62 = 0;
                obj->base.yspeed = 0x180;
            }
        }
        else if (!obj->unk85)
        {
            obj->unk85 = 1;
            obj->base.yspeed = 0x1A0;
            obj->base.sprite.unk1C = 0x20;
            if (obj->base.flags & 1)
                obj->base.xspeed = 0x100;
            else
                obj->base.xspeed = -0x100;
        }
    }
}

static void sub_080DB1B8(struct KingGolem *kg, u8 a2)
{
    u8 type = OBJ_KING_GOLEM_ROCK;
    s32 x, y;
    u16 r3;
    struct Object *obj;

    if (a2) type = OBJ_KING_GOLEM_GORDO;
    x = kg->obj.base.x >> 8;
    y = kg->obj.base.y >> 8;
    if (kg->obj.subtype || kg->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
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
    obj = CreateObjTemplateAndObj(kg->obj.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, type,
        0, 0, kg->obj.objTemplate->subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj->base.parent = kg;
}

static void sub_080DB43C(struct KingGolem *kg1)
{
    struct KingGolem *kg2 = kg1;
    s32 x, y;
    u8 r;
    
    while ((r = Rand16() & 3) == 3)
        ;
    x = (kg1->obj.base.x >> 8) - 0x10;
    y = (kg1->obj.base.y >> 8) + 0x28;
    kg2->enemy = CreateObjTemplateAndObj((({ while (0) ; }), kg1->obj.base.unk56), 1, 0x24, x, y, 0, 0x1F, 0, 0, r + OBJ_GOLEM_1,
        0x80, 0, kg1->obj.objTemplate->subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); // TODO: solve stack mislocation
    kg2->enemy->base.parent = kg2;
    PlaySfx(&kg1->obj.base, SE_KING_GOLEM_SPAWN_GOLEM);
}

void sub_080DB5E0(struct Object *obj)
{
    obj->base.counter = 0;
    obj->unk83 = 0;
    if (Rand16() & 1)
        obj->base.flags |= 1;
    obj->base.flags |= 8;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x200;
    obj->unk85 = 0;
    obj->unk78 = sub_080DB7FC;
}

static void sub_080DB640(struct KingGolem *kg)
{
    ObjectSetFunc(kg, 0, sub_080DA2BC);
    kg->obj.base.xspeed = 0;
    kg->obj.base.yspeed = 0;
}

static void sub_080DB664(struct KingGolem *kg)
{
    if (kg->obj.unk83 != 4)
        kg->obj.base.flags |= 4;
    if (++kg->obj.base.counter > 0x3C)
    {
        kg->obj.base.counter = 0;
        sub_080DA4B0(kg);
    }
}

static void sub_080DB694(struct KingGolem *kg)
{
    if (kg->obj.base.counter > 0x23)
    {
        kg->obj.base.flags |= 4;
        kg->obj.unk83 = 6;
    }
    ++kg->obj.base.counter;
}

static void sub_080DB6BC(struct KingGolem *kg)
{
    kg->obj.base.counter = 0;
    kg->obj.unk83 = 1;
    kg->obj.base.flags |= 0x100;
    kg->obj.unk78 = sub_080DB6DC;
}

static void sub_080DB6DC(struct KingGolem *kg)
{
    if (++kg->obj.base.counter == 8)
    {
        RequestScreenShake(2, &kg->obj.base);
        sub_080DB43C(kg);
    }
    if (kg->obj.subtype || kg->obj.unk80 < gUnk_08351530[0xE][gNumHumanPlayers - 1] >> 1)
    {
        if (kg->obj.base.counter > 0x38)
            sub_080DB754(kg);
    }
    else if (kg->obj.base.counter > 0x52)
        sub_080DB754(kg);
}

static void sub_080DB754(struct KingGolem *kg)
{
    kg->obj.base.counter = 0;
    kg->obj.unk83 = 2;
    kg->obj.base.flags |= 0x100;
    kg->obj.unk78 = sub_080DB774;
}

static void sub_080DB774(struct KingGolem *kg)
{
    if (++kg->obj.base.counter > 4)
        sub_080DA4B0(kg);
}

static void sub_080DB790(struct KingGolem *kg)
{
    struct KingGolem *kg2 = kg;

    if ((kg2->obj.subtype && kg->unkBE < 0x38)
        || (!kg2->obj.subtype && kg->unkBE < 0x58))
        return;
    kg2->unkBE = 0;
    kg->obj.base.counter = 0;
    kg->obj.unk83 = 3;
    kg->obj.base.flags |= 0x100;
    kg->obj.unk78 = sub_080DB7DC;
}

static void sub_080DB7DC(struct KingGolem *kg)
{
    if (++kg->obj.base.counter > 0x3E7)
        sub_080DA4B0(kg);
}

static void sub_080DB7FC(struct KingGolem *kg)
{
    if (!(++kg->obj.base.counter & 3))
        kg->obj.base.flags ^= 0x400;
    if ((kg->obj.base.counter == 0x24 && kg->obj.subtype)
        || (kg->obj.base.counter == 0x3C && !kg->obj.subtype))
    {
        kg->obj.base.counter = 0;
        kg->obj.base.flags &= ~0x400;
        kg->obj.base.flags &= ~0xA48;
        kg->obj.unk78 = sub_080DB0FC;
    }
}

static void sub_080DB85C(struct KingGolem *kg)
{
    if (!Macro_0810B1F4(&kg->obj.base)
        && kg->obj.base.unkC & 0x20)
        kg->obj.unk83 = gUnk_08351648[kg->obj.type].unk0;
}

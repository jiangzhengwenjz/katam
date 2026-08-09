#include "cutscene_trigger.h"
#include "functions.h"
#include "code_0806F780.h"
#include "kirby.h"
#include "multi_08030C94.h"
#include "object.h"
#include "random.h"
#include "save.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "constants/object_types.h"

static void sub_08020798(struct CutsceneTrigger0 *);
static void sub_0802084C(struct CutsceneTrigger0 *);
static void sub_08020A90(struct CutsceneTrigger0 *);
static void sub_08020DDC(struct CutsceneTrigger0 *);
static void sub_08020FA8(struct CutsceneTrigger0 *);
static void sub_0802114C(struct CutsceneTrigger0 *);
static void sub_080212C0(struct CutsceneTrigger0 *);
static void sub_08021360(struct CutsceneTrigger0 *);
static void sub_08021424(struct CutsceneTrigger1 *);
static void sub_080214E4(struct CutsceneTrigger1 *);
static void sub_080215B4(struct CutsceneTrigger1 *);
static void sub_08021634(struct CutsceneTrigger1 *);
static void sub_0802172C(struct CutsceneTrigger2 *);
static void sub_08021844(struct CutsceneTrigger2 *);
static void sub_08021984(struct CutsceneTrigger2 *);
static void sub_08021DD4(struct Task *);
static void sub_08021EB0(struct CutsceneTrigger4 *);
static void sub_08022090(struct CutsceneTrigger4 *);
static void sub_08022104(struct CutsceneTrigger4 *);
static void sub_08022174(struct CutsceneTrigger5 *);
static void sub_08022350(struct CutsceneTrigger5 *);
static void sub_0802262C(struct CutsceneTrigger5 *);
static void sub_080226C4(struct CutsceneTrigger5 *);
static void sub_08022770(struct CutsceneTrigger5 *);
static void sub_080229E4(struct CutsceneTrigger5 *);
static void sub_08022A90(struct CutsceneTrigger5 *);
static void sub_08022B74(struct CutsceneTrigger5 *);
static void sub_08022C9C(struct CutsceneTrigger5 *);
static void sub_08022D78(struct CutsceneTrigger5 *);
static void sub_08022E6C(struct CutsceneTrigger0 *);
static void sub_08022E80(struct CutsceneTrigger0 *);
static void sub_08022EA0(struct CutsceneTrigger0 *);
static void sub_08022EB4(struct CutsceneTrigger1 *);
static void sub_08022ECC(struct CutsceneTrigger1 *);
static void sub_08022EE0(struct CutsceneTrigger1 *);
static void sub_08022EF8(struct CutsceneTrigger1 *);
static void sub_08022F0C(struct CutsceneTrigger2 *);
static void sub_08022F24(struct CutsceneTrigger4 *);
static void sub_08022F50(struct CutsceneTrigger4 *);
static void sub_08022F64(struct CutsceneTrigger4 *);
static void sub_08022F88(struct CutsceneTrigger4 *);
static void sub_08022FB8(struct CutsceneTrigger4 *);
static void sub_08022FDC(struct CutsceneTrigger4 *);
static void sub_08023030(struct CutsceneTrigger4 *);
static void sub_08023054(struct CutsceneTrigger4 *);
static void sub_08023068(struct CutsceneTrigger4 *);
static void sub_080230A0(struct Object2 *);
static void sub_080230DC(struct CutsceneTrigger5 *);
static void sub_08023100(struct CutsceneTrigger5 *);
static void sub_08023154(struct CutsceneTrigger5 *);
static void sub_08023168(struct CutsceneTrigger5 *);
static void sub_0802318C(struct CutsceneTrigger5 *);
static void sub_080231C0(struct CutsceneTrigger5 *);
static void sub_08023238(struct CutsceneTrigger5 *);
static void sub_08023268(struct CutsceneTrigger5 *);
static void sub_0802327C(struct CutsceneTrigger5 *);
static void sub_080232A0(struct CutsceneTrigger5 *);
static void sub_080232BC(struct CutsceneTrigger5 *);
static void sub_080232E4(struct CutsceneTrigger5 *);
static void sub_080232F8(struct CutsceneTrigger5 *);
static void sub_0802331C(struct CutsceneTrigger5 *);
static void sub_08023368(struct CutsceneTrigger5 *);
static void sub_08023394(struct CutsceneTrigger5 *);
static void sub_080233A8(struct CutsceneTrigger5 *);
static void sub_080233E0(struct Object2 *);
static void sub_08023414(struct Object2 *);
static void nullsub_113(struct Object2 *);
static void sub_08023438(struct CutsceneTrigger0 *);
static void sub_0802347C(struct CutsceneTrigger0 *);
static void sub_080234C4(struct CutsceneTrigger0 *);
static void sub_080234E4(struct CutsceneTrigger1 *);
static void sub_08023504(struct CutsceneTrigger1 *);
static void sub_08023524(struct CutsceneTrigger1 *);
static void sub_08023544(struct CutsceneTrigger2 *);
static void sub_0802356C(struct CutsceneTrigger0 *);
static void sub_08023580(struct CutsceneTrigger1 *);
static void sub_08023594(struct CutsceneTrigger1 *);
static void sub_080235BC(struct CutsceneTrigger1 *);
static void sub_0802360C(struct CutsceneTrigger2 *);
static void sub_08023644(struct CutsceneTrigger1 *);
static void sub_08023664(struct CutsceneTrigger1 *);
static void sub_08023698(struct CutsceneTrigger1 *);
static void sub_080236CC(struct CutsceneTrigger1 *);
static void sub_080236EC(struct CutsceneTrigger1 *);
static void sub_08023714(struct CutsceneTrigger1 *);
static void sub_08023734(struct CutsceneTrigger2 *);
static void sub_08023790(struct CutsceneTrigger2 *);
static void sub_080237DC(struct CutsceneTrigger1 *);
static void sub_080237F0(struct CutsceneTrigger1 *);

void *CreateCutsceneTrigger(struct Object *template, u8 playerId)
{
    struct Task *t;
    struct Object2 *obj;
    u32 size;
    TaskDestructor dtor;

    switch (template->subtype1)
    {
    case 0:
        size = sizeof(struct CutsceneTrigger0);
        dtor = ObjectDestroy;
        break;
    case 1:
        size = sizeof(struct CutsceneTrigger1);
        dtor = ObjectDestroy;
        break;
    case 2:
        size = sizeof(struct CutsceneTrigger2);
        dtor = ObjectDestroy;
        break;
    case 4:
        size = sizeof(struct CutsceneTrigger4);
        dtor = sub_08021DD4;
        break;
    case 5:
        size = sizeof(struct CutsceneTrigger5);
        dtor = ObjectDestroy;
        break;
    case 6:
        size = sizeof(struct Object2);
        dtor = ObjectDestroy;
        break;
    }
    t = TaskCreate(ObjectMain, size, 0x3100, TASK_USE_IWRAM, dtor);
    obj = TaskGetStructPtr(t);
    CpuFill16(0, obj, size);
    InitObject(obj, template, playerId);
    obj->base.flags |= 0x2018F40;
    obj->base.unkC |= 1;
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

static void sub_08020798(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;

    trigger2->unkB4 = CreateObjTemplateAndObj(trigger->obj2.base.unk56, 1, 0x24, 0xD0, 0x88, 0, 0x1F, 0, 0,
        OBJ_SHADOW_KIRBY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    trigger2->unkCC = 0;
    trigger2->unkCE = 0;
    trigger->obj2.unk78 = sub_0802084C;
}

static void sub_0802084C(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    struct CutsceneTrigger0 *trigger3 = trigger2;
    bool32 allReady = TRUE;
    u16 count = 0;
    u16 i;

    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        if (kirby->hp <= 0)
            continue;
        if (trigger2->obj2.base.roomId != kirby->base.base.base.roomId)
            continue;
        if (!(kirby->base.base.base.flags & 0x1000000))
        {
            if (sub_0804BAD8(kirby))
            {
                kirby->base.base.base.flags = (kirby->base.base.base.flags | 0x1000000) & ~1;
                kirby->base.base.base.x = (count * -18 + 0x50) * 0x100;
                kirby->animationIndex = i + 0x4A;
            }
            allReady = FALSE;
        }
        else
        {
            if (kirby->animationIndex >= 0x4A && kirby->animationIndex <= 0x59)
            {
                if (!(kirby->base.base.base.unk62 & 4))
                {
                    kirby->animationIndex++;
                    if (kirby->animationIndex > 0x59)
                        kirby->animationIndex = 0x4A;
                }
                else
                {
                    kirby->animationIndex = 0x14;
                    kirby->base.base.base.yspeed = 0x200;
                    sub_0808925C(&kirby->base.base.base);
                    PlaySfx(&kirby->base.base.base, SE_KIRBY_BOUNCE);
                }
                allReady = FALSE;
            }
            else if (kirby->animationIndex == 0x14)
            {
                if (kirby->base.base.base.unk62 & 4)
                {
                    kirby->animationIndex = 0;
                    PlaySfx(&kirby->base.base.base, SE_KIRBY_LANDING);
                }
                allReady = FALSE;
            }
            else
                trigger3->unkCC |= 1 << i;
        }
        count++;
    }
    if (allReady)
    {
        trigger3->unkCE = count;
        trigger2->obj2.unk78 = sub_08022E6C;
    }
}

static void sub_08020A90(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    u16 i;

    if (trigger->unkD4 <= 0x63)
    {
        bool32 allDone = TRUE;
        u16 j = 0;

        for (i = 0; i < 4; i++)
        {
            struct Kirby *kirby = &gKirbys[i];

            if (!(trigger2->unkCC >> i & 1))
                continue;
            if (trigger->unkD2 == j)
            {
                allDone = FALSE;
                switch (trigger->unkD4)
                {
                case 0:
                    trigger->unkB8[0] = sub_0808B62C(&trigger2->obj2.base, 4, 0x2C3, 0, 0);
                    trigger->unkB8[0]->sprite.palId = 0;
                    Macro_081050E8(trigger->unkB8[0], &trigger->unkB8[0]->sprite, 0x2C3, trigger->unkB8[0]->sprite.palId == 0);
                    trigger->unkB8[0]->x = kirby->base.base.base.x;
                    trigger->unkB8[0]->y = kirby->base.base.base.y - 0x1400;
                    trigger->unkD0 = 0;
                    trigger->unkD4 = 1;
                    break;
                case 1:
                    if (trigger->unkD0++ > 0x1E)
                            trigger->unkD4 = 2;
                    break;
                case 2:
                    kirby->base.base.base.flags |= 1;
                    trigger->unkB8[0]->flags |= 0x1000;
                    trigger->unkB8[0] = NULL;
                    trigger->unkD0 = 0;
                    trigger->unkD4 = 3;
                    break;
                case 3:
                    if (trigger->unkD0++ > 0x10)
                    {
                            if (trigger->unkD2 + 1 != trigger->unkCE)
                            {
                                trigger->unkD2++;
                                trigger->unkD4 = 0;
                            }
                            else
                            {
                                trigger->unkD0 = 0;
                                trigger->unkD4 = 4;
                            }
                    }
                    break;
                case 4:
                    if (trigger->unkD0++ > 0x2D)
                    {
                            u16 n = 0;
                            u16 k;

                            for (k = 0; k < 4; k++)
                            {
                                if (!(trigger2->unkCC >> k & 1))
                                    continue;
                                if (n == trigger->unkCE - 1)
                                    break;
                                gKirbys[k].animationIndex = 0x17;
                                gKirbys[k].base.base.base.x -= 0x600;
                                n++;
                            }
                            trigger->unkD0 = 0;
                            trigger->unkD4 = 5;
                    }
                    break;
                case 5:
                    if (trigger->unkD0++ > 0x78)
                    {
                            trigger->unkD0 = 0;
                            trigger->unkD4 = 0;
                            trigger->unkD2++;
                    }
                    break;
                }
            }
            j++;
        }
        if (allDone)
            trigger->unkD4 = 0x64;
    }
    else switch (trigger->unkD4)
    {
        case 0x64:
        {
            u16 n = 0;
            u16 k;

            for (k = 0; k < 4; k++)
            {
                struct Kirby *kirby = &gKirbys[k];

                if (trigger2->unkCC >> k & 1)
                {
                    kirby->animationIndex = 0;
                    kirby->base.base.base.x = (n * -18 + 0x50) * 0x100;
                    kirby->base.base.base.flags &= ~1;
                    n++;
                }
            }
            trigger->unkD0 = 0;
            trigger->unkD4 = 0x65;
            break;
        }
        case 0x65:
            if (trigger2->unkD0++ > 0x3C)
                trigger2->obj2.unk78 = sub_08022E80;
            break;
    }
}

static void sub_08020DDC(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;

    if (!(trigger->unkD0 & 0xF))
    {
        u16 alt = (trigger->unkD0 >> 4) & 1;
        u16 mask;
        struct Object4 *o;

        mask = trigger->unkCE <= 2 ? 0xF : 0x1F;
        if (trigger->unkB8[alt] != NULL)
            trigger->unkB8[alt]->flags |= 0x1000;
        trigger->unkB8[alt] = sub_0808B62C(&trigger->obj2.base, 4, 0x2C3, 0, 0);
        trigger->unkB8[alt]->sprite.palId = 0;
        Macro_081050E8(trigger->unkB8[alt], &trigger->unkB8[alt]->sprite, 0x2C3, trigger->unkB8[alt]->sprite.palId == 0);
        if (alt != 0)
        {
            o = trigger2->unkB8[alt];
            o->x = ((-(trigger2->unkCE * 18) >> 1) + 0x4E + (Rand16() & mask)) * 0x100;
        }
        else
        {
            o = trigger2->unkB8[0];
            o->x = ((-(trigger2->unkCE * 18) >> 1) + 0x52 - (Rand16() & mask)) * 0x100;
        }
        trigger2->unkB8[alt]->y = (0x74 - (Rand16() & 0xF)) * 0x100;
    }
    if (trigger2->unkD0++ > 0xB4)
    {
        if (trigger2->unkB8[0] != NULL)
            trigger2->unkB8[0]->flags |= 0x1000;
        trigger2->unkB8[0] = NULL;
        if (trigger2->unkB8[1] != NULL)
            trigger2->unkB8[1]->flags |= 0x1000;
        trigger2->unkB8[1] = NULL;
        trigger->obj2.unk78 = sub_08022E80;
    }
}

static void sub_08020FA8(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    struct Object2 *comp = trigger->unkB4;
    struct LevelInfo *levelInfo = &gCurLevelInfo[gLocalPlayerId];

    if (++trigger->unkD0 > 0x3C && comp->base.xspeed != 0)
    {
        comp->base.xspeed += 0xE;
        if (comp->base.xspeed > 0)
        {
            trigger->unkC8 = sub_0808B62C(&trigger->obj2.base, 4, 0x2C3, 0, 0);
            trigger->unkC8->sprite.palId = 0;
            if (gKirbys[gLocalPlayerId].base.base.base.roomId == trigger->unkC8->roomId)
            {
                if (trigger->unkC8->sprite.palId == 0)
                {
                    trigger->unkC8->sprite.palId = sub_0803DF24(0x2C3);
                    if (trigger->unkC8->sprite.palId == 0xFF)
                        trigger->unkC8->sprite.palId = sub_0803DFAC(0x2C3, 0);
                }
            }
            else
                trigger->unkC8->sprite.palId = 0;
            trigger2->unkC8->x = comp->base.x;
            trigger2->unkC8->y = comp->base.y - 0x1400;
            comp->base.xspeed = 0;
            comp->unk83 = 0;
            comp->base.sprite.unk1C = 0x10;
        }
    }
    if (trigger2->unkD0 & 1)
    {
        levelInfo->viewportModX_44 = (Rand16() & 7) - 4;
        levelInfo->viewportModY_46 = (Rand16() & 7) - 4;
    }
    else
    {
        levelInfo->viewportModX_44 = 0;
        levelInfo->viewportModY_46 = 0;
    }
    if (comp->base.xspeed == 0 && trigger2->unkD0 > 0x78)
    {
        levelInfo->viewportModX_44 = 0;
        levelInfo->viewportModY_46 = 0;
        comp->base.xspeed = 0;
        comp->base.sprite.unk1C = 0x10;
        trigger->obj2.unk78 = sub_0802114C;
    }
}

static void sub_0802114C(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    struct CutsceneTrigger0 *trigger3 = trigger;
    struct Object2 *comp = trigger->unkB4;
    struct Object4 *o;
    u16 i;

    o = CreateEffectObject(&trigger2->obj2.base, 0, 0x292, 0);
    o->x = comp->base.x;
    o->y = comp->base.y;
    comp->unk83 = 0x13;
    comp->base.xspeed = 0x200;
    comp->base.yspeed = 0x400;
    trigger2->unkC8->flags |= 0x1000;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby;

        if (!(trigger3->unkCC >> i & 1))
            continue;
        kirby = &gKirbys[i];
        kirby->animationIndex = 0xA;
        trigger3->unkB8[i] = sub_0808B62C(&kirby->base.base.base, 4, 0x2C3, 1, 0);
        trigger3->unkB8[i]->sprite.palId = 0;
        if (gKirbys[gLocalPlayerId].base.base.base.roomId == trigger3->unkB8[i]->roomId)
        {
            if (trigger3->unkB8[i]->sprite.palId == 0)
            {
                trigger3->unkB8[i]->sprite.palId = sub_0803DF24(0x2C3);
                if (trigger3->unkB8[i]->sprite.palId == 0xFF)
                    trigger3->unkB8[i]->sprite.palId = sub_0803DFAC(0x2C3, 1);
            }
        }
        else
            trigger3->unkB8[i]->sprite.palId = 0;
        trigger3->unkB8[i]->x = gKirbys[i].base.base.base.x - 0x800;
        trigger3->unkB8[i]->y = gKirbys[i].base.base.base.y - 0xC00;
        trigger3->unkB8[i]->flags |= 1;
    }
    trigger2->obj2.unk78 = sub_080212C0;
}

static void sub_080212C0(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    struct Object2 *comp = trigger->unkB4;

    comp->base.yspeed -= 0x13;
    if (comp->base.x > 0x12000)
    {
        u16 i;

        comp->base.flags |= 0x1000;
        for (i = 0; i < 4; i++)
        {
            if (!(trigger->unkCC >> i & 1))
                continue;
            gKirbys[i].animationIndex = 0;
            trigger2->unkB8[i]->flags |= 0x1000;
            trigger2->unkB8[i] = NULL;
        }
        trigger->obj2.unk78 = sub_08022EA0;
    }
}

static void sub_08021360(struct CutsceneTrigger0 *trigger)
{
    struct CutsceneTrigger0 *trigger2 = trigger;
    struct Kirby *kirby;
    u16 i;

    for (i = 0; i < 4; i++)
    {
        if (!(trigger2->unkCC >> i & 1))
            continue;
        gKirbys[i].base.base.base.flags &= ~0x1000000;
        kirby = &gKirbys[i];
        if (kirby->ability == 0xB)
            sub_080641FC(kirby);
        else if (kirby->ability == 0xE)
            sub_0806A798(kirby);
        else if (kirby->ability == 0x13 && kirby->base.base.base.flags & 0x40)
            sub_08047EF0(kirby);
        else
        {
            struct Kirby *kirby2 = &gKirbys[i];

            if (kirby2->base.base.base.unk58 & 2)
                KirbyStartWaterMovement(kirby2);
            else if (kirby2->base.base.base.flags & 0x60)
                sub_08044EA8(kirby2);
            else
                sub_0803FE74(kirby2);
        }
        return;
    }
    trigger->obj2.base.flags |= 0x1000;
}

static void sub_08021424(struct CutsceneTrigger1 *trigger)
{
    struct CutsceneTrigger1 *trigger2 = trigger;
    bool32 allReady = TRUE;
    u16 count = 0;
    u16 i;

    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        if (kirby->hp <= 0)
            continue;
        if (trigger->obj2.base.roomId != kirby->base.base.base.roomId)
            continue;
        if (!(gKirbys[i].base.base.base.flags & 0x1000000))
        {
            kirby->base.base.base.flags = (kirby->base.base.base.flags | 0x1000000) & ~1;
            allReady = FALSE;
        }
        else if (kirby->animationIndex != 0)
            allReady = FALSE;
        else
            trigger->unkB8 |= 1 << i;
        count++;
    }
    if (allReady)
    {
        trigger2->unkBA = count;
        trigger->obj2.unk78 = sub_08022ECC;
    }
}

static void sub_080214E4(struct CutsceneTrigger1 *trigger)
{
    struct CutsceneTrigger1 *trigger2 = trigger;

    trigger->unkB4 = CreateObjTemplateAndObj(trigger->obj2.base.unk56, 1, 0x24, -0x20, -0x20, 0, 0x1F, 0, 0,
        OBJ_SHADOW_KIRBY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    trigger2->unkB4->base.flags |= 1;
    trigger2->unkB4->unk83 = 7;
    trigger2->unkB4->base.xspeed = 0x200;
    trigger2->unkB4->base.yspeed = -0x200;
    trigger->obj2.unk78 = sub_08023504;
}

static void sub_080215B4(struct CutsceneTrigger1 *trigger)
{
    struct Object2 *comp = trigger->unkB4;
    struct Sprite s;

    CreateEffectObject(&comp->base, 0, 0x28C, 2);
    SpriteSomething(&s, 0x6000000, 0x2C3, 3, 0xFF, 0, 0, 0, 0, 0x10, comp->base.sprite.palId & 0xF, 0x80000);
    comp->unk83 = 8;
    trigger->obj2.unk78 = sub_08022EE0;
}

static void sub_08021634(struct CutsceneTrigger1 *trigger)
{
    struct Object2 *comp = trigger->unkB4;

    comp->base.flags |= 4;
    comp->base.yspeed -= 0x26;
    if (comp->base.y > 0x87FF)
    {
        struct Object2 *sword;
        struct Object4 *o;

        sword = CreateObjTemplateAndObj(trigger->obj2.base.unk56, 1, 0x24, comp->base.x >> 8, comp->base.y >> 8,
            0, 0x1F, 0, 0, OBJ_MASTER_SWORD_UNOBTAINABLE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        o = sub_0808B62C(&sword->base, 0x14, 0x2C9, 0, 1);
        o->y = sword->base.y - 0x2800;
        comp->base.flags |= 0x1000;
        trigger->obj2.unk78 = sub_08022EF8;
    }
}

static void sub_0802172C(struct CutsceneTrigger2 *trigger)
{
    struct CutsceneTrigger2 *trigger2 = trigger;
    const s16 (*xyTable)[2];
    u16 i;
    u16 n;

    trigger->unk2B4 = 0;
    n = 0;
    for (i = 0; i < 4; i++)
    {
        struct Object4 *o;

        trigger2->unk294[i] = NULL;
        xyTable = gUnk_082DEA4C;
        if (trigger->obj2.base.roomId != gKirbys[i].base.base.base.roomId)
            continue;
        if (gKirbys[i].hp <= 0)
            continue;
        gKirbys[i].base.base.base.x = (n * -18 + 0x64) * 0x100;
        gKirbys[i].base.base.base.flags = (gKirbys[i].base.base.base.flags & ~1) | 0x1000000;
        o = sub_0808B62C(&trigger->obj2.base, 0, 0x29C, 0, 0);
        trigger2->unk294[i] = o;
        o->x = xyTable[n][0] * 0x100;
        o->y = gUnk_082DEA4C[n][1] * 0x100;
        o->unk3C = 0;
        o->unk3E = 0;
        o->sprite.unk8 = (o->sprite.unk8 & ~0x3000) | 0x3000;
        n++;
        trigger2->unk2B4++;
    }
    trigger->obj2.unk78 = sub_08022F0C;
}

static void sub_08021844(struct CutsceneTrigger2 *trigger)
{
    struct CutsceneTrigger2 *trigger2 = trigger;
    const s16 (*xyTable2)[2];
    u16 n = 0;
    u16 i;

    for (i = 0; i < 4; i++)
    {
        struct Object4 *o;

        trigger2->unk2A4[i] = 0;
        xyTable2 = gUnk_082DEA5C;
        if (trigger2->unk294[i] != (void *)-1)
            continue;
        o = sub_0808B62C(&trigger->obj2.base, 0x10, 0x2DE, 0, 0);
        trigger2->unk294[i] = o;
        o->x = xyTable2[n][0] * 0x100;
        o->y = gUnk_082DEA5C[n][1] * 0x100;
        o->unk3C = 0;
        o->unk3E = 0;
        o->sprite.unk8 = (o->sprite.unk8 & ~0x3000) | 0x1000;
        n++;
    }
    PlaySfx(&trigger->obj2.base, SE_DARK_MIND_WARPSTAR_ENTER);
    trigger->obj2.unk78 = sub_08021984;
}

static void sub_08021984(struct CutsceneTrigger2 *trigger)
{
    struct CutsceneTrigger2 *trigger2 = trigger;
    u16 i;
    u16 j = 0;
    u16 allDone;

    for (i = 0; i < 4; i++)
    {
        struct Object4 *o;
        struct Kirby *kirby;
        struct ObjectBase *slot;

        if (trigger2->unk294[i] == NULL)
            continue;
        o = trigger2->unk294[i];
        kirby = &gKirbys[i];
        slot = &trigger2->unkB4[i];
        switch (trigger2->unk2A4[i])
        {
        case 0:
            {
            bool32 done = TRUE;
            s32 diff;
            s32 spd;

            if (o->x > kirby->base.base.base.x)
            {
                    diff = o->x - kirby->base.base.base.x;
                    spd = (diff >> 8) * gUnk_082DEA6C[j][0];
                    if (spd < gUnk_082DEA7C[j][0])
                        spd = (u16)gUnk_082DEA7C[j][0]; // (u16) loads ldrh not ldrsh; required for matching (all four clamps)
                    else
                    {
                        s32 max = gUnk_082DEA8C[j][0];
                        s32 tmp = spd;

                        if (tmp > max)
                            tmp = max;
                        spd = tmp;
                    }
                    o->unk3C = spd;
                    if (o->unk3C < diff)
                    {
                        o->unk3C = -spd;
                        done = FALSE;
                    }
                    else
                        o->unk3C = 0;
            }
            else if (o->x < kirby->base.base.base.x)
            {
                    diff = kirby->base.base.base.x - o->x;
                    spd = (diff >> 8) * gUnk_082DEA6C[j][0];
                    if (spd < gUnk_082DEA7C[j][0])
                        spd = (u16)gUnk_082DEA7C[j][0];
                    else if (spd > gUnk_082DEA8C[j][0])
                        spd = gUnk_082DEA8C[j][0];
                    o->unk3C = spd;
                    if (o->unk3C < diff)
                        done = FALSE;
                    else
                        o->unk3C = 0;
            }
            else
            {
                    o->x = kirby->base.base.base.x;
                    o->unk3C = 0;
            }
            if (o->y > kirby->base.base.base.y)
            {
                    diff = o->y - kirby->base.base.base.y;
                    spd = (diff >> 8) * gUnk_082DEA6C[j][1];
                    if (spd < gUnk_082DEA7C[j][1])
                        spd = (u16)gUnk_082DEA7C[j][1];
                    else if (spd > gUnk_082DEA8C[j][1])
                        spd = gUnk_082DEA8C[j][1];
                    o->unk3E = spd;
                    if (o->unk3E < diff)
                        break;
                    o->unk3E = 0;
            }
            else if (o->y < kirby->base.base.base.y)
            {
                    diff = kirby->base.base.base.y - o->y;
                    spd = (diff >> 8) * gUnk_082DEA6C[j][1];
                    if (spd < gUnk_082DEA7C[j][1])
                        spd = (u16)gUnk_082DEA7C[j][1];
                    else
                    {
                        s32 max = gUnk_082DEA8C[j][1];
                        s32 tmp = spd;

                        if (tmp > max)
                            tmp = max;
                        spd = tmp;
                    }
                    o->unk3E = spd;
                    if (o->unk3E < diff)
                    {
                        done = FALSE;
                        o->unk3E = -spd;
                    }
                    else
                        o->unk3E = 0;
            }
            else
            {
                    o->y = kirby->base.base.base.y;
                    o->unk3E = 0;
            }
            if (done)
                    trigger2->unk2A4[i] = 1;
            break;
            }
        case 1:
            sub_080525C0(kirby);
            CreateEffectObject(&kirby->base.base.base, 0, 0x292, 0);
            kirby->animationIndex = 0x5B;
            slot->x = o->x;
            slot->y = o->y;
            slot->xspeed = 0;
            slot->yspeed = 0;
            kirby->base.base.base.unk6C = slot;
            o->flags |= 0x1000;
            trigger2->unk294[i] = (void *)-1;
            trigger2->unk2AC[i] = 0;
            trigger2->unk2A4[i] = 2;
            break;
        case 2:
            if (trigger2->unk2AC[i]++ > 0x1E)
            {
                    PlaySfx(&trigger->obj2.base, SE_08D5C490);
                    trigger2->unk2A4[i] = 3;
            }
            break;
        case 3:
            slot->x += slot->xspeed;
            slot->y -= slot->yspeed;
            slot->xspeed -= 0x10;
            slot->yspeed += 0xA;
            if (gUnk_082DEA9C[j] > slot->xspeed)
                    trigger2->unk2A4[i] = 4;
            break;
        case 4:
            slot->x += slot->xspeed;
            slot->y -= slot->yspeed;
            slot->xspeed += 0x18;
            slot->yspeed += 0xA;
            if (slot->y < -0x2000)
                    trigger2->unk2A4[i] = 5;
            break;
        case 5:
            slot->xspeed = 0;
            slot->yspeed = 0;
            break;
        }
        j++;
    }
    allDone = 1;
    for (i = 0; i < 4; i++)
    {
        if (trigger2->unk294[i] != NULL && trigger2->unk2A4[i] <= 4)
            allDone = FALSE;
    }
    if (allDone)
    {
        sub_0808859C(&trigger->obj2, gUnk_0835105C[15], 0);
        trigger->obj2.base.flags |= 0x1000;
    }
}

static void sub_08021DD4(struct Task *t)
{
    struct Object2 *obj = TaskGetStructPtr(t);
    u8 unk2 = obj->object->unk2;
    u8 unk3 = obj->object->unk3;
    u8 playerId = obj->base.unk56;
    u16 aiKirbyState = gAIKirbyState;

    if (aiKirbyState < AI_KIRBY_STATE_TUTORIAL)
    {
        gAIKirbyState = AI_KIRBY_STATE_TUTORIAL;
        if (!(gUnk_0203AD10 & 0x10))
        {
            if (gUnk_0203AD10 & 2)
            {
                if (gLocalPlayerId == gUnk_0203AD24)
                    UpdateSaveBufferByOffset(1, gSaveID <= 2 ? gSaveID : 0);
                else
                    sub_08031CE4(8);
            }
            else
                UpdateSaveBufferByOffset(1, gSaveID <= 2 ? gSaveID : 0);
        }
    }
    ObjectDestroy(t);
    if (unk2 != 0 || playerId != 0xFF)
        sub_08001678(unk2, unk3, gCurLevelInfo[playerId].unk65E, 1);
}

static void sub_08021EB0(struct CutsceneTrigger4 *trigger)
{
    struct CutsceneTrigger4 *trigger2 = trigger;
    u16 animId;
    u8 variant;
    struct Object4 *o;
    struct Sprite s;
    u8 i;

    animId = gUnk_082DE9FC[9][0];
    variant = gUnk_082DE9FC[9][1];
    trigger->unkBC = sub_0808B62C(&trigger->obj2.base, 1, animId, variant, 0);
    trigger->unkBC->sprite.palId = 0;
    if (gKirbys[gLocalPlayerId].base.base.base.roomId == trigger->unkBC->roomId)
    {
        if (trigger->unkBC->sprite.palId == 0)
        {
            trigger->unkBC->sprite.palId = sub_0803DF24(animId);
            if (trigger->unkBC->sprite.palId == 0xFF)
                trigger->unkBC->sprite.palId = sub_0803DFAC(animId, variant);
        }
    }
    else
        trigger->unkBC->sprite.palId = 0;
    o = trigger2->unkBC;
    o->y = -0x4000;
    o->x = -0x4000;
    trigger2->unkC0 = sub_0808B62C(&trigger->obj2.base, 0, gUnk_082DEA24[9][0], gUnk_082DEA24[9][1], 0);
    trigger2->unkC0->sprite.palId = trigger2->unkBC->sprite.palId + 1;
    SpriteSomething(&s, 0x6000000, gUnk_082DEA24[9][0], gUnk_082DEA24[9][1], 0xFF, 0, 0, 0, 0, 0x10, trigger2->unkC0->sprite.palId & 0xF, 0x80000);
    o = trigger2->unkC0;
    o->y = -0x4000;
    o->x = -0x4000;
    trigger2->unkB4 = sub_0808B62C(&trigger->obj2.base, 0x14, gUnk_082DE9FC[0][0], gUnk_082DE9FC[0][1], 0);
    trigger2->unkB4->sprite.palId = trigger2->unkBC->sprite.palId;
    trigger2->unkB4->x = 0xC800;
    trigger2->unkB4->y = 0x8800;
    trigger2->unkB8 = sub_0808B62C(&trigger->obj2.base, 0x14, gUnk_082DEA24[0][0], gUnk_082DEA24[0][1], 0);
    trigger2->unkB8->sprite.palId = trigger2->unkC0->sprite.palId;
    trigger2->unkB8->x = 0xC800;
    trigger2->unkB8->y = 0x8800;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        kirby->base.base.base.flags = (kirby->base.base.base.flags | 0x1000800) & ~1;
        kirby->animationIndex = 0;
    }
    trigger->obj2.unk78 = sub_08022F50;
}

static void sub_08022090(struct CutsceneTrigger4 *trigger)
{
    struct Sprite *sprite;

    trigger->unkC4 = 0x300;
    trigger->unkC6 = -0xA00;
    sprite = &trigger->unkB4->sprite;
    sprite->animId = gUnk_082DE9FC[6][0];
    sprite->variant = gUnk_082DE9FC[6][1];
    sub_08155128(sprite);
    sprite = &trigger->unkB8->sprite;
    sprite->animId = gUnk_082DEA24[6][0];
    sprite->variant = gUnk_082DEA24[6][1];
    sub_08155128(sprite);
    m4aSongNumStart(SE_INTRO_CUTSCENE_DMK_JUMP);
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08022104;
}

static void sub_08022104(struct CutsceneTrigger4 *trigger)
{
    trigger->unkC6 += 0x26;
    trigger->unkB4->x += trigger->unkC4;
    trigger->unkB4->y += trigger->unkC6;
    trigger->unkB8->x += trigger->unkC4;
    trigger->unkB8->y += trigger->unkC6;
    if (trigger->unkB8->y <= -0x4000)
        trigger->obj2.unk78 = sub_08023054;
}

static void sub_08022174(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    const u16 (*animTable)[2];
    u16 animId;
    u8 variant;
    u16 animId2;
    u8 variant2;
    u8 i;

    for (i = 0; i < 4; i++)
    {
        animTable = gUnk_082DE9FC;
        trigger->unkDE[i] = trigger->unkE2[i] = 0;
    }
    trigger2->unkB4 = 0;
    animId = animTable[4][0];
    variant = animTable[4][1];
    trigger2->unkBC = sub_0808B62C(&trigger->obj2.base, 0x14, animId, variant, 0);
    trigger2->unkBC->sprite.palId = 0;
    if (gKirbys[gLocalPlayerId].base.base.base.roomId == trigger2->unkBC->roomId)
    {
        if (trigger2->unkBC->sprite.palId == 0)
        {
            trigger2->unkBC->sprite.palId = sub_0803DF24(animId);
            if (trigger2->unkBC->sprite.palId == 0xFF)
                trigger2->unkBC->sprite.palId = sub_0803DFAC(animId, variant);
        }
    }
    else
        trigger2->unkBC->sprite.palId = 0;
    trigger2->unkBC->x = 0xB800;
    trigger2->unkBC->y = 0x11C00;
    trigger2->unkBC->flags ^= 1;
    animId2 = gUnk_082DEA24[4][0];
    variant2 = gUnk_082DEA24[4][1];
    trigger2->unkC0 = sub_0808B62C(&trigger->obj2.base, 0x14, animId2, variant2, 0);
    trigger2->unkC0->sprite.palId = 0;
    if (gKirbys[gLocalPlayerId].base.base.base.roomId == trigger2->unkC0->roomId)
    {
        if (trigger2->unkC0->sprite.palId == 0)
        {
            trigger2->unkC0->sprite.palId = sub_0803DF24(animId2);
            if (trigger2->unkC0->sprite.palId == 0xFF)
                trigger2->unkC0->sprite.palId = sub_0803DFAC(animId2, variant2);
        }
    }
    else
        trigger2->unkC0->sprite.palId = 0;
    trigger2->unkC0->x = 0xB800;
    trigger2->unkC0->y = 0x11C00;
    trigger2->unkC0->flags ^= 1;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];
        u32 flags;

        if (kirby->hp <= 0)
            continue;
        if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
            continue;
        flags = kirby->base.base.base.flags | 0x1000800;
        kirby->base.base.base.flags = flags | 0x100;
    }
    trigger->obj2.unk78 = sub_080230DC;
}

static void sub_08022350(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    struct LevelInfo *levelInfo = &gCurLevelInfo[gLocalPlayerId];
    struct Kirby *kirby;
    u8 i;

    trigger->unkB4++;
    if (trigger->unkB4 & 1)
    {
        trigger->unkCC = 1;
        trigger->unkCA = (Rand32() & 7) - 4;
        trigger->unkCB = (Rand32() & 7) - 4;
        levelInfo->viewportModX_44 += trigger->unkCA;
        levelInfo->viewportModY_46 += trigger->unkCB;
        for (i = 0; i < 4; i++)
        {
            kirby = &gKirbys[i];
            if (kirby->hp <= 0)
                continue;
            if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
                continue;
            kirby->base.base.base.x -= trigger2->unkCA * 0x100;
            kirby->base.base.base.y -= trigger2->unkCB * 0x100;
        }
    }
    else
    {
        trigger2->unkCC = 0;
        levelInfo->viewportModX_44 -= trigger2->unkCA;
        levelInfo->viewportModY_46 -= trigger2->unkCB;
        for (i = 0; i < 4; i++)
        {
            kirby = &gKirbys[i];
            if (kirby->hp <= 0)
                continue;
            if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
                continue;
            kirby->base.base.base.x += trigger2->unkCA * 0x100;
            kirby->base.base.base.y += trigger2->unkCB * 0x100;
        }
        trigger2->unkCA = 0;
        trigger2->unkCB = 0;
    }
    if (++trigger->unkC8 >= trigger->unkC9 && trigger2->unkB4 <= 0x95)
    {
        trigger->unkC8 = 0;
        trigger->unkC9 = (Rand32() & 0x1F) + 5;
        gBldRegs.bldY = 0x10;
        m4aSongNumStart(SE_INTRO_CUTSCENE_AMBIENT_2);
    }
    else
    {
        gBldRegs.bldY = gBldRegs.bldY != 0 ? gBldRegs.bldY - 1 : 0;
    }
    if (trigger2->unkB4 > 0x95 && gBldRegs.bldY == 0)
    {
        if (trigger2->unkCC != 0)
        {
            trigger2->unkCC = 0;
            levelInfo->viewportModX_44 -= trigger2->unkCA;
            levelInfo->viewportModY_46 -= trigger2->unkCB;
            for (i = 0; i < 4; i++)
            {
                kirby = &gKirbys[i];
                if (kirby->hp <= 0)
                    continue;
                if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
                    continue;
                kirby->base.base.base.x += trigger2->unkCA * 0x100;
                kirby->base.base.base.y += trigger2->unkCB * 0x100;
            }
            trigger2->unkCA = 0;
            trigger2->unkCB = 0;
        }
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        trigger->obj2.unk78 = sub_08023154;
    }
}

static void sub_0802262C(struct CutsceneTrigger5 *trigger)
{
    struct Object4 *o;

    trigger->unkB8 = sub_0808B62C(&trigger->obj2.base, 0x24, 0x399, 0xA, 0);
    o = trigger->unkB8;
    o->sprite.palId = 0;
    if (gKirbys[gLocalPlayerId].base.base.base.roomId == o->roomId)
    {
        o->sprite.palId = sub_0803DF24(0x399);
        if (o->sprite.palId == 0xFF)
            o->sprite.palId = sub_0803DFAC(0x399, 0xD);
    }
    else
        o->sprite.palId = 0;
    o->x = 0x17000;
    o->y = 0xE000;
    o->sprite.unk14 = 0x7C0;
    trigger->obj2.unk78 = sub_0802318C;
}

static void sub_080226C4(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    u8 i;

    trigger->unkB4 = 0;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        if (kirby->hp <= 0)
            continue;
        if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
            continue;
        trigger2->unkCE[i][0] = 0;
        if (kirby->base.base.base.y >> 8 > 0xDF)
            trigger->unkCE[i][1] = -0x300;
        else
            trigger->unkCE[i][1] = 0x300;
        kirby->animationIndex = i + 0x4A;
        kirby->base.base.base.flags |= 0x100;
    }
    trigger->obj2.unk78 = sub_08022770;
}

static void sub_08022770(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    bool32 done = TRUE;
    u8 i;

    trigger->unkB4++;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        if (kirby->hp <= 0)
            continue;
        if (kirby->base.base.base.roomId != trigger2->obj2.base.roomId)
            continue;
        kirby->base.base.base.flags |= 0x1000000;
        switch (trigger->unkDE[i])
        {
        case 0:
        {
            s16 a[2];
            s16 b[2];
            s32 spd;
            u8 t;
            s8 spd8;
            u16 angle;

            if (++kirby->animationIndex > 0x59)
            kirby->animationIndex = 0x4A;
            spd = trigger->unkB4 / 2; // the u8 t staging and clamp arm order are required for matching
            if (spd < 0xC8)
            t = spd;
            else
            t = 0xC8;
            spd8 = t;
            a[0] = trigger->unkCE[i][0];
            a[1] = trigger->unkCE[i][1];
            b[0] = 0x7000 - kirby->base.base.base.x;
            b[1] = -0x2000 - kirby->base.base.base.y;
            if (b[0] * a[1] - a[0] * b[1] > 0)
            spd8 = -spd8;
            angle = (spd8 + 0x400) & 0x3FF;
            trigger->unkCE[i][0] = (a[0] * gSineTable[angle + 0x100] - a[1] * gSineTable[angle]) >> 14;
            trigger->unkCE[i][1] = (a[0] * gSineTable[angle] + a[1] * gSineTable[angle + 0x100]) >> 14;
            kirby->base.base.base.x += trigger->unkCE[i][0];
            kirby->base.base.base.y += trigger->unkCE[i][1];
            if (kirby->base.base.base.x >> 8 >= 0x168 && kirby->base.base.base.x >> 8 <= 0x178
            && kirby->base.base.base.y >> 8 > 0xD7 && kirby->base.base.base.y >> 8 <= 0xE8)
            {
            kirby->base.base.base.x = 0x17000;
            kirby->base.base.base.y = 0xE000;
            kirby->base.base.base.flags |= 0x800;
            trigger->unkDE[i] = 1;
            }
            done = FALSE;
            break;
        }
        case 1:
            if (++kirby->animationIndex > 0x59)
            kirby->animationIndex = 0x4A;
            if (trigger->unkE2[i] & 1)
            kirby->base.base.base.flags ^= 0x400;
            if (++trigger->unkE2[i] > 0x3B)
            {
            kirby->base.base.base.flags |= 0x400;
            trigger->unkDE[i] = 2;
            }
            done = FALSE;
            break;
        case 2:
            break;
        }
    }
    if (done)
    {
        m4aMPlayFadeOut(&gMPlayInfo_0, 3);
        m4aMPlayFadeOut(&gMPlayInfo_1, 3);
        m4aMPlayFadeOut(&gMPlayInfo_2, 3);
        m4aMPlayFadeOut(&gMPlayInfo_3, 3);
        trigger2->obj2.unk78 = sub_08023268;
    }
}

static void sub_080229E4(struct CutsceneTrigger5 *trigger)
{
    struct Sprite *sprite;
    struct Object4 *o;

    trigger->unkB4 = 0;
    sprite = &trigger->unkBC->sprite;
    sprite->animId = gUnk_082DE9FC[7][0];
    sprite->variant = gUnk_082DE9FC[7][1];
    sprite->unk1C = 0x20;
    sub_08155128(sprite);
    o = trigger->unkBC;
    o->flags = (o->flags & ~4) | 8;
    o->unk4 = 1;
    o->unk2 = 0x20;
    o->unk1 = 2;
    sprite = &trigger->unkC0->sprite;
    sprite->animId = gUnk_082DEA24[7][0];
    sprite->variant = gUnk_082DEA24[7][1];
    sub_08155128(sprite);
    o = trigger->unkC0;
    o->flags = (o->flags & ~4) | 8;
    o->unk4 = 1;
    o->unk2 = 0x20;
    o->unk1 = 2;
    trigger->obj2.unk78 = sub_08022A90;
}

static void sub_08022A90(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;

    if (trigger->unkBC->unk3C != 0)
    {
        trigger->unkBC->unk3C -= 0x32;
        trigger->unkC0->unk3C -= 0x32;
        if (trigger->unkBC->unk3C < 0)
        {
            trigger->unkBC->unk3C = 0;
            trigger->unkC0->unk3C = 0;
        }
    }
    if (++trigger->unkB4 > 9)
    {
        struct Object4 *o;

        trigger->unkB4 = 0;
        o = trigger->unkBC;
        o->flags &= ~4;
        o->unk4 = 1;
        o->unk2 += 0x20;
        o->unk1 = o->unk2 >> 4;
        o = trigger->unkC0;
        o->flags &= ~4;
        o->unk4 = 1;
        o->unk2 += 0x10;
        o->unk1 = o->unk2 >> 4;
        trigger->unkBC->flags &= ~8;
        trigger->unkC0->flags &= ~8;
        trigger2->obj2.unk78 = sub_08022B74;
    }
    trigger->unkBC->flags &= ~2;
    trigger->unkC0->flags &= ~2;
    trigger->unkBC->flags &= ~0x1000;
    trigger->unkC0->flags &= ~0x1000;
}

static void sub_08022B74(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    struct Object4 *o = trigger->unkBC;

    if (o->unk3C != 0)
    {
        o->unk3C -= 0x32;
        trigger->unkC0->unk3C -= 0x32;
        if (trigger->unkBC->unk3C < 0)
        {
            trigger->unkBC->unk3C = 0;
            trigger->unkC0->unk3C = 0;
        }
    }
    if (trigger->unkBC->flags & 2)
    {
        struct Sprite *sprite = &trigger->unkBC->sprite;

        sprite->animId = gUnk_082DE9FC[8][0];
        sprite->variant = gUnk_082DE9FC[8][1];
        sub_08155128(sprite);
        trigger->unkBC->unk4 = 0;
        sprite = &trigger->unkC0->sprite;
        sprite->animId = gUnk_082DEA24[8][0];
        sprite->variant = gUnk_082DEA24[8][1];
        sub_08155128(sprite);
        trigger->unkC0->unk4 = 0;
        trigger->unkC0->x += 0x1400;
        trigger->unkC0->y += -0x1900;
        trigger->unkE6 = (0x17000 - trigger->unkC0->x) / 0x14;
        trigger->unkE8 = (0xE000 - trigger->unkC0->y) / 0x14 - 0x17C;
        m4aSongNumStart(SE_DMK_SWORD_SLASH_ATTACK);
        trigger2->obj2.unk78 = sub_08022C9C;
    }
    trigger->unkBC->flags &= ~2;
    trigger->unkC0->flags &= ~2;
    trigger->unkBC->flags &= ~0x1000;
    trigger->unkC0->flags &= ~0x1000;
}

static void sub_08022C9C(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;

    trigger->unkE8 += 0x26;
    trigger->unkC0->x += trigger->unkE6;
    trigger->unkC0->y += trigger->unkE8;
    if (trigger->unkBC->unk3C != 0)
    {
        trigger->unkBC->unk3C -= 0x32;
        if (trigger->unkBC->unk3C < 0)
            trigger->unkBC->unk3C = 0;
    }
    if (trigger->unkBC->flags & 2)
    {
        trigger->unkBC->flags |= 8;
        trigger->unkBC->sprite.unk1C = 0x10;
    }
    if (++trigger->unkB4 > 0x13)
    {
        trigger->unkC0->flags |= 0x1000;
        trigger2->obj2.unk78 = sub_080232E4;
    }
    else
    {
        trigger->unkBC->flags &= ~2;
        trigger->unkC0->flags &= ~2;
        trigger->unkBC->flags &= ~0x1000;
        trigger->unkC0->flags &= ~0x1000;
    }
}

static void sub_08022D78(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x3B)
    {
        trigger->unkC4 = sub_0803C83C(5, trigger->obj2.base.roomId);
        trigger->unkC4->unk8 |= 0x40;
        trigger->unkC4->unkA = 0x80;
        trigger->unkC4->unk4 = 0xFFFF;
        trigger->unkC4->unk6 = -1;
        trigger->unkB4 = 0;
        trigger->obj2.unk78 = sub_080233A8;
        sub_0808859C(&trigger->obj2, gUnk_0835105C[10], 0x48);
    }
}

static void sub_08022DE4(struct Object2 *obj)
{
    switch (obj->object->subtype1)
    {
    case 0:
        obj->unk78 = sub_08020798;
        break;
    case 1:
        obj->unk78 = sub_08022EB4;
        break;
    case 2:
        obj->unk78 = sub_0802172C;
        break;
    case 4:
        obj->unk78 = sub_08022F24;
        break;
    case 5:
        obj->unk78 = sub_08022174;
        break;
    case 6:
        {
        obj->unk78 = sub_080233E0;
        sub_080233E0(obj);
        break;
        }
    }
}

static void sub_08022E6C(struct CutsceneTrigger0 *trigger)
{
    trigger->unkD0 = 0;
    trigger->obj2.unk78 = sub_08023438;
}

static void sub_08022E80(struct CutsceneTrigger0 *trigger)
{
    struct Object2 *comp = trigger->unkB4;

    comp->unk83 = 1;
    comp->base.sprite.unk1C = 8;
    trigger->obj2.unk78 = sub_0802347C;
}

static void sub_08022EA0(struct CutsceneTrigger0 *trigger)
{
    trigger->unkD0 = 0;
    trigger->obj2.unk78 = sub_080234C4;
}

static void sub_08022EB4(struct CutsceneTrigger1 *trigger)
{
    trigger->unkB8 = 0;
    trigger->unkBA = 0;
    trigger->obj2.unk78 = sub_08021424;
}

static void sub_08022ECC(struct CutsceneTrigger1 *trigger)
{
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_080234E4;
}

static void sub_08022EE0(struct CutsceneTrigger1 *trigger)
{
    trigger->unkB4->base.yspeed = 0x400;
    trigger->obj2.unk78 = sub_08021634;
}

static void sub_08022EF8(struct CutsceneTrigger1 *trigger)
{
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_08023524;
}

static void sub_08022F0C(struct CutsceneTrigger2 *trigger)
{
    trigger->unk2B6 = 0;
    trigger->obj2.unk78 = sub_08023544;
}

static void sub_08022F24(struct CutsceneTrigger4 *trigger)
{
    u16 aiKirbyState = gAIKirbyState;

    if (aiKirbyState >= AI_KIRBY_STATE_TUTORIAL)
        trigger->obj2.unk78 = sub_080230A0;
    else
    {
        m4aMPlayAllStop();
        trigger->obj2.unk78 = sub_08021EB0;
    }
}

static void sub_08022F50(struct CutsceneTrigger4 *trigger)
{
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08022F64;
}

static void sub_08022F64(struct CutsceneTrigger4 *trigger)
{
    if (++trigger->unkC8 > 0x3B)
        trigger->obj2.unk78 = sub_08022F88;
}

static void sub_08022F88(struct CutsceneTrigger4 *trigger)
{
    trigger->unkB4->flags ^= 1;
    trigger->unkB8->flags ^= 1;
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08022FB8;
}

static void sub_08022FB8(struct CutsceneTrigger4 *trigger)
{
    if (++trigger->unkC8 > 9)
        trigger->obj2.unk78 = sub_08022FDC;
}

static void sub_08022FDC(struct CutsceneTrigger4 *trigger)
{
    struct Sprite *sprite = &trigger->unkB4->sprite;

    sprite->animId = gUnk_082DE9FC[5][0];
    sprite->variant = gUnk_082DE9FC[5][1];
    sub_08155128(sprite);
    sprite = &trigger->unkB8->sprite;
    sprite->animId = gUnk_082DEA24[5][0];
    sprite->variant = gUnk_082DEA24[5][1];
    sub_08155128(sprite);
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08023030;
}

static void sub_08023030(struct CutsceneTrigger4 *trigger)
{
    if (++trigger->unkC8 > 9)
        trigger->obj2.unk78 = sub_08022090;
}

static void sub_08023054(struct CutsceneTrigger4 *trigger)
{
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08023068;
}

static void sub_08023068(struct CutsceneTrigger4 *trigger)
{
    if (++trigger->unkC8 > 0x3B)
    {
        m4aSongNumStart(gRoomProps[0x323].songIdx);
        trigger->obj2.unk78 = sub_080230A0;
    }
}

static void sub_080230A0(struct Object2 *obj)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        kirby->base.base.base.flags &= ~0x1000000;
    }
    obj->base.flags |= 0x1000;
}

static void sub_080230DC(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x77)
        trigger->obj2.unk78 = sub_08023100;
}

static void sub_08023100(struct CutsceneTrigger5 *trigger)
{
    gBldRegs.bldCnt = 0xBF;
    trigger->unkC9 = (Rand32() & 0xF) + 5;
    trigger->unkB4 = 0;
    trigger->unkC8 = 0;
    trigger->obj2.unk78 = sub_08022350;
}

static void sub_08023154(struct CutsceneTrigger5 *trigger)
{
    trigger->unkB4 = 0;
    trigger->obj2.unk78 = sub_08023168;
}

static void sub_08023168(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x3B)
        trigger->obj2.unk78 = sub_0802262C;
}

static void sub_0802318C(struct CutsceneTrigger5 *trigger)
{
    if (trigger->unkB8->flags & 2)
    {
        struct Sprite *sprite = &trigger->unkB8->sprite;

        sprite->animId = 0x399;
        sprite->variant = 0xB;
        sub_08155128(sprite);
        trigger->obj2.unk78 = sub_080231C0;
    }
}

static void sub_080231C0(struct CutsceneTrigger5 *trigger)
{
    struct CutsceneTrigger5 *trigger2 = trigger;
    u8 i;

    trigger->unkB4 = 0;
    for (i = 0; i < 4; i++)
    {
        struct Kirby *kirby = &gKirbys[i];

        if (kirby->hp <= 0)
            continue;
        if (kirby->base.base.base.roomId != trigger->obj2.base.roomId)
            continue;
        if (kirby->base.base.base.x < trigger2->unkB8->x)
            kirby->base.base.base.flags &= ~1;
        else
            kirby->base.base.base.flags |= 1;
    }
    trigger->obj2.unk78 = sub_08023238;
}

static void sub_08023238(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x2C)
    {
        m4aSongNumStart(SE_BLACK_HOLE);
        trigger->obj2.unk78 = sub_080226C4;
    }
}

static void sub_08023268(struct CutsceneTrigger5 *trigger)
{
    trigger->unkB4 = 0;
    trigger->obj2.unk78 = sub_0802327C;
}

static void sub_0802327C(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x3B)
        trigger->obj2.unk78 = sub_080232A0;
}

static void sub_080232A0(struct CutsceneTrigger5 *trigger)
{
    struct Object4 *objBC = trigger->unkBC;
    struct Object4 *objC0 = trigger->unkC0;

    objC0->unk3C = 0x200;
    objBC->unk3C = 0x200;
    trigger->obj2.unk78 = sub_080232BC;
}

static void sub_080232BC(struct CutsceneTrigger5 *trigger)
{
    struct Object4 *o = trigger->unkBC;

    if (o->x > 0x10800)
    {
        trigger->unkC0->x = 0x10800;
        o->x = 0x10800;
        trigger->obj2.unk78 = sub_080229E4;
    }
}

static void sub_080232E4(struct CutsceneTrigger5 *trigger)
{
    trigger->unkB4 = 0;
    trigger->obj2.unk78 = sub_080232F8;
}

static void sub_080232F8(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x1D)
        trigger->obj2.unk78 = sub_0802331C;
}

static void sub_0802331C(struct CutsceneTrigger5 *trigger)
{
    struct Sprite *sprite = &trigger->unkBC->sprite;

    sprite->animId = gUnk_082DE9FC[0][0];
    sprite->variant = gUnk_082DE9FC[0][1];
    sub_08155128(sprite);
    sprite = &trigger->unkB8->sprite;
    sprite->animId = 0x399;
    sprite->variant = 0xC;
    sub_08155128(sprite);
    trigger->obj2.unk78 = sub_08023368;
}

static void sub_08023368(struct CutsceneTrigger5 *trigger)
{
    struct Object4 *o = trigger->unkB8;

    if (o->flags & 2)
    {
        o->flags |= 0x1000;
        trigger->obj2.unk78 = sub_08023394;
    }
}

static void sub_08023394(struct CutsceneTrigger5 *trigger)
{
    trigger->unkB4 = 0;
    trigger->obj2.unk78 = sub_08022D78;
}

static void sub_080233A8(struct CutsceneTrigger5 *trigger)
{
    if (++trigger->unkB4 > 0x4F)
    {
        trigger->unkC4->unk8 &= ~0x40;
        trigger->obj2.base.flags |= 0x1000;
    }
}

static void sub_080233E0(struct Object2 *obj)
{
    if (gAIKirbyState >= AI_KIRBY_STATE_NORMAL)
        obj->unk78 = nullsub_113;
    else
    {
        obj->unk78 = sub_08023414;
        sub_08023414(obj);
    }
}

static void sub_08023414(struct Object2 *obj)
{
    if (sub_080395D4())
    {
        sub_08039600(0x1A);
        obj->unk78 = nullsub_113;
    }
}

static void nullsub_113(struct Object2 *obj)
{
}

static void sub_08023438(struct CutsceneTrigger0 *trigger)
{
    if (trigger->unkD0++ > 0x3C)
    {
        trigger->unkD0 = 0;
        trigger->unkD2 = 0;
        trigger->unkD4 = 0;
        if (trigger->unkCE != 4)
            trigger->obj2.unk78 = sub_08020A90;
        else
            trigger->obj2.unk78 = sub_08020DDC;
    }
}

static void sub_0802347C(struct CutsceneTrigger0 *trigger)
{
    struct Object2 *comp = trigger->unkB4;

    comp->base.flags |= 4;
    comp->base.xspeed -= 0x10;
    if (comp->base.xspeed < -0xA6)
        comp->base.xspeed = -0xA6;
    if (comp->base.x <= 0xAFFF)
        trigger->obj2.unk78 = sub_0802356C;
}

static void sub_080234C4(struct CutsceneTrigger0 *trigger)
{
    if (trigger->unkD0++ > 0xB4)
        trigger->obj2.unk78 = sub_08021360;
}

static void sub_080234E4(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0xB4)
        trigger->obj2.unk78 = sub_08023580;
}

static void sub_08023504(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkB4->base.x > 0x5000)
        trigger->obj2.unk78 = sub_08023594;
}

static void sub_08023524(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0xB4)
        trigger->obj2.unk78 = sub_080235BC;
}

static void sub_08023544(struct CutsceneTrigger2 *trigger)
{
    if (trigger->unk2B6++ > 0x3C)
        trigger->obj2.unk78 = sub_0802360C;
}

static void sub_0802356C(struct CutsceneTrigger0 *trigger)
{
    trigger->unkD0 = 0;
    trigger->obj2.unk78 = sub_08020FA8;
}

static void sub_08023580(struct CutsceneTrigger1 *trigger)
{
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_08023644;
}

static void sub_08023594(struct CutsceneTrigger1 *trigger)
{
    sub_0803CA20(7)->unkA = 0x400;
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_08023664;
}

static void sub_080235BC(struct CutsceneTrigger1 *trigger)
{
    u16 i;

    for (i = 0; i < 4; i++)
    {
        if (trigger->unkB8 >> i & 1)
            gKirbys[i].base.base.base.flags &= ~0x1000000;
    }
    trigger->obj2.base.flags |= 0x1000;
}

static void sub_0802360C(struct CutsceneTrigger2 *trigger)
{
    u16 i;

    for (i = 0; i < 4; i++)
    {
        if (trigger->unk294[i] != NULL)
        {
            trigger->unk294[i]->unk3C = 0x80;
            trigger->unk294[i]->unk3E = 0x20;
        }
    }
    trigger->obj2.unk78 = sub_08023734;
}

static void sub_08023644(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0x3C)
        trigger->obj2.unk78 = sub_080214E4;
}

static void sub_08023664(struct CutsceneTrigger1 *trigger)
{
    struct Object2 *comp = trigger->unkB4;

    if (trigger->unkBC++ > 0x10)
    {
        comp->base.xspeed = 0;
        comp->base.yspeed = 0;
        trigger->obj2.unk78 = sub_08023698;
    }
}

static void sub_08023698(struct CutsceneTrigger1 *trigger)
{
    struct Object2 *comp = trigger->unkB4;

    comp->base.x = 0x8000;
    comp->base.y = 0x8800;
    comp->base.flags &= ~1;
    comp->unk83 = 0;
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_080236CC;
}

static void sub_080236CC(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0x3C)
        trigger->obj2.unk78 = sub_080236EC;
}

static void sub_080236EC(struct CutsceneTrigger1 *trigger)
{
    sub_0803C95C(7)->unkA = 0xFF80;
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_08023714;
}

static void sub_08023714(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0x40)
        trigger->obj2.unk78 = sub_080237DC;
}

static void sub_08023734(struct CutsceneTrigger2 *trigger)
{
    bool32 done = TRUE;
    u16 i;

    for (i = 0; i < 4; i++)
    {
        if (trigger->unk294[i] != NULL)
        {
            struct Object4 *o = trigger->unk294[i];

            if (o->x <= 0x11FFF && o->y > -0x2000)
                done = FALSE;
            else
            {
                o->unk3C = 0;
                o->unk3E = 0;
            }
        }
    }
    if (done)
        trigger->obj2.unk78 = sub_08023790;
}

static void sub_08023790(struct CutsceneTrigger2 *trigger)
{
    u16 i;

    for (i = 0; i < 4; i++)
    {
        if (trigger->unk294[i] != NULL)
        {
            trigger->unk294[i]->flags |= 0x1000;
            trigger->unk294[i] = (void *)-1;
        }
    }
    trigger->obj2.unk78 = sub_08021844;
}

static void sub_080237DC(struct CutsceneTrigger1 *trigger)
{
    trigger->unkBC = 0;
    trigger->obj2.unk78 = sub_080237F0;
}

static void sub_080237F0(struct CutsceneTrigger1 *trigger)
{
    if (trigger->unkBC++ > 0xB4)
        trigger->obj2.unk78 = sub_080215B4;
}

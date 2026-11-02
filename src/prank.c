#include "object.h"
#include "prank.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "code_0806F780.h"
#include "constants/kirby.h"
#include "constants/object_types.h"
#include "constants/songs.h"

static void sub_080A163C(struct Object *);
static void sub_080A1898(struct Object *);
static void sub_080A1DE4(struct Object *);
static void sub_080A1FB8(struct Object *);
static void sub_080A2080(void);
static void sub_080A24B0(struct Object *);
static void sub_080A24D8(struct Object *);
static void sub_080A250C(struct Object *);
static void sub_080A2534(struct Object *);
static void sub_080A2570(struct Object *);
static void sub_080A25DC(struct Object *);
static void sub_080A262C(struct Object *);
static void sub_080A265C(struct Object *);
static void sub_080A2674(struct Object *);
static void sub_080A26B4(struct Object *);
static void sub_080A26F0(struct Object *);
static void sub_080A2710(struct Object *);
static void sub_080A2748(struct Object *);
static void sub_080A2774(struct Object *);
static void sub_080A27A0(struct Object *);
static void sub_080A27D0(struct Object *);
static void sub_080A27F4(struct Object *);
static void sub_080A2800(struct Object *);
static void sub_080A2850(struct Object *);
static void sub_080A2880(struct Object *);
static void sub_080A28A0(struct Object *);
static void sub_080A28BC(struct Object *);
static void sub_080A290C(struct Object *);
static void sub_080A2940(struct Object *);
static void sub_080A2970(struct Object *);
static void sub_080A29A0(struct Object *);
static void sub_080A29F0(struct Object *);

extern const struct Kirby_110 gUnk_08352F84[];

void* CreatePrank(struct ObjectTemplate* arg0, u8 arg1)
{
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(task), *obj = tmp;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x02000000;
    if (obj->base.x > obj->kirby3->base.x)
    {
        obj->base.flags |= 1;
    }
    else
    {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    ObjectSetBounds(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    if (obj->objTemplate->subtype1 == 4)
    {
        sub_080A2748(obj);
    }
    else
    {
        gUnk_08351648[obj->type].unk10(obj);
    }
    if (obj->objTemplate->subtype1 == 3)
    {
        sub_080A1FB8(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    if (obj->objTemplate->subtype1 != 0)
    {
        if (obj->objTemplate->subtype1 == 2)
        {
            obj->kirbyAbility = KIRBY_ABILITY_COOK;
        }
        else
        {
            if (obj->objTemplate->subtype1 == 1)
            {
                if (!(Rand16() & 3))
                {
                    obj->kirbyAbility = KIRBY_ABILITY_COOK;
                }
            }
        }
    }
    return obj;
}

void sub_080A12E4(struct Object *prank)
{
    if (prank->objTemplate->subtype1 == 3)
    {
        if (prank->unk9E != 2)
        {
            sub_080A2710(prank);
            return;
        }
        else
        {
            sub_080A2534(prank);
            return;
        }
    }
    if (prank->objTemplate->subtype1 == 4 || prank->unk9E == 2)
    {
        sub_080A2534(prank);
        return;
    }
    ObjectSetFunc(prank, 0, sub_080A24B0);
    prank->base.counter = 0x3c;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    prank->unk9E = 0x3c;
}

static void sub_080A1344(struct Object *prank)
{
    prank->base.flags |= 4;
    if (prank->base.unk62 & 1)
    {
        prank->base.flags ^= 1;
        prank->base.xspeed = -prank->base.xspeed;
    }
    if (!(prank->base.header.unk1 & 7))
    {
        s16 temp = 0x2000;
        s32 x;
        if (prank->base.flags & 1)
            temp = -temp;
        x = prank->base.x + temp;
        if (x <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.x
            && x >= gCurLevelInfo[prank->base.unk56].levelMinPosition.x
            && prank->base.y <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.y
            && prank->base.y >= gCurLevelInfo[prank->base.unk56].levelMinPosition.y)
        {
            const u32 *a = gCollisionAttributes;
            if (a[GetCollisionTile(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
            {
                sub_080A262C(prank);
                return;
            }
        }
    }
    if (prank->base.unk62 & 4)
    {
        if (!--prank->base.counter)
        {
            sub_080A2570(prank);
        }
    }
}

static void sub_080A1430(struct Object *prank)
{
    prank->base.flags |= 4;
    if (!(prank->base.header.unk1 & 7))
    {
        s16 temp = 0x2000;
        s32 x;
        if (prank->base.flags & 1)
            temp = -temp;
        x = prank->base.x + temp;
        if (x <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.x
            && x >= gCurLevelInfo[prank->base.unk56].levelMinPosition.x
            && prank->base.y <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.y
            && prank->base.y >= gCurLevelInfo[prank->base.unk56].levelMinPosition.y)
        {
            const u32 *a = gCollisionAttributes;
            if (a[GetCollisionTile(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
            {
                sub_080A262C(prank);
                return;
            }
        }
    }
    if (prank->base.unk62 & 1)
    {
        prank->base.flags ^= 1;
        prank->base.xspeed = -prank->base.xspeed;
    }
}

static void sub_080A14FC(struct Object *prank)
{
    if (prank->base.flags & 2)
    {
        s32 temp = prank->unk9E;
        switch (temp)
        {
        case 0:
            prank->unk83 = 1;
            prank->unk78 = sub_080A1344;
            prank->base.xspeed = 0x80;
            if (prank->base.flags & 1)
            {
                prank->base.xspeed = -prank->base.xspeed;
            }
            prank->unk9E = temp;
            break;
        case 2:
            ObjectSetFunc(prank, 2, sub_080A1430);
            prank->base.xspeed = 0x180;
            if (prank->base.flags & 1)
            {
                prank->base.xspeed = -prank->base.xspeed;
            }
            prank->base.counter = 0x3C;
            prank->unk9E = temp;
            break;
        case 3:
            sub_080A2710(prank);
            break;
        }
    }
}

void sub_080A158C(struct Object *prank)
{
    ObjectSetFunc(prank, 0xe, sub_080A163C);
    prank->base.flags &= ~2;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    PlaySfx(&prank->base, SE_COOKED_KIRBY);
}

static void sub_080A163C(struct Object *prank)
{
    if (prank->base.flags & 2)
    {
        ObjectSetFunc(prank, 0, sub_080A250C);
        prank->base.flags &= ~0x800;
        prank->base.counter = 0x28;
        prank->base.xspeed = 0;
        prank->base.yspeed = 0;
        prank->unk9E = 2;
    }
    if (prank->base.header.unk1 == 0x18 || prank->base.header.unk1 == 0x30) PlaySfx(&prank->base, SE_COOKED_KIRBY);
}

static void sub_080A170C(struct Object *prank)
{
    prank->base.flags |= 4;
    if (!(prank->base.header.unk1 & 7))
    {
        s16 temp = 0x2000;
        s32 x;
        if (prank->base.flags & 1)
            temp = -temp;
        x = prank->base.x + temp;
        if (x <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.x
            && x >= gCurLevelInfo[prank->base.unk56].levelMinPosition.x
            && prank->base.y <= gCurLevelInfo[prank->base.unk56].levelMaxPosition.y
            && prank->base.y >= gCurLevelInfo[prank->base.unk56].levelMinPosition.y)
        {
            const u32 *a = gCollisionAttributes;
            if (a[GetCollisionTile(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
            {
                if (prank->base.unk62 & 4)
                {
                    prank->unk83 = 3;
                    prank->unk78 = sub_080A265C;
                    prank->base.xspeed = 0;
                    prank->base.yspeed = 0;
                }
                return;
            }
        }
    }
    if (prank->base.unk62 & 1)
    {
        prank->base.flags ^= 1;
        prank->base.xspeed = -prank->base.xspeed;
    }
}

bool32 sub_080A1804(struct Object *prank, struct Kirby *kirby)
{
    if (prank->unk83 != 2
        || kirby->base.header.kind
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || kirby->base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(prank, 0x10, sub_080A1898);
    prank->base.flags &= ~2;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    kirby->unk110 = gUnk_08352F84;
    prank->kirby3 = kirby;
    prank->base.unk6C = kirby;
    prank->unk9E = 3;
    return TRUE;
}

static void sub_080A1898(struct Object *prank)
{
    if (prank->base.flags & 2)
    {
        ObjectSetFunc(prank, 0, sub_080A250C);
        prank->base.flags &= ~0x800;
        prank->base.counter = 0x28;
        prank->base.xspeed = 0;
        prank->base.yspeed = 0;
        prank->unk9E = 2;
        prank->unk83 = 0x11;
    }
    if (prank->base.header.unk1 == 0x46)
        PlaySfx(&prank->base, SE_PRANK_PAINT);
}

static void sub_080A196C(struct Object *prank)
{
    if (abs(prank->kirby3->base.x - prank->base.x) <= 0x77FF)
        sub_080A2774(prank);
    else if (!(++prank->base.counter & 0xF))
    {
        prank->kirby3 = FindTargetKirby(&prank->base);
        if (prank->base.x > prank->kirby3->base.x)
            prank->base.flags |= 1;
        else
            prank->base.flags &= ~1;
    }
}

static void sub_080A19DC(struct Object *prank)
{
    s32 x = prank->base.flags & 1 ? (prank->base.x >> 8) + 6 : (prank->base.x >> 8) - 6;
    s32 y = (prank->base.y >> 8) - 8;
#ifndef NONMATCHING
    u8 i, j;
    struct Object *obj;

    // TODO(match): CreateObjTemplateAndObjWithSettingParent expanded by hand. The target indexes
    // the template through a copy of the loop counter (adds r3, r4, #0), which the macro lacks.
    for (i = 0; i < 0x20; ++i)
    {
        if (!(gUnk_020229D4 & (1 << i)))
        {
            gUnk_020229D4 |= 1 << i;
            break;
        }
    }
    j = i;
    gUnk_020229E0[j].spawnTable = 1;
    gUnk_020229E0[j].unk1 = 0x24;
    gUnk_020229E0[j].x = x;
    gUnk_020229E0[j].y = y;
    gUnk_020229E0[j].unk2 = 0;
    gUnk_020229E0[j].unk3 = 0x1F;
    gUnk_020229E0[j].unk4 = 0;
    gUnk_020229E0[j].unk5 = 0;
    gUnk_020229E0[j].type = OBJ_PRANK_FIRE + RandLessThan3();
    gUnk_020229E0[j].subtype1 = 0;
    gUnk_020229E0[j].unkF = 0;
    gUnk_020229E0[j].subtype2 = 0;
    gUnk_020229E0[j].unk22 = 0;
    gUnk_020229E0[j].unk1A = 0;
    gUnk_020229E0[j].unk1C = 0;
    gUnk_020229E0[j].unk1E = 0;
    gUnk_020229E0[j].unk20 = 0;
    gUnk_020229E0[j].unk11 = 0;
    gUnk_020229E0[j].unk12 = 0;
    gUnk_020229E0[j].unk14 = 0;
    gUnk_020229E0[j].unk16 = 0;
    gUnk_020229E0[j].unk18 = 0;
    obj = CreateObject(prank->base.unk56, &gUnk_020229E0[j]);
    obj->base.parent = prank;
#else
    CreateObjTemplateAndObjWithSettingParent(prank, 1, 0x24, x, y,
        0, 0x1F, 0, 0, OBJ_PRANK_FIRE + RandLessThan3(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
#endif
}

void *CreatePrankItem(struct ObjectTemplate *template, u8 arg1)
{
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(task), *item = tmp;

    InitObject(item, template, arg1);
    item->base.flags |= 0x100;
    item->base.unkC |= 2;
    if (item->type == OBJ_PRANK_FIRE)
        item->base.unk68 |= 0x100;
    if (item->type == OBJ_PRANK_BOMB)
        item->base.flags &= ~0x100;
    item->base.unk5C |= 0x80000;
    sub_0803E2B0(&item->base, -5, -3, 5, 8);
    ObjectSetBounds(&item->base, -6, -4, 6, 0xA);
    ObjectSetBounds(&item->base, -4, -2, 4, 4);
    if (item->subtype)
        item->base.flags |= 1;
    ObjectInitSprite(item);
    item->base.sprite.unk14 = 0x640;
    item->unk9E = 0;
    item->unk7C = sub_0809F840;
    if (item->type == OBJ_PRANK_BOMB && item->objTemplate->subtype1)
        sub_080A2940(item);
    else
        gUnk_08351648[item->type].unk10(item);
    return item;
}

static void sub_080A1C20(struct Object *item)
{
    struct Object *prank = item->base.parent;
    struct Kirby *kirby = prank->kirby3;
    s32 dist;

    item->unk9E = 0;
    item->unk7C = NULL;
    ObjectSetFunc(item, 0, sub_080A1DE4);
    dist = abs(kirby->base.x - item->base.x) >> 8;
    if (dist < 0x32)
    {
        item->base.xspeed = (Rand16() & 0x7F) + 0x140;
        item->base.yspeed = 0x180;
    }
    else if (dist < 0x64)
    {
        item->base.xspeed = (Rand16() & 0x7F) + 0x1C0;
        item->base.yspeed = 0x200;
    }
    else if (dist < 0x96)
    {
        item->base.xspeed = (Rand16() & 0x7F) + 0x240;
        item->base.yspeed = 0x280;
    }
    else
    {
        item->base.xspeed = (Rand16() & 0x7F) + 0x2C0;
        item->base.yspeed = 0x300;
    }
    if (item->base.flags & 1)
        item->base.xspeed = -item->base.xspeed;
    item->base.flags &= ~0x40;
    PlaySfx(&item->base, SE_PRANK_THROW_ITEM);
}

static void sub_080A1DE4(struct Object *item)
{
    item->base.flags |= 4;
    if (item->base.xspeed < 0)
    {
        item->base.xspeed += 4;
        if (item->base.xspeed > 0)
            item->base.xspeed = 0;
    }
    else
    {
        item->base.xspeed -= 4;
        if (item->base.xspeed < 0)
            item->base.xspeed = 0;
    }
    if (item->type == OBJ_PRANK_BOMB)
    {
        if (!(item->base.counter & 7))
            sub_08097E9C(&item->base, -6, -6);
        if (item->base.unk62)
        {
            item->base.xspeed = 0;
            item->base.yspeed = 0;
            item->base.flags |= 0x1000;
            item->base.flags |= 0x200;
            sub_0809DA30(item);
            return;
        }
    }
    ++item->base.counter;
}

static void sub_080A1E74(struct Object *item)
{
    item->base.flags |= 4;
    if (!(item->base.counter & 7))
        sub_08097E9C(&item->base, -6, -6);
    if (!--item->base.counter)
    {
        if (!(Rand16() & 7))
        {
            item->base.counter = 0x258;
            item->unk78 = sub_080A290C;
        }
        else
        {
            item->base.flags |= 0x1000;
            item->base.flags |= 0x200;
            sub_0809DA30(item);
        }
    }
}

static void sub_080A1EF4(struct Object *prank)
{
    s32 x = prank->base.flags & 1 ? (prank->base.x >> 8) - 0x14 : (prank->base.x >> 8) + 0x14;
    s32 y = prank->base.y >> 8;

    CreateObjTemplateAndObjWithSettingParent(prank, 1, 0x24, x, y,
        0, 0x1F, 0, 0, OBJ_PRANK_PAN, 0, 0, prank->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

static void sub_080A1FB8(struct Object *prank)
{
    struct Task *t = TaskCreate(sub_080A2080, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = prank->base.x;
    objBase->y = prank->base.y;
    objBase->parent = prank;
    objBase->counter = 0;
    objBase->roomId = prank->base.roomId;
    objBase->unk56 = prank->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    sub_0803E2B0(objBase, 0, -2, 0xE, 6);
}

static void sub_080A2080(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object *prank = objBase->parent;

    if (objBase->roomId != 0xFFFF && prank->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->x = prank->base.x;
    objBase->y = prank->base.y;
    objBase->unk56 = prank->base.unk56;
    if (!ObjectPreUpdate(objBase))
    {
        if (prank->base.flags & 1)
            objBase->flags |= 1;
        else
            objBase->flags &= ~1;
        if (prank->unk83 == 2)
        {
            if (objBase->flags & 0x40000)
                objBase->flags &= ~0x40000;
            else if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
        }
    }
}

static void sub_080A21AC(struct Object *prank)
{
    s32 x = prank->base.flags & 1 ? (prank->base.x >> 8) - 0xC : (prank->base.x >> 8) + 0xC;
    s32 y = (prank->base.y >> 8) + 4;

    CreateObjTemplateAndObjWithSettingParent(prank, 1, 0x24, x, y,
        0, 0x1F, 0, 0, OBJ_BANANA_PEEL, 0, 0, prank->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void *CreateBananaPeel(struct ObjectTemplate *template, u8 arg1)
{
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(task), *peel = tmp;

    InitObject(peel, template, arg1);
    peel->base.unk5C |= ~7;
    peel->base.unk5C &= ~0x80;
    peel->base.unk68 |= 0x20000;
    peel->base.flags |= 0x200000;
    peel->base.flags |= 0x10000;
    peel->base.flags |= 0x400000;
    peel->base.flags |= 0x8000;
    peel->base.flags |= 0x2000000;
    peel->base.unk68 &= ~7;
    peel->base.unk68 |= 7;
    peel->base.unk5C |= 0x80000;
    sub_0803E2B0(&peel->base, -5, -7, 5, 4);
    ObjectSetBounds(&peel->base, -6, -8, 6, 6);
    if (peel->subtype)
        peel->base.flags |= 1;
    ObjectInitSprite(peel);
    peel->unk9E = 0;
    peel->unk7C = sub_080A29F0;
    gUnk_08351648[peel->type].unk10(peel);
    return peel;
}

static void sub_080A2380(struct Object *peel)
{
    if (peel->base.unk62 & 4)
    {
        struct Object *prank = peel->base.parent;

        ObjectSetFunc(peel, 0, sub_080A29A0);
        peel->base.xspeed = 0x80;
        peel->base.yspeed = 0x180;
        if (Rand16() & 1)
            peel->base.xspeed = -peel->base.xspeed;
        if (prank && prank->unk83 <= 2)
        {
            ObjectSetFunc(prank, 0, sub_080A250C);
            prank->base.flags &= ~0x800;
            prank->base.counter = 0x28;
            prank->base.xspeed = 0;
            prank->base.yspeed = 0;
            prank->unk9E = 2;
            prank->unk83 = 0x11;
        }
        peel->base.flags |= 0x20;
        peel->base.flags |= 0x200;
        peel->base.flags &= ~0x40000;
    }
}

void sub_080A243C(struct Object *item)
{
    ObjectSetFunc(item, 0, sub_080A28BC);
    item->base.flags |= 0x40;
}

void sub_080A245C(struct Object *prank)
{
    ObjectSetFunc(prank, 0, sub_080A250C);
    prank->base.flags &= ~0x800;
    prank->base.counter = 0x28;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    prank->unk9E = 2;
}

void sub_080A2494(struct Object *peel)
{
    ObjectSetFunc(peel, 0, sub_080A2970);
    peel->base.xspeed = 0;
}

static void sub_080A24B0(struct Object *prank)
{
    prank->base.flags |= 4;
    if (!--prank->base.counter)
    {
        prank->base.counter = 0x3C;
        sub_080A24D8(prank);
    }
}

static void sub_080A24D8(struct Object *prank)
{
    prank->unk83 = 1;
    prank->unk78 = sub_080A1344;
    prank->base.xspeed = 0x80;
    if (prank->base.flags & 1)
        prank->base.xspeed = -prank->base.xspeed;
    prank->unk9E = 0;
}

static void sub_080A250C(struct Object *prank)
{
    prank->base.flags |= 4;
    if (!--prank->base.counter)
    {
        prank->base.flags ^= 1;
        sub_080A2534(prank);
    }
}

static void sub_080A2534(struct Object *prank)
{
    ObjectSetFunc(prank, 2, sub_080A1430);
    prank->base.xspeed = 0x180;
    if (prank->base.flags & 1)
        prank->base.xspeed = -prank->base.xspeed;
    prank->base.counter = 0x3C;
    prank->unk9E = 2;
}

static void sub_080A2570(struct Object *prank)
{
    if (prank->kirbyAbility == KIRBY_ABILITY_COOK)
        sub_080A2800(prank);
    else
    {
        ObjectSetFunc(prank, 0xA, sub_080A25DC);
        prank->base.xspeed = 0;
        prank->base.yspeed = 0;
        prank->base.flags &= ~2;
        prank->unk9E = 0x3C;
        prank->kirby3 = FindTargetKirby(&prank->base);
        if (prank->base.x > prank->kirby3->base.x)
            prank->base.flags |= 1;
        else
            prank->base.flags &= ~1;
    }
}

static void sub_080A25DC(struct Object *prank)
{
    if (prank->base.header.unk1 == 0x19)
        sub_080A19DC(prank);
    if (prank->base.flags & 2)
    {
        ObjectSetFunc(prank, 0, sub_080A250C);
        prank->base.flags &= ~0x800;
        prank->base.counter = 0x28;
        prank->base.xspeed = 0;
        prank->base.yspeed = 0;
        prank->unk9E = 2;
    }
}

static void sub_080A262C(struct Object *prank)
{
    if (prank->base.unk62 & 4)
    {
        prank->unk83 = 3;
        prank->unk78 = sub_080A265C;
        prank->base.xspeed = 0;
        prank->base.yspeed = 0;
    }
}

static void sub_080A265C(struct Object *prank)
{
    if (prank->base.flags & 2)
        sub_080A2674(prank);
}

static void sub_080A2674(struct Object *prank)
{
    prank->unk83 = 4;
    prank->unk78 = sub_080A26B4;
    prank->base.xspeed = 0x100;
    prank->base.yspeed = 0x200;
    prank->base.flags |= 0x20;
    if (prank->base.flags & 1)
        prank->base.xspeed = -prank->base.xspeed;
}

static void sub_080A26B4(struct Object *prank)
{
    if (prank->base.unk62 & 1)
    {
        prank->base.flags ^= 1;
        prank->base.xspeed = -prank->base.xspeed;
    }
    if (prank->base.unk62 & 4)
        sub_080A26F0(prank);
}

static void sub_080A26F0(struct Object *prank)
{
    prank->unk83 = 7;
    prank->unk78 = sub_080A14FC;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
}

static void sub_080A2710(struct Object *prank)
{
    ObjectSetFunc(prank, 2, sub_080A170C);
    prank->base.xspeed = 0x180;
    if (prank->base.flags & 1)
        prank->base.xspeed = -prank->base.xspeed;
    prank->unk9E = 3;
}

static void sub_080A2748(struct Object *prank)
{
    ObjectSetFunc(prank, 8, sub_080A196C);
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    prank->base.flags |= 0x200;
}

static void sub_080A2774(struct Object *prank)
{
    ObjectSetFunc(prank, 9, sub_080A27A0);
    prank->base.flags &= ~2;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
}

static void sub_080A27A0(struct Object *prank)
{
    if (prank->base.header.unk1 == 0x30)
        sub_080A21AC(prank);
    if (prank->base.flags & 2)
    {
        prank->base.flags &= ~0x200;
        sub_080A27D0(prank);
    }
}

static void sub_080A27D0(struct Object *prank)
{
    ObjectSetFunc(prank, 0, sub_080A27F4);
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
}

static void sub_080A27F4(struct Object *prank)
{
    prank->base.flags |= 4;
}

static void sub_080A2800(struct Object *prank)
{
    ObjectSetFunc(prank, 0xB, sub_080A2850);
    prank->base.flags &= ~2;
    prank->base.xspeed = 0;
    prank->kirby3 = FindTargetKirby(&prank->base);
    if (prank->base.x > prank->kirby3->base.x)
        prank->base.flags |= 1;
    else
        prank->base.flags &= ~1;
}

static void sub_080A2850(struct Object *prank)
{
    if (prank->base.header.unk1 == 0x30)
    {
        sub_080A1EF4(prank);
        prank->base.flags |= 0x800;
    }
    if (prank->base.flags & 2)
        sub_080A2880(prank);
}

static void sub_080A2880(struct Object *prank)
{
    ObjectSetFunc(prank, 0xC, sub_080A28A0);
    prank->base.flags &= ~4;
}

static void sub_080A28A0(struct Object *prank)
{
    if (++prank->base.counter > 0x58)
        prank->unk83 = 0xF;
}

static void sub_080A28BC(struct Object *item)
{
    struct Object *prank = item->base.parent;

    item->base.flags |= prank->base.flags & 1;
    item->base.flags |= 4;
    if (item->type == OBJ_PRANK_BOMB && !(item->base.counter & 7))
        sub_08097E9C(&item->base, -6, -6);
    if (++item->base.counter > 0x1B)
        sub_080A1C20(item);
}

static void sub_080A290C(struct Object *item)
{
    if (!--item->base.counter)
    {
        item->unk80 = 0;
        item->base.flags |= 0x1000;
        item->base.flags |= 0x200;
        sub_0809DA30(item);
    }
}

static void sub_080A2940(struct Object *item)
{
    ObjectSetFunc(item, 0, sub_080A1E74);
    item->base.xspeed = 0;
    item->base.yspeed = 0;
    item->kirbyAbility = KIRBY_ABILITY_BOMB;
    item->base.counter = 0x20;
}

static void sub_080A2970(struct Object *peel)
{
    if (peel->base.flags & 0x40000)
    {
        struct ObjectBase *objBase = peel->base.unk6C;

        peel->base.flags &= ~0x40000;
        if (!(objBase->flags & 0x40))
            sub_080A2380(peel);
    }
}

static void sub_080A29A0(struct Object *peel)
{
    if (peel->base.unk62 & 3)
        peel->base.xspeed = -peel->base.xspeed;
    if (peel->base.unk62 & 4)
    {
        peel->base.flags &= ~0x200;
        ObjectSetFunc(peel, 0, sub_080A2970);
        peel->base.xspeed = 0;
    }
}

static void sub_080A29F0(struct Object *peel)
{
    struct Object *prank = peel->base.parent;

    if (prank && prank->base.flags & 0x1000)
        peel->base.parent = NULL;
}

#include "object.h"
#include "prank.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "constants/kirby.h"

extern void sub_080A2748(struct Object2 *obj2);
extern void sub_080A1FB8(struct Object2 *obj2);
extern void sub_080A2710(struct Object2 *prank);
extern void sub_080A2534(struct Object2 *prank);
extern void sub_080A24B0(struct Object2 *prank);
extern void sub_080A262C(struct Object2 *prank);
extern void sub_080A2570(struct Object2 *prank);
extern void sub_080A163C(struct Object2 *prank);
extern void sub_080A250C(struct Object2 *prank);
extern void sub_080A265C(struct Object2 *prank);
extern void sub_080A1898(struct Object2 *prank);

extern const struct Kirby_110 gUnk_08352F84[];

void* CreatePrank(struct Object* arg0, u8 arg1)
{
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x02000000;
    if (obj->base.x > obj->kirby3->base.base.base.x)
    {
        obj->base.flags |= 1;
    }
    else
    {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    sub_0803E308(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    if (obj->object->subtype1 == 4)
    {
        sub_080A2748(obj);
    }
    else
    {
        gUnk_08351648[obj->type].unk10(obj);
    }
    if (obj->object->subtype1 == 3)
    {
        sub_080A1FB8(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    if (obj->object->subtype1 != 0)
    {
        if (obj->object->subtype1 == 2)
        {
            obj->kirbyAbility = KIRBY_ABILITY_COOK;
        }
        else
        {
            if (obj->object->subtype1 == 1)
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

void sub_080A12E4(struct Object2 *prank)
{
    if (prank->object->subtype1 == 3)
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
    if (prank->object->subtype1 == 4 || prank->unk9E == 2)
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

void sub_080A1344(struct Object2 *prank)
{
    prank->base.flags |= 4;
    if (prank->base.unk62 & 1)
    {
        prank->base.flags ^= 1;
        prank->base.xspeed = -prank->base.xspeed;
    }
    if (!(prank->base.unk1 & 7))
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
            const u32 *a = gUnk_082D88B8;
            if (a[sub_080023E4(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
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

void sub_080A1430(struct Object2 *prank)
{
    prank->base.flags |= 4;
    if (!(prank->base.unk1 & 7))
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
            const u32 *a = gUnk_082D88B8;
            if (a[sub_080023E4(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
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

void sub_080A14FC(struct Object2 *prank)
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

void sub_080A158C(struct Object2 *prank)
{
    ObjectSetFunc(prank, 0xe, sub_080A163C);
    prank->base.flags &= ~2;
    prank->base.xspeed = 0;
    prank->base.yspeed = 0;
    PlaySfx(&prank->base, SE_08D55C6C);
}

void sub_080A163C(struct Object2 *prank)
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
    if (prank->base.unk1 == 0x18 || prank->base.unk1 == 0x30) PlaySfx(&prank->base, SE_08D55C6C);
}

void sub_080A170C(struct Object2 *prank)
{
    prank->base.flags |= 4;
    if (!(prank->base.unk1 & 7))
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
            const u32 *a = gUnk_082D88B8;
            if (a[sub_080023E4(prank->base.unk56, x >> 12, prank->base.y >> 12)] & 0x200)
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

bool8 sub_080A1804(struct Object2 *prank, struct Kirby *kirby)
{
    if (prank->unk83 != 2
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 0x27
        || kirby->unkD4 > 0x7A
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
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

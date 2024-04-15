#include "object.h"
#include "prank.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"

extern void sub_080A2748(struct Object2 *obj2);
extern void sub_080A1FB8(struct Object2 *obj2);
extern void sub_080A2710(struct Object2 *prank);
extern void sub_080A2534(struct Object2 *prank);
extern void sub_080A24B0(struct Object2 *prank);
extern void sub_080A262C(struct Object2 *prank);
extern void sub_080A2570(struct Object2 *prank);

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
            obj->kirbyAbility = 0xc;
        }
        else
        {
            if (obj->object->subtype1 == 1)
            {
                gRngVal = gRngVal * 0x00196225 + 0x3C6EF35F;
                if (!((gRngVal >> 0x10) & 3))
                {
                    obj->kirbyAbility = 0xc;
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
        u16 temp = 0x2000;
        s32 x;
        if (prank->base.flags & 1)
            temp = -temp;
        x = prank->base.x + (s16)temp;
        if (x <= gCurLevelInfo[prank->base.unk56].unk50
            && x >= gCurLevelInfo[prank->base.unk56].unk48
            && prank->base.y <= gCurLevelInfo[prank->base.unk56].unk54
            && prank->base.y >= gCurLevelInfo[prank->base.unk56].unk4C)
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
        u16 temp = 0x2000;
        s32 x;
        if (prank->base.flags & 1)
            temp = -temp;
        x = prank->base.x + (s16)temp;
        if (x <= gCurLevelInfo[prank->base.unk56].unk50
            && x >= gCurLevelInfo[prank->base.unk56].unk48
            && prank->base.y <= gCurLevelInfo[prank->base.unk56].unk54
            && prank->base.y >= gCurLevelInfo[prank->base.unk56].unk4C)
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

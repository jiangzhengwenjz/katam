#include "hot_head.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void sub_080C3294(struct Object2 *);
void sub_080C33B0(struct Object2 *);
static void sub_080C34D4(void);
static void sub_080C3880(void);
void sub_080C3A7C(struct Object2 *, struct Kirby *);
static void sub_080C3CF0(void);
void sub_080C3F2C(struct Object2 *);
static void sub_080C3F90(struct Object2 *);
void sub_080C3FAC(struct Object2 *);
static void sub_080C4010(struct Object2 *);
static void sub_080C4064(struct Object2 *);

extern const s16 gUnk_0835552C[];
extern const s16 gUnk_0835553A[];

#ifndef NONMATCHING
#define SetPointerSomethingAlt(objBase) ({ \
    if (!((objBase)->flags & 0x200)) \
    if (!((objBase)->flags & 0x1200)) \
    { \
        u32 _temp; \
 \
        _temp = (objBase)->unk56 != 0xFF ? gCurLevelInfo[(objBase)->unk56].unk65E : 0xFF; \
        if (_temp != 0xFF) \
        { \
            u8 _idx; \
            u32 _temp2 = _temp * 64 + ((objBase)->unk0 - 1) * 32; \
 \
            asm("":::"memory"); \
            _idx = gUnk_02022EB0[_temp][(objBase)->unk0 - 1]++ + _temp2; \
            gUnk_02022F50[_idx] = (objBase); \
            gUnk_02022F50[_idx + 1] = NULL; \
        } \
    } \
})
#else
#define SetPointerSomethingAlt(objBase) ({ \
    if (!((objBase)->flags & 0x200)) \
    if (!((objBase)->flags & 0x1200)) \
    { \
        u32 _temp; \
 \
        _temp = (objBase)->unk56 != 0xFF ? gCurLevelInfo[(objBase)->unk56].unk65E : 0xFF; \
        if (_temp != 0xFF) \
        { \
            u8 _idx; \
            u32 _temp2 = _temp * 64 + ((objBase)->unk0 - 1) * 32; \
 \
            _idx = gUnk_02022EB0[_temp][(objBase)->unk0 - 1]++ + _temp2; \
            gUnk_02022F50[_idx] = (objBase); \
            gUnk_02022F50[_idx + 1] = NULL; \
        } \
    } \
})
#endif

void *CreateHotHead(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *hothead = tmp;

    InitObject(tmp, template, a2);
    if (hothead->base.x > hothead->kirby3->base.base.base.x)
        hothead->base.flags |= 1;
    else
        hothead->base.flags &= ~1;
    sub_0803E2B0(&hothead->base, -5, -5, 5, 6);
    sub_0803E308(&hothead->base, -6, -6, 6, 8);
    ObjectInitSprite(hothead);
    if (hothead->object->subtype1 != 2)
    {
        if (abs(hothead->kirby3->base.base.base.x - hothead->base.x) < 0x6000
            && abs(hothead->kirby3->base.base.base.y - hothead->base.y) < 0x4000)
        {
            if (!(Rand16() & 3))
                sub_080C3F2C(hothead);
            else
                gUnk_08351648[hothead->type].unk10(hothead);
        }
        else
            gUnk_08351648[hothead->type].unk10(hothead);
    }
    hothead->unk9E = 0;
    hothead->unk7C = NULL;
    return hothead;
}

void sub_080C3234(struct Object2 *hothead)
{
    ObjectSetFunc(hothead, 0, sub_080C3294);
    if (hothead->object->subtype1 == 0)
        hothead->base.xspeed = 0x80;
    else
        hothead->base.xspeed = 0;
    if (hothead->base.flags & 1)
        hothead->base.xspeed = -hothead->base.xspeed;
    if (hothead->subtype)
        hothead->base.counter = 0x2D;
    else
        hothead->base.counter = 0x5A;
    hothead->unk85 = 0;
}

static void sub_080C3294(struct Object2 *hothead)
{
    hothead->base.flags |= 4;
    if (hothead->object->subtype1 != 2)
    {
        if (hothead->base.unk62 & 1)
        {
            hothead->base.flags ^= 1;
            hothead->base.xspeed = -hothead->base.xspeed;
        }
        if (!--hothead->base.counter)
        {
            if (hothead->subtype)
                hothead->base.counter = 0x1E;
            else
                hothead->base.counter = 0x3C;
            if (abs(hothead->kirby3->base.base.base.x - hothead->base.x) < 0x6000
                && abs(hothead->kirby3->base.base.base.y - hothead->base.y) < 0x4000)
            {
                if (Rand16() & 1)
                    sub_080C3F2C(hothead);
            }
            else
            {
                if (!(Rand16() & 7))
                    sub_080C3F2C(hothead);
            }
        }
        if (++hothead->unk85 > 0x16)
        {
            hothead->unk85 = 0;
            sub_080C33B0(hothead);
        }
    }
}

void sub_080C33B0(struct Object2 *hothead)
{
    struct Task *t = TaskCreate(sub_080C34D4, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    sub_0803E3B0(tmp);
    obj4->unk0 = 3;
    obj4->x = hothead->base.x;
    obj4->y = hothead->base.y;
    obj4->parent = hothead;
    obj4->roomId = hothead->base.roomId;
    obj4->flags |= 0x4000;
    obj4->unk3C = 0xFF00;
    obj4->unk3E = 0xFF80;
    obj4->y -= (Rand16() & 0xF) - 0xC;
    if (hothead->base.flags & 1)
    {
        obj4->x += 0x400;
        obj4->unk3C = -obj4->unk3C;
    }
    else
        obj4->x -= 0x400;
    if (Macro_0810B1F4(&hothead->base))
        obj4->flags |= 0x2000;
    obj4->flags |= 0x4000;
    sub_080709F8(obj4, &obj4->sprite, 0x06012000, 0x297, 1, 0xC);
}

static void sub_080C34D4(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask);
    struct Object4 *obj4 = tmp;
    struct Object2 *hothead;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        hothead = obj4->parent;
        if (hothead)
        {
            if (hothead->base.unk0 && hothead->base.flags & 0x1000)
            {
                obj4->parent = NULL;
                hothead = NULL;
            }
            if (!hothead)
                goto label;
            if (Macro_0810B1F4(&hothead->base) && !(obj4->flags & 0x2000))
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
        Macro_0809E55C(obj4);
        if (obj4->flags & 2)
            obj4->flags |= 0x1000;
        else
        {
            obj4->unk3E = gUnk_0835552C[obj4->unk4 >> 1];
            obj4->unk4++;
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

void sub_080C3694(struct Object2 *hothead, u8 a2)
{
    struct Task *t = TaskCreate(sub_080C3880, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    u32 idx;

    sub_0803E380(tmp);
    objBase->unk0 = 2;
    objBase->x = hothead->base.x;
    objBase->y = hothead->base.y;
    objBase->parent = hothead;
    objBase->counter = 0;
    objBase->roomId = hothead->base.roomId;
    objBase->unk56 = hothead->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x140;
    objBase->unk68 = 0x20000103;
    objBase->unk5C |= 0x80000;
    if (a2 > 5)
        a2 = 5;
    objBase->xspeed = gUnk_0835553A[idx = a2 * 2];
    objBase->yspeed = gUnk_0835553A[idx + 1];
    if (hothead->base.flags & 1)
    {
        objBase->x -= 0xE00;
        objBase->flags |= 1;
        objBase->xspeed = -objBase->xspeed;
    }
    else
    {
        objBase->x += 0xE00;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, -2, -2, 2, 2);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, 0x10, 0x320, 0, 0xC);
    PlaySfx(objBase, SE_BASIC_ENEMY_FIRE_ATTACK);
}

static void sub_080C3880(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *hothead = objBase->parent;
    struct Sprite sprite;

    if (objBase->roomId != 0xFFFF && hothead->base.flags & 0x1000)
        objBase->roomId |= 0xFFFF;
    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    if (!sub_0806F780(objBase))
    {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        else
        {
            SetPointerSomethingAlt(objBase);
            if (!(objBase->flags & 0x800))
            {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            sub_0806F8BC(objBase);
        }
    }
}

void sub_080C3A7C(struct Object2 *hothead, struct Kirby *target)
{
    struct Task *t = TaskCreate(sub_080C3CF0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_0803DCCC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    s32 dx, dy, vx, vy, tmp1, tmp2;
    u16 d;

    sub_0803E380(tmp);
    objBase->unk0 = 2;
    objBase->x = hothead->base.x;
    objBase->y = hothead->base.y;
    objBase->parent = hothead;
    objBase->counter = 0;
    objBase->roomId = hothead->base.roomId;
    objBase->unk56 = hothead->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x40;
    objBase->unk68 = 0x20000103;
    objBase->unk5C |= 0x80000;
    dx = (target->base.base.base.x - hothead->base.x) >> 8;
    dy = (hothead->base.y - target->base.base.base.y) >> 8;
    d = Sqrt((dx * dx + dy * dy) * 0x100);
    vx = (dx * 0x100) / d;
    tmp1 = vx * 0x100;
    vy = (dy * 0x100) / d;
    tmp2 = vy * 0x100;
    objBase->xspeed = (0x200u * vx + tmp1) >> 4;
    objBase->yspeed = ((0x200 * vy + tmp2) << 4) >> 8;
    if (objBase->yspeed < 0)
    {
        if (objBase->yspeed < -0xDE)
            objBase->yspeed = -0xDE;
    }
    else if (objBase->yspeed > 0xDE)
        objBase->yspeed = 0xDE;
    if (hothead->base.flags & 1)
    {
        objBase->x -= 0xE00;
        objBase->flags |= 1;
        if (objBase->xspeed > -0x2DC)
            objBase->xspeed = -0x2DC;
    }
    else
    {
        objBase->x += 0xE00;
        objBase->flags &= ~1;
        if (objBase->xspeed < 0x2DC)
            objBase->xspeed = 0x2DC;
    }
    sub_0803E2B0(objBase, -4, -4, 4, 4);
    sub_0803E308(objBase, -2, -2, 2, 2);
    sub_080708DC(objBase, &objBase->sprite, 0x10, 0x320, 1, 0xC);
    PlaySfx(objBase, SE_BASIC_ENEMY_FIRE_ATTACK);
}

static void sub_080C3CF0(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    if (!sub_0806F780(objBase))
    {
        objBase->flags |= 4;
        if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x
            && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
            && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y
            && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
            sub_0806FC70(objBase);
        if (objBase->unk62)
        {
            objBase->flags |= 0x1000;
            sub_0808AE30(objBase, 0, 0x298, 0);
        }
        else
        {
            SetPointerSomethingAlt(objBase);
            if (!(objBase->flags & 0x800))
            {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            sub_0806F8BC(objBase);
        }
    }
}

void sub_080C3F2C(struct Object2 *hothead)
{
    hothead->kirby3 = sub_0803D368(&hothead->base);
    if (hothead->kirby3->ability != KIRBY_ABILITY_FIRE
        && (hothead->kirby3->transitioningAbility & 0x1F) != KIRBY_ABILITY_FIRE)
    {
        ObjectSetFunc(hothead, 1, sub_080C3F90);
        if (hothead->base.x > hothead->kirby3->base.base.base.x)
            hothead->base.flags |= 1;
        else
            hothead->base.flags &= ~1;
        hothead->base.xspeed = 0;
    }
}

static void sub_080C3F90(struct Object2 *hothead)
{
    if (++hothead->base.counter > 0x28)
        sub_080C3FAC(hothead);
}

void sub_080C3FAC(struct Object2 *hothead)
{
    s32 dx, dy;

    hothead->unk85 = 0;
    hothead->base.xspeed = 0;
    dx = (hothead->kirby3->base.base.base.x - hothead->base.x) << 8;
    dy = (hothead->kirby3->base.base.base.y - hothead->base.y) << 8;
    if ((dx >> 16) * (dx >> 16) + (dy >> 16) * (dy >> 16) <= 0x143F)
        ObjectSetFunc(hothead, 2, sub_080C4010);
    else
        ObjectSetFunc(hothead, 2, sub_080C4064);
}

static void sub_080C4010(struct Object2 *hothead)
{
    hothead->base.flags |= 4;
    if (hothead->base.flags & 2)
        hothead->base.counter++;
    if (hothead->base.unk1 == 1)
    {
        sub_080C3694(hothead, hothead->unk85);
        if (++hothead->unk85 > 4)
            hothead->unk85 = 0;
    }
    if (hothead->base.counter > 0x1D)
        sub_080C3234(hothead);
}

static void sub_080C4064(struct Object2 *hothead)
{
    hothead->base.flags |= 4;
    if (hothead->base.flags & 2)
        hothead->base.counter++;
    if (hothead->unk85 == 0)
    {
        hothead->unk85++;
        sub_080C3A7C(hothead, hothead->kirby3);
    }
    if (hothead->base.counter > 5)
        sub_080C3234(hothead);
}

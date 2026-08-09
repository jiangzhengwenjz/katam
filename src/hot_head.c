#include "hot_head.h"

#include "constants/songs.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void sub_080C3294(struct Object2 *);
static void sub_080C33B0(struct Object2 *);
static void sub_080C34D4(void);
static void sub_080C3880(void);
static void sub_080C3A7C(struct Object2 *, struct Kirby *);
static void sub_080C3CF0(void);
static void sub_080C3F2C(struct Object2 *);
static void sub_080C3F90(struct Object2 *);
static void sub_080C3FAC(struct Object2 *);
static void sub_080C4010(struct Object2 *);
static void sub_080C4064(struct Object2 *);

extern const s16 gUnk_0835552C[];
extern const s16 gUnk_0835553A[];

void *CreateHotHead(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *hotHead = tmp;

    InitObject(tmp, arg0, arg1);
    if (hotHead->base.x > hotHead->kirby3->base.base.base.x)
        hotHead->base.flags |= 1;
    else
        hotHead->base.flags &= ~1;
    sub_0803E2B0(&hotHead->base, -5, -5, 5, 6);
    ObjectSetBounds(&hotHead->base, -6, -6, 6, 8);
    ObjectInitSprite(hotHead);
    if (hotHead->object->subtype1 != 2) {
        if (abs(hotHead->kirby3->base.base.base.x - hotHead->base.x) < 0x6000
            && abs(hotHead->kirby3->base.base.base.y - hotHead->base.y) < 0x4000) {
            if (!(Rand16() & 3))
                sub_080C3F2C(hotHead);
            else
                gUnk_08351648[hotHead->type].unk10(hotHead);
        }
        else
            gUnk_08351648[hotHead->type].unk10(hotHead);
    }
    hotHead->unk9E = 0;
    hotHead->unk7C = NULL;
    return hotHead;
}

void sub_080C3234(struct Object2 *hotHead) {
    ObjectSetFunc(hotHead, 0, sub_080C3294);
    if (hotHead->object->subtype1 == 0)
        hotHead->base.xspeed = 0x80;
    else
        hotHead->base.xspeed = 0;
    if (hotHead->base.flags & 1)
        hotHead->base.xspeed = -hotHead->base.xspeed;
    if (hotHead->subtype)
        hotHead->base.counter = 0x2D;
    else
        hotHead->base.counter = 0x5A;
    hotHead->unk85 = 0;
}

static void sub_080C3294(struct Object2 *hotHead) {
    hotHead->base.flags |= 4;
    if (hotHead->object->subtype1 != 2) {
        if (hotHead->base.unk62 & 1) {
            hotHead->base.flags ^= 1;
            hotHead->base.xspeed = -hotHead->base.xspeed;
        }
        if (!--hotHead->base.counter) {
            if (hotHead->subtype)
                hotHead->base.counter = 0x1E;
            else
                hotHead->base.counter = 0x3C;
            if (abs(hotHead->kirby3->base.base.base.x - hotHead->base.x) < 0x6000
                && abs(hotHead->kirby3->base.base.base.y - hotHead->base.y) < 0x4000) {
                if (Rand16() & 1)
                    sub_080C3F2C(hotHead);
            }
            else {
                if (!(Rand16() & 7))
                    sub_080C3F2C(hotHead);
            }
        }
        if (++hotHead->unk85 > 0x16) {
            hotHead->unk85 = 0;
            sub_080C33B0(hotHead);
        }
    }
}

static void sub_080C33B0(struct Object2 *hotHead) {
    struct Task *task = TaskCreate(sub_080C34D4, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(task), *obj4 = tmp;

    ClearObject4(tmp);
    obj4->unk0 = 3;
    obj4->x = hotHead->base.x;
    obj4->y = hotHead->base.y;
    obj4->parent = hotHead;
    obj4->roomId = hotHead->base.roomId;
    obj4->flags |= 0x4000;
    obj4->unk3C = 0xFF00;
    obj4->unk3E = 0xFF80;
    obj4->y -= (Rand16() & 0xF) - 0xC;
    if (hotHead->base.flags & 1) {
        obj4->x += 0x400;
        obj4->unk3C = -obj4->unk3C;
    }
    else
        obj4->x -= 0x400;
    if (Macro_0810B1F4(&hotHead->base))
        obj4->flags |= 0x2000;
    obj4->flags |= 0x4000;
    Object4InitSprite(obj4, &obj4->sprite, 0x06012000, 0x297, 1, 0xC);
}

static void sub_080C34D4(void) {
    struct Object4 *tmp = TaskGetStructPtr(gCurTask);
    struct Object4 *obj4 = tmp;
    struct Object2 *hotHead;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        hotHead = obj4->parent;
        if (hotHead) {
            if (hotHead->base.unk0 && hotHead->base.flags & 0x1000) {
                obj4->parent = NULL;
                hotHead = NULL;
            }
            if (!hotHead)
                goto _080C3568;
            if (Macro_0810B1F4(&hotHead->base) && !(obj4->flags & 0x2000)) {
                Object4DisplaySprite(obj4);
                return;
            }
        }
        else {
        _080C3568:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        if (obj4->flags & 2)
            obj4->flags |= 0x1000;
        else {
            obj4->unk3E = gUnk_0835552C[obj4->unk4 >> 1];
            obj4->unk4++;
            if (!(obj4->flags & 0x800)) {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            Object4PostUpdate(obj4);
        }
    }
}

void sub_080C3694(struct Object2 *hotHead, u8 dirIndex) {
    struct Task *task = TaskCreate(sub_080C3880, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;
    u32 idx;

    ClearObjectBase(tmp);
    objBase->unk0 = 2;
    objBase->x = hotHead->base.x;
    objBase->y = hotHead->base.y;
    objBase->parent = hotHead;
    objBase->counter = 0;
    objBase->roomId = hotHead->base.roomId;
    objBase->unk56 = hotHead->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x140;
    objBase->unk68 = 0x20000103;
    objBase->unk5C |= 0x80000;
    if (dirIndex > 5)
        dirIndex = 5;
    // The assignment has to happen inside the subscript; hoisting it reorders
    // the two loads from gUnk_0835553A.
    objBase->xspeed = gUnk_0835553A[idx = dirIndex * 2];
    objBase->yspeed = gUnk_0835553A[idx + 1];
    if (hotHead->base.flags & 1) {
        objBase->x -= 0xE00;
        objBase->flags |= 1;
        objBase->xspeed = -objBase->xspeed;
    }
    else {
        objBase->x += 0xE00;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, -2, -2, 2, 2);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x10, 0x320, 0, 0xC);
    PlaySfx(objBase, SE_BASIC_ENEMY_FIRE_ATTACK);
}

static void sub_080C3880(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *hotHead = objBase->parent;
    struct Sprite sprite;

    if (objBase->roomId != 0xFFFF && hotHead->base.flags & 0x1000)
        objBase->roomId |= 0xFFFF;
    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    if (!ObjectPreUpdate(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        else {
            if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
            if (!(objBase->flags & 0x800)) {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            sub_0806F8BC(objBase);
        }
    }
}

static void sub_080C3A7C(struct Object2 *hotHead, struct Kirby *kirby) {
    struct Task *task = TaskCreate(sub_080C3CF0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;
    s32 dx, dy, vx, vy, tmp1, tmp2;
    u16 dist;

    ClearObjectBase(tmp);
    objBase->unk0 = 2;
    objBase->x = hotHead->base.x;
    objBase->y = hotHead->base.y;
    objBase->parent = hotHead;
    objBase->counter = 0;
    objBase->roomId = hotHead->base.roomId;
    objBase->unk56 = hotHead->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x40;
    objBase->unk68 = 0x20000103;
    objBase->unk5C |= 0x80000;
    dx = (kirby->base.base.base.x - hotHead->base.x) >> 8;
    dy = (hotHead->base.y - kirby->base.base.base.y) >> 8;
    dist = Sqrt((dx * dx + dy * dy) * 0x100);
    vx = (dx * 0x100) / dist;
    tmp1 = vx * 0x100;
    vy = (dy * 0x100) / dist;
    tmp2 = vy * 0x100;
    objBase->xspeed = (0x200u * vx + tmp1) >> 4;
    objBase->yspeed = ((0x200 * vy + tmp2) << 4) >> 8;
    if (objBase->yspeed < 0) {
        if (objBase->yspeed < -0xDE)
            objBase->yspeed = -0xDE;
    }
    else if (objBase->yspeed > 0xDE)
        objBase->yspeed = 0xDE;
    if (hotHead->base.flags & 1) {
        objBase->x -= 0xE00;
        objBase->flags |= 1;
        if (objBase->xspeed > -0x2DC)
            objBase->xspeed = -0x2DC;
    }
    else {
        objBase->x += 0xE00;
        objBase->flags &= ~1;
        if (objBase->xspeed < 0x2DC)
            objBase->xspeed = 0x2DC;
    }
    sub_0803E2B0(objBase, -4, -4, 4, 4);
    ObjectSetBounds(objBase, -2, -2, 2, 2);
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x10, 0x320, 1, 0xC);
    PlaySfx(objBase, SE_BASIC_ENEMY_FIRE_ATTACK);
}

static void sub_080C3CF0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    if (!ObjectPreUpdate(objBase)) {
        objBase->flags |= 4;
        if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x
            && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
            && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y
            && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
            sub_0806FC70(objBase);
        if (objBase->unk62) {
            objBase->flags |= 0x1000;
            CreateEffectObject(objBase, 0, 0x298, 0);
        }
        else {
            if (!(objBase->flags & 0x200))
                SetPointerSomething(objBase);
            if (!(objBase->flags & 0x800)) {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            sub_0806F8BC(objBase);
        }
    }
}

static void sub_080C3F2C(struct Object2 *hotHead) {
    hotHead->kirby3 = FindTargetKirby(&hotHead->base);
    if (hotHead->kirby3->ability != KIRBY_ABILITY_FIRE
        && (hotHead->kirby3->transitioningAbility & 0x1F) != KIRBY_ABILITY_FIRE) {
        ObjectSetFunc(hotHead, 1, sub_080C3F90);
        if (hotHead->base.x > hotHead->kirby3->base.base.base.x)
            hotHead->base.flags |= 1;
        else
            hotHead->base.flags &= ~1;
        hotHead->base.xspeed = 0;
    }
}

static void sub_080C3F90(struct Object2 *hotHead) {
    if (++hotHead->base.counter > 0x28)
        sub_080C3FAC(hotHead);
}

static void sub_080C3FAC(struct Object2 *hotHead) {
    s32 dx, dy;

    hotHead->unk85 = 0;
    hotHead->base.xspeed = 0;
    dx = (hotHead->kirby3->base.base.base.x - hotHead->base.x) << 8;
    dy = (hotHead->kirby3->base.base.base.y - hotHead->base.y) << 8;
    if ((dx >> 16) * (dx >> 16) + (dy >> 16) * (dy >> 16) <= 0x143F)
        ObjectSetFunc(hotHead, 2, sub_080C4010);
    else
        ObjectSetFunc(hotHead, 2, sub_080C4064);
}

static void sub_080C4010(struct Object2 *hotHead) {
    hotHead->base.flags |= 4;
    if (hotHead->base.flags & 2)
        hotHead->base.counter++;
    if (hotHead->base.unk1 == 1) {
        sub_080C3694(hotHead, hotHead->unk85);
        if (++hotHead->unk85 > 4)
            hotHead->unk85 = 0;
    }
    if (hotHead->base.counter > 0x1D)
        sub_080C3234(hotHead);
}

static void sub_080C4064(struct Object2 *hotHead) {
    hotHead->base.flags |= 4;
    if (hotHead->base.flags & 2)
        hotHead->base.counter++;
    if (hotHead->unk85 == 0) {
        hotHead->unk85++;
        sub_080C3A7C(hotHead, hotHead->kirby3);
    }
    if (hotHead->base.counter > 5)
        sub_080C3234(hotHead);
}

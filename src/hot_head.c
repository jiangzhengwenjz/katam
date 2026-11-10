#include "hot_head.h"

#include "constants/songs.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void sub_080C3294(struct Object *);
static void sub_080C33B0(struct Object *);
static void sub_080C34D4(void);
static void sub_080C3880(void);
static void sub_080C3A7C(struct Object *, struct Kirby *);
static void sub_080C3CF0(void);
static void sub_080C3F2C(struct Object *);
static void sub_080C3F90(struct Object *);
static void sub_080C3FAC(struct Object *);
static void sub_080C4010(struct Object *);
static void sub_080C4064(struct Object *);

extern const s16 gUnk_0835552C[];
extern const s16 gUnk_0835553A[];

void *CreateHotHead(struct ObjectTemplate *template, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(task), *hotHead = tmp;

    InitObject(tmp, template, arg1);
    if (hotHead->base.x > hotHead->kirby3->base.x)
        hotHead->base.flags |= 1;
    else
        hotHead->base.flags &= ~1;
    sub_0803E2B0(&hotHead->base, -5, -5, 5, 6);
    ObjectSetBounds(&hotHead->base, -6, -6, 6, 8);
    ObjectInitSprite(hotHead);
    if (hotHead->objTemplate->subtype1 != 2) {
        if (abs(hotHead->kirby3->base.x - hotHead->base.x) < 0x6000
            && abs(hotHead->kirby3->base.y - hotHead->base.y) < 0x4000) {
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

void sub_080C3234(struct Object *hotHead) {
    ObjectSetFunc(hotHead, 0, sub_080C3294);
    if (hotHead->objTemplate->subtype1 == 0)
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

static void sub_080C3294(struct Object *hotHead) {
    hotHead->base.flags |= 4;
    if (hotHead->objTemplate->subtype1 != 2) {
        if (hotHead->base.unk62 & 1) {
            hotHead->base.flags ^= 1;
            hotHead->base.xspeed = -hotHead->base.xspeed;
        }
        if (!--hotHead->base.counter) {
            if (hotHead->subtype)
                hotHead->base.counter = 0x1E;
            else
                hotHead->base.counter = 0x3C;
            if (abs(hotHead->kirby3->base.x - hotHead->base.x) < 0x6000
                && abs(hotHead->kirby3->base.y - hotHead->base.y) < 0x4000) {
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

static void sub_080C33B0(struct Object *hotHead) {
    struct Task *task = TaskCreate(sub_080C34D4, sizeof(struct EffectObject), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(task), *effectObject = tmp;

    ClearEffectObject(tmp);
    effectObject->header.kind = 3;
    effectObject->x = hotHead->base.x;
    effectObject->y = hotHead->base.y;
    effectObject->parent = hotHead;
    effectObject->roomId = hotHead->base.roomId;
    effectObject->flags |= 0x4000;
    effectObject->unk3C = -0x100;
    effectObject->unk3E = -0x80;
    effectObject->y -= (Rand16() & 0xF) - 0xC;
    if (hotHead->base.flags & 1) {
        effectObject->x += 0x400;
        effectObject->unk3C = -effectObject->unk3C;
    }
    else
        effectObject->x -= 0x400;
    if (Macro_0810B1F4(&hotHead->base))
        effectObject->flags |= 0x2000;
    effectObject->flags |= 0x4000;
    EffectObjectInitSprite(effectObject, &effectObject->sprite, 0x06012000, 0x297, 1, 0xC);
}

static void sub_080C34D4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effectObject = tmp;
    struct Object *hotHead;

    if (effectObject->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        hotHead = effectObject->parent;
        if (hotHead && hotHead->base.header.kind && hotHead->base.flags & 0x1000) {
            effectObject->parent = NULL;
            hotHead = NULL;
        }
        if (hotHead) {
            if (Macro_0810B1F4(&hotHead->base) && !(effectObject->flags & 0x2000)) {
                EffectObjectDisplaySprite(effectObject);
                return;
            }
        }
        else
            KirbySomething(effectObject);
        Macro_0809E55C(effectObject);
        if (effectObject->flags & 2)
            effectObject->flags |= 0x1000;
        else {
            effectObject->unk3E = gUnk_0835552C[effectObject->unk4 >> 1];
            effectObject->unk4++;
            if (!(effectObject->flags & 0x800)) {
                effectObject->x += effectObject->unk3C;
                effectObject->y -= effectObject->unk3E;
            }
            EffectObjectPostUpdate(effectObject);
        }
    }
}

void sub_080C3694(struct Object *parent, u8 dirIndex) {
    struct Task *task = TaskCreate(sub_080C3880, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;

    ClearObjectBase(tmp);
    objBase->header.kind = 2;
    objBase->x = parent->base.x;
    objBase->y = parent->base.y;
    objBase->parent = parent;
    objBase->counter = 0;
    objBase->roomId = parent->base.roomId;
    objBase->unk56 = parent->base.unk56;
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
    objBase->xspeed = gUnk_0835553A[dirIndex << 1];
    objBase->yspeed = gUnk_0835553A[(dirIndex << 1) + 1];
    if (parent->base.flags & 1) {
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
    struct Object *parent = objBase->parent;
    struct Sprite sprite;

    if (objBase->roomId != 0xFFFF && parent->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
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

static void sub_080C3A7C(struct Object *hotHead, struct Kirby *kirby) {
    struct Task *task = TaskCreate(sub_080C3CF0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;
    s32 dx, dy;
    u16 dist;
    s32 x, y;

    ClearObjectBase(tmp);
    objBase->header.kind = 2;
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
    dx = (kirby->base.x - hotHead->base.x) >> 8;
    dy = (hotHead->base.y - kirby->base.y) >> 8;
    dist = Sqrt((dx * dx + dy * dy) * 0x100);
    x = (dx * 0x100 / dist) * 0x100;
    y = (dy * 0x100 / dist) * 0x100;
    objBase->xspeed = ((dx * 0x100 / dist) * 0x200u + x) >> 4;
    objBase->yspeed = (((dy * 0x100 / dist) * 0x200 + y) * 0x10) >> 8;
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

static void sub_080C3F2C(struct Object *hotHead) {
    hotHead->kirby3 = FindTargetKirby(&hotHead->base);
    if (hotHead->kirby3->ability != KIRBY_ABILITY_FIRE
        && (hotHead->kirby3->transitioningAbility & 0x1F) != KIRBY_ABILITY_FIRE) {
        ObjectSetFunc(hotHead, 1, sub_080C3F90);
        if (hotHead->base.x > hotHead->kirby3->base.x)
            hotHead->base.flags |= 1;
        else
            hotHead->base.flags &= ~1;
        hotHead->base.xspeed = 0;
    }
}

static void sub_080C3F90(struct Object *hotHead) {
    if (++hotHead->base.counter > 0x28)
        sub_080C3FAC(hotHead);
}

static void sub_080C3FAC(struct Object *hotHead) {
    s32 dx, dy;

    hotHead->unk85 = 0;
    hotHead->base.xspeed = 0;
    dx = (hotHead->kirby3->base.x - hotHead->base.x) * 0x100;
    dy = (hotHead->kirby3->base.y - hotHead->base.y) * 0x100;
    if ((dx >> 16) * (dx >> 16) + (dy >> 16) * (dy >> 16) <= 0x143F)
        ObjectSetFunc(hotHead, 2, sub_080C4010);
    else
        ObjectSetFunc(hotHead, 2, sub_080C4064);
}

static void sub_080C4010(struct Object *hotHead) {
    hotHead->base.flags |= 4;
    if (hotHead->base.flags & 2)
        hotHead->base.counter++;
    if (hotHead->base.header.unk1 == 1) {
        sub_080C3694(hotHead, hotHead->unk85);
        if (++hotHead->unk85 > 4)
            hotHead->unk85 = 0;
    }
    if (hotHead->base.counter > 0x1D)
        sub_080C3234(hotHead);
}

static void sub_080C4064(struct Object *hotHead) {
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

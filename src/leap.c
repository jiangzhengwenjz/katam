#include "leap.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/songs.h"

static void sub_080B024C(struct Object *);
static void sub_080B0290(struct Object *);
static void sub_080B0428(struct Object *);
static void sub_080B05C0(struct Object *);
static void sub_080B07E4(struct Object *);
static void sub_080B0860(struct Object *);
static void sub_080B0938(void);
static void sub_080B0A64(struct Object *);
static void sub_080B0C40(void);

extern const struct Unk_08353510 gUnk_08353D20[];
extern const struct Unk_08353510 gUnk_08353DBC[];
extern const struct Unk_08353510 gUnk_08353E58[];
extern const struct Kirby_110 gUnk_08353EF4[];

void *CreateLeap(struct ObjectTemplate *template, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(task), *leap = tmp;

    InitObject(leap, template, arg1);
    leap->base.unkC |= 1;
    leap->base.unkC |= 4;
    leap->base.flags |= 0x40;
    leap->base.flags |= 0x800000;
    leap->base.flags &= ~0x20;
    leap->base.unk68 &= ~7;
    if (leap->base.x > leap->kirby3->base.x)
        leap->base.flags |= 1;
    else
        leap->base.flags &= ~1;
    sub_0803E2B0(&leap->base, -5, -5, 5, 6);
    ObjectSetBounds(&leap->base, -6, -6, 6, 8);
    ObjectInitSprite(leap);
    gUnk_08351648[leap->type].unk10(leap);
    leap->unk9E = 0;
    leap->unk7C = NULL;
    sub_080B0860(leap);
    return leap;
}

static void sub_080B024C(struct Object *leap) {
    leap->base.flags |= 4;
    if (leap->base.counter == 8)
        leap->base.yspeed += leap->base.yspeed;
    if (leap->base.counter > 0x10) {
        leap->base.counter = 0;
        leap->base.yspeed = -(leap->base.yspeed >> 1);
    }
    ++leap->base.counter;
}

static void sub_080B0290(struct Object *leap) {
    leap->base.flags |= 4;
    if (!gUnk_08353D20[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E) {
        ++leap->unk9F;
        if (!gUnk_08353D20[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353D20[leap->unk9F].unk8;
        if (gUnk_08353D20[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353D20[leap->unk9F].unk9;
        if (leap->unk9F) {
            if (gUnk_08353D20[leap->unk9F].unk0 != gUnk_08353D20[leap->unk9F - 1].unk0) {
                leap->base.xspeed = gUnk_08353D20[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353D20[leap->unk9F].unk2 != gUnk_08353D20[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353D20[leap->unk9F].unk2;
        }
        else {
            leap->base.yspeed = gUnk_08353D20[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353D20[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353D20[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353D20[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353D20[leap->unk9F].unk6;
    --leap->unk9E;
}

static void sub_080B0428(struct Object *leap) {
    leap->base.flags |= 4;
    if (!gUnk_08353DBC[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E) {
        ++leap->unk9F;
        if (!gUnk_08353DBC[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353DBC[leap->unk9F].unk8;
        if (gUnk_08353DBC[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353DBC[leap->unk9F].unk9;
        if (leap->unk9F) {
            if (gUnk_08353DBC[leap->unk9F].unk0 != gUnk_08353DBC[leap->unk9F - 1].unk0) {
                leap->base.xspeed = gUnk_08353DBC[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353DBC[leap->unk9F].unk2 != gUnk_08353DBC[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353DBC[leap->unk9F].unk2;
        }
        else {
            leap->base.yspeed = gUnk_08353DBC[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353DBC[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353DBC[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353DBC[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353DBC[leap->unk9F].unk6;
    --leap->unk9E;
}

static void sub_080B05C0(struct Object *leap) {
    leap->base.flags |= 4;
    if (!gUnk_08353E58[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E) {
        ++leap->unk9F;
        if (!gUnk_08353E58[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353E58[leap->unk9F].unk8;
        if (gUnk_08353E58[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353E58[leap->unk9F].unk9;
        if (leap->unk9F) {
            if (gUnk_08353E58[leap->unk9F].unk0 != gUnk_08353E58[leap->unk9F - 1].unk0) {
                leap->base.xspeed = gUnk_08353E58[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353E58[leap->unk9F].unk2 != gUnk_08353E58[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353E58[leap->unk9F].unk2;
        }
        else {
            leap->base.yspeed = gUnk_08353E58[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353E58[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353E58[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353E58[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353E58[leap->unk9F].unk6;
    --leap->unk9E;
}

bool32 sub_080B0758(struct Object *leap, struct Kirby *kirby) {
    if (leap->unk83
        || kirby->base.header.kind
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || (kirby->base.flags & 0x03800B00))
        return FALSE;

    kirby->unk110 = gUnk_08353EF4;
    leap->kirby3 = kirby;
    ObjectSetFunc(leap, 2, sub_080B07E4);
    leap->base.xspeed = 0;
    leap->base.yspeed = 0;
    leap->base.flags &= ~2;
    leap->base.unk6C = kirby;
    return TRUE;
}

static void sub_080B07E4(struct Object *leap) {
    if (leap->base.header.unk1 == 0x14)
        sub_080B0A64(leap);
    if (leap->base.flags & 2) {
        leap->base.flags |= 0x40;
        leap->base.flags &= ~0x20;
        if (leap->objTemplate->subtype1 == 0) {
            switch (leap->subtype) {
            case 1:
                ObjectSetFunc(leap, 0, sub_080B0428);
                break;
            case 2:
                ObjectSetFunc(leap, 0, sub_080B05C0);
                break;
            default:
                ObjectSetFunc(leap, 0, sub_080B0290);
                break;
            }
        }
        else {
            ObjectSetFunc(leap, 0, sub_080B024C);
            leap->base.yspeed = 0x80;
        }
    }
}

static void sub_080B0860(struct Object *leap) {
    struct Task *task = TaskCreate(sub_080B0938, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(task);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = leap->base.x;
    objBase->y = leap->base.y;
    objBase->parent = leap;
    objBase->counter = 0;
    objBase->roomId = leap->base.roomId;
    objBase->unk56 = leap->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x10010000;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    objBase->unk5C |= 0x80000;
    sub_0803E2B0(objBase, -5, -6, 0xC, 8);
}

static void sub_080B0938(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object *leap = objBase->parent;

    if (objBase->roomId != 0xFFFF && leap->base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    objBase->x = leap->base.x;
    objBase->y = leap->base.y;
    objBase->unk56 = leap->base.unk56;
    if (ObjectPreUpdate(objBase))
        return;
    if (leap->base.flags & 1)
        objBase->flags |= 1;
    else
        objBase->flags &= ~1;
    if (leap->unk83 <= 1) {
        if (objBase->flags & 0x40000) {
            objBase->flags &= ~0x40000;
        }
        else if (!(objBase->flags & 0x200)) {
            SetPointerSomething(objBase);
        }
    }
}

static void sub_080B0A64(struct Object *leap) {
    struct Task *task = TaskCreate(sub_080B0C40, sizeof(struct EffectObject), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(task), *effectObject = tmp;

    ClearEffectObject(effectObject);
    effectObject->header.kind = 3;
    effectObject->x = leap->base.x;
    effectObject->y = leap->base.y;
    effectObject->parent = leap;
    effectObject->roomId = leap->base.roomId;
    effectObject->unk3C = 0x20;
    effectObject->unk3E = 0x40;
    effectObject->y -= 0x800;
    effectObject->flags |= 0x4000;
    if (leap->base.flags & 1) {
        effectObject->x -= 0xC00;
        effectObject->unk3C = -effectObject->unk3C;
    }
    else {
        effectObject->flags |= 1;
        effectObject->x += 0xC00;
    }
    if (Macro_0810B1F4(&leap->base))
        effectObject->flags |= 0x2000;
    EffectObjectInitSprite(effectObject, &effectObject->sprite, 0xC, 0x313, 0, 0xC);
    effectObject->sprite.palId = 0;
    Macro_081050E8(effectObject, &effectObject->sprite, 0x312, 0, 1);
    PlaySfx(&leap->base, SE_LEAP_KISS_ATTACK);
}

static void sub_080B0C40(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effectObject = tmp;
    struct Object *leap;
    struct Sprite sprite;

    if (effectObject->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    Macro_08107BA8_4(effectObject, &effectObject->sprite, &sprite, 0xC, &effectObject->sprite);
    Macro_081050E8(effectObject, &effectObject->sprite, 0x312, 0, !effectObject->sprite.palId);
    Macro_0809E55C(effectObject);
    leap = effectObject->parent;
    if (leap && leap->base.header.kind && leap->base.flags & 0x1000) {
        effectObject->parent = NULL;
        leap = NULL;
    }
    if (leap) {
        if (Macro_0810B1F4(&leap->base) && !(effectObject->flags & 0x2000)) {
            EffectObjectDisplaySprite(effectObject);
            return;
        }
    }
    else {
        KirbySomething(effectObject);
    }
    if (++effectObject->unk4 > 0x30) {
        effectObject->flags |= 0x1000;
    }
    else {
        if (!(effectObject->flags & 0x800)) {
            effectObject->x += effectObject->unk3C;
            effectObject->y -= effectObject->unk3E;
        }
        EffectObjectPostUpdate(effectObject);
    }
}

void sub_080B0F28(struct Object *leap) {
    leap->base.flags |= 0x40;
    leap->base.flags &= ~0x20;
    if (leap->objTemplate->subtype1 == 0) {
        switch (leap->subtype) {
        case 1:
            ObjectSetFunc(leap, 0, sub_080B0428);
            break;
        case 2:
            ObjectSetFunc(leap, 0, sub_080B05C0);
            break;
        default:
            ObjectSetFunc(leap, 0, sub_080B0290);
            break;
        }
    }
    else {
        ObjectSetFunc(leap, 0, sub_080B024C);
        leap->base.yspeed = 0x80;
    }
}

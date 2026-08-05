#include "leap.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/songs.h"

static void sub_080B024C(struct Object2 *);
static void sub_080B0290(struct Object2 *);
static void sub_080B0428(struct Object2 *);
static void sub_080B05C0(struct Object2 *);
static void sub_080B07E4(struct Object2 *);
static void sub_080B0860(struct Object2 *);
static void sub_080B0938(void);
static void sub_080B0A64(struct Object2 *);
static void sub_080B0C40(void);

extern const struct Unk_08353510 gUnk_08353D20[];
extern const struct Unk_08353510 gUnk_08353DBC[];
extern const struct Unk_08353510 gUnk_08353E58[];
extern const struct Kirby_110 gUnk_08353EF4[];

void *CreateLeap(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *leap = tmp;

    InitObject(leap, arg0, arg1);
    leap->base.unkC |= 1;
    leap->base.unkC |= 4;
    leap->base.flags |= 0x40;
    leap->base.flags |= 0x800000;
    leap->base.flags &= ~0x20;
    leap->base.unk68 &= ~7;
    if (leap->base.x > leap->kirby3->base.base.base.x)
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

static void sub_080B024C(struct Object2 *leap) {
    leap->base.flags |= 4;
    if (leap->base.counter == 8)
        leap->base.yspeed <<= 1;
    if (leap->base.counter > 0x10) {
        leap->base.counter = 0;
        leap->base.yspeed = -(leap->base.yspeed >> 1);
    }
    ++leap->base.counter;
}

static void sub_080B0290(struct Object2 *leap) {
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

static void sub_080B0428(struct Object2 *leap) {
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

static void sub_080B05C0(struct Object2 *leap) {
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

bool8 sub_080B0758(struct Object2 *leap, struct Kirby *kirby) {
    if (leap->unk83
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || (kirby->base.base.base.flags & 0x03800B00))
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

static void sub_080B07E4(struct Object2 *leap) {
    if (leap->base.unk1 == 0x14)
        sub_080B0A64(leap);
    if (leap->base.flags & 2) {
        leap->base.flags |= 0x40;
        leap->base.flags &= ~0x20;
        if (leap->object->subtype1 == 0) {
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

static void sub_080B0860(struct Object2 *leap) {
    struct Task *task = TaskCreate(sub_080B0938, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->unk0 = 2;
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
    struct Object2 *leap = objBase->parent;

    if (objBase->roomId != 0xFFFF && leap->base.flags & 0x1000)
        objBase->roomId |= 0xFFFF;
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

static void sub_080B0A64(struct Object2 *leap) {
    struct Task *task = TaskCreate(sub_080B0C40, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(task), *kiss = tmp;
    u16 zero = 0; // required to match: the original ORs a register known to be 0 into flags

    ClearObject4(kiss);
    kiss->unk0 = 3;
    kiss->x = leap->base.x;
    kiss->y = leap->base.y;
    kiss->parent = leap;
    kiss->roomId = leap->base.roomId;
    kiss->unk3C = 0x20;
    kiss->unk3E = 0x40;
    kiss->y -= 0x800;
    kiss->flags |= 0x4000;
    kiss->flags |= zero;
    if (leap->base.flags & 1) {
        kiss->x -= 0xC00;
        kiss->unk3C = -kiss->unk3C;
    }
    else {
        kiss->flags |= 1;
        kiss->x += 0xC00;
    }
    if (Macro_0810B1F4(&leap->base))
        kiss->flags |= 0x2000;
    Object4InitSprite(kiss, &kiss->sprite, 0xC, 0x313, 0, 0xC);
    kiss->sprite.palId = 0;
    Macro_081050E8(kiss, &kiss->sprite, 0x312, 1);
    PlaySfx(&leap->base, SE_LEAP_KISS_ATTACK);
}

static void sub_080B0C40(void) {
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *kiss = tmp;
    struct Object2 *leap;
    struct Sprite sprite;

    if (kiss->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    Macro_08107BA8_4(kiss, &kiss->sprite, &sprite, 0xC, &kiss->sprite);
    Macro_081050E8(kiss, &kiss->sprite, 0x312, !kiss->sprite.palId);
    Macro_0809E55C(kiss);
    leap = kiss->parent;
    if (leap) {
        if (leap->base.unk0 && leap->base.flags & 0x1000) {
            kiss->parent = NULL;
            leap = NULL;
        }
        if (!leap)
            goto _080B0E70;
        if (Macro_0810B1F4(&leap->base) && !(kiss->flags & 0x2000)) {
            Object4DisplaySprite(kiss);
            return;
        }
    }
    else {
    _080B0E70:
        KirbySomething(kiss);
    }
    if (++kiss->unk4 > 0x30) {
        kiss->flags |= 0x1000;
    }
    else {
        if (!(kiss->flags & 0x800)) {
            kiss->x += kiss->unk3C;
            kiss->y -= kiss->unk3E;
        }
        Object4PostUpdate(kiss);
    }
}

void sub_080B0F28(struct Object2 *leap) {
    leap->base.flags |= 0x40;
    leap->base.flags &= ~0x20;
    if (leap->object->subtype1 == 0) {
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

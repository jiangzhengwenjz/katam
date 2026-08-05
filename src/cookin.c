#include "cookin.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "prank.h"
#include "random.h"
#include "task.h"
#include "constants/object_types.h"
#include "constants/songs.h"

static void sub_080B5BE8(struct Object2 *);
static void sub_080B5CA4(struct Object2 *);
static void sub_080B5D70(struct Object2 *);
static void sub_080B5E1C(struct Object2 *);
static void sub_080B60AC(struct Object2 *);
static void sub_080B645C(struct Object2 *);
static void sub_080B65D8(struct Object2 *);
static void sub_080B66A8(void);
static void sub_080B6894(struct Object2 *);
static void sub_080B68C0(struct Object2 *);
static void sub_080B6910(struct Object2 *);
static void sub_080B6928(struct Object2 *);
static void sub_080B6960(struct Object2 *);

extern const struct Unk_08353510 gUnk_08354368[];
extern const struct Kirby_110 gUnk_08354404[];
extern const struct Kirby_110 gUnk_0835448C[];
extern const struct Kirby_110 gUnk_08354554[];

void *CreateCookin(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *cookin = tmp;

    InitObject(cookin, arg0, arg1);
    if (cookin->base.x > cookin->kirby3->base.base.base.x)
        cookin->base.flags |= 1;
    else
        cookin->base.flags &= ~1;
    sub_0803E2B0(&cookin->base, -5, -7, 5, 4);
    ObjectSetBounds(&cookin->base, -6, -8, 6, 6);
    ObjectInitSprite(cookin);
    gUnk_08351648[cookin->type].unk10(cookin);
    cookin->unk9E = 0;
    cookin->unk7C = NULL;
    return cookin;
}

static void sub_080B5BE8(struct Object2 *cookin) {
    cookin->base.flags |= 4;
    cookin->base.xspeed = 0;
    if (cookin->object->subtype1 == 0) {
        if (--cookin->unk9E == 0) {
            cookin->unk9E = 0x3C;
            cookin->kirby3 = FindTargetKirby(&cookin->base);
            if (cookin->base.x > cookin->kirby3->base.base.base.x)
                cookin->base.flags |= 1;
            else
                cookin->base.flags &= ~1;
            if (cookin->base.unk62 & 4) {
                if (abs(cookin->kirby3->base.base.base.x - cookin->base.x) <= 0xA7FF
                    && abs(cookin->kirby3->base.base.base.y - cookin->base.y) <= 0x2FFF)
                    sub_080B68C0(cookin);
            }
        }
    }
}

static void sub_080B5CA4(struct Object2 *cookin) {
    cookin->base.flags |= 4;
    if (++cookin->base.counter > 0x78) {
        cookin->base.flags ^= 1;
        cookin->base.xspeed = -cookin->base.xspeed;
        cookin->base.counter = 0;
    }
    if (cookin->base.unk62 & 1) {
        cookin->base.flags ^= 1;
        cookin->base.xspeed = -cookin->base.xspeed;
    }
    if (cookin->base.unk62 & 4 && sub_0809D998(cookin)) {
        cookin->base.flags ^= 1;
        cookin->base.xspeed = -cookin->base.xspeed;
    }
    if (--cookin->unk9E == 0) {
        if (cookin->base.unk62 & 4 && (Rand16() & 3) == 0)
            sub_080B68C0(cookin);
        else
            cookin->unk9E = 0x3C;
    }
}

static void sub_080B5D70(struct Object2 *cookin) {
    ObjectSetFunc(cookin, 5, sub_080B5E1C);
    cookin->base.flags &= ~2;
    cookin->type = OBJ_COOKIN;
    PlaySfx(&cookin->base, SE_COOKED_KIRBY);
}

static void sub_080B5E1C(struct Object2 *cookin) {
    if (cookin->base.flags & 2) {
        if (cookin->unk80 > 0)
            ObjectSetFunc(cookin, 0, sub_080B5BE8);
        else {
#ifndef NONMATCHING
            // The pins fix the order the three arguments are set up in:
            // the original loads r2, then r0, then r1, where a plain
            // ObjectSetFunc(cookin, -1, sub_080B5BE8) does r1 first.
            register void (*func)(struct Object2 *) asm("r2") = sub_080B5BE8;
            register struct Object2 *o asm("r0") = cookin;
            register s32 m asm("r1") = -1;
#else
            void (*func)(struct Object2 *) = sub_080B5BE8;
            struct Object2 *o = cookin;
            s32 m = -1;
#endif
            ObjectSetFunc(o, m, func);
        }
        cookin->base.flags &= ~0x800;
        if (cookin->object->subtype1 == 1)
            sub_080B6894(cookin);
        cookin->unk9E = 0x3C;
        cookin->type = OBJ_COOKIN;
    }
    if (cookin->base.unk1 == 0x28 || cookin->base.unk1 == 0x4C)
        PlaySfx(&cookin->base, SE_COOKED_KIRBY);
}

void *CreateCookinPan(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *pan = tmp;

    InitObject(pan, arg0, arg1);
    pan->base.flags |= 0x02000140;
    if (pan->object->subtype1 == 0) {
        pan->base.flags |= 0x20000;
        pan->base.unk68 = 0;
    }
    pan->base.flags |= 0x10000;
    {
        // Writing -1 straight into unk5C reorders it against the unkC store.
        s32 m = -1;
        pan->base.unkC |= 2;
        pan->base.unk5C = m;
    }
    sub_0803E2B0(&pan->base, -5, -3, 5, 8);
    ObjectSetBounds(&pan->base, -6, -4, 6, 0xA);
    if (pan->subtype != 0)
        pan->base.flags |= 1;
    ObjectInitSprite(pan);
    pan->base.sprite.unk14 = 0x640;
    pan->unk9E = 0;
    pan->unk7C = sub_0809F840;
    gUnk_08351648[pan->type].unk10(pan);
    if (pan->object->subtype1 == 0)
        sub_080B65D8(pan);
    PlaySfx(&pan->base, SE_COOKIN_THROW_PAN);
    return pan;
}

static void sub_080B60AC(struct Object2 *pan) {
    struct Object2 *parent = pan->base.parent;

    pan->base.flags |= 4;
    if (pan->unk9E == 0) {
        ++pan->unk9F;
        if (gUnk_08354368[pan->unk9F].unk8 == 0)
            --pan->unk9F;
        pan->unk9E = gUnk_08354368[pan->unk9F].unk8;
        if (gUnk_08354368[pan->unk9F].unk9 != 0xFF)
            pan->unk83 = gUnk_08354368[pan->unk9F].unk9;
        if (pan->unk9F != 0) {
            if (gUnk_08354368[pan->unk9F].unk0 != gUnk_08354368[pan->unk9F - 1].unk0) {
                pan->base.xspeed = gUnk_08354368[pan->unk9F].unk0;
                if (pan->base.flags & 1)
                    pan->base.xspeed = -pan->base.xspeed;
            }
            if (gUnk_08354368[pan->unk9F].unk2 != gUnk_08354368[pan->unk9F - 1].unk2)
                pan->base.yspeed = gUnk_08354368[pan->unk9F].unk2;
        }
        else {
            pan->base.yspeed = gUnk_08354368[pan->unk9F].unk2;
            pan->base.xspeed = gUnk_08354368[pan->unk9F].unk0;
            if (pan->base.flags & 1)
                pan->base.xspeed = -pan->base.xspeed;
        }
    }
    if (pan->base.flags & 1)
        pan->base.xspeed -= gUnk_08354368[pan->unk9F].unk4;
    else
        pan->base.xspeed += gUnk_08354368[pan->unk9F].unk4;
    pan->base.yspeed += gUnk_08354368[pan->unk9F].unk6;
    --pan->unk9E;
    if (!gUnk_08354368[(u8)(pan->unk9F + 1)].unk8 && !pan->unk9E) {
        struct Kirby *kirby = pan->kirby3;

        if (pan->base.counter != 0 && kirby->unk110 != NULL) {
            kirby->base.base.base.unk6C = parent;
            if (parent->type == OBJ_COOKIN || parent->type == OBJ_EMPTY_31) {
                if (parent->unk83 >= gUnk_08351648[OBJ_COOKIN].unk0) {
                    pan->base.flags |= 0x1000;
                    parent->type = OBJ_COOKIN;
                    return;
                }
                kirby->unk110 = gUnk_0835448C;
                sub_080B5D70(parent);
            }
            else if (parent->unk83 < gUnk_08351648[parent->type].unk0) {
                kirby->unk110 = gUnk_08354554;
                sub_080A158C(parent);
            }
        }
        else {
            if (parent->type == OBJ_COOKIN || parent->type == OBJ_EMPTY_31) {
                if (parent->unk83 < gUnk_08351648[OBJ_COOKIN].unk0) {
                    if (parent->unk80 > 0)
                        ObjectSetFunc(parent, 0, sub_080B5BE8);
                    else {
#ifndef NONMATCHING
                        // See sub_080B5E1C.
                        register void (*func)(struct Object2 *) asm("r2") = sub_080B5BE8;
                        register struct Object2 *o asm("r0") = parent;
                        register s32 m asm("r1") = -1;
#else
                        void (*func)(struct Object2 *) = sub_080B5BE8;
                        struct Object2 *o = parent;
                        s32 m = -1;
#endif
                        ObjectSetFunc(o, m, func);
                    }
                    parent->base.flags &= ~0x800;
                    if (parent->object->subtype1 == 1)
                        sub_080B6894(parent);
                    parent->unk9E = 0x3C;
                    parent->type = OBJ_COOKIN;
                }
            }
            else if (parent->unk83 < gUnk_08351648[parent->type].unk0) {
                sub_080A245C(parent);
            }
        }
        pan->base.flags |= 0x1000;
    }
}

bool32 sub_080B6368(struct Object2 *pan, struct Kirby *kirby) {
    if (pan->unk83 != 0)
        return FALSE;
    if (kirby->base.base.base.unk0 != 0)
        return FALSE;
    if (kirby->hp <= 0)
        return FALSE;
    if (kirby->animationIndex == 0x27)
        return FALSE;
    if (kirby->animationIndex > 0x7A)
        return FALSE;
    if (kirby->unk110 != NULL)
        return FALSE;
    if (kirby->base.base.base.flags & 0x03800B00)
        return FALSE;
    pan->unk83 = 1;
    pan->base.counter = 1;
    kirby->unk110 = gUnk_08354404;
    pan->kirby3 = kirby;
    pan->base.unk6C = kirby;
    PlaySfx(&pan->base, SE_COOKED_KIRBY);
    return TRUE;
}

static void sub_080B645C(struct Object2 *cookin) {
    struct Object2 *created;
    s32 x, y;
    u32 subtype1 = 0;

    if (cookin->base.flags & 1)
        x = (cookin->base.x >> 8) - 0x1E;
    else
        x = (cookin->base.x >> 8) + 0x1E;
    y = cookin->base.y >> 8;
    if (cookin->subtype != 0)
        subtype1 = 1;
    if (cookin->base.unkC & 0x10)
        created = CreateObjTemplateAndObj(cookin->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_COOKIN_PAN, subtype1, 0,
            cookin->base.flags & 1, 0x8000, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    else
        created = CreateObjTemplateAndObj(cookin->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_COOKIN_PAN, subtype1, 0,
            cookin->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    created->base.parent = cookin;
}

static void sub_080B65D8(struct Object2 *pan) {
    struct Task *task = TaskCreate(sub_080B66A8, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;
    u32 unk68;

    ClearObjectBase(objBase);
    objBase->unk0 = 2;
    objBase->x = pan->base.x;
    objBase->y = pan->base.y;
    objBase->parent = pan;
    objBase->counter = 0;
    objBase->roomId = pan->base.roomId;
    objBase->unk56 = pan->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->counter = 0;
    objBase->flags |= 0x10000000;
    unk68 = objBase->unk68;
    unk68 |= 0x20;
    unk68 &= ~7;
    unk68 |= 3;
    objBase->unk68 = unk68;
    objBase->unk5C |= 0x80000;
    sub_0803E2B0(objBase, -0x14, 0, 0xA, 4);
}

static void sub_080B66A8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *pan = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (pan->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else {
        objBase->x = pan->base.x;
        objBase->y = pan->base.y;
        objBase->unk56 = pan->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000)) {
            sub_0803D9A8(objBase);
        }
        else {
            if (pan->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (pan->unk83 == 0) {
                if (objBase->flags & 0x40000) {
                    objBase->flags &= ~0x40000;
                }
                else {
                    if (!(objBase->flags & 0x200))
                        SetPointerSomething(objBase);
                    if (objBase->counter == 1)
                        sub_0803E2B0(objBase, -0xC, -4, 0xA, 4);
                    objBase->counter++;
                }
            }
        }
    }
}

void sub_080B681C(struct Object2 *cookin) {
    if (cookin->unk80 > 0)
        ObjectSetFunc(cookin, 0, sub_080B5BE8);
    else
        ObjectSetFunc(cookin, -1, sub_080B5BE8);
    cookin->base.flags &= ~0x800;
    if (cookin->object->subtype1 == 1)
        sub_080B6894(cookin);
    cookin->unk9E = 0x3C;
    cookin->type = OBJ_COOKIN;
}

void sub_080B6880(struct Object2 *pan) {
    ObjectSetFunc(pan, 0, sub_080B60AC);
}

static void sub_080B6894(struct Object2 *cookin) {
    ObjectSetFunc(cookin, 1, sub_080B5CA4);
    cookin->base.xspeed = 0x80;
    if (cookin->base.flags & 1)
        cookin->base.xspeed = -cookin->base.xspeed;
}

static void sub_080B68C0(struct Object2 *cookin) {
    ObjectSetFunc(cookin, 2, sub_080B6910);
    cookin->base.flags &= ~2;
    cookin->base.xspeed = 0;
    cookin->kirby3 = FindTargetKirby(&cookin->base);
    if (cookin->base.x > cookin->kirby3->base.base.base.x)
        cookin->base.flags |= 1;
    else
        cookin->base.flags &= ~1;
}

static void sub_080B6910(struct Object2 *cookin) {
    if (cookin->base.flags & 2)
        sub_080B6928(cookin);
}

static void sub_080B6928(struct Object2 *cookin) {
    ObjectSetFunc(cookin, 2, sub_080B6960);
    cookin->base.flags &= ~4;
    sub_080B645C(cookin);
    cookin->base.flags |= 0x800;
    cookin->type = OBJ_EMPTY_31;
}

static void sub_080B6960(struct Object2 *cookin) {
    cookin->unk83 = 3;
}

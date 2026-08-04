#include "cookin.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "task.h"
#include "constants/songs.h"

static void sub_080B5BE8(struct Object2 *);
static void sub_080B5CA4(struct Object2 *);
void sub_080B5D70(struct Object2 *);
static void sub_080B5E1C(struct Object2 *);
static void sub_080B60AC(struct Object2 *);
void sub_080B645C(struct Object2 *);
void sub_080B65D8(struct Object2 *);
static void sub_080B66A8(void);
void sub_080B6894(struct Object2 *);
void sub_080B68C0(struct Object2 *);
static void sub_080B6910(struct Object2 *);
void sub_080B6928(struct Object2 *);
static void sub_080B6960(struct Object2 *);

void sub_080A158C(struct Object2 *);
void sub_080A245C(struct Object2 *);

extern const struct Unk_08353510 gUnk_08354368[];
extern const struct Kirby_110 gUnk_08354404[];
extern const struct Kirby_110 gUnk_0835448C[];
extern const struct Kirby_110 gUnk_08354554[];

void *CreateCookin(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *obj = tmp;

    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    sub_0803E2B0(&obj->base, -5, -7, 5, 4);
    sub_0803E308(&obj->base, -6, -8, 6, 6);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080B5BE8(struct Object2 *obj) {
    obj->base.flags |= 4;
    obj->base.xspeed = 0;
    if (obj->object->subtype1 == 0) {
        if (--obj->unk9E == 0) {
            obj->unk9E = 0x3C;
            obj->kirby3 = sub_0803D368(&obj->base);
            if (obj->base.x > obj->kirby3->base.base.base.x)
                obj->base.flags |= 1;
            else
                obj->base.flags &= ~1;
            if (obj->base.unk62 & 4) {
                if (abs(obj->kirby3->base.base.base.x - obj->base.x) <= 0xA7FF
                    && abs(obj->kirby3->base.base.base.y - obj->base.y) <= 0x2FFF)
                    sub_080B68C0(obj);
            }
        }
    }
}

static void sub_080B5CA4(struct Object2 *obj) {
    obj->base.flags |= 4;
    if (++obj->base.counter > 0x78) {
        obj->base.flags ^= 1;
        obj->base.xspeed = -obj->base.xspeed;
        obj->base.counter = 0;
    }
    if (obj->base.unk62 & 1) {
        obj->base.flags ^= 1;
        obj->base.xspeed = -obj->base.xspeed;
    }
    if (obj->base.unk62 & 4 && sub_0809D998(obj)) {
        obj->base.flags ^= 1;
        obj->base.xspeed = -obj->base.xspeed;
    }
    if (--obj->unk9E == 0) {
        if (obj->base.unk62 & 4 && (Rand16() & 3) == 0)
            sub_080B68C0(obj);
        else
            obj->unk9E = 0x3C;
    }
}

void sub_080B5D70(struct Object2 *obj) {
    ObjectSetFunc(obj, 5, sub_080B5E1C);
    obj->base.flags &= ~2;
    obj->type = 0x26;
    PlaySfx(&obj->base, SE_COOKED_KIRBY);
}

static void sub_080B5E1C(struct Object2 *obj) {
    if (obj->base.flags & 2) {
        if (obj->unk80 > 0)
            ObjectSetFunc(obj, 0, sub_080B5BE8);
        else {
            register void (*func)(struct Object2 *) asm("r2") = sub_080B5BE8;
            register struct Object2 *o asm("r0") = obj;
            register s32 m asm("r1") = -1;
            ObjectSetFunc(o, m, func);
        }
        obj->base.flags &= ~0x800;
        if (obj->object->subtype1 == 1)
            sub_080B6894(obj);
        obj->unk9E = 0x3C;
        obj->type = 0x26;
    }
    if (obj->base.unk1 == 0x28 || obj->base.unk1 == 0x4C)
        PlaySfx(&obj->base, SE_COOKED_KIRBY);
}

void *CreateCookinPan(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(task), *obj = tmp;

    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x02000140;
    if (obj->object->subtype1 == 0) {
        obj->base.flags |= 0x20000;
        obj->base.unk68 = 0;
    }
    obj->base.flags |= 0x10000;
    {
        s32 m = -1;
        obj->base.unkC |= 2;
        obj->base.unk5C = m;
    }
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 0xA);
    if (obj->subtype != 0)
        obj->base.flags |= 1;
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x640;
    obj->unk9E = 0;
    obj->unk7C = sub_0809F840;
    gUnk_08351648[obj->type].unk10(obj);
    if (obj->object->subtype1 == 0)
        sub_080B65D8(obj);
    PlaySfx(&obj->base, SE_COOKIN_THROW_PAN);
    return obj;
}

static void sub_080B60AC(struct Object2 *obj) {
    struct Object2 *parent = obj->base.parent;

    obj->base.flags |= 4;
    if (obj->unk9E == 0) {
        ++obj->unk9F;
        if (gUnk_08354368[obj->unk9F].unk8 == 0)
            --obj->unk9F;
        obj->unk9E = gUnk_08354368[obj->unk9F].unk8;
        if (gUnk_08354368[obj->unk9F].unk9 != 0xFF)
            obj->unk83 = gUnk_08354368[obj->unk9F].unk9;
        if (obj->unk9F != 0) {
            if (gUnk_08354368[obj->unk9F].unk0 != gUnk_08354368[obj->unk9F - 1].unk0) {
                obj->base.xspeed = gUnk_08354368[obj->unk9F].unk0;
                if (obj->base.flags & 1)
                    obj->base.xspeed = -obj->base.xspeed;
            }
            if (gUnk_08354368[obj->unk9F].unk2 != gUnk_08354368[obj->unk9F - 1].unk2)
                obj->base.yspeed = gUnk_08354368[obj->unk9F].unk2;
        }
        else {
            obj->base.yspeed = gUnk_08354368[obj->unk9F].unk2;
            obj->base.xspeed = gUnk_08354368[obj->unk9F].unk0;
            if (obj->base.flags & 1)
                obj->base.xspeed = -obj->base.xspeed;
        }
    }
    if (obj->base.flags & 1)
        obj->base.xspeed -= gUnk_08354368[obj->unk9F].unk4;
    else
        obj->base.xspeed += gUnk_08354368[obj->unk9F].unk4;
    obj->base.yspeed += gUnk_08354368[obj->unk9F].unk6;
    --obj->unk9E;
    if (!gUnk_08354368[(u8)(obj->unk9F + 1)].unk8 && !obj->unk9E) {
        struct Kirby *kirby = obj->kirby3;

        if (obj->base.counter != 0 && kirby->unk110 != NULL) {
            kirby->base.base.base.unk6C = parent;
            if (parent->type == 0x26 || parent->type == 0x31) {
                if (parent->unk83 >= gUnk_08351648[0x26].unk0) {
                    obj->base.flags |= 0x1000;
                    parent->type = 0x26;
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
            if (parent->type == 0x26 || parent->type == 0x31) {
                if (parent->unk83 < gUnk_08351648[0x26].unk0) {
                    if (parent->unk80 > 0)
                        ObjectSetFunc(parent, 0, sub_080B5BE8);
                    else {
                        register void (*func)(struct Object2 *) asm("r2") = sub_080B5BE8;
                        register struct Object2 *o asm("r0") = parent;
                        register s32 m asm("r1") = -1;
                        ObjectSetFunc(o, m, func);
                    }
                    parent->base.flags &= ~0x800;
                    if (parent->object->subtype1 == 1)
                        sub_080B6894(parent);
                    parent->unk9E = 0x3C;
                    parent->type = 0x26;
                }
            }
            else if (parent->unk83 < gUnk_08351648[parent->type].unk0) {
                sub_080A245C(parent);
            }
        }
        obj->base.flags |= 0x1000;
    }
}

bool32 sub_080B6368(struct Object2 *obj, struct Kirby *kirby) {
    if (obj->unk83 != 0)
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
    obj->unk83 = 1;
    obj->base.counter = 1;
    kirby->unk110 = gUnk_08354404;
    obj->kirby3 = kirby;
    obj->base.unk6C = kirby;
    PlaySfx(&obj->base, SE_COOKED_KIRBY);
    return TRUE;
}

void sub_080B645C(struct Object2 *obj) {
    struct Object2 *created;
    s32 x, y;
    u32 subtype1 = 0;

    if (obj->base.flags & 1)
        x = (obj->base.x >> 8) - 0x1E;
    else
        x = (obj->base.x >> 8) + 0x1E;
    y = obj->base.y >> 8;
    if (obj->subtype != 0)
        subtype1 = 1;
    if (obj->base.unkC & 0x10)
        created = CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, 0x9E, subtype1, 0,
            obj->base.flags & 1, 0x8000, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    else
        created = CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, 0x9E, subtype1, 0,
            obj->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    created->base.parent = obj;
}

void sub_080B65D8(struct Object2 *obj) {
    struct Task *task = TaskCreate(sub_080B66A8, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(task), *objBase = tmp;
    u32 unk68;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = obj->base.x;
    objBase->y = obj->base.y;
    objBase->parent = obj;
    objBase->counter = 0;
    objBase->roomId = obj->base.roomId;
    objBase->unk56 = obj->base.unk56;
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
    struct Object2 *obj = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (obj->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else {
        objBase->x = obj->base.x;
        objBase->y = obj->base.y;
        objBase->unk56 = obj->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000)) {
            sub_0803D9A8(objBase);
        }
        else {
            if (obj->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (obj->unk83 == 0) {
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

void sub_080B681C(struct Object2 *obj) {
    if (obj->unk80 > 0)
        ObjectSetFunc(obj, 0, sub_080B5BE8);
    else
        ObjectSetFunc(obj, -1, sub_080B5BE8);
    obj->base.flags &= ~0x800;
    if (obj->object->subtype1 == 1)
        sub_080B6894(obj);
    obj->unk9E = 0x3C;
    obj->type = 0x26;
}

void sub_080B6880(struct Object2 *obj) {
    ObjectSetFunc(obj, 0, sub_080B60AC);
}

void sub_080B6894(struct Object2 *obj) {
    ObjectSetFunc(obj, 1, sub_080B5CA4);
    obj->base.xspeed = 0x80;
    if (obj->base.flags & 1)
        obj->base.xspeed = -obj->base.xspeed;
}

void sub_080B68C0(struct Object2 *obj) {
    ObjectSetFunc(obj, 2, sub_080B6910);
    obj->base.flags &= ~2;
    obj->base.xspeed = 0;
    obj->kirby3 = sub_0803D368(&obj->base);
    if (obj->base.x > obj->kirby3->base.base.base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
}

static void sub_080B6910(struct Object2 *obj) {
    if (obj->base.flags & 2)
        sub_080B6928(obj);
}

void sub_080B6928(struct Object2 *obj) {
    ObjectSetFunc(obj, 2, sub_080B6960);
    obj->base.flags &= ~4;
    sub_080B645C(obj);
    obj->base.flags |= 0x800;
    obj->type = 0x31;
}

static void sub_080B6960(struct Object2 *obj) {
    obj->unk83 = 3;
}

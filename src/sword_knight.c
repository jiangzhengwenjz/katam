#include "sword_knight.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "task.h"

static void sub_080B2E6C(struct Object *);
static void sub_080B2F3C(struct Object *);
static void sub_080B2FE4(struct Object *);
static void sub_080B31F0(struct Object *);
static void sub_080B3420(struct Object *);
static void sub_080B351C(struct Object *);
static void sub_080B3694(void);
static void sub_080B37DC(struct Object *);
static void sub_080B38B0(void);
static void sub_080B3A60(struct Object *);
static void sub_080B3AAC(struct Object *);
static void sub_080B3AF8(struct Object *);

const struct AnimInfo gUnk_08353FA8[] = {
    { 0x32F, 0, 0 },
    { 0x32F, 3, 0 },
    { 0x32F, 4, 0 },
    { 0x32F, 1, 0 },
    { 0x32F, 2, 0 },
    { 0x32F, 6, 0 },
    { 0x32F, 5, 0 },
    { 0x32F, 7, 0 },
    { 0x32F, 8, 0 },
};

static const struct Unk_08353510 gUnk_08353FCC[] = {
    {     0, 0, 0, 0, 0x10, 0x1 },
    { 0x600, 0, 0, 0,  0x3, 0x2 },
    { 0x400, 0, 0, 0,  0x3, 0x2 },
    { 0x300, 0, 0, 0,  0x3, 0x2 },
    { 0x200, 0, 0, 0,  0x2, 0x2 },
    { 0x100, 0, 0, 0,  0x1, 0x2 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354020[] = {
    {     0, 0, 0, 0, 0x10, 0x3 },
    { 0x600, 0, 0, 0,  0x3, 0x4 },
    { 0x400, 0, 0, 0,  0x3, 0x4 },
    { 0x300, 0, 0, 0,  0x3, 0x4 },
    { 0x200, 0, 0, 0,  0x2, 0x4 },
    { 0x100, 0, 0, 0,  0x1, 0x4 },
    { 0 },
};

void *CreateSwordKnight(struct ObjectTemplate *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *obj = TaskGetStructPtr(task);

    InitObject(obj, arg0, arg1);
    obj->base.y -= 0x100;
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    ObjectSetBounds(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    if (obj->objTemplate->subtype1 == 0)
        sub_080B37DC(obj);
    return obj;
}

static void sub_080B2E6C(struct Object *obj) {
    obj->base.flags |= 4;
    if (obj->objTemplate->subtype1 == 0) {
        obj->base.xspeed = 0x80;
        if (obj->base.flags & 1)
            obj->base.xspeed = -obj->base.xspeed;
        if (sub_0809D998(obj))
            obj->base.xspeed = 0;
    }
    if (obj->objTemplate->subtype1 <= 1) {
        if (obj->base.flags & 2)
            obj->kirby3 = FindTargetKirby(&obj->base);
        if (abs(obj->kirby3->base.x - obj->base.x) <= 0x3FFF) {
            obj->unk85 = 0;
            if ((Rand16() & 3) == 3)
                sub_080B3A60(obj);
            else
                sub_080B3AAC(obj);
        }
        else {
            obj->unk85 = 1;
        }
    }
}

static void sub_080B2F3C(struct Object *obj) {
    obj->base.flags |= 4;
    if (obj->base.flags & 2)
        obj->kirby3 = FindTargetKirby(&obj->base);
    if (obj->objTemplate->subtype1 == 0) {
        obj->base.xspeed = -0x80;
        if (obj->base.flags & 1)
            obj->base.xspeed = 0x80;
        if (sub_0809D998(obj))
            obj->base.xspeed = 0;
    }
    if (++obj->base.counter > 0x5A) {
        ObjectSetFunc(obj, 0, sub_080B2E6C);
        if (obj->base.x > obj->kirby3->base.x)
            obj->base.flags |= 1;
        else
            obj->base.flags &= ~1;
        obj->base.flags &= ~8;
        obj->base.flags |= 4;
    }
}

static void sub_080B2FE4(struct Object *obj) {
    if (obj->base.flags & 2) {
        if (obj->unk83 == 2) {
            if ((Rand16() & 3) == 3) {
                sub_080B3AAC(obj);
                return;
            }
            ObjectSetFunc(obj, 0, sub_080B2F3C);
            if (obj->base.x > obj->kirby3->base.x)
                obj->base.flags |= 1;
            else
                obj->base.flags &= ~1;
            obj->base.flags &= ~8;
            return;
        }
    }
    else {
        if (obj->unk83 == 2 && obj->base.header.unk1 == 2)
            sub_080B351C(obj);
    }

    if (obj->unk9E == 0) {
        ++obj->unk9F;
        if (gUnk_08353FCC[obj->unk9F].unk8 == 0)
            --obj->unk9F;
        obj->unk9E = gUnk_08353FCC[obj->unk9F].unk8;
        if (gUnk_08353FCC[obj->unk9F].unk9 != 0xFF)
            obj->unk83 = gUnk_08353FCC[obj->unk9F].unk9;
        if (obj->unk9F != 0) {
            if (gUnk_08353FCC[obj->unk9F].unk0 != gUnk_08353FCC[obj->unk9F - 1].unk0) {
                obj->base.xspeed = gUnk_08353FCC[obj->unk9F].unk0;
                if (obj->base.flags & 1)
                    obj->base.xspeed = -obj->base.xspeed;
            }
            if (gUnk_08353FCC[obj->unk9F].unk2 != gUnk_08353FCC[obj->unk9F - 1].unk2)
                obj->base.yspeed = gUnk_08353FCC[obj->unk9F].unk2;
        }
        else {
            obj->base.yspeed = gUnk_08353FCC[obj->unk9F].unk2;
            obj->base.xspeed = gUnk_08353FCC[obj->unk9F].unk0;
            if (obj->base.flags & 1)
                obj->base.xspeed = -obj->base.xspeed;
        }
    }
    if (obj->base.flags & 1)
        obj->base.xspeed -= gUnk_08353FCC[obj->unk9F].unk4;
    else
        obj->base.xspeed += gUnk_08353FCC[obj->unk9F].unk4;
    obj->base.yspeed += gUnk_08353FCC[obj->unk9F].unk6;
    --obj->unk9E;
    if (obj->objTemplate->subtype1 == 0) {
        if (sub_0809D998(obj))
            obj->base.xspeed = 0;
    }
    else {
        obj->base.xspeed = 0;
    }
}

static void sub_080B31F0(struct Object *obj) {
    if (obj->base.flags & 2) {
        if (obj->unk83 == 4) {
            if ((Rand16() & 3) == 3) {
                ObjectSetFunc(obj, 1, sub_080B2FE4);
                obj->base.xspeed = 0;
                if (obj->base.x > obj->kirby3->base.x)
                    obj->base.flags |= 1;
                else
                    obj->base.flags &= ~1;
            }
            else {
                ObjectSetFunc(obj, 0, sub_080B2F3C);
                if (obj->base.x > obj->kirby3->base.x)
                    obj->base.flags |= 1;
                else
                    obj->base.flags &= ~1;
            }
            obj->base.flags &= ~8;
            return;
        }
    }
    else {
        if (obj->unk83 == 4 && obj->base.header.unk1 == 2)
            sub_080B351C(obj);
    }

    if (obj->unk9E == 0) {
        ++obj->unk9F;
        if (gUnk_08354020[obj->unk9F].unk8 == 0)
            --obj->unk9F;
        obj->unk9E = gUnk_08354020[obj->unk9F].unk8;
        if (gUnk_08354020[obj->unk9F].unk9 != 0xFF)
            obj->unk83 = gUnk_08354020[obj->unk9F].unk9;
        if (obj->unk9F != 0) {
            if (gUnk_08354020[obj->unk9F].unk0 != gUnk_08354020[obj->unk9F - 1].unk0) {
                obj->base.xspeed = gUnk_08354020[obj->unk9F].unk0;
                if (obj->base.flags & 1)
                    obj->base.xspeed = -obj->base.xspeed;
            }
            if (gUnk_08354020[obj->unk9F].unk2 != gUnk_08354020[obj->unk9F - 1].unk2)
                obj->base.yspeed = gUnk_08354020[obj->unk9F].unk2;
        }
        else {
            obj->base.yspeed = gUnk_08354020[obj->unk9F].unk2;
            obj->base.xspeed = gUnk_08354020[obj->unk9F].unk0;
            if (obj->base.flags & 1)
                obj->base.xspeed = -obj->base.xspeed;
        }
    }
    if (obj->base.flags & 1)
        obj->base.xspeed -= gUnk_08354020[obj->unk9F].unk4;
    else
        obj->base.xspeed += gUnk_08354020[obj->unk9F].unk4;
    obj->base.yspeed += gUnk_08354020[obj->unk9F].unk6;
    --obj->unk9E;
    if (obj->objTemplate->subtype1 == 0) {
        if (sub_0809D998(obj))
            obj->base.xspeed = 0;
    }
    else {
        obj->base.xspeed = 0;
    }
}

static void sub_080B3420(struct Object *obj) {
    ObjectSetFunc(obj, 5, sub_080B3AF8);
    obj->base.xspeed = 0;
    if ((Rand16() & 3) == 3)
        obj->unk83 = 6;
    if (obj->base.x > obj->kirby3->base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    obj->base.flags &= ~8;
    PlaySfx(&obj->base, SE_08D5859C);
}

static void sub_080B351C(struct Object *obj) {
    struct Task *t = TaskCreate(sub_080B3694, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    objBase = tmp;
    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = obj->base.x;
    objBase->y = obj->base.y;
    objBase->parent = obj;
    objBase->counter = 0;
    objBase->roomId = obj->base.roomId;
    objBase->unk56 = obj->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 = 0x20000043;
    objBase->flags = flags = 0x50500400;
    objBase->unk5C |= 0x80000;
    if (obj->base.flags & 1) {
        objBase->x -= 0x1A00;
        flags |= 1;
    }
    else {
        objBase->x += 0x1A00;
    }
    objBase->flags = flags;
    sub_0803E2B0(objBase, -0xF, -0xA, 0xA, 0xA);
    PlaySfx(objBase, SE_SWORD_KNIGHT_SLASH_ATTACK);
}

static void sub_080B3694(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object *obj = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (obj->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else {
        objBase->unk56 = obj->base.unk56;
        objBase->x = obj->base.x;
        objBase->y = obj->base.y;
        if (!Macro_0810B1F4(&obj->base)) {
            if (++objBase->counter > 3) {
                objBase->flags |= 0x1000;
            }
            else {
                if (obj->base.flags & 1) {
                    objBase->x -= 0x1A00;
                    objBase->flags |= 1;
                }
                else {
                    objBase->x += 0x1A00;
                    objBase->flags &= ~1;
                }
                if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
        }
    }
}

static void sub_080B37DC(struct Object *obj) {
    struct Task *t = TaskCreate(sub_080B38B0, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = obj->base.x;
    objBase->y = obj->base.y;
    objBase->parent = obj;
    objBase->counter = 0;
    objBase->roomId = obj->base.roomId;
    objBase->unk56 = obj->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 = 0;
    objBase->flags = flags = 0x42110400;
    objBase->unk5C |= 0x80000;
    if (obj->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, -0x1E, -0x30, 0x1E, 0x30);
}

static void sub_080B38B0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object *obj = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (obj->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else {
        objBase->x = obj->base.x;
        objBase->y = obj->base.y;
        objBase->unk56 = obj->base.unk56;
        if (!Macro_0810B1F4(&obj->base)) {
            if (obj->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (obj->unk85 != 0 && obj->unk83 <= 6) {
                if (objBase->flags & 0x40000) {
                    struct ObjectBase *other = objBase->unk6C;

                    objBase->flags &= ~0x40000;
                    if (other->parent != NULL && other->flags & 0x20000000) {
                        sub_080B3420(obj);
                        obj->unk85 = 0;
                        return;
                    }
                }
                if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
        }
    }
}

void sub_080B3A18(struct Object *obj) {
    ObjectSetFunc(obj, 0, sub_080B2E6C);
    if (obj->base.x > obj->kirby3->base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    obj->base.flags &= ~8;
    obj->base.flags |= 4;
}

static void sub_080B3A60(struct Object *obj) {
    ObjectSetFunc(obj, 1, sub_080B2FE4);
    obj->base.xspeed = 0;
    if (obj->base.x > obj->kirby3->base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    obj->base.flags &= ~8;
}

static void sub_080B3AAC(struct Object *obj) {
    ObjectSetFunc(obj, 3, sub_080B31F0);
    obj->base.xspeed = 0;
    if (obj->base.x > obj->kirby3->base.x)
        obj->base.flags |= 1;
    else
        obj->base.flags &= ~1;
    obj->base.flags &= ~8;
}

static void sub_080B3AF8(struct Object *obj) {
    if (obj->base.flags & 2) {
        ObjectSetFunc(obj, 0, sub_080B2E6C);
        if (obj->base.x > obj->kirby3->base.x)
            obj->base.flags |= 1;
        else
            obj->base.flags &= ~1;
        obj->base.flags &= ~8;
        obj->base.flags |= 4;
    }
    else {
        if (obj->base.header.unk1 == 1)
            sub_080B351C(obj);
        if (obj->objTemplate->subtype1 == 0 && sub_0809D998(obj))
            obj->base.xspeed = 0;
    }
}

#include "sir_kibble.h"
#include "random.h"
#include "kirby.h"
#include "code_0806F780.h"

void sub_080B2160(struct Object2 *arg0);
void sub_080B2210(struct Object2 *arg0);
void* CreateSirKibble(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    sub_0803E2B0(&obj->base, -5, 0, 5, 8);
    sub_0803E308(&obj->base, -7, -7, 7, 10);
    ObjectInitSprite(obj);
    switch (arg0->subtype1) {
    default:
    case 0:
    case 1:
        sub_080B2160(obj);
        break;
    case 2:
        sub_080B2210(obj);
        break;
    }
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

void sub_080B132C(struct ObjectBase *arg0) {
    if (arg0->xspeed < 0) {
        arg0->xspeed += 0xe;
        if (arg0->xspeed >= 1) {
            arg0->xspeed = 0;
        }
    }
    else {
        arg0->xspeed -= 0xe;
        if (arg0->xspeed <= -1) {
            arg0->xspeed = 0;
        }
    }
    arg0->counter++;
}

void sub_080B21D8(struct Object2 *arg0);
void sub_080B21A0(struct Object2 *arg0);
void sub_080B1368(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (!arg0->object->subtype1) {
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 0xe;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 0xe;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
    }
    else if (arg0->base.unk62 & 3) {
        arg0->base.xspeed = -arg0->base.xspeed;
        arg0->kirby3 = sub_0803D368(&arg0->base);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags  |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
    }

    if (!(arg0->base.unk62 & 4)) {
        arg0->base.yspeed -= 0x10;
        if (arg0->base.yspeed < -0x300) {
            arg0->base.yspeed = -0x300;
        }
    }
    if (arg0->base.counter > 180 - arg0->subtype * 60) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3fff) {
            if (!(Rand16() & 3)) {
                sub_080B21D8(arg0);
            }
            else {
                sub_080B21A0(arg0);
            }
        }
        else {
            sub_080B21A0(arg0);
        }
    }
    else {
        ++arg0->base.counter;
    }
}

void sub_080B1DF8(struct Object2 *arg0);
void sub_080B14A0(struct Object2 *arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed >= 1) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed <= -1) {
            arg0->base.xspeed = 0;
        }
    }

    if (!(arg0->base.unk62 & 4)) {
        arg0->base.yspeed -= 0x10;
        if (arg0->base.yspeed < -0x300) {
            arg0->base.yspeed = -0x300;
        }
    }
    if (arg0->base.counter >= 163) {
        ObjectSetFunc(arg0, 0, sub_080B1368);
        if (arg0->object->subtype1) {
            arg0->unk83 = 1;
            arg0->base.xspeed = 0x80;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
            return;
        }

    }
    else {
        if ((arg0->base.counter) == 50) {
            sub_080B1DF8(arg0);

        }
        ++arg0->base.counter;
    }
}

void sub_080B1550(struct Object2* arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed >= 1) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed <= -1) {
            arg0->base.xspeed = 0;
        }
    }

    if (!(arg0->base.unk62 & 4)) {
        arg0->base.yspeed -= 0x2b;
        if (arg0->base.yspeed < -0x300) {
            arg0->base.yspeed = -0x300;
        }
    }

    if (arg0->base.counter == 120) {
        arg0->base.yspeed = 0x400;
        PlaySfx(&arg0->base, 0x145);
    }

    if (arg0->base.counter > 120) {
        if (arg0->base.unk62 & 4) {
            ObjectSetFunc(arg0, 0, sub_080B1368);
            if (arg0->object->subtype1) {
                arg0->unk83 = 1;
                arg0->base.xspeed = 0x80;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
            return;
        }

    }
    if (arg0->base.counter == 50) {
        sub_080B1DF8(arg0);
    }
    ++arg0->base.counter;
}

void sub_080B16A8(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed >= 1) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed <= -1) {
            arg0->base.xspeed = 0;
        }
    }
    arg0->base.counter++;
}

void* CreateUnknownA0(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x02000140;
    obj->base.unk5C |= 0x20;
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x640;
    if (arg0->subtype1 & 1) {
        obj->base.flags |= 1;
    }
    gUnk_08351648[obj->type].unk10(obj);

    return obj;
}

void sub_080B17BC(struct Object2 *arg0) {
    if (arg0->base.parent) {
        struct Object2 *parent = arg0->base.parent; // TODO: type
        if (parent->base.flags & 0x1000) {
            arg0->base.parent = NULL;
        }
        if (sub_0803925C(&arg0->base, &parent->base)) {
            arg0->base.flags |= 0x1000;
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed += 0x10;
        if (arg0->base.xspeed < -0x02a8) {
            arg0->base.xspeed = -0x02a8;
        }
        else if (arg0->base.xspeed > 0x02a8) {
            arg0->base.xspeed = 0x02a8;
        }
    }
    else {
        arg0->base.xspeed -= 0x10;
        if (arg0->base.xspeed > 0x2a8) {
            arg0->base.xspeed = 0x02a8;
        }
        else if (arg0->base.xspeed < -0x02a8) {
            arg0->base.xspeed = -0x02a8;
        }
    }
    ++arg0->base.counter;
}

void sub_080B1AC4(void);
void sub_080B1850(struct Object2 *arg0) {
    struct ObjectBase *tmp, *obj;
    struct Task *task = TaskCreate(sub_080B1AC4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    tmp = TaskGetStructPtr(task);
    obj = tmp;

    sub_0803E380(obj);
    obj->unk0 = 2;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->counter = 0;
    obj->roomId = arg0->base.roomId;
    obj->unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(obj))
        obj->flags |= 0x2000;

    obj->unk63 = 1;
    obj->flags = 0x10000140;
    obj->unk68 = 0x20000043;
    obj->unk5C |= 0x80000;
    obj->xspeed = 0x2a8;
    if (arg0->base.flags & 1) {
        obj->x -= 0x1000;
        obj->flags |= 1;
        obj->xspeed = -obj->xspeed;
    }
    else {
        obj->x += 0x1000;
        obj->flags &= ~1;
    }
    sub_0803E2B0(obj, -3, -2, 3, 2);
    sub_0803E308(obj, 0, 0, 0, 0);
    sub_080708DC(obj, &obj->sprite, 6, 0x32d, 6, 0xc);
    obj->sprite.palId = 0;
    if (arg0->base.unkC & 0x10) {
        Macro_081050E8(obj, &obj->sprite, gUnk_08351648[OBJ_DROPPY].unk8, !obj->sprite.palId);
    }
    else {
        Macro_081050E8(obj, &obj->sprite, 0x32d, !obj->sprite.palId);
    }
    PlaySfx(obj, 0x13f);
}

void sub_080B1AC4(void) {
    struct ObjectBase *obj, *tmp;
    struct Object2 *parent;
    struct Sprite sprite;
    tmp = TaskGetStructPtr(gCurTask);
    obj = tmp;
    parent = obj->parent;

    Macro_08107BA8_4(obj, &obj->sprite, &sprite, 6, &obj->sprite);
    if (parent->base.unkC & 0x10) {
        Macro_081050E8(obj, &obj->sprite, gUnk_08351648[OBJ_DROPPY].unk8, !obj->sprite.palId);
    }
    else {
        Macro_081050E8(obj, &obj->sprite, 0x32d, !obj->sprite.palId);
    }
    if (parent) {
        if (parent->base.unk56 == 0xff) {
            obj->roomId = 0xffff;
        }
        if (parent->base.flags & 0x1000) {
            obj->parent = NULL;
            parent = obj->parent;
        }
    }
    if (sub_0806F780(obj))
        return;
    if (parent) {
        if (sub_0803925C(obj, &parent->base)) {
            obj->flags |= 0x1000;
            return;
        }
    }
    obj->flags |= 4;
    if (!(obj->flags & 0x200))
        SetPointerSomething(obj);
    if (obj->flags & 1) {
        obj->xspeed += 0x10;
        if (obj->xspeed < -0x2a8) {
            obj->xspeed = -0x2a8;
        }
        else if (obj->xspeed > 0x2a8) {
            obj->xspeed = 0x2a8;
        }
    }
    else {
        obj->xspeed -= 0x10;
        if (obj->xspeed > 0x2a8) {
            obj->xspeed = 0x2a8;
        }
        else if (obj->xspeed < -0x2a8) {
            obj->xspeed = -0x2a8;
        }
    }
    if (!(obj->flags & 0x800)) {
        obj->x += obj->xspeed;
        obj->y -= obj->yspeed;
    }
    sub_0806F8BC(obj);
}

void sub_080B1DF8(struct Object2 *arg0) {
    struct Object2 *obj;
    obj = CreateObjTemplateAndObjWithSettingParent(arg0, 1, 0x24, arg0->base.x>>8, arg0->base.y>>8,
        0, 0x1f, 0, 0, OBJ_SIR_KIBBLE_CUTTER, 0, 0, arg0->subtype, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (arg0->base.flags & 1) {
        obj->base.flags |= 1;
    }
    obj->base.xspeed = 0x2a8;
    if (arg0->base.flags & 1) {
        obj->base.x -= 0x1000;
        obj->base.flags |= 1;
        obj->base.xspeed = -obj->base.xspeed;
    }
    else {
        obj->base.x += 0x1000;
        obj->base.flags &= ~1;
    }
}

void sub_080B2224(struct Object2 *arg0);
void* CreateSirKibbleCutter(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.unk63 = 1;
    obj->base.flags |= 0x40;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.unkC |= 2;
    obj->base.flags |= 0x4000;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x10000000;
    obj->base.unk68 = 0x20000043;
    obj->base.unk5C |= 0x20;
    obj->unk9E = 0;
    obj->unk7C = sub_080B2224;
    sub_0803E2B0(&obj->base, -3, -2, 3, 2);
    sub_0803E308(&obj->base, 2, 2, 2, 2);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);

    return obj;
}

void sub_080B207C(struct Object2 *arg0);
void sub_080B1FD0(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080B207C);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    PlaySfx(&arg0->base, 0x13f);
}

void sub_080B207C(struct Object2 *arg0) {
    struct Object2 *parent = arg0->base.parent;
    arg0->base.flags |= 4;
    if (parent && sub_0803925C(&arg0->base, &parent->base)) {
        arg0->base.flags |= 0x1000;
        return;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed += 0x10;
        if (arg0->base.xspeed < -0x02a8) {
            arg0->base.xspeed = -0x02a8;
        }
        else if (arg0->base.xspeed > 0x02a8) {
            arg0->base.xspeed = 0x02a8;
        }
    }
    else {
        arg0->base.xspeed -= 0x10;
        if (arg0->base.xspeed > 0x2a8) {
            arg0->base.xspeed = 0x02a8;
        }
        else if (arg0->base.xspeed < -0x02a8) {
            arg0->base.xspeed = -0x02a8;
        }
    }
}

void sub_080B2108(struct Object2 *arg0) {
    switch (arg0->object->subtype1) {
    default:
    case 0:
    case 1:
        sub_080B2160(arg0);
        break;
    case 2:
        sub_080B2210(arg0);
        break;
    }
}

void sub_080B2130(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080B17BC);
    arg0->base.xspeed = 0x2a8;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
}

void sub_080B2160(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080B1368);
    if (arg0->object->subtype1 != 0) {
        arg0->unk83 = 1;
        arg0->base.xspeed = 0x80;
        if (arg0->base.flags & 1)
            arg0->base.xspeed = -arg0->base.xspeed;
    }
}

void sub_080B21A0(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 2, sub_080B14A0);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

void sub_080B21D8(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 3, sub_080B1550);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags &= ~1;
    }
    else {
        arg0->base.flags |= 1;
    }
}

void sub_080B2210(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080B16A8);
}

void sub_080B2224(struct Object2 *arg0) {
    struct Object2 *parent = arg0->base.parent;
    if ((parent->base.flags & 0x1000) || parent->unk80 < 1)
        arg0->base.parent = NULL;
}


#include "pengy.h"

#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "malloc_vram.h"
#include "object.h"
#include "task.h"
#include "code_0806F780.h"

const struct AnimInfo gUnk_083547E4[] = {
    { 0x32C, 0, 0 },
    { 0x32C, 1, 0 },
    { 0x32C, 2, 0 },
    { 0x32C, 3, 0 },
    { 0x32C, 4, 0 },
    { 0x32C, 5, 0 },
    { 0x32C, 6, 0 },
    { 0x32C, 7, 0 },
    { 0x32C, 8, 0 },
};

static const struct Unk_08353510 gUnk_08354808[] = {
    { 0x100, 0x0, 0x0, 0x0, 0x10, 0x1 },
    { 0x80, 0x0, 0x0, 0x0, 0x10, 0x1 },
    { 0x20, 0x0, 0x0, 0x0, 0xf, 0x1 },
    { 0x0, 0x0, 0x0, 0x0, 0x7, 0x3 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x200, 0x0, 0x0, 0x0, 0xb, 0x2 },
    { 0x100, 0x0, 0x0, 0x0, 0xb, 0x2 },
    { 0x40, 0x0, 0x0, 0x0, 0xa, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0x7, 0x3 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const s16 gUnk_08354880[] = { 
    0x0, 0x0,
    0x0, 0x0,
    0x0, 0x0,
    0x0, 0x0,
    0x500, 0x200,
    0x0, 0x0,
    0x500, 0x200,
    0x0, 0x0,
    0x500, 0x200,
    0x0, 0x0,
    0x500, 0x200,
    0x300, 0x100,
    0x200, 0x100,
    0x100, 0x100,
};

static const s16 gUnk_083548B8[] = { 
    0x0, 0x0,
    0x0, 0x0,
    0x0, 0x0,
    0x0, 0x0,
    0x580, 0x160,
    0x0, 0x0,
    0x580, 0x160,
    0x0, 0x0,
    0x580, 0x160,
    0x0, 0x0,
    0x580, 0x160,
    0x300, 0x80,
    0x200, 0x80,
    0x100, 0x80,
};

static const s16 gUnk_083548F0[] = { 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x600, 0x100, 
    0x0, 0x0, 
    0x600, 0x100, 
    0x0, 0x0, 
    0x600, 0x100, 
    0x0, 0x0, 
    0x600, 0x100, 
    0x300, 0x0, 
    0x200, 0x0, 
    0x100, 0x0, 
};

static void sub_080BAC64(struct Object2*);
static void sub_080BAE04(struct Object2*);
static void sub_080BAFBC(struct Object2*);
static void sub_080BB290(void);
static void sub_080BB568(void);
static void sub_080BB8FC(void);
static void sub_080BBC40(struct Object2*);
static void sub_080BBC54(struct Object2*);
static void sub_080BBC68(struct Object2*);
static void sub_080BBCBC(struct Object2*);
static void sub_080BBCD8(struct Object2*);
static void sub_080BBD14(struct Object2*);

void* CreatePengy(struct Object* arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -5, 5, 6);
    sub_0803E308(&obj->base, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    if (obj->object->subtype1 == 0) {
        if ((Rand16() & 3) == 0) {
            sub_080BBBF8(obj);
        }
        else {
            sub_080BBD14(obj);
        }
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

static void sub_080BAC64(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    if (arg0->object->subtype1 == 0) {
        if (arg0->unk85 == 0 && arg0->unk9E <= 1) {
            if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3fff) {
                if (arg0->unk9E != 0) {
                    if (RandLessThan3() == 0) {
                        arg0->unk85 = 0x20;
                        arg0->unk9E++;
                    }
                    else {
                        sub_080BBCBC(arg0);
                        return;
                    }
                }
                else {
                    if (Rand16() & 1) {
                        sub_080BBCBC(arg0);
                        return;
                    }
                    else {
                        arg0->unk85 = 0x20;
                        arg0->unk9E++;
                    }
                }
            }
        }
        else {
            arg0->unk85--;
        }
        ++arg0->base.counter;
        switch(arg0->base.counter) {
        case 0x4b:
        case 0x5a:
        case 0x69:
            if (arg0->subtype != 0) {
                if (RandLessThan3() == 0) {
                    sub_080BBC40(arg0);
                    return;
                }
            }
            else {
                if ((Rand16() & 3) == 0) {
                    sub_080BBC40(arg0);
                    return;
                }
            }
            break;
        case 0x78:
            sub_080BBC40(arg0);
            return;
        }
        if (!(arg0->base.unk62 & 4)) {
            sub_080BBC54(arg0);
        }
    }
}

static void sub_080BAE04(struct Object2* arg0) {
    if (arg0->base.unk62 & 4) {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354808[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354808[arg0->unk9F].unk8;
            if (gUnk_08354808[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354808[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354808[arg0->unk9F].unk0 != gUnk_08354808[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354808[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354808[arg0->unk9F].unk2 != gUnk_08354808[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354808[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354808[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354808[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354808[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354808[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354808[arg0->unk9F].unk6;
        arg0->unk9E--;
        if (gUnk_08354808[(u8)(arg0->unk9F + 1)].unk8 == 0 && arg0->unk9E == 0) {
            ObjectSetFunc(arg0, 0, sub_080BAC64);
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->base.xspeed = 0;
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
        else if (arg0->unk85 != 0) arg0->unk85--;
    }
    else if (arg0->unk85 != 0) arg0->unk85--;
}

static void sub_080BAFBC(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->base.counter++;
    }
    if (arg0->base.unk1 == 1) {
        sub_080BB080(arg0, arg0->unk85);
        sub_080BB470(arg0);
        sub_080BB804(arg0, arg0->unk85);
        if (++arg0->unk85 > 2) {
            arg0->unk85 = 0;
        }
    }
    if (arg0->base.counter > 9) {
        arg0->unk85 = 0xf0;
        ObjectSetFunc(arg0, 0, sub_080BAC64);
        arg0->kirby3 = sub_0803D368(&arg0->base);
        arg0->base.xspeed = 0;
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
    }
    if (!(arg0->base.unk62 & 4)) {
        arg0->unk85 = 0xf0;
        ObjectSetFunc(arg0, 4, sub_080BBC68);
    }
}

void sub_080BB080(struct Object2* arg0, u8 arg1) {
    struct Task *task = TaskCreate(sub_080BB290, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *obj2 = TaskGetStructPtr(task), *obj = obj2;
    sub_0803E380(obj);
    obj->unk0 = 2;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->counter = 0;
    obj->roomId = arg0->base.roomId;
    obj->unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(obj)) {
        obj->flags |= 0x2000;
    }
    obj->unk63 = 1;
    obj->flags |= 0x4000;
    obj->flags |= 0x10000000;
    obj->flags |= 0x140;
    obj->unk68 = 0x20000203;
    obj->unk5C |= 0x80000;
    switch (arg1) {
    case 0:
    default:
        obj->xspeed = 0x380;
        obj->yspeed = 0x100;
        break;
    case 1:
        obj->xspeed = 0x3c0;
        obj->yspeed = 0x80;
        break;
    case 2:
        obj->xspeed = 0x400;
        obj->yspeed = 0;
        break;
    }
    if (arg0->base.flags & 1) {
        obj->x -= 0xa00;
        obj->flags |= 1;
        obj->xspeed = -obj->xspeed;
    }
    else {
        obj->x += 0xa00;
        obj->flags &= ~1;
    }
    sub_0803E2B0(obj, -2, -2, 2, 2);
    sub_0803E308(obj, 0, 0, 0, 0);
    sub_080708DC(obj, &obj->sprite, 0x12, 0x334, 0, 0xc);
    PlaySfx(obj, SE_08D584D0);
}

static void sub_080BB290(void) {
    struct Sprite sprite;
    struct ObjectBase *obj2 = TaskGetStructPtr(gCurTask), *obj = obj2;
    if (sub_0806F780(obj) == 0) {
        obj->flags |= 4;
        if (++obj->counter > 0xa) {
            obj->flags |= 0x1000;
        }
        else {
            if (!(obj->flags & 0x200)) {
                SetPointerSomething(obj);
            }
            if (!(obj->flags & 0x800)) {
                obj->x += obj->xspeed;
                obj->y -= obj->yspeed;
            }
            Macro_08107BA8_4(obj, &obj->sprite, &sprite, 0x12, &obj->sprite);
            sub_0806F8BC(obj);
        }
    }
}

void sub_080BB470(struct Object2* arg0) {
    struct Task *task = TaskCreate(sub_080BB568, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    sub_0803E3B0(obj);
    obj->unk0 = 3;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->roomId = arg0->base.roomId;
    obj->flags |= 0x4000;
    obj->unk3C = 0x300;
    obj->unk3E = 0;
    if (arg0->base.flags & 1) {
        obj->x -= 0xa00;
        obj->unk3C = -obj->unk3C;
        obj->flags |= 1;
    }
    else {
        obj->x += 0xa00;
        obj->flags &= ~1;
    }
    if (Macro_0810B1F4(&arg0->base)) {
        obj->flags |= 0x2000;
    }
    sub_080709F8(obj, &obj->sprite, 0x12, 0x334, 1, 0xc);
}

static void sub_080BB568(void) {
    struct Sprite sprite;
    struct Object2 *r1;
    struct Object4 *r0 = TaskGetStructPtr(gCurTask), *obj = r0;

    if (obj->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        r1 = obj->parent;
        if (r1)
        {
            if (r1->base.unk0 && r1->base.flags & 0x1000)
            {
                obj->parent = NULL;
                r1 = NULL;
            }
            if (!r1)
                goto _08117E38;
            if (Macro_0810B1F4(&r1->base) && !(obj->flags & 0x2000))
            {
                sub_0803DBC8(obj);
                return;
            }
        }
        else
        {
        _08117E38:
            KirbySomething(obj);
        }
        Macro_0809E55C(obj);
        if (obj->flags & 2) {
            obj->flags |= 0x1000;
        }
        else {
            if (obj->flags & 1) {
                obj->unk3C += 0x50;
            }
            else {
                obj->unk3C -= 0x50;
            }
            obj->unk3E = 0x40;
            Macro_08107BA8_4(obj, &obj->sprite, &sprite, 0x12, &obj->sprite);
            if (!(obj->flags & 0x800)) {
                obj->x += obj->unk3C;
                obj->y -= obj->unk3E;
            }
            sub_0806FAC8(obj);
        }
    }
}

void sub_080BB804(struct Object2* arg0, u8 arg1) {
    struct Task *task = TaskCreate(sub_080BB8FC, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    sub_0803E3B0(obj);
    obj->unk0 = 3;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->roomId = arg0->base.roomId;
    obj->flags |= 0x4000;
    obj->unk3C = 0;
    obj->unk3E = 0;
    obj->unk8 = arg1;

    if (arg0->base.flags & 1) {
        obj->x -= 0xa00;
        obj->flags |= 1;
    }
    else {
        obj->x += 0xa00;
        obj->flags &= ~1;
    }
    if (Macro_0810B1F4(&arg0->base)) {
        obj->flags |= 0x2000;
    }
    sub_080709F8(obj, &obj->sprite, 0x12, 0x334, 2, 0xc);
}

static void sub_080BB8FC(void) {
    struct Sprite sprite;
    struct Object2 *r1;
    struct Object4 *r0 = TaskGetStructPtr(gCurTask), *obj = r0;

    if (obj->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        r1 = obj->parent;
        if (r1)
        {
            if (r1->base.unk0 && r1->base.flags & 0x1000)
            {
                obj->parent = NULL;
                r1 = NULL;
            }
            if (!r1)
                goto _08117E38;
            if (Macro_0810B1F4(&r1->base) && !(obj->flags & 0x2000))
            {
                sub_0803DBC8(obj);
                return;
            }
        }
        else
        {
        _08117E38:
            KirbySomething(obj);
        }
        Macro_0809E55C(obj);
        if (obj->flags & 2) {
            obj->flags |= 0x1000;
        }
        else {
            switch (obj->unk8) {
            case 1:
                obj->unk3C = gUnk_083548B8[obj->unk4 * 2];
                obj->unk3E = gUnk_083548B8[obj->unk4 * 2 + 1];
                break;
            case 2:
                obj->unk3C = gUnk_083548F0[obj->unk4 * 2];
                obj->unk3E = gUnk_083548F0[obj->unk4 * 2 + 1];
                break;
            default:
                obj->unk3C = gUnk_08354880[obj->unk4 * 2];
                obj->unk3E = gUnk_08354880[obj->unk4 * 2 + 1];
                break;
            }
            if (obj->flags & 1) {
                obj->unk3C = -obj->unk3C;
            }
            obj->unk4++;
            Macro_08107BA8_4(obj, &obj->sprite, &sprite, 0x12, &obj->sprite);
            if (!(obj->flags & 0x800)) {
                obj->x += obj->unk3C;
                obj->y -= obj->unk3E;
            }
            sub_0806FAC8(obj);
        }
    }
}

void sub_080BBBF8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BAC64);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    arg0->base.xspeed = 0;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080BBC40(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BAE04);
}

static void sub_080BBC54(struct Object2* arg0) {
    ObjectSetFunc(arg0, 4, sub_080BBC68);
}

static void sub_080BBC68(struct Object2* arg0) {
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.unk62 & 4) {
        ObjectSetFunc(arg0, 0, sub_080BAE04);
    }
    else {
        if (arg0->unk85 != 0) arg0->unk85--;
    }
}

static void sub_080BBCBC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 5, sub_080BBCD8);
    arg0->base.xspeed = 0;
}

static void sub_080BBCD8(struct Object2* arg0) {
    if (++arg0->base.counter > 0xf) {
        sub_080BBD14(arg0);
    }
    if (!(arg0->base.unk62 & 4)) {
        ObjectSetFunc(arg0, 4, sub_080BBC68);
    }
}

static void sub_080BBD14(struct Object2* arg0) {
    ObjectSetFunc(arg0, 6, sub_080BAFBC);
    arg0->unk85 = 0;
    arg0->base.xspeed = 0;
}

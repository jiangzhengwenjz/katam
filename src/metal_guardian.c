#include "metal_guardian.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "malloc_vram.h"
#include "task.h"
#include "random.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

const struct Unk_02021590 gUnk_08354A58[] = {
    { 0x311, 0, 0 },
    { 0x311, 1, 0 },
    { 0x311, 2, 0 },
    { 0x311, 3, 0 },
    { 0x311, 4, 0 },
    { 0x311, 5, 0 },
    { 0x311, 6, 0 },
};

static const struct Unk_08353510 gUnk_08354A74[] = {
    { -0x40, 0x100, 0x0, 0x0, 0x10, 0x2 },
    { -0xa0, 0xa0, 0x0, 0x0, 0x10, 0x2 },
    { -0x100, 0x40, 0x0, 0x0, 0x10, 0x2 },
    { -0x100, -0x40, 0x0, 0x0, 0x10, 0x2 },
    { -0xa0, -0xa0, 0x0, 0x0, 0x10, 0x2 },
    { -0x40, -0x100, 0x0, 0x0, 0x10, 0x2 },
    { 0x40, -0x100, 0x0, 0x0, 0x10, 0x2 },
    { 0xa0, -0xa0, 0x0, 0x0, 0x10, 0x2 },
    { 0x100, -0x40, 0x0, 0x0, 0x10, 0x2 },
    { 0x100, 0x40, 0x0, 0x0, 0x10, 0x2 },
    { 0xa0, 0xa0, 0x0, 0x0, 0x10, 0x2 },
    { 0x40, 0x100, 0x0, 0x0, 0x10, 0x2 },
    { 0x40, 0x100, 0x0, 0x0, 0x10, 0x2 },
    { 0xa0, 0xa0, 0x0, 0x0, 0x10, 0x2 },
    { 0x100, 0x40, 0x0, 0x0, 0x10, 0x2 },
    { 0x100, -0x40, 0x0, 0x0, 0x10, 0x2 },
    { 0xa0, -0xa0, 0x0, 0x0, 0x10, 0x2 },
    { 0x40, -0x100, 0x0, 0x0, 0x10, 0x2 },
    { -0x40, -0x100, 0x0, 0x0, 0x10, 0x2 },
    { -0xa0, -0xa0, 0x0, 0x0, 0x10, 0x2 },
    { -0x100, -0x40, 0x0, 0x0, 0x10, 0x2 },
    { -0x100, 0x40, 0x0, 0x0, 0x10, 0x2 },
    { -0xa0, 0xa0, 0x0, 0x0, 0x10, 0x2 },
    { -0x40, 0x100, 0x0, 0x0, 0x10, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const s8 gUnk_08354BA0[8] = { -0x8, -0x9, -0x6, -0x4, 0x2, -0x2, 0x2, -0x2 };

static void sub_080BD634(struct Object2*);
static void sub_080BD988(struct Object2*);
static void sub_080BDA00(struct Object2*);
static void sub_080BDA70(struct Object2*, u8);
static bool8 sub_080BDD1C(struct Unk_080C4EDC*);
static void sub_080BDE7C(struct Object2*);
static bool8 sub_080BE0E8(struct Unk_080C4EDC*);
static void sub_080BE25C(struct Object2*);
static void sub_080BE284(struct Object2*);
static bool8 sub_080BE2A8(struct Unk_080C4EDC*);
static bool8 sub_080BE2C4(struct Unk_080C4EDC*);

void* CreateMetalGuardian(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    obj->base.unk5C &= ~7;
    obj->base.unk5C |= 3;
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x6C0;
    if (obj->object->subtype1 != 0) {
        sub_080BE25C(obj);
    }
    else {
        gUnk_08351648[obj->type].unk10(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080BD634(struct Object2* arg0) {
    if (arg0->unk83 == 2) {
        arg0->base.flags |= 4;
        if (gUnk_08354A74[(u8)(arg0->unk9F + 1)].unk8 == 0) {
            if (arg0->unk9E == 0) {
                arg0->unk9F = 0xff;
            }
        }
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354A74[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354A74[arg0->unk9F].unk8;
            if (gUnk_08354A74[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354A74[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354A74[arg0->unk9F].unk0 != gUnk_08354A74[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354A74[arg0->unk9F].unk0; 
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354A74[arg0->unk9F].unk2 != gUnk_08354A74[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354A74[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354A74[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354A74[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354A74[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354A74[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354A74[arg0->unk9F].unk6;
        arg0->unk9E--;
        if (--arg0->base.counter == 0) {
            arg0->base.counter = 0x3c;
            if (RandLessThan3() == 0) {
                arg0->unk83 = 3;
                arg0->unkA0 = arg0->base.xspeed;
                arg0->unkA2 = arg0->base.yspeed;
                arg0->base.xspeed = 0;
                arg0->base.yspeed = 0;
            }
        }
    }
    else if (arg0->unk83 == 3) {
        arg0->base.flags |= 4;
        if (arg0->base.flags & 2) {
            arg0->unk83 = 4;
            if (Rand16() & 1) {
                sub_080BDE7C(arg0);
            }
            else {
                sub_080BDA70(arg0, 0);
                sub_080BDA70(arg0, 1);
                sub_080BDA70(arg0, 2);
                PlaySfx(&arg0->base, SE_08D58A10);
            }
        }
    }
    else {
        if (arg0->base.unk1 <= 7) {
            if (arg0->base.flags & 1) {
                arg0->base.objBase54 = -gUnk_08354BA0[arg0->base.unk1];
            }
            else {
                arg0->base.objBase54 = gUnk_08354BA0[arg0->base.unk1];
            }
        }
        if (arg0->base.flags & 2) {
            arg0->unk83 = 2;
            arg0->base.xspeed = arg0->unkA0;
            arg0->base.yspeed = arg0->unkA2;
        }
    }
}

static void sub_080BD988(struct Object2* arg0) {
    if (++arg0->base.counter > 0x3c) {
        arg0->base.counter = 0;
        arg0->kirby3 = sub_0803D368(&arg0->base);
    }
    if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3fff) {
        if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3fff) {
            sub_080BE284(arg0);
        }
    }
}

static void sub_080BDA00(struct Object2* arg0) {
    arg0->base.yspeed += 4;
    if (arg0->base.yspeed > 0x1c0) {
        arg0->base.yspeed = 0x1c0;
    }
    if (arg0->unk83 != 2 && arg0->base.flags & 2) {
        arg0->unk83 = 2;
    }
    if (++arg0->base.counter > 0x3c) {
        ObjectSetFunc(arg0, 2, sub_080BD634);
        arg0->base.xspeed = 0;
        arg0->base.yspeed = 0;
        arg0->base.flags |= 0x40;
        arg0->base.flags &= ~0x20;
        arg0->base.counter = 0x5a;
    }
}


static void sub_080BDA70(struct Object2* arg0, u8 arg1) {
    struct Unk_080C4EDC *laser, *laser2;
    struct Task *task = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    laser2 = TaskGetStructPtr(task);
    laser = laser2;
    sub_0803E380(&laser->base);
    laser->base.unk0 = 2;
    laser->base.x = arg0->base.x;
    laser->base.y = arg0->base.y;
    laser->base.parent = arg0;
    laser->base.counter = 0;
    laser->base.roomId = arg0->base.roomId;
    laser->base.unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(&laser->base)) {
        laser->base.flags |= 0x2000;
    }
    laser->unk78 = sub_080BDD1C;
    laser->unk7C = sub_080BE2C4;
    laser->unk80 = sub_080BE2C4;
    laser->unk84 = NULL;
    laser->unk88 = 0;
    laser->unk89 = 0;
    laser->unk8A = 0;
    laser->base.flags |= 0x4000;
    laser->base.unk63 = 1;
    laser->base.flags |= 0x10000000;
    laser->base.unk68 = 0x20000043;
    laser->base.unk5C |= 0x80000;
    if (Macro_0810B1F4(&laser->base)) {
        laser->base.flags |= 0x2000;
    }
    switch (arg1) {
    case 1:
        laser->base.xspeed = 0x5a2;
        laser->base.yspeed = 0x5a2;
        sub_0803E2B0(&laser->base, 2, -3, 10, 3);
        sub_0803E308(&laser->base, 16, -1, 18, 1);
        sub_080708DC(&laser->base, &laser->base.sprite, 0xc, 0x311, 9, 0x1b);
        laser->base.sprite.unk8 |= 0x800;
        break;
    case 2:
        laser->base.xspeed = 0x5a2;
        laser->base.yspeed = -0x5a2;
        sub_0803E2B0(&laser->base, 2, -3, 10, 3);
        sub_0803E308(&laser->base, 16, -1, 18, 1);
        sub_080708DC(&laser->base, &laser->base.sprite, 0xc, 0x311, 9, 0x1b);
        break;
    default:
        laser->base.xspeed = 0x800;
        laser->base.yspeed = 0;
        sub_0803E2B0(&laser->base, 2, -3, 10, 3);
        sub_0803E308(&laser->base, 16, -1, 18, 1);
        sub_080708DC(&laser->base, &laser->base.sprite, 0xc, 0x311, 8, 0x1b);
        break;
    }
    if (arg0->base.flags & 1) {
        laser->base.xspeed = -laser->base.xspeed;
        laser->base.flags |= 1;
        laser->base.x -= 0x800;
    }
    else {
        laser->base.x += 0x800;
    }
    laser->base.sprite.palId = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == laser->base.roomId) {
        laser->base.sprite.palId = sub_0803DF24(0x311);
        if (laser->base.sprite.palId == 0xff) {
            laser->base.sprite.palId = sub_0803DFAC(0x311, 0);
        }
    }
    else {
        laser->base.sprite.palId = 0;
    }
}

static bool8 sub_080BDD1C(struct Unk_080C4EDC* arg0) {
    struct Sprite sprite;
    Macro_08107BA8_4(&arg0->base, &arg0->base.sprite, &sprite, 0xc, &arg0->base.sprite);
    Macro_081050E8(&arg0->base, &arg0->base.sprite, 0x311, !arg0->base.sprite.palId);
    if (arg0->unk88 != 0 && arg0->base.flags & 2) {
        arg0->base.flags |= 0x1000;
        return TRUE;
    }
    return FALSE;
}

static void sub_080BDE7C(struct Object2* arg0) {
    struct Sprite *sprite;
    u8 arg2;
    struct Unk_080C4EDC *laser, *laser2;
    struct Task *task = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    laser2 = TaskGetStructPtr(task);
    laser = laser2;
    sub_0803E380(&laser->base);
    laser->base.unk0 = 2;
    laser->base.x = arg0->base.x;
    laser->base.y = arg0->base.y;
    laser->base.parent = arg0;
    laser->base.counter = 0;
    laser->base.roomId = arg0->base.roomId;
    laser->base.unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(&laser->base)) {
        laser->base.flags |= 0x2000;
    }
    laser->unk78 = sub_080BE0E8;
    laser->unk7C = sub_080BE2A8;
    laser->unk80 = sub_080BE2A8;
    laser->unk84 = NULL;
    laser->unk88 = 0;
    laser->unk89 = 0;
    laser->unk8A = 0;
    laser->base.flags |= 0x4000;
    laser->base.unk63 = 1;
    laser->base.flags |= 0x10000000;
    laser->base.unk68 = 0x20000043;
    laser->base.unk5C |= 0x80000;
    if (Macro_0810B1F4(&laser->base)) {
        laser->base.flags |= 0x2000;
    }
    if (arg0->base.flags & 1) {
        laser->base.xspeed = -laser->base.xspeed;
        laser->base.xspeed = -0x400;
        laser->base.x -= 0x800;
    }
    else {
        laser->base.flags |= 1;
        laser->base.xspeed = 0x400;
        laser->base.x += 0x800;
    }
    sub_0803E2B0(&laser->base, 2, -3, 10, 3);
    sub_0803E308(&laser->base, 16, -1, 18, 1);
    sub_080708DC(&laser->base, &laser->base.sprite, 0xc, 0x311, 7, 0x1b);
    laser->base.sprite.palId = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == laser->base.roomId) {
        laser->base.sprite.palId = sub_0803DF24(0x311);
        if (laser->base.sprite.palId == 0xff) {
            laser->base.sprite.palId = sub_0803DFAC(0x311, 0);
        }
    }
    else {
        laser->base.sprite.palId = 0;
    }
    PlaySfx(&laser->base, SE_08D58378);
}

static bool8 sub_080BE0E8(struct Unk_080C4EDC* arg0) {
    struct Sprite sprite;
    arg0->base.flags |= 4;
    Macro_08107BA8_4(&arg0->base, &arg0->base.sprite, &sprite, 0xc, &arg0->base.sprite);
    Macro_081050E8(&arg0->base, &arg0->base.sprite, 0x311, !arg0->base.sprite.palId);
    return FALSE;
}

void sub_080BE228(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080BD634);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    arg0->base.counter = 0x5a;
}

static void sub_080BE25C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BD988);
    arg0->base.xspeed = 0;
    arg0->base.flags &= ~0x40;
}

static void sub_080BE284(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080BDA00);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~2;
}

static bool8 sub_080BE2A8(struct Unk_080C4EDC* arg0) {
    sub_08073D2C(&arg0->base);
    arg0->base.flags |= 0x1000;
    return TRUE;
}

static bool8 sub_080BE2C4(struct Unk_080C4EDC* arg0) {
    arg0->base.sprite.variant = 10;
    arg0->unk88 = 1;
    arg0->base.flags &= ~0x200;
    arg0->base.flags &= ~0x100;
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    return FALSE;
}

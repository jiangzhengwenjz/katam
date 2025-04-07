#include "roly_poly.h"
#include "kirby.h"
#include "task.h"
#include "random.h"

static void sub_080ACDA4(struct Object2*);
void sub_080ACEC0(struct Object2*);
void sub_080ACF68(struct Object2*);

void sub_080AD068(struct Object2*);
void sub_080AD5F4(struct Object2*);

void* CreateRolyPoly(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2* tmp = TaskGetStructPtr(task);
    struct Object2* rolypoly = tmp;

    InitObject(rolypoly, arg0, arg1);
    if (rolypoly->base.x > rolypoly->kirby3->base.base.base.x) {
        rolypoly->base.flags |= 1;
    }
    else {
        rolypoly->base.flags &= ~1;
    }
    sub_0803E2B0(&rolypoly->base, -5, -4, 5, 7);
    sub_0803E308(&rolypoly->base, -6, -5, 6, 9);
    ObjectInitSprite(rolypoly);
    gUnk_08351648[rolypoly->type].unk10(rolypoly);
    rolypoly->unk9E = 0;
    rolypoly->unk7C = sub_080ACDA4;
    return rolypoly;
}

static void sub_080ACDA4(struct Object2* arg0) {
    u8 oldUnk9D;
    u8 newUnk9D = 0;

    if (!Macro_0810B1F4(&arg0->base)) {
        if ((arg0->base.counter & 0x1f) == 0x1f) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }

        switch (arg0->unk83) {
            case 0:
                if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                    arg0->base.flags |= 1;
                }
                else {
                    arg0->base.flags &= ~1;
                }
                
                if (arg0->unk9E > 0x3c) {
                    newUnk9D |= 2;
                }
                break;
            
            case 2:
                if ((arg0->base.counter & 0xf) == 0xf && abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x4fff) {
                    gRngVal = 0x196225 * gRngVal + 0x3c6ef35f;
                    if (!((gRngVal >> 0x10) & 3)) {
                        newUnk9D |= 1;
                    }
                }
                break;
            
            case 3:
                if (arg0->unk9E <= 0x1d) {
                    newUnk9D = 1;
                }
                break;
        }

        oldUnk9D = arg0->unk9D;
        arg0->unk9D = newUnk9D;
        arg0->unk9C = newUnk9D & ~oldUnk9D;
        arg0->unk9E++;
    }
}

// ASM Comment: Are the following functions really called?

void sub_080ACEC0(struct Object2* arg0) {
    arg0->base.flags |= 0x4;
    
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

    if (arg0->unk9D & (0x20 | 0x10)) {
        if (arg0->unk9D & 0x20) {
            arg0->base.flags |= 1;
        }
        else if (arg0->unk9D & 0x10) {
            arg0->base.flags &= ~1;
        }
    }

    if (arg0->object->subtype1 && (arg0->unk9C & 1)) {
        sub_080ACF68(arg0);
    }
    else if (arg0->unk9C & 2) {
        sub_080AD5F4(arg0);
    }
    else {
        arg0->base.counter++;
    }
}

void sub_080ACF68(struct Object2* arg0) {
    if (!(arg0->base.unk62 & 4)) return;
    ObjectSetFunc(arg0, 3, sub_080AD068);

    arg0->base.yspeed = 0x200;
    gRngVal = 0x196225 * gRngVal + 0x3c6ef35f;
    if (gRngVal >> 0x10 & 1) {
        arg0->base.yspeed = 0x280;
    }
    arg0->base.xspeed = 0x1d0;
    if (arg0->base.flags & 1) {
        arg0->base.xspeed *= -1;
    }
    arg0->base.flags |= 0x20;

    PlaySfx(&arg0->base, 325);
}
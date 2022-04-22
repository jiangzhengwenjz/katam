#include "bonkers.h"
#include "kirby.h"
#include "code_08002848.h"
#include "code_0800A868.h"
#include "code_080023A4.h"
#include "functions.h"

static void sub_080CF68C(struct Object2*);
static void sub_080CF898(struct Object2*);
static void sub_080CF8F4(struct Object2*);
static void sub_080CF960(struct Object2*);
static void sub_080CFAF4(struct Object2*);
static void sub_080CFC50(struct Object2*);
static void sub_080CFF00(struct Object2*);
static void sub_080D00AC(struct Object2*);
static void sub_080D0180(struct Object2*);
static void sub_080D02E0(struct Object2*);
static void sub_080D0598(struct Object2*);
static void sub_080D062C(struct Object2*);
static void sub_080D078C(struct Object2*);
static void sub_080D08D8(struct Object2*);
static void sub_080D0AA0(struct Object2*);
static void sub_080D0B9C(struct Object2*);
static void sub_080D0D34(struct Object2*);
static void sub_080D0DC0(struct Object2*);
static void sub_080D109C(struct Object2*);
static void sub_080D1394(struct Object2*);
static void sub_080D140C(struct Object2*);
static void sub_080D1488(struct Object2*);
static void sub_080D14AC(struct Object2*);
static void sub_080D14C8(struct Object2*);
static void sub_080D14F8(struct Object2*);
static void sub_080D1558(struct Object2*);
static void sub_080D15B4(struct Object2*);
static void sub_080D15F8(struct Object2*);
static void sub_080D163C(struct Object2*);

void *CreateBonkers(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.unkC |= 1;
    obj->base.flags |= 0x2000000;
    obj->base.flags |= 0x200;
    obj->base.flags |= 0x200000;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    obj->base.unk5C &= ~7;
    obj->base.unk5C |= 3;
    obj->base.unk5C |= 0xa0;
    sub_0803E2B0(&obj->base, -10, -22, 16, 10);
    sub_0803E308(&obj->base, -12, -24, 20, 10);
    ObjectInitSprite(obj);
    obj->base.unk10.unk14 = 0x6c0;
    obj->unk9E = 0;
    obj->unk7C = sub_0809EF88;
    sub_080D1488(obj);
    return obj;
}

static void sub_080CF68C(struct Object2 *arg0) {
    struct Object5* obj5;
    struct Kirby* kirby = sub_0803D368(&arg0->base);
    arg0->kirby3 = kirby;
    if (!(kirby->base.base.base.unkC & 0x8000)) {
        if (arg0->base.roomId == kirby->base.base.base.roomId) {
            if (arg0->base.x > kirby->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
            if (sub_08039430(&arg0->kirby3->base.base, arg0->object->x * 0x100, arg0->object->y * 0x100, arg0->object->unk1A, arg0->object->unk1C, arg0->object->unk1E, arg0->object->unk20)) {
                Macro_081003EC(arg0, &arg0->kirby3->base.base.base);
                arg0->base.flags &= ~0x200;
                sub_080CF898(arg0);
                arg0->base.counter = 0x5a;
                Macro_08100F18(arg0);
            }
        }
    }
}

static void sub_080CF898(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080D14AC);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.counter = 0x1e;
    if (arg0->unk80 <= (gUnk_08351530[1][gUnk_0203AD30 - 1] >> 1)) {
        arg0->base.counter = 0xf;
    }
    arg0->unk85 = 0;
}

static void sub_080CF8F4(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 2, sub_080CF960);
    if (arg0->subtype != 0) {
        arg0->base.xspeed = -0xc0;
    }
    else {
        arg0->base.xspeed = -0x80;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    arg0->base.counter = Rand16() % 2;
}

static void sub_080CF960(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    ObjXSomething(arg0);
    if (!(arg0->base.unk1 & 7)) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
    }
    if (arg0->base.flags & 2) {
        if (arg0->base.counter == 0) {
            sub_080D14C8(arg0);
            return;
        }
        else {
            arg0->base.counter--;
        }
    }
    if (arg0->base.unk62 & 2) {
        arg0->base.xspeed = 0;
    }
}

static void sub_080CFAF4(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    ObjXSomething(arg0);
    if (arg0->base.unk1 > 0xc) {
        arg0->base.xspeed = 0;
    }
    
    if (arg0->base.flags & 2) {
        sub_080CFC50(arg0);
    }
    else if (arg0->base.unk62 & 2) {
        arg0->base.xspeed = 0;
    }
}

static void sub_080CFC50(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 4, sub_080CFF00);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    if (RandLessThan3()) {
        if (arg0->base.flags & 1) {
            arg0->unkA0 = (arg0->kirby3->base.base.base.x >> 8) + 0x20;
        }
        else {
            arg0->unkA0 = (arg0->kirby3->base.base.base.x >> 8) - 0x20;
        }
    }
    else {
        arg0->unkA0 = arg0->base.x >> 8;
        for (;;) {
            const u32* r0;
            if (arg0->base.flags & 1) {
                arg0->unkA0 -= 0x10;
            }
            else {
                arg0->unkA0 += 0x10;
            }

            if ((arg0->unkA0 >= arg0->unkA8) || (arg0->unkA0 <= arg0->unkA4)) {
                if (arg0->base.flags & 1) {
                    arg0->unkA0 += 0x20;
                }
                else {
                    arg0->unkA0 -= 0x20;
                }
                break;
            }

            r0 = gUnk_082D88B8;
            if (r0[sub_080023E4(arg0->base.unk56, arg0->unkA0 >> 4, arg0->base.y >> 0xc)] & 0x200) {
                if (arg0->base.flags & 1) {
                    arg0->unkA0 += 0x30;
                }
                else {
                    arg0->unkA0 -= 0x30;
                }
                break;
            }
        }
    }
    if (arg0->unk80 <= (gUnk_08351530[1][gUnk_0203AD30 - 1] >> 1)) {
        if (Rand16() % 2) {
            arg0->base.xspeed = 0x200;
        }
        else {
            arg0->base.xspeed = 0x180;
        }
    }
    else {
        if (arg0->subtype != 0) {
            arg0->base.xspeed = 0x200;
        }
        else {
            arg0->base.xspeed = 0x180;
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    PlaySfx(&arg0->base, 0x163);
}

void sub_080CFF00(struct Object2 *arg0) {
    ObjXSomething(arg0);
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        if (arg0->subtype != 0) {
            sub_08089864(&arg0->base, -0x10, 8, arg0->base.flags);
        }
        else {
            arg0->base.counter ^= 1;
            if (arg0->base.counter != 0) {
                sub_08089864(&arg0->base, -0x10, 8, arg0->base.flags);
            }
        }
    }
    if (arg0->base.x >= arg0->unkA0 * 0x100) {
        if (arg0->base.xspeed > 0) {
            sub_080D1558(arg0);
            return;
        }
        else if (arg0->base.x > arg0->unkA0 * 0x100) {
            goto label;
        }
    }
    if (arg0->base.xspeed < 0) {
        sub_080D1558(arg0);
        return;
    }
label:
    if (arg0->base.unk62 & 1) {
        sub_080D00AC(arg0);
    }
}

static void sub_080D00AC(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 5, sub_080D0180);
    arg0->base.xspeed = -0x100;
    arg0->base.yspeed = 0x300;
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    sub_0806FE64(2, &arg0->base);
    PlaySfx(&arg0->base, 0x164);
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x40;
}

static void sub_080D0180(struct Object2 *arg0) {
    if (arg0->unk83 == 5) {
        arg0->base.yspeed -= 0x2a;
        if (arg0->base.yspeed < -0x580) {
            arg0->base.yspeed = -0x580;
        }
        if (arg0->base.unk62 & 4) {
            PlaySfx(&arg0->base, 0x164);
            sub_0806FE64(1, &arg0->base);
            arg0->base.flags |= 0x40;
            arg0->unk83 = 6;
            arg0->base.flags &= ~0x40;
        }
    }
    else {
        arg0->base.xspeed = 0;
        if ((arg0->unk9E & 3) <= 1) {
            arg0->base.yspeed = 0x100;
        }
        else {
            arg0->base.yspeed = -0x100;
        }
        if (arg0->unk9E > 0x27) {
            arg0->base.flags &= ~0x40;
            if (Rand16() % 2) {
                sub_080D14F8(arg0);
            }
            else {
                sub_080D0598(arg0);
            }
        }
        else {
            arg0->unk9E++;
        }
    }
}

static void sub_080D02E0(struct Object2 *arg0) {
    ObjXSomething(arg0);
    arg0->base.yspeed -= 0x58;
    if (arg0->base.yspeed < -0x580) {
        arg0->base.yspeed = -0x580;
    }
    if (arg0->unk83 == 8) {
        if (++arg0->unk9E > 7) {
            if (arg0->subtype != 0) {
                arg0->base.xspeed = 0x140;
            }
            else {
                arg0->base.xspeed = 0x100;
            }
            arg0->base.yspeed = 0x600;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
            arg0->unk83 = 9;
            arg0->unk9E = 0;
        }
    }
    else {
        if (arg0->unk83 == 9) {
            if (arg0->base.unk62 & 4) {
                sub_0806FE64(1, &arg0->base);
                sub_08089864(&arg0->base, -0x10, 8, 1);
                sub_08089864(&arg0->base, -0x10, 8, 0);
                arg0->unk83 = 10;
                arg0->base.xspeed = 0;
                PlaySfx(&arg0->base, 0x164);
                arg0->base.flags &= ~0x40;
            }
        }
        else {
            if (++arg0->unk9E > 0x1d) {
                if (arg0->unk9F == 0) {
                    sub_080CF8F4(arg0);
                }
                else {
                    sub_080D0D34(arg0);
                }
                return;
            }
        }
    }
    if (arg0->base.unk62 & 1) {
        arg0->base.xspeed = 0;
    }
}

static void sub_080D0598(struct Object2 *arg0) {
    u8 unk9F = arg0->unk9F;
    ObjectSetFunc(arg0, 8, sub_080D062C);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    if (Rand16() % 2) {
        arg0->base.counter = 1;
    }
    else {
        arg0->base.counter = 3;
    }
    arg0->unk9F = unk9F;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x40;
}

static void sub_080D062C(struct Object2 *arg0) {
    arg0->base.yspeed -= 0x58;
    if (arg0->base.yspeed < -0x580) {
        arg0->base.yspeed = -0x580;
    }
    if (arg0->unk83 == 8) {
        if (++arg0->unk9E > 7) {
            arg0->base.yspeed = 0x580;
            arg0->unk83 = 9;
            arg0->unk9E = 0;
        }
    }
    else {
        if (arg0->unk83 == 9) {
            if (arg0->base.unk62 & 4) {
                sub_0806FE64(1, &arg0->base);
                sub_08089864(&arg0->base, -0x10, 8, 1);
                sub_08089864(&arg0->base, -0x10, 8, 0);
                PlaySfx(&arg0->base, 0x164);
                if (--arg0->base.counter == 0) {
                    arg0->unk83 = 10;
                }
                else {
                    arg0->unk83 = 8;
                }
            }
        }
        else {
            if (++arg0->unk9E > 0x1d) {
                arg0->base.flags &= ~0x40;
                if (arg0->unk9F == 0) {
                    sub_080CF8F4(arg0);
                }
                else {
                    sub_080D0D34(arg0);
                }
            }
        }
    }
}

static void sub_080D078C(struct Object2 *arg0) {
    if (arg0->base.unk1 == 0x12) {
        sub_0806FE64(1, &arg0->base);
        sub_080A8C28(arg0, 0x28, 8);
        PlaySfx(&arg0->base, 0x16c);
    }
    if (arg0->base.flags & 2) {
        if (Rand16() % 4) {
            if (Rand16() % 2) {
                u8 unk9F = arg0->unk9F;
                ObjectSetFunc(arg0, 8, sub_080D02E0);
                arg0->kirby3 = sub_0803D368(&arg0->base);
                if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                    arg0->base.flags |= 1;
                }
                else {
                    arg0->base.flags &= ~1;
                }
                arg0->base.xspeed = 0;
                arg0->base.yspeed = 0;
                arg0->unk9F = unk9F;
                arg0->base.flags &= ~0x20;
                arg0->base.flags |= 0x40;
            }
            else {
                sub_080D0598(arg0);
            }
        }
        else {
            sub_080D15F8(arg0);
        }
    }
}

static void sub_080D08D8(struct Object2 *arg0) {
    if (arg0->base.unk1 == 0x12) {
        sub_0806FE64(1, &arg0->base);
        sub_080A8C28(arg0, 0x28, 8);
        PlaySfx(&arg0->base, 0x16c);
    }
    else {
        if (arg0->base.unk1 == 0x26 || arg0->base.unk1 == 0x3a) {
            sub_0806FE64(1, &arg0->base);
            PlaySfx(&arg0->base, 0x16c);
        }
    }
    if (arg0->base.flags & 2) {
        if (Rand16() % 2) {
            u8 unk9F = arg0->unk9F;
            ObjectSetFunc(arg0, 8, sub_080D02E0);
            arg0->kirby3 = sub_0803D368(&arg0->base);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
            arg0->base.xspeed = 0;
            arg0->base.yspeed = 0;
            arg0->unk9F = unk9F;
            arg0->base.flags &= ~0x20;
            arg0->base.flags |= 0x40;
        }
        else {
            sub_080D0598(arg0);
        }
    }
}

static void sub_080D0AA0(struct Object2 *arg0) {
    arg0->base.yspeed -= 0x2a;
    if (arg0->base.yspeed < -0x580) {
        arg0->base.yspeed = -0x580;
    }
    if (arg0->base.unk1 == 8) {
        arg0->base.yspeed = 0x4a0;
    }
    if (arg0->base.flags & 2) {
        arg0->unk83 = 0xd;
    }
    if (arg0->unk83 == 0xd) {
        if (arg0->base.unk62 & 4) {
            sub_0806FE64(1, &arg0->base);
            sub_080A8C28(arg0, 0x28, 8);
            PlaySfx(&arg0->base, 0x164);
            arg0->unk83 = 0xe;
            arg0->unk78 = sub_080D0B9C;
        }
    }
}

static void sub_080D0B9C(struct Object2 *arg0) {
    arg0->base.yspeed -= 0x2a;
    if (arg0->base.yspeed < -0x580) {
        arg0->base.yspeed = -0x580;
    }
    if (arg0->unk83 == 0xe) {
        if (arg0->base.unk1 == 8) {
            arg0->base.yspeed = 0x280;
        }
        if (arg0->base.flags & 2) {
            arg0->unk83 = 0xf;
        }
    }
    else {
        if (arg0->unk83 == 0xf) {
            if (arg0->base.unk62 & 4) {
                arg0->unk83 = 0x10;
                PlaySfx(&arg0->base, 0x165);
            }
        }
        else {
            if (arg0->unk83 == 0x10) {
                if (++arg0->base.counter > 0xf) {
                    arg0->base.flags &= ~0x40;
                    if (Rand16() % 2) {
                        u8 unk9F = arg0->unk9F;
                        ObjectSetFunc(arg0, 8, sub_080D02E0);
                        arg0->kirby3 = sub_0803D368(&arg0->base);
                        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                            arg0->base.flags |= 1;
                        }
                        else {
                            arg0->base.flags &= ~1;
                        }
                        arg0->base.xspeed = 0;
                        arg0->base.yspeed = 0;
                        arg0->unk9F = unk9F;
                            arg0->base.flags &= ~0x20;
                            arg0->base.flags |= 0x40;
                    }
                    else {
                        sub_080D0598(arg0);
                    }
                }
            }
        }
    }
}

static void sub_080D0D34(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0x12, sub_080D0DC0);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    if (arg0->object->subtype1 != 0) {
        arg0->unk83 = 0x13;
    }
    else {
        arg0->base.xspeed = -0x180;
        arg0->base.yspeed = 0x280;
        if (arg0->base.flags & 1) {
            arg0->base.xspeed = -arg0->base.xspeed;
        }
    }
    arg0->unk9F = 0;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x40;
}

static void sub_080D0DC0(struct Object2 *arg0) {
    ObjXSomething(arg0);
    arg0->base.yspeed -= 0x38;
    if (arg0->base.yspeed < -0x580) {
        arg0->base.yspeed = -0x580;
    }
    if (arg0->unk83 == 0x12) {
        if (arg0->base.unk62 & 4) {
            arg0->base.xspeed = 0;
            arg0->base.yspeed = 0;
            sub_0806FE64(1, &arg0->base);
            sub_08089864(&arg0->base, -0x10, 8, 1);
            sub_08089864(&arg0->base, -0x10, 8, 0);
            PlaySfx(&arg0->base, 0x165);
            arg0->unk83 = 0x13;
            arg0->base.flags &= ~0x40;
        }
    }
    else {
        if (arg0->base.unk1 == 0x44) {
            sub_080D109C(arg0);
        }
        if (arg0->base.flags & 2) {
            if (Rand16() % 2) {
                u8 unk9F = arg0->unk9F;
                ObjectSetFunc(arg0, 8, sub_080D02E0);
                arg0->kirby3 = sub_0803D368(&arg0->base);
                if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                    arg0->base.flags |= 1;
                }
                else {
                    arg0->base.flags &= ~1;
                }
                arg0->base.xspeed = 0;
                arg0->base.yspeed = 0;
                arg0->unk9F = unk9F;
                arg0->base.flags &= ~0x20;
                arg0->base.flags |= 0x40;
            }
            else {
                sub_080D0598(arg0);
            }
            return;
        }
    }
    if (arg0->base.unk62 & 3) {
        arg0->base.xspeed = 0;
    }
}

static void sub_080D109C(struct Object2 *arg0) {
    struct Object2* obj;
    u32 x, y;
    u8 unk56;
    if (arg0->base.flags & 1) {
        x = (arg0->base.x >> 8) - 0x18;
    }
    else {
        x = (arg0->base.x >> 8) + 0x18;
    }
    y = arg0->base.y >> 8;
    if (RandLessThan3()) {
        obj = CreateObjTemplateAndObj(arg0->base.unk56, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_BONKERS_NUT_SMALL, arg0->base.flags & 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }
    else {
        obj = CreateObjTemplateAndObj(arg0->base.unk56, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_BONKERS_NUT_LARGE, arg0->base.flags & 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }
    obj->base.parent = arg0;
}

void *CreateBonkersNut(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x10000;
    obj->base.unkC |= 2;
    sub_0803E2B0(&obj->base, -5, -7, 5, 4);
    sub_0803E308(&obj->base, -6, -8, 6, 6);
    if (obj->type == OBJ_BONKERS_NUT_LARGE) {
        obj->base.unk5C &= ~7;
        obj->base.unk5C |= 3;
        sub_0803E2B0(&obj->base, -8, -8, 8, 6);
        sub_0803E308(&obj->base, -10, -10, 10, 8);
    }
    ObjectInitSprite(obj);
    obj->unk9E = 0;
    obj->unk7C = sub_0809F840;
    sub_080D1394(obj);
    PlaySfx(&obj->base, 0x168);
    return obj;
}

static void sub_080D1394(struct Object2 *arg0) {
    if (arg0->type == OBJ_BONKERS_NUT_LARGE) {
        ObjectSetFunc(arg0, 1, sub_080D140C);
    }
    else {
        ObjectSetFunc(arg0, 0, sub_080D140C);
    }
    if (arg0->object->subtype1 != 0) {
        arg0->base.flags |= 1;
    }
    arg0->base.xspeed = 0x180;
    arg0->base.yspeed = 0x1e0;
    if (arg0->type == OBJ_BONKERS_NUT_LARGE) {
        arg0->base.xspeed >>= 1;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080D140C(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 4) {
        if (arg0->base.counter == 0) {
            arg0->base.counter = 1;
            arg0->base.xspeed = 0x120;
            arg0->base.yspeed = 0xf0;
            if (arg0->type == OBJ_BONKERS_NUT_LARGE) {
                arg0->base.xspeed >>= 1;
            }
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
        else {
            sub_0809DA30(arg0);
            arg0->base.flags |= 0x1000;
            return;
        }
    }
    if (arg0->base.unk62 & 1) {
        sub_0809DA30(arg0);
        arg0->base.flags |= 0x1000;
    }
}

static void sub_080D1488(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 0, sub_080CF68C);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080D14AC(struct Object2 *arg0) {
    if (--arg0->base.counter == 0) {
        sub_080CF8F4(arg0);
    }
}

static void sub_080D14C8(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 7, sub_080CFAF4);
    arg0->base.xspeed = -0x80;
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = 0x80;
    }
}

static void sub_080D14F8(struct Object2 *arg0) {
    u8 unk9F = arg0->unk9F;
    ObjectSetFunc(arg0, 8, sub_080D02E0);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->unk9F = unk9F;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x40;
}

static void sub_080D1558(struct Object2 *arg0) {
    arg0->kirby3 = sub_0803D368(&arg0->base);
    if (arg0->unk85 == 2) {
        sub_080D15F8(arg0);
    }
    else {
        if ((arg0->base.y - 0x1800) > arg0->kirby3->base.base.base.y) {
            sub_080D163C(arg0);
        }
        else {
            sub_080D15B4(arg0);
        }
    }
    if (++arg0->unk85 > 2) {
        arg0->unk85 = 0;
    }
}

static void sub_080D15B4(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 11, sub_080D078C);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080D15F8(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 17, sub_080D08D8);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080D163C(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 12, sub_080D0AA0);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x40;
}

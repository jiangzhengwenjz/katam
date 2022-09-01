#include "wheelie.h"

#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "object.h"
#include "task.h"

static void sub_080BC594(struct Object2*);
static void sub_080BC604(struct Object2*);
static void sub_080BC720(struct Object2*);
static void sub_080BC790(struct Object2*);
static void sub_080BC878(struct Object2*);
static void sub_080BC928(struct Object2*);
static void sub_080BC9B0(struct Object2*);
static void sub_080BCA64(struct Object2*);
static void sub_080BCAC8(struct Object2*);
static void sub_080BCB78(struct Object2*);
static void sub_080BCB94(struct Object2*);
static void sub_080BCBB8(struct Object2*);

void* CreateWheelie(struct Object* arg0, u8 arg1) {
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
    sub_0803E2B0(&obj->base, -5, -6, 5, 5);
    sub_0803E308(&obj->base, -6, -7, 6, 7);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;    
}

static void sub_080BC594(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BC604);
    arg0->base.xspeed = 0x100;
    if (arg0->object->subtype1 == 1) {
        if (arg0->subtype != 0) {
            arg0->base.xspeed = 0x200;
        }
        else {
            arg0->base.xspeed = 0x180;
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed  = -arg0->base.xspeed;
    }
    if (arg0->object->subtype1 > 1) {
        arg0->base.xspeed = 0;
    }
    arg0->base.counter = 0x1e;
}

static void sub_080BC604(struct Object2* arg0) {
    bool8 r5;
    arg0->base.flags |= 4;
    if (arg0->object->subtype1 > 1) {
        arg0->unk83 = 1;
    }
    else {
        if (arg0->base.flags & 2 && ++arg0->base.counter > 3) {
            sub_080BC720(arg0);
        }
        else {
            if (arg0->base.unk62 & 1) {
                sub_080BC9B0(arg0);
            }
            else if (!(arg0->base.unk62 & 4)) {
                sub_080BCBB8(arg0);
            }
            else {
                if (arg0->object->subtype1 == 0) {
                    if (--arg0->base.counter == 0) {
                        r5 = FALSE;
                        if (arg0->subtype != 0) {
                            arg0->base.counter = 0xf;
                        }
                        else {
                            arg0->base.counter = 0x1e;
                        }
                        arg0->kirby3 = sub_0803D368(&arg0->base);
                        if (arg0->kirby3->base.base.base.x > arg0->base.x) {
                            if (arg0->base.flags & 1) {
                                r5 = TRUE;
                            }
                        }
                        else {
                            if (!(arg0->base.flags & 1)) {
                                r5 = TRUE;
                            }
                        }
                        if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x1fff) {
                            r5 = TRUE;
                        }
                        if (r5) {
                            if (Rand16() & 1) {
                                sub_080BCB78(arg0);
                            }
                        }
                    }
                }
            }
        }
    }
}

static void sub_080BC720(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080BC790);
    if (arg0->subtype != 0) {
        arg0->base.xspeed = 0x280;
        if (arg0->object->subtype1 != 0) {
            arg0->base.xspeed = 0x380;
        }
    }
    else {
        arg0->base.xspeed = 0x200;
        if (arg0->object->subtype1 != 0) {
            arg0->base.xspeed = 0x300;
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    arg0->base.counter = 0x1e;
}

static void sub_080BC790(struct Object2* arg0) {
    bool8 r5;
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        sub_080BC9B0(arg0);
    }
    else if (!(arg0->base.unk62 & 4)) {
        sub_080BCBB8(arg0);
    }
    else {
        if (arg0->object->subtype1 == 0) {
            if (--arg0->base.counter == 0) {
                r5 = FALSE;
                if (arg0->subtype != 0) {
                    arg0->base.counter = 0xf;
                }
                else {
                    arg0->base.counter = 0x1e;
                }
                arg0->kirby3 = sub_0803D368(&arg0->base);
                if (arg0->kirby3->base.base.base.x > arg0->base.x) {
                    if (arg0->base.flags & 1) {
                        r5 = TRUE;
                    }
                }
                else {
                    if (!(arg0->base.flags & 1)) {
                        r5 = TRUE;
                    }
                }
                if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x1fff) {
                    r5 = TRUE;
                }
                if (r5) {
                    if (Rand16() & 1) {
                        sub_080BCB78(arg0);
                    }
                }
            }
        }
    }
}

static void sub_080BC878(struct Object2* arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xc;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xc;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        if (++arg0->base.counter > 5 && arg0->base.xspeed == 0) {
            sub_080BC928(arg0);
            return;
        }
        else {
            sub_080897A0(&arg0->base);
        }
    }
    if (arg0->base.unk62 & 1) {
        arg0->base.xspeed = 0;
    }
    if (arg0->base.unk62 & 4) {
        if (sub_0809D998(arg0) != 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed = 0;
    }
}

static void sub_080BC928(struct Object2* arg0) {
    ObjectSetFunc(arg0, 3, sub_080BCB94);
    arg0->base.flags ^= 1;
    switch (RandLessThan3()) {
    case 0:
        arg0->base.counter = 5;
        break;
    case 1:
        arg0->base.counter = 0x23;
        break;
    case 2:
        if (arg0->subtype != 0) {
            arg0->base.counter = 0xf;
        }
        else {
            arg0->base.counter = 0x41;
        }
        break;
    }
}

static void sub_080BC9B0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 4, sub_080BCA64);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0x300;
    sub_0806FE64(1, &arg0->base);
    PlaySfx(&arg0->base, 0x144);
}

static void sub_080BCA64(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.yspeed -= 0x10;
    if (arg0->base.yspeed < -0x300) {
        arg0->base.yspeed = -0x300;
    }
    if (arg0->base.unk62 & 4) {
        if (arg0->unk83 == 5 && arg0->base.flags & 2) {
            arg0->base.flags ^= 1;
            sub_080BC720(arg0);
        }
        else {
            arg0->unk83 = 5;
        }
    }
}

static void sub_080BCAC8(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.yspeed -= 0x10;
    if (arg0->base.yspeed < -0x300) {
        arg0->base.yspeed = -0x300;
    }
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.unk62 & 4) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
        if (arg0->kirby3->base.base.base.x > arg0->base.x) {
            if (arg0->base.flags & 1) {
                ObjectSetFunc(arg0, 2, sub_080BC878);
                sub_080897A0(&arg0->base);
            }
            else {
                sub_080BC720(arg0);
            }
        }
        else {
            if (arg0->base.flags & 1) {
                sub_080BC720(arg0);
            }
            else {
                ObjectSetFunc(arg0, 2, sub_080BC878);
                sub_080897A0(&arg0->base);
            }
        }
    }
}

static void sub_080BCB78(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080BC878);
    sub_080897A0(&arg0->base);
}

static void sub_080BCB94(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (--arg0->base.counter == 0) {
        sub_080BC720(arg0);
    }
}

static void sub_080BCBB8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 6, sub_080BCAC8);
}

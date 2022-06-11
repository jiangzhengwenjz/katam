#include "chip.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "task.h"

static void sub_080AABBC(struct Object2*);
static void sub_080AAD14(struct Object2*);
static void sub_080AAE80(struct Object2*);
static void sub_080AB04C(struct Object2*);
static void sub_080AB374(struct Object2*);
static void sub_080AB428(struct Object2*);
static void sub_080AB4A4(struct Object2*);
static void sub_080AB4F8(struct Object2*);
static void sub_080AB5F8(struct Object2*);
static void sub_080AB720(struct Object2*);
static void sub_080AB734(struct Object2*);
static void sub_080AB754(struct Object2*);
static u8 sub_080AB78C(struct Object2*);

void* CreateChip(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
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
    gUnk_08351648[obj->type].unk10(obj);
    switch (arg0->subtype1) {
    case 0:
    default:
        obj->unk9E = 0;
        obj->unk7C = sub_080AAE80;
        break;
    case 1:
        obj->unkA0 = 0;
        obj->unk9E = 0;
        obj->unk7C = sub_080AB04C;
        break;
    case 2:
        obj->unk9E = 0;
        obj->unk7C = sub_080AAD14;
        break;
    case 3:
        obj->unk9E = 0;
        obj->unk7C = sub_080AABBC;
        break;
    }
    return obj;
}

static void sub_080AABBC(struct Object2* arg0) {
    u8 r5 = 0, r0;
    if (!Macro_0810B1F4(&arg0->base)) {
        if ((arg0->unk9E & 0x1f) == 0x1f) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }
        switch (arg0->unk83) {
        case 0:
            if (arg0->unk9E > 0x1e) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    r5 = sub_080AB78C(arg0);
                }
            }
            break;
        case 1:
            r5 |= 0x80;
            if (arg0->unk9E > 8) {
                r5 |= 1;
            }
            break;
        case 6:
            if (arg0->unk9E == 8) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    r5 = sub_080AB78C(arg0);
                }
            }
            break;
        case 2:
        case 3:
            if (arg0->base.flags & 1) {
                r5 |= 0x20;
            }
            else {
                r5 |= 0x10;
            }
            r5 |= 1;
            break;
        }
        r0 = arg0->unk9D;
        arg0->unk9D = r5;
        arg0->unk9C = r5 & ~r0;
        arg0->unk9E++;
    }
}

static void sub_080AAD14(struct Object2* arg0) {
    u8 r5 = 0, r0;
    if (!Macro_0810B1F4(&arg0->base)) {
        if (arg0->kirby3->base.base.base.roomId != arg0->base.roomId) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }
        switch (arg0->unk83) {
        case 0:
            if (arg0->unk9E > 0x1e) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    r5 = sub_080AB78C(arg0);
                }
            }
            break;
        case 1:
            r5 |= 0x80;
            if (arg0->unk9E > 8) {
                r5 |= 1;
            }
            break;
        case 6:
            if (arg0->unk9E == 8) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    r5 = sub_080AB78C(arg0);
                }
            }
            break;
        case 2:
        case 3:
            if (arg0->base.flags & 1) {
                r5 |= 0x20;
            }
            else {
                r5 |= 0x10;
            }
            r5 |= 1;
            break;
        }
        r0 = arg0->unk9D;
        arg0->unk9D = r5;
        arg0->unk9C = r5 & ~r0;
        arg0->unk9E++;
    }
}

static void sub_080AAE80(struct Object2* arg0) {
    u8 r5 = 0, r0;
    if (!Macro_0810B1F4(&arg0->base)) {
        if ((arg0->unk9E & 0x1f) == 0x1f) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }
        switch (arg0->unk83) {
        case 0:
            if (arg0->unk9E > 0x1e) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    r5 = sub_080AB78C(arg0);
                    arg0->unk85 = Rand16() & 1;
                }
            }
            break;
        case 1:
            r5 |= 0x80;
            if (arg0->unk9E > 8) {
                r5 |= 1;
            }
            break;
        case 6:
            arg0->unk85 = 0;
            if (arg0->unk9E == 8) {
                if (Rand16() & 1) {
                    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                        arg0->base.flags |= 1;
                    }
                    else {
                        arg0->base.flags &= ~1;
                    }
                    arg0->unk85 = Rand16() & 1;
                    r5 = sub_080AB78C(arg0);
                }
            }
            break;
        case 2:
        case 3:
            if (arg0->unk85 != 0) {
                if (arg0->base.flags & 1) {
                    r5 |= 0x20;
                }
                else {
                    r5 |= 0x10;
                }
            }
            r5 |= 1;
            break;
        }
        r0 = arg0->unk9D;
        arg0->unk9D = r5;
        arg0->unk9C = r5 & ~r0;
        arg0->unk9E++;
    }
}

static void sub_080AB04C(struct Object2* arg0) {
    u8 r5 = 0, r0;
    u16 r2, r1;
    if (!Macro_0810B1F4(&arg0->base)) {
        switch (arg0->unk83) {
        case 0:
            if (arg0->unk9E > 0x1e) {
                if (Rand16() & 1) {
                    r5 = sub_080AB78C(arg0);
                    arg0->unk85 = Rand16() & 1;
                    if (r5 & 0x81) {
                        arg0->unkA0++;
                        switch (arg0->unkA0) {
                        default:
                            if (Rand16() & 1) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        case 1:
                            r1 = Rand16();
                            for (r2 = 0; r2 < 9; r2++) {
                                if (r1 < 0x1999 * (r2 + 1)) break;
                            }
                            if (r2 == 0) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        case 2:
                            if (RandLessThan3() == 0) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        }
                    }
                }
            }
            break;
        case 1:
            r5 |= 0x80;
            if (arg0->unk9E > 8) {
                r5 |= 1;
            }
            break;
        case 6:
            arg0->unk85 = 0;
            if (arg0->unk9E == 8) {
                if (Rand16() & 1) {
                    arg0->unk85 = Rand16() & 1;
                    r5 = sub_080AB78C(arg0);
                    if (r5 & 0x81) {
                        arg0->unkA0++;
                        switch (arg0->unkA0) {
                        default:
                            if (Rand16() & 1) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        case 1:
                            r1 = Rand16();
                            for (r2 = 0; r2 < 9; r2++) {
                                if (r1 < 0x1999 * (r2 + 1)) break;
                            }
                            if (r2 == 0) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        case 2:
                            if (RandLessThan3() == 0) {
                                arg0->base.flags ^= 1;
                                arg0->unkA0 = 0;
                            }
                            break;
                        }
                    }
                }
            }
            break;
        case 2:
        case 3:
            if (arg0->unk85 != 0) {
                if (arg0->base.flags & 1) {
                    r5 |= 0x20;
                }
                else {
                    r5 |= 0x10;
                }
            }
            r5 |= 1;
            break;
        }
        r0 = arg0->unk9D;
        arg0->unk9D = r5;
        arg0->unk9C = r5 & ~r0;
        arg0->unk9E++;
    }
}

static void sub_080AB374(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.counter++;
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 8;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 8;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }

    if (arg0->unk9D & 0x20) {
        arg0->base.flags |= 1;
    }
    else if (arg0->unk9D & 0x10) {
        arg0->base.flags &= ~1;
    }

    if (arg0->unk9D & 1) {
        sub_080AB4F8(arg0);
    }
    else if (arg0->unk9D & 0x30) {
        sub_080AB754(arg0);
    }
    else if (arg0->unk9D & 0x80) {
        sub_080AB734(arg0);
    }
    else {
        if (!(arg0->base.unk62 & 4)) {
            sub_080AB4F8(arg0);
        }
    }
}

static void sub_080AB428(struct Object2* arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 8;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 8;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }
    if (arg0->unk9C & 1) {
        sub_080AB4F8(arg0);
    }
    else {
        if (!(arg0->unk9D & 0x80)) {
            arg0->base.counter++;
        }
        else {
            arg0->base.counter = 0;
        }
        if (arg0->base.counter > 4) {
            ObjectSetFunc(&arg0->base, 0, sub_080AB374);
        }
    }
}

static void sub_080AB4A4(struct Object2* arg0) {
    arg0->base.counter++;
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0x10;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0x10;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }
    if (arg0->base.counter > 8) {
        ObjectSetFunc(&arg0->base, 0, sub_080AB374);
    }
}

static void sub_080AB4F8(struct Object2* arg0) {
    if (arg0->base.unk62 & 4) {
        if (arg0->unk83 == 1) {
            arg0->base.yspeed = 0x380;
            if (arg0->unk9D & 0x40) {
                arg0->base.yspeed = 0x480;
            }
        }
        else {
            arg0->base.yspeed = 0x240;
        }
    }
    ObjectSetFunc(&arg0->base, 2, sub_080AB5F8);
    if (arg0->base.yspeed == 0x480) {
        arg0->unk83 = 3;
    }
    arg0->base.flags |= 0x20;
    PlaySfx(&arg0->base, 0x145);
}

static void sub_080AB5F8(struct Object2* arg0) {
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->unk83 != 3) {
        if (arg0->base.yspeed > 0xb) {
            if (!(arg0->unk9D & 1)) {
                arg0->base.yspeed = 0xb;
            }
        }
    }
    if (arg0->base.yspeed < -0x40) {
        arg0->unk83 = 5;
    }
    else if (arg0->base.yspeed < 0x40) {
        arg0->unk83 = 4;
    }
    if (arg0->unk9D & 0x30) {
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x28;
            if (arg0->base.xspeed < -0x140) {
                arg0->base.xspeed = -0x140;
            }
            else if (arg0->base.xspeed > 0x140) {
                arg0->base.xspeed = 0x140;
            }
        }
        else {
            arg0->base.xspeed += 0x28;
            if (arg0->base.xspeed > 0x140) {
                arg0->base.xspeed = 0x140;
            }
            else if (arg0->base.xspeed < -0x140) {
                arg0->base.xspeed = -0x140;
            }
        }
    }
    else {
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 8;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 8;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
    }
    if (arg0->base.unk62 & 4) {
        arg0->base.flags &= ~0x20;
        ObjectSetFunc(&arg0->base, 6, sub_080AB4A4);
    }
}

static void sub_080AB720(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080AB374);
}

static void sub_080AB734(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 1, sub_080AB428);
    arg0->base.flags &= ~0x20;
}

static void sub_080AB754(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 3, sub_080AB5F8);
    if (arg0->base.unk62 & 4) {
        arg0->base.yspeed = 0x120;
    }
    arg0->base.flags |= 0x20;
}

static u8 sub_080AB78C(struct Object2* arg0) {
    u8 r3 = 0;
    switch (Rand16() & 7) {
    case 0:
    case 1:
    case 2:
    case 3:
        if (arg0->base.flags & 1) {
            r3 = 0x20;
        }
        else {
            r3 = 0x10;
        }
        break;
    case 4:
    case 5:
        r3 = 1;
        break;
    case 6:
    case 7:
        r3 = 0x80;
        break;
    }
    return r3;
}

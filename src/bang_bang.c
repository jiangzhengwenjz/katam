#include "bang_bang.h"

#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "task.h"

static void sub_080C6884(struct Object2*);
static void sub_080C68F8(struct Object2*);
static void sub_080C69E4(struct Object2*);
static void sub_080C6AA0(struct Object2*);
static void sub_080C6B40(struct Object2*);
static void sub_080C6FDC(struct Object2*);
static void sub_080C70D8(struct Object2*);
static void sub_080C7118(struct Object2*);
static void sub_080C713C(struct Object2*);
static void sub_080C7174(struct Object2*);
static void sub_080C71C4(struct Object2*);

void* CreateBangBang(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080C6884(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->object->subtype1 != 2) {
        if (arg0->base.unk62 & 1) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
        }
        if (arg0->base.unk62 & 4) {
            if (sub_0809D998(arg0)) {
                arg0->base.flags ^= 1;
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
        if (--arg0->base.counter == 0) {
            sub_080C7174(arg0);
        }
    }
}

static void sub_080C68F8(struct Object2* arg0) {
    if (--arg0->base.counter == 0) {
        s16 x, y;
        arg0->base.counter = 0x1e;
        arg0->kirby3 = sub_0803D368(&arg0->base);
        x = (arg0->kirby3->base.base.base.x - arg0->base.x) >> 8;
        y = (arg0->kirby3->base.base.base.y - arg0->base.y) >> 8;
        switch (ArcTan2(x, y) >> 12) {
        case 7 ... 8:
            arg0->base.flags |= 1;
            arg0->unk83 = 2;
            break;
        case 9 ... 10:
            arg0->base.flags |= 1;
            arg0->unk83 = 3;
            break;
        case 11 ... 12:
            arg0->base.flags &= ~1;
            arg0->unk83 = 4;
            break;
        case 0:
        case 13 ... 15:
            arg0->base.flags &= ~1;
            arg0->unk83 = 3;
            break;
        }
        if (++arg0->unk9E > 4) {
            sub_080C69E4(arg0);
        }
    }
}

static void sub_080C69E4(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, -1, sub_080C71C4);
    arg0->unk83 += 3;
    arg0->base.xspeed = 0;
    arg0->base.flags &= ~2;
    PlaySfx(&arg0->base, 0x151);
}

static void sub_080C6AA0(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, -1, sub_080C6B40);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    switch (arg0->unk83) {
    case 5:
        arg0->base.xspeed = 0x228;
        arg0->base.yspeed = 0x140;
        break;
    case 6:
        arg0->base.xspeed = 0x1c4;
        arg0->base.yspeed = 0x1c4;
        break;
    case 7:
        arg0->base.xspeed = 0;
        arg0->base.yspeed = 0x280;
        break;
    }
    if (arg0->base.flags & 1) {
         arg0->base.xspeed = - arg0->base.xspeed;
    }
    arg0->base.unkC |= 2;
    arg0->base.unk5C |= 0x80;
    arg0->base.counter = 0xc8;
}

static void sub_080C6B40(struct Object2* arg0) {
    switch (arg0->subtype) {
    case 0:
        if (++arg0->unk9E > 0x1d) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
        }
        if ((arg0->base.y & ~0xfff) > ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed += 0x10;
            if (arg0->base.yspeed > 0x120) {
                arg0->base.yspeed = 0x120;
            }
        }
        else if ((arg0->base.y & ~0xfff) < ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed -= 0x10;
            if (arg0->base.yspeed < -0x120) {
                arg0->base.yspeed = -0x120;
            }
        }
        else {
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed += 4;
                if (arg0->base.yspeed > 0) {
                    arg0->base.yspeed = 0;
                }
            }
            else {
                arg0->base.yspeed -= 4;
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed = 0;
                }
            }
        }
        if ((arg0->base.x & ~0xfff) < ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x10;
            if (arg0->base.xspeed > 0x120) {
                arg0->base.xspeed = 0x120;
            }
            else if (arg0->base.xspeed < -0x120) {
                arg0->base.xspeed = -0x120;
            }
        }
        else if ((arg0->base.x & ~0xfff) > ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x10;
                if (arg0->base.xspeed < -0x120) {
                    arg0->base.xspeed = -0x120;
                }
                else if (arg0->base.xspeed > 0x120) {
                    arg0->base.xspeed = 0x120;
                }
            }
            else {
                arg0->base.xspeed += 0x10;
                if (arg0->base.xspeed > 0x120) {
                    arg0->base.xspeed = 0x120;
                }
                else if (arg0->base.xspeed < -0x120) {
                    arg0->base.xspeed = -0x120;
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 4;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 4;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
        break;
    case 1:
        if (++arg0->unk9E > 0xf) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
        }
        if ((arg0->base.y & ~0xfff) > ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed += 0x20;
            if (arg0->base.yspeed > 0x1c0) {
                arg0->base.yspeed = 0x1c0;
            }
        }
        else if ((arg0->base.y & ~0xfff) < ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed -= 0x20;
            if (arg0->base.yspeed < -0x1c0) {
                arg0->base.yspeed = -0x1c0;
            }
        }
        else {
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed += 4;
                if (arg0->base.yspeed > 0) {
                    arg0->base.yspeed = 0;
                }
            }
            else {
                arg0->base.yspeed -= 4;
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed = 0;
                }
            }
        }
        if ((arg0->base.x & ~0xfff) < ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x20;
            if (arg0->base.xspeed > 0x1c0) {
                arg0->base.xspeed = 0x1c0;
            }
            else if (arg0->base.xspeed < -0x1c0) {
                arg0->base.xspeed = -0x1c0;
            }
        }
        else if ((arg0->base.x & ~0xfff) > ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x20;
                if (arg0->base.xspeed < -0x1c0) {
                    arg0->base.xspeed = -0x1c0;
                }
                else if (arg0->base.xspeed > 0x1c0) {
                    arg0->base.xspeed = 0x1c0;
                }
            }
            else {
                arg0->base.xspeed += 0x20;
                if (arg0->base.xspeed > 0x1c0) {
                    arg0->base.xspeed = 0x1c0;
                }
                else if (arg0->base.xspeed < -0x1c0) {
                    arg0->base.xspeed = -0x1c0;
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 4;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 4;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
        break;
    default:
        if (++arg0->unk9E > 0xf) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
        }
        if ((arg0->base.y & ~0xfff) > ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed += 0x20;
            if (arg0->base.yspeed > 0x200) {
                arg0->base.yspeed = 0x200;
            }
        }
        else if ((arg0->base.y & ~0xfff) < ((arg0->unkA2 << 8) & ~0xfff)) {
            arg0->base.yspeed -= 0x20;
            if (arg0->base.yspeed < -0x200) {
                arg0->base.yspeed = -0x200;
            }
        }
        else {
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed += 4;
                if (arg0->base.yspeed > 0) {
                    arg0->base.yspeed = 0;
                }
            }
            else {
                arg0->base.yspeed -= 4;
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed = 0;
                }
            }
        }
        if ((arg0->base.x & ~0xfff) < ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x20;
            if (arg0->base.xspeed > 0x200) {
                arg0->base.xspeed = 0x200;
            }
            else if (arg0->base.xspeed < -0x200) {
                arg0->base.xspeed = -0x200;
            }
        }
        else if ((arg0->base.x & ~0xfff) > ((arg0->unkA0 << 8) & ~0xfff)) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x20;
                if (arg0->base.xspeed < -0x200) {
                    arg0->base.xspeed = -0x200;
                }
                else if (arg0->base.xspeed > 0x200) {
                    arg0->base.xspeed = 0x200;
                }
            }
            else {
                arg0->base.xspeed += 0x20;
                if (arg0->base.xspeed > 0x200) {
                    arg0->base.xspeed = 0x200;
                }
                else if (arg0->base.xspeed < -0x200) {
                    arg0->base.xspeed = -0x200;
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 4;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 4;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
        break;
    }
    sub_080C6FDC(arg0);
    if (--arg0->base.counter == 0) {
        sub_0809DA30(arg0);
        arg0->base.flags |= 0x1000;
    }
    if (arg0->base.unk62 != 0 || arg0->base.flags & 0x40000) {
        sub_0809DA30(arg0);
        arg0->base.flags |= 0x1000;
    }
}

static void sub_080C6FDC(struct Object2* arg0) {
    u8 r3;
    if (arg0->base.counter <= 0x59) {
        if (arg0->base.counter & 4) {
            r3 = 8;
        }
        else {
            r3 = 0x10;
        }
    }
    else {
        r3 = 8;
    }
    if (!(arg0->base.flags & 1)) {
        if (arg0->base.xspeed > 0x80) {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 3;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 5;
            }
            else {
                arg0->unk83 = r3 + 4;
            }
        }
        else if (arg0->base.xspeed < -0x80) {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 1;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 7;
            }
            else {
                arg0->unk83 = r3;
            }
        }
        else {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 2;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 6;
            }
        }
    }
    else {
        if (arg0->base.xspeed > 0x80) {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 1;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 7;
            }
            else {
                arg0->unk83 = r3;
            }
        }
        else if (arg0->base.xspeed < -0x80) {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 3;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 5;
            }
            else {
                arg0->unk83 = r3 + 4;
            }
        }
        else {
            if (arg0->base.yspeed > 0x80) {
                arg0->unk83 = r3 + 2;
            }
            else if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = r3 + 6;
            }
        }
    }
}

static void sub_080C70D8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080C7118);
    if (arg0->object->subtype1 == 0) {
        sub_080C713C(arg0);
    }
    else {
        arg0->base.xspeed = 0;
        arg0->base.counter = 0xc8;
        arg0->unk85 = 0;
    }
}

static void sub_080C7118(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (--arg0->base.counter == 0) {
        sub_080C7174(arg0);
    }
}

static void sub_080C713C(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 1, sub_080C6884);
    arg0->base.xspeed = 0x40;
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    arg0->base.counter = 0xc8;
    arg0->unk85 = 0;
}

static void sub_080C7174(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 2, sub_080C68F8);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.counter = 0x1e;
    arg0->unk85 = 0;
}

static void sub_080C71C4(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        sub_080C6AA0(arg0);
    }
}

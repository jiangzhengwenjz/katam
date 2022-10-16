#include "blockin.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"

static void sub_080A4A7C(struct Object2*);
static void sub_080A4A08(struct Object2*);

void* CreateBlockin(struct Object* arg0, u8 arg1) {
    struct Task *task;
    struct Object2 *obj;
    task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj = TaskGetStructPtr(task);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x8000;
    obj->base.unk5C |= 0x20;
    obj->base.flags |= 0x140;
    obj->base.unk68 = 0;
    obj->base.unk5C |= 0x80000;
    sub_0803E2B0(&obj->base, -5, -5, 5, 4);
    sub_0803E308(&obj->base, -6, -10, 6, 7);
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x700;
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

static void sub_080A4728(struct Object2* arg0) {
    if (arg0->base.flags & 0x40000) {
        if (((struct Kirby *)arg0->base.unk6C)->base.base.base.unk68 & 0x80) {
            arg0->base.flags &= ~0x40000;
        }
        else {
            sub_080A4A08(arg0);
            return;
        }
    }
    if (arg0->unk90 != 0) {
        arg0->base.unk6C = sub_0803D368(&arg0->base);
        sub_080A4A08(arg0);
    }
    else {
        Macro_080A4728(arg0);
    }
}

static void sub_080A47C8(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        sub_080A4A7C(arg0);
    }
    else {
        if (arg0->base.counter <= 0x13) {
            arg0->base.objBase54 = gUnk_08350BCC[arg0->base.counter][0];
            arg0->base.objBase55 = gUnk_08350BCC[arg0->base.counter][1];
        }
        else if (arg0->base.counter <= 0x21) {
            arg0->base.objBase54 = gUnk_08350BB0[(arg0->base.counter - 0x14)][0];
            arg0->base.objBase55 = gUnk_08350BB0[(arg0->base.counter - 0x14)][1];
        }
        arg0->base.counter++;
    }
}

static void sub_080A4840(struct Object2* arg0) {
    s32 r2, r3;
    arg0->base.flags |= 4;
    if (++arg0->unk9E > 3) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
        arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
    }
    
    r3 = (arg0->base.y & ~0xfff);
    r2 = ((arg0->unkA2 * 0x100) & ~0xfff);

    if (r3 > r2) {
        arg0->base.yspeed += 0x38;
        if (arg0->base.yspeed > 0x180) {
            arg0->base.yspeed = 0x180;
        }
    }
    else if (r3 < r2) {
        arg0->base.yspeed -= 0x38;
        if (arg0->base.yspeed < -0x180) {
            arg0->base.yspeed = -0x180;
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

    r3 = (arg0->base.x & ~0xfff);
    r2 = ((arg0->unkA0 * 0x100) & ~0xfff);

    if (r3 < r2) {
        arg0->base.flags &= ~1;
        arg0->base.xspeed += 0x38;
        if (arg0->base.xspeed > 0x180)
            arg0->base.xspeed = 0x180;
        else if (arg0->base.xspeed < -0x180)
            arg0->base.xspeed = -0x180;
    }
    else if (r3 > r2) {
        arg0->base.flags |= 1;
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x38;
            if (arg0->base.xspeed < -0x180)
                arg0->base.xspeed = -0x180;
            else if (arg0->base.xspeed > 0x180)
                arg0->base.xspeed = 0x180;
        }
        else {
            arg0->base.xspeed += 0x38;
            if (arg0->base.xspeed > 0x180)
                arg0->base.xspeed = 0x180;
            else if (arg0->base.xspeed < -0x180)
                arg0->base.xspeed = -0x180;
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

    if (++arg0->unk85 > 0x78) {
        arg0->base.flags |= 0x1000;
        sub_0809DA30(arg0);
    }
}

static void sub_080A49D0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4728);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x8000;
    arg0->base.unk68 = 0;
}

static void sub_080A4A08(struct Object2* arg0) {
    arg0->kirby3 = arg0->base.unk6C;
    if (arg0->kirby3->base.base.base.unk0 != 0 && arg0->kirby3->base.base.base.parent != NULL) {
        arg0->kirby3 = arg0->kirby3->base.base.base.parent;
    }
    ObjectSetFunc(arg0, 1, sub_080A47C8);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags |= 0x100;
    arg0->base.flags &= ~0x8000;
    arg0->base.unk68 &= ~7;
    arg0->base.unk68 |= 3;
    arg0->base.unk68 |= 0x40;
}

static void sub_080A4A7C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A4840);
}

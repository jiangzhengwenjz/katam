#include "twister.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "task.h"

static void sub_080BBE08(struct Object2*);
static void sub_080BBEBC(struct Object2*);
static void sub_080BBF54(struct Object2*);
static void sub_080BC35C(struct Object2*);
static void sub_080BC440(struct Object2*);
static void sub_080BC4A8(struct Object2*);

void* CreateTwister(struct Object* arg0, u8 arg1) {
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
    sub_0803E2B0(&obj->base, -5, -6, 5, 5);
    sub_0803E308(&obj->base, -6, -7, 6, 7);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080BBE08(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->object->subtype1 == 0) {
        if (arg0->base.unk62 & 1) {
            arg0->base.flags ^= 1;
            arg0->base.xspeed = -arg0->base.xspeed;
        }
        if (arg0->unk83 == 0) {
            if (arg0->subtype != 0) {
                if (++arg0->base.counter > 0x50) {
                    arg0->unk83 = 1;
                    arg0->base.counter = 0;
                }
                arg0->base.counter++;
            }
            else {
                if (++arg0->base.counter > 0x8c) {
                    arg0->unk83 = 1;
                    arg0->base.counter = 0;
                }
                arg0->base.counter++;
            }
        }
        else {
            if (arg0->base.flags & 2) {
                if (++arg0->base.counter > 4) {
                    if (arg0->unk83 != 2) {
                        arg0->unk83 = 2;
                        arg0->base.counter = 0;
                        arg0->base.yspeed = 0x40;
                        arg0->base.flags |= 0x40;
                    }
                    else {
                        sub_080BBEBC(arg0);
                    }
                }
            }
        }
    }
}

static void sub_080BBEBC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080BBF54);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags |= 0x140;
    sub_0803E2B0(&arg0->base, -8, -8, 8, 8);
    arg0->base.unk5C = ~0x20;
    arg0->base.unk5C &= ~7;
    arg0->base.unk5C |= 1;
    if (arg0->kirby3->base.base.base.x < arg0->base.x) {
        arg0->unk85 |= 1;
    }
    else {
        arg0->unk85 &= ~1;
    }
    arg0->unk85 &= ~2;
    arg0->base.counter = 0x78;
}

static void sub_080BBF54(struct Object2* arg0) {
    s8 sb;
    s32 lhs, rhs;
    arg0->base.flags |= 4;
    if (arg0->unk85 & 1) {
        sb = -0x40;
    }
    else {
        sb = 0x40;
    }
    if (arg0->subtype != 0) {
        if (++arg0->unk9E > 7) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
        }
        lhs = arg0->base.y & ~0xfff;
        rhs = ((arg0->unkA2 + 2) << 8) & ~0xfff;
        if (lhs > rhs) {
            arg0->base.yspeed += 0x40;
            if (arg0->base.yspeed > 0x40) {
                arg0->base.yspeed = 0x40;
            }
        }
        else if (lhs < rhs) {
            arg0->base.yspeed -= 0x40;
            if (arg0->base.yspeed < -0x40) {
                arg0->base.yspeed = -0x40;
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
        lhs = arg0->base.x & ~0xfff;
        rhs = ((arg0->unkA0 + sb) << 8) & ~0xfff;
        if (lhs < rhs) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x99;
            if (arg0->base.xspeed > 0x300) {
                arg0->base.xspeed = 0x300;
            }
            else {
                if (arg0->base.xspeed < -0x300) {
                    arg0->base.xspeed = -0x300;
                }
            }
        }
        else if (lhs > rhs) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x99;
                if (arg0->base.xspeed < -0x300) {
                    arg0->base.xspeed = -0x300;
                }
                else if (arg0->base.xspeed > 0x300) {
                    arg0->base.xspeed = 0x300;
                }
            }
            else {
                arg0->base.xspeed += 0x99;
                if (arg0->base.xspeed > 0x300) {
                    arg0->base.xspeed = 0x300;
                }
                else if (arg0->base.xspeed < -0x300) {
                    arg0->base.xspeed = -0x300;
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
    }
    else {
        if (++arg0->unk9E > 7) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
        }
        lhs = arg0->base.y & ~0xfff;
        rhs = ((arg0->unkA2 + 2) << 8) & ~0xfff;
        if (lhs > rhs) {
            arg0->base.yspeed += 0x40;
            if (arg0->base.yspeed > 0x40) {
                arg0->base.yspeed = 0x40;
            }
        }
        else if (lhs < rhs) {
            arg0->base.yspeed -= 0x40;
            if (arg0->base.yspeed < -0x40) {
                arg0->base.yspeed = -0x40;
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
        lhs = arg0->base.x & ~0xfff;
        rhs = ((arg0->unkA0 + sb) << 8) & ~0xfff;
        if (lhs < rhs) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x66;
            if (arg0->base.xspeed > 0x200) {
                arg0->base.xspeed = 0x200;
            }
            else {
                if (arg0->base.xspeed < -0x200) {
                    arg0->base.xspeed = -0x200;
                }
            }
        }
        else if (lhs > rhs) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x66;
                if (arg0->base.xspeed < -0x200) {
                    arg0->base.xspeed = -0x200;
                }
                else if (arg0->base.xspeed > 0x200) {
                    arg0->base.xspeed = 0x200;
                }
            }
            else {
                arg0->base.xspeed += 0x66;
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
    }
    if (--arg0->base.counter == 0) {
        if (arg0->unk85 & 2) {
            sub_080BC4A8(arg0);
            return;
        }
        else {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3fff) {
                arg0->unk85 ^= 1;
                arg0->base.counter = 0x78;
            }
            else {
                arg0->base.counter = 0x28;
            }
            arg0->unk85 |= 2;
        }
    }
    if (arg0->base.unk1 == 1) {
        PlaySfx(&arg0->base, 0x143);
    }
}

static void sub_080BC35C(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.counter != 0) {
        s32 a = -5, b = -6, c = -6, d = -7;
        if (++arg0->base.counter > 0x20) {
            ObjectSetFunc(arg0, 0, sub_080BBE08);
            sub_0803E2B0(&arg0->base, a, b, 5, 5);
            sub_0803E308(&arg0->base, c, d, 6, 7);
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->base.flags &= ~0x140;
            arg0->base.xspeed = 0;
            arg0->base.unk5C = 1;
        }
    }
    else {
        arg0->base.yspeed += 0xe7;
        if (arg0->base.yspeed > 0x200) {
            arg0->base.yspeed = 0x200;
        }
        if (!(arg0->unk85 & 4)) {
            if (arg0->base.yspeed == 0x200) {
                if (arg0->base.unk58 & 1) {
                    arg0->base.counter++;
                    arg0->unk83 = 1;
                    arg0->unk85 |= 4;
                    arg0->base.flags &= ~0x140;
                    arg0->base.unk5C = 1;
                }
            }
        }
    }
}

static void sub_080BC440(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BBE08);
    sub_0803E2B0(&arg0->base, -5, -6, 5, 5);
    sub_0803E308(&arg0->base, -6, -7, 6, 7);
    arg0->kirby3 = sub_0803D368(&arg0->base);
    arg0->base.flags &= ~0x140;
    arg0->base.xspeed = 0;
    arg0->base.unk5C = 1;
}

static void sub_080BC4A8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080BC35C);
    arg0->base.xspeed = 0;
}

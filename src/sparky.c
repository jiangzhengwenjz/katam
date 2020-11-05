#include "functions.h"
#include "sparky.h"

struct Object2* CreateSparky(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->y -= 0x100;
    obj->flags |= 0x4000;
    if (obj->x > obj->kirby3->base.x) {
        obj->flags |= 1;
    } else {
        obj->flags &= ~1;
    }
    obj->unk68 |= 0x400;
    sub_0803E2B0(obj, -5, -5, 5, 6);
    sub_0803E308(obj, -6, -6, 6, 8);
    ObjectInitSprite(obj);
    if (obj->unkC & 0x10) {
        sub_08088398(obj, gUnk_08355584);
    }
    else {
        sub_08085CE8(obj, gUnk_08355578);
    }
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

void sub_080C41B8(struct Object2* arg0) {
    if (arg0->object->subtype1 <= 1) {
        if (arg0->unk62 & 4) {
            if ((abs(arg0->kirby3->base.x - arg0->x) < 0x4000) && (Rand16() % 4 == 0)) {
                sub_080C4674(arg0);
            }
            else {
                if (arg0->object->subtype1 != 0) {
                    sub_080C4654(arg0);
                }
                else {
                    sub_080C45E0(arg0);
                }
            }
        }
    }
}

void sub_080C4248(struct Object2* arg0) {
    u16 rand;
    ObjectSetFunc(arg0, 4, sub_080C4300);
    rand = Rand16();
    if (rand % 4 == 3) {
        if (arg0->subtype != 0) {
            arg0->xspeed = 0x180;
        }
        else {
            arg0->xspeed = 0x100;
        }
        arg0->yspeed = 0x400;
    }
    else {
        if (rand % 4 == 2) {
            arg0->xspeed = 0;
            arg0->yspeed = 0x200;
        }
        else {
            if (arg0->subtype != 0) {
                arg0->xspeed = 0x180;
            }
            else {
                arg0->xspeed = 0x100;
            }
            arg0->yspeed = 0x200;
        }
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}

//todo: is there a better way to match this?
void sub_080C4300(struct Object2* arg0) {
    if ((arg0->yspeed -= 0x40) << 0x10 < -0x300 << 0x10) {
        arg0->yspeed = -0x300;
    }
    if (arg0->unk62 & 4) {
        sub_080C4654(arg0);
    }
}

void sub_080C4338(struct Object2* arg0) {
    s32 unk0, unk1;
    if (arg0->object->subtype1 != 0) {
        unk0 = -5;
        unk1 = -6;
        if (++arg0->counter > 8) {
            ObjectSetFunc(arg0, 0, sub_080C41B8);
            sub_0803E2B0(arg0, unk0, unk0, 5, 6);
            sub_0803E308(arg0, unk1, unk1, 6, 8);
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->xspeed = 0;
            if (arg0->x > arg0->kirby3->base.x) {
                arg0->flags |= 1;
            }
            else {
                arg0->flags &= ~1;
            }
        }
    }
    else {
        unk0 = -5;
        unk1 = -6;
        if (++arg0->counter > 13) {
            ObjectSetFunc(arg0, 0, sub_080C41B8);
            sub_0803E2B0(arg0, unk0, unk0, 5, 6);
            sub_0803E308(arg0, unk1, unk1, 6, 8);
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->xspeed = 0;
            if (arg0->x > arg0->kirby3->base.x) {
                arg0->flags |= 1;
            }
            else {
                arg0->flags &= ~1;
            }
        }
    }
}

void sub_080C4428(struct Object2* arg0) {
    arg0->flags |= 4;
    if (!(arg0->unk1 & 3) || (arg0->unk1 & 3) == 3) {
        sub_0803E2B0(arg0, -17, -12, 17, 20);
    }
    else {
        sub_0803E2B0(arg0, -5, -5, 5, 6);
        sub_0803E308(arg0, -6, -6, 6, 8);
    }
    if ((arg0->flags & 2) && (++arg0->counter > 8)) {
        sub_0803E2B0(arg0, -5, -5, 5, 6);
        sub_0803E308(arg0, -6, -6, 6, 8);
        ObjectSetFunc(arg0, 0, sub_080C4338);
        arg0->xspeed >>= 1;
    }
    else {
        if (!(arg0->unk1 & 7)) {
            PlaySfx(arg0, 0x140);
        }
    }
}

void sub_080C4570(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C41B8);
    sub_0803E2B0(arg0, -5, -5, 5, 6);
    sub_0803E308(arg0, -6, -6, 6, 8);
    arg0->kirby3 = sub_0803D368(arg0);
    arg0->xspeed = 0;
    if (arg0->x > arg0->kirby3->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
}

void sub_080C45E0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C4618);
    if (arg0->x > arg0->kirby3->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
}

void sub_080C4618(struct Object2* arg0) {
    if (arg0->object->subtype1 != 0) {
        if (++arg0->counter > 7) {
            sub_080C4248(arg0);
        }
    }
    else {
        if (++arg0->counter > 10) {
            sub_080C4248(arg0);
        }
    }
}

void sub_080C4654(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080C4338);
    arg0->xspeed >>= 1;
}

void sub_080C4674(struct Object2* arg0) {
    ObjectSetFunc(arg0, 5, sub_080C4688);
}

void sub_080C4688(struct Object2* arg0) {
    if (arg0->flags & 2) {
        sub_080C46A0(arg0);
    }
}

void sub_080C46A0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 6, sub_080C4428);
}

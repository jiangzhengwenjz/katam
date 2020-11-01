#include "blockin.h"
#include "functions.h"

struct Object2* CreateBlockin(struct Object* arg0, u8 arg1) {
    struct Task *task;
    struct Object2 *obj;
    task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    TASK_GET_STRUCT_PTR(task, obj);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x8000;
    obj->unk5C |= 0x20;
    obj->flags |= 0x140;
    obj->unk68 = 0;
    obj->unk5C |= 0x80000;
    sub_0803E2B0(obj, -5, -5, 5, 4);
    sub_0803E308(obj, -6, -10, 6, 7);
    ObjectInitSprite(obj);
    obj->unk10.unk14 = 0x700;
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

void sub_080A4728(struct Object2* arg0) {
    u8 idx, idx2;
    if (arg0->flags & 0x40000) {
        if (arg0->kirby1->base.unk68 & 0x80) {
            arg0->flags &= ~0x40000;
        }
        else {
            sub_080A4A08(arg0);
            return;
        }
    }
    if (arg0->unk90 != 0) {
        arg0->kirby1 = sub_0803D368(arg0);
        sub_080A4A08(arg0);
    }
    else {
        if (arg0->unk56 != 0xff) {
            idx = gCurLevelInfo[arg0->unk56].unk65E;
        }
        else {
            idx = 0xff;
        }
        if (idx != 0xff) {
            idx2 = idx * 8 + gUnk_02022F40[idx]++;
            gUnk_02022EC0[0][idx2] = arg0;
            gUnk_02022EC0[0][idx2 + 1] = NULL;
        }
    }
}

void sub_080A47C8(struct Object2* arg0) {
    if (arg0->flags & 2) {
        sub_080A4A7C(arg0);
    }
    else {
        if (arg0->counter <= 0x13) {
            arg0->unk54 = gUnk_08350BCC[arg0->counter][0];
            arg0->unk55 = gUnk_08350BCC[arg0->counter][1];
        }
        else if (arg0->counter <= 0x21) {
            arg0->unk54 = gUnk_08350BB0[(arg0->counter - 0x14)][0];
            arg0->unk55 = gUnk_08350BB0[(arg0->counter - 0x14)][1];
        }
        arg0->counter++;
    }
}

void sub_080A4840(struct Object2* arg0) {
    s32 r2, r3;
    arg0->flags |= 4;
    if (++arg0->unk9E > 3) {
        arg0->kirby3 = sub_0803D368(arg0);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->kirby3->base.x >> 8;
        arg0->unkA2 = arg0->kirby3->base.y >> 8;
    }
    
    r3 = (arg0->y & ~0xfff);
    r2 = ((arg0->unkA2 << 8) & ~0xfff);

    if (r3 > r2) {
        arg0->yspeed += 0x38;
        if (arg0->yspeed > 0x180) {
            arg0->yspeed = 0x180;
        }
    }
    else if (r3 < r2) {
        arg0->yspeed -= 0x38;
        if (arg0->yspeed < -0x180) {
            arg0->yspeed = -0x180;
        }
    }
    else {
        if (arg0->yspeed < 0) {
            arg0->yspeed += 4;
            if (arg0->yspeed > 0) {
                arg0->yspeed = 0;
            }
        }
        else {
            arg0->yspeed -= 4;
            if (arg0->yspeed < 0) {
                arg0->yspeed = 0;
            }
        }
    }

    r3 = (arg0->x & ~0xfff);
    r2 = ((arg0->unkA0 << 8) & ~0xfff);

    if (r3 < r2) {
        arg0->flags &= ~1;
        goto _080A7BA4;
    }
    else if (r3 > r2) {
        arg0->flags |= 1;
        if (arg0->flags & 1) {
            arg0->xspeed -= 0x38;
            if (arg0->xspeed >= -0x180) {
                if (arg0->xspeed > 0x180) {
                    arg0->xspeed = 0x180;
                }
            }
            else {
                arg0->xspeed = -0x180;
            }
        }
        else {
        _080A7BA4: {
            s32 r0 = (arg0->xspeed += 0x38);
            if (arg0->xspeed <= 0x180) {
                r2 = -0x180;
                if (r0 < r2) {
                    arg0->xspeed = r2;
                }
            }
            else {
                arg0->xspeed = 0x180;
            }
        }
        }
    }
    else {
        if (arg0->xspeed < 0) {
            arg0->xspeed += 4;
            if (arg0->xspeed > 0) {
                arg0->xspeed = 0;
            }
        }
        else {
            arg0->xspeed -= 4;
            if (arg0->xspeed < 0) {
                arg0->xspeed = 0;
            }
        }
    }

    if (++arg0->unk85 > 0x78) {
        arg0->flags |= 0x1000;
        sub_0809DA30(arg0);
    }
}

void sub_080A49D0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4728);
    arg0->xspeed = 0;
    arg0->yspeed = 0;
    arg0->flags |= 0x40;
    arg0->flags &= ~0x20;
    arg0->flags |= 0x8000;
    arg0->unk68 = 0;
}

void sub_080A4A08(struct Object2* arg0) {
    arg0->kirby3 = arg0->kirby1;
    if (arg0->kirby3->base.unk0 != 0 && arg0->kirby3->base.kirby2 != 0) {
        arg0->kirby3 = arg0->kirby3->base.kirby2;
    }
    ObjectSetFunc(arg0, 1, sub_080A47C8);
    if (arg0->x > arg0->kirby3->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
    arg0->flags |= 0x100;
    arg0->flags &= ~0x8000;
    arg0->unk68 &= ~7;
    arg0->unk68 |= 3;
    arg0->unk68 |= 0x40;
}

void sub_080A4A7C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A4840);
}

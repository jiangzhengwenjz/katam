#include "functions.h"
#include "laser_ball.h"

struct Object2* CreateLaserBall(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x140;
    obj->unkC |= 5;
    sub_0803E2B0(obj, -5, -3, 5, 8);
    sub_0803E308(obj, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->unkC & 0x10) {
        sub_08088398(obj, gUnk_08353F98);
    }
    else {
        sub_08085CE8(obj, gUnk_08353F88);
    }
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

void sub_080B2330(struct Object2* arg0) {
    if (arg0->unk83 == 1 && arg0->flags & 2) {
        arg0->unk83 = 0;
        arg0->unk85 = !arg0->unk85;
    }
    if (arg0->x > arg0->kirby3->base.x) {
        if (!(arg0->unk85 & 1)) {
            arg0->unk83 = 1;
        }
        if (++arg0->unk9E > 0x1f) {
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.y >> 8;
        }
        if ((arg0->y & ~0x3ff) > (arg0->unkA2 << 8 & ~0x3ff)) {
            arg0->yspeed += 0x33;
            if (arg0->yspeed > 0xff) {
                arg0->yspeed = 0xff;
            }
        }
        else {
            if ((arg0->y & ~0x3ff) < (arg0->unkA2 << 8 & ~0x3ff)) {
                arg0->yspeed -= 0x33;
                if (arg0->yspeed < -0xff) {
                    arg0->yspeed = -0xff;
                }
            }
            else {
                if (arg0->yspeed < 0) {
                    arg0->yspeed += 0x38;
                    if (arg0->yspeed > 0) {
                        arg0->yspeed = 0;
                    }
                }
                else {
                    arg0->yspeed -= 0x38;
                    if (arg0->yspeed < 0) {
                        arg0->yspeed = 0;
                    }
                }
            }
        }
        if ((arg0->x & ~0x3ff) < ((arg0->unkA0 + 0x40) << 8 & ~0x3ff)) {
            arg0->flags &= ~1;
            arg0->xspeed += 0x33;
            if (arg0->xspeed > 0xff) {
                arg0->xspeed = 0xff;
            }
            else {
                if (arg0->xspeed < -0xff) {
                    arg0->xspeed = -0xff;
                }
            }
        }
        else {
            if ((arg0->x & ~0x3ff) > ((arg0->unkA0 + 0x40) << 8 & ~0x3ff)) {
                arg0->flags |= 1;
                if (arg0->flags & 1) {
                    arg0->xspeed -= 0x33;
                    if (arg0->xspeed >= -0xff) {
                        if (arg0->xspeed > 0xff) {
                            arg0->xspeed = 0xff;
                        }
                    }
                    else {
                        arg0->xspeed = -0xff;
                    }
                }
                else {
                    arg0->xspeed += 0x33;
                    if (arg0->xspeed > 0xff) {
                        arg0->xspeed = 0xff;
                    }
                    else {
                        if (arg0->xspeed < -0xff) {
                            arg0->xspeed = -0xff;
                        }
                    }
                }
            }
            else {
                if (arg0->xspeed < 0) {
                    arg0->xspeed += 0x38;
                    if (arg0->xspeed > 0) {
                        arg0->xspeed = 0;
                    }
                }
                else {
                    arg0->xspeed -= 0x38;
                    if (arg0->xspeed < 0) {
                        arg0->xspeed = 0;
                    }
                }
            }
        }
        arg0->flags &= ~1;
        arg0->flags |= arg0->unk85;
        if (((arg0->x & ~0x3ff) == ((arg0->kirby3->base.x + 0x4000) & ~0x3ff)) && (arg0->y & ~0x3ff) == (arg0->kirby3->base.y & ~0x3ff)) {
            sub_080B2C48(arg0);
            return;
        }
    }
    else {
        if ((arg0->unk85 & 1)) {
            arg0->unk83 = 1;
        }
        if (++arg0->unk9E > 0x1f) {
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.y >> 8;
        }
        if ((arg0->y & ~0x3ff) > (arg0->unkA2 << 8 & ~0x3ff)) {
            arg0->yspeed += 0x33;
            if (arg0->yspeed > 0xff) {
                arg0->yspeed = 0xff;
            }
        }
        else {
            if ((arg0->y & ~0x3ff) < (arg0->unkA2 << 8 & ~0x3ff)) {
                arg0->yspeed -= 0x33;
                if (arg0->yspeed < -0xff) {
                    arg0->yspeed = -0xff;
                }
            }
            else {
                if (arg0->yspeed < 0) {
                    arg0->yspeed += 0x38;
                    if (arg0->yspeed > 0) {
                        arg0->yspeed = 0;
                    }
                }
                else {
                    arg0->yspeed -= 0x38;
                    if (arg0->yspeed < 0) {
                        arg0->yspeed = 0;
                    }
                }
            }
        }
        if ((arg0->x & ~0x3ff) < ((arg0->unkA0 - 0x40) << 8 & ~0x3ff)) {
            arg0->flags &= ~1;
            arg0->xspeed += 0x33;
            if (arg0->xspeed > 0xff) {
                arg0->xspeed = 0xff;
            }
            else {
                if (arg0->xspeed < -0xff) {
                    arg0->xspeed = -0xff;
                }
            }
        }
        else {
            if ((arg0->x & ~0x3ff) > ((arg0->unkA0 - 0x40) << 8 & ~0x3ff)) {
                arg0->flags |= 1;
                if (arg0->flags & 1) {
                    arg0->xspeed -= 0x33;
                    if (arg0->xspeed >= -0xff) {
                        if (arg0->xspeed > 0xff) {
                            arg0->xspeed = 0xff;
                        }
                    }
                    else {
                        arg0->xspeed = -0xff;
                    }
                }
                else {
                    arg0->xspeed += 0x33;
                    if (arg0->xspeed > 0xff) {
                        arg0->xspeed = 0xff;
                    }
                    else {
                        if (arg0->xspeed < -0xff) {
                            arg0->xspeed = -0xff;
                        }
                    }
                }
            }
            else {
                if (arg0->xspeed < 0) {
                    arg0->xspeed += 0x38;
                    if (arg0->xspeed > 0) {
                        arg0->xspeed = 0;
                    }
                }
                else {
                    arg0->xspeed -= 0x38;
                    if (arg0->xspeed < 0) {
                        arg0->xspeed = 0;
                    }
                }
            }
        }
        arg0->flags &= ~1;
        arg0->flags |= arg0->unk85;
        if (((arg0->x & ~0x3ff) == ((arg0->kirby3->base.x - 0x4000) & ~0x3ff)) && (arg0->y & ~0x3ff) == (arg0->kirby3->base.y & ~0x3ff)) {
            sub_080B2C48(arg0);
            return;
        }
    }
    if (arg0->xspeed == 0 && arg0->yspeed == 0) {
        sub_080B2C48(arg0);
    }
}

void sub_080B2710(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk83 == 3) {
        if (arg0->unk85 == 0) {
            arg0->flags &= ~4;
        }
        if (arg0->unk1 == 3) {
            sub_080B2780(arg0);
            arg0->unk85--;
        }
    }
    if (arg0->flags & 2) {
        if (++arg0->counter == 7) {
            arg0->unk83 = 3;
        }
        if (arg0->unk85 == 0) {
            sub_080B2CAC(arg0);
        }
    }
}

void sub_080B2780(struct Object2* arg0) {
    struct Task *task = TaskCreate(sub_08070580, sizeof(struct Laser), 0xd4 << 6, 0x10, sub_0803DCCC);
    struct Laser *laser2, *laser = TASK_GET_STRUCT_PTR(task, laser2);
    sub_0803E380((struct Object2*)laser);
    laser->unk0 = 2;
    laser->x = arg0->x;
    laser->y = arg0->y;
    laser->parent = arg0;
    laser->counter = 0;
    laser->unk60 = arg0->unk60;
    laser->unk56 = arg0->unk56;
    if (gUnk_03000510.unk4 & ((1 << laser->unk56) | 0x10)) {
        laser->flags |= 0x2000;
    }
    laser->unk78 = sub_080B2A30;
    laser->unk7C = sub_080B2D74;
    laser->unk80 = sub_080B2D74;
    laser->unk84 = 0;
    laser->unk88 = 0;
    laser->unk89 = 0;
    laser->unk8A = 0;
    laser->unk63 = 1;
    laser->flags |= 0x80 << 0x15;
    laser->unk68 = 0x20000043;
    laser->unk5C |= 0x80 << 0xc;
    if (gUnk_03000510.unk4 & ((1 << laser->unk56) | 0x10)) {
        laser->flags |= 0x2000;
    }
    if (arg0->flags & 1) {
        laser->xspeed = -0x800;
        laser->flags |= 1;
        laser->x -= 0x10;
    }
    else {
        laser->xspeed = 0x800;
        laser->x += 0x10;
    }
    sub_0803E2B0((struct Object2*)laser, 2, -3, 10, 3);
    sub_0803E308((struct Object2*)laser, 16, -1, 18, 1);
    sub_080708DC((struct Object2*)laser, &laser->unk10, 4, 0x321, 6, 9);
    laser->unk10.unk1F = 0;
    if (arg0->unkC & 0x10) {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == laser->unk60) {
            laser->unk10.unk1F = sub_0803DF24(gUnk_08351648[50].unk8);
            if (laser->unk10.unk1F == 0xff) {
                laser->unk10.unk1F = sub_0803DFAC(gUnk_08351648[50].unk8, 0);
            }
        }
        else {
            laser->unk10.unk1F = 0;
        }
    }
    else {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == laser->unk60) {
            laser->unk10.unk1F = sub_0803DF24(0x321);
            if (laser->unk10.unk1F == 0xff) {
                laser->unk10.unk1F = sub_0803DFAC(0x321, 0);
            }
        }
        else {
            laser->unk10.unk1F = arg0->unkC & 0x10;
        }
    }
    PlaySfx(laser, 0x9e * 2);
}

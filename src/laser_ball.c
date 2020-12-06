#include "functions.h"
#include "laser_ball.h"

struct Object2* CreateLaserBall(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x140;
    obj->base.unkC |= 5;
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->base.unkC & 0x10) {
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
    if (arg0->unk83 == 1 && arg0->base.flags & 2) {
        arg0->unk83 = 0;
        arg0->unk85 = !arg0->unk85;
    }
    if (arg0->base.x > arg0->kirby3->base.base.x) {
        if (!(arg0->unk85 & 1)) {
            arg0->unk83 = 1;
        }
        if (++arg0->unk9E > 0x1f) {
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.y >> 8;
        }
        if ((arg0->base.y & ~0x3ff) > (arg0->unkA2 << 8 & ~0x3ff)) {
            arg0->base.yspeed += 0x33;
            if (arg0->base.yspeed > 0xff) {
                arg0->base.yspeed = 0xff;
            }
        }
        else {
            if ((arg0->base.y & ~0x3ff) < (arg0->unkA2 << 8 & ~0x3ff)) {
                arg0->base.yspeed -= 0x33;
                if (arg0->base.yspeed < -0xff) {
                    arg0->base.yspeed = -0xff;
                }
            }
            else {
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed += 0x38;
                    if (arg0->base.yspeed > 0) {
                        arg0->base.yspeed = 0;
                    }
                }
                else {
                    arg0->base.yspeed -= 0x38;
                    if (arg0->base.yspeed < 0) {
                        arg0->base.yspeed = 0;
                    }
                }
            }
        }
        if ((arg0->base.x & ~0x3ff) < ((arg0->unkA0 + 0x40) << 8 & ~0x3ff)) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x33;
            if (arg0->base.xspeed > 0xff) {
                arg0->base.xspeed = 0xff;
            }
            else {
                if (arg0->base.xspeed < -0xff) {
                    arg0->base.xspeed = -0xff;
                }
            }
        }
        else {
            if ((arg0->base.x & ~0x3ff) > ((arg0->unkA0 + 0x40) << 8 & ~0x3ff)) {
                arg0->base.flags |= 1;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed -= 0x33;
                    if (arg0->base.xspeed >= -0xff) {
                        if (arg0->base.xspeed > 0xff) {
                            arg0->base.xspeed = 0xff;
                        }
                    }
                    else {
                        arg0->base.xspeed = -0xff;
                    }
                }
                else {
                    arg0->base.xspeed += 0x33;
                    if (arg0->base.xspeed > 0xff) {
                        arg0->base.xspeed = 0xff;
                    }
                    else {
                        if (arg0->base.xspeed < -0xff) {
                            arg0->base.xspeed = -0xff;
                        }
                    }
                }
            }
            else {
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed += 0x38;
                    if (arg0->base.xspeed > 0) {
                        arg0->base.xspeed = 0;
                    }
                }
                else {
                    arg0->base.xspeed -= 0x38;
                    if (arg0->base.xspeed < 0) {
                        arg0->base.xspeed = 0;
                    }
                }
            }
        }
        arg0->base.flags &= ~1;
        arg0->base.flags |= arg0->unk85;
        if (((arg0->base.x & ~0x3ff) == ((arg0->kirby3->base.base.x + 0x4000) & ~0x3ff)) 
        && (arg0->base.y & ~0x3ff) == (arg0->kirby3->base.base.y & ~0x3ff)) {
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
            arg0->unkA0 = arg0->kirby3->base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.y >> 8;
        }
        if ((arg0->base.y & ~0x3ff) > (arg0->unkA2 << 8 & ~0x3ff)) {
            arg0->base.yspeed += 0x33;
            if (arg0->base.yspeed > 0xff) {
                arg0->base.yspeed = 0xff;
            }
        }
        else {
            if ((arg0->base.y & ~0x3ff) < (arg0->unkA2 << 8 & ~0x3ff)) {
                arg0->base.yspeed -= 0x33;
                if (arg0->base.yspeed < -0xff) {
                    arg0->base.yspeed = -0xff;
                }
            }
            else {
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed += 0x38;
                    if (arg0->base.yspeed > 0) {
                        arg0->base.yspeed = 0;
                    }
                }
                else {
                    arg0->base.yspeed -= 0x38;
                    if (arg0->base.yspeed < 0) {
                        arg0->base.yspeed = 0;
                    }
                }
            }
        }
        if ((arg0->base.x & ~0x3ff) < ((arg0->unkA0 - 0x40) << 8 & ~0x3ff)) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 0x33;
            if (arg0->base.xspeed > 0xff) {
                arg0->base.xspeed = 0xff;
            }
            else {
                if (arg0->base.xspeed < -0xff) {
                    arg0->base.xspeed = -0xff;
                }
            }
        }
        else {
            if ((arg0->base.x & ~0x3ff) > ((arg0->unkA0 - 0x40) << 8 & ~0x3ff)) {
                arg0->base.flags |= 1;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed -= 0x33;
                    if (arg0->base.xspeed >= -0xff) {
                        if (arg0->base.xspeed > 0xff) {
                            arg0->base.xspeed = 0xff;
                        }
                    }
                    else {
                        arg0->base.xspeed = -0xff;
                    }
                }
                else {
                    arg0->base.xspeed += 0x33;
                    if (arg0->base.xspeed > 0xff) {
                        arg0->base.xspeed = 0xff;
                    }
                    else {
                        if (arg0->base.xspeed < -0xff) {
                            arg0->base.xspeed = -0xff;
                        }
                    }
                }
            }
            else {
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed += 0x38;
                    if (arg0->base.xspeed > 0) {
                        arg0->base.xspeed = 0;
                    }
                }
                else {
                    arg0->base.xspeed -= 0x38;
                    if (arg0->base.xspeed < 0) {
                        arg0->base.xspeed = 0;
                    }
                }
            }
        }
        arg0->base.flags &= ~1;
        arg0->base.flags |= arg0->unk85;
        if (((arg0->base.x & ~0x3ff) == ((arg0->kirby3->base.base.x - 0x4000) & ~0x3ff)) 
        && (arg0->base.y & ~0x3ff) == (arg0->kirby3->base.base.y & ~0x3ff)) {
            sub_080B2C48(arg0);
            return;
        }
    }
    if (arg0->base.xspeed == 0 && arg0->base.yspeed == 0) {
        sub_080B2C48(arg0);
    }
}

void sub_080B2710(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->unk83 == 3) {
        if (arg0->unk85 == 0) {
            arg0->base.flags &= ~4;
        }
        if (arg0->base.unk1 == 3) {
            sub_080B2780(arg0);
            arg0->unk85--;
        }
    }
    if (arg0->base.flags & 2) {
        if (++arg0->base.counter == 7) {
            arg0->unk83 = 3;
        }
        if (arg0->unk85 == 0) {
            sub_080B2CAC(arg0);
        }
    }
}

void sub_080B2780(struct Object2* arg0) {
    struct Task *task = TaskCreate(sub_08070580, sizeof(struct Laser), 0x3500, 0x10, sub_0803DCCC);
    struct Laser *laser2, *laser = TaskGetStructPtr(task, laser2);
    sub_0803E380(&laser->base);
    laser->base.unk0 = 2;
    laser->base.x = arg0->base.x;
    laser->base.y = arg0->base.y;
    laser->base.parent = arg0;
    laser->base.counter = 0;
    laser->base.unk60 = arg0->base.unk60;
    laser->base.unk56 = arg0->base.unk56;
    if (gUnk_03000510.unk4 & ((1 << laser->base.unk56) | 0x10)) {
        laser->base.flags |= 0x2000;
    }
    laser->unk78 = sub_080B2A30;
    laser->unk7C = sub_080B2D74;
    laser->unk80 = sub_080B2D74;
    laser->unk84 = 0;
    laser->unk88 = 0;
    laser->unk89 = 0;
    laser->unk8A = 0;
    laser->base.unk63 = 1;
    laser->base.flags |= 0x10000000;
    laser->base.unk68 = 0x20000043;
    laser->base.unk5C |= 0x80000;
    if (gUnk_03000510.unk4 & ((1 << laser->base.unk56) | 0x10)) {
        laser->base.flags |= 0x2000;
    }
    if (arg0->base.flags & 1) {
        laser->base.xspeed = -0x800;
        laser->base.flags |= 1;
        laser->base.x -= 0x10;
    }
    else {
        laser->base.xspeed = 0x800;
        laser->base.x += 0x10;
    }
    sub_0803E2B0(&laser->base, 2, -3, 10, 3);
    sub_0803E308(&laser->base, 16, -1, 18, 1);
    sub_080708DC(&laser->base, &laser->base.unk10, 4, 0x321, 6, 9);
    laser->base.unk10.unk1F = 0;
    if (arg0->base.unkC & 0x10) {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.base.unk60 == laser->base.unk60) {
            laser->base.unk10.unk1F = sub_0803DF24(gUnk_08351648[50].unk8);
            if (laser->base.unk10.unk1F == 0xff) {
                laser->base.unk10.unk1F = sub_0803DFAC(gUnk_08351648[50].unk8, 0);
            }
        }
        else {
            laser->base.unk10.unk1F = 0;
        }
    }
    else {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.base.unk60 == laser->base.unk60) {
            laser->base.unk10.unk1F = sub_0803DF24(0x321);
            if (laser->base.unk10.unk1F == 0xff) {
                laser->base.unk10.unk1F = sub_0803DFAC(0x321, 0);
            }
        }
        else {
            laser->base.unk10.unk1F = arg0->base.unkC & 0x10;
        }
    }
    PlaySfx(&laser->base, 0x13c);
}

u32 sub_080B2A30(struct Laser* arg0) {
    struct Sprite sprite, *sprite2, *sprite3;
    struct Object2 *parent = arg0->base.parent;
    if (gUnk_02020EE0[gUnk_0203AD3C].base.base.unk60 == arg0->base.unk60) {
        if (arg0->base.flags & 0x4000) {
            if (arg0->base.unk10.unk0 == 0) {
                (sprite2 = &arg0->base.unk10)->unk0 = sub_0803DE54(4, arg0->base.unk10.unkC, arg0->base.unk10.unk1A);
                sprite2->unk8 = arg0->base.unk10.unk8 & ~0x80000;
                CpuCopy32(sprite2, &sprite, sizeof(struct Sprite));
                sub_0815521C(&sprite, arg0->base.unk1);
                sprite2->unk8 = arg0->base.unk10.unk8 | 0x80000;
            }
        }
        else {
            if (arg0->base.unk10.unk0 == 0) {
                (sprite3 = &arg0->base.unk10)->unk0 = sub_081570B0(4);
                sprite3->unk8 = arg0->base.unk10.unk8 & ~0x80000;
                CpuCopy32(&arg0->base.unk10, &sprite, sizeof(struct Sprite));
                sub_0815521C(&sprite, arg0->base.unk1);
            }
        }
    }
    else {
        if (arg0->base.unk10.unk0 != 0) {
            bool8 val = arg0->base.flags & 0x4000;
            if (!(arg0->base.flags & 0x4000)) {
                sub_08157190(arg0->base.unk10.unk0);
                arg0->base.unk10.unk0 = val;
            }
        }
        arg0->base.unk10.unk8 |= 0x80000;
    }
    if (parent->base.unkC & 0x10) {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.base.unk60 == arg0->base.unk60) {
            if (arg0->base.unk10.unk1F == 0) {
                arg0->base.unk10.unk1F = sub_0803DF24(gUnk_08351648[50].unk8);
                if (arg0->base.unk10.unk1F == 0xff) {
                    arg0->base.unk10.unk1F = sub_0803DFAC(gUnk_08351648[50].unk8, 0);
                }
            }
        }
        else {
            arg0->base.unk10.unk1F = 0;
        }
    }
    else {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.base.unk60 == arg0->base.unk60) {
            if (arg0->base.unk10.unk1F == 0) {
                arg0->base.unk10.unk1F = sub_0803DF24(0x321);
                if (arg0->base.unk10.unk1F == 0xff) {
                    arg0->base.unk10.unk1F = sub_0803DFAC(0x321, 0);
                }
            }
        }
        else {
            arg0->base.unk10.unk1F = parent->base.unkC & 0x10;
        }
    }
    if (arg0->unk88 != 0 && arg0->base.flags & 2) {
        arg0->base.flags |= 0x1000;
        return 1;
    }
    else {
        return 0;
    }
}

void sub_080B2BE0(struct Object2* arg0) {
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x20;
    if (arg0->object->subtype1 != 0) {
        sub_080B2D08(arg0);
    }
    else {
        ObjectSetFunc(arg0, 0,sub_080B2330);
        if (arg0->base.x > arg0->kirby3->base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->unk85 = arg0->base.flags & 1;
    }
}

void sub_080B2C48(struct Object2* arg0) {
    u16 rand;
    u8 res;
    ObjectSetFunc(arg0, 2, sub_080B2710);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    rand = Rand16();
    if (rand < 0x5555) {
        res = 0;
    }
    else if (rand < 0xaaaa) {
        res = 1;
    }
    else {
        res = 2;
    }
    arg0->unk85 = res + 1;
}

void sub_080B2CAC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080B2CD0);
    arg0->base.flags ^= 1;
    arg0->base.yspeed = 0;
}

void sub_080B2CD0(struct Object2* arg0) {
    if (arg0->base.x > arg0->kirby3->base.base.x) {
        arg0->base.xspeed = 0x48;
    }
    else {
        arg0->base.xspeed = -0x48;
    }
    arg0->base.yspeed += 0x10;
    arg0->base.counter++;
}

void sub_080B2D08(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080B2D68);
    if (arg0->base.x > arg0->kirby3->base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x20;
    arg0->unk85 = arg0->base.flags & 1;
}

void sub_080B2D68(struct Object2* arg0) {
    arg0->base.flags |= 4;
}

u32 sub_080B2D74(struct Laser* arg0) {
    arg0->base.unk10.unk1A = 7;
    arg0->unk88 = 1;
    arg0->base.flags &= ~0x200;
    arg0->base.flags &= ~0x100;
    arg0->base.xspeed = 0;
    return 0;
}

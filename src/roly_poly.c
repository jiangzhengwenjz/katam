#include "roly_poly.h"
#include "kirby.h"
#include "task.h"
#include "random.h"

static void sub_080ACDA4(struct Object2*);
void sub_080ACEC0(struct Object2*);
void sub_080ACF68(struct Object2*);
static void RolyPolyJumping(struct Object2*);
void sub_080AD1D8(struct Object2*);
void sub_080AD3D0(struct Object2*);

void sub_080AD5F4(struct Object2*);
void sub_080AD61C(struct Object2*);

void* CreateRolyPoly(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2* tmp = TaskGetStructPtr(task);
    struct Object2* rolypoly = tmp;

    InitObject(rolypoly, arg0, arg1);
    if (rolypoly->base.x > rolypoly->kirby3->base.base.base.x) {
        rolypoly->base.flags |= 0x01;
    }
    else {
        rolypoly->base.flags &= ~0x01;
    }
    sub_0803E2B0(&rolypoly->base, -5, -4, 5, 7);
    sub_0803E308(&rolypoly->base, -6, -5, 6, 9);
    ObjectInitSprite(rolypoly);
    gUnk_08351648[rolypoly->type].unk10(rolypoly);
    rolypoly->unk9E = 0;
    rolypoly->unk7C = sub_080ACDA4;
    return rolypoly;
}

static void sub_080ACDA4(struct Object2* arg0) {
    u8 oldUnk9D;
    u8 newUnk9D = 0;

    if (!Macro_0810B1F4(&arg0->base)) {
        if ((arg0->base.counter & 0x1f) == 0x1f) {
            arg0->kirby3 = sub_0803D368(&arg0->base);
        }

        switch (arg0->unk83) {
            case 0:
                if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                    arg0->base.flags |= 0x01;
                }
                else {
                    arg0->base.flags &= ~0x01;
                }
                
                if (arg0->unk9E > 0x3c) {
                    newUnk9D |= 0x02;
                }
                break;
            
            case 2:
                if ((arg0->base.counter & 0xf) == 0xf && abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x4fff) {
                    if (!(Rand16() & 0x0003)) {
                        newUnk9D |= 0x01;
                    }
                }
                break;
            
            case 3:
                if (arg0->unk9E <= 0x1d) {
                    newUnk9D = 0x01;
                }
                break;
        }

        oldUnk9D = arg0->unk9D;
        arg0->unk9D = newUnk9D;
        arg0->unk9C = newUnk9D & ~oldUnk9D;
        arg0->unk9E++;
    }
}

// ASM Comment: Are the following functions really called?

void sub_080ACEC0(struct Object2* arg0) {
    arg0->base.flags |= 0x04;
    
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }

    if (arg0->unk9D & (0x20 | 0x10)) {
        if (arg0->unk9D & 0x20) {
            arg0->base.flags |= 1;
        }
        else if (arg0->unk9D & 0x10) {
            arg0->base.flags &= ~1;
        }
    }

    if (arg0->object->subtype1 && (arg0->unk9C & 0x01)) {
        sub_080ACF68(arg0);
    }
    else if (arg0->unk9C & 0x02) {
        sub_080AD5F4(arg0);
    }
    else {
        arg0->base.counter++;
    }
}

// Always executed before every jump, but only leads to jump if unk62 0x04 flag is set

void sub_080ACF68(struct Object2* arg0) {
    if (!(arg0->base.unk62 & 0x04)) return;

    ObjectSetFunc(arg0, 3, RolyPolyJumping);

    arg0->base.yspeed = 0x200;
    if (Rand16() & 0x0001) {
        arg0->base.yspeed = 0x280;
    }
    arg0->base.xspeed = 0x1d0;
    if (arg0->base.flags & 0x01) {
        arg0->base.xspeed *= -1;
    }
    arg0->base.flags |= 0x20;

    PlaySfx(&arg0->base, 325);
}

// Always executed during jump through unk78
// Execution ends when unk62 0x04 flag is set (RolyPoly lands?)

static void RolyPolyJumping(struct Object2* arg0) {
    if (arg0->base.yspeed > 0xb && !(arg0->unk9D & 0x01)) {
        arg0->base.yspeed = 0xb;
    }

    if (arg0->unk9D & (0x20 | 0x10)) {
        if (arg0->unk9D & 0x20) {
            arg0->base.flags |= 0x01;
        }
        else if (arg0->unk9D & 0x10) {
            arg0->base.flags &= ~0x01;
        }

        if (arg0->base.flags & 0x01) {
            arg0->base.xspeed -= 0x10;
            if (arg0->base.xspeed < -0x100) {
                arg0->base.xspeed = -0x100;
            }
            else if (arg0->base.xspeed > 0x100) {
                arg0->base.xspeed = 0x100;
            }
        }
        else {
            arg0->base.xspeed += 0x10;
            if (arg0->base.xspeed > 0x100) {
                arg0->base.xspeed = 0x100;
            }
            else if (arg0->base.xspeed < -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
    }
    else {
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 0x4;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 0x4;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
    }

    if (arg0->base.unk62 & 0x04) {
        arg0->base.flags &= ~0x20;
        ObjectSetFunc(arg0, 0, sub_080ACEC0);
        arg0->base.flags &= ~0x10;
    }

    if (arg0->unk9C & 0x02) {
        sub_080AD61C(arg0);
    }
    else {
        arg0->base.counter++;
    }
}

// Always executed before every roll

void sub_080AD18C(struct Object2* arg0) {
    if (arg0->base.xspeed < 0) {
        arg0->base.xspeed += 0xe;
        if (arg0->base.xspeed > 0) {
            arg0->base.xspeed = 0;
        }
    }
    else {
        arg0->base.xspeed -= 0xe;
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed = 0;
        }
    }

    if (arg0->base.counter > 0xa) {
        sub_080AD61C(arg0);
    }
    else {
        arg0->base.counter++;
    }
}

// Always executed during roll to the right through unk78

void sub_080AD1D8(struct Object2* arg0) {
    arg0->base.flags |= 0x04;

    switch (gUnk_082D88B8[arg0->base.unk57] & 0xf0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 0x6;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 0x6;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
            if (arg0->base.xspeed == 0) {
                arg0->base.flags |= 0x01;
                arg0->unk78 = sub_080AD3D0;
            }
            break;

        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (arg0->base.flags & 0x01) {
                arg0->base.xspeed -= 0x8;
                if (arg0->base.xspeed < -0x1d0) {
                    arg0->base.xspeed = -0x1d0;
                }
                else if (arg0->base.xspeed > 0x1d0) {
                    arg0->base.xspeed = 0x1d0;
                }
            }
            else {
                arg0->base.xspeed += 0x8;
                if (arg0->base.xspeed > 0x1d0) {
                    arg0->base.xspeed = 0x1d0;
                }
                else if (arg0->base.xspeed < -0x1d0) {
                    arg0->base.xspeed = -0x1d0;
                }
            }

            if (arg0->object->subtype1 && arg0->unk9C & 0x01) {
                sub_080ACF68(arg0);
                return;
            }
            break;
        
        case 0:
            if (arg0->unk9C & 0x01) {
                sub_080ACF68(arg0);
                return;
            }
            
            if (arg0->base.flags & 0x20) break;
            
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 0x2;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 0x2;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }

            if (abs(arg0->base.xspeed) <= 0x7f) {
                ObjectSetFunc(arg0, 0, sub_080ACEC0);
                arg0->base.flags &= ~0x10;
                return;
            }
            break;
    }

    if (arg0->base.unk62 & 0x04) {
        arg0->base.flags &= ~0x20;

        if (arg0->base.unk62 & 0x01) {
            if (arg0->base.flags & 0x01 && arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
            if (!(arg0->base.flags & 0x01) && arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
    }

    arg0->base.counter++;
}

// Always executed during roll to the left through unk78

void sub_080AD3D0(struct Object2* arg0) {
    arg0->base.flags |= 0x04;

    switch (gUnk_082D88B8[arg0->base.unk57] & 0xf0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (arg0->base.flags & 0x01) {
                arg0->base.xspeed -= 0x8;
                if (arg0->base.xspeed < -0x1d0) {
                    arg0->base.xspeed = -0x1d0;
                }
                else if (arg0->base.xspeed > 0x1d0) {
                    arg0->base.xspeed = 0x1d0;
                }
            }
            else {
                arg0->base.xspeed += 0x8;
                if (arg0->base.xspeed > 0x1d0) {
                    arg0->base.xspeed = 0x1d0;
                }
                else if (arg0->base.xspeed < -0x1d0) {
                    arg0->base.xspeed = -0x1d0;
                }
            }

            if (arg0->object->subtype1 && arg0->unk9C & 0x01) {
                sub_080ACF68(arg0);
                return;
            }
            break;
    
        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 0x6;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 0x6;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
            if (arg0->base.xspeed == 0) {
                arg0->base.flags &= ~0x01;
                arg0->unk78 = sub_080AD1D8;
            }
            break;
        
        case 0:
            if (arg0->object->subtype1 && arg0->unk9C & 0x01) {
                sub_080ACF68(arg0);
                return;
            }
            
            if (arg0->base.flags & 0x20) break;
            
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 0x2;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 0x2;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }

            if (abs(arg0->base.xspeed) <= 0x7f) {
                ObjectSetFunc(arg0, 0, sub_080ACEC0);
                arg0->base.flags &= ~0x10;
                return;
            }
            break;
    }

    if (arg0->base.unk62 & 0x04) {
        arg0->base.flags &= ~0x20;

        if (arg0->base.unk62 & 0x01) {
            if (arg0->base.flags & 0x01 && arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
            if (!(arg0->base.flags & 0x01) && arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
    }

    arg0->base.counter++;
}
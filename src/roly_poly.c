#include "roly_poly.h"
#include "kirby.h"
#include "random.h"
#include "task.h"

static void sub_080ACDA4(struct Object2*);
static void sub_080ACEC0(struct Object2*);
static void sub_080ACF68(struct Object2*);
static void RolyPolyJumping(struct Object2*);
static void sub_080AD1D8(struct Object2*);
static void sub_080AD3D0(struct Object2*);
static void sub_080AD5D4(struct Object2*);
static void sub_080AD5F4(struct Object2*);
static void sub_080AD61C(struct Object2*);

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

static void sub_080ACDA4(struct Object2* rolypoly) {
    u8 oldUnk9D;
    u8 newUnk9D = 0;

    if (!Macro_0810B1F4(&rolypoly->base)) {
        if ((rolypoly->base.counter & 0x1f) == 0x1f) {
            rolypoly->kirby3 = sub_0803D368(&rolypoly->base);
        }

        switch (rolypoly->unk83) {
            case 0:
                if (rolypoly->base.x > rolypoly->kirby3->base.base.base.x) {
                    rolypoly->base.flags |= 0x01;
                }
                else {
                    rolypoly->base.flags &= ~0x01;
                }

                if (rolypoly->unk9E > 0x3c) {
                    newUnk9D |= 0x02;
                }
                break;

            case 2:
                if ((rolypoly->base.counter & 0xf) == 0xf &&
                    abs(rolypoly->kirby3->base.base.base.x - rolypoly->base.x) <= 0x4fff) {
                    if (!(Rand16() & 0x0003)) {
                        newUnk9D |= 0x01;
                    }
                }
                break;

            case 3:
                if (rolypoly->unk9E <= 0x1d) {
                    newUnk9D = 0x01;
                }
                break;
        }

        oldUnk9D = rolypoly->unk9D;
        rolypoly->unk9D = newUnk9D;
        rolypoly->unk9C = newUnk9D & ~oldUnk9D;
        rolypoly->unk9E++;
    }
}

// ASM Comment: Are the following functions really called?

static void sub_080ACEC0(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x04;

    if (rolypoly->base.xspeed < 0) {
        rolypoly->base.xspeed += 0xe;
        if (rolypoly->base.xspeed > 0) {
            rolypoly->base.xspeed = 0;
        }
    }
    else {
        rolypoly->base.xspeed -= 0xe;
        if (rolypoly->base.xspeed < 0) {
            rolypoly->base.xspeed = 0;
        }
    }

    if (rolypoly->unk9D & (0x20 | 0x10)) {
        if (rolypoly->unk9D & 0x20) {
            rolypoly->base.flags |= 1;
        }
        else if (rolypoly->unk9D & 0x10) {
            rolypoly->base.flags &= ~1;
        }
    }

    if (rolypoly->object->subtype1 && (rolypoly->unk9C & 0x01)) {
        sub_080ACF68(rolypoly);
    }
    else if (rolypoly->unk9C & 0x02) {
        sub_080AD5F4(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

// Always executed before every jump, but only leads to jump if unk62 0x04 flag is set
static void sub_080ACF68(struct Object2* rolypoly) {
    if (!(rolypoly->base.unk62 & 0x04))
        return;

    ObjectSetFunc(rolypoly, 3, RolyPolyJumping);

    rolypoly->base.yspeed = 0x200;
    if (Rand16() & 0x0001) {
        rolypoly->base.yspeed = 0x280;
    }
    rolypoly->base.xspeed = 0x1d0;
    if (rolypoly->base.flags & 0x01) {
        rolypoly->base.xspeed *= -1;
    }
    rolypoly->base.flags |= 0x20;

    PlaySfx(&rolypoly->base, 325);
}

// Always executed during jump through unk78
// Execution ends when unk62 0x04 flag is set (RolyPoly lands?)
static void RolyPolyJumping(struct Object2* rolypoly) {
    if (rolypoly->base.yspeed > 0xb && !(rolypoly->unk9D & 0x01)) {
        rolypoly->base.yspeed = 0xb;
    }

    if (rolypoly->unk9D & (0x20 | 0x10)) {
        if (rolypoly->unk9D & 0x20) {
            rolypoly->base.flags |= 0x01;
        }
        else if (rolypoly->unk9D & 0x10) {
            rolypoly->base.flags &= ~0x01;
        }

        if (rolypoly->base.flags & 0x01) {
            rolypoly->base.xspeed -= 0x10;
            if (rolypoly->base.xspeed < -0x100) {
                rolypoly->base.xspeed = -0x100;
            }
            else if (rolypoly->base.xspeed > 0x100) {
                rolypoly->base.xspeed = 0x100;
            }
        }
        else {
            rolypoly->base.xspeed += 0x10;
            if (rolypoly->base.xspeed > 0x100) {
                rolypoly->base.xspeed = 0x100;
            }
            else if (rolypoly->base.xspeed < -0x100) {
                rolypoly->base.xspeed = -0x100;
            }
        }
    }
    else {
        if (rolypoly->base.xspeed < 0) {
            rolypoly->base.xspeed += 0x4;
            if (rolypoly->base.xspeed > 0) {
                rolypoly->base.xspeed = 0;
            }
        }
        else {
            rolypoly->base.xspeed -= 0x4;
            if (rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed = 0;
            }
        }
    }

    if (rolypoly->base.unk62 & 0x04) {
        rolypoly->base.flags &= ~0x20;
        ObjectSetFunc(rolypoly, 0, sub_080ACEC0);
        rolypoly->base.flags &= ~0x10;
    }

    if (rolypoly->unk9C & 0x02) {
        sub_080AD61C(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

// Always executed before every roll
static void sub_080AD18C(struct Object2* rolypoly) {
    if (rolypoly->base.xspeed < 0) {
        rolypoly->base.xspeed += 0xe;
        if (rolypoly->base.xspeed > 0) {
            rolypoly->base.xspeed = 0;
        }
    }
    else {
        rolypoly->base.xspeed -= 0xe;
        if (rolypoly->base.xspeed < 0) {
            rolypoly->base.xspeed = 0;
        }
    }

    if (rolypoly->base.counter > 0xa) {
        sub_080AD61C(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

// Always executed during roll to the right through unk78
static void sub_080AD1D8(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x04;

    switch (gUnk_082D88B8[rolypoly->base.unk57] & 0xf0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed += 0x6;
                if (rolypoly->base.xspeed > 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            else {
                rolypoly->base.xspeed -= 0x6;
                if (rolypoly->base.xspeed < 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            if (rolypoly->base.xspeed == 0) {
                rolypoly->base.flags |= 0x01;
                rolypoly->unk78 = sub_080AD3D0;
            }
            break;

        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (rolypoly->base.flags & 0x01) {
                rolypoly->base.xspeed -= 0x8;
                if (rolypoly->base.xspeed < -0x1d0) {
                    rolypoly->base.xspeed = -0x1d0;
                }
                else if (rolypoly->base.xspeed > 0x1d0) {
                    rolypoly->base.xspeed = 0x1d0;
                }
            }
            else {
                rolypoly->base.xspeed += 0x8;
                if (rolypoly->base.xspeed > 0x1d0) {
                    rolypoly->base.xspeed = 0x1d0;
                }
                else if (rolypoly->base.xspeed < -0x1d0) {
                    rolypoly->base.xspeed = -0x1d0;
                }
            }

            if (rolypoly->object->subtype1 && rolypoly->unk9C & 0x01) {
                sub_080ACF68(rolypoly);
                return;
            }
            break;

        case 0:
            if (rolypoly->unk9C & 0x01) {
                sub_080ACF68(rolypoly);
                return;
            }

            if (rolypoly->base.flags & 0x20)
                break;

            if (rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed += 0x2;
                if (rolypoly->base.xspeed > 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            else {
                rolypoly->base.xspeed -= 0x2;
                if (rolypoly->base.xspeed < 0) {
                    rolypoly->base.xspeed = 0;
                }
            }

            if (abs(rolypoly->base.xspeed) <= 0x7f) {
                ObjectSetFunc(rolypoly, 0, sub_080ACEC0);
                rolypoly->base.flags &= ~0x10;
                return;
            }
            break;
    }

    if (rolypoly->base.unk62 & 0x04) {
        rolypoly->base.flags &= ~0x20;

        if (rolypoly->base.unk62 & 0x01) {
            if (rolypoly->base.flags & 0x01 && rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed = 0;
            }
            if (!(rolypoly->base.flags & 0x01) && rolypoly->base.xspeed > 0) {
                rolypoly->base.xspeed = 0;
            }
        }
    }

    rolypoly->base.counter++;
}

// Always executed during roll to the left through unk78
static void sub_080AD3D0(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x04;

    switch (gUnk_082D88B8[rolypoly->base.unk57] & 0xf0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (rolypoly->base.flags & 0x01) {
                rolypoly->base.xspeed -= 0x8;
                if (rolypoly->base.xspeed < -0x1d0) {
                    rolypoly->base.xspeed = -0x1d0;
                }
                else if (rolypoly->base.xspeed > 0x1d0) {
                    rolypoly->base.xspeed = 0x1d0;
                }
            }
            else {
                rolypoly->base.xspeed += 0x8;
                if (rolypoly->base.xspeed > 0x1d0) {
                    rolypoly->base.xspeed = 0x1d0;
                }
                else if (rolypoly->base.xspeed < -0x1d0) {
                    rolypoly->base.xspeed = -0x1d0;
                }
            }

            if (rolypoly->object->subtype1 && rolypoly->unk9C & 0x01) {
                sub_080ACF68(rolypoly);
                return;
            }
            break;

        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed += 0x6;
                if (rolypoly->base.xspeed > 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            else {
                rolypoly->base.xspeed -= 0x6;
                if (rolypoly->base.xspeed < 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            if (rolypoly->base.xspeed == 0) {
                rolypoly->base.flags &= ~0x01;
                rolypoly->unk78 = sub_080AD1D8;
            }
            break;

        case 0:
            if (rolypoly->object->subtype1 && rolypoly->unk9C & 0x01) {
                sub_080ACF68(rolypoly);
                return;
            }

            if (rolypoly->base.flags & 0x20)
                break;

            if (rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed += 0x2;
                if (rolypoly->base.xspeed > 0) {
                    rolypoly->base.xspeed = 0;
                }
            }
            else {
                rolypoly->base.xspeed -= 0x2;
                if (rolypoly->base.xspeed < 0) {
                    rolypoly->base.xspeed = 0;
                }
            }

            if (abs(rolypoly->base.xspeed) <= 0x7f) {
                ObjectSetFunc(rolypoly, 0, sub_080ACEC0);
                rolypoly->base.flags &= ~0x10;
                return;
            }
            break;
    }

    if (rolypoly->base.unk62 & 0x04) {
        rolypoly->base.flags &= ~0x20;

        if (rolypoly->base.unk62 & 0x01) {
            if (rolypoly->base.flags & 0x01 && rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed = 0;
            }
            if (!(rolypoly->base.flags & 0x01) && rolypoly->base.xspeed > 0) {
                rolypoly->base.xspeed = 0;
            }
        }
    }

    rolypoly->base.counter++;
}

// Runs once in CreateRolyPoly through gUnk_08351648
// Runs once with significant delay when Kirby hits RolyPoly
static void sub_080AD5D4(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 0, sub_080ACEC0);
    rolypoly->base.flags &= ~0x10;
}

static void sub_080AD5F4(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 1, sub_080AD18C);
    rolypoly->base.xspeed = 0;
    rolypoly->base.flags |= 0x10;
}

static void sub_080AD61C(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 2, sub_080AD3D0);

    if (rolypoly->base.flags & 0x01) {
        rolypoly->base.xspeed -= 0x120;
    }
    else {
        rolypoly->base.xspeed += 0x120;
    }

    rolypoly->base.flags |= 0x10;

    if (rolypoly->base.flags & 0x01) {
        rolypoly->unk78 = sub_080AD3D0;
    }
    else {
        rolypoly->unk78 = sub_080AD1D8;
    }
}
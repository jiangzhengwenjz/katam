#include "roly_poly.h"
#include "kirby.h"
#include "random.h"
#include "task.h"

static void sub_080ACDA4(struct Object2*);
static void RolyPolyIdle(struct Object2*);
static void RolyPolyJump(struct Object2*);
static void RolyPolyJumping(struct Object2*);
static void RolyPolyRollLeadIn(struct Object2*);
static void RolyPolyRollingRight(struct Object2*);
static void RolyPolyRollingLeft(struct Object2*);
static void RolyPolyRoll(struct Object2*);
static void RolyPolyRolling(struct Object2*);

const struct AnimInfo gUnk_083539E4[] = {
    { 0x300, 0x0, 0x0 },
    { 0x300, 0x1, 0x0 },
    { 0x300, 0x2, 0x0 },
    { 0x300, 0x1, 0x0 },
    { 0x300, 0x3, 0x0 },
    { 0x300, 0x4, 0x0 },
};

void* CreateRolyPoly(struct Object* arg0, u8 playerId) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2* tmp = TaskGetStructPtr(task);
    struct Object2* rolypoly = tmp;

    InitObject(rolypoly, arg0, playerId);
    if (rolypoly->base.x > rolypoly->kirby3->base.base.base.x) {
        rolypoly->base.flags |= 0x1;
    }
    else {
        rolypoly->base.flags &= ~0x1;
    }
    sub_0803E2B0(&rolypoly->base, -5, -4, 5, 7);
    sub_0803E308(&rolypoly->base, -6, -5, 6, 9);
    ObjectInitSprite(rolypoly);
    gUnk_08351648[rolypoly->type].unk10(rolypoly);
    rolypoly->unk9E = 0;
    rolypoly->unk7C = sub_080ACDA4;
    return rolypoly;
}

// Always run, always stored in rolypoly->unk7C
// -> Background-Method?
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
                rolypoly->base.flags |= 0x1;
            }
            else {
                rolypoly->base.flags &= ~0x1;
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

static void RolyPolyIdle(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x4;

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
            rolypoly->base.flags |= 0x1;
        }
        else if (rolypoly->unk9D & 0x10) {
            rolypoly->base.flags &= ~0x1;
        }
    }

    if (rolypoly->object->subtype1 && (rolypoly->unk9C & 0x01)) {
        RolyPolyJump(rolypoly);
    }
    else if (rolypoly->unk9C & 0x02) {
        RolyPolyRoll(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

// Always executed before every jump, but only leads to jump if unk62 0x04 flag is set
static void RolyPolyJump(struct Object2* rolypoly) {
    if (!(rolypoly->base.unk62 & 0x04))
        return;

    ObjectSetFunc(rolypoly, 3, RolyPolyJumping);

    rolypoly->base.yspeed = 0x200;
    if (Rand16() & 0x0001) {
        rolypoly->base.yspeed = 0x280;
    }
    rolypoly->base.xspeed = 0x1d0;
    if (rolypoly->base.flags & 0x1) {
        rolypoly->base.xspeed *= -1;
    }
    rolypoly->base.flags |= 0x20;

    PlaySfx(&rolypoly->base, SE_08D585F8);
}

// Execution ends when unk62 0x04 flag is set (RolyPoly lands?),
// but RolyPolyJump() also needs the 0x04 flag to initiate the jump
// -> code_080023A4.c::sub_0800385C() sets it to 0x00 inbetween
// -> code_080023A4.c::sub_080042BC() sets it to 0x04 again when landing
// On ground, both functions are always called -> Ground-Collision detection perhaps
static void RolyPolyJumping(struct Object2* rolypoly) {
    if (rolypoly->base.yspeed > 0xb && !(rolypoly->unk9D & 0x01)) {
        rolypoly->base.yspeed = 0xb;
    }

    if (rolypoly->unk9D & (0x20 | 0x10)) {
        if (rolypoly->unk9D & 0x20) {
            rolypoly->base.flags |= 0x1;
        }
        else if (rolypoly->unk9D & 0x10) {
            rolypoly->base.flags &= ~0x1;
        }

        if (rolypoly->base.flags & 0x1) {
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
        ObjectSetFunc(rolypoly, 0, RolyPolyIdle);
        rolypoly->base.flags &= ~0x10;
    }

    if (rolypoly->unk9C & 0x02) {
        RolyPolyRolling(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

static void RolyPolyRollLeadIn(struct Object2* rolypoly) {
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
        RolyPolyRolling(rolypoly);
    }
    else {
        rolypoly->base.counter++;
    }
}

static void RolyPolyRollingRight(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x4;

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
            rolypoly->base.flags |= 0x1;
            rolypoly->unk78 = RolyPolyRollingLeft;
        }
        break;

    case 0x40000000:
    case 0x50000000:
    case 0x60000000:
        if (rolypoly->base.flags & 0x1) {
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
            RolyPolyJump(rolypoly);
            return;
        }
        break;

    case 0:
        if (rolypoly->unk9C & 0x01) {
            RolyPolyJump(rolypoly);
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
            ObjectSetFunc(rolypoly, 0, RolyPolyIdle);
            rolypoly->base.flags &= ~0x10;
            return;
        }
        break;
    }

    if (rolypoly->base.unk62 & 0x04) {
        rolypoly->base.flags &= ~0x20;

        if (rolypoly->base.unk62 & 0x01) {
            if (rolypoly->base.flags & 0x1 && rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed = 0;
            }
            if (!(rolypoly->base.flags & 0x1) && rolypoly->base.xspeed > 0) {
                rolypoly->base.xspeed = 0;
            }
        }
    }

    rolypoly->base.counter++;
}

static void RolyPolyRollingLeft(struct Object2* rolypoly) {
    rolypoly->base.flags |= 0x4;

    switch (gUnk_082D88B8[rolypoly->base.unk57] & 0xf0000000) {
    case 0x10000000:
    case 0x20000000:
    case 0x30000000:
        if (rolypoly->base.flags & 0x1) {
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
            RolyPolyJump(rolypoly);
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
            rolypoly->base.flags &= ~0x1;
            rolypoly->unk78 = RolyPolyRollingRight;
        }
        break;

    case 0:
        if (rolypoly->object->subtype1 && rolypoly->unk9C & 0x01) {
            RolyPolyJump(rolypoly);
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
            ObjectSetFunc(rolypoly, 0, RolyPolyIdle);
            rolypoly->base.flags &= ~0x10;
            return;
        }
        break;
    }

    if (rolypoly->base.unk62 & 0x04) {
        rolypoly->base.flags &= ~0x20;

        if (rolypoly->base.unk62 & 0x01) {
            if (rolypoly->base.flags & 0x1 && rolypoly->base.xspeed < 0) {
                rolypoly->base.xspeed = 0;
            }
            if (!(rolypoly->base.flags & 0x1) && rolypoly->base.xspeed > 0) {
                rolypoly->base.xspeed = 0;
            }
        }
    }

    rolypoly->base.counter++;
}

// Runs once in CreateRolyPoly through gUnk_08351648
// Runs once with significant delay in object.c::sub_0809B93C when Kirby hits RolyPoly
// -> Transition to Idle State after Damage State?
void sub_080AD5D4(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 0, RolyPolyIdle);
    rolypoly->base.flags &= ~0x10;
}

static void RolyPolyRoll(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 1, RolyPolyRollLeadIn);
    rolypoly->base.xspeed = 0;
    rolypoly->base.flags |= 0x10;
}

static void RolyPolyRolling(struct Object2* rolypoly) {
    ObjectSetFunc(rolypoly, 2, RolyPolyRollingLeft);

    if (rolypoly->base.flags & 0x1) {
        rolypoly->base.xspeed -= 0x120;
    }
    else {
        rolypoly->base.xspeed += 0x120;
    }

    rolypoly->base.flags |= 0x10;

    if (rolypoly->base.flags & 0x1) {
        rolypoly->unk78 = RolyPolyRollingLeft;
    }
    else {
        rolypoly->unk78 = RolyPolyRollingRight;
    }
}


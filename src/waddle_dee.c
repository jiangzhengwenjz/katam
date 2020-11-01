#include "object.h"
#include "waddle_dee.h"

struct Object2* CreateWaddleDee(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Kirby* kirby;
    struct Task* task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    sub_0803E2B0(obj, -5, -4, 5, 7);
    sub_0803E308(obj, -6, -5, 6, 9);
    obj->unk4C = obj->y = ((obj->y + (obj->unk3F << 8)) & 0xfffff000) - (obj->unk3F << 8) - 1;
    kirby = sub_0803D368(obj);
    if (obj->x > kirby->base.x) {
        obj->flags |= 1;
    }
    ObjectInitSprite(obj);
    if (obj->type == OBJ_WADDLE_DEE_2) {
        WaddleDee37ChooseXSpeed(obj);
    }
    else {
        switch (arg0->subtype1) {
        default:
        case 0:
            WaddleDeeChooseXSpeed0(obj);
            break;
        case 1:
            WaddleDeeChooseXSpeed1(obj);
            break;
        case 2:
            WaddleDeeChooseXSpeed2(obj);
            break;
        case 3:
        case 4:
            WaddleDeeSetStill(obj);
            break;
        }
    }
    return obj;
}

void sub_080A3CF0(struct Object2* arg0) {
    arg0->unk84 = 0;
    switch (arg0->object->subtype1) {
    case 1:
        WaddleDeeChooseXSpeed1(arg0);
        break;
    case 2:
        WaddleDeeChooseXSpeed2(arg0);
        break;
    case 3:
        if (arg0->subtype == 2) {
            sub_080A45A8(arg0);
            break;
        }
        else {
            sub_0803E2B0(arg0, -5, -4, 5, 7);
            sub_0803E308(arg0, -6, -5, 6, 9);
        }
    case 0:
    default:
        WaddleDeeChooseXSpeed0(arg0);
        break;
    case 4:
        sub_080A45D8(arg0);
        break;
    }
}

void sub_080A3D8C(struct Object2* arg0) {
    if (arg0->flags & 1) {
        arg0->xspeed -= 5;
        if (arg0->xspeed < -0x80) {
            arg0->xspeed = -0x80;
        }
        else if (arg0->xspeed > 0x80) {
            arg0->xspeed = 0x80;
        }
    }
    else {
        arg0->xspeed += 5;
        if (arg0->xspeed > 0x80) {
            arg0->xspeed = 0x80;
        }
        else if (arg0->xspeed < -0x80) {
            arg0->xspeed = -0x80;
        }
    }
    arg0->counter &= 0x1ff;
    if (arg0->counter & 0x100) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
    if (arg0->unk62 & 1) {
        if (arg0->counter & 0x100) {
            arg0->counter = 0;
            arg0->xspeed = 0;
            arg0->flags &= ~1;
        }
        else {
            arg0->xspeed = 0;
            arg0->counter = 0x100;
            arg0->flags |= 1;
        }
    }
    arg0->counter++;
}

void WaddleDeeChooseXSpeed0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, WaddleDeeReverseX);
    switch (arg0->subtype) {
    case 0:
        arg0->xspeed = 0x80;
        break;
    case 1:
        arg0->xspeed = 0xc0;
        break;
    case 2:
        arg0->xspeed = 0x100;
        break;
    case 3:
        arg0->xspeed = 0x180;
        break;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}

void WaddleDeeChooseXSpeed1(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, WaddleDeeReverseXOnCounter);
    switch (arg0->subtype) {
    case 0:
        arg0->xspeed = 0x80;
        break;
    case 1:
        arg0->xspeed = 0xc0;
        break;
    case 2:
        arg0->xspeed = 0x100;
        break;
    case 3:
        arg0->xspeed = 0x180;
        break;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}

void WaddleDeeReverseXOnCounter(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
        arg0->counter = 0;
    }
    switch (arg0->subtype) {
    case 0:
        if (arg0->counter > 0xc0) {
            arg0->flags ^= 1;
            arg0->xspeed = -arg0->xspeed;
            arg0->counter = 0;
        }
        break;
    case 1:
        if (arg0->counter > 0x80) {
            arg0->flags ^= 1;
            arg0->xspeed = -arg0->xspeed;
            arg0->counter = 0;
        }
        break;
    case 2:
        if (arg0->counter > 0x60) {
            arg0->flags ^= 1;
            arg0->xspeed = -arg0->xspeed;
            arg0->counter = 0;
        }
        break;
    case 3:
        if (arg0->counter > 0x40) {
            arg0->flags ^= 1;
            arg0->xspeed = -arg0->xspeed;
            arg0->counter = 0;
        }
        break;
    }
    arg0->counter++;
}

void WaddleDeeChooseXSpeed2(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4044);
    arg0->counter = 0x64;
    switch (arg0->subtype) {
    case 0:
        arg0->xspeed = 0x80;
        break;
    case 1:
        arg0->xspeed = 0xc0;
        break;
    case 2:
        arg0->xspeed = 0x100;
        break;
    case 3:
        arg0->xspeed = 0x180;
        break;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}

void sub_080A4044(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
    if (arg0->counter == 0x1e) {
        arg0->counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A44C0(arg0);
        }
    }
    else if (arg0->counter > 0xb4) {
        arg0->counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A44C0(arg0);
        }
    }
    if (arg0->unk62 & 4) {
        arg0->counter++;
    }
}

void WaddleDeeChooseXSpeedAndPlaySfx(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A4484);
    arg0->yspeed = 0x280;
    switch (arg0->subtype) {
    case 0:
        arg0->xspeed = 0x80;
        break;
    case 1:
        arg0->xspeed = 0xc0;
        break;
    case 2:
        arg0->xspeed = 0x100;
        break;
    case 3:
        arg0->xspeed = 0x180;
        break;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
    PlaySfx(arg0, 0x145);
}

void sub_080A41F4(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 4) {
        arg0->unk84 = 0;
        if (arg0->unk85 == 1) {
            sub_080A3CF0(arg0);
        }
        else {
            sub_0803E2B0(arg0, -5, -4, 5, 7);
            sub_0803E308(arg0, -6, -5, 6, 9);
            arg0->unk83 = 0;
            arg0->flags &= ~0x40;
            arg0->xspeed = 0x80;
            if (arg0->unk62 & 1) {
                arg0->flags ^= 1;
            }
            if (arg0->flags & 1) {
                arg0->xspeed = -arg0->xspeed;
            }
        }
    }
    else {
        arg0->unk83 = 3;
        if (arg0->counter != 0) {
            arg0->flags |= 0x40;
            arg0->unk85 = 1;
        }
    }
}

void WaddleDee37ChooseXSpeed(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, WaddleDee37CheckTurnAround);
    switch (arg0->subtype) {
    case 0:
        arg0->xspeed = 0x80;
        break;
    case 1:
        arg0->xspeed = 0xc0;
        break;
    case 2:
        arg0->xspeed = 0x100;
        break;
    case 3:
        arg0->xspeed = 0x180;
        break;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}

void WaddleDee37CheckTurnAround(struct Object2* arg0) {
    if (arg0->flags & 1) {
        if ((arg0->x + arg0->unk3E * 256) >= (arg0->unkA8 * 256 - 2048)) {
            arg0->unk62 |= 2;
            arg0->x = (arg0->unkA8 * 256) - ({arg0->unk3E * 256 + 2048;});
            
        }
        else if ((arg0->x + arg0->unk3C * 256) <= (arg0->unkA4 * 256 + 2048)) {
            arg0->unk62 |= 1;
            arg0->x = (arg0->unkA4 * 256) - ({arg0->unk3C * 256 - 2048;});
        }
        
    }
    else {
        if ((arg0->x + arg0->unk3C * 256) <= (arg0->unkA4 * 256 + 2048)) {
            arg0->unk62 |= 2;
            arg0->x = (arg0->unkA4 * 256) - ({arg0->unk3C * 256 - 2048;});
        }
        else if ((arg0->x + arg0->unk3E * 256) >= (arg0->unkA8 * 256 - 2048)) {
            arg0->unk62 |= 1;
            arg0->x = (arg0->unkA8 * 256) - ({arg0->unk3E * 256 + 2048;});
        }
    }
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
}

void WaddleDeeReverseX(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
}

void sub_080A4484(struct Object2* arg0) {
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
    if (arg0->unk62 & 4) {
        WaddleDeeChooseXSpeed2(arg0);
    }
}

void sub_080A44C0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080A44E4);
    arg0->xspeed = 0;
    arg0->unk85 = 0;
}

void sub_080A44E4(struct Object2* arg0) {
    if (arg0->flags & 2) {
        if (arg0->unk85 != 0) {
            WaddleDeeChooseXSpeedAndPlaySfx(arg0);
        }
        else {
            arg0->flags |= 4;
            arg0->unk85 = 1;
        }
    }
}

void WaddleDeeSetStill(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4568);
    arg0->xspeed = 0;
    arg0->yspeed = 0;
    arg0->unk85 = 0;
    sub_0803E2B0(arg0, -5, -16, 5, 7);
    arg0->unk84 = 5;
    arg0->flags |= 0x2000;
}

void sub_080A4568(struct Object2* arg0) {
    arg0->flags &= ~0x2000;
    if (arg0->object->subtype1 == 3) {
        sub_080C29C0(arg0, arg0->object->subtype2);
        sub_080A45A8(arg0);
    }
    else {
        sub_080C29C0(arg0, 2);
        sub_080A45D8(arg0);
    }
}

void sub_080A45A8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A41F4);
    arg0->xspeed = 0;
    arg0->yspeed = 0;
    arg0->unk85 = 0;
    arg0->unk84 = 5;
}

void sub_080A45D8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4608);
    arg0->xspeed = 0;
    arg0->yspeed = 0;
    arg0->unk85 = 0;
    arg0->unk84 = 5;
}

void sub_080A4608(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 4) {
        arg0->unk83 = 0;
        arg0->flags &= ~0x40;
        arg0->xspeed = 0;
        arg0->yspeed = 0;
    }
    else {
        arg0->unk83 = 3;
        arg0->flags |= 0x40;
    }
}

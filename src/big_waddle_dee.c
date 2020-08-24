#include "big_waddle_dee.h"
#include "functions.h"
#include "object.h"
#include "task.h"

struct Object2* CreateBigWaddleDee(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Kirby *kirby;
    struct Task *task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x80 << 0xe;
    obj->unk5C &= ~7;
    obj->unk5C |= 3;
    sub_0803E2B0(obj, -8, -4, 8, 10);
    sub_0803E308(obj, -7, -7, 7, 14);
    kirby = sub_0803D368(obj);
    if (obj->x > kirby->base.x) {
        obj->flags |= 1;
    }
    ObjectInitSprite(obj);
    obj->unk10.unk14 = 0x6c0;
    switch (arg0->unkE) {
    default:
    case 0:
        sub_080A4C34(obj);
        break;
    case 1:
        sub_080A4CA0(obj);
        break;
    case 2:
        sub_080A4DB0(obj);
        break;
    }
    return obj;
}

void sub_080A4B68(struct Object2* arg0) {
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

void sub_080A4C34(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A5000);
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

void sub_080A4CA0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4D0C);
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

void sub_080A4D0C(struct Object2* arg0) {
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

void sub_080A4DB0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A4E20);
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

void sub_080A4E20(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
    if (arg0->counter == 0x1e) {
        arg0->counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A5030(arg0);
        }
    }
    else if (arg0->counter > 0xb4) {
        arg0->counter = 0;
        if ((Rand16() & 3) == 0) {
            sub_080A5030(arg0);
        }
    }
    if (arg0->unk62 & 4) {
        arg0->counter++;
    }
}

void sub_080A4ED0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A5084);
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

void sub_080A4FD0(struct Object2* arg0) {
    switch (arg0->unkB0->unkE) {
    default:
    case 0:
        sub_080A4C34(arg0);
        break;
    case 1:
        sub_080A4CA0(arg0);
        break;
    case 2:
        sub_080A4DB0(arg0);
        break;
    }
}

void sub_080A5000(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
}

void sub_080A5030(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080A5054);
    arg0->xspeed = 0;
    arg0->unk85 = 0;
}

void sub_080A5054(struct Object2* arg0) {
    if (arg0->flags & 2) {
        if (arg0->unk85 != 0) {
            sub_080A4ED0(arg0);
        }
        else {
            arg0->flags |= 4;
            arg0->unk85 = 1;
        }
    }
}

void sub_080A5084(struct Object2* arg0) {
    if (arg0->unk62 & 1) {
        arg0->flags ^= 1;
        arg0->xspeed = -arg0->xspeed;
    }
    if (arg0->unk62 & 4) {
        sub_080A4DB0(arg0);
    }
}

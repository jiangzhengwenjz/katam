#include "gordo.h"
#include "object.h"

struct Object2* CreateGordo(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Object2* kirby;
    struct Task* task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x4000;
    obj->flags |= 0x8040;
    obj->flags |= 0x2000000;
    obj->unkC |= 1;
    obj->unkC |= 0x100;
    obj->unkC |= 4;
    obj->unk5C |= 0x00400020;
    obj->unk5C &= ~7;
    obj->unk5C |= 6;
    sub_0803E2B0(obj, -5, -5, 5, 5);
    sub_0803E308(obj, -4, -4, 4, 4);
    ObjectInitSprite(obj);
    switch (arg0->unkE) {
    default:
    case 0:
        GordoInitType0(obj);
        break;
    case 1:
        GordoInitType1(obj);
        break;
    case 2:
        GordoInitType2(obj);
        break;
    case 3:
        GordoInitType3(obj);
        break;
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

void GordoSlowDownX(struct Object2* arg0) {
    if (arg0->xspeed < 0) {
        arg0->xspeed += 0xe;
        if (arg0->xspeed > 0) {
            arg0->xspeed = 0;
        }
    }
    else {
        arg0->xspeed -= 0xe;
        if (arg0->xspeed < 0) {
            arg0->xspeed = 0;
        }
    }
    arg0->counter++;
}

void GordoSetYSpeed(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->counter & 0x10) {
        arg0->yspeed = -(0x40 << ((arg0->counter >> 3) & 1));
    }
    else {
        arg0->yspeed = 0x40 << (arg0->counter >> 3);
    }
    arg0->counter++;
    arg0->counter &= 0x1f;
}

void GordoSetXYSpeed(struct Object2* arg0) {
    arg0->flags |= 4;
    arg0->xspeed = gUnk_08352E04[arg0->counter];
    if (arg0->unk62 & 8) {
        arg0->yspeed = -0xc0 - (arg0->subtype * 64);
    }
    else if (arg0->unk62 & 4) {
        arg0->yspeed = 0xc0 + (arg0->subtype * 64);
    }
    arg0->counter++;
    arg0->counter &= 7;
}

void GordoChooseYSpeed(struct Object2* arg0) {
    arg0->flags |= 4;
    
    if (arg0->counter >= 0x90) {
        switch (arg0->counter) {
        case 0x90:
            arg0->yspeed = -0x80;
            break;
        case 0xa0:
            arg0->yspeed = -0xc0;
            break;
        case 0x100:
            arg0->yspeed = -0x80;
            break;
        case 0x110:
            arg0->yspeed = 0;
            break;
        }
    }
    else {
        switch (arg0->counter) {
        case 0:
            arg0->yspeed = 0x80;
            break;
        case 0x10:
            arg0->yspeed = 0xc0;
            break;
        case 0x70:
            arg0->yspeed = 0x80;
            break;
        case 0x80:
            arg0->yspeed = 0;
            break;
        }
    }

    arg0->counter++;
    if (arg0->counter > 0x11f) {
        arg0->counter = 0;
    }
}

void sub_0809FC58(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSlowDownX);
}

void GordoInitType0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSetYSpeed);
    arg0->flags |= 0x100;
}

void GordoInitType1(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSetXYSpeed);
    arg0->yspeed = -0xc0;
}

void GordoInitType2(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSlowDownXAndSetY);
    arg0->xspeed = -0xc0 - (arg0->subtype * 64);
}

void GordoSlowDownXAndSetY(struct Object2* arg0) {
    arg0->flags |= 4;
    arg0->yspeed = gUnk_08352E04[arg0->counter];
    if (arg0->unk62 & 3) {
        arg0->xspeed = -arg0->xspeed;
    }
    arg0->counter++;
    arg0->counter &= 7;
}

void GordoInitType3(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoChooseYSpeed);
    arg0->flags |= 0x100;
}

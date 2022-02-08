#include "gordo.h"
#include "object.h"
#include "kirby.h"

static void GordoInitType0(struct Object2*);
static void GordoInitType1(struct Object2*);
static void GordoInitType2(struct Object2*);
static void GordoSlowDownXAndSetY(struct Object2*);
static void GordoInitType3(struct Object2*);

void* CreateGordo(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x4000;
    obj->base.flags |= 0x8040;
    obj->base.flags |= 0x2000000;
    obj->base.unkC |= 1;
    obj->base.unkC |= 0x100;
    obj->base.unkC |= 4;
    obj->base.unk5C |= 0x00400020;
    obj->base.unk5C &= ~7;
    obj->base.unk5C |= 6;
    sub_0803E2B0(&obj->base, -5, -5, 5, 5);
    sub_0803E308(&obj->base, -4, -4, 4, 4);
    ObjectInitSprite(obj);
    switch (arg0->subtype1) {
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

static void GordoSlowDownX(struct Object2* arg0) {
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
    arg0->base.counter++;
}

static void GordoSetYSpeed(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.counter & 0x10) {
        arg0->base.yspeed = -(0x40 << ((arg0->base.counter >> 3) & 1));
    }
    else {
        arg0->base.yspeed = 0x40 << (arg0->base.counter >> 3);
    }
    arg0->base.counter++;
    arg0->base.counter &= 0x1f;
}

static void GordoSetXYSpeed(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.xspeed = gUnk_08352E04[arg0->base.counter];
    if (arg0->base.unk62 & 8) {
        arg0->base.yspeed = -0xc0 - (arg0->subtype * 64);
    }
    else if (arg0->base.unk62 & 4) {
        arg0->base.yspeed = 0xc0 + (arg0->subtype * 64);
    }
    arg0->base.counter++;
    arg0->base.counter &= 7;
}

static void GordoChooseYSpeed(struct Object2* arg0) {
    arg0->base.flags |= 4;
    
    if (arg0->base.counter >= 0x90) {
        switch (arg0->base.counter) {
        case 0x90:
            arg0->base.yspeed = -0x80;
            break;
        case 0xa0:
            arg0->base.yspeed = -0xc0;
            break;
        case 0x100:
            arg0->base.yspeed = -0x80;
            break;
        case 0x110:
            arg0->base.yspeed = 0;
            break;
        }
    }
    else {
        switch (arg0->base.counter) {
        case 0:
            arg0->base.yspeed = 0x80;
            break;
        case 0x10:
            arg0->base.yspeed = 0xc0;
            break;
        case 0x70:
            arg0->base.yspeed = 0x80;
            break;
        case 0x80:
            arg0->base.yspeed = 0;
            break;
        }
    }

    arg0->base.counter++;
    if (arg0->base.counter > 0x11f) {
        arg0->base.counter = 0;
    }
}

void sub_0809FC58(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSlowDownX);
}

static void GordoInitType0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSetYSpeed);
    arg0->base.flags |= 0x100;
}

static void GordoInitType1(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSetXYSpeed);
    arg0->base.yspeed = -0xc0;
}

static void GordoInitType2(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoSlowDownXAndSetY);
    arg0->base.xspeed = -0xc0 - (arg0->subtype * 64);
}

static void GordoSlowDownXAndSetY(struct Object2* arg0) {
    arg0->base.flags |= 4;
    arg0->base.yspeed = gUnk_08352E04[arg0->base.counter];
    if (arg0->base.unk62 & 3) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    arg0->base.counter++;
    arg0->base.counter &= 7;
}

static void GordoInitType3(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, GordoChooseYSpeed);
    arg0->base.flags |= 0x100;
}

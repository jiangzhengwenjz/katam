#ifndef GUARD_LASER_BALL_H
#define GUARD_LASER_BALL_H

#include "data.h"
#include "global.h"
#include "object.h"

struct Laser {
    struct ObjectBase base;
    u32 (*unk78)(struct Laser* arg0);
    u32 (*unk7C)(struct Laser* arg0);
    u32 (*unk80)(struct Laser* arg0);
    u32 unk84;
    u8 unk88;
    u8 unk89;
    u16 unk8A;
};

void* CreateLaserBall(struct Object* arg0, u8 arg1);

#endif

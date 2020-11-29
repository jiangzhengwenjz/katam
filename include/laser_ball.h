#ifndef GUARD_LASER_BALL_H
#define GUARD_LASER_BALL_H

#include "data.h"
#include "global.h"
#include "object.h"

struct Laser {
    struct ObjectBase base;
    struct Object2* parent;
    u8 filler74[4];
    u32 (*unk78)(struct Laser* arg0);
    u32 (*unk7C)(struct Laser* arg0);
    u32 (*unk80)(struct Laser* arg0);
    u32 unk84;
    u8 unk88;
    u8 unk89;
    u16 unk8A;
};

struct Object2* CreateLaserBall(struct Object* arg0, u8 arg1);
void sub_080B2330(struct Object2* arg0);
void sub_080B2710(struct Object2* arg0);
void sub_080B2780(struct Object2* arg0);
u32 sub_080B2A30(struct Laser* arg0);
void sub_080B2BE0(struct Object2* arg0);
void sub_080B2D08(struct Object2* arg0);
void sub_080B2C48(struct Object2* arg0);
void sub_080B2CAC(struct Object2* arg0);
void sub_080B2CD0(struct Object2* arg0);
void sub_080B2D68(struct Object2* arg0);
u32 sub_080B2D74(struct Laser* arg0);

#endif

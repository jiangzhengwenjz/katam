#ifndef GUARD_LASER_BALL
#define GUARD_LASER_BALL

#include "data.h"
#include "global.h"
#include "object.h"

struct Laser {
    u8 unk0;
    u8 unk1;
    u16 filler2;
    s16 counter;
    u8 filler6[2];
    u32 flags;
    u32 unkC;
    struct Sprite unk10;
    s8 unk38;
    s8 unk39;
    s8 unk3A;
    s8 unk3B;
    s8 unk3C;
    s8 unk3D;
    s8 unk3E;
    s8 unk3F;
    s32 x;
    s32 y;
    u32 unk48;
    u32 unk4C;
    s16 xspeed;
    s16 yspeed;
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    u32 unk5C;
    u16 unk60;
    u8 unk62;
    u8 unk63;
    u16 unk64;
    u16 unk66;
    u32 unk68;
    struct Kirby* kirby1;
    struct Object2* parent;
    u8 filler74[4];
    void (*unk78)(struct Laser* arg0);
    void (*unk7C)(struct Laser* arg0);
    void (*unk80)(struct Laser* arg0);
    u32 unk84;
    u8 unk88;
    u8 unk89;
    u16 unk8A;
};

struct Object2* CreateLaserBall(struct Object* arg0, u8 arg1);
void sub_080B2330(struct Object2* arg0);
void sub_080B2710(struct Object2* arg0);
void sub_080B2780(struct Object2* arg0);
void sub_080B2A30(struct Laser* arg0);
void sub_080B2C48(struct Object2* arg0);
void sub_080B2CAC(struct Object2* arg0);
void sub_080B2D74(struct Laser* arg0);

#endif

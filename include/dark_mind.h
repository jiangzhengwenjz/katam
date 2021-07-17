#ifndef GUARD_DARK_MIND_H
#define GUARD_DARK_MIND_H

#include "global.h"
#include "object.h"

struct DarkMindForm1
{
    struct Object2 unk0;
    struct Object2 *unkB4;
    struct Object2 *unkB8;
    struct Object2 *unkBC;
    struct Object2 *unkC0;
    struct Object2 *unkC4;
    struct ObjectBase *unkC8;
    struct Object4 *unkCC;
    struct Object6 *unkD0;
    u8 unkD4;
    u8 unkD5;
    s16 unkD6;
    s16 unkD8;
    u8 unkDA;
    s8 unkDB;
    s16 unkDC;
    s16 unkDE;
    s16 unkE0;
    s8 unkE2;
    u8 unkE3;
}; /* size = 0xE4 */

struct DarkMindBomb
{
    struct Object2 unk0;
    struct Object6 *unkB4;
}; /* size = 0xB8 */

struct Object9
{
    struct Object4 unk0;
    s32 unk48[4][2];
    s16 unk68[4][2];
}; /* size = 0x78 */

struct Object12 // sub_0810F320, form 2 mirror? 
{
    struct Object2 unk0;
    struct Sprite unkB4;
    u32 unkDC;
    u8 unkE0;
    s8 unkE1;
    u8 unkE2;
    s8 unkE3;
    s16 unkE4;
}; /* size = 0xE8 */

struct DarkMindForm2
{
    struct Object2 unk0;
    struct Sprite unkB4;
    struct Task *unkDC;
    const u8 *unkE0;
    struct Object11 unkE4;
    struct Object11 unkF0;
    struct Object12 *unkFC;
    struct Object12 *unk100;
    struct Object2 *laser;
    struct Object2 *laserShower;
    struct DarkMindBomb *bomb;
    struct Object2 *enemy3;
    struct Object2 *enemy2;
    struct Object2 *enemy1;
    s16 unk11C;
    u16 unk11E;
    s16 unk120;
    s16 unk122;
    s16 unk124;
    u8 unk126;
    u8 unk127;
    u8 unk128;
    u8 unk129;
    u8 unk12A;
    u8 unk12B;
    u8 unk12C;
    u8 unk12D;
    u8 unk12E;
    u8 unk12F;
    u8 unk130;
    u8 unk131;
    u8 unk132;
    u8 unk133;
    u8 unk134;
    u8 unk135;
    u8 unk136;
    u8 unk137;
    u8 unk138;
    u8 unk139;
}; /* size = 0x13C */

void sub_081111C4(struct Object12 *);

#endif

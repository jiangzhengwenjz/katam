#ifndef GUARD_DARK_MIND_H
#define GUARD_DARK_MIND_H

#include "global.h"
#include "object.h"

struct DarkMindForm1
{
    struct Object2 unk0;
    struct Object2 *unkB4;
    struct Object2 *unkB8;
    struct DarkMindBomb *unkBC;
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

struct Object13
{
    struct Object4 unk0;
    s32 unk48[4][2];
    s16 unk68[4];
}; /* size = 0x70 */

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

struct DarkMindTrigger
{
    struct Object2 unk0;
    struct Object4 *unkB4;
    u16 fillerB8;
    s16 unkBA;
    s16 unkBC;
    u8 unkBE;
    u8 unkBF;
    u8 unkC0;
}; /* size = 0xC4 */

void *CreateDarkMindForm1(struct Object *, u8);
void *CreateShadowKirbyBomb(struct Object *, u8);
void *CreateDarkMindStar(struct Object *, u8);
void *CreateDarkMindBomb(struct Object *, u8);
void *CreateDarkMindForm2(struct Object *, u8);
void *sub_0810F320(struct Object *, u8);
void *sub_081113EC(struct Object *, u8);
void *sub_08111984(struct Object *, u8);
void *CreateDarkMindMirrorCutter(struct Object *, u8);
void *CreateDarkMindTrigger(struct Object *, u8);
void *sub_08117BBC(struct Object *, u8);
void *sub_08107780(struct Object *, u8);

void sub_08101630(struct DarkMindForm1 *);
void sub_081099A4(struct DarkMindBomb *);
void sub_0810C9C8(struct DarkMindForm2 *);
void sub_08114BA0(struct DarkMindTrigger *);
void sub_08109960(struct Object2 *);
void sub_08106508(struct Object2 *);
void sub_08113BAC(struct Object2 *);
void sub_08113BEC(struct Object2 *);
void sub_08113C10(struct Object2 *);
void sub_08113B68(struct Object12 *);
void sub_081099C0(struct Object2 *);

void sub_0810B830(void);
void sub_081111C4(struct Object12 *);
void sub_08113C34(UNUSED s32, u8);
void sub_08113C90(void);

extern const struct Unk_02021590 gUnk_083571F0[];
extern const struct Unk_02021590 gUnk_08357220[];
extern const struct Unk_02021590 gUnk_0835722C[];
extern const struct Unk_02021590 gUnk_0835723C[];
extern const struct Unk_02021590 gUnk_08357300;
extern const struct Unk_02021590 gUnk_08357324[];
extern const struct Unk_02021590 gUnk_08357348[];
extern const struct Unk_02021590 gUnk_08357358[];
extern const struct Unk_02021590 gUnk_08357364[];
extern const struct Unk_08353510 gUnk_083576B4[];
extern const struct Unk_08353510 gUnk_083577BC[];
extern const struct Unk_08353510 gUnk_083578A0[];
extern const struct Unk_08353510 gUnk_083579A8[];
extern const struct Unk_02021590 gUnk_08357AC4[];

#endif

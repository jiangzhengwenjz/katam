#ifndef GUARD_BONUS_H
#define GUARD_BONUS_H

#include "global.h"
#include "data.h"
#include "task.h"

struct Kirby {
    u8 unk0;
    u8 filler1[0x3f];
    s32 unk40;
    s32 unk44;
    u8 filler48[0xe];
    u8 unk56;
    u8 filler57[9];
    u16 unk60;
    u8 filler62[0x7a];
    u8 unkDC;
    u8 fillerDD[4];
    u8 unkE1;
    u16 unkE2;
    u8 unkE4;
    u8 unkE5;
    u8 fillerE6[0x100-0xE6];
    s8 hp;
    s8 maxHp;
    u8 lifes;
    u8 filler103[0xa5];
};

struct BonusObject_70 {
    u8 filler0[8];
    u32 unk8;
    u8 fillerC[0xc8];
    u16 unkD4;
};

struct BonusObject_B0 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[0xa];
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 filler11[0x11];
    u16 unk22;
};

struct BonusObject { // might be a struct for more general purpose
    u8 unk0;
    u8 filler1[3];
    s16 unk4;
    u8 filler6[2];
    u32 unk8;
    u32 unkC;
    u8 fillerC[0x14];
    u16 unk24;
    u8 filler26[0x19];
    s8 unk3F;
    u8 filler40[4];
    u32 unk44;
    u8 filler48[4];
    u32 unk4C;
    u16 unk50;
    u16 unk52;
    u8 filler54[2];
    u8 unk56;
    u8 filler57[5];
    u32 unk5C;
    u16 unk60;
    u8 filler62[0x6];
    u32 unk68;
    struct Kirby* unk6C;
    struct BonusObject_70* unk70;
    u8 filler74[4];
    void (*unk78)(struct BonusObject* arg0);
    u8 filler7C[4];
    s16 unk80;
    u8 unk82;
    u8 unk83;
    u8 filler84[0x2c];
    struct BonusObject_B0* unkB0;
};

struct Unk_08D60FA4 {
    u8 filler0[4];
    s32 unk4;
    u8 filler8[1];
    u8 unk9;
};

struct Unk_08351648 {
    u8 filler0[4];
    u16 unk4;
    u8 filler6[0x12];
};

struct Unk_03000510 {
    u8 filler0[4];
    u8 unk4;
};

extern struct Object gUnk_020229E0[];

extern u32 gUnk_020229D4;

extern struct Unk_03000510 gUnk_03000510;

extern u16 gUnk_0835105C[];

extern u32 gUnk_0203AD20;

extern struct Unk_08351648 gUnk_08351648[];

extern struct Unk_08D60FA4* gUnk_08D60FA4[];

extern struct Kirby gUnk_02020EE0[];

void sub_08122CEC(struct BonusObject* arg0);
void sub_08122E08(struct BonusObject* arg0);
void sub_08122ED4(struct BonusObject* arg0);
void sub_08122F6C(struct BonusObject* arg0);
void sub_081230A4(struct BonusObject* arg0);
void sub_081232AC(struct Kirby* arg0, u8 arg1);
void sub_08123418(struct BonusObject* arg0);
struct BonusObject* sub_081234D4(struct Kirby* arg0, u16 arg1, u16 arg2);
struct BonusObject* sub_08123570(struct Kirby* arg0);
extern void sub_081237D4(struct BonusObject* arg0);
extern void sub_08123814(struct BonusObject* arg0);
extern void sub_081238FC(struct BonusObject* arg0);
extern void sub_08123780(struct BonusObject*);
extern void sub_081238D0(struct BonusObject*);
extern void sub_08123924(struct BonusObject*);

extern void sub_080029F4(u8, u16);
extern void sub_08033540(u8);
extern u8 sub_0803925C(struct BonusObject*, struct Kirby*);
extern void sub_0808AE30(struct BonusObject*, u32, u16, u8);
extern void sub_0809513C(struct BonusObject*, u8, u8);
extern void sub_0809F030(struct BonusObject*, u32, u8);
extern void sub_0803E2B0(struct BonusObject*, s8, s8, s8, s8);
extern void sub_0803E308(struct BonusObject*, s8, s8, s8, s8);
extern void sub_0809F3E0(struct BonusObject*);
extern void sub_08099B80(void);
extern void sub_0809A1C4(struct Task*);

#endif

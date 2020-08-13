#ifndef GUARD_BONUS_H
#define GUARD_BONUS_H

#include "global.h"
#include "data.h"
#include "task.h"

struct Kirby {
    u8 unk0;
    u8 filler1[0xb];
    u32 unkC;
    u8 filler10[0x30];
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

extern u8 gUnk_08357F24[];

extern u8 gUnk_08357F44[];

void sub_08122CEC(struct Object2* arg0);
void sub_08122E08(struct Object2* arg0);
void sub_08122ED4(struct Object2* arg0);
void sub_08122F6C(struct Object2* arg0);
void sub_081230A4(struct Object2* arg0);
void sub_081232AC(struct Kirby* arg0, u8 arg1);
void sub_08123418(struct Object2* arg0);
struct Object2* sub_081234D4(struct Kirby* arg0, u16 arg1, u16 arg2);
struct Object2* sub_08123570(struct Kirby* arg0);
void sub_08123624(struct Object2* arg0, u8 arg1);
void sub_08123780(struct Object2* arg0);
void sub_081237D4(struct Object2* arg0);
void sub_08123814(struct Object2* arg0);
void sub_0812385C(struct Object2* arg0);
void sub_081238D0(struct Object2* arg0);
void sub_081238FC(struct Object2* arg0);
void sub_08123924(struct Object2* arg0);

extern void sub_080029F4(u8, u16);
extern void sub_08033540(u8);
extern u8 sub_0803925C(struct Object2*, struct Kirby*);
extern void sub_0808AE30(struct Object2*, u32, u16, u8);
extern void sub_0809513C(struct Object2*, u8, u8);
extern void sub_0809F030(struct Object2*, struct Object*, u8);
extern void sub_0803E2B0(struct Object2*, s8, s8, s8, s8);
extern void sub_0803E308(struct Object2*, s8, s8, s8, s8);
extern void sub_0809F3E0(struct Object2*);
extern void sub_08099B80(void);
extern void sub_0809A1C4(struct Task*);
extern void sub_0808324C(struct Kirby*, u16);

#endif

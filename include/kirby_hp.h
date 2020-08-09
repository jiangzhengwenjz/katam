#ifndef KIRBY_HP_H
#define KIRBY_HP_H

#include "global.h"

struct Kirby {
    u8 unk0;
    u8 filler1[0x55];
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
    u8 filler102[0xa6];
};

struct KirbyTask_B0 {
    u8 filler0[2];
    u16 unk2;
};

struct KirbyTask {
    u8 unk0;
    u8 filler1[3];
    s16 unk4;
    u8 filler6[2];
    u32 unk8;
    u8 fillerC[0x4a];
    u8 unk56;
    u8 filler57[9];
    u16 unk60;
    u8 filler62[0xa];
    struct Kirby* unk6C;
    u8 filler70[8];
    void (*unk78)(struct KirbyTask* arg0);
    u8 filler7C[4];
    s16 unk80;
    u8 unk82;
    u8 filler83[0x2d];
    struct KirbyTask_B0* unkB0;
    u8 fillerB4[0x2d];
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

extern struct Unk_03000510 gUnk_03000510;

extern u32 gUnk_0203AD20;

extern struct Unk_08351648 gUnk_08351648[];

extern struct Unk_08D60FA4* gUnk_08D60FA4[];

extern struct Kirby gUnk_02020EE0[];

extern void sub_081230A4(struct KirbyTask* arg0);
extern void sub_08123418(struct KirbyTask* arg0);
extern void sub_081237D4(struct KirbyTask* arg0);

extern void sub_080029F4(u8, u16);
extern void sub_08033540(u8);

#endif

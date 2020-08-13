#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

struct Unk_02023530 {
    u8 unk000[188];
    u16 roomWidth; // 0x0BC
    u16 roomHeight; // 0x0BE
    u8 unk0C0[288];
    struct Unk_0888562C *unk1E0;
    struct Object **objlistPtr; // 0x1E4
    u8 unk1E8[1040];
    u16 currentRoom; // 0x5F8
    u8 unk5FA[100];
    u8 unk65E;
    u8 unk65F[9];
};

struct Object {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 x;
    u16 y;
    u8 fillerA[2];
    u8 type;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
};

struct Object2_70 {
    u8 filler0[8];
    u32 unk8;
    u8 fillerC[0xc8];
    u16 unkD4;
};

struct Object2_B0 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[0xa];
    u8 unkE;
    u8 unkF;
    u8 unk10;
    u8 filler11[0x11];
    u16 unk22;
};

struct Object2 {
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
    s32 unk40;
    s32 unk44;
    u8 filler48[4];
    u32 unk4C;
    u16 unk50;
    s16 unk52;
    u8 filler54[2];
    u8 unk56;
    u8 filler57[5];
    u32 unk5C;
    u16 unk60;
    u8 unk62;
    u8 filler63[0x5];
    u32 unk68;
    struct Kirby* unk6C;
    struct Object2_70* unk70;
    u8 filler74[4];
    void (*unk78)(struct Object2* arg0);
    u8 filler7C[4];
    s16 unk80;
    u8 type;
    u8 unk83;
    u8 filler84[0x2c];
    struct Object2_B0* unkB0;
};

struct Unk_0888562C {
    u8 unk00;
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
};

struct RoomProps {
    u16 songIdx;
    u8 unk02[16];
    u16 priorityFlags;
    u16 pixelDataIdx;
    u16 paletteDataIdx;
    u16 mapDataIdx;
    u16 solidityMapIdx;
    u16 objectList2Idx;
    u16 backgroundIdx;
    u16 objectListIdx;
    u8 unk22[2];
    u16 unk24Idx;
    u8 unk26[2];
};

struct Sprite {
    s32 unk0;
    s32 unk4;
    u32 unk8;
    u16 unkC;
    u8 fillerE[2];
    u16 unk10; // TODO: I think the field is s16, but it breaks function in title_screen.c
    s16 unk12;
    u16 unk14;
    u16 unk16;
    u8 filler18[2];
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u8 filler20[6];
    u8 unk26;
    u8 unk27;
};

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    void* unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    void* unk18;
};

struct Unk_082EAB98 {
    void *unk00[4];
    u32 unk10;
    u16 unk14[4];
    u32 unk1C[4][2];
    u32 unk3C[4];
};

extern u8 gUnk_02023358[];
extern u8 gUnk_02023368[];

extern u8 gUnk_02024ED0[][1950];
extern u8 gUnk_02026D60[][1954];

extern u8 gUnk_02028BF0[];

extern struct Unk_02023530 gUnk_02023530[4];
extern u32 gUnk_02038580;
extern u16 gUnk_02038990[][2];
extern u32 gUnk_0203AD10;
extern u8 gUnk_0203AD1C[];
extern u8 gUnk_0203AD24;
extern u16 gUnk_0203AD2C;
extern u8 gUnk_0203AD30;
extern u8 gUnk_0203AD3C;
extern u8 gUnk_0203AD44;
extern u16 gUnk_0203ADE0;

extern u8 gUnk_03000554;

extern u32 gUnk_03002440;
extern u32 gUnk_03002E60;
extern const u32* gUnk_03003674;

extern u32 gRngVal;
#define Rand32() ({ gRngVal = gRngVal * 1663525 + 1013904223; })
#define Rand16() (Rand32() >> 16)

extern const struct Unk_082D7850* gUnk_082D7850[];

extern struct Object2 *(*gSpawnFuncTable2[])(struct Object *, u8);
extern struct Object2 *(*gSpawnFuncTable1[])(struct Object *, u8);

extern const u32 gUnk_083B909C;

extern struct Object (*gUnk_08D637AC[])[];
extern struct RoomProps gUnk_089331AC[];

#endif

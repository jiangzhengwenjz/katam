#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

#define PlaySfx(ptr, num) \
    if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == ptr->unk60) \
        if ((ptr->unk0 != 0) || (ptr->unk56 == gUnk_0203AD3C)) \
            if (gUnk_08D60FA4[gSongTable[num].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[num].ms]->unk9 <= gSongTable[num].header->priority) \
                if (gSongTable[num].ms == 0 || !(gUnk_0203AD10 & 0x100)) \
                    m4aSongNumStart(num);

struct Unk_02023720 {
    struct Unk_02023720 *unk00;
    struct Unk_02023720 *unk04;
    u8 *unk08;
    u32 unk0C;
};

struct Unk_02023530 {
    u8 unk000[188];
    u16 roomWidth; // 0x0BC
    u16 roomHeight; // 0x0BE
    u8 unk0C0[288];
    struct Unk_0888562C *unk1E0;
    struct Object **objlistPtr; // 0x1E4
    u8 unk1E8[8];
    struct Unk_02023720 unk1F0;
    u8 unk1F4[1016];
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
    u32 flags;
    u32 unkC;
    u8 fillerC[0x14];
    u16 unk24;
    u8 filler26[0x16];
    s8 unk3C;
    u8 unk3D;
    s8 unk3E;
    s8 unk3F;
    s32 x;
    s32 y;
    u8 filler48[4];
    u32 unk4C;
    s16 xspeed;
    s16 yspeed;
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
    u8 unk84;
    u8 unk85;
    u8 unk86;
    u8 unk87;
    u8 filler88[0x1c];
    s16 unkA4;
    u8 fillerA6[2];
    s16 unkA8;
    u8 fillerAA[6];
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

struct Kirby {
    u8 unk0;
    u8 filler1[0xb];
    u32 unkC;
    u8 filler10[0x30];
    s32 x;
    s32 y;
    u8 filler48[0xe];
    u8 unk56;
    u8 filler57[9];
    u16 unk60;
    u8 filler62[0x7a];
    u8 battery;
    u8 fillerDD[4];
    u8 unkE1;
    u16 unkE2;
    u8 unkE4;
    u8 unkE5;
    u8 fillerE6[0x100-0xE6];
    s8 hp;
    s8 maxHp;
    u8 lives;
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

struct Unk_08930E00 {
    u8 unk00;
    u8 unk01;
    u8 unk02[2];
    s16 unk04;
    s16 unk06;
};

struct Unk_08930E5C {
    struct Unk_08930E00 *unk00;
    u8 unk04;
};

extern u32 gUnk_02023388[][16];
extern u32 gUnk_02023488[];

extern u8 gUnk_02023358[];
extern u8 gUnk_02023368[];

extern u16 gUnk_02023508[];
extern u16 gUnk_02023510[];
extern u16 gUnk_02023518[];
extern u16 gUnk_02023520[][2];

extern u8 gUnk_02024ED0[][1950];
extern u8 gUnk_02026D60[][1954];

extern u8 gUnk_02028BF0[];
extern u32 gUnk_02028C10[];
extern u16 gUnk_02028CA0[];

extern u32 gUnk_020229D4;
extern struct Object gUnk_020229E0[];

extern struct Unk_02023530 gUnk_02023530[4];
extern u32 gUnk_02038580;
extern u16 gUnk_02038990[][2];
extern u32 gUnk_0203AD10;
extern u8 gUnk_0203AD1C[];
extern u32 gUnk_0203AD20;
extern u8 gUnk_0203AD24;
extern u16 gUnk_0203AD2C;
extern u8 gUnk_0203AD30;
extern u8 gUnk_0203AD3C;
extern u8 gUnk_0203AD44;
extern u16 gUnk_0203ADE0;
extern struct Kirby gUnk_02020EE0[];

extern struct Unk_03000510 gUnk_03000510;
extern u8 gUnk_03000554;

extern u32 gUnk_03002440;
extern u32 gUnk_03002E60;
extern const u32* gUnk_03003674;

extern u32 gRngVal;
#define Rand32() ({ gRngVal = gRngVal * 1663525 + 1013904223; })
#define Rand16() (Rand32() >> 16)

extern const struct Unk_082D7850* gUnk_082D7850[];

extern struct Object2 *(*const gSpawnFuncTable2[])(struct Object *, u8);
extern struct Object2 *(*const gSpawnFuncTable1[])(struct Object *, u8);

extern const u16 gUnk_0835105C[];
extern const struct Unk_08351648 gUnk_08351648[];

extern const u8 gUnk_08357F24[];
extern const u8 gUnk_08357F44[];

extern const u32 gUnk_083B909C;

extern const struct Unk_08D60FA4* gUnk_08D60FA4[];
extern const struct Object (*gUnk_08D637AC[])[];
extern const struct Unk_08930E5C *gUnk_08D640A4[];

extern const struct RoomProps gUnk_089331AC[];

#endif

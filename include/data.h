#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

#define PlaySfx(ptr, num) \
    ({if (gKirbys[gUnk_0203AD3C].base.base.unk60__42 == (ptr)->unk60__42) \
        if (((ptr)->unk0 != 0) || ((ptr)->unk56 == gUnk_0203AD3C)) \
            if (gUnk_08D60FA4[gSongTable[(num)].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[(num)].ms]->unk9 <= gSongTable[(num)].header->priority) \
                if (gSongTable[(num)].ms == 0 || !(gUnk_0203AD10 & 0x100)) \
                    m4aSongNumStart((num)); \
    })

#define Rand32() ({ gRngVal = gRngVal * 1663525 + 1013904223; })
#define Rand16() (Rand32() >> 16)

#define RandLessThan3() \
({ \
    u16 _variable; \
    u16 _rand = Rand16(); \
 \
    if (_rand < 0x5555) \
        _variable = 0; \
    else if (_rand < 0xAAAA) \
        _variable = 1; \
    else \
        _variable = 2; \
    _variable; \
})

struct Unk_02023720 {
    struct Unk_02023720 *unk00;
    struct Unk_02023720 *unk04;
    u8 *unk08;
    u32 unk0C;
};

struct LevelInfo_1A0 {
    u16 unk0, unk2;
    u8 filler4[0x14];
    const u16 *unk1C;
    u8 filler1C[4];
}; /* size = 0x20 */

struct LevelInfo_1E4 {
    const void *unk0;
    const u8 *unk4;
    const u8 *unk8;
    u8 unkC;
    u8 unkD;
}; /* size = 0x10 */

struct LevelInfo {
    u32 unk0;
    u8 filler4[4];
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
    s32 unk40;
    u16 unk44;
    u16 unk46;
    s32 unk48;
    s32 unk4C;
    s32 unk50;
    s32 unk54;
    s32 unk58;
    s32 unk5C;
    s32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
    s32 unk78;
    s32 unk7C;
    s32 unk80;
    s32 unk84;
    s32 unk88;
    s32 unk8C;
    s32 unk90;
    s32 unk94;
    s32 unk98;
    s32 unk9C;
    s32 unkA0;
    s32 unkA4;
    s32 unkA8;
    s32 unkAC;
    s32 unkB0;
    u16 unkB4;
    u16 unkB6;
    u16 unkB8;
    u16 unkBA;
    u16 roomWidth;
    u16 roomHeight;
    u8 fillerC0[0xC0];
    u8 filler180[0x20]; // also struct LevelInfo_1A0? 
    struct LevelInfo_1A0 unk1A0;
    struct LevelInfo_1A0 unk1C0; // possibly another struct type
    struct Unk_0888562C *unk1E0;
    const struct LevelInfo_1E4 *objlistPtr;
    u32 unk1E8;
    u32 unk1EC;
    struct Unk_02023720 unk1F0;
    u8 unk1F4[1016];
    u16 currentRoom;
    u16 unk5FA;
    u8 filler5FC[0x40];
    u8 filler63C[0x20];
    u16 filler65C;
    u8 unk65E;
    u8 unk65F[3];
    u16 unk662;
    u16 unk664;
}; /* size = 0x668 */

struct Object {
    u8 spawnTable;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    s16 x;
    s16 y;
    u8 unkA;
    u8 unkB;
    u8 type;
    u8 unkD;
    u8 subtype1;
    u8 unkF;        // Foreground boolean?
    u8 subtype2;
    u8 unk11;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    s16 unk1A;
    s16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
};

#include "sprite.h"

struct ObjectBase {
    u8 unk0;
    u8 unk1;
    u16 unk2;
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
    s32 unk48;
    s32 unk4C;
    s16 xspeed;
    s16 yspeed;
    s8 unk54;
    s8 unk55;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    u32 unk5C;
    u16 unk60__42;
    u8 unk62;
    s8 unk63;
    s16 unk64;
    s16 unk66;
    s32 unk68;
    struct Kirby* kirby1;
    void* parent;
    u8 filler74[4];
}; /* size = 0x78 */

struct Object3 {
    struct ObjectBase base;
    void *unk78; // TODO: type of the field
}; /* size = 0x7C */

struct Object2 {
    struct ObjectBase base;
    void (*unk78)(struct Object2* arg0);
    void (*unk7C)(struct Object2* arg0);
    s16 unk80;
    u8 type;
    u8 unk83;
    u8 unk84;
    u8 unk85;
    u8 unk86;
    u8 subtype;
    s32 unk88;
    void *unk8C;
    u8 unk90;
    s8 unk91;
    s8 unk92;
    s8 unk93;
    s8 unk94;
    s8 unk95;
    s8 unk96;
    s8 unk97;
    s16 unk98;
    s16 unk9A;
    u8 unk9C;
    u8 unk9D;
    u8 unk9E;
    u8 unk9F;
    s16 unkA0;                      // Destination X pos >> 8?
    s16 unkA2;                      // Destination Y pos >> 8?
    s16 unkA4;
    s16 unkA6;
    s16 unkA8;
    s16 unkAA;
    struct Kirby* kirby3;
    struct Object* object;
}; /* size = 0xB4 */

struct Object4 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    s16 unk4;
    u16 flags;
    s16 unk8;
    struct Sprite unkC;
    s32 unk34;
    s32 unk38;
    s16 unk3C;
    s16 unk3E;
    s8 unk40;
    s8 unk41;
    u16 unk60__42;
    struct Object2 *unk44;
}; /* size = 0x48 */

struct Object5 {
    u32 unk0;
    u16 unk4;
    s8 unk6;
    u8 unk7;
    u8 filler8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u32 unk10;
    u8 filler14[8];
    struct Object2 *unk1C;
    struct Sprite unk20[3][4];
}; /* size = 0x200 */

struct Object6 {
    u16 unk0;
    u16 unk2;
    struct Object2 *unk4;
}; /* size = 8 */

struct Object7 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    struct Object2 *unk4;
    const u8 *unk8;
}; /* size = 0xC */

struct Object11 {
    s16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    const void *unk8;
}; /* size = 0xC */

struct Kirby {
    struct Object2 base;
    u8 fillerB4[15];
    u8 unkC3;
    u8 fillerC4[16];
    u16 unkD4;
    u8 fillerD6[5];
    u8 unkDB;
    u8 battery;
    u8 unkDD;
    u8 unkDE;
    u8 fillerDF[2];
    u8 unkE1;
    u16 unkE2;
    u8 unkE4;
    u8 unkE5;
    s16 unkE6;
    struct Object2 *unkE8;
    u32 unkEC;
    u8 fillerF0[0x10];
    s8 hp;
    s8 maxHp;
    u8 lives;
    u8 unk103;
    u8 filler104[2];
    u16 unk106;
    u16 unk108;
    u16 unk10A;
    u8 filler10C[4];
    u32 unk110;
    u32 filler114;
    u16 unk118;
    u8 filler11A[0x8E];
}; /* size = 0x1A8 */

struct Unk_0888562C {
    u8 unk00;
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
};

struct RoomProps {
    u16 songIdx;
    u8 filler02[4];
    u16 unk06;
    u16 unk08;
    u16 unk0A;
    u16 unk0C;
    u16 unk0E;
    u16 unk10;
    u16 priorityFlags;
    u16 pixelDataIdx;
    u16 paletteDataIdx;
    u16 mapDataIdx;
    u16 solidityMapIdx;
    u16 objectList2Idx;
    u16 backgroundIdx;
    u16 objectListIdx;
    u16 unk22;
    u16 doorsIdx;
    u8 unk26[2];
}; /* size = 0x28 */

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    void* unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    u16* unk18;
};

struct Unk_082EAB98 {
    void *unk00[4];
    u32 unk10;
    u16 unk14[4];
    u32 unk1C[4][2];
    u32 unk3C[4];
};

struct Unk_08D60FA4 {
    u8 filler0[4];
    s32 unk4;
    u8 filler8[1];
    u8 unk9;
};

struct Unk_08351648_2 {
    u16 unk0;
    u8 unk2;
    u8 unk3;
};

struct Unk_08351648 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 fillerA[0x2];
    u32 unkC;
    void (*unk10)(struct Object2*);
    struct Unk_08351648_2* unk14;
};

struct Unk_08352AD0 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 filler6[2];
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

struct Unk_03002400 {
    u32 filler0;
    void *unk4;
    u16 filler8;
    u16 unkA;
    void *unkC;
    u32 filler10[2];
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u8 unk2A;
    u8 unk2B;
    u8 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    u8 filler38[8];
}; /* size = 0x40 */

struct Unk_08357260 {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    // ...
};

extern u32 gUnk_02020F20[];

struct Unk_02022930_0 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
}; /* size = 0x10 */

struct Unk_02022930 {
    struct Unk_02022930_0 unk0[8];
    struct Unk_02022930_0 *unk80[8];
}; /* size =  0xA0 */

extern struct Unk_02022930 gUnk_02022930;

extern u32 gUnk_020229D8;
extern u8 gUnk_02022EB0[][2];
extern struct ObjectBase *gUnk_02022F50[];

extern u32 gUnk_02023388[][16];
extern u32 gUnk_02023488[];

extern u8 gUnk_02023358[];
extern u8 gUnk_02023368[];

extern u16 gUnk_02023508[];
extern u16 gUnk_02023510[];
extern u16 gUnk_02023518[];
extern u16 gUnk_02023520[][2];

extern u8 gUnk_0203AD34;
extern void *gUnk_0203ADE4;

extern u8 gUnk_02024ED0[][1950];
extern u16 gUnk_02026D50[];
extern u8 gUnk_02026D60[][1954];

extern u8 gUnk_02028BF0[];
extern u32 gUnk_02028C10[];
extern u16 gUnk_02028CA0[];

extern u32 gUnk_020229D4;
extern struct Object gUnk_020229E0[];
extern u8 gUnk_02022EA0;
extern struct Object2* gUnk_02022EC0[][8];
extern u8 gUnk_02022F40[];

extern struct LevelInfo gCurLevelInfo[4];
extern u16 gUnk_020382C8[5][4];
extern u8 gUnk_02038578[];
extern u32 gUnk_02038580;
extern u16 gUnk_02038990[][2];
extern u32 gUnk_0203AD10;
extern u8 gUnk_0203AD14;
extern s16 gUnk_0203AD18[];
extern u8 gUnk_0203AD1C[];
extern u32 gUnk_0203AD20;
extern u8 gUnk_0203AD24;
extern u16 gUnk_0203AD2C;
extern u8 gUnk_0203AD30;
extern u8 gUnk_0203AD3C;
extern u32 gUnk_0203AD40;
extern u8 gUnk_0203AD44;
extern u16 gUnk_0203ADE0;
extern struct Kirby gKirbys[];

extern struct Unk_03000510 gUnk_03000510;
extern u8 gUnk_03000524;
extern u8 gUnk_03000554;

extern u32 gUnk_03002440;
extern u16 gUnk_03002E20[];
extern u32 gUnk_03002E60;

extern const u16 *const *const *gUnk_03003674;

extern u32 gRngVal;

extern const struct Unk_082D7850* gUnk_082D7850[];
extern const u32 gUnk_082D88B8[];
extern const u16 gUnk_082DE69C[];

extern void *(*const gSpawnFuncTable2[])(struct Object *, u8);
extern void *(*const gSpawnFuncTable1[])(struct Object *, u8);

extern const u8 gUnk_08350BB0[][2];
extern const u8 gUnk_08350BCC[][2];

extern const u16 gUnk_0835105C[];
extern const s16 gUnk_08351530[][4];
extern const s16 gUnk_08351608[][4];
extern const struct Unk_08351648 gUnk_08351648[];

extern const struct Unk_08352AD0 gUnk_08352AD0[];
extern const struct Unk_08357260 gUnk_08352DF0[];
extern const u16 gUnk_08352E04[];

/* Enemy movement patterns? */
struct Unk_08353510 {
    s16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 fillerA[2];
};

extern const u16 gUnk_08352D80[];
extern const u8 gUnk_08352DD0[];
extern const s16 gUnk_08352DD8[];
extern const u16 gUnk_08352DF8[];

extern const struct Unk_08353510 gUnk_08353510[];
extern const struct Unk_08353510 gUnk_08353588[];
extern const struct Unk_08353510 gUnk_08353600[];
extern const struct Unk_08353510 gUnk_08353624[];
extern const s8 gUnk_08353A3C[];
extern const struct Unk_08353510 gUnk_08353A40[];
extern const struct Unk_08353510 gUnk_08353AC4[];
extern const struct Unk_08353510 gUnk_08353B48[];
extern const struct Unk_08353510 gUnk_08353BB4[];

extern const u8 gUnk_08353F88[];
extern const u8 gUnk_08353F98[];

extern const u8 gUnk_08355578[];
extern const u8 gUnk_08355584[];
extern const struct Unk_08357260 gUnk_083555A8[];

extern const s8 gUnk_083571E0[][2];
extern const u8 gUnk_08357250[];
extern const u16 gUnk_08357256[];
extern const struct Unk_08357260 gUnk_08357260[];
extern const struct Unk_08357260 gUnk_08357268[];
extern const u16 gUnk_08357278[];
extern const u8 gUnk_08357288[];
extern const u8 gUnk_08357290[];
extern const u16 gUnk_083572C0[];
extern const u16 gUnk_083572D0[][2];
extern const u8 gUnk_083572E8[];
extern const u8 gUnk_083572EE[];
extern const u8 gUnk_083572F3[];
extern const u8 gUnk_083572F9[];

struct Unk_08357304 {
    u16 unk0;
    u8 unk2;
    u16 unk4;
    u8 unk6;
    u16 unk8;
    u8 unkA;
    u16 unkC;
    u8 unkE;
    u16 unk10;
    u8 unk12;
    u16 unk14;
    u8 unk16;
    u16 unk18;
    u8 unk1A;
    u16 unk1C;
    u8 unk1E;
};

extern const struct Unk_08357304 gUnk_08357304;
extern const u16 gUnk_0835736C[];
extern const u8 gUnk_0835737C[];
extern const u8 gUnk_08357384[];
extern const u8 gDarkMindForm2Enemy3Types[];
extern const u8 gDarkMindForm2Enemy2Types[];
extern const u8 gDarkMindForm2Enemy1Types[];
extern const u16 gUnk_083573B4[];
extern const struct Unk_08357260 gUnk_083573AC;

extern const u8 gUnk_08357F24[];
extern const u8 gUnk_08357F44[];

extern const void *const gUnk_083B66F4[];

/* 
 * Depending on [struct Sprite *]->unk4 >> 28, 
 * it decides the type of gUnk_03003674[x](presumably just gUnk_083B909C[x]? )
 * 
 * gUnk_03003674[0] is const ??? *const *const *const
 * gUnk_03003674[1] is const struct Unk_03003674_1_Struct_(Sub) *const *const
 * gUnk_03003674[2] is const u16 *const *const (OamData, excluding affine params)
 * gUnk_03003674[3] is const ???* const
 * gUnk_03003674[4] is const ???* const (size = 0x20 each)
 * gUnk_03003674[5] is const ???* const (size = 0x40 each)
 * gUnk_03003674[6] is const u32* const
 */

union Unk_03003674_0_MixedAccess {
    /* This one is really confusing. Data chunks are in different lengths. */
    struct { u16 unk0, unk2, unk4, unk6, unk8, unkA; } u16s;
    struct { u32 unk0, unk4, unk8; } u32s;
    struct { 
        u8 unk0, unk1, unk2, unk3, unk4, unk5, 
           unk6, unk7, unk8, unk9, unkA, unkB;
    } u8s;
};

struct Unk_03003674_1_Struct_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Struct {
    struct Unk_03003674_1_Struct_Sub sub;
    u32 unkC;
};
extern const void *const gUnk_083B909C[];

extern const s16 gUnk_08D5FE14[];

extern u16 gUnk_08D60A80; // only matches w/o const. 
extern void *const gUnk_08D61048[]; // TODO: decide type
extern void *const gUnk_08D610B4[]; // TODO: decide type
extern const u8 gUnk_08D61120[];

extern const union {
    const struct LevelInfo_1A0 *unk; // might be another struct
    const struct LevelInfo_1E4 *obj;
} gLevelObjLists[287];

extern const struct Unk_08D60FA4 *const gUnk_08D60FA4[];
extern const struct Unk_08930E5C *const gUnk_08D640A4[];
extern const struct LevelInfo_1A0 *gUnk_08D64A24[];

extern const struct RoomProps gRoomProps[];

#endif

#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

#define PlaySfxInternal(objBase, num) ({ \
    if ((((objBase)->unk0 != 0) || ((objBase)->unk56 == gUnk_0203AD3C)) \
        && (gUnk_08D60FA4[gSongTable[num].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[num].ms]->unk9 <= gSongTable[num].header->priority) \
        && (gSongTable[num].ms == 0 || !(gUnk_0203AD10 & 0x100))) \
        m4aSongNumStart(num); \
})

#define PlaySfx(objBase, num) ({ \
    if (gKirbys[gUnk_0203AD3C].base.base.base.unk60__42 == (objBase)->unk60__42) \
        PlaySfxInternal(objBase, num); \
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

#include "sprite.h"

struct LevelInfo_1A0 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    void *unk8;
    u32 unkC;
    u16 *unk10;
    u16 unk14;
    u16 unk16;
    const u16 *unk18;
    u32 unk1C;
}; /* size = 0x20 */

struct LevelInfo_1A0_Full {
    struct LevelInfo_1A0 unk0;
    u16 unk20;
    u16 unk22;
};

// see sub_08001408
struct __attribute__((packed, aligned(2))) Unk_0888562C {
    u8 unk00; // determine whether it's Unk_0888562C or Unk_0888562C_2
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04; // size of struct? 
    u16 filler06;
    u16 unk08;
    u16 unk0A;
    u16 unk0C;
    u16 unk0E;
    u8 unk10;
}; /* size = 0x12 */

struct __attribute__((packed, aligned(2))) Unk_0888562C_2 {
    u8 unk00; // determine whether it's Unk_0888562C or Unk_0888562C_2
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04; // size of struct? 
    u16 filler06;
    u8 unk08;
    u8 unk09;
    u8 unk0A;
    u8 unk0B;
    u8 unk0C;
}; /* size = 0xE */

union __attribute__((transparent_union)) LevelInfo_1E0 {
    struct Unk_0888562C *pat1;
    struct Unk_0888562C_2 *pat2;
};

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
    struct Unk_03002400 unkC0[3];
    struct LevelInfo_1A0 unk180[3];
    union LevelInfo_1E0 unk1E0;
    const struct LevelInfo_1E4 *objlistPtr;
    u32 unk1E8;
    u32 unk1EC;
    struct Unk_02023720 unk1F0;
    u8 unk1F4[1016];
    u16 currentRoom;
    u16 unk5FA;
    u8 filler5FC[0x40];
    u8 filler63C[0x20];
    u16 unk65C;
    u8 unk65E;
    u8 unk65F;
    u8 unk660;
    u8 unk661;
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
    struct Kirby *kirby1;
    void* parent;
    struct Kirby *kirby2;
}; /* size = 0x78 */

struct Object3 {
    struct ObjectBase base;
    void *unk78; // TODO: type of the field
}; /* size = 0x7C */

struct Object2 {
    struct ObjectBase base;
    void *unk78;
    void *unk7C;
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
    s32 unk34; // ObjectBase::x? 
    s32 unk38; // ObjectBase::y? 
    s16 unk3C;
    s16 unk3E;
    s8 unk40; // ObjectBase::unk54? 
    s8 unk41; // ObjectBase::unk55? 
    u16 unk60__42; // room #? 
    void *unk44;
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
    void *unk8;
}; /* size = 0xC */

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

struct Unk_02038590 {
    void (*unk0[4])(struct Unk_02038590 *);
    u32 flags;
    struct LevelInfo *unk14;
    u16 unk18;
    u8 unk1A;
    u8 unk1B;
    u8 filler1C[0x20];
    u16 unk3C;
    u8 unk3E;
    u8 unk3F;
    struct Kirby *unk40;
    u32 unk44;
    u8 filler48[0x56];
    u16 unk9E;
    u16 unkA0;
    u16 unkA2;
    u16 unkA4;
    u32 unkA8;
    u16 unkAC;
    u16 unkAE;
    u32 fillerB0;
    u32 unkB4;
    u16 unkB8;
    u16 unkBA;
    u8 fillerBC[0x20];
    u8 unkDC;
    u8 unkDD;
    u16 unkDE;
    u16 unkE0;
    u8 fillerE2[0x12];
}; /* size = 0xF4 */

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
    struct Unk_02021590* unk14;
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

struct Unk_08357260 {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    // ...
};

extern u8 gUnk_02021580;

struct Unk_02021590 {
    u16 unk0;
    u8 unk2;
    s8 unk3;
}; /* size = 0x4 */

extern struct Unk_02021590 gUnk_02021590[4][185];

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
extern u16 gUnk_02022E60[];
extern u16 gUnk_02022E70[];
extern u32 gUnk_02022E80[];
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

extern u16 gUnk_0203ACB0[];
extern u8 gUnk_0203AD34;
extern u16 gUnk_0203AD48;
extern u8 gUnk_0203AD50;
/* unref mem in between */
extern u16 gUnk_0203ADE0;
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
extern u32 gUnk_02038580;
extern struct Unk_02038590 gUnk_02038590[4];
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

extern struct Unk_03000510 gUnk_03000510;
extern u8 gUnk_03000524;
extern u8 gUnk_03000554;
extern struct Unk_03002400 *gUnk_03002400[];
extern u32 gUnk_03002440;
extern u16 gUnk_03002E20[];

union __attribute__((transparent_union)) Unk_03002E60 {
    struct LevelInfo_1A0 *x;
    struct LevelInfo_1A0_Full *y;
};

extern union Unk_03002E60 *gUnk_03002E60; // see gUnk_082D8D74

union __attribute__((transparent_union)) Unk_03003674_0 {
    const s32 *words; // the first word is always ~funcIdx
    const u16 *hwords;
};

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
}; /* size = 0xC */

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
}; /* size = 0x10 */

union __attribute__((transparent_union)) Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
}; /* size = 0x1C */

extern const struct Unk_03003674 *gUnk_03003674;
extern struct Sprite *gUnk_03006030[];
extern u32 gRngVal;

extern const struct Unk_082D7850* gUnk_082D7850[];
extern const u32 gUnk_082D88B8[];
extern const u16 gUnk_082D8CB8[];
extern const bool32 gUnk_082D8CC0[];
extern const s32 gUnk_082D8CD0[][2];
extern const u16 gUnk_082D8D28[];
extern const bool32 gUnk_082D8D30[];
extern const s32 gUnk_082D8D40[][2];
extern const u16 gUnk_082DE69C[];

extern void *(*const gSpawnFuncTable2[])(struct Object *, u8);
extern void *(*const gSpawnFuncTable1[])(struct Object *, u8);

extern const u8 gUnk_08350BB0[][2];
extern const u8 gUnk_08350BCC[][2];
extern const struct Unk_08357260 gUnk_08350E34[];
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
}; /* size = 0xC */

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

extern const u8 gUnk_08357F24[];
extern const u8 gUnk_08357F44[];

extern const void *const gUnk_083B66F4[];

extern const struct Unk_03003674 gUnk_083B909C;

extern s32 (*const gUnk_08D5FDE4[])(union Unk_03003674_0, struct Sprite *);
extern const s16 gUnk_08D5FE14[];
extern s32 (*const gUnk_08D6081C[])(union Unk_03003674_0, struct Sprite *);
extern u16 gUnk_08D60A80; // only matches w/o const. 
extern void *const gUnk_08D61048[]; // TODO: decide type
extern void *const gUnk_08D610B4[]; // TODO: decide type
extern const u8 gUnk_08D61120[];
extern const struct Unk_08353510 *const gUnk_08D6112C[];
extern const union __attribute__((transparent_union)) {
    const struct LevelInfo_1A0 *unk; // might be another struct
                                     // probably never used (removed debug data right before gLevelObjLists? )
    const struct LevelInfo_1E4 *obj;
} gLevelObjLists[287];

extern const struct Unk_08D60FA4 *const gUnk_08D60FA4[];
extern const struct Unk_08930E5C *const gUnk_08D640A4[];
extern const struct LevelInfo_1A0 *gUnk_08D64A24[];

extern const struct RoomProps gRoomProps[];

#endif

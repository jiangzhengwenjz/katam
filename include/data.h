#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"
#include "bg.h"
#include "sprite.h"

#define PlaySfxInternal(objBase, num) ({ \
    if ((((objBase)->unk0 != 0) || ((objBase)->unk56 == gUnk_0203AD3C)) \
        && (gUnk_08D60FA4[gSongTable[num].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[num].ms]->unk9 <= gSongTable[num].header->priority) \
        && (gSongTable[num].ms == 0 || !(gUnk_0203AD10 & 0x100))) \
        m4aSongNumStart(num); \
})

#define PlaySfx(objBase, num) ({ \
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (objBase)->roomId) \
        PlaySfxInternal(objBase, num); \
})

#define PlaySfxAltInternal(objBase, num) ({ \
    if ((((objBase)->unk0 != 0) || ((objBase)->unk56 == gUnk_0203AD3C)) \
        && (gUnk_08D60FA4[gSongTable[num].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[num].ms]->unk9 < gSongTable[num].header->priority)) \
        m4aSongNumStart(num); \
})

#define PlaySfxAlt(objBase, num) ({ \
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == (objBase)->roomId) \
        PlaySfxAltInternal(objBase, num); \
})

#define Macro_081135A8(roomIdVal) ({ \
    bool32 _b; \
    u8 _i; \
 \
    _b = FALSE; \
    for (_i = 0; _i < gUnk_0203AD44; ++_i) \
    { \
        if (gKirbys[_i].base.base.base.roomId == (roomIdVal) && !(gUnk_02026D50[gCurLevelInfo[_i].unk65E] & 8)) \
            _b = TRUE; \
    } \
    _b; \
})

struct Unk_02023720 {
    struct Unk_02023720 *next;
    struct Unk_02023720 *prev;
    u8 *unk08; // &playerId
    u32 unk0C; // boolean?
}; /* size = 0x10 */

struct Unk_02023720_Mgr {
    struct Unk_02023720 *first;
    struct Unk_02023720 *last;
    struct Unk_02023720 nodes[0x40];
}; /* size = UNKNOWN */

struct TiledBg_082D7850 {
    u16 width;
    u16 height;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    const u32 *tileset;
    u32 tilesetCompressedSize;
    const u16 *palette;
    u16 paletteOffset;
    u16 paletteSize; // in hwords
    const u16 *tilemap;
}; /* size = 0x1C */

struct LevelInfo_1A0 { // TiledBg_LevelMap?
    u16 width;
    u16 height;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    const u32 *tileset;
    u32 unkC; // in gBackgrounds this seems to be numTilesInRawMap
    const u16 *palette;
    u16 paletteOffset;
    u16 paletteSize; // in hwords
    const u16 *tilemap;
    u32 unk1C;
}; /* size = 0x20 */

struct TiledBg_082D7850_Full {
    struct TiledBg_082D7850 unk0;
    u32 unk1C;
    u16 unk20;
    u16 unk22;
};

extern const struct LevelInfo_1A0 *const gBackgrounds[]; // TODO: a better name
extern const struct LevelInfo_1A0 *const gForegroundTilemaps[]; // most fields are 0 -- will be crafted by other structs

union __attribute__((transparent_union)) LevelInfo_1E0 {
    struct Unk_0888562C *pat1;
    struct Unk_0888562C_2 *pat2;
    struct Unk_0888562C_3 *pat3;
};

// see sub_08001408
struct __attribute__((packed, aligned(2))) Unk_0888562C {
    u8 unk00; // 1
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
    u16 filler06;
    u16 unk08[4];
    u8 unk10;
}; /* size = 0x12 */

struct __attribute__((packed, aligned(2))) Unk_0888562C_2 {
    u8 unk00; // 2
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
    u16 filler06;
    u8 unk08[4];
    u8 unk0C;
}; /* size = 0xE */

struct __attribute__((packed, aligned(2))) Unk_0888562C_3 {
    u8 unk00; // 3
    u8 unk01;
    u8 unk02;
    u8 unk03;
    u16 unk04;
    u16 filler06;
    u16 unk08; // roomId
    u8 unk0A;
    u8 unk0B;
    u8 unk0C;
}; /* size = 0xE */

struct LevelInfo_1E8_14 {
    u8 unk0[0x20]; // TODO: size
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u8 filler26[0xE];
}; /* size = 0x34 */

struct LevelInfo_1E8 {
    const void *unk0[4];
    const void *unk10;
    const struct LevelInfo_1E8_14 *unk14;
    u8 unk18;
}; /* size = 0x1C */

struct LevelInfo_1E4 {
    const struct Object *unk0;
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
    s16 unk46;
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
    s16 unkB4;
    s16 unkB6;
    s16 unkB8;
    s16 unkBA;
    u16 roomWidth;
    u16 roomHeight;
    struct Background unkC0[3];
    struct LevelInfo_1A0 unk180[3];
    union LevelInfo_1E0 unk1E0;
    const struct LevelInfo_1E4 *objlistPtr;
    const struct LevelInfo_1E8 *unk1E8;
    u32 unk1EC;
    struct Unk_02023720_Mgr unk1F0;
    u16 currentRoom;
    u16 unk5FA;
    u16 unk5FC[0x10][2]; /* TODO: determine real size */
    u16 unk63C[8][2]; /* TODO: determine real size */
    u16 unk65C;
    u8 unk65E;
    u8 unk65F;
    u8 unk660;
    u8 unk661;
    s16 unk662;
    s16 unk664;
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
    u32 flags;              // bit 0: x-direction (right = 0, left = 1)
    u32 unkC;
    struct Sprite sprite;
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
    s8 objBase54;
    s8 objBase55;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    u32 unk5C;
    u16 roomId;
    u8 unk62;
    s8 unk63;
    s16 unk64;
    s16 unk66;
    s32 unk68;
    void *unk6C; // can be ObjectBase */Kirby */?
    void *parent;
    struct Kirby *kirby2;
}; /* size = 0x78 */

struct Object3 {
    struct ObjectBase base;
    u32 unk78;
}; /* size = 0x7C */

struct Object2 {
    struct ObjectBase base;
    void *unk78;
    void *unk7C;
    s16 unk80;
    u8 type;
    u8 unk83;
    u8 kirbyAbility;
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
    u8 unk0; // ObjectBase::unk0; it's the struct ID, 1 means struct ObjectBase.
    u8 unk1; // ObjectBase::unk1
    u16 unk2; // ObjectBase::unk2
    s16 unk4;
    u16 flags;
    s16 unk8;
    struct Sprite sprite;
    s32 x;
    s32 y;
    s16 unk3C; // ObjectBase::xspeed
    s16 unk3E; // ObjectBase::yspeed
    s8 objBase54;
    s8 objBase55;
    u16 roomId;
    void *parent;
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

struct Object9 {
    struct Object4 unk0;
    s32 unk48[4][2];
    s16 unk68[4][2];
}; /* size = 0x78 */

struct Object14 {
    struct Object4 obj4;
    bool8 (*func48)(struct Object14 *);
    void (*func4C)(struct Object14 *);
}; /* size = 0x50 */

struct RoomProps {
    u16 songIdx;
    u16 unk02;
    u16 unk04;
    s16 unk06;
    s16 unk08;
    u16 unk0A;
    u16 unk0C;
    s16 unk0E;
    s16 unk10;
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

extern const struct RoomProps gRoomProps[];

struct Unk_02038590_4C {
    u32 unk0;
    struct Object2 *unk4; // TODO: may be struct ObjectBase *
    u16 unk8;
    s16 unkA;
}; /* size = 0xC */

struct Unk_02038590 {
    void (*unk0[4])(struct Unk_02038590 *);
    u32 flags;
    struct LevelInfo *unk14;
    u16 unk18;
    u8 unk1A;
    u8 unk1B;
    // TODO: size of arrays
    // note: these arrays have to be put together for pointer access
    u8 unk1C[0xA];
    u8 unk26[5];
    u8 unk2B[0x11];
    u16 unk3C;
    u8 unk3E; // something related to kirby ability
    u8 unk3F;
    struct Kirby *unk40;
    struct Kirby *unk44;
    struct Object2 *unk48;
    struct Unk_02038590_4C unk4C[4];
    s32 unk7C;
    s32 unk80;
    u16 unk84;
    u16 unk86;
    u16 unk88;
    u16 unk8A;
    s32 unk8C;
    s32 unk90;
    s16 unk94;
    s16 unk96;
    u16 unk98;
    s16 unk9A;
    u16 unk9C;
    u16 unk9E;
    u16 unkA0;
    u16 unkA2;
    u16 unkA4;
    struct Kirby *unkA8;
    u16 unkAC;
    u16 unkAE;
    u16 unkB0;
    const u16 *unkB4; // TODO: type
    u16 unkB8;
    u16 unkBA;
    u16 unkBC;
    u16 unkBE;
    u8 fillerC0[0xC];
    u16 unkCC;
    u8 fillerCE[0xE];
    u8 unkDC;
    u8 unkDD;
    u16 unkDE;
    u16 unkE0;
    u8 fillerE2[2];
    union {
        u32 data;
        void (*ptr)(struct Unk_02038590 *);
    } unkE4;
    u16 unkE8;
    u16 unkEA;
    u16 unkEC;
    u16 unkEE;
    u8 fillerF0[4];
}; /* size = 0xF4 */

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
    s16 unk4;
    u16 kirbyAbility;
    u16 unk8;
    u32 numTiles;
    void (*unk10)(struct Object2*);
    const struct Unk_02021590* unk14;
}; /* size = 0x18 */

struct Unk_08352AD0 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 unk3;
    s8 unk4;
    s8 unk5;
}; /* size = 0x8 */

struct Unk_03000510 {
    u8 unk0[4];
    u8 unk4;
};

struct Unk_08930E00_1 {
    u8 unk00;
    u8 unk01;
    u8 unk02[2];
    s16 unk04;
    s16 unk06;
};

struct Unk_08930E00_2 {
    u8 unk00;
    u8 unk01;
    u8 unk02[2];
    u16 unk04;
    u8 unk06;
    u8 unk07;
};

union __attribute__((transparent_union)) Unk_08930E00 {
    struct Unk_08930E00_1 *pat1;
    struct Unk_08930E00_2 *pat2;
};

struct Unk_08930E5C {
    union Unk_08930E00 unk00;
    u8 unk04;
};

struct Unk_08357260 {
    u16 unk0; // color? Why assigning 0xffff to here? 
    u8 unk2;
    u8 unk3;
}; /* size = 0x4 */

extern u8 gUnk_02021580;

struct Unk_02021590 {
    u16 animId;
    u8 variant;
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
    s16 unkA;
    u16 unkC;
    u16 unkE;
}; /* size = 0x10 */

struct Unk_02022930 {
    struct Unk_02022930_0 unk0[8];
    struct Unk_02022930_0 *unk80[8];
}; /* size = 0xA0 */

extern struct Unk_02022930 gUnk_02022930;

extern u32 gShadowKirbyEncounters;
extern u32 gMirraEncounters;
extern u16 gUnk_02022E60[];
extern u16 gUnk_02022E70[];
extern u32 gUnk_02022E80[];
extern u8 gUnk_02022EB0[][2];
extern struct ObjectBase *gUnk_02022F50[];

extern u32 gUnk_02023388[][16];
extern u32 gUnk_02023488[];

extern struct Task *gUnk_02023350;
extern struct Task *gUnk_02023354;
extern u8 gUnk_02023358[][4];
extern u8 gUnk_02023368[];

extern u16 gUnk_02023508[];
extern u16 gUnk_02023510[];
extern u16 gUnk_02023518[];
extern u16 gUnk_02023520[][2];

extern u8 gUnk_02024ED0[][1950];
extern u16 gUnk_02026D50[];
extern u8 gUnk_02026D60[][1954];

extern u8 gUnk_02028BF0[0x20];
extern u32 gUnk_02028C10[0x20];
extern u16 gVisitedDoors[0x120];

extern u8 gUnk_02028EE0[][1950 * 8];

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
extern s16 gUnk_0203ACB0[];
extern u32 gUnk_0203AD10;
extern u8 gUnk_0203AD14;
extern s16 gUnk_0203AD18[];
extern u8 gUnk_0203AD1C[];
extern u32 gUnk_0203AD20;
extern u8 gUnk_0203AD24;
extern u8 gUnk_0203AD30;
extern u8 gUnk_0203AD34;
extern u8 gUnk_0203AD3C;
extern u32 gUnk_0203AD40;
extern u8 gUnk_0203AD44;
extern u16 gSaveID;
extern u8 gUnk_0203AD50;
extern s16 gUnk_0203ADE0;
extern void *ewram_end;

enum SUB_08002888_ENUM {
    SUB_08002888_ENUM_UNK_1 = 0,
    SUB_08002888_ENUM_UNK_2 = 1,
    SUB_08002888_ENUM_UNK_3 = 2,
};

enum __attribute__ ((__packed__)) AIKirbyState {
    // The other Kirbys follow your every move.
    AI_KIRBY_STATE_TUTORIAL =  100,

    // Behavior of this is unknown, but it's set during the second cutscene where Meta Knight and DMK fight.
    AI_KIRBY_STATE_CUTSCENE =  200,

    // AIKirbyState is set this way for the majority of the game.
    AI_KIRBY_STATE_NORMAL =    300,

    AI_KIRBY_STATE_UNK1 =      9999,
    AI_KIRBY_STATE_UNK2 =      10000,
};

extern enum AIKirbyState gAIKirbyState;

extern u32 gUnk_03000000;
extern struct Task *gUnk_03000004;

extern struct Unk_03000510 gUnk_03000510;
extern struct Task *gUnk_03000518;
extern u16 gUnk_0300051C;
extern u8 gUnk_03000524;
extern void *gUnk_03000530; // takes various pointers. Alignment shows this is end of section in a file
extern u8 gUnk_03000554;
extern struct Background *gUnk_03002400[];
extern u16 gUnk_03002E20[];

union __attribute__((transparent_union)) Unk_03002E60 {
    struct LevelInfo_1A0 *x;
    struct TiledBg_082D7850_Full *y;
    struct TiledBg_082D7850 *z;
};

extern union Unk_03002E60 *gUnk_03002E60; // see gUnk_082D8D74

extern struct Sprite *gUnk_03006030[];

struct Unk_3007DE0 {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s8  unk18;
    s8  unk19;
    s8  unk1A;
    s8  unk1B;
    s16 unk1C;
    s16 unk1E;
    s16 xspeed;
    s16 yspeed;
    s16 unk24;
    s16 unk26;
    u8  unk28;
    u8  unk29;
    u8  unk2A;
};

extern const struct TiledBg_082D7850 *const gUnk_082D7850[];
extern const u32 gUnk_082D88B8[];
extern const u16 gUnk_082D8CB8[];
extern const bool32 gUnk_082D8CC0[];
extern const s32 gUnk_082D8CD0[][2];
extern const u16 gUnk_082D8CF0[];
extern const s32 gUnk_082D8D08[][2];
extern const u16 gUnk_082D8D28[];
extern const bool32 gUnk_082D8D30[];
extern const s32 gUnk_082D8D40[][2];

extern void *(*const gSpawnFuncTable2[])(const struct Object *, u8);
extern void *(*const gSpawnFuncTable1[])(const struct Object *, u8);

extern const struct Unk_08357260 gUnk_08350E34[];
extern const u16 gUnk_0835105C[];
extern const s16 gUnk_08351530[][4];
extern const s16 gUnk_08351608[][4];
extern const struct Unk_08351648 gUnk_08351648[];

/* Enemy movement patterns? */
struct Unk_08353510 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u8 unk8;
    u8 unk9;
}; /* size = 0xC */

extern const struct Unk_02021590 gUnk_08352E14[];
extern const struct Unk_02021590 gUnk_08352F68[];

extern const struct Unk_02021590 gUnk_08355578[];
extern const struct Unk_02021590 gUnk_08355584[];

extern const u8 gUnk_08357F24[];
extern const u8 gUnk_08357F44[];

extern const struct SpriteTables gUnk_083B909C;

extern const u16 gUnk_08932F8C[];
extern const u8 gUnk_0893CB44[][2];

extern s32 (*const gUnk_08D5FDE4[])(union AnimCmd, struct Sprite *);
extern s32 (*const gUnk_08D6081C[])(union AnimCmd, struct Sprite *);
extern u16 gLanguage; // only matches w/o const.
extern const struct Unk_08D60FA4 *const gUnk_08D60FA4[];
extern const struct Unk_02021590 *const gUnk_08D61048[];
extern const struct Unk_02021590 *const gUnk_08D610B4[];
extern const u8 gUnk_08D61120[];
extern const struct Unk_08353510 *const gUnk_08D6112C[];
extern const union __attribute__((transparent_union)) {
    const struct LevelInfo_1A0 *unk; // might be another struct
                                     // probably never used (removed debug data right before gLevelObjLists? )
    const struct LevelInfo_1E4 *obj;
} gLevelObjLists[287];
extern const struct LevelInfo_1E8 *const gUnk_08D63C28[];
extern const struct Unk_08930E5C *const gUnk_08D640A4[];

struct ForegroundInfo {
    const u32 *tileset;
    void *unk4;
    const struct ForegroundInfo_8p *unk8;
    u16 unkC;
    u16 roomId;
}; /* size = 0x10 */

struct ForegroundInfo_8p {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    const struct ForegroundInfo_8p_Cp *unkC;
    u16 unk10;
    u16 unk12;
};

struct ForegroundInfo_8p_Cp {
    u32 unk0;
    u16 unk4;
};

extern const struct ForegroundInfo *const gForegroundInfo[];

struct ForegroundPalette {
    const u16 *palette;
    struct ForegroundPalette_4pp **unk4;
    u16 unk8;
    u16 roomId;
}; /* size = 0xC */

struct ForegroundPalette_4pp {
    // really?
    union {
        u16 **u16pp;
        u16 ***u16ppp;
    } unk0;

    u16 unk4[2];
    u16 unk8;
};

extern const struct ForegroundPalette *const gForegroundPalettes[];

struct SolidityMap {
    void *unk0;
    union LevelInfo_1E0 unk4;
}; /* size = 0x8 */

extern const struct SolidityMap *const gSolidityMaps[];


struct Unk_08002E48 {
    u8 unk0;
    u8 filler[0x23];
    union Unk_03002E60 *unk24;
}; /* size = 0x28 */


extern void (*const gUnk_082D8D60[])(struct Unk_08002E48 *, struct LevelInfo *);

struct Unk_08D6CD0C {
    const u16 *const *unk0;
    u16 unk4[0x20]; // TODO: not sure
    u16 roomId;
    u8 unk46;
    u8 unk47;
    u8 unk48;
    u8 unk49;
}; /* size = 0x4C */

extern const struct Unk_08D6CD0C *const gUnk_08D6CD0C[];

struct Unk_08D6DCAC {
    const u16 *unk0;
    u16 unk4;
}; /* size = 0x8 */

extern const struct Unk_08D6DCAC *const gUnk_08D6DCAC[];

#endif

#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

struct Unk_02023530 {
	u8 unk000[484];
	void **objlist_ptr; // 0x1E4
	u8 unk1E8[1040];
	u16 current_room; // 0x5F8
	u8 unk5FA[110];
};

struct Sprite {
    u32 unk0;
    u8 filler4[4];
    u32 unk8;
    u16 unkC;
    u8 fillerE[2];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u8 filler18[2];
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 filler1D[2];
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
extern u8 gUnk_02028BF0[];

extern struct Unk_02023530 gUnk_02023530[4];
extern u16 gUnk_02038990[][2];
extern u32 gUnk_0203AD10;
extern u8 gUnk_0203AD1C[];
extern u16 gUnk_0203AD2C;
extern u8 gUnk_0203AD30;

extern u8 gUnk_03000554;

extern u32 gUnk_03002440;
extern u32 gUnk_03002E60;
extern const u32* gUnk_03003674;

extern const struct Unk_082D7850* gUnk_082D7850[];
extern const u32 gUnk_083B909C;

#endif

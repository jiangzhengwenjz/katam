#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "data.h"
#include "global.h"
#include "task.h"

struct UnkKirbyMapSprite {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ struct Sprite unk28;
    /* 0x50 */ u16 unk50;
    /* 0x52 */ u16 filler52;
}; /* size = 0x54 */

struct PauseWorldMap {
    /* 0x000 */ struct Background unk0;
    /* 0x040 */ struct UnkKirbyMapSprite unk40[4];
    /* 0x190 */ u8 filler190[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ u8 unk20C;  // 0 if CreatePauseWorldMap is called from pause menu
                            // door number (0x1-0xf) if CreatePauseWorldMap is called through activating a big switch
    /* 0x20D */ u8 unk20D;
    /* 0x20E */ s16 counter;
    /* 0x210 */ u8 unk210;  // 0x01 if pause_help::sub_08124430 is following and 0x04 if pause_area_map::sub_081278D4
                            // should be following
                            // - which is weird, can pause_area_map even be accessed from pause_world_map?
                            // For some reason, this must be u8, while Unk_0203ACC0::unkD must be s8,
                            // but values are assigned from one to another
    /* 0x211 */ s8 unk211;
    /* 0x212 */ u16 filler212;
    /* 0x214 */ struct Task* unk214;
}; /* size = 0x218 */

// Some kind of kirby-player struct
struct Unk_0203ACC0 {
    /* 0x00 */ struct Task* unk0;
    /* 0x04 */ u8 filler4[0x9];
    /* 0x0D */ s8 unkD;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u8 filler10[0x4];
}; /* size = 0x14 */

struct Unk_08363748 {
    /* 0x00 */ u16 unk0;  // animId1
    /* 0x02 */ u8 unk2;   // variant1
    /* 0x03 */ u8 filler3[0x31];
    /* 0x34 */ u16 unk34;  // animId0
    /* 0x36 */ u8 unk36;   // variant0
    /* 0x37 */ u8 filler37;
}; /* size = 0x38 */

struct Unk_08125F1C {
    /* 0x00 */ u8 filler0[0x7f];
    /* 0x7F */ u8 unk7f;
}; /* size = 0x80 */

extern struct Unk_0203ACC0 gUnk_0203ACC0[];  // Most likely with 4 entries per player
extern const u32 gUnk_081E08FC[];
extern const u32 gUnk_0835A3CC[0x140];
extern const u16 gUnk_08359C08[];  // Holds roomID of visited doors from 0x1 to 0xf
extern const u16 gUnk_08359C28[];

// Perhaps holds size of the following incbins
extern const u8 gUnk_08359DD8[];
// Something with Tilemap Data
// - encode offsets and ranges for CpuFill16
extern const u16 gUnk_08359DE8[];
extern const u16 gUnk_08359DEC[];
extern const u16 gUnk_08359DF4[];
extern const u16 gUnk_08359DFC[];
extern const u16 gUnk_08359E04[];
extern const u16 gUnk_08359E08[];
extern const u16 gUnk_08359E10[];
extern const u16 gUnk_08359E1C[];
extern const u16 gUnk_08359E24[];
extern const u16 gUnk_08359E30[];
extern const u16 gUnk_08359E38[];
extern const u16 gUnk_08359E40[];
extern const u16 gUnk_08359E50[];
extern const u16 gUnk_08359E60[];
extern const u16 gUnk_08359E6C[];

extern const struct Unk_08363748 gUnk_08363748[6];  // One struct per language

void CreatePauseWorldMap(u32);
void sub_081263BC(u16, u8, u8);

// Addresses to these functions held by gUnk_0834BD94
// Called in sub_08039ED4 when big switch is activated
void sub_08126404(void);
void sub_08126410(void);
void sub_0812641C(void);
void sub_08126428(void);
void sub_08126434(void);
void sub_08126440(void);
void sub_0812644C(void);
void sub_08126458(void);
void sub_08126464(void);
void sub_08126470(void);
void sub_0812647C(void);
void sub_08126488(void);
void sub_08126494(void);
void sub_081264A0(void);
void sub_081264AC(void);

void sub_081264B8(void);
void sub_08126504(void);

// Called in sub_08125828 if corresponding door has not yet been visited
void sub_081265C8(void);
void sub_08126618(void);
void sub_08126668(void);
void sub_081266B8(void);
void sub_08126708(void);
void sub_08126758(void);
void sub_081267A8(void);
void sub_081267F8(void);
void sub_08126848(void);
void sub_08126898(void);
void sub_081268E8(void);
void sub_08126938(void);
void sub_08126988(void);
void sub_081269D8(void);
void sub_08126A28(void);

// Called, when pause_area_map(!) is opened
void sub_08126B58(struct Sprite*, struct Sprite*, u8);  // Called for each kirby
void sub_08126C48(void);

#endif

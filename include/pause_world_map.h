#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "constants/languages.h"
#include "data.h"
#include "global.h"
#include "task.h"

#define UnkKirbyMapSpriteCalls(pauseWorldMap, kirbyId)                      \
    ({                                                                      \
        struct UnkKirbyMapSprite* _r4 = (pauseWorldMap)->unk40 + (kirbyId); \
        if (!(_r4->unk50 & 0x0001)) {                                       \
            sub_08155128(&_r4->unk0);                                       \
            sub_081564D8(&_r4->unk0);                                       \
            if (!(_r4->unk50 & 0x0002)) {                                   \
                sub_08155128(&_r4->unk28);                                  \
                sub_081564D8(&_r4->unk28);                                  \
            }                                                               \
        }                                                                   \
    })

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
    /* 0x20C */ s8 unk20C;  // 0 if CreatePauseWorldMap is called from pause menu
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
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ s8 unkD;  // 0x01 for help menue, 0x02 for world map, 0x04 for area map
                         // Retained when quitting the menue, so that the same menue will be launched when pressing START again
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ s8 unk13;
}; /* size = 0x14 */

// TODO: Probably array of Unk_02021590
struct Unk_08363748 {
    /* 0x00 */ u16 unk0;  // animId
    /* 0x02 */ u8 unk2;   // variant
    /* 0x03 */ u8 filler3[0x25];
    /* 0x28 */ u16 unk28;  // animId
    /* 0x2A */ u8 unk2A;   // variant
    /* 0x2B */ u8 filler2B;
    /* 0x2C */ u16 unk2C;  // animId
    /* 0x2E */ u8 unk2E;   // variant
    /* 0x2F */ u8 filler2F;
    /* 0x30 */ u16 unk30;  // animId
    /* 0x32 */ u8 unk32;   // variant
    /* 0x33 */ u8 filler33;
    /* 0x34 */ u16 unk34;  // animId
    /* 0x36 */ u8 unk36;   // variant
    /* 0x37 */ u8 filler37;
}; /* size = 0x38 */

// Perhaps struct code_08124BE0.c::Unk_08359C48
struct Unk_0812F1C_78 {
    /* 0x0 */ u8 unk0;  // x
    /* 0x1 */ u8 unk1;  // y
    /* 0x2 */ u16 filler2;
}; /* size = 0x4 */

struct Unk_08125F1C {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ struct Sprite unk28;
    /* 0x50 */ struct Sprite unk50;
    /* 0x78 */ const struct Unk_0812F1C_78* unk78;
    /* 0x7C */ s8 unk7C;
    /* 0x7D */ s8 unk7D;  // type of counter, see sub_081254A8
    /* 0x7E */ u8 frameCounter;
    /* 0x7F */ u8 unk7F;
}; /* size = 0x80 */

extern struct Unk_0203ACC0 gUnk_0203ACC0[];  // Most likely with 4 entries per player

extern const u32 gUnk_081E08FC[];
extern const struct Unk_08363748 gUnk_08363748[NUM_LANGUAGES];

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

#endif

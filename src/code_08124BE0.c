#include "code_08124BE0.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_world_map.h"
#include "treasures.h"

// In code_08123950.s
extern void sub_0812403C(struct Unk_0203ACC0*);

// In pause_area_map.s
extern u32 sub_08128694(u32);

#define SpriteInitWorldMapObj(_sprite, _tilesVram, _unk14, _animId, _variant, _unk16, _unk1B, _unk1C, _palId, _x, _y, \
                              _unk8)                                                                                  \
    {                                                                                                                 \
        (_sprite)->tilesVram = (_tilesVram);                                                                          \
        (_sprite)->unk14 = (_unk14);                                                                                  \
        (_sprite)->animId = (_animId);                                                                                \
        (_sprite)->variant = (_variant);                                                                              \
        (_sprite)->unk16 = (_unk16);                                                                                  \
        (_sprite)->unk1B = (_unk1B);                                                                                  \
        (_sprite)->unk1C = (_unk1C);                                                                                  \
        (_sprite)->palId = (_palId);                                                                                  \
        (_sprite)->x = (_x);                                                                                          \
        (_sprite)->y = (_y);                                                                                          \
        (_sprite)->unk8 = (_unk8);                                                                                    \
    }

// unk4 - unkB are x and y coordinates, alternatingly
struct Unk_08D6115C {
    /* 0x0 */ u32 unk0;
    /* 0x4 */ u8 unk4;
    /* 0x5 */ u8 unk5;
    /* 0x6 */ u8 unk6;
    /* 0x7 */ u8 unk7;
    /* 0x8 */ u8 unk8;
    /* 0x9 */ u8 unk9;
    /* 0xA */ u8 unkA;
    /* 0xB */ u8 unkB;
}; /* size = 0xC */

struct Unk_08359C48 {
    /* 0x0 */ u8 unk0;  // x
    /* 0x1 */ u8 unk1;  // y
    /* 0x2 */ u8 unk2;  // x
    /* 0x3 */ u8 unk3;  // y
}; /* size = 0x4 */

extern const struct Unk_08D6115C* const gUnk_08D6115C[];
extern const struct Unk_02021590 gUnk_08359BE8[];
extern const struct Unk_08359C48 gUnk_08359C48[];
extern const u32 gUnk_08D61188[];

static inline void guard_sub_08031CE4(u8 playerId) {
    if (gUnk_0203AD10 & 2 && playerId != gUnk_0203AD3C) {
        sub_08031CE4(8);
    }
}

// Runs on every pause_menu screen as Task::main function repeatingly
// Doesn't run when activating BigSwitch
// gCurTask as well as all four gUnk_0203ACC0[].unk0 point to Task 0x03001BA8
void sub_08124BE0(void) {
    u16 r9;
    s32 playerId;

    for (playerId = 0; playerId < 4; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }
    for (playerId = 0; playerId < 4; playerId++) {
        if (gUnk_0203ACC0[playerId].unk12) {
            gUnk_0203ACC0[playerId].unkE |= 0x0004;
            gUnk_0203ACC0[playerId].unk12--;
        }
        else {
            gUnk_0203ACC0[playerId].unkE &= ~0x0004;
        }
    }
    for (playerId = 0; playerId < 4; playerId++) {
        sub_0812403C(gUnk_0203ACC0 + playerId);
    }

    if (gUnk_0203ACC0[gUnk_0203AD50].unk8 & 0x000a && !(gUnk_0203ACC0[gUnk_0203AD50].unkE & 0x0004)) {
        for (playerId = 0; playerId < 4; playerId++) {
            gUnk_0203ACC0[playerId].unkE |= 0x1000;
            gUnk_0203ACC0[playerId].unk12 = 0x3c;
            if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                m4aSongNumStart(506);
            }
        }
        return;
    }

    if (gUnk_0203AD10 & 4)
        return;

    r9 = 0;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gUnk_0203ACC0[playerId].unkE & 0x0004)) {
            r9 |= gUnk_0203ACC0[playerId].unk8;
        }
    }

    if (r9 & 0x0004) {
        u32 r8 = gUnk_0203ACC0[gUnk_0203AD3C].unkD;

        if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 2) {
            r8 = 1;
        }
        else if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 4) {
            r8 = 2;
        }
        else {
            u32 r5 = 0;
            for (playerId = 0; playerId < 4; playerId++) {
                if (!(gUnk_0203ACC0[playerId].unkE & 0x0001)) {
                    r5 |= (1 << sub_08128694(playerId));
                }
            }
            if (!(r5 & (8 | 1))) {
                if (r5 & 4) {
                    if (HasBigChest(0)) {
                        r8 = 2;
                    }
                }
                else {
                    if (r5 & 2) {
                        r8 = 4;
                    }
                }
            }
        }

        if (r8 != gUnk_0203ACC0[gUnk_0203AD3C].unkD) {
            for (playerId = 0; playerId < 4; playerId++) {
                gUnk_0203ACC0[playerId].unkD = r8;
                gUnk_0203ACC0[playerId].unk12 = 0x28;
                guard_sub_08031CE4(playerId);
                if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                    m4aSongNumStart(506);
                }
            }
            return;
        }
    }

    if (gUnk_0203ACC0[gUnk_0203AD3C].unkD == 4 && r9 & 0x0300 &&
        !((gUnk_0203ACC0[0].unkE | gUnk_0203ACC0[1].unkE | gUnk_0203ACC0[2].unkE | gUnk_0203ACC0[3].unkE) & 0x0400)) {
        u32 r7 = r9 & 0x100 ? 0x200 : 0x100;
        for (playerId = 0; playerId < 4; playerId++) {
            gUnk_0203ACC0[playerId].unkE |= r7;
            gUnk_0203ACC0[playerId].unk12 = 0x28;
            guard_sub_08031CE4(playerId);
            if (gUnk_0203ACC0[playerId].unkE & 0x0002) {
                m4aSongNumStart(506);
            }
        }
    }
}

// Runs once when starting the game (singleplayer)
void sub_08124E80(void) {
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        gUnk_0203ACC0[playerId].unkD = 1;
        gUnk_0203ACC0[playerId].unk13 = 0x10;
    }
}

// Runs once when opening the pause menu or activating BigSwitch
void sub_08124EA0(void) {
    struct Unk_02022930_0* unk_0803C95C = sub_0803C95C(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;
}

// Runs once immediately when pause menu (or BigSwitch activation) should be closed
void sub_08124EC8(void) {
    u16 color;
    struct Unk_02022930_0* unk_0803C95C = sub_0803CA20(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;

    color = RGB_WHITE;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(&color, 0, 1);
    }
    else {
        DmaCopy16(3, &color, gBgPalette, 2);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    sub_0803D2A8(0, 0xff);
}

// TODO: Find type of struct/datatype with size 4
struct Task* sub_08124F44(void) {
    return TaskCreate(sub_08124BE0, 4, 0x0f00, TASK_x0004, NULL);
}

void sub_08124F64(u32 arg0) {
    CpuCopy32(gUnk_08D6113C[arg0].unkSrc, gUnk_08D6113C[arg0].unkDest, 0x400);
}

static inline u16 loadMapCoordinates(const u8* x, const u8* y) {
    return *x << 8 | *y;
}

// Called for all four kirbys when WorldMap is opened
// Returns coordinates in the following format:
// MSB: x, LSB: y
static u16 sub_08124F88(u16 roomId, u8 playerId) {
    u16 r1;
    const struct Unk_08D6115C* cur_08D6115C;

    u32 r2 = 0;
    u32 r3 = 0;
    switch (gUnk_08D6CD0C[roomId]->unk46) {
    case 0: r2 = 1; break;
    case 1: r2 = 2; break;
    case 4: r2 = 5; break;
    case 6: r2 = 7; break;
    case 5: r2 = 6; break;
    case 2: r2 = 3; break;
    case 7: r2 = 8; break;
    case 3: r2 = 4; break;
    case 8: r2 = 9; break;
    case 9: r2 = 0; break;
    case 10: r2 = 10; break;
    }

    cur_08D6115C = gUnk_08D6115C[r2];
    for (r1 = 0; cur_08D6115C[r1].unk0; r1++) {
        if (cur_08D6115C[r1].unk0 == roomId) {
            switch (playerId) {
            case 0: r3 = loadMapCoordinates(&cur_08D6115C[r1].unk4, &cur_08D6115C[r1].unk5); break;
            case 1: r3 = loadMapCoordinates(&cur_08D6115C[r1].unk6, &cur_08D6115C[r1].unk7); break;
            case 2: r3 = loadMapCoordinates(&cur_08D6115C[r1].unk8, &cur_08D6115C[r1].unk9); break;
            case 3: r3 = loadMapCoordinates(&cur_08D6115C[r1].unkA, &cur_08D6115C[r1].unkB); break;
            }
        }
    }

    return r3;
}

void sub_08125088(struct UnkKirbyMapSprite* unkMapSprite, u32 playerId) {
    u16 spriteCoordinates;  // MSB: x, LSB: y

    u16 r9 = playerId * 2 + 10;
    if (playerId == gUnk_0203AD3C) {
        r9 = 8;
    }

    unkMapSprite->unk50 = 0;
    if (!gUnk_08350B30[gKirbys[playerId].ability].animId && !gUnk_08350B30[gKirbys[playerId].ability].variant) {
        unkMapSprite->unk50 = 2;
    }

    spriteCoordinates = sub_08124F88(gKirbys[playerId].base.base.base.roomId, playerId);
    if (spriteCoordinates == 0x0000) {
        unkMapSprite->unk50 |= 0x0003;
    }
    sub_0803E558(playerId);

    SpriteInitWorldMapObj(&unkMapSprite->unk0, 0x06013800 + (playerId << 8), (r9 + 1) << 6,
                          gUnk_08350AAC[gKirbys[playerId].ability].animId,
                          gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId,
                          spriteCoordinates >> 8, (spriteCoordinates & 0xff) + 7, 0x41000);

    SpriteInitWorldMapObj(&unkMapSprite->unk28, 0x06013880 + (playerId << 8), r9 << 6,
                          gUnk_08350B30[gKirbys[playerId].ability].animId,
                          gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4,
                          spriteCoordinates >> 8, (spriteCoordinates & 0xff) + 7, 0x41000);

    sub_08155128(&unkMapSprite->unk0);
    if (!(unkMapSprite->unk50 & 0x0002)) {
        sub_08155128(&unkMapSprite->unk28);
    }
}

void sub_081251F8(void) {
    struct Sprite unkSprite;
    CpuFill32(0, &unkSprite, 0x28);
    SpriteInitNoPointer(&unkSprite, 0x06012000, 0x280, gUnk_08359BE8[0].animId, gUnk_08359BE8[0].variant, 0, 0xff, 0x10,
                        0, 0, 0, 0x41000);
}

// Runs once after activating BigSwitch, before particle effects of central hall
void sub_08125258(u32 arg0) {
    struct Task* task = TaskCreate(sub_081264B8, sizeof(struct Sprite), 0x1000, TASK_x0004, NULL);
    struct Sprite *tmp = TaskGetStructPtr(task), *unkSprite = tmp;

    u32 r6 = 5;
    if (gUnk_08359C48[arg0].unk2 == 0x70 && gUnk_08359C48[arg0].unk3 == 0x50) {
        r6 = 1;
    }

    SpriteInitWorldMapObj(unkSprite, 0x06012000, 0x440, gUnk_08359BE8[r6].animId, gUnk_08359BE8[r6].variant, 0, 0xff,
                          0x10, 8, gUnk_08359C48[arg0].unk2, gUnk_08359C48[arg0].unk3, 0xc1000);
}

struct Task* sub_081252FC(u32 arg0) {
    struct Task* task = TaskCreate(sub_08126504, sizeof(struct Unk_08125F1C), 0x1000, TASK_x0004, NULL);
    struct Unk_08125F1C *tmp = TaskGetStructPtr(task), *unkStruct = tmp;

    u32 local18 = 6;
    unkStruct->unk7F = 0;
    if (gUnk_08359C48[arg0].unk2 == 0x70 && gUnk_08359C48[arg0].unk3 == 0x50) {
        local18 = 2;
        unkStruct->unk7F = 1;
    }

    CpuFill32(0, &unkStruct->unk0, sizeof(struct Sprite));
    CpuFill32(0, &unkStruct->unk28, sizeof(struct Sprite));
    CpuFill32(0, &unkStruct->unk50, sizeof(struct Sprite));

    SpriteInitWorldMapObj(&unkStruct->unk0, 0x6012000, 0x480, gUnk_08359BE8[6].animId, gUnk_08359BE8[6].variant, 0,
                          0xff, 0x10, 8, gUnk_08359C48[arg0].unk0, gUnk_08359C48[arg0].unk1, 0xc1000);
    SpriteInitWorldMapObj(&unkStruct->unk28, 0x6012000, 0x480, gUnk_08359BE8[local18].animId,
                          gUnk_08359BE8[local18].variant, 0, 0xff, 0x10, 8, gUnk_08359C48[arg0].unk2,
                          gUnk_08359C48[arg0].unk3, 0xc1000);
    SpriteInitWorldMapObj(&unkStruct->unk50, 0x6012000, 0x480, gUnk_08359BE8[7].animId, gUnk_08359BE8[7].variant, 0,
                          0xff, 0x10, 8, gUnk_08359C48[arg0].unk0, gUnk_08359C48[arg0].unk1, 0xc1000);
    unkStruct->unk78 = gUnk_08D61188[arg0];
    unkStruct->unk7C = arg0;
    unkStruct->unk7D = 0;
    unkStruct->unk7E = 0;

    return task;
}

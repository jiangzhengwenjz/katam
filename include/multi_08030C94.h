#ifndef GUARD_MULTI_08030C94_H
#define GUARD_MULTI_08030C94_H

#include "global.h"
#include "task.h"

struct MultiSioMultiBootPayload
{
    /* 0x00 */ u32 rngSeed;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 filler5[3]; // TODO(match): without it the union is not BLKmode and byte stores to stack copies become word read-modify-writes
}; /* size = 0x8 */

struct MultiSioPreWorldPropsPayload
{
    /* 0x00 */ s16 unk0;
    /* 0x02 */ u8 unk2;
}; /* size = 0x4 */

struct MultiSioPostWorldPropsPayload
{
    /* 0x00 */ u32 rngSeed;
    /* 0x04 */ u16 checksum;
}; /* size = 0x8 */

union MultiSioHandshakePayload
{
    /* 0x00 */ struct MultiSioMultiBootPayload multiBoot;
    /* 0x00 */ struct MultiSioPreWorldPropsPayload preWorldProps;
    /* 0x00 */ struct MultiSioPostWorldPropsPayload postWorldProps;
}; /* size = 0x8 */

enum LinkMsgType {
    LINK_MSG_HANDSHAKE   = 0x02,
    LINK_MSG_WORLD_PROPS = 0x03,
    LINK_MSG_INPUT       = 0x20,
};

#define LINK_HANDSHAKE_MAGIC 0x123

struct MultiSioInputData {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 packed[6]; // 8 frames x 12 bits (10 key bits, 2 check bits), newest first
    /* 0x10 */ u32 frame;
}; /* size = 0x14 */

struct MultiSioWorldPropsData {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 seq;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 chunk[0x10];
}; /* size = 0x14 */

struct MultiSioHandshakeData {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 magic;
    /* 0x04 */ union MultiSioHandshakePayload payload;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u8 state; // 0x2X: parent phases, 0x4X: child phases
    /* 0x0F */ u8 fillerF[5];
}; /* size = 0x14 */

// Untagged: used only during the MultiSioMain load phase, byte 0 is gLanguage.
struct MultiSioLoadData {
    /* 0x00 */ u8 language;
    /* 0x01 */ u8 filler1;
    /* 0x02 */ u8 loadCount;
}; /* size = 0x4 */

union MultiSioData {
    /* 0x00 */ struct MultiSioInputData input;
    /* 0x00 */ struct MultiSioWorldPropsData worldProps;
    /* 0x00 */ struct MultiSioHandshakeData handshake;
    /* 0x00 */ struct MultiSioLoadData load;
}; /* size = MULTI_SIO_BLOCK_SIZE */

struct Unk_020382A0
{
    /* 0x00 */ struct Task *task;
    /* 0x04 */ s16 unk04;
    /* 0x06 */ u16 unk06;
    /* 0x08 */ union MultiSioHandshakePayload unk08[4];
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
}; /* size = 0x2C */

struct Multi_08030C94
{
    /* 0x00 */ s32 (*func)(struct Multi_08030C94 *);
    /* 0x04 */ union MultiSioHandshakePayload unk4;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u16 unk10[4];
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 unk1C;
}; /* size = 0x20 */

struct Multi_08032B0C
{
    struct Task *task;
    s16 unk4[4];
    u16 unkC;
    u16 unkE;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22[3][4];
    u32 filler3C;
    u32 unk40[4];
    u32 unk50;
    u16 unk54;
    u16 unk56;
    u16 unk58;
}; /* size = 0x5C */

extern struct Unk_020382A0 gUnk_020382A0;

void sub_08030C94(u8, union MultiSioHandshakePayload *);
u32 sub_08030D4C(s32);
void sub_08030E44(void);
u32 sub_08030FE0(void);
void sub_08031BFC(void);
void sub_08031C3C(void);
void sub_08031C54(void);
s16 sub_08031C64(void);
void sub_08031C70(u8);
void sub_08031CC8(void);
void sub_08031CD4(void);
void sub_08031CE4(u8);
struct Multi_08032B0C *sub_08032B0C(void);
u32 sub_08032B84(struct Multi_08032B0C *);
void sub_08032BA4(struct Multi_08032B0C *);
void sub_08032BBC(struct Multi_08032B0C *);
void sub_08032BD4(struct Multi_08032B0C *);

#endif // GUARD_MULTI_08030C94_H

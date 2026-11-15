#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

struct MultiSioInputData {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 packed[6];
    /* 0x10 */ u32 frame;
}; /* size = 0x14 */

struct MultiSioHandshakeData {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 magic;
    /* 0x04 */ u8 payload[8];
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u8 state; // 0x2X: parent phases, 0x4X: child phases
    /* 0x0F */ u8 fillerF[5];
}; /* size = 0x14 */

union MultiSioData {
    /* 0x00 */ struct MultiSioInputData input;
    /* 0x00 */ struct MultiSioHandshakeData handshake;
}; /* size = MULTI_SIO_BLOCK_SIZE */

extern u32 gMainFlags;

extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;
extern union MultiSioData gMultiSioSend;

extern IntrFunc gIntrTable[];

#endif

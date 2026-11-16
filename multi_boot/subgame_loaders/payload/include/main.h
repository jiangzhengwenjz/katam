#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"
#include "multi_sio.h"

struct MultiSioData {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 filler3[MULTI_SIO_BLOCK_SIZE - 3];
}; /* size = 0x14 */

struct PayloadWork {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 loadRequest;
    /* 0x11 */ u8 unk11;
}; /* size = 0x14 */

extern IntrFunc gIntrTable[0xD];
extern u16 gUnk_03000034;
extern struct MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern u32 gIntrMainBuf[0x400 / 4];
extern struct MultiSioData gMultiSioSend;

extern const IntrFunc gIntrTableTemplate[0xD];

void IntrMain(void);
void AgbMain(void);
void VBlankIntr(void);
void IntrDummy(void);

#endif // GUARD_MAIN_H

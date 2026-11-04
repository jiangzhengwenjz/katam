#ifndef GUARD_GBPLAYER_H
#define GUARD_GBPLAYER_H

#include "global.h"

struct RfuSIO32Id {
    /* 0x00 */ u8 MS_mode;
    /* 0x02 */ u16 count;
    /* 0x04 */ u16 send_id;
    /* 0x06 */ u16 recv_id;
    /* 0x08 */ u8 filler8[2];
    /* 0x0A */ u16 lastId;
}; /* size = 0xC */

extern struct RfuSIO32Id gSio32Id;
extern u32 gSio32SendData;
extern u32 gSio32ReceivedData;
extern u32 gSio32RemoteDeviceId; // only bit 0 of the command 1 reply's payload is stored
extern u8 gSio32CommState;

void Sio32TimeoutIntr(void);
void nullsub_1(void);
void nullsub_2(void);

#endif

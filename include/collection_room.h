#ifndef GUARD_COLLECTION_ROOM_H
#define GUARD_COLLECTION_ROOM_H

#include "global.h"
#include "sprite.h"

struct Unk_081434F8 {
    u8 unk0;
    s8 unk1;
    u8 unk2[0x28];
    s8 unk2A;
    s8 unk2B;
    u8 unk2C;
    bool8 unk2D;
    s16 unk2E;
    u16 unk30;
    s16 unk32;
    u16 unk34;
    u8 unk36;
    u8 unk37;
    void (*unk38)(struct Unk_081434F8 *);
    s16 unk3C;
    struct Sprite unk40[0x39];
}; /* size = 0x928 */

#endif

#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "global.h"

// Perhaps similar to struct Unk_0801C6F8, but datatypes and size don't match

struct PauseWorldMapStruct {
    u8 filler1[0x208];
    u16 unk208;
    u16 unk20A;
    u8 unk20C;
    u8 unk20D;
    u16 unk20E;
    u8 unk210;
    u8 unk211;
    u16 filler2;
    u32 unk214;
}; /* size = 0x218 */

void sub_08125A4C(u32);

#endif
#ifndef GUARD_CODE_0801DA58_H
#define GUARD_CODE_0801DA58_H

#include "global.h"
#include "data.h"

struct Unk_0801DA58
{
    struct Background unk0;
    struct Background unk40; // not sure
    struct Sprite unk80[2];
    u32 unkD0[2];
    void (*unkD8)(struct Unk_0801DA58 *);
    u16 unkDC;
    u16 unkDE;
    u16 unkE0;
    u16 unkE2;
}; /* size = 0xE4 */

#endif

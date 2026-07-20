#ifndef GUARD_CHEST_H
#define GUARD_CHEST_H

#include "global.h"
#include "data.h"

struct Chest
{
    struct Object2 obj2;
    u8 fillerB4[0x28];
    u32 unkDC;
    u16 unkE0; // item id
    u16 unkE2; // treasure index
    u16 unkE4; // player id that opened the chest
    u16 fillerE6;
}; /* size = 0xE8 */

struct ChestItemPopup
{
    struct Object4 obj4;
    void (*unk48)(struct ChestItemPopup *);
    struct Chest *unk4C;
    u16 unk50; // item id
    u8 filler52[6];
}; /* size = 0x58 */

void *CreateChest(struct Object *, u8);
void sub_0800BD4C(struct Object2 *);

#endif // GUARD_CHEST_H

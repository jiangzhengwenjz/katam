#ifndef GUARD_GOBBLER_H
#define GUARD_GOBBLER_H

#include "data.h"
#include "kirby.h"

struct Gobbler
{
    struct Object obj2;
    struct Object *babies[3];
    u8 unkC0;
    u8 unkC1;
    u8 unkC2;
}; /* size = 0xC4 */

void *CreateGobbler(struct ObjectTemplate *, u8);
void *CreateGobblerBaby(struct ObjectTemplate *, u8);

void sub_080E43B4(struct Gobbler *);
void sub_080E79A4(struct Object *);
bool8 sub_080E588C(struct Gobbler *, struct Kirby *);
bool8 sub_080E74E4(struct Object *, struct Kirby *);

extern const struct AnimInfo gUnk_08356A20[];
extern const struct AnimInfo gUnk_08356A6C[];
extern const struct Kirby_110 gUnk_08356A98[];
extern const struct AnimInfo gUnk_08356B50[];

#endif

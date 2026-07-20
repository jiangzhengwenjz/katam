#ifndef GUARD_SPECIAL_HUB_MIRROR_H
#define GUARD_SPECIAL_HUB_MIRROR_H

#include "global.h"
#include "data.h"

struct SpecialHubMirror
{
    struct Object2 obj2;
    struct Object4 *unkB4;
    u16 unkB8;
    u16 unkBA;
    u16 unkBC;
}; /* size = 0xC0 */

void *CreateSpecialHubMirror(struct Object *, u8);
void nullsub_108(struct SpecialHubMirror *);
void nullsub_109(struct SpecialHubMirror *);

#endif // GUARD_SPECIAL_HUB_MIRROR_H

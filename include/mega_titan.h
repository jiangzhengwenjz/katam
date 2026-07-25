#ifndef GUARD_MEGA_TITAN_H
#define GUARD_MEGA_TITAN_H

#include "global.h"
#include "data.h"

struct MegaTitan
{
    struct Object2 obj2;
    struct Object2 *arms[4];
    u8 unkC4;
}; /* size = 0xC8 */

struct TitanHead
{
    struct Object2 obj2;
    u32 unused[5];
}; /* size = 0xC8 */

void *CreateMegaTitan(struct Object *, u8);
void MegaTitanStartIdle(struct MegaTitan *);
void *CreateTitanArm1(struct Object *, u8);
void TitanArm1StartHover(struct Object2 *);
void *CreateTitanArm3(struct Object *, u8);
void TitanArm3StartHover(struct Object2 *);
void *CreateTitanArm2(struct Object *, u8);
void TitanArm2StartHover(struct Object2 *);
void *CreateTitanArm4(struct Object *, u8);
void TitanArm4StartHover(struct Object2 *);
void *CreateTitanHead(struct Object *, u8);
void TitanHeadStartIdle(struct TitanHead *);
void *CreateTitanHeadMissile(struct Object *, u8);
void TitanHeadMissileInit(struct Object2 *);

extern const struct AnimInfo gMegaTitanAnimInfo[];
extern const struct AnimInfo gMegaTitanAnimInfo2[];
extern const struct AnimInfo gMegaTitanAnimInfo3[];
extern const struct AnimInfo gMegaTitanAnimInfo4[];
extern const struct AnimInfo gMegaTitanAnimInfo5[];
extern const struct AnimInfo gMegaTitanAnimInfo6[];
extern const struct AnimInfo gMegaTitanAnimInfo7[];
extern const struct AnimInfo gMegaTitanAnimInfo8[];
extern const struct AnimInfo gMegaTitanAnimInfo9[];

#endif

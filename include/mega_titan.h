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
void sub_080EDC94(struct MegaTitan *);
void *CreateTitanArm1(struct Object *, u8);
void sub_080EF1A8(struct Object2 *);
void *CreateTitanArm3(struct Object *, u8);
void sub_080F1598(struct Object2 *);
void *CreateTitanArm2(struct Object *, u8);
void sub_080F2170(struct Object2 *);
void *CreateTitanArm4(struct Object *, u8);
void sub_080F2D74(struct Object2 *);
void *CreateTitanHead(struct Object *, u8);
void sub_080F486C(struct TitanHead *);
void *CreateTitanHeadMissile(struct Object *, u8);
void sub_080F55A8(struct Object2 *);

extern const struct Unk_02021590 gUnk_08356E54[];
extern const struct Unk_02021590 gUnk_08356E78[];
extern const struct Unk_02021590 gUnk_08356EC8[];
extern const struct Unk_02021590 gUnk_08356F18[];
extern const struct Unk_02021590 gUnk_08356F68[];
extern const struct Unk_02021590 gUnk_08356FB8[];
extern const struct Unk_02021590 gUnk_08356FD8[];
extern const struct Unk_02021590 gUnk_08356FE0[];
extern const struct Unk_02021590 gUnk_0835703C[];

#endif

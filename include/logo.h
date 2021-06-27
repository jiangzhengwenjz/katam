#ifndef GUARD_LOGO_H
#define GUARD_LOGO_H

#include "data.h"
#include "global.h"
#include "task.h"

struct LogoStruct;

typedef void (*LogoFunc) (struct LogoStruct*);

struct LogoStruct {
    u32 unk0;
    u16 unk4;
    u8 filler6[2];
    LogoFunc unk8;
    s16 unkC;
    u16 unkE;
};

struct Unk_083877EE {
    u8 filler0[0x1e];
    s16 unk1E;
};

extern const struct Unk_083877EE gUnk_083877EE;

extern void CreateLogo(void);

#endif

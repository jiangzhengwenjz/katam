#ifndef GUARD_DEMO_H
#define GUARD_DEMO_H

#include "global.h"
#include "task.h"

struct DemoStruct;

typedef void (*CreateFunc)(void);
typedef void (*DemoFunc)(struct DemoStruct*);

struct DemoStruct {
    DemoFunc unk0;
    u16 unk4;
    u8 filler6[2];
};

extern u8 gUnk_0203AD30;
extern u16 gUnk_02038990[][2];
extern u8 gUnk_03000554;
extern u8 gUnk_03000558;

extern void sub_08025E00(UNUSED struct DemoStruct*);
extern void CreateDemo(u16);
extern u16 sub_08025F2C(void);
extern void sub_08025F50(void);
extern void sub_08025F84(struct DemoStruct*);

#endif

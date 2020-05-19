#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"

struct Sprite;

void IntrMain(void);

u16 sub_0800A91C(u16, u16);
void sub_0800AC00(u32);
void sub_0800AC5C(void);
s16 sub_0800ACD4(u32, u16);

void sub_08020490(void);
void CreateDemo(u16);
u16 sub_08025F2C(void);
void CreateCutscene(void);

void sub_08030E44(void);
u32 sub_08030FE0(void);
void sub_08031BFC(void);
void sub_08032E98(void);
void sub_08033478(void);

void sub_08138B44(void);

void sub_08145B64(u16);
void CreateTitleScreen(void);
u32 sub_0814F274(u16*);
void sub_0814F3C4(u16*, u32);

u32 sub_08153184(void);
u32 sub_0815436C(void);
u32 sub_08154B14(void);

extern u32 sub_08155128(struct Sprite*);
extern void sub_0815604C(struct Sprite*);

u32 sub_081570B0(u16);
void sub_08157168(void);
void sub_08157190(u32);
void sub_08158334(u16*, u8, u16);
void sub_08158870(void);
void Timer3Intr(void);
void nullsub_2(void);
void sub_08159074(void);
u32 sub_08159088(u16);

#endif

#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"

void IntrMain(void);
void sub_080001CC(void);
void sub_08030E44(void);
u32 sub_08030FE0(void);
void sub_08032E98(void);
u32 GameStateInit(void);
void GameStateExecute(void);
struct Unk_03003A20* sub_08152DD8(u16);
u32 sub_08153184(void);
u32 sub_0815436C(void);
u32 sub_08154B14(void);
void sub_08158870(void);
void nullsub_2(void);
void sub_08159074(void);
void sub_08157168(void);
u32 sub_08159088(u16);

extern void sub_08158334(u16*, u8, u16);
extern void sub_08149CE4(void);
extern void sub_08145B64(u16);

void Timer3Intr(void);

#endif

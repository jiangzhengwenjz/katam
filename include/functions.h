#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"

struct Kirby;
struct Object;
struct Object2;
struct Sprite;

void IntrMain(void);

void sub_08001408(u8, void *, void *, void *);

void sub_08001678(u8, u8, u8, u8);

void sub_08002918(u8, void *);
void *sub_080025AC(u8, u8, u8);
s32 *sub_08002958(u8);
void sub_080029F4(u8, u16);

s16 sub_0800A91C(s32 arg0, u16 arg1);
void sub_0800AC00(u32);
void sub_0800AC5C(void);
s16 sub_0800ACD4(u32, u16);

s16 sub_0800A9F4(s32, u16);
s16 sub_0800AAE0(s32, u16);

void sub_0801FCA8(s32);

#include "demo.h"

void sub_08020428(CreateFunc);
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
void CreateDemo(u16);
u16 sub_08025F2C(void);
void CreateCutscene(void);
void sub_08033540(u8);
void sub_080335B4(u8);
void sub_08033478(void);
void sub_080332BC(u8, u8, const u16 *, const u32 *, const u32 *);

u8 sub_0803925C(struct Object2*, struct Kirby*);

struct Kirby* sub_0803D368(struct Object2*);
u32 sub_0803DD58(u8);
u8 sub_0803DF24(u16);
void sub_0803DFAC(u16, u8);
void sub_0803E2B0(struct Object2*, s8, s8, s8, s8);
void sub_0803E308(struct Object2*, s8, s8, s8, s8);
void sub_0803E380(struct Object2*);

void sub_0808324C(struct Kirby*, u16);
void sub_0808AE30(struct Object2*, u32, u16, u8);

void sub_0809513C(struct Object2*, u8, u8);
void sub_0809D8C8(struct Object2*);
void ObjectMain(void);
void ObjectDestroy(struct Task*);
void ObjectSetFunc(struct Object2*, u16, void(*)(struct Object2*));

void sub_080C29C0(struct Object2*, u8);

void sub_08138B44(void);

void sub_08145B64(u16);
void CreateTitleScreen(void);
u32 sub_0814F274(u16*);
void sub_0814F3C4(u16*, u32);

u32 sub_08153184(void);
u32 sub_0815436C(void);
u32 sub_08154B14(void);

u32 sub_08155128(struct Sprite*);
void sub_08155604(struct Sprite*, s16*);
void sub_0815604C(struct Sprite*);

u32 sub_081570B0(u32);
void sub_08157168(void);
void sub_08157190(u32);
void sub_08158334(u16*, u8, u16);
void sub_08158870(void);
void sub_08158934(void);
void sub_0815898C(void);
void sub_081589E8(void);
void Timer3Intr(void);
void nullsub_2(void);
void sub_08159074(void);
u32 sub_08159088(u16);

#endif

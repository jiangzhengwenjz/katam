#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"
#include "data.h"

struct Kirby;
struct Object;
struct Object2;
struct Sprite;

void IntrMain(void);

void sub_08001408(u8, void *, void *, void *);

void sub_08001678(u8, u8, u8, u8);
u8 sub_080023E4(u8, u16, u16);
void *sub_080025AC(u8, u8, u8);
u16 sub_080029BC(u8);
u16 sub_080029E4(u8);
void sub_080029F4(u8, u16);

void sub_08002C98(u16, u16 *, u32 *, u32 *);

u8 sub_08009DE8(struct Object2 *);
u8 sub_08009DF8(struct Object2 *);


void sub_0800E0E4(struct Object2*, s16, s16);

#include "demo.h"

void sub_08020428(void (*)(void));
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
void sub_08024E20(struct Object2 *);
void sub_08025650(u8);
void sub_08025A80(void);
void CreateCutscene(void);
void sub_0802B4A8(void);
void sub_08032E98(void);
void sub_08033540(u8);
void sub_080335B4(u8);
void sub_08033478(void);
void sub_080332BC(u8, u8, const u16 *, const u32 *, const u32 *);

struct Object5 *sub_08034E14(struct Object2 *);
void sub_08034C9C(u8);
void sub_08035E28(u8);
u8 sub_0803925C(struct ObjectBase*, struct ObjectBase*);
u8 sub_08039430(struct Object2 *, s32, s32, s32, s16, u16, u16);
struct Unk_02022930_0 *sub_0803C83C(u8, u16);
void sub_0803CFC4(u8, u16, u8, s8, s8, s8, u16); /* TODO: signed vs unsigned */
void sub_0803D280(u8, u8);
void sub_0803D2A8(u8, u8);
struct Kirby* sub_0803D368(struct Object2*);
struct Kirby* sub_0803D46C(struct Object2*);
struct Kirby *sub_0803D5CC(struct ObjectBase *);
u16 sub_0803D6B4(struct Object2*);
void sub_0803DBC8(struct Object4 *);
void sub_0803DCCC(struct Task*);
u32 sub_0803DD58(u8);
u32 sub_0803DE54(u32, u16, u8);
u8 sub_0803DF24(u16);
u8 sub_0803DFAC(u16, u8);
void sub_0803E2B0(struct ObjectBase*, s8, s8, s8, s8);
void sub_0803E308(struct ObjectBase*, s8, s8, s8, s8);
void sub_0803E380(struct ObjectBase*);
void sub_0803E3B0(struct Object4 *);
void sub_0803E458(void);
void sub_0803E4D4(u8);
void sub_0803E558(u8);
u8 sub_0804BAD8(struct Kirby *);
bool8 sub_080525C0(struct Kirby *);
void sub_08052BB4(struct Kirby *);
void sub_08052E2C(struct Object2 *);
void sub_080531B4(struct Kirby *, const struct Unk_08353510 *);
void sub_080547C4(struct Kirby *, u16);
void sub_08054C0C(struct Kirby *);

void sub_08063D98(struct Kirby *, __attribute__((unused)) s32);
void sub_0806EFF8(struct Kirby *);
void sub_0806F260(struct Kirby *);
u16 sub_0806F780(struct ObjectBase *);
u32 sub_0806F8BC(struct Object2 *);
u32 sub_0806FAC8(struct Object4 *);
void sub_0806FC70(struct Object2*);
void sub_0806FE64(u16, struct Object2*);
void sub_080700D8(struct Object2 *);
u8 sub_08070504(struct Object2*);
void sub_08070580(void);
void sub_080708DC(struct ObjectBase*, struct Sprite*, u32, u16, u8, u16);
void sub_080709F8(struct Object4 *, struct Sprite *, u32, u16, u8, u16);
void sub_08073D2C(struct Object2*);
void sub_08074420(struct Object2*);
struct Object3 *sub_0807A7E8(struct Object2 *);
void sub_0807DBCC(struct Object2 *);

void sub_0808324C(struct Kirby*, u16);
void sub_0808520C(struct Object2 *, u16);
void sub_080857A0(struct Object2 *);
void sub_08085CE8(struct Object2*, const u8*);
void sub_080860A8(struct Object2 *, const struct Unk_08357260 *);
struct Object6 *sub_08086938(struct Object2 *, u8);
void sub_08086A28(struct Object6 *, u8);
void sub_08086C48(struct Object2*);
struct Object7 *sub_08088398(struct Object2*, const u8*);
void sub_0808845C(struct Object2 *, u16);
void sub_080884C4(struct Object2 *);
void sub_08088528(struct Object2 *);
void sub_0808859C(struct Object2*, u16, u16);
void sub_080886A8(struct ObjectBase *);
void sub_08088700(struct ObjectBase *, u16);
void sub_0808925C(struct Object2 *);
void sub_08089864(struct Object2*, s8, s8, u32);
struct Object4 *sub_0808AE30(struct Object2*, u32, u16, u8);
struct Object4 *sub_0808BA6C(struct Object2*, u32, u16, u8);

void sub_0809513C(struct Object2*, u8, u8);
void sub_08098184(struct Object2 *);
void sub_080988B0(struct Object2 *);
void sub_0809F840(struct Object2 *);

void sub_080A8C28(struct Object2*, u8, u8);
void sub_080B11C0(struct Object2 *);

void sub_0811BF24(struct Object2*);

void sub_0812A670(void);
void sub_0812A77C(void);
void sub_0812F814(void);
void sub_0812F91C(void);
void sub_08134C58(void);
void sub_08134D64(void);
void sub_08138B44(void);
void sub_08138D64(u8);

void sub_08145B64(u16);
void CreateTitleScreen(void);
u32 sub_0814F274(struct Object11*);
void sub_0814F3C4(struct Object11*, const void *); // TODO: determine type

u32 sub_081570B0(u32);
void sub_08157168(void);
void sub_08157190(u32);
void sub_0815828C(const u16 *, u8, u16);
void sub_08158334(const u16 *, u8, u16);
void sub_08158870(void);
void sub_08158934(void);
void sub_0815898C(void);
void sub_081589E8(void);
void Timer3Intr(void);
void nullsub_2(void);

#endif

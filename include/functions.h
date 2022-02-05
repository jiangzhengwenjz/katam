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
void sub_08002D40(u16, u8 *, u8 *);
u32 sub_080035F4(struct ObjectBase *);
bool32 sub_08003704(struct ObjectBase *);

bool32 sub_08009D28(struct ObjectBase *);
bool32 sub_08009D70(struct ObjectBase *);
u8 sub_08009DD8(struct Kirby *);
u8 sub_08009DE8(struct Object2 *);
u8 sub_08009DF8(struct Object2 *);


void sub_0800E0E4(struct Object2*, s16, s16);

#include "demo.h"

void sub_08020428(void (*)(void));
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
u16 sub_0802055C(u16);
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
void sub_08035E40(struct ObjectBase *);
void sub_08035F50(struct ObjectBase *);
u8 sub_0803925C(struct ObjectBase*, struct ObjectBase*);
u8 sub_08039430(struct Object2 *, s32, s32, s32, s16, u16, u16);
bool32 sub_080395D4(void);
void sub_08039600(u16);
struct Unk_02022930_0 *sub_0803C83C(u8, u16);
struct Unk_02022930_0 *sub_0803CA20(u8);
struct Unk_02022930_0 *sub_0803CAE4(u8);
void sub_0803CFC4(u8, u16, u8, s8, s8, s8, u16); /* TODO: signed vs unsigned */
void sub_0803D280(u8, u8);
void sub_0803D2A8(u8, u8);
struct Kirby *sub_0803D368(struct ObjectBase *);
struct Kirby *sub_0803D46C(struct ObjectBase *);
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
void sub_08044EA8(struct Kirby *);
void sub_080476C4(struct Kirby *);
void sub_08047EF0(struct Kirby *);
u8 sub_0804BAD8(struct Kirby *);
void sub_0804D9D4(struct Kirby *);
void sub_0804F894(struct Kirby *);
bool8 sub_080525C0(struct Kirby *);
void sub_08052BB4(struct Kirby *);
void sub_08052E2C(struct Object2 *);
void sub_080531B4(struct Kirby *, const struct Unk_08353510 *);
void sub_080547C4(struct Kirby *, u16);
void sub_08054C0C(struct Kirby *);
void sub_08054F90(struct Kirby *);
void sub_0805545C(struct Kirby *);
void sub_08055920(struct Kirby *);
void sub_08056618(struct Kirby *);
void sub_08056C2C(struct Kirby *);
void sub_08056E40(struct Kirby *);
void sub_08059810(struct Kirby *);
void sub_0805AAA0(struct Kirby *);
void sub_0805B010(struct Kirby *);
void sub_0805B130(struct Kirby *, u16);
void sub_0805B1B8(struct Kirby *);
void sub_0805B2FC(struct Kirby *);
void sub_0805B3A0(struct Kirby *);
void sub_0805B450(struct Kirby *);
void sub_0805B510(struct Kirby *);
void sub_0805B8B8(struct Kirby *);
void sub_0805B988(struct Kirby *);
void sub_0805BA58(struct Kirby *);
bool8 sub_0805BC78(struct Kirby *);
void sub_0805C070(struct Kirby *);
bool8 sub_0805C0C8(struct Kirby *);
void sub_0805F758(struct Kirby *);
void sub_08063D98(struct Kirby *, __attribute__((unused)) s32);
void sub_080641FC(struct Kirby *);
void sub_0806A798(struct Kirby *);
void sub_0806E4EC(struct ObjectBase *);
void sub_0806EB74(struct ObjectBase *);
void sub_0806EFF8(struct Kirby *);
void sub_0806F260(struct Kirby *);
void sub_0806F288(struct Kirby *);
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
void sub_080711A8(struct Kirby *);
void sub_080716BC(struct Kirby *);
void sub_08071C9C(struct Kirby *);
void sub_08072C5C(struct Kirby *);
void sub_08073D2C(struct Object2*);
void sub_08074240(struct ObjectBase *, bool8);
void sub_08074420(struct Object2*);
struct Object3 *sub_0807A7E8(struct Object2 *);
void sub_0807DBCC(struct Object2 *);

void sub_08082380(struct Object2 *, u8);
void sub_0808324C(struct Kirby*, u16);
void sub_0808520C(struct Object2 *, u16);
void sub_080857A0(struct Object2 *);
void sub_08085CE8(struct Object2*, const u8*);
void sub_080860A8(struct Object2 *, const struct Unk_08357260 *);
struct Object6 *sub_08086938(struct Object2 *, u8);
void sub_08086A28(struct Object6 *, u8);
void sub_08086C48(struct Object2*);
void sub_080880AC(struct Kirby *, u16);
void sub_08088118(struct Kirby *);
void sub_08088178(struct Kirby *, u16);
void sub_080882B4(struct Object2 *);
struct Object7 *sub_08088398(struct Object2*, const u8*);
void sub_0808845C(struct Object2 *, u16);
void sub_080884C4(struct Object2 *);
void sub_08088528(struct Object2 *);
void sub_0808859C(struct Object2 *, u16, u16);
void sub_08088640(struct Object2 *, u8, u16);
void sub_080886A8(struct ObjectBase *);
void sub_08088700(struct ObjectBase *, u16);
void sub_0808925C(struct Object2 *);
void sub_080897A0(struct ObjectBase *);
void sub_08089864(struct Object2*, s8, s8, u32);
void sub_08089B14(struct ObjectBase *);
void sub_08089D98(struct ObjectBase *);
struct Object4 *sub_0808AE30(struct Object2*, u32, u16, u8);
struct Object4 *sub_0808BA6C(struct Object2*, u32, u16, u8);

void sub_0808D5E0(struct Object2 *);
void sub_0808DC80(struct Object2 *);
void sub_0808E024(struct Object2 *);
void sub_0808E2EC(struct Object2 *);
void sub_0808E66C(struct Object2 *);

void sub_0809513C(struct Object2*, u8, u8);
void sub_08098184(struct Object2 *);
void sub_080988B0(struct Object2 *);
void sub_0809F840(struct Object2 *);

void sub_080A8C28(struct Object2*, u8, u8);
void sub_080A9038(struct Kirby *, bool8);
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

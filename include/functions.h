#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"
#include "data.h"

struct Kirby;
struct Object;
struct Object2;
struct Sprite;

void IntrMain(void);

void sub_08001358(u8);
void FillLevelInfo(u8, u16, void **, void **); // TODO: pointer type
void sub_08001408(u8, union LevelInfo_1E0, void *, void *);

void sub_08001678(u8, u8, u8, u8);
void sub_080027A8(void);
u16 sub_080029BC(u8);
u16 sub_080029E4(u8);
void sub_080029F4(u8, u16);
void sub_08002C18(u16, u16, u8, u8);
void sub_08002C98(u16, u16 *, u32 *, u32 *);
void sub_08002D40(u16, u8 *, u8 *); // TODO: a2 and a3 are not consistent with Kirby::unkF2/Kirby::unkF3/sub_080534D0
u32 sub_080035F4(struct ObjectBase *);
bool32 sub_08003704(struct ObjectBase *);

bool32 sub_08009D28(struct ObjectBase *);
bool32 sub_08009D70(struct ObjectBase *);
u8 sub_08009DD8(struct Kirby *);
u8 sub_08009DE8(struct Object2 *);
u8 sub_08009DF8(struct Object2 *);


void sub_0800E0E4(struct Object2*, s16, s16);

void sub_0800EE04(u8, u32);
u8 sub_0800EEBC(struct ObjectBase *);

#include "demo.h"

void sub_08020428(void (*)(void));
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
u16 sub_0802055C(u16);
void sub_08024E20(struct Object2 *);
void sub_08025650(u8);
void sub_08025A80(void);
void sub_08025AD0(void);
void CreateCutscene(void);
void sub_0802B4A8(void);
void sub_08032E98(void);
void sub_08033540(u8);
void sub_080335B4(u8);
void sub_08033478(void);
void sub_080332BC(u8, u8, const u16 *, const u32 *, const u32 *);
void sub_08033674(u8);
struct Object5 *sub_08034E14(struct Object2 *);
void sub_08034C9C(u8);
void sub_08034FA8(struct Object5 *);
void sub_08035E28(u8);
void sub_08035E40(struct ObjectBase *);
void sub_08035E9C(struct ObjectBase *);
void sub_08035EF8(struct ObjectBase *);
void sub_08035F50(struct ObjectBase *);
void sub_0803620C(void);
void sub_08036258(void);
void sub_080362A4(void);
void sub_08036314(struct ObjectBase *);
void sub_08036378(void);
u8 sub_0803925C(struct ObjectBase*, struct ObjectBase*);
u8 sub_08039430(struct Object2 *, s32, s32, s32, s16, u16, u16);
bool32 sub_080395D4(void);
void sub_08039600(u16);
struct Unk_02022930_0 *sub_0803C83C(u8, u16);
struct Unk_02022930_0 *sub_0803C95C(u8);
struct Unk_02022930_0 *sub_0803CA20(u8);
struct Unk_02022930_0 *sub_0803CAE4(u8);
struct Unk_02022930_0 *sub_0803CBC4(u8);
struct Unk_02022930_0 *sub_0803CC80(u8);
void sub_0803CD40(void);
void sub_0803CFC4(u8, u16, u8, s8, s8, s8, u16); /* TODO: signed vs unsigned */
void sub_0803D250(void **, void **); // TODO: pointer type
void sub_0803D280(u8, u8);
void sub_0803D2A8(u8, u8);
struct Unk_02022930_0 *sub_0803D308(u8);
void sub_0803E778(u8, u16, u8);
bool8 sub_080525C0(struct Kirby *);
void sub_08052BB4(struct Kirby *);
void sub_080531B4(struct Kirby *, const struct Unk_08353510 *);
void sub_08054C0C(struct Kirby *);
void sub_080547C4(struct Kirby *, u8);
void sub_0805545C(struct Kirby *);
void sub_08055920(struct Kirby *);
void sub_08055C14(struct Kirby *);
void sub_08056C2C(struct Kirby *);
void sub_08056E40(struct Kirby *);
void sub_08059810(struct Kirby *);

void sub_0805B010(struct Kirby *);
void sub_0805B130(struct Kirby *, u16);
void sub_0805B1B8(struct Kirby *);
void sub_0805B2C8(struct Kirby *);
void sub_0805B2FC(struct Kirby *);
void sub_0805B3A0(struct Kirby *);
void sub_0805B450(struct Kirby *);
void sub_0805B510(struct Kirby *);
void sub_0805B644(struct Kirby *);
void sub_0805B6BC(struct Kirby *);
void sub_0805B8B8(struct Kirby *);
void sub_0805B988(struct Kirby *);
void sub_0805BA58(struct Kirby *);
void sub_0805BBB4(struct Kirby *);
bool8 sub_0805BC78(struct Kirby *);
bool32 sub_0805BDF4(struct Kirby *, u16, u8, u8);
void sub_0805BE80(struct Kirby *);
void sub_0805BEE8(struct Kirby *);
void sub_0805BF2C(struct Kirby *);
void sub_0805BF4C(struct Kirby *);
void sub_0805BF60(struct Kirby *);
void sub_0805BF6C(struct Kirby *);
void sub_0805BF9C(struct Kirby *);
void sub_0805BFD4(struct Kirby *);
void sub_0805C018(struct Kirby *);
void sub_0805C024(struct Kirby *);
void sub_0805C070(struct Kirby *);
bool8 sub_0805C0C8(struct Kirby *);
void sub_0805C11C(struct Kirby *);
void sub_0805F758(struct Kirby *);
void sub_08058628(struct Kirby *);
void sub_08063D98(struct Kirby *, __attribute__((unused)) s32);
void sub_080641FC(struct Kirby *);
void sub_0806A798(struct Kirby *);

// TODO: A bunch of functions below have unknown 1st param type
void sub_0806E4EC(struct ObjectBase *);
void sub_0806EB74(struct ObjectBase *);
void sub_0806EC28(struct Kirby *);
void sub_0806ED58(struct Kirby *);
void sub_0806EFF8(struct Kirby *);
void sub_0806F260(struct Kirby *);
void sub_0806F288(struct Kirby *);
u16 sub_0806F780(struct ObjectBase *);
u32 sub_0806F8BC(struct Object2 *);
u32 sub_0806FAC8(struct Object4 *);
void sub_0806FC70(struct Object2*);
void sub_0806FE64(u16, struct ObjectBase *);
void sub_080700D8(struct Object2 *);
u8 sub_08070504(struct Object2*);
void sub_08070580(void);
void sub_080708DC(struct ObjectBase*, struct Sprite*, u32, u16, u8, u16);
void sub_080709F8(struct Object4 *, struct Sprite *, u32, u16, u8, u16);
void sub_080711A8(struct Kirby *);
void sub_080716BC(struct Kirby *);
void sub_08071994(struct Kirby *);
void sub_08071C9C(struct Kirby *);
void sub_08071FC0(struct Kirby *);
void sub_080725E0(struct Kirby *);
void sub_08072C5C(struct Kirby *);
void sub_080734F8(struct Kirby *);
void sub_08073D2C(struct Object2*);
void sub_08074240(struct ObjectBase *, bool8);
void sub_08074420(struct Object2*);
void sub_08074AB0(struct Kirby *);
void sub_08078EFC(struct Kirby *);
void sub_0807958C(struct Kirby *);
void sub_0807988C(struct Kirby *);
void sub_08079C28(struct ObjectBase *);
struct Object3 *sub_0807A7E8(struct Object2 *);
void sub_0807BCE0(struct Kirby *);
void sub_0807CFE4(struct Kirby *);
void sub_0807D2D0(struct Kirby *);
void sub_0807D4B0(struct Kirby *);
void sub_0807D690(struct Kirby *);
void sub_0807DBCC(struct Object2 *);

void sub_08082380(struct Object2 *, u8);
void sub_0808324C(struct Kirby*, u16);
void sub_08083FC0(struct ObjectBase *);
void sub_0808466C(struct ObjectBase *);
void sub_0808520C(struct Object2 *, u16);
void sub_080857A0(struct Object2 *);
void sub_08085CE8(struct Object2*, const u8*);
void sub_080860A8(struct Object2 *, const struct Unk_08357260 *);
struct Object6 *sub_08086938(struct Object2 *, u8);
void sub_08086A28(struct Object6 *, u8);
void sub_08086C48(struct Object2*);
void sub_08088060(struct Kirby *);
void sub_080880AC(struct Kirby *, u16);
void sub_08088118(struct Kirby *);
void sub_08088178(struct Kirby *, u16);
void sub_080882B4(struct ObjectBase *);
struct Object7 *sub_08088398(struct Object2*, const u8*);
void sub_0808840C(struct ObjectBase *);
void sub_0808845C(struct Object2 *, u16);
void sub_080884C4(struct Object2 *);
void sub_08088528(struct Object2 *);
void sub_0808859C(struct Object2 *, u16, u16);
void sub_08088640(struct Object2 *, u8, u16);
void sub_080886A8(struct ObjectBase *);
void sub_08088700(struct ObjectBase *, u16);
void sub_0808925C(struct ObjectBase *);
void sub_080897A0(struct ObjectBase *);
void sub_08089864(struct Object2*, s8, s8, u32);
void sub_08089B14(struct ObjectBase *);
void sub_08089D98(struct ObjectBase *);
void sub_0808A3E0(struct ObjectBase *);
void sub_0808A90C(struct ObjectBase *);
struct Object4 *sub_0808AE30(struct ObjectBase *, u32, u16, u8);
struct Object4 *sub_0808BA6C(struct ObjectBase *, u32, u16, u8);
struct Object4 *sub_0808BEA4(struct ObjectBase *, u32, u16, u8, u16);

void sub_0808CBCC(struct ObjectBase *);
void sub_0808D5E0(struct ObjectBase *);
void sub_0808DC80(struct ObjectBase *);
void sub_0808E024(struct ObjectBase *);
void sub_0808E2EC(struct ObjectBase *);
void sub_0808E66C(struct ObjectBase *);
void sub_0808E9C8(struct ObjectBase *);
void sub_0808EDB8(struct ObjectBase *);
void sub_0808F0E8(struct Kirby *);
void sub_08091614(struct Kirby *);
void sub_08091B5C(struct Kirby *);
void sub_08091F38(struct Kirby *);
void sub_08092380(struct Kirby *);
void sub_08092474(struct Kirby *);
void sub_08092568(struct Kirby *);
void sub_08092654(struct Kirby *);
void sub_08092C10(struct Kirby *);
void sub_08093264(struct Kirby *);
void sub_08093390(struct Kirby *, s16, s16);
void sub_0809361C(struct Kirby *, u32);
void sub_08093C74(struct ObjectBase *);
void sub_0809513C(struct ObjectBase *, u8, u8);
void sub_08098184(struct ObjectBase *);
void sub_080982C4(struct ObjectBase *);
void sub_080988B0(struct ObjectBase *);

void sub_08098A78(struct Kirby *, u8);
void sub_08099118(struct Kirby *);

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

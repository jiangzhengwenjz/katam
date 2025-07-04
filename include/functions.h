#ifndef GUARD_FUNCTIONS_H
#define GUARD_FUNCTIONS_H

#include "global.h"
#include "data.h"

struct Kirby;
struct Object;
struct Object2;
struct Sprite;

void IntrMain(void);

void FillLevelInfo(u8, u16, void **, void **); // TODO: pointer type

void sub_08001358(u8 playerId);
void sub_08001408(u8 playerId, union LevelInfo_1E0, void *, u8 *);
void sub_080015A8(u8 playerId, u16, u16, void *);
void sub_08001678(u32, u16, u8, u32);
u32 sub_08001738(struct ObjectBase *);
u32 sub_080017E8(struct ObjectBase *);
u32 sub_08001894(struct ObjectBase *);
u32 sub_08001940(struct ObjectBase *);
void sub_080019F8(struct LevelInfo *);
void sub_08001D18(u8 playerId);
void sub_08001FF8(void);
void sub_08002118(void);
void sub_080021E4(void);
void sub_0800233C(void);
u8 sub_08002374(void);
void sub_080023A4(u8);
u8 sub_080023E4(u8 playerId, u16 x, u16 y);
u8 sub_08002434(struct LevelInfo *, u16 x, u16 y);
u8 sub_08002470(u8 playerId, u16 x, u16 y);
u8 sub_080024F0(struct LevelInfo *, u16 x, u16 y);
u8 sub_0800255C(u8 playerId, u16 x, u16 y, u8 value);
union LevelInfo_1E0 sub_080025AC(u8 playerId, u8 x, u8 y);
union LevelInfo_1E0 sub_08002624(u8 playerId, u8 x, u8 y, u8);
u8 sub_080026A8(u8 playerId, u16 x, u16 y);
u8 sub_080026F8(u16 roomId);
u8 sub_0800271C(u16 roomId, u8);
u8 sub_08002750(u16 roomId);
u8 sub_08002774(u16 roomId, u8);
void sub_080027A8(void);
void sub_080027C8(void);
u32 sub_080027E8(u32 arg0, u16 arg1, u8 arg2);
void sub_08002848(void);
void sub_08002868(void);
u32 *sub_08002888(u32 arg0, u8 index, u8 subindex);
void sub_080028CC(u8 playerId, struct Unk_02023720 *arg1);
void sub_08002918(u8 playerId, struct Unk_02023720 *arg1);
struct Unk_02023720 *sub_08002958(u8 playerId);
struct Unk_02023720 *sub_08002984(u8 playerId, u8 *arg1);
u16 sub_080029BC(u8 arg0);
void sub_080029CC(u8 arg0, u16 arg1);
u16 sub_080029E4(u8 arg0);
void sub_080029F4(u8 arg0, u16 arg1);
u16 sub_08002A0C(u8 arg0);
void sub_08002A1C(u8 arg0, u16 arg1);
u16 sub_08002A2C(u8 arg0, u8 arg1);
void sub_08002A44(u8 arg0, u16 arg1, u8 arg2);
u32 sub_08002A5C(u16 arg0);
void sub_08002A80(u16 arg0);
u8 sub_08002AAC(u16 arg0);
u8 sub_08002AD0(u16 arg0);
void sub_08002B30(u16 arg0, s16 arg1, s16 arg2);
u32 sub_08002BA8(u16, u16, u8, u8);
void sub_08002C18(u16, u16, u8, u8);
void sub_08002C98(u16, u16 *, u32 *, u32 *);
void sub_08002D40(u16, u8 *, u8 *); // TODO: a2 and a3 are not consistent with Kirby::unkF2/Kirby::unkF3/sub_080534D0

void sub_08002C98(u16, u16 *, u32 *, u32 *);
void sub_08002D40(u16, u8 *, u8 *);
void sub_08002E3C(void);
void sub_08002E48(struct Task *);

void sub_08002EC4(u8 playerId, bool32);
void sub_08003028(u8 playerId, bool32);
void sub_08003108(u8 playerId, bool32);

u32 sub_080035F4(struct ObjectBase *);
bool32 sub_08003704(struct ObjectBase *);

void sub_08003438(void);
u32 sub_080035F4(struct ObjectBase *);
bool32 sub_08003704(struct ObjectBase *);
void sub_080037E8(struct ObjectBase *);
u32 sub_0800385C(struct Kirby *, u16); // arg0 is only treated as a struct Kirby * when arg1 is non-zero
bool32 sub_08004008(struct Kirby *, struct Unk_3007DE0 *);

u16 sub_080042BC(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_080047E0(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004888(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004998(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004A44(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004B58(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004DBC(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08004FA8(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_0800520C(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_080053F8(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_0800549C(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08005544(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_080057A4(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08005A04(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08005BF8(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08005DE0(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08005FD8(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_080061C4(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_080063B0(struct Kirby *, struct Unk_3007DE0 *, u16, u8);
u16 sub_08006598(struct Kirby *, struct Unk_3007DE0 *, u16, u8);

void sub_080097C4(struct Kirby *, u32);
void sub_080098C4(struct Kirby *, u32);

bool32 sub_08009D28(struct ObjectBase *);
bool32 sub_08009D70(struct ObjectBase *);

u8 sub_08009DD8(struct Kirby *);
u8 sub_08009DE8(struct Kirby *);
u8 sub_08009DF8(struct Kirby *);

void CreateLevelObjects(u8);
void sub_0800A6E8(void);
void sub_0800A820(void);
void sub_0800A84C(void);
void *CreateObject(u8 playerId, const struct Object *obj);
void sub_0800A8BC(struct Task *);
void sub_0800A8C8(u8 arg0, u8 arg1, u8 arg2);
void sub_0800A8F8(u8 arg0, u8 arg1, u8 arg2);

void sub_0800EE04(u8, u32);
u8 sub_0800EEBC(struct ObjectBase *);

void sub_08020428(void (*)(void));
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
u16 sub_0802055C(u16);
void sub_08025650(u8);
void sub_08025A80(void);
void sub_08025AD0(void);
void CreateCutscene(void);
void sub_0802B4A8(void);
struct Unk_0802E57C *sub_0802E57C(void);
void sub_0802E6C4(struct Unk_0802E57C *);
void sub_0802FBE0(struct Unk_0802E57C *);
void sub_0802FBF4(struct Unk_0802E57C *);
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
u8 sub_08039430(struct ObjectBase *, s32, s32, s16, s16, u16, u16);
void *sub_08039490(struct ObjectBase *); // TODO: may return struct Object2 ** or struct ObjectBase **
struct Object2 **sub_080394C8(struct ObjectBase *);
bool32 sub_080395D4(void);
void sub_08039600(u16);
void sub_08039670(void);
struct Unk_02022930_0 *sub_0803C83C(u8, u16);
struct Unk_02022930_0 *sub_0803C8CC(u8, u16);
struct Unk_02022930_0 *sub_0803C95C(u8);
struct Unk_02022930_0 *sub_0803CA20(u8);
struct Unk_02022930_0 *sub_0803CAE4(u8);
struct Unk_02022930_0 *sub_0803CBC4(u8);
struct Unk_02022930_0 *sub_0803CC80(u8);
void sub_0803CD40(void);
void sub_0803CD98(u8, u16, u8, u16, u8, u16);
void sub_0803CFC4(u8, u16, u8, s8, s8, s8, u16); /* TODO: signed vs unsigned */
void sub_0803D21C(const u16 *palette, u8 offset, u16 num);
void sub_0803D250(void **, void **); // TODO: pointer type
void sub_0803D280(u8, u8);
void sub_0803D2A8(u8, u8);
struct Unk_02022930_0 *sub_0803D308(u8);
void sub_0803E778(u8, u16, u8);

// TODO: A bunch of functions below have unknown 1st param type
bool32 sub_0806FAC8(struct Object4 *);
void sub_0806FC70(struct ObjectBase *);
void sub_0806FE64(u16, struct ObjectBase *);
void sub_080700D8(struct ObjectBase *);
bool8 sub_08070504(struct ObjectBase*);
void sub_08070580(void);
void sub_080708DC(struct ObjectBase*, struct Sprite*, u32, u16, u8, u16);
void sub_080709F8(struct Object4 *, struct Sprite *, u32, u16, u8, u16);
void sub_080711A8(struct Kirby *);
void sub_080716BC(struct Kirby *);
void sub_08071994(struct Kirby *);
void sub_08071C9C(struct Kirby *);
void sub_08071FC0(struct Kirby *);
void sub_08072314(struct Kirby *);
void sub_080725E0(struct Kirby *);
void sub_08072C5C(struct Kirby *);
void sub_080734F8(struct Kirby *);
void sub_08073D2C(struct ObjectBase *);
void sub_08074088(struct Kirby *);
void sub_08074240(struct ObjectBase *, bool8);
void sub_08074420(struct ObjectBase *);
void sub_08074AB0(struct Kirby *);
void sub_0807529C(struct Kirby *);
void sub_08075DB0(struct Kirby *);
void sub_08076A60(struct Kirby *);
void sub_08077454(struct Kirby *);
void sub_08077CD0(struct Kirby *);
void sub_08078260(struct Kirby *);
void sub_080787F0(struct Kirby *);
void sub_08078EFC(struct Kirby *);
void sub_0807958C(struct Kirby *);
void sub_0807988C(struct Kirby *);
void sub_08079C28(struct Kirby *);
void sub_0807A10C(struct Kirby *);
void sub_0807A3E4(struct Kirby *);
struct Object3 *sub_0807A7E8(void *);
void sub_0807BCE0(struct Kirby *);
void sub_0807BF2C(struct Kirby *);
void sub_0807C48C(struct Kirby *);
void sub_0807C6C0(struct Kirby *);
void sub_0807C954(struct Kirby *);
void sub_0807CC14(struct Kirby *);
void sub_0807CDFC(struct Kirby *);
void sub_0807CFE4(struct Kirby *);
void sub_0807D2D0(struct Kirby *);
void sub_0807D4B0(struct Kirby *);
void sub_0807D690(struct Kirby *);
void sub_0807DBCC(struct Object2 *);
void sub_0807E190(struct Kirby *);
void sub_0807E430(struct Kirby *);
void sub_0807E66C(struct Kirby *);
void sub_0807EA78(struct Kirby *);
void sub_0807EBAC(struct Kirby *);
void sub_0807ECE0(struct Kirby *);
void sub_0807EF0C(struct Kirby *);
void sub_0807F128(struct Kirby *);
void sub_0807F344(struct Kirby *);
void sub_0807F720(struct Kirby *);
void sub_0807F9EC(struct Kirby *);
void sub_0807FCD4(struct Kirby *);
void sub_08080004(struct Kirby *);
void sub_080802CC(struct Kirby *, u8);
void sub_080806FC(struct Kirby *);
void sub_08080E9C(struct Kirby *);
void sub_080815B0(struct Kirby *);
void sub_08081864(struct Kirby *, s16, u8);
void sub_08082380(struct Kirby *, u8);
void sub_08082B5C(struct Kirby *);
void sub_08082DB4(struct Kirby *);
void sub_08083040(struct Kirby *, u8);
void sub_0808324C(struct Kirby*, u16);
void sub_080838DC(struct Kirby *, struct Kirby *);
void sub_08083FC0(struct Kirby *);
void sub_08084188(struct Kirby *);
void sub_08084398(struct Kirby *);
void sub_0808466C(struct Kirby *);
void sub_08084968(struct Kirby *);
void sub_08085328(struct Kirby *);
void sub_080857A0(struct Object2 *);
struct Unk_08085CE8 *sub_08085CE8(struct ObjectBase *, const struct Unk_02021590 *);
void sub_080860A8(struct ObjectBase *, const struct Unk_08357260 *);
struct Object6 *sub_0808671C(struct Object2 *);
void sub_080867A0(struct Object6 *);
struct Object6 *sub_08086938(struct Object2 *, u8);
void sub_08086A28(struct Object6 *, u8);
void sub_08086C48(struct Object2*);
void sub_08088060(struct Kirby *);
void sub_080880AC(struct Kirby *, u16);
void sub_08088118(struct Kirby *);
void sub_08088178(struct Kirby *, u16);
struct Object7 *sub_08088398(struct Object2 *, const struct Unk_02021590 *);
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
void sub_08089864(struct ObjectBase *, s8, s8, u32);
void sub_08089B14(struct ObjectBase *);
void sub_08089D98(struct ObjectBase *);
void sub_0808A3E0(struct ObjectBase *);
void sub_0808A90C(struct ObjectBase *);
struct Object4 *sub_0808AE30(struct ObjectBase *, u32, u16, u8);
struct Object4 *sub_0808B62C(struct ObjectBase *, u32, u16, u8, u16);
struct Object4 *sub_0808BA6C(struct ObjectBase *, u32, u16, u8);
struct Object4 *sub_0808BEA4(struct ObjectBase *, u32, u16, u8, u16);

void sub_0808CBCC(struct ObjectBase *);
void sub_0808CFC0(struct Kirby *);
void sub_0808D5E0(struct ObjectBase *);
void sub_0808D95C(struct Kirby *, s8, s8);
void sub_0808DC80(struct ObjectBase *);
void sub_0808E024(struct ObjectBase *);
void sub_0808E2EC(struct ObjectBase *);
void sub_0808E66C(struct ObjectBase *);
void sub_0808E9C8(struct ObjectBase *);
void sub_0808EDB8(struct ObjectBase *);
void sub_0808F0E8(struct Kirby *);
void sub_0808F774(struct Kirby *);
void sub_0808FB44(struct Kirby *);
void sub_0808FE0C(struct Kirby *);
void sub_08090198(struct Kirby *);
void sub_08090518(struct Kirby *);
void sub_080908A4(struct Kirby *);
void sub_08090BAC(struct Kirby *);
void sub_08090F68(struct Kirby *);
void sub_08091258(struct Kirby *);
void sub_08091614(struct Kirby *);
void sub_08091B5C(struct Kirby *);
void sub_08091F38(struct Kirby *);
void sub_08092380(struct Kirby *);
void sub_08092474(struct Kirby *);
void sub_08092568(struct Kirby *);
void sub_08092654(struct Kirby *);
struct Object4 *sub_08092944(struct ObjectBase *, u32, u16, u8);
void sub_08092C10(struct Kirby *);
void sub_08092F44(struct Kirby *, u8);
void sub_08093264(struct Kirby *);
void sub_08093390(struct Kirby *, s16, s16);
void sub_0809361C(struct Kirby *, u32);
void sub_08093918(struct Kirby *, u8);
void sub_08093C74(struct ObjectBase *);
void sub_08094124(struct Kirby *);
void sub_0809447C(struct Kirby *);
void sub_08094930(struct ObjectBase *);
void sub_0809513C(struct ObjectBase *, u8, u8);
void sub_080953D4(struct ObjectBase *, s8, s8);
void sub_08095714(struct Kirby *);
void sub_080959F4(struct Kirby *);
void sub_08095F68(struct Kirby *);
void sub_080967B8(struct Kirby *);
void sub_08096AC4(struct Kirby *, u8);
void sub_08096E24(struct Kirby *, u8);
void sub_08097E9C(struct ObjectBase *, s8, s8);
void sub_08098184(struct ObjectBase *);
void sub_080982C4(struct ObjectBase *);
void sub_080988B0(struct ObjectBase *);

void sub_08098A78(struct Kirby *, u8);
void sub_08098E54(struct Kirby *, s8, s8, s16, s16);
void sub_08099118(struct Kirby *);
void sub_08099A60(struct Kirby *);
void sub_08099AC4(struct ObjectBase *);

void sub_080BB080(struct Object2*, u8);
void sub_080BB470(struct Object2*);
void sub_080BB804(struct Object2*, u8);

void sub_080C3694(struct Object2 *, u8);

void sub_0811BF24(struct Object2*);

void sub_08123FD4(void);

void sub_08138B44(void);
void sub_08138D64(u8);

void sub_08145B64(u16);

void sub_08158934(void);
void sub_0815898C(void);
void sub_081589E8(void);
void Timer3Intr(void);
void nullsub_2(void);

#endif

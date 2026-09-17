#include "code_0806F780.h"
#include "code_080332BC.h"
#include "task.h"
#include "kirby.h"
#include "main.h"
#include "random.h"
#include "functions.h"
#include "trig.h"
#include "treasures.h"
#include "bonus.h"
#include "constants/kirby.h"

void sub_08070404(void);
void sub_08070808(void);
void sub_08070B50(struct Task *);
void nullsub_122(struct ObjectBase *);
void sub_08070BA8(struct ObjectBase *);
void sub_08070C24(struct ObjectBase *);
void sub_08070E20(struct ObjectBase *);
void sub_08070FA8(struct ObjectBase *);
void sub_08070CA0(struct ObjectBase *);
void sub_08070D20(struct ObjectBase *);
void sub_08070DA0(struct ObjectBase *);
void sub_08070EA0(struct ObjectBase *);
void sub_08070F24(struct ObjectBase *);
void sub_08070FA8(struct ObjectBase *);
void sub_08071024(struct ObjectBase *);
void sub_080710A4(struct ObjectBase *);
void sub_08071124(struct ObjectBase *);
void sub_080711A0(struct ObjectBase *);
void sub_080714A0(void);
void sub_080717AC(void);
void sub_08071B0C(void);
void sub_08071E34(void);
void sub_080720F8(void);
void sub_080724C4(void);
void sub_080728B0(void);
void sub_08072E40(void);
void sub_080737D8(void);
void sub_08073A74(struct Kirby *);
void sub_08073B64(void);
bool8 sub_08073C98(struct Object14 *);
void sub_080745C4(void);
void sub_08074674(void);
void sub_08074744(void);
void sub_08074950(void);
void sub_08074C1C(void);
void sub_080753CC(void);
void sub_08075EDC(void);
void sub_08076B84(void);
void sub_08077574(void);
void sub_08077D84(void);
void sub_08078314(void);
void sub_080788AC(void);
bool8 sub_08079264(struct Unk_080C4EDC *);
bool8 sub_080794A4(struct Unk_080C4EDC *);
bool8 sub_08079504(struct Unk_080C4EDC *);
void sub_08079714(void);
void sub_08079A9C(void);
void sub_08079D64(void);
void sub_0807A280(void);
void sub_0807A4F4(void);
void sub_0807AAD4(void);
void sub_0807AEF4(void);
void sub_0807B200(struct ThrowAbilityObject *, u16);
void sub_0807B2A8(void);
void sub_0807B5CC(struct ThrowAbilityObject *);
void sub_0807B6D4(void);
void sub_0807BAE0(struct ThrowAbilityObject *);
void sub_0807BBDC(void);
bool8 sub_0807C1A0(struct Unk_080C4EDC *);
void sub_0807C8F0(struct Unk_080C4EDC *);
bool8 sub_0807CB4C(struct Unk_080C4EDC *);
bool8 sub_0807CD3C(struct Unk_080C4EDC *);
bool8 sub_0807CF24(struct Unk_080C4EDC *);
bool8 sub_0807D208(struct Unk_080C4EDC *);
bool8 sub_0807D3F0(struct Unk_080C4EDC *);
bool8 sub_0807D5D0(struct Unk_080C4EDC *);
bool8 sub_0807D978(struct Object14 *);
bool8 sub_0807DE28(struct Unk_080C4EDC *);
bool8 sub_0807E098(struct Unk_080C4EDC *);
void sub_0807E2FC(void);
void sub_0807E518(void);
void sub_0807E820(void);
void sub_0807F46C(void);
void sub_0807F840(void);
void sub_0807FB80(void);
void sub_0807FDC8(void);
void sub_08080130(void);
void sub_0808049C(void);
void sub_08080870(void);
void sub_08080FBC(void);
void sub_08081724(void);
void sub_08081EB0(void);
void sub_080822B4(struct ObjectBase *);
void sub_0808269C(void);
void sub_08082748(void);
void sub_08082950(void);
void sub_08082CCC(void);
void sub_08082EBC(void);
void sub_08083150(void);
void sub_08083494(void);
void sub_0808382C(struct Task *);
void sub_08083B04(void);
void sub_080840B8(void);
void sub_08084280(void);
void sub_08084524(void);
void sub_080848C4(void);
void sub_08084A20(void);
void sub_08084AC4(struct Task *);
void sub_08084B1C(void);
bool8 sub_08084B70(struct Unk_080C4EDC *);
bool8 sub_08084B94(struct Unk_080C4EDC *);
bool8 sub_08084BD8(struct Unk_080C4EDC *);
bool8 sub_08084BFC(struct Unk_080C4EDC *);
bool8 sub_08084C20(struct Unk_080C4EDC *);
bool8 sub_08084C34(struct Unk_080C4EDC *);
bool8 sub_08084C8C(struct Unk_080C4EDC *);
bool8 sub_08084CB0(struct Unk_080C4EDC *);
bool8 sub_08084CC4(struct Unk_080C4EDC *);
bool8 sub_08084CF8(struct Unk_080C4EDC *);
void sub_08084D28(struct Task *);
void sub_08084D68(struct Task *);
void sub_08084DAC(struct Unk_080C4EDC *);
void sub_08084E00(struct Task *);
void sub_08084E44(struct Task *);
void sub_08084E88(struct Unk_080C4EDC *);
void sub_08084EDC(struct Unk_080C4EDC *);
void sub_08084F30(struct Unk_080C4EDC *);
void sub_08084FA8(struct Task *);
void sub_08084FEC(struct Task *);
void sub_08085030(struct Unk_080C4EDC *);
void sub_08085084(struct Task *);
void sub_080852A4(void);
void sub_080853C8(struct Kirby *, u16);
void sub_08085468(void);
void sub_08085834(void);
void sub_0808590C(struct Task *);
void sub_08085E60(void);
void sub_08086194(void);
void sub_08086304(struct Task *);
void sub_080867E4(void);
void sub_080868D4(struct Task *);
void sub_08086AC0(void);
void sub_08086B40(struct Task *);
void sub_08086BE0(struct Task *);
void sub_08086DAC(void);
void sub_08086F98(struct Object *);
void sub_080870B8(struct Object *);
void sub_080871A4(struct Object *);
void sub_08087290(struct Object *);
void sub_08087390(struct Object *);
void sub_0808747C(struct Object *);
void sub_0808758C(struct Object *);
void sub_08087678(struct Object *);
void sub_08087B58(void);
void sub_08087CEC(void);
void sub_080885F8(struct Object *);
void sub_0808876C(struct Task *);
void sub_080887A0(struct Task *);
void sub_080887EC(struct Task *);
void sub_0808882C(struct Task *);
void sub_08088884(struct Task *);
void sub_080888B8(void);
void sub_0808891C(struct Task *);
void sub_0808895C(struct Task *);
void sub_080889C0(struct Task *);
void sub_08088A04(struct Task *);
void sub_08088A38(struct Object *, s16, s16, u8);
void sub_08088AC8(struct Kirby *);
void sub_08088C0C(void);
void sub_08089050(void);
void sub_08089350(void);
void sub_08089618(void);
void sub_0808994C(void);
void sub_08089BCC(void);
void sub_08089E50(void);
void sub_0808A0F8(struct EffectObject *);
void sub_0808A208(void);
void sub_0808A490(void);
void sub_0808A9C4(void);
void sub_0808AF48(void);
void sub_0808B360(void);
void sub_0808B754(void);
void sub_0808BB98(void);
void sub_0808BF88(void);
void sub_0808C464(struct ObjectBase *);
void sub_0808C538(void);
void sub_0808C6F4(struct Kirby *);
void sub_0808C828(void);
void sub_0808CC78(void);
void sub_0808D100(void);
void sub_0808D728(void);
void sub_0808DAC8(void);
void sub_0808DDD0(void);
void sub_0808E11C(void);
void sub_0808E404(void);
void sub_0808E7A4(void);
void sub_0808EB08(void);
void sub_0808EEF4(void);
void sub_0808F1C8(void);
void sub_0808F8C0(void);
void sub_0808FC1C(void);
void sub_0808FF8C(void);
void sub_0809030C(void);
void sub_08090698(void);
void sub_08090968(void);
void sub_08090CB8(void);
void sub_0809104C(void);
void sub_08091438(void);
void sub_08091714(void);
void sub_08091990(void);
void sub_08091C7C(void);
void sub_080920A0(void);
void sub_08092748(void);
void sub_08092A54(void);
void sub_08092D50(void);
void sub_08093044(void);
void sub_08093468(void);
void sub_080936F4(void);
void sub_08093A4C(void);
void sub_08093D10(void);
void sub_08093F00(struct EffectObject *);
void sub_08093F90(void);
void sub_080941F0(void);
void sub_08094540(void);
void sub_080949C8(void);
void sub_08094C50(struct ObjectBase *);
void sub_08094D30(void);
void sub_08094F7C(void);
void sub_080951E4(void);
void sub_08095468(void);
void sub_080957F4(void);
void sub_08095AD4(void);
void sub_0809603C(void);
void sub_08096464(struct ObjectBase *, s8, s8);
void sub_0809656C(void);
void sub_08096898(void);
void sub_08096C28(void);
void sub_08096F80(void);
void sub_0809729C(void);
void sub_08097668(void);
void sub_08097864(struct ObjectBase *, u8);
void sub_080979E0(void);
void sub_08097C74(void);
void sub_08097F90(void);
void sub_08098938(void);
void sub_08098B34(void);
void sub_080995AC(struct ThrowAbilityObject *);
void sub_08099828(struct ThrowAbilityObject *);
void sub_08099B28(struct Task *);

const s8 gUnk_08350BB0[][2] = {
    { 0x0,  0x0 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x0 },
};

const s8 gUnk_08350BCC[][2] = {
    { 0x0,  0x0 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x2 },
    { 0x0,  0x2 },
    { 0x0, -0x2 },
    { 0x0, -0x2 },
    { 0x0,  0x0 },
};

const s8 gUnk_08350BF0[][2] = {
    {  0x0,  0x0 },
    { -0x2,  0x2 },
    {  0x2, -0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    {  0x3, -0x2 },
    { -0x2,  0x0 },
    {  0x3,  0x2 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    {  0x2,  0x3 },
    {  0x2,  0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    { -0x2,  0x0 },
    { -0x2,  0x0 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    { -0x3, -0x3 },
    {  0x2,  0x2 },
    {  0x0,  0x0 },
};

const s8 gUnk_08350C20[][2] = {
    {  0x0,  0x0 },
    {  0x2, -0x3 },
    {  0x2, -0x3 },
    { -0x3,  0x3 },
    {  0x3, -0x2 },
    {  0x3, -0x2 },
    { -0x3,  0x0 },
    {  0x3,  0x2 },
    {  0x3,  0x2 },
    { -0x3, -0x3 },
    {  0x2,  0x3 },
    {  0x2,  0x3 },
};

void (*const gUnk_08350C38[])(struct ObjectBase *) = {
    nullsub_122,
    sub_08070BA8,
    sub_08070C24,
    sub_08070FA8,
    sub_08071024,
    sub_08070CA0,
    sub_08070D20,
    sub_08070EA0,
    sub_08070F24,
    sub_080710A4,
    sub_08071124,
    sub_08070DA0,
    sub_08070E20,
    sub_08070BA8,
    sub_08070C24,
    sub_08070D20,
    sub_08070CA0,
    sub_08070FA8,
    sub_08071024,
    sub_080711A0,
};

const s16 gUnk_08350C88[] = {
    0x480, 0x4A0,
    0x4C0, 0x4E0,
    0x500, 0x520,
    0x540, 0x550,
    0x560, 0x570,
    0x580, 0x5A0,
    0x5B0, 0x5C0,
    0x5E0, 0x600,
    0x620, 0x640,
    0x680, 0x700,
};

const s8 gUnk_08350CB0[] = {
      0xA, 0x4,
      0xA, 0x4,
    -0x12, 0x0,
    -0x12, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
    -0x12, 0x0,
    -0x12, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
};

const s8 gUnk_08350CC8[] = {
    -0x12, 0x8,
    -0x12, 0x8,
    -0x14, 0x8,
    -0x14, 0x8,
    -0x14, 0x8,
};

const s8 gUnk_08350CD2[] = {
    -0x12, 0x0,
    -0x12, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
    -0x14, 0x0,
};

const s8 gUnk_08350CDC[] = {
    -0xE, -0xE,
    -0xE, -0xE,
    -0xC, -0xE,
    -0xC, -0xE,
    -0xC, -0xE,
};

const s8 gUnk_08350CE6[] = {
    -0x12,  0xA,
     -0xE,  0xA,
     -0x6, -0x2,
     -0x6, -0x2,
};

const s8 gUnk_08350CEE[] = {
    -0x12, -0x2,
     -0x8, -0x2,
      0x6, -0x2,
      0x6, -0x2,
};

const s8 gUnk_08350CF6[] = {
    -0xC, -0xE,
    -0x8, -0x8,
    -0x6, -0x2,
    -0x6, -0x2,
};

const s8 gUnk_08350CFE[] = {
     0x2, -0x5,
     0x4, -0x4,
     0x5, -0x2,
     0x6,  0x0,
     0x5,  0x2,
     0x4,  0x4,
     0x2,  0x5,
     0x0,  0x6,
    -0x2,  0x5,
    -0x4,  0x4,
    -0x5,  0x2,
    -0x6,  0x0,
    -0x5, -0x2,
    -0x4, -0x4,
    -0x2, -0x5,
     0x0, -0x6,
};

const s16 gUnk_08350D1E[] = {
      0x0,  0x800,
    0x300,  0x755,
    0x5AA,  0x5AA,
    0x755,  0x300,
    0x800,    0x0,
    0x755, -0x300,
    0x5AA, -0x5AA,
    0x300, -0x755,
};

const s16 gUnk_08350D3E[] = {
    0x100,  0x7C7,
    0x3E3,  0x6C7,
    0x638,  0x4C7,
    0x78E,  0x200,
    0x7C7,  0x100,
    0x6C7, -0x3E3,
    0x4C7, -0x638,
    0x200, -0x78E,
};

const s16 gUnk_08350D5E[] = {
    0x200,  0x78E,
    0x4C7,  0x638,
    0x6C7,  0x3E3,
    0x7C7,  0x100,
    0x78E, -0x200,
    0x638, -0x4C7,
    0x3E3, -0x6C7,
    0x100, -0x7C7,
};

const s16 gUnk_08350D7E[] = {
    0x300,  0x755,
    0x5AA,  0x5AA,
    0x755,  0x300,
    0x800,    0x0,
    0x755, -0x300,
    0x5AA, -0x5AA,
};

const s16 gUnk_08350D96[] = {
    0x3E3,  0x6C7,
    0x638,  0x4C7,
    0x78E,  0x200,
    0x7C7,  0x100,
    0x6C7, -0x3E3,
    0x4C7, -0x638,
};

const s16 gUnk_08350DAE[] = {
    0x4C7,  0x638,
    0x6C7,  0x3E3,
    0x7C7,  0x100,
    0x78E, -0x200,
    0x638, -0x4C7,
    0x3E3, -0x6C7,
};

const u8 gUnk_08350DC6[] = {
    0xD, 0xD, 0xC, 0xC, 0xD,
    0xD, 0xD, 0xD, 0xE, 0xE,
};

const u8 gUnk_08350DD0[] = {
    0xB, 0xB, 0x2, 0x2, 0x3, 0x3, 0x4, 0x4,
    0x5, 0x5, 0x6, 0x6, 0x7, 0x7, 0x7, 0x7,
    0x7, 0x7, 0x7, 0x7, 0x8, 0x8, 0x9, 0x9,
    0xA, 0xA, 0xB, 0xB, 0xB, 0xB, 0xB, 0xB,
};

const u8 gUnk_08350DF0[] = {
    0x0, 0x1, 0x2, 0x3, 0x4,
    0x1, 0x2, 0x3, 0x4, 0x1,
    0x2, 0x3, 0x4, 0x1, 0x2,
    0x3, 0x0, 0x0, 0x0, 0x0,
};

const struct Unk_08357260 gUnk_08350E04[] = {
    { RGB_WHITE | 0x8000, 0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x2 },
    { RGB(22, 22, 3),     0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x2 },
    { RGB(22, 22, 3),     0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x0 },
};

const struct Unk_08357260 gUnk_08350E1C[] = {
    { RGB_WHITE | 0x8000, 0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x2 },
    { RGB(31, 22, 0),     0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x2 },
    { RGB(31, 22, 0),     0x1, 0x3 },
    { RGB_BLACK,          0x0, 0x0 },
};

const struct Unk_08357260 gUnk_08350E34[] = {
    { RGB( 8, 8, 8), 0x1, 0x4 },
    { RGB( 8, 8, 8), 0x0, 0x3 },
    { RGB(24, 4, 0), 0x1, 0x4 },
    { RGB(24, 4, 0), 0x0, 0x3 },
    { RGB( 8, 8, 8), 0x1, 0x4 },
    { RGB( 8, 8, 8), 0x0, 0x3 },
    { RGB(24, 4, 0), 0x1, 0x4 },
    { RGB(24, 4, 0), 0x0, 0x3 },
    { RGB_BLACK,     0x0, 0x0 },
};

void (*const gUnk_08350E58[])(struct Object *) = {
    NULL,
    NULL,
    sub_08087390,
    sub_08086F98,
    sub_0808747C,
    sub_0808758C,
    sub_080870B8,
    sub_08087290,
    NULL,
    sub_080871A4,
    sub_0808747C,
    sub_08087678,
    sub_080885F8,
    NULL,
    NULL,
    sub_08087678,
};

const u16 gUnk_08350E98[] = {
    0x38F, 0x391, 0x393, 0x396,
};

const s8 gUnk_08350EA0[] = {
     0xF, -0x14,
    0x14, -0x14,
    0x19, -0x14,
    0x1E, -0x14,
    0x23, -0x14,
    0x28, -0x14,
    0x2C,  -0xC,
    0x2C,  -0x5,
    0x2C,   0x5,
    0x2C,   0xC,
    0x28,  0x14,
    0x23,  0x14,
    0x1E,  0x14,
    0x19,  0x14,
    0x14,  0x14,
     0xF,  0x14,
};

const s8 gUnk_08350EC0[] = {
    0x19, -0x1C,
    0x1E, -0x1C,
    0x23, -0x1C,
    0x28, -0x1C,
    0x2D, -0x1C,
    0x32, -0x1C,
    0x37,  -0xC,
    0x37,  -0x5,
    0x37,   0x5,
    0x37,   0xC,
    0x32,  0x1C,
    0x2D,  0x1C,
    0x28,  0x1C,
    0x23,  0x1C,
    0x1E,  0x1C,
    0x19,  0x1C,
};

const s8 gUnk_08350EE0[][2] = {
    {  0x0, -0x6 },
    {  0x5, -0x5 },
    {  0x6,  0x0 },
    {  0x5,  0x5 },
    {  0x0,  0x6 },
    { -0x5,  0x5 },
    { -0x6,  0x0 },
    { -0x5,  0x5 },
};

const s16 gUnk_08350EF0[][2] = {
    {    0x0, -0x400 },
    {    0x0, -0x100 },
    {  0x300, -0x300 },
    {   0x80,  -0x80 },
    {  0x400,    0x0 },
    {  0x100,    0x0 },
    {  0x300,  0x300 },
    {   0x80,   0x80 },
    {    0x0,  0x400 },
    {    0x0,  0x100 },
    { -0x300,  0x300 },
    {  -0x80,   0x80 },
    { -0x400,    0x0 },
    { -0x100,    0x0 },
    { -0x300, -0x300 },
    {  -0x80,  -0x80 },
    {    0x0,  0x600 },
    {    0x0,  0x600 },
    {    0x0,    0x0 },
    {    0x0,  0x600 },
    {    0x0,    0x0 },
    {    0x0,  0x4F4 },
    {  0x8F8,  0x4F8 },
    {    0x0, 0x1000 },
    {    0x0,  0x800 },
    { 0x1000, 0x1400 },
    { 0x1400,    0x6 },
    {   0xFA,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    { -0x400, -0x400 },
    { -0x400, -0x400 },
    { -0x400, -0x400 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {  0x600,    0x0 },
    {    0x0,    0x0 },
    {    0x0,  0x800 },
    {  0x4F4,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
    {    0x0,    0x0 },
};

const u16 gUnk_08350FF8 = 0; // TODO: determine the true size of gUnk_08350EF0

const s16 gUnk_08350FFA[] = {
     0x80,  0x80,
     0x80, 0x100,
    0x200, 0x200,
    0x200, 0x200,
};

const u8 gUnk_0835100A[][8] = {
    { 0x0, 0x3, 0x1, 0x4, 0x1, 0x3, 0x2, 0x4 },
    { 0x1, 0x3, 0x1, 0x4, 0x0, 0x1, 0x2, 0x1 },
    { 0x2, 0x1, 0x1, 0x0, 0x1, 0x4, 0x3, 0x4 },
    { 0x3, 0x0, 0x1, 0x4, 0x1, 0x3, 0x2, 0x4 },
    { 0x4, 0x3, 0x1, 0x0, 0x1, 0x3, 0x2, 0x4 },
    { 0x1, 0x3, 0x1, 0x4, 0x1, 0x3, 0x3, 0x4 },
    { 0x4, 0x3, 0x3, 0x1, 0x1, 0x1, 0x3, 0x1 },
    { 0x3, 0x1, 0x1, 0x1, 0x1, 0x4, 0x3, 0x4 },
};

const s16 gUnk_0835104A[] = {
    -0x80, 0x18D, 0x380,
    0x500, 0x500, 0x680,
    0x873, 0xA80,   0x0, // TODO: might be padding
};

bool16 ObjectPreUpdate(struct ObjectBase *a1) {
    if (a1->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return TRUE;
    }
    if (sub_0803D80C(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gKirbys[a1->unk56].base.roomId != a1->roomId
        && sub_0803E324(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gUnk_02026D50[gCurLevelInfo[a1->unk56].unk65E] & 8) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (Macro_0810B1F4(a1) && !(a1->flags & 0x2000) && !(gMainFlags & 0x400)) {
        // TODO: semantically the same as SetPointerSomething
        if (!(a1->flags & 0x1000) && !(a1->flags & 0x200)) {
            u32 temp = gCurLevelInfo[a1->unk56].unk65E;

            if (a1->unk56 == 0xFF)
                temp = 0xFF;
            if (temp != 0xFF) {
                u8 idx;
                u32 temp2 = temp * 0x40 + (a1->header.kind - 1) * 0x20;

                ++a1; --a1;
                idx = gUnk_02022EB0[temp][a1->header.kind - 1]++ + temp2;
                gUnk_02022F50[idx] = a1;
                gUnk_02022F50[idx + 1] = NULL;
            }
        }
        sub_0803D9A8(a1);
        return TRUE;
    }
    return FALSE;
}

bool32 sub_0806F8BC(struct ObjectBase *a1) {
    SetPointerSomething(a1);
    Macro_080FC150(a1, &a1->sprite);
    if (!(a1->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == a1->roomId) {
        a1->sprite.x += gUnk_0203AD18[0];
        a1->sprite.y += gUnk_0203AD18[1];
        Macro_0803DBC8(a1, &a1->sprite);
    }
    return FALSE;
}

bool32 EffectObjectPostUpdate(struct EffectObject *a1) {
    if (!(a1->flags & 0x400)) {
        Macro_080FC150(a1, &a1->sprite);
        if (!(a1->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == a1->roomId) {
            a1->sprite.x += gUnk_0203AD18[0];
            a1->sprite.y += gUnk_0203AD18[1];
            Macro_0803DBC8(a1, &a1->sprite);
        }
    }
    return FALSE;
}

void sub_0806FC70(struct ObjectBase *a1) {
    a1->unk62 = 0;
    if (!(a1->flags & 0x100)) {
        u8 r4, r7 = a1->unk57;

        a1->unk57 = GetCollisionTile(a1->unk56, a1->x >> 0xC, a1->y >> 0xC);
        a1->unk58 = gCollisionAttributes[a1->unk57];
        if (gCollisionAttributes[a1->unk57] & 0x200
            || (gCollisionAttributes[a1->unk57] & 0xC && !(gCollisionAttributes[a1->unk57] & 0xF0000000))) {
            if ((r4 = gCollisionAttributes[r7] >> 0x1C)) {
                if (gCollisionAttributes[a1->unk57] & 0xC) {
                    if (a1->yspeed > 0 && r4 < 7) return;
                    if (a1->xspeed < 0) {
                        if (r4 < 4 || r4 > 9)
                            return;
                    } else if (a1->xspeed > 0) {
                        if (!(r4 < 4 || r4 > 9))
                            return;
                    }
                }
                a1->unk57 = r7;
                if (a1->unk48 >> 0xC != a1->x >> 0xC) {
                    if (a1->xspeed & 0x8000) {
                        a1->x &= 0xFFFFF000;
                        a1->unk48 = a1->x += 0x1000;
                    } else {
                        a1->x &= 0xFFFFF000;
                        a1->unk48 = a1->x -= 1;
                    }
                }
                if (a1->unk4C >> 0xC != a1->y >> 0xC) {
                    if (a1->yspeed & 0x8000) {
                        a1->y &= 0xFFFFF000;
                        a1->unk4C = a1->y -= 1;
                    } else {
                        a1->y &= 0xFFFFF000;
                        a1->unk4C = a1->y += 0x1000;
                    }
                }
                gUnk_08350C38[r4](a1);
            } else if (!(gCollisionAttributes[a1->unk57] & 0x200)) {
                return;
            }
            a1->unk62 = 0xFF;
        } else if ((r4 = gCollisionAttributes[a1->unk57] >> 0x1C)) {
            gUnk_08350C38[r4](a1);
        }
    }
}

struct Unk_0806FDF4_0 {
    u16 flags;
    u16 roomId;
    s16 unk4;
    u8 unk6;
}; /* size = 0x8 */

struct Unk_0806FDF4 {
    struct Unk_0806FDF4_0 unk0[4];
}; /* size = 0x20 */

void sub_0806FDF4(void) {
    struct Unk_0806FDF4 *ptr;

    gUnk_03000518 = TaskCreate(sub_08070404, sizeof(struct Unk_0806FDF4), 0xFFEF, TASK_USE_IWRAM, sub_08070B50);
    ptr = TaskGetStructPtr(gUnk_03000518);
    CpuFill16(0, ptr, sizeof(struct Unk_0806FDF4));
    ptr->unk0[0].roomId = 0xFFFE;
    ptr->unk0[1].roomId = 0xFFFE;
    ptr->unk0[2].roomId = 0xFFFE;
    ptr->unk0[3].roomId = 0xFFFE;
}

#define Macro_0806FE64(ptr, idx) ({ \
    u8 _i; \
    bool32 _ret = FALSE; \
 \
    for (_i = 0; _i < gNumKirbys; ++_i) { \
        if ((ptr)->unk0[idx].roomId == gCurLevelInfo[_i].currentRoom) { \
            _ret = TRUE; \
            /* break; */ \
        } \
    } \
    _ret; \
})

void RequestScreenShake(u16 a1, struct ObjectBase *a2) {
    struct Unk_0806FDF4 *tmp, *v3;
    s8 v4;
    s8 v10;
    struct Unk_0806FDF4_0 *v6;

    if (gUnk_03000518) {
        tmp = TaskGetStructPtr(gUnk_03000518);
        v3 = tmp;
        v4 = -1;
        if (v3->unk0[0].roomId == a2->roomId)
            v4 = 0;
        else if (v3->unk0[1].roomId == a2->roomId)
            v4 = 1;
        else if (v3->unk0[2].roomId == a2->roomId)
            v4 = 2;
        else if (v3->unk0[3].roomId == a2->roomId)
            v4 = 3;
        if (v4 >= 0) {
            v6 = &v3->unk0[v4];
            if (!(v6->flags & 0x400))
                v6->unk4 = 0;
            v6->flags |= 0x100;
            if (a1 & 0x200)
                v6->flags |= 0x200;
            if (v6->unk6 <= (a1 & 0xFF))
                v6->unk6 = a1;
            if ((a1 & 0xFF) > 3)
                v6->flags |= 0x400;
        } else {
            v10 = -1;
            if (!(v3->unk0[0].flags & 0x100))
                v10 = 0;
            else if (!(v3->unk0[1].flags & 0x100))
                v10 = 1;
            else if (!(v3->unk0[2].flags & 0x100))
                v10 = 2;
            else if (!(v3->unk0[3].flags & 0x100))
                v10 = 3;
            if (v10 == -1) {
                if (!Macro_0806FE64(v3, 0))
                    v10 = 0;
                else if (!Macro_0806FE64(v3, 1))
                    v10 = 1;
                else if (!Macro_0806FE64(v3, 2))
                    v10 = 2;
                else if (!Macro_0806FE64(v3, 3))
                    v10 = 3;
            }
            v6 = &v3->unk0[v10];
            v6->unk6 = a1;
            v6->flags = 0x100;
            v6->roomId = a2->roomId;
            v6->unk4 = 0;
            if (a1 & 0x200)
                v6->flags |= 0x200;
            if ((a1 & 0xFF) > 3)
                v6->flags |= 0x400;
        }
    }
}

void sub_080700D8(struct ObjectBase *a1) {
    struct Unk_0806FDF4 *tmp, *v3;
    s8 v4;
    struct Unk_0806FDF4_0 *v6;

    if (gUnk_03000518) {
        tmp = TaskGetStructPtr(gUnk_03000518);
        v3 = tmp;
        v4 = -1;
        if (v3->unk0[0].roomId == a1->roomId)
            v4 = 0;
        else if (v3->unk0[1].roomId == a1->roomId)
            v4 = 1;
        else if (v3->unk0[2].roomId == a1->roomId)
            v4 = 2;
        else if (v3->unk0[3].roomId == a1->roomId)
            v4 = 3;
        if (v4 >= 0) {
            v6 = &v3->unk0[v4];
            v6->flags = 0;
            v6->unk6 = 0;
            v6->roomId = 0xFFFE;
            gUnk_0203AD18[0] = 0;
            gUnk_0203AD18[1] = 0;
        }
    }
}

void sub_08070164(struct Unk_0806FDF4_0 *a1) {
    u16 v2 = 0, v3 = 0;
    bool32 v4 = FALSE;
    bool32 flag = TRUE;
    u8 i = gNumKirbys;

    if (gNumKirbys) {
        while (1) {
            if (gCurLevelInfo[i - 1].currentRoom == a1->roomId) {
                if (gUnk_03000510.unk4 & ((1 << (i - 1)) | 0x10))
                    v4 = TRUE;
                if (!(gUnk_02026D50[gCurLevelInfo[i - 1].unk65E] & 8)) {
                    flag = FALSE;
                    break;
                }
            }
            if (!--i)
                break;
        }
    }
    if (flag) {
        a1->flags = 0;
        a1->unk6 = 0;
        a1->roomId = 0xFFFE;
        gUnk_0203AD18[0] = 0;
        gUnk_0203AD18[1] = 0;
        return;
    }
    if (a1->flags & 0x100) {
        switch (a1->unk6) {
        case 1:
            v2 = gUnk_08350BB0[a1->unk4][0];
            v3 = gUnk_08350BB0[a1->unk4][1];
            if (a1->unk4 > 0xD) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 2:
            v2 = gUnk_08350BCC[a1->unk4][0];
            v3 = gUnk_08350BCC[a1->unk4][1];
            if (a1->unk4 > 0x11) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 3:
            v2 = gUnk_08350BF0[a1->unk4][0];
            v3 = gUnk_08350BF0[a1->unk4][1];
            if (a1->unk4 > 0x17) {
                a1->flags = 0;
                a1->unk6 = 0;
                a1->roomId = 0xFFFE;
            }
            break;
        case 4:
            if (a1->unk4 > 0x11)
                a1->unk4 = 0;
            v2 = gUnk_08350BCC[a1->unk4][0];
            v3 = gUnk_08350BCC[a1->unk4][1];
            break;
        case 5:
            if (a1->unk4 > 0xB)
                a1->unk4 = 0;
            v2 = gUnk_08350C20[a1->unk4][0];
            v3 = gUnk_08350C20[a1->unk4][1];
            break;
        case 6:
            if (a1->unk4 > 0x17)
                a1->unk4 = 0;
            v2 = gUnk_08350BF0[a1->unk4][0];
            v3 = gUnk_08350BF0[a1->unk4][1];
            break;
        }
        if (a1->roomId == gCurLevelInfo[gLocalPlayerId].currentRoom) {
            gUnk_0203AD18[0] = v2;
            gUnk_0203AD18[1] = v3;
            if (gUnk_0203AD20 & 8) {
                gCurLevelInfo[sub_08002374()].viewportModX_44 = gUnk_0203AD18[0];
                gCurLevelInfo[sub_08002374()].viewportModY_46 = gUnk_0203AD18[1];
            } else {
                gCurLevelInfo[sub_08002374()].viewportModX_44 = -gUnk_0203AD18[0];
                gCurLevelInfo[sub_08002374()].viewportModY_46 = -gUnk_0203AD18[1];
            }
        }
        if (!v4)
            ++a1->unk4;
    }
}

void sub_08070404(void) {
    struct Unk_0806FDF4 *var = TaskGetStructPtr(gCurTask);

    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    if (var->unk0[0].flags & 0x100)
        sub_08070164(&var->unk0[0]);
    if (var->unk0[1].flags & 0x100)
        sub_08070164(&var->unk0[1]);
    if (var->unk0[2].flags & 0x100)
        sub_08070164(&var->unk0[2]);
    if (var->unk0[3].flags & 0x100)
        sub_08070164(&var->unk0[3]);
}

bool8 sub_08070488(struct ObjectBase *a1) {
    bool8 ret = FALSE;
    struct Unk_0806FDF4 *tmp, *var;
    struct Unk_0806FDF4_0 *v6;
    u8 i;

    if (!gUnk_03000518)
        return FALSE;
    tmp = TaskGetStructPtr(gUnk_03000518);
    var = tmp;
    for (i = 0; i < gNumKirbys; ++i) {
        v6 = &var->unk0[i];
        if (v6->roomId == a1->roomId && v6->flags & 0x100)
            ret = TRUE;
            // break;
    }
    return ret;
}

bool8 sub_08070504(struct ObjectBase *a1) {
    bool8 ret = FALSE;
    struct Unk_0806FDF4 *tmp, *var;
    struct Unk_0806FDF4_0 *v6;
    u8 i;

    if (!gUnk_03000518)
        return FALSE;
    tmp = TaskGetStructPtr(gUnk_03000518);
    var = tmp;
    for (i = 0; i < gNumKirbys; ++i) {
        v6 = &var->unk0[i];
        if (v6->roomId == a1->roomId && v6->flags & 0x200) {
            ret = TRUE;
            // break;
        }
    }
    return ret;
}

void sub_08070580(void) {
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    if (var->unk84)
        var->unk84(var);
    if (!ObjectPreUpdate(&var->base)
        && (!var->unk78 || !var->unk78(var))
        && ((!(var->base.flags & 0x40000) && !(var->base.flags & 0x80000)) || !var->unk7C || !var->unk7C(var))) {
        if (!(var->base.flags & 0x800)) {
            var->base.unk48 = var->base.x;
            var->base.unk4C = var->base.y;
            var->base.x += var->base.xspeed;
            var->base.y -= var->base.yspeed;
        }
        if (!(var->base.flags & 0x100)) {
            if (var->base.x <= gCurLevelInfo[var->base.unk56].levelMaxPosition.x
                && var->base.x >= gCurLevelInfo[var->base.unk56].levelMinPosition.x
                && var->base.y <= gCurLevelInfo[var->base.unk56].levelMaxPosition.y
                && var->base.y >= gCurLevelInfo[var->base.unk56].levelMinPosition.y)
                sub_0806FC70(&var->base);
        }
        if (!var->unk80 || !var->base.unk62 || !var->unk80(var))
            sub_0806F8BC(&var->base);
    }
}

struct Object14 *sub_080706A0(struct ObjectBase *a1, u32 a2, u16 a3, u8 a4,
    bool8 (*a5)(struct Object14 *), void (*a6)(struct Object14 *)) {
    struct Task *t = TaskCreate(sub_08070808, sizeof(struct Object14), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object14 *tmp = TaskGetStructPtr(t), *obj14 = tmp;

    ClearEffectObject(&obj14->effect);
    obj14->effect.header.kind = 3;
    obj14->effect.x = a1->x;
    obj14->effect.y = a1->y;
    obj14->effect.parent = a1;
    obj14->effect.roomId = a1->roomId;
    obj14->effect.flags |= 0x300;
    if (Macro_0810B1F4(a1))
        obj14->effect.flags |= 0x2000;
    if (a1->flags & 1)
        obj14->effect.flags |= 1;
    obj14->func48 = a5;
    obj14->func4C = a6;
    obj14->effect.flags |= 2;
    a5(obj14);
    if (a2) {
        if (a2 > 0x200) {
            if (a2 != a1->unk56 * 0x800 + 0x6010600)
                obj14->effect.flags |= 0x4000;
            EffectObjectInitSprite(&obj14->effect, &obj14->effect.sprite, a2, a3, a4, 0xA);
        } else {
            EffectObjectInitSprite(&obj14->effect, &obj14->effect.sprite, a2, a3, a4, 0xA);
        }
    } else {
        obj14->effect.flags |= 0x4000;
        EffectObjectInitSprite(&obj14->effect, &obj14->effect.sprite, 0x6012000, a3, a4, 0xA);
    }
    return obj14;
}

void sub_08070808(void) {
    struct Object14 *tmp = TaskGetStructPtr(gCurTask), *obj14 = tmp;
    struct ObjectBase *parent = obj14->effect.parent;

    if (obj14->effect.flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (obj14->func4C)
            obj14->func4C(obj14);
        if (Macro_0810B1F4(parent) && !(obj14->effect.flags & 0x2000))
            EffectObjectDisplaySprite(&obj14->effect);
        else if (obj14->func48(obj14))
            obj14->effect.flags |= 0x1000;
        else {
            obj14->effect.unk3C += obj14->effect.unk4;
            obj14->effect.unk3E += obj14->effect.unk8;
            if (!(obj14->effect.flags & 0x800)) {
                obj14->effect.x += obj14->effect.unk3C;
                obj14->effect.y -= obj14->effect.unk3E;
            }
            EffectObjectPostUpdate(&obj14->effect);
        }
    }
}

void ObjectBaseInitSprite(struct ObjectBase *a1, struct Sprite *a2, u32 a3, u16 animId, u8 variant, u16 a6) {
    u32 vram = 0;
    u32 flags = 0xC0000;

    if (a3 > 0x400) {
        vram = a3;
        if (vram != 0x6012000)
            flags &= ~0x80000;
    } else {
        if (gKirbys[gLocalPlayerId].base.roomId == a1->roomId) {
            if (a1->flags & 0x4000)
                vram = sub_0803DE54(a3, animId, variant);
            else {
                vram = VramMalloc(a3);
                flags &= ~0x80000;
            }
        }
    }
    if (a1->flags & 1)
        flags |= 0x400;
    else
        flags &= ~0x400;
    a2->tilesVram = vram;
    a2->unk14 = a6 * 0x40;
    a2->animId = animId;
    a2->variant = variant;
    a2->unk16 = 0;
    a2->unk1B = 0xFF;
    a2->unk1C = 0;
    a2->palId = 0xF;
    a2->x = a1->x >> 8;
    a2->y = a1->y >> 8;
    a2->unk8 = flags | 0x2000;
    a2->unk20[0].unk0 = -1;
    sub_08155128(a2);
    a2->unk1C = 0x10;
    // dead code
    if (a1->flags & 0x4000) {
        u32 vram2 = 0x6012000;

        if (vram == vram2)
            { ++vram2; --vram2; }
        else
            { ++vram2; --vram2; }
    }
}

void EffectObjectInitSprite(struct EffectObject *a1, struct Sprite *a2, u32 a3, u16 animId, u8 variant, u16 a6) {
    u32 vram = 0;
    u32 flags = 0xC0000;

    if (a3 > 0x400) {
        vram = a3;
        if (vram != 0x6012000)
            flags &= ~0x80000;
    } else {
        if (gKirbys[gLocalPlayerId].base.roomId == a1->roomId) {
            if (a1->flags & 0x4000)
                vram = sub_0803DE54(a3, animId, variant);
            else {
                vram = VramMalloc(a3);
                flags &= ~0x80000;
            }
        }
    }
    if (a1->flags & 1)
        flags |= 0x400;
    else
        flags &= ~0x400;
    a2->tilesVram = vram;
    a2->unk14 = a6 * 0x40;
    a2->animId = animId;
    a2->variant = variant;
    a2->unk16 = 0;
    a2->unk1B = 0xFF;
    a2->unk1C = 0;
    a2->palId = 0xF;
    a2->x = a1->x >> 8;
    a2->y = a1->y >> 8;
    a2->unk8 = flags | 0x2000;
    a2->unk20[0].unk0 = -1;
    sub_08155128(a2);
    a2->unk1C = 0x10;
    // dead code
    if (a1->flags & 0x4000) {
        u32 vram2 = 0x6012000;

        if (vram == vram2)
            { ++vram2; --vram2; }
        else
            { ++vram2; --vram2; }
    }
}

void sub_08070B14(struct ObjectBase *a1) {
    if (!(a1->flags & 0x800)) {
        a1->unk48 = a1->x;
        a1->unk4C = a1->y;
        a1->x = a1->x + a1->xspeed;
        a1->y = a1->y - a1->yspeed;
    }
    sub_0806F8BC(a1);
}

void sub_08070B50(struct Task *t __attribute__((unused))) {
    gUnk_0203AD18[0] = 0;
    gUnk_0203AD18[1] = 0;
    gUnk_03000518 = NULL;
}

void sub_08070B68(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask);

    ObjectPreUpdate(objBase);
    sub_0806F8BC(objBase);
}

void nullsub_122(struct ObjectBase *a1 __attribute__((unused))) {}

void sub_08070BA8(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070C24(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ({ ((~a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070CA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070D20(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ({ ((~a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070DA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ((a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070E20(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 9) - ({ ((a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070EA0(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ((a1->y & 0xF00) >> 8)) > 0) {
        ++r3;
        if (-a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070F24(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 9) - ({ ((a1->y & 0xF00) >> 8) - 7; })) >= 0) {
        ++r3;
        if (-a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y += r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08070FA8(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed <= 0))
        && (r3 = ((a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (a1->xspeed > -a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08071024(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed <= 0))
        && (r3 = ((~a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) >= 0) {
        if (-a1->xspeed > -a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_080710A4(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed <= 0 && a1->yspeed >= 0))
        && (r3 = ((a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) < 2) {
        if (-a1->xspeed > a1->yspeed)
            a1->x -= r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_08071124(struct ObjectBase *a1) {
    s32 r3;

    if ((!(gCollisionAttributes[a1->unk57] & 0xC) || (a1->xspeed >= 0 && a1->yspeed >= 0))
        && (r3 = ((~a1->x & 0xF00) >> 8) - ((~a1->y & 0xF00) >> 8)) < 0) {
        if (a1->xspeed > a1->yspeed)
            a1->x += r3 * 0x100;
        else
            a1->y -= r3 * 0x100;
        a1->unk62 = 0xFF;
    }
}

void sub_080711A0(struct ObjectBase *a1) {
    a1->unk62 = 0xFF;
}

void sub_080711A8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080714A0, sizeof(struct ObjectBase), 0x2FFF, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0x2000000;
    if (kirby->ability == KIRBY_ABILITY_MASTER) {
        objBase->unk64 = 0;
        objBase->unk66 = 0x120;
        objBase->unk63 = 2;
        objBase->unk68 |= 0x30007103;
        objBase->unk68 |= 0x2000000;
    }
    objBase->flags |= 0x80000000;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x10400042;
    if (kirby->ability == KIRBY_ABILITY_FIGHTER || kirby->ability == KIRBY_ABILITY_MASTER || kirby->ability == KIRBY_ABILITY_SWORD) {
        objBase->unk68 &= ~7;
        objBase->unk68 |= 3;
        if (kirby->ability == KIRBY_ABILITY_FIGHTER)
            objBase->unk63 = 3;
        if (kirby->ability == KIRBY_ABILITY_SWORD) {
            objBase->unk63 = 4;
            objBase->unk68 |= 0x2000;
        }
    }
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    if (kirby->ability == KIRBY_ABILITY_MASTER) {
        sub_0803E2B0(objBase, 1, -0xA, 0x2E, 0xE);
        ObjectSetBounds(objBase, -1, -4, 0x28, 0xE);
        objBase->unk68 |= 0x2000;
    }
    else if (kirby->ability == KIRBY_ABILITY_SWORD || kirby->base.unkC & 2) {
        sub_0803E2B0(objBase, 1, -8, 0x20, 0xE);
        ObjectSetBounds(objBase, -1, -4, 0x20, 0xE);
    } else {
        sub_0803E2B0(objBase, 1, -6, 0x10, 0xE);
        ObjectSetBounds(objBase, -1, -4, 0x10, 0xE);
    }
    SetPointerSomething(objBase);
    PlaySfx(&kirby->base, SE_KIRBY_SLIDING);
}

void sub_080714A0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object *unk6C;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->base.unk62 & 1)
            objBase->flags &= ~0x20000000;
        else
            objBase->flags |= 0x20000000;
        if (kirby->animationIndex != 13) {
            if (kirby->base.unk56 == gLocalPlayerId)
                m4aSongNumStop(SE_KIRBY_SLIDING);
            objBase->flags |= 0x1000;
        } else {
            if (kirby->ability != KIRBY_ABILITY_MASTER && objBase->flags & 0x40000) {
                unk6C = objBase->unk6C;
                if (unk6C && unk6C->base.header.kind == 1 && unk6C->type == OBJ_GORDO)
                    objBase->flags &= ~0x40000;
                if (objBase->flags & 0x40000) {
                    if (kirby->base.unkC & 2) {
                        sub_08074240(&kirby->base, FALSE);
                        kirby->base.unkC &= ~2;
                        sub_0806EB74(kirby);
                    }
                    sub_0804323C(kirby);
                    return;
                }
            }
            if (objBase->flags & 0x80000 && kirby->base.unkC & 2) {
                sub_08074240(&kirby->base, FALSE);
                kirby->base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            if (kirby->ability == KIRBY_ABILITY_MASTER && objBase->flags & 0x40000) {
                if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 1) {
                    objBase->flags &= ~0x40000;
                    objBase->counter = 0;
                    ++objBase->header.unk1;
                }
                if (objBase->header.unk1 > 4) {
                    sub_0804323C(kirby);
                    return;
                }
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_080716BC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080717AC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30400042;
    sub_0803E2B0(objBase, -0xA, 6, 0xC, 0xD);
    ObjectSetBounds(objBase, -0xA, 6, 0xC, 0xD);
}

void sub_080717AC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object *unk6C;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex < 0x12 || kirby->animationIndex > 0x13) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.header.kind == 1 && unk6C->type == OBJ_GORDO)
                objBase->flags &= ~0x40000;
        }
        if (objBase->flags & 0xC0000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.header.kind == 1) {
                if (!(({ 0x3FFFF8 & ~(unk6C->base.unk5C & ~7) ;}) & objBase->unk68)
                    || (objBase->unk68 & 7) < (unk6C->base.unk5C & 7)
                    || objBase->flags & 0x8000)
                    PlaySfx(&kirby->base, SE_KIRBY_BOUNCE);
            }
            sub_080459B8(kirby);
        } else {
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071994(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08071B0C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x10400042;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0xA, -8, 0x10, 8);
    ObjectSetBounds(objBase, 1, -8, 0x10, 8);
    SetPointerSomething(objBase);
}

void sub_08071B0C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object *unk6C;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex < 0x4A || kirby->animationIndex > 0x59) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            unk6C = objBase->unk6C;
            if (unk6C && unk6C->base.header.kind == 1 && unk6C->type == OBJ_GORDO)
                objBase->flags &= ~0x40000;
        }
        if (objBase->flags & 0x40000) {
            if (kirby->base.unkC & 2) {
                sub_08074240(&kirby->base, FALSE);
                kirby->base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            objBase->flags |= 0x200;
            objBase->flags |= 0x1000;
            sub_0804323C(kirby);
        } else {
            if (objBase->flags & 0x80000 && kirby->base.unkC & 2) {
                sub_08074240(&kirby->base, FALSE);
                kirby->base.unkC &= ~2;
                sub_0806EB74(kirby);
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071C9C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08071E34, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x10000042;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -6, -8, 6, 4);
    ObjectSetBounds(objBase, 0xA, -6, 0xC, 4);
    SetPointerSomething(objBase);
    CreateEffectObject(&kirby->base, 0, 0x2B1, 0);
}

void sub_08071E34(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct EffectObject *effect;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex != 0xF) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            objBase->flags |= 0x200;
            objBase->flags |= 0x1000;
        } else {
            if ((++objBase->counter & 3) == 3) {
                effect = CreateEffectObject(&kirby->base, 0, 0x2B1, 1);
                effect->x += (0x10 - (Rand16() & 0x1F)) * 0x100;
                effect->y += ((Rand16() & 7) + 4) * 0x100;
                effect->unk3E = -0x40;
                effect->unk3C = 0x40 - (Rand16() & 0x7F);
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_08071FC0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080720F8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084AC4);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0100000;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x20000021;
    objBase->flags |= 0x2000000;
    objBase->unk5C |= 0x80000;
    if (kirby->base.flags & 1) {
        objBase->flags |= 1;
        objBase->x -= 0x400;
    } else {
        objBase->x += 0x400;
    }
    sub_0803E2B0(objBase, 0, -0x12, 0x2C, 0x10);
    ObjectSetBounds(objBase, 0, -0x12, 0x2C, 0x10);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 * 0x800) + 0x6010400, 0x13, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56;
}

void sub_080720F8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Object *unk6C;

    if (kirby->animationIndex != 0x1D) {
        if ((kirby->animationIndex != 0x1A && kirby->animationIndex != 0x1B)
            && kirby->animationIndex != 0x6A && kirby->animationIndex != 0x6B)
            objBase->roomId = 0xFFFF;
        if (!ObjectPreUpdate(objBase)) {
            objBase->flags |= 4;
            if (objBase->flags & 1)
                objBase->x = kirby->base.x - 0x400;
            else
                objBase->x = kirby->base.x + 0x400;
            objBase->y = kirby->base.y;
            if (objBase->counter & 1) {
                objBase->flags |= 0x400;
                if (kirby->animationIndex < 0x6A || kirby->animationIndex > 0x6B)
                    objBase->flags |= 8;
            } else {
                objBase->flags &= ~0x400;
                objBase->flags &= ~8;
            }
            if (objBase->flags & 0xC0000) {
                unk6C = objBase->unk6C;
                objBase->flags |= 0x200;
                if (unk6C && unk6C->base.header.kind == 1 && ObjType5ETo6C(unk6C))
                    objBase->flags &= ~0x200;
                if (kirby->base.unk56 >= gNumHumanPlayers) {
                    if (unk6C->type == OBJ_ABILITY_STAR_2)
                        objBase->flags &= ~0x200;
                    if (unk6C->type == OBJ_ABILITY_STAR_1 && unk6C->base.unk56 < gNumHumanPlayers)
                        objBase->flags &= ~0x200;
                }
            }
            if (objBase->counter > 5) {
                if (objBase->counter == 6) {
                    sub_08088AC8(kirby);
                    sub_08088AC8(kirby);
                    sub_08088AC8(kirby);
                }
                PlaySfxAlt(&kirby->base, SE_KIRBY_INHALE);
                sub_0806F8BC(objBase);
            }
            if (++objBase->counter == 0x30) {
                sub_0803E2B0(objBase, 0, -0x17, 0x37, 0x15);
                ObjectSetBounds(objBase, 0, -0x17, 0x37, 0x15);
                objBase->unk68 = 0x20000023;
            }
        }
    }
}

void sub_08072314(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080724C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084AC4);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0100000;
    objBase->unk68 |= 0x20200023;
    objBase->unk5C |= 0x80000;
    objBase->flags |= 0x2000000;
    if (kirby->base.flags & 1) {
        objBase->x -= 0x400;
        objBase->flags |= 1;
    } else {
        objBase->x += 0x400;
        objBase->flags &= ~1;
    }
    sub_0803E2B0(objBase, 0, -0x12, 0x32, 0x10);
    ObjectSetBounds(objBase, 0, -0x12, 0x32, 0x10);
    sub_0808C6F4(kirby);
    sub_0808C6F4(kirby);
    sub_0808C6F4(kirby);
    PlaySfx(&kirby->base, SE_KIRBY_INHALE);
}

void sub_080724C4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;
    struct Object *unk6C;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex != 0x1A && kirby->animationIndex != 0x1B)
            objBase->flags |= 0x1000;
        else {
            if (objBase->flags & 1)
                objBase->x = kirby->base.x - 0x400;
            else
                objBase->x = kirby->base.x + 0x400;
            objBase->y = kirby->base.y;
            if (objBase->flags & 0xC0000) {
                unk6C = objBase->unk6C;
                if (unk6C->base.header.kind != 1
                    || (unk6C->type != OBJ_ABILITY_STAR_1 && unk6C->type != OBJ_ABILITY_STAR_2))
                    objBase->flags |= 0x200;
            }
            SetPointerSomething(objBase);
        }
    }
}

void sub_080725E0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080728B0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->unk68 |= 0x20000043;
    objBase->unk64 = 0x280;
    objBase->unk66 = 0x280;
    if (objBase->flags & 0x2000)
        objBase->flags |= 0x200;
    if (kirby->transitioningAbility & KIRBY_ABILITY_CHANGE_UNKNOWN) {
        objBase->unk63 = 0x19;
        objBase->unk68 = 0x20000043;
    } else {
        objBase->unk63 = 0xA;
    }
    objBase->xspeed = 0;
    objBase->yspeed = 0;
    sub_0803E2B0(objBase, -0xC, -0xC, 0xC, 0xC);
    ObjectSetBounds(objBase, -2, -2, 2, 2);
    if (kirby->transitioningAbility & KIRBY_ABILITY_CHANGE_UNKNOWN) {
        objBase->flags |= 0x4000;
        ObjectBaseInitSprite(objBase, &objBase->sprite, 0x6012000, 0x2A1, 0, 0xA);
        sub_080706A0(objBase, 0, 0x2A1, 1, sub_08072B98, sub_08084AA0);
        PlaySfx(&kirby->base, SE_KIRBY_STARSHOT_2);
    } else {
        objBase->flags |= 0x4000;
        ObjectBaseInitSprite(objBase, &objBase->sprite, 0x6012000, 0x295, 0, 0xA);
        sub_080706A0(objBase, 0, 0x295, 2, sub_08072B98, sub_08084AA0);
        PlaySfx(&kirby->base, SE_KIRBY_STARSHOT_1);
    }
}

void sub_080728B0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (objBase->counter < 2) {
            if (kirby->hp <= 0)
                objBase->flags |= 0x1000;
            objBase->flags |= 0x400;
            objBase->flags |= 0x200;
            ++objBase->counter;
        } else if (objBase->counter == 2) {
            objBase->flags &= ~0x600;
            if (objBase->flags & 0x2000)
                objBase->flags |= 0x200;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1) {
                objBase->flags |= 1;
                objBase->x = kirby->base.x - 0x800;
                objBase->xspeed = -0x400;
            } else {
                objBase->x = kirby->base.x + 0x800;
                objBase->xspeed = 0x400;
            }
            ++objBase->counter;
            SetPointerSomething(objBase);
        } else {
            objBase->flags |= 4;
            if (!(objBase->flags & 0x800)) {
                objBase->unk48 = objBase->x;
                objBase->unk4C = objBase->y;
                objBase->x = objBase->x + objBase->xspeed;
                objBase->y = objBase->y - objBase->yspeed;
            }
            if (objBase->unk63 != 0x19 && objBase->flags & 0xC0000) {
                CreateEffectObject(objBase, 0, 0x28E, 0);
                objBase->flags |= 0x1000;
            } else {
                if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
                    && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
                    sub_0806FC70(objBase);
                if (objBase->unk62 && (!(gCollisionAttributes[objBase->unk57] & 0x1000)
                    || (gCollisionAttributes[objBase->unk57] & 0xF00000) > 0x100000)) {
                    objBase->flags |= 0x1000;
                    CreateEffectObject(objBase, 0, 0x28E, 0);
                    PlaySfx(&kirby->base, SE_KIRBY_STAR_DESTROY);
                } else {
                    sub_0806F8BC(objBase);
                }
            }
        }
    }
}

bool8 sub_08072B98(struct Object14 *obj14) {
    struct ObjectBase *objBase = obj14->effect.parent;
#ifdef NONMATCHING
    s32 x, y;
#else
    register s32 x asm("r3"), y;
#endif

    if (objBase->flags & 0x1000)
        return TRUE;
    else {
        if (objBase->flags & 0x400)
            obj14->effect.flags |= 0x400;
        else
            obj14->effect.flags &= ~0x400;
        obj14->effect.flags |= 4;
        if (obj14->effect.flags & 2) {
            x = obj14->effect.x = objBase->x;
            y = obj14->effect.y = objBase->y;
            obj14->effect.unk3C = -0x100;
            obj14->effect.unk3E = 0;
            obj14->effect.unk4 = 0;
            obj14->effect.unk8 = 0;
            if (obj14->effect.flags & 1)
                obj14->effect.unk3C = -obj14->effect.unk3C;
            else {
                obj14->effect.x = x;
                obj14->effect.y = y;
            }
        }
        return FALSE;
    }
}

bool8 sub_08072C0C(struct Object14 *obj14) {
    struct ObjectBase *objBase = obj14->effect.parent;
#ifdef NONMATCHING
    s32 x, y;
#else
    register s32 x asm("r4"), y;
#endif

    if (objBase->flags & 0x1000)
        return TRUE;
    else {
        obj14->effect.flags |= 4;
        if (obj14->effect.flags & 2) {
            x = obj14->effect.x = objBase->x;
            y = obj14->effect.y = objBase->y;
            obj14->effect.unk3C = 0;
            obj14->effect.unk3E = -0x100;
            obj14->effect.unk4 = 0;
            obj14->effect.unk8 = 0;
            if (obj14->effect.flags & 1) {
                obj14->effect.unk3C = obj14->effect.unk3C;
            } else {
                obj14->effect.x = x;
                obj14->effect.y = y;
            }
        }
        return FALSE;
    }
}

void sub_08072C5C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08072E40, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->unk68 |= 0x20000042;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 2;
    if (objBase->flags & 0x2000)
        objBase->flags |= 0x200;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->y = kirby->base.y;
    objBase->yspeed = 0;
    if (kirby->base.flags & 1) {
        objBase->flags |= 1;
        objBase->x = kirby->base.x - 0x800;
        objBase->xspeed = -0x3C0;
    } else {
        objBase->x = kirby->base.x + 0x800;
        objBase->xspeed = 0x3C0;
    }
    sub_0803E2B0(objBase, -5, -5, 5, 5);
    ObjectSetBounds(objBase, -2, -2, 2, 2);
    objBase->flags |= 0x4000;
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x6012000, 0x28C, 0, 0xA);
    SetPointerSomething(objBase);
}

void sub_08072E40(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->sprite.variant && objBase->flags & 2) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->counter > 0x10)
            objBase->sprite.variant = 1;
        if (objBase->sprite.variant == 0)
            objBase->flags |= 4;
        if (objBase->counter < 0x10
            && (objBase->counter & 7) == 7)
            sub_0808C464(objBase);
        if (objBase->xspeed < 0) {
            objBase->xspeed += 0x20;
            if (objBase->xspeed > 0)
                objBase->xspeed = 0;
        } else {
            objBase->xspeed -= 0x20;
            if (objBase->xspeed < 0)
                objBase->xspeed = 0;
        }
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C = objBase->y;
            objBase->x = objBase->x + objBase->xspeed;
            objBase->y = objBase->y - objBase->yspeed;
        }
        if (objBase->flags & 0xC0000) {
            objBase->flags |= 0x200;
            objBase->sprite.variant = 2;
            gCurTask->main = sub_08084B1C;
        }
        if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
            && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
            sub_0806FC70(objBase);
        if (objBase->unk62
            && (!(gCollisionAttributes[objBase->unk57] & 0x1000) || (gCollisionAttributes[objBase->unk57] & 0xF00000) > 0x100000)) {
            objBase->flags |= 0x200;
            objBase->sprite.variant = 2;
            gCurTask->main = sub_08084B1C;
        }
        sub_0806F8BC(objBase);
        ++objBase->counter;
    }
}

#define Macro_08091C7C(effect /* objBase */) ({ \
    bool32 _v5 = FALSE; \
    u16 _animationIndex = ((struct Kirby *)(effect)->parent)->animationIndex; \
    struct Kirby *_kirby3 = (effect)->parent; \
 \
    if (_animationIndex == 0x5A || _kirby3->ability == KIRBY_ABILITY_NORMAL) { \
        (effect)->flags |= 0x1400; \
        _v5 = TRUE; \
    } \
    _v5; \
})

void sub_08072FF0(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (kirby->animationIndex != 0x34
        && obj14->effect.flags & 2)
        obj14->effect.flags |= 0x1400;
    if (kirby->ability != KIRBY_ABILITY_FIRE)
        obj14->effect.flags |= 0x1400;
    if (Macro_08091C7C(&obj14->effect))
        obj14->effect.flags |= 0x1400;
}

void sub_08073068(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (kirby->animationIndex != 0x34
        && obj14->effect.flags & 2)
        obj14->effect.flags |= 0x1400;
    if (kirby->ability != KIRBY_ABILITY_ICE)
        obj14->effect.flags |= 0x1400;
    if (Macro_08091C7C(&obj14->effect))
        obj14->effect.flags |= 0x1400;
}

bool8 sub_080730E0(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (obj14->effect.flags & 2) {
        obj14->effect.sprite.variant = ~obj14->effect.sprite.variant & 1;
        obj14->effect.flags &= ~1;
        obj14->effect.flags |= (kirby->base.flags & 1);
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y;
        obj14->effect.unk3C = kirby->idleTimer + 0x80;
        obj14->effect.unk3E = kirby->base.counter;
        obj14->effect.unk4 = 0x30;
        obj14->effect.unk8 = 0xB - (Rand16() & 0x1F);
        if (obj14->effect.flags & 1) {
            obj14->effect.x = obj14->effect.x - ((Rand16() & 7) + 0x18) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() & 7) * 0x100;
            obj14->effect.unk3C = -obj14->effect.unk3C;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x = obj14->effect.x + ((Rand16() & 7) + 0x18) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() & 7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080731EC(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (obj14->effect.flags & 2) {
        obj14->effect.flags |= 4;
        obj14->effect.flags &= ~1;
        obj14->effect.flags |= (kirby->base.flags & 1);
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y;
        obj14->effect.unk3C = kirby->idleTimer + 0x120;
        obj14->effect.unk3E = kirby->base.counter;
        obj14->effect.unk4 = -8;
        obj14->effect.unk8 = -2;
        if (obj14->effect.flags & 1) {
            obj14->effect.x = obj14->effect.x - ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() | ~7) * 0x100;
            obj14->effect.unk3C = -obj14->effect.unk3C;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x = obj14->effect.x + ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() | ~7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080732E4(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (obj14->effect.flags & 2) {
        obj14->effect.flags |= 4;
        obj14->effect.flags &= ~1;
        obj14->effect.flags |= (kirby->base.flags & 1);
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y;
        obj14->effect.unk3C = kirby->idleTimer + 0x10;
        obj14->effect.unk3E = kirby->base.counter;
        obj14->effect.unk4 = 0x30;
        obj14->effect.unk8 = 0xF;
        if (obj14->effect.flags & 1) {
            obj14->effect.x = obj14->effect.x - ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() | ~7) * 0x100;
            obj14->effect.unk3C = -obj14->effect.unk3C;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x = obj14->effect.x + ((Rand16() & 0x1F) + 0x10) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() | ~7) * 0x100;
        }
    }
    return FALSE;
}

bool8 sub_080733D8(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (obj14->effect.flags & 2) {
        obj14->effect.flags |= 4;
        obj14->effect.flags &= ~1;
        obj14->effect.flags |= (kirby->base.flags & 1);
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y;
        obj14->effect.unk3C = kirby->idleTimer + 0x80;
        obj14->effect.unk3E = kirby->base.counter + 0x80;
        obj14->effect.unk4 = 0x20;
        obj14->effect.unk8 = 0xF - (Rand16() & 0x1F);
        if (obj14->effect.flags & 1) {
            obj14->effect.x = obj14->effect.x - ((Rand16() & 7) + (Rand16() & 3) + 0x14) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() & 7) * 0x100;
            obj14->effect.unk3C = -obj14->effect.unk3C;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x = obj14->effect.x + ((Rand16() & 7) + (Rand16() & 3) + 0x14) * 0x100;
            obj14->effect.y = obj14->effect.y - (Rand16() & 7) * 0x100;
        }
    }
    return FALSE;
}

void sub_080734F8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080737D8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D68);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    struct Object14 *obj14;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x120;
    objBase->unk66 = 0;
    objBase->unk63 = 5;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x20000103;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x80000000;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    sub_0803E2B0(objBase, -0xA, -0xC, 0xA, 0x10);
    ObjectSetBounds(objBase, -3, -3, 3, 3);
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    objBase->xspeed = 0x108;
    objBase->yspeed = 0;
    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
    objBase->unk4C = ~Rand16() & 0x1F;
    if (objBase->flags & 1) {
        objBase->x -= 0x1800;
        objBase->xspeed = -objBase->xspeed;
        objBase->unk48 = -objBase->unk48;
    } else {
        objBase->x += 0x1800;
    }
    obj14 = sub_080706A0(&kirby->base, kirby->base.unk56 * 0x800 + 0x6010600, 0x4E, 0, sub_080730E0, sub_08072FF0);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x2C0;
    obj14 = sub_080706A0(&kirby->base, kirby->base.unk56 * 0x800 + 0x6010400, 0x4E, 2, sub_080731EC, sub_08072FF0);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base, kirby->base.unk56 * 0x800 + 0x6010400, 0x4E, 3, sub_080732E4, sub_08072FF0);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base, kirby->base.unk56 * 0x800 + 0x6010400, 0x4E, 4, sub_080733D8, sub_08072FF0);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    sub_08073A74(kirby);
    obj14 = sub_080706A0(&kirby->base, 0, 0x293, 2, sub_08073C98, NULL);
    obj14->effect.sprite.palId = 0xF;
    obj14->effect.sprite.unk14 = 0x280;
    ObjectBaseInitSprite(objBase, &objBase->sprite, kirby->base.unk56 * 0x800 + 0x6010400, 0x4D, 0, 0xB);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_080737D8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->animationIndex != 0x34 && objBase->flags & 2)
        objBase->flags |= 0x1000;
    else {
        if (!Macro_08091C7C(objBase)) {
            if (objBase->sprite.animId == 0x4D)
                PlaySfxAlt(&kirby->base, SE_ABILITY_FIRE_ATTACK);
            else
                PlaySfxAlt(&kirby->base, SE_ABILITY_ICE_ATTACK);
            if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
                sub_0803D9A8(objBase);
            else {
                if (objBase->flags & 2) {
                    objBase->flags |= 4;
                    objBase->x = kirby->base.x;
                    objBase->y = kirby->base.y;
                    objBase->flags &= ~1;
                    objBase->flags |= kirby->base.flags & 1;
                    objBase->xspeed = kirby->idleTimer + 0x108;
                    objBase->yspeed = kirby->base.counter;
                    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
                    objBase->unk4C = ~Rand16() & 0x1F;
                    if (objBase->flags & 1) {
                        objBase->x -= 0x1800;
                        objBase->xspeed = -objBase->xspeed;
                        objBase->unk48 = -objBase->unk48;
                    } else {
                        objBase->x += 0x1800;
                    }
                }
                objBase->xspeed += objBase->unk48;
                objBase->yspeed += objBase->unk4C;
                if (!(objBase->flags & 0x800)) {
                    objBase->x += objBase->xspeed;
                    objBase->y -= objBase->yspeed;
                }
                sub_0806F8BC(objBase);
            }
        }
    }
}

void sub_08073A74(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08073B64, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x80000500;
    objBase->unk68 |= 0x20000103;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    ObjectSetBounds(objBase, 0, -4, 0x10, 4);
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
}

void sub_08073B64(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        if (!Macro_08091C7C(objBase)) {
            objBase->x = ((struct Kirby *)objBase->parent)->base.x;
            objBase->y = ((struct Kirby *)objBase->parent)->base.y;
            if (((struct Kirby *)objBase->parent)->animationIndex != 0x34)
                objBase->flags |= 0x1000;
            else
                SetPointerSomething(objBase);
        }
    }
}

bool8 sub_08073C98(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;

    if (kirby->animationIndex != 0x34) {
        if (obj14->effect.flags & 2)
            return TRUE;
    } else if (obj14->effect.flags & 2) {
        obj14->effect.flags |= 4;
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y + 0x400;
        obj14->effect.unk3C = -0x300;
        obj14->effect.unk3E = 0x200;
        obj14->effect.unk4 = 0x60;
        obj14->effect.unk8 = -0x40;
        if (obj14->effect.flags & 1) {
            obj14->effect.x += 0x800;
            obj14->effect.y -= 0x200;
            obj14->effect.unk3C = -obj14->effect.unk3C;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x -= 0x800;
            obj14->effect.y -= 0x200;
        }
    }
    return FALSE;
}

void sub_08073D2C(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase2 = TaskGetStructPtr(t);

    ClearObjectBase(objBase2);
    objBase2->header.kind = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x10000100;
    objBase2->unk68 |= 0x20000043;
    objBase2->counter = 1;
    RequestScreenShake(1, objBase);
    sub_0803E2B0(objBase2, -0x14, -0x14, 0x14, 0x14);
    objBase2->flags |= 0x4000;
    ObjectBaseInitSprite(objBase2, &objBase2->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(objBase, SE_OBJECT_BOMB_EXPLODE);
}

void sub_08073ECC(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    ClearObjectBase(objBase2);
    objBase2->header.kind = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->parent = NULL;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x30000100;
    objBase2->unk68 |= 0x20000043;
    if (objBase->flags & 1)
        objBase2->x += 0x400;
    else
        objBase2->x -= 0x400;
    RequestScreenShake(1, objBase);
    sub_0803E2B0(objBase2, -0x14, -0x14, 0x14, 0x14);
    objBase2->flags |= 0x4000;
    ObjectBaseInitSprite(objBase2, &objBase2->sprite, 0x6012000, 0x2BF, 0, 0xC);
    PlaySfx(objBase, SE_OBJECT_BOMB_EXPLODE);
}

void sub_08074088(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08074744, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x280;
    objBase->unk66 = 0x200;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x800;
    objBase->unk68 |= 0x20001003;
    objBase->xspeed = kirby->base.xspeed;
    objBase->counter = 2;
    RequestScreenShake(1, &kirby->base);
    sub_0803E2B0(objBase, -0xE, -0xE, 0xE, 0xE);
    ObjectSetBounds(objBase, -0x18, -0x18, 0x18, 0x18);
    objBase->flags |= 0x4000;
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(&kirby->base, SE_ABILITY_MISSILE_EXPLOSION);
}

void sub_08074240(struct ObjectBase *objBase, bool8 a2) {
    struct Task *t = TaskCreate(sub_08074674, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;
    struct ObjectBase *objBase3;

    ClearObjectBase(objBase2);
    objBase2->header.kind = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    if (objBase->header.kind) {
        objBase2->parent = objBase->parent;
        objBase3 = objBase->parent;
    } else {
        objBase3 = objBase;
    }
    if (a2) {
        objBase2->unk64 = 0x260;
        objBase2->unk66 = 0x80;
    } else {
        objBase2->unk64 = 0x180;
        objBase2->unk66 = 0x100;
    }
    objBase2->unk63 = 5;
    objBase2->flags |= 0xA0000100;
    objBase2->flags |= 0x800;
    objBase2->unk68 |= 0x20000103;
    objBase2->xspeed = objBase->xspeed;
    RequestScreenShake(2, objBase);
    sub_0803E2B0(objBase2, -0xE, -0xE, 0xE, 0xE);
    ObjectSetBounds(objBase2, -0x10, -0x10, 0x10, 0x10);
    objBase2->flags |= 0x4000;
    ObjectBaseInitSprite(objBase2, &objBase2->sprite, 0x6012000, 0x2BF, 0, 0xC);
    PlaySfx(objBase3, SE_ABILITY_BOMB_EXPLODE);
}

void sub_08074420(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080745C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    ClearObjectBase(objBase2);
    objBase2->header.kind = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x180;
    objBase2->unk66 = 0x100;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x10000100;
    objBase2->unk68 |= 0x20000103;
    objBase2->counter = 1;
    RequestScreenShake(1, objBase);
    sub_0803E2B0(objBase2, -0x40, -0x4E, 0x40, 0x32);
    objBase2->flags |= 0x4000;
    ObjectBaseInitSprite(objBase2, &objBase2->sprite, 0x6012000, 0x29B, 0, 0xC);
    PlaySfx(objBase, SE_OBJECT_BOMB_EXPLODE);
}

void sub_080745C4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        if (objBase->counter) {
            if (objBase->counter == 2) {
                if (objBase->header.unk1 < 5)
                    objBase->flags |= 0x200;
                else
                    objBase->flags &= ~0x200;
            }
            if (objBase->header.unk1 > 0xA)
                objBase->flags |= 0x200;
        }
        else if (objBase->header.unk1 < 1 || objBase->header.unk1 > 4)
            objBase->flags |= 0x200;
        else
            objBase->flags &= ~0x200;
        sub_0806F8BC(objBase);
    }
}

void sub_08074674(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        switch (objBase->counter) {
        case 0:
            break;
        case 4:
            objBase->unk63 = 2;
            sub_0803E2B0(objBase, -0x10, -0x10, 0x10, 0x10);
            objBase->flags &= ~0x40000;
            break;
        case 8:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x14, -0x14, 0x14, 0x14);
            objBase->flags &= ~0x40000;
            break;
        case 0xC:
            objBase->flags |= 0x200;
            break;
        }
        ++objBase->counter;
        sub_0806F8BC(objBase);
    }
}

void sub_08074744(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        switch (objBase->counter) {
        case 0:
            break;
        case 1:
            objBase->unk63 = 2;
            sub_0803E2B0(objBase, -0x12, -0x12, 0x12, 0x12);
            objBase->flags &= ~0x40000;
            break;
        case 3:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x18, -0x18, 0x18, 0x18);
            objBase->flags &= ~0x40000;
            break;
        case 4:
            objBase->unk63 = 1;
            sub_0803E2B0(objBase, -0x1E, -0x1E, 0x1E, 0x1E);
            objBase->flags &= ~0x40000;
            break;
        case 8:
            objBase->flags |= 0x200;
            break;
        }
        ++objBase->counter;
        sub_0806F8BC(objBase);
    }
}

void sub_08074860(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08074950, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase2 = tmp;

    ClearObjectBase(objBase2);
    objBase2->header.kind = 2;
    objBase2->x = objBase->x;
    objBase2->y = objBase->y;
    objBase2->parent = objBase;
    objBase2->counter = 0;
    objBase2->roomId = objBase->roomId;
    objBase2->unk56 = objBase->unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk64 = 0x320;
    objBase2->unk66 = 0x200;
    objBase2->unk63 = 0xE;
    objBase2->flags |= 0x20000100;
    objBase2->flags |= 0x800;
    objBase2->unk68 |= 0x20001003;
    objBase2->xspeed = objBase->xspeed;
    sub_0803E2B0(objBase2, -0xF, -0xF, 0xF, 0xF);
}

void sub_08074950(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (++objBase->counter > 4)
            objBase->flags |= 0x1000;
        else
            SetPointerSomething(objBase);
    }
}

void sub_08074A18(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    struct Kirby *kirby = objBase->parent;
    struct Sprite sprite;

    if (kirby->base.unk56 == gLocalPlayerId)
        m4aSongNumStop(SE_ABILITY_SPARK_ATTACK);
    SpriteSomething(&sprite, 0x6000000, 0x111, 0, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
}

void sub_08074AB0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08074C1C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08074A18);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0xA0;
    objBase->unk66 = 0;
    objBase->unk63 = 3;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x4000;
    objBase->unk68 = 0xA0000403;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x17, -0x14, 0x17, 0x1A);
    ObjectSetBounds(objBase, -0x1A, -0x16, 0x1A, 0x1E);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x116, 0, 0xA);
    objBase->sprite.palId = kirby->base.sprite.palId + 4;
    objBase->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_08074C1C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Sprite sprite;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->animationIndex != 0x34) {
        objBase->flags |= 0x1000;
        SpriteSomething(&sprite, 0x6000000, 0x115, 3, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
    } else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        PlaySfxAlt(&kirby->base, SE_ABILITY_SPARK_ATTACK);
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            u8 unk1C = objBase->sprite.unk1C;

            if (objBase->header.unk1 == kirby->base.header.unk1)
                objBase->sprite.unk1C = 0;
            Macro_080FC150(objBase, &objBase->sprite);
            objBase->sprite.unk1C = unk1C;
            if (gLocalPlayerId == kirby->base.unk56) {
                objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                objBase->sprite.x += gUnk_0203AD18[0];
                objBase->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
        } else {
            u8 unk1C;

            objBase->flags |= 4;
            if (!(kirby->base.unkC & 0x200)) {
                switch (objBase->header.unk1) {
                case 6:
                case 0xE:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 4, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 7:
                case 0xF:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 5, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 8:
                case 0x10:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 6, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                case 9:
                case 0x11:
                    SpriteSomething(&sprite, 0x6000000, 0x115, 3, 0xFF, 0, 0, 0, 0, 0x10, objBase->sprite.palId & 0xF, 0x80000);
                    break;
                }
            }
            SetPointerSomething(objBase);
            unk1C = objBase->sprite.unk1C;
            if (objBase->header.unk1 == kirby->base.header.unk1)
                objBase->sprite.unk1C = 0;
            Macro_080FC150(objBase, &objBase->sprite);
            objBase->sprite.unk1C = unk1C;
            if (gLocalPlayerId == kirby->base.unk56) {
                objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                objBase->sprite.x += gUnk_0203AD18[0];
                objBase->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
        }
    }
}

void sub_0807529C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080753CC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 6;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    objBase->flags |= 0x4000;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, gUnk_0834FF14[0].animId, gUnk_0834FF14[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
    objBase->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_080753CC(void) {
    bool32 r8 = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2405;
        objBase->roomId = kirby->base.roomId;
        objBase->flags |= 0x2000000;
        objBase->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SWORD) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_0834FF14[kirby->animationIndex].animId || sprite->variant != gUnk_0834FF14[kirby->animationIndex].variant) {
                    r8 = TRUE;
                    sprite->animId = gUnk_0834FF14[kirby->animationIndex].animId;
                    sprite->variant = gUnk_0834FF14[kirby->animationIndex].variant;
                    if (kirby->animationIndex == 0x5A)
                        sprite->variant = gUnk_0834FF14[kirby->animationIndex].variant + kirby->base.unk56;
                    switch (kirby->animationIndex) {
                    case 0x68:
                    case 0x69:
                        objBase->unk64 = 0x1C0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x80000000;
                        PlaySfx(&kirby->base, SE_ABILITY_SWORD_MIDAIR);
                        break;
                    case 0x35:
                    case 0x42:
                        objBase->unk64 = 0x100;
                        objBase->unk66 = 0;
                        objBase->unk63 = 6;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6F:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0xC0;
                        objBase->unk63 = 1;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 |= 0x81000000;
                        break;
                    case 0x70:
                        objBase->unk64 = 0x300;
                        objBase->unk66 = 0x240;
                        objBase->unk63 = 6;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6A:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x280;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    }
                    if (kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69 && kirby->base.unk56 == gLocalPlayerId)
                        m4aSongNumStop(SE_ABILITY_SWORD_MIDAIR);
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16 || r8) {
                            if (!(kirby->base.flags & 2))
                                objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (kirby->animationIndex == 0x6C && kirby->base.header.unk1 == 0xC) {
                        objBase->unk64 = 0x100;
                        objBase->unk66 = -0x380;
                        objBase->unk63 = 6;
                        objBase->unk68 &= ~0x80000000;
                        if (!(kirby->base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if ((kirby->animationIndex == 0x68 || kirby->animationIndex == 0x69) && kirby->base.header.unk1 == 9 && !(kirby->base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                        if (kirby->animationIndex == 0x6F && !(kirby->base.flags & 0x800000)) {
                            switch (kirby->base.header.unk1) {
                            case 4:
                            case 7:
                            case 0xA:
                            case 0xD:
                            case 0x10:
                            case 0x13:
                            case 0x16:
                            case 0x19:
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base, SE_ABILITY_SWORD_COMBO_1);
                                break;
                            }
                        }
                        if (objBase->flags & 1)
                            ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        ObjectSetBounds(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08075DB0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08075EDC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 8;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30007103;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    objBase->flags |= 0x4000;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, gUnk_083500D8[0].animId, gUnk_083500D8[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08075EDC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2405;
        objBase->roomId = kirby->base.roomId;
        objBase->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_MASTER) {
            if (kirby->base.unk56 == gLocalPlayerId)
                m4aSongNumStop(SE_ABILITY_MASTER_RUN_ATTACK);
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_083500D8[kirby->animationIndex].animId || sprite->variant != gUnk_083500D8[kirby->animationIndex].variant) {
                    sprite->animId = gUnk_083500D8[kirby->animationIndex].animId;
                    sprite->variant = gUnk_083500D8[kirby->animationIndex].variant;
                    if (kirby->animationIndex == 0x5A)
                        sprite->variant = gUnk_083500D8[kirby->animationIndex].variant + kirby->base.unk56;
                    if (kirby->animationIndex == 0x2E) {
                        sprite->variant = gUnk_08350DC6[kirby->base.counter];
                        objBase->sprite.unk1C = 0x10;
                    } else if (kirby->animationIndex == 0x2D) {
                        sprite->variant = gUnk_08350DD0[kirby->base.counter];
                        objBase->sprite.unk1C = 0x10;
                    }
                    switch (kirby->animationIndex) {
                    case 0x68:
                    case 0x69:
                        objBase->unk64 = 0x1C0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x80000000;
                        PlaySfx(&kirby->base, SE_ABILITY_SWORD_MIDAIR);
                        break;
                    case 0x35:
                    case 0x42:
                        objBase->unk64 = 0x100;
                        objBase->unk66 = 0;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6F:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0xC0;
                        objBase->unk63 = 1;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 |= 0x81000000;
                        break;
                    case 0x70:
                        objBase->unk64 = 0x300;
                        objBase->unk66 = 0x240;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x6B:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x280;
                        objBase->unk63 = 2;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x73:
                        objBase->unk64 = 0x80;
                        objBase->unk66 = 0x2C0;
                        objBase->unk63 = 8;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x76:
                        objBase->unk64 = 0x180;
                        objBase->unk66 = 0x1C0;
                        objBase->unk63 = 3;
                        objBase->flags &= ~0x40000;
                        objBase->unk68 &= ~0x81000000;
                        break;
                    case 0x77:
                        PlaySfx(&kirby->base, SE_ABILITY_MASTER_RUN_ATTACK);
                        objBase->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010200;
                        break;
                    }
                    if (kirby->animationIndex != 0x77) {
                        if (kirby->base.unk56 == gLocalPlayerId)
                            m4aSongNumStop(SE_ABILITY_MASTER_RUN_ATTACK);
                        objBase->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010400;
                    }
                    if (kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69 && kirby->base.unk56 == gLocalPlayerId)
                        m4aSongNumStop(SE_ABILITY_SWORD_MIDAIR);
                } else if (kirby->animationIndex == 0x6F) {
                    if (kirby->base.flags & 1)
                        objBase->x -= kirby->base.header.unk1 << 7;
                    else
                        objBase->x += kirby->base.header.unk1 << 7;
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16) {
                            if (!(kirby->base.flags & 2))
                                objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (kirby->animationIndex == 0x6C && kirby->base.header.unk1 == 0xC) {
                        objBase->unk64 = 0x100;
                        objBase->unk66 = -0x380;
                        objBase->unk63 = 6;
                        objBase->unk68 &= ~0x80000000;
                        if (!(kirby->base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                    }
                    if (kirby->animationIndex == 0x77 && !(kirby->base.flags & 0x800000) && ++objBase->counter > 4) {
                        objBase->flags &= ~0x40000;
                        objBase->counter = 0;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if ((kirby->animationIndex == 0x68 || kirby->animationIndex == 0x69) && kirby->base.header.unk1 == 9 && !(kirby->base.flags & 0x800000))
                            objBase->flags &= ~0x40000;
                        if (kirby->animationIndex == 0x6F && !(kirby->base.flags & 0x800000)) {
                            switch (kirby->base.header.unk1) {
                            case 4:
                            case 7:
                            case 0xA:
                            case 0xD:
                            case 0x10:
                            case 0x13:
                            case 0x16:
                            case 0x19:
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base, SE_ABILITY_SWORD_COMBO_1);
                                break;
                            }
                        }
                        if (objBase->flags & 1)
                            ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        ObjectSetBounds(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08076A60(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08076B84, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x1E0;
    objBase->unk63 = 5;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30005003;
    objBase->unk68 |= 0x4000000;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, gUnk_083502C0[0].animId, gUnk_083502C0[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08076B84(void) {
    bool32 b = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2405;
        objBase->roomId = kirby->base.roomId;
        objBase->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_HAMMER) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                ++unk1C; --unk1C; // fix stack
                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_083502C0[kirby->animationIndex].animId || sprite->variant != gUnk_083502C0[kirby->animationIndex].variant) {
                    b = TRUE;
                    if (sprite->animId != gUnk_083502C0[kirby->animationIndex].animId && sprite->animId == gUnk_083502C0[0x6A].animId)
                        kirby->base.flags &= ~0x8000;
                    sprite->animId = gUnk_083502C0[kirby->animationIndex].animId;
                    sprite->variant = gUnk_083502C0[kirby->animationIndex].variant;
                    if (kirby->animationIndex == 0x5A)
                        sprite->variant = gUnk_083502C0[kirby->animationIndex].variant + kirby->base.unk56;
                    if (kirby->animationIndex == 0x67) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x1E0;
                        objBase->unk63 = 2;
                        objBase->unk68 &= ~0x8000008;
                        objBase->unk68 |= 0x100;
                        objBase->flags &= ~0x40000;
                        kirby->base.flags &= ~0x8000;
                        PlaySfx(&kirby->base, SE_ABILITY_HAMMER_CHARGE);
                    } else if (kirby->animationIndex == 0x6A) {
                        objBase->unk64 = 0xE0;
                        objBase->unk66 = 0xE0;
                        objBase->unk63 = 2;
                        objBase->unk68 &= ~0x8000108;
                        objBase->flags &= ~0x40000;
                        kirby->base.flags |= 0x8000;
                    } else if (kirby->animationIndex == 0x68 || kirby->animationIndex == 0x69 || kirby->animationIndex == 0x42 || kirby->animationIndex == 0x35) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x1E0;
                        objBase->unk63 = 5;
                        objBase->unk68 &= ~0x8000108;
                        kirby->base.flags &= ~0x8000;
                        objBase->flags &= ~0x40000;
                    } else if (kirby->animationIndex == 0x6C) {
                        kirby->base.flags &= ~0x8000;
                    }
                }
                if (sprite->animId) {
                    if (!objBase->sprite.unk20[0].unk0) {
                        objBase->flags &= ~0x200;
                        if (!objBase->sprite.unk16 || b) {
                            objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if (kirby->animationIndex == 0x6B && (kirby->base.flags & 2 && !(kirby->base.flags & 0x800000))) {
                            objBase->flags &= ~0x40000;
                            PlaySfx(&kirby->base, SE_ABILITY_HAMMER_RUN_ATTACK);
                        }
                        if (kirby->animationIndex == 0x67 && kirby->base.header.unk1 == 0x17) {
                            objBase->unk64 = 0x380;
                            objBase->unk66 = 0x380;
                            objBase->unk63 = 0x19;
                            objBase->unk68 |= 0x8000108;
                            if (!(kirby->base.flags & 0x800000)) {
                                objBase->flags &= ~0x40000;
                                PlaySfx(&kirby->base, SE_ABILITY_HAMMER_CHARGE_ATTACK);
                            }
                            kirby->base.flags &= ~0x8000;
                        }
                        if (objBase->flags & 1)
                            ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        ObjectSetBounds(objBase, 0, 0, 0, 0);
                    }
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08077454(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08077574, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x140;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x20000043;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, gUnk_08350474[0].animId, gUnk_08350474[0].variant, 0xC);
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08077574(void) {
    bool32 b = FALSE;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite *sprite = &objBase->sprite;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2605;
        objBase->roomId = kirby->base.roomId;
        objBase->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->ability != KIRBY_ABILITY_PARASOL) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->animId != gUnk_08350474[kirby->animationIndex].animId || sprite->variant != gUnk_08350474[kirby->animationIndex].variant) {
                    b = TRUE;
                    sprite->animId = gUnk_08350474[kirby->animationIndex].animId;
                    sprite->variant = gUnk_08350474[kirby->animationIndex].variant;
                    if (kirby->animationIndex == 0x5A)
                        sprite->variant = gUnk_08350474[kirby->animationIndex].variant + kirby->base.unk56;
                    if (kirby->animationIndex == 0x34 || kirby->animationIndex == 0x43) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                        objBase->flags &= ~0x40000;
                        PlaySfx(&kirby->base, SE_ABILITY_PARASOL_ATTACK);
                    } else if (kirby->animationIndex == 0x36 || kirby->animationIndex == 0x44) {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0;
                        objBase->unk63 = 4;
                    } else {
                        objBase->unk64 = 0x1E0;
                        objBase->unk66 = 0x140;
                        objBase->unk63 = 4;
                    }
                }
                if (sprite->animId) {
                    s32 unk0 = objBase->sprite.unk20[0].unk0;
                    s16 backup = objBase->sprite.unk16;

                    if (!unk0) {
                        objBase->flags &= ~0x200;
                        ++backup; --backup; // fix sign extension
                        if (!backup && objBase->counter) {
                            objBase->sprite.unk20[0].unk0 = -1;
                            objBase->flags |= 0x200;
                        }
                    }
                    objBase->counter = backup;
                    Macro_080FC150(objBase, &objBase->sprite);
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                    if (b)
                        objBase->counter = objBase->sprite.unk16;
                    if (objBase->sprite.unk20[0].unk4 == 0 && objBase->sprite.unk20[0].unk5 == 0
                        && objBase->sprite.unk20[0].unk6 == 0 && objBase->sprite.unk20[0].unk7 == 0) {
                        objBase->flags |= 0x200;
                        objBase->sprite.unk20[0].unk0 = -1;
                    } else {
                        objBase->flags &= ~0x200;
                        objBase->sprite.unk20[0].unk0 = 0;
                    }
                    if (kirby->animationIndex == 0x42 || kirby->animationIndex == 0x35) {
                        objBase->flags |= 0x80000000;
                        objBase->unk68 |= 0x10000000;
                    } else {
                        objBase->flags &= ~0x80000000;
                        objBase->unk68 &= ~0x10000000;
                    }
                    if (objBase->sprite.unk20[0].unk0 != -1) {
                        objBase->flags &= ~0x200;
                        if (objBase->flags & 1)
                            ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                        else
                            ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                    } else {
                        ObjectSetBounds(objBase, 0, 0, 0, 0);
                    }
                    if (kirby->base.flags & 0x200)
                        objBase->flags |= 0x200;
                    SetPointerSomething(objBase);
                }
            }
        }
    }
}

void sub_08077CD0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08077D84, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (!(kirby->base.flags & 1))
        effect->flags |= 1;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010300, gUnk_0834FBCC[0].animId, gUnk_0834FBCC[0].variant, 0xC);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    effect->unk8 = 0;
}

void sub_08077D84(void) {
    // declarations with initialization interfere with stack allocation; same for other similar callback functions
    struct EffectObject *tmp, *effect;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    effect = tmp;
    sprite = &effect->sprite;
    kirby = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->ability != KIRBY_ABILITY_BURNING)
        effect->flags |= 0x1000;
    else {
        effect->flags &= ~0x2401;
        effect->flags |= kirby->base.flags & 0x2405;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        effect->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        if (kirby->base.flags & 1)
            effect->flags |= 1;
        else
            effect->flags &= ~1;
        sprite->animId = gUnk_0834FBCC[kirby->animationIndex].animId;
        sprite->variant = gUnk_0834FBCC[kirby->animationIndex].variant;
        if (kirby->animationIndex == 0x5A)
            sprite->variant = gUnk_0834FBCC[kirby->animationIndex].variant + kirby->base.unk56;
        if (effect->unk8 & 1 && !(kirby->base.flags & 0x40)) {
            if (!(kirby->base.unk58 & 2))
                effect->unk8 &= ~1;
        } else if (sprite->animId) {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = sprite->unk1C;

                if (effect->sprite.animId) {
                    sprite->unk1C = 0;
                    Macro_080FC150(effect, sprite);
                    sprite->unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                        sprite->x += gUnk_0203AD18[0];
                        sprite->y += gUnk_0203AD18[1];
                        Macro_0803DBC8(effect, sprite);
                    }
                }
            } else {
                Macro_080FC150(effect, sprite);
                if (gLocalPlayerId == kirby->base.unk56) {
                    sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, sprite);
                }
                if (kirby->base.unk58 & 2)
                    effect->unk8 |= 1;
                else
                    effect->unk8 &= ~1;
            }
        }
    }
}

void sub_08078260(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08078314, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (!(kirby->base.flags & 1))
        effect->flags |= 1;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010380, gUnk_0834FD70[0].animId, gUnk_0834FD70[0].variant, 0xC);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    effect->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_08078314(void) {
    struct EffectObject *tmp, *effect;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    effect = tmp;
    sprite = &effect->sprite;
    kirby = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->ability != KIRBY_ABILITY_BURNING)
        effect->flags |= 0x1000;
    else {
        effect->flags &= ~0x2401;
        effect->flags |= kirby->base.flags & 0x2405;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        effect->sprite.unk14 = kirby->base.sprite.unk14;
        if (kirby->base.flags & 1)
            effect->flags |= 1;
        else
            effect->flags &= ~1;
        sprite->animId = gUnk_0834FD70[kirby->animationIndex].animId;
        sprite->variant = gUnk_0834FD70[kirby->animationIndex].variant;
        if (kirby->animationIndex == 0x5A)
            sprite->variant = gUnk_0834FD70[kirby->animationIndex].variant + kirby->base.unk56;
        if (effect->unk8 & 1 && !(kirby->base.flags & 0x40)) {
            if (!(kirby->base.unk58 & 2))
                effect->unk8 &= ~1;
        } else if (sprite->animId) {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = sprite->unk1C;

                if (effect->sprite.animId) {
                    sprite->unk1C = 0;
                    Macro_080FC150(effect, sprite);
                    sprite->unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                        sprite->x += gUnk_0203AD18[0];
                        sprite->y += gUnk_0203AD18[1];
                        Macro_0803DBC8(effect, sprite);
                    }
                }
            } else {
                Macro_080FC150(effect, sprite);
                if (gLocalPlayerId == kirby->base.unk56) {
                    sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, sprite);
                }
                if (kirby->base.unk58 & 2)
                    effect->unk8 |= 1;
                else
                    effect->unk8 &= ~1;
            }
        }
    }
}

void sub_080787F0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080788AC, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (!(kirby->base.flags & 1))
        effect->flags |= 1;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, gUnk_08350620[0].animId, gUnk_08350620[0].variant, 0xC);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    effect->unk8 = ((struct Kirby *)effect->parent)->animationIndex;
    effect->unk3C = 0;
}

void sub_080788AC(void) {
    struct EffectObject *tmp, *effect;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    effect = tmp;
    sprite = &effect->sprite;
    kirby = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        effect->flags &= ~0x2401;
        effect->flags |= kirby->base.flags & 0x2405;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        effect->sprite.unk14 = kirby->base.sprite.unk14 - 0x40;
        if (kirby->base.flags & 1)
            effect->flags |= 1;
        else
            effect->flags &= ~1;
        if (kirby->ability != KIRBY_ABILITY_BOMB) {
            effect->flags |= 0x1000;
        } else {
            if (!(kirby->base.unkC & 2)
                && !(kirby->animationIndex > 0x6F && kirby->animationIndex < 0x76)
                && kirby->animationIndex != 0x35
                && kirby->animationIndex != 0x34) {
                // TODO: tail merge is not happening
                goto _08078CE2; // effect->flags |= 0x1000;
            } else {
                if (effect->unk4 > 0xA0) {
                    if ((effect->unk4 <= 0x140 && effect->unk4 & 8)
                        || (effect->unk4 > 0x140 && effect->unk4 < 0x169 && effect->unk4 & 4)
                        || (effect->unk4 >= 0x169 && effect->unk4 & 2)) {
                        sprite->animId = gUnk_083507F8[kirby->animationIndex].animId;
                        sprite->variant = gUnk_083507F8[kirby->animationIndex].variant;
                        if (effect->unk8 == kirby->animationIndex && !effect->unk3C)
                            sub_0815521C(&effect->sprite, effect->header.unk1);
                        effect->unk3C = 1;
                    } else {
                        sprite->animId = gUnk_08350620[kirby->animationIndex].animId;
                        sprite->variant = gUnk_08350620[kirby->animationIndex].variant;
                        if (effect->unk8 == kirby->animationIndex && effect->unk3C)
                            sub_0815521C(&effect->sprite, effect->header.unk1);
                        effect->unk3C = 0;
                    }
                } else {
                    sprite->animId = gUnk_08350620[kirby->animationIndex].animId;
                    sprite->variant = gUnk_08350620[kirby->animationIndex].variant;
                }
                if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                    u8 unk1C = sprite->unk1C;

                    if (effect->sprite.animId) {
                        sprite->unk1C = 0;
                        Macro_080FC150(effect, sprite);
                        sprite->unk1C = unk1C;
                        if (gLocalPlayerId == kirby->base.unk56) {
                            sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                            sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                        }
                        if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                            sprite->x += gUnk_0203AD18[0];
                            sprite->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(effect, sprite);
                        }
                    }
                } else {
                    effect->unk8 = kirby->animationIndex;
                    if (kirby->animationIndex != 0x73 && kirby->animationIndex != 0x75 && kirby->animationIndex != 0x74) {
                        if (effect->unk4 > 0x190) {
                            if (kirby->stateFn == sub_0806A03C || kirby->stateFn == sub_0806A308)
                                kirby->unkD9 = 1;
                            kirby->base.unkC &= ~2;
                            sub_0806EB74(kirby);
                            sub_08073ECC(&kirby->base);
                            effect->flags |= 0x1000;
                            return;
                        } else {
                            if (!(kirby->base.flags & 0x40) && kirby->base.unk58 & 2) {
                                sub_08082380(kirby, 4);
                                kirby->base.unkC &= ~2;
                                sub_0806EB74(kirby);
                                effect->flags |= 0x1000;
                                return;
                            }
                        }
                    } else {
                        if (kirby->base.header.unk1 <= 3 && kirby->base.unk58 & 2) {
                            sub_08082380(kirby, 4);
                        _08078CE2:
                            effect->flags |= 0x1000;
                            return;
                        }
                    }
                    if (sprite->animId) {
                        if (!(++effect->unk4 & 7) && ((kirby->animationIndex < 0x73 || kirby->animationIndex > 0x75) || kirby->base.header.unk1 < 4)) {
                            if (effect->flags & 1)
                                sub_08096464(&kirby->base, -effect->sprite.unk20[0].unk4, effect->sprite.unk20[0].unk5);
                            else
                                sub_08096464(&kirby->base, effect->sprite.unk20[0].unk4, effect->sprite.unk20[0].unk5);
                        }
                        Macro_080FC150(effect, sprite);
                        if (gLocalPlayerId == kirby->base.unk56) {
                            sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                            sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                        }
                        if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                            sprite->x += gUnk_0203AD18[0];
                            sprite->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(effect, sprite);
                        }
                    }
                }
            }
        }
    }
}

void sub_08078EFC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;
    struct EffectObject *effect;
    struct ObjectBase *objBase;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08079264;
    var->unk7C = sub_08084B70;
    var->unk80 = sub_080794A4;
    var->unk84 = sub_08084DAC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20002003;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    var->base.flags |= 0x100;
    var->base.xspeed = 0x600;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -7, 0xC, 8);
    ObjectSetBounds(&var->base, -2, -2, 2, 2);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1A3, 0, 0xA);
    var->base.sprite.palId = kirby->base.unk56 + 4;
    effect = CreateEffectObject(&kirby->base, 0, 0x293, 1);
    objBase = effect->parent;
    if (objBase) {
        if (objBase->flags & 1) {
            effect->x += 0x800;
            effect->unk3C = 0x140;
            effect->unk4 = -0x18;
        } else {
            effect->x -= 0x800;
            effect->unk3C = -0x140;
            effect->unk4 = 0x18;
        }
        effect->y += 0x600;
        effect->unk8 = 0x20;
        effect->unk3E = 0x40;
        effect->flags |= 1;
    } else {
        effect->unk4 = 0x18;
        effect->unk8 = 0x20;
        effect->unk3C = -0x140;
        effect->unk3E = 0x40;
        effect->x -= 0x800;
        effect->y += 0x600;
    }
    PlaySfx(&kirby->base, SE_ABILITY_CUTTER_ATTACK);
    SetPointerSomething(&var->base);
}

bool8 sub_08079264(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (a1->base.sprite.variant != 1)
        a1->base.flags |= 4;
    else if (a1->base.flags & 2)
        a1->base.sprite.variant = 2;
    if (kirby->animationIndex != 0x35)
        a1->unk88 = 1;
    if (!a1->unk88) {
        if (a1->base.flags & 1) {
            a1->base.xspeed += 0x30;
            if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
            else if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
        } else {
            a1->base.xspeed -= 0x30;
            if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
            else if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
        }
        if (kirby->movementState & 0x40) {
            a1->base.yspeed += 0x30;
            if (a1->base.yspeed > 0x160)
                a1->base.yspeed = 0x160;
        } else if (kirby->movementState & 0x80) {
            a1->base.yspeed -= 0x30;
            if (a1->base.yspeed < -0x160)
                a1->base.yspeed = -0x160;
        }
    } else {
        if (a1->base.flags & 1) {
            a1->base.xspeed += 0x4E;
            if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
            else if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
        } else {
            a1->base.xspeed -= 0x4E;
            if (a1->base.xspeed > 0x700)
                a1->base.xspeed = 0x700;
            else if (a1->base.xspeed < -0x700)
                a1->base.xspeed = -0x700;
        }
    }
    if (a1->base.flags & 1) {
        if (a1->base.xspeed > 0) {
            if (a1->base.yspeed < 0) {
                a1->base.yspeed += 0xB;
                if (a1->base.yspeed > 0)
                    a1->base.yspeed = 0;
            } else {
                a1->base.yspeed -= 0xB;
                if (a1->base.yspeed < 0)
                    a1->base.yspeed = 0;
            }
        } else {
            if (a1->base.x <= gCurLevelInfo[a1->base.unk56].levelMinPosition.x - 0x2800)
                a1->base.x = gCurLevelInfo[a1->base.unk56].levelMinPosition.x - 0x2800;
        }
    } else {
        if (a1->base.xspeed < 0) {
            if (a1->base.yspeed < 0) {
                a1->base.yspeed += 0xB;
                if (a1->base.yspeed > 0)
                    a1->base.yspeed = 0;
            } else {
                a1->base.yspeed -= 0xB;
                if (a1->base.yspeed < 0)
                    a1->base.yspeed = 0;
            }
        } else {
            if (a1->base.x >= gCurLevelInfo[a1->base.unk56].levelMaxPosition.x + 0x2800)
                a1->base.x = gCurLevelInfo[a1->base.unk56].levelMaxPosition.x + 0x2800;
        }
    }
    if (a1->base.counter > 4) {
        if (!(kirby->base.flags & 0x200) && sub_0803925C(&a1->base, &kirby->base)) {
            a1->base.flags |= 0x1000;
            return TRUE;
        }
    } else {
        if (a1->base.counter == 1)
            a1->base.flags &= ~0x100;
        ++a1->base.counter;
    }
    return FALSE;
}

bool8 sub_080794A4(struct Unk_080C4EDC *a1) {
    a1->base.sprite.animId = 0x1A3;
    a1->base.sprite.variant = 1;
    a1->base.flags &= ~2;
    a1->base.flags &= ~4;
    a1->base.yspeed = 0x200;
    if (a1->base.xspeed < 0)
        a1->base.xspeed = 0x155;
    else
        a1->base.xspeed = -0x155;
    a1->unk78 = sub_08079504;
    a1->unk80 = NULL;
    return FALSE;
}

bool8 sub_08079504(struct Unk_080C4EDC *a1) {
    if (Macro_08091C7C(&a1->base))
        return TRUE;
    a1->base.flags |= 0x200;
    if (a1->base.flags & 2) {
        CreateEffectObject(&a1->base, 0, 0x28E, 0);
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        a1->base.yspeed -= 0x40;
        if (a1->base.yspeed < -0x7777)
            a1->base.yspeed = -0x7777;
        return FALSE;
    }
}

void sub_0807958C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079714, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084E00);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0x80;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30001103;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    kirby->base.flags |= 0x8000;
    kirby->base.unk68 = 0x80;
    sub_0803E2B0(objBase, -0xC, -0xA, 0xC, 0xC);
    ObjectSetBounds(objBase, -0xC, -0xA, 0xC, 7);
    SetPointerSomething(objBase);
}

void sub_08079714(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!ObjectPreUpdate(objBase)) {
        if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x35) {
            kirby->base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
        } else {
            PlaySfxAlt(&kirby->base, SE_ABILITY_BURNING_ATTACK);
            SetPointerSomething(objBase);
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 2) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
        }
    }
}

void sub_0807988C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079A9C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x220;
    objBase->unk66 = 0x80;
    objBase->unk63 = 0xA;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x30005003;
    objBase->flags |= 0x2000000;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    kirby->base.flags |= 0x8000;
    kirby->base.unk68 = 0x80;
    sub_0803E2B0(objBase, -8, -4, 8, 0xC);
    ObjectSetBounds(objBase, -6, -6, 6, 0xB);
    SetPointerSomething(objBase);
    PlaySfx(&kirby->base, SE_ABILITY_STONE_TRANSFORM);
}

void sub_08079A9C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x35 && kirby->animationIndex != 0x67 && kirby->animationIndex != 0x68) {
            kirby->base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        kirby->base.flags |= 0x8000;
        sub_0803E2B0(objBase, -8, -4, 8, 0xC);
        if (kirby->base.unk62 & 4)
            objBase->unk63 = 4;
        else
            objBase->unk63 = 0xA;
        if (kirby->base.unk62 & 4 && !kirby->base.xspeed) {
            if (kirby->base.y != kirby->base.unk4C) {
                objBase->flags &= ~0x200;
                sub_0803E2B0(objBase, -0x10, -4, 0x10, 0xC);
            } else {
                objBase->flags |= 0x200;
                return;
            }
        } else {
            objBase->flags &= ~0x200;
        }
        SetPointerSomething(objBase);
    }
}

void sub_08079C28(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08079D64, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->counter = 1;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x30000043;
    sub_0803E2B0(objBase, -8, -0xC, 0xC, 0xA);
    ObjectSetBounds(objBase, -8, -0xC, 0xC, 0xA);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010340, 0x2E, 0, 0xA);
    objBase->sprite.palId = 0xE;
}

#define Macro_08079D64(objBase) ({ \
    bool32 _b; \
    u8 _i; \
 \
    _b = FALSE; \
    for (_i = 0; _i < gNumKirbys; ++_i) { \
        if (gKirbys[_i].base.roomId == (objBase)->roomId && !(gUnk_02026D50[gCurLevelInfo[_i].unk65E] & 8)) \
            _b = TRUE; \
    } \
    _b; \
})

void sub_08079D64(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!Macro_08079D64(objBase))
        objBase->flags |= 0x1000;
    else if (objBase->roomId != kirby->base.roomId)
        objBase->flags |= 0x1000;
    else {
        objBase->flags |= 4;
        if (kirby->animationIndex == 0x42) {
            if (objBase->sprite.variant != 0)
                objBase->counter = 1;
            else if ((kirby->base.flags & 1) != (objBase->flags & 1))
                objBase->counter = 1;
        } else if (kirby->animationIndex == 0x43) {
            if (objBase->sprite.variant != 1)
                objBase->counter = 1;
        } else if (kirby->animationIndex == 0x44) {
            if (objBase->sprite.variant != 2)
                objBase->counter = 1;
        }
        if (!--objBase->counter) {
            objBase->counter = 8;
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            switch (kirby->animationIndex) {
            case 0x42:
                sub_0803E2B0(objBase, -8, -0xC, 0xC, 0xA);
                ObjectSetBounds(objBase, -8, -0xC, 0xC, 0xA);
                if (kirby->base.flags & 1) {
                    objBase->x -= 0x1200;
                    objBase->xspeed = -0x300;
                    objBase->yspeed = 0;
                    objBase->sprite.variant = 0;
                    objBase->flags |= 1;
                } else {
                    objBase->x += 0x1000;
                    objBase->xspeed = 0x300;
                    objBase->yspeed = 0;
                    objBase->sprite.variant = 0;
                    objBase->flags &= ~1;
                }
                break;
            case 0x43:
                sub_0803E2B0(objBase, -0xC, -0x10, 0xE, 0x10);
                ObjectSetBounds(objBase, -0xC, -0x10, 0xE, 0x10);
                objBase->y -= 0x1000;
                objBase->yspeed = -0x300;
                objBase->xspeed = 0;
                objBase->sprite.variant = 1;
                objBase->flags &= ~1;
                break;
            case 0x44:
                sub_0803E2B0(objBase, -0xC, -8, 0xE, 0x10);
                ObjectSetBounds(objBase, -0xC, -8, 0xE, 0x10);
                objBase->y += 0x1000;
                objBase->yspeed = 0x300;
                objBase->xspeed = 0;
                objBase->sprite.variant = 2;
                objBase->flags &= ~1;
                break;
            default:
                objBase->flags |= 0x1400;
                break;
            }
        }
        if (kirby->animationIndex != 0x42 && kirby->animationIndex != 0x43 && kirby->animationIndex != 0x44)
            objBase->flags |= 0x1400;
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            sub_0803D9A8(&kirby->base);
            return;
        }
        switch (kirby->animationIndex) {
        case 0x42:
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->xspeed += 0x80;
            else
                objBase->xspeed -= 0x80;
            objBase->x += objBase->xspeed + (kirby->base.x - kirby->base.unk48);
            objBase->y += objBase->yspeed;
            break;
        case 0x43:
            objBase->x = kirby->base.x;
            objBase->yspeed += 0x80;
            objBase->x += objBase->xspeed;
            objBase->y += objBase->yspeed + (kirby->base.y - kirby->base.unk4C);
            break;
        case 0x44:
            objBase->x = kirby->base.x;
            objBase->yspeed -= 0x80;
            objBase->x += objBase->xspeed;
            objBase->y += objBase->yspeed + (kirby->base.y - kirby->base.unk4C);
            break;
        default:
            objBase->flags |= 0x1400;
            break;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_0807A10C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807A280, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = 0x180;
    objBase->unk63 = 2;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    kirby->base.flags |= 0x8040;
    kirby->base.unk68 = 0x80;
    sub_0803E2B0(objBase, -0xA, -0xA, 8, 0xB);
    SetPointerSomething(objBase);
}

void sub_0807A280(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x35 && kirby->animationIndex != 0x36) {
            kirby->base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        if (kirby->animationIndex == 0x34)
            objBase->flags &= ~0x200;
        else
            objBase->flags |= 0x200;
        if (kirby->animationIndex == 0x35 && kirby->base.header.unk1 < 8)
            kirby->base.flags &= ~0x8000;
        else
            kirby->base.flags |= 0x8000;
        if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 4) {
            objBase->flags &= ~0x40000;
            objBase->counter = 0;
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
    }
}

void sub_0807A3E4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807A4F4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084E44);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x320;
    objBase->unk66 = 0x280;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    kirby->base.flags |= 0x8000;
    kirby->base.unk68 = 0x80;
    sub_0803E2B0(objBase, -9, -9, 0xC, 0xC);
    ObjectSetBounds(objBase, -6, -6, 0xE, 0xC);
}

void sub_0807A4F4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        struct Kirby *kirby = objBase->parent;

        objBase->flags &= ~1;
        objBase->flags |= kirby->base.flags & 1;
        if ((kirby->animationIndex == 0x35 || kirby->animationIndex == 0x36)
            || (kirby->animationIndex == 0x68 && kirby->base.header.unk1 > 4 && kirby->base.header.unk1 < 0xC)) {
            objBase->flags |= 0x200;
            kirby->base.flags &= ~0x8000;
        } else {
            if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x68) {
                kirby->base.flags &= ~0x8000;
                objBase->flags |= 0x1000;
                return;
            }
            objBase->flags &= ~0x200;
            kirby->base.flags |= 0x8000;
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 2) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        }
        if (kirby->animationIndex == 0x68) {
            if (kirby->base.header.unk1 == 1) {
                if (kirby->base.unk56 == gLocalPlayerId)
                    m4aSongNumStop(SE_ABILITY_WHEEL_TRANSFORM);
                PlaySfx(&kirby->base, SE_ABILITY_WHEEL_TURN);
            } else if (kirby->base.header.unk1 == 0xC) {
                PlaySfxAlt(&kirby->base, SE_ABILITY_WHEEL_TRANSFORM);
            }
        } else {
            PlaySfxAlt(&kirby->base, SE_ABILITY_WHEEL_TRANSFORM);
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
    }
}

// a1 is a struct Object when kind is 1 and a struct EffectObject when it is 3.
// obj and effect are the two views of it; only the one the kind check selects
// may be read past the header.
struct ThrowAbilityObject *sub_0807A7E8(struct ObjectHeader *a1) {
    struct Object *obj = (struct Object *)a1;
    struct EffectObject *effect = (struct EffectObject *)a1;
    struct Task *t = TaskCreate(sub_0807AAD4, sizeof(struct ThrowAbilityObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ThrowAbilityObject *tmp = TaskGetStructPtr(t), *throwObj = tmp;
    struct Kirby *kirby;

    if (obj->base.header.kind != 1)
        kirby = effect->parent;
    else
        kirby = obj->base.unk6C;
    ClearObjectBase(&throwObj->base);
    throwObj->base.header.kind = 2;
    throwObj->base.x = kirby->base.x;
    throwObj->base.y = kirby->base.y;
    throwObj->base.parent = kirby;
    throwObj->base.counter = 0;
    throwObj->base.roomId = kirby->base.roomId;
    throwObj->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&throwObj->base))
        throwObj->base.flags |= 0x2000;
    throwObj->base.parent = kirby; // redundant
    throwObj->base.x = kirby->base.x; // redundant
    throwObj->base.y = kirby->base.y; // redundant
    throwObj->base.unk64 = 0x380;
    throwObj->base.unk66 = 0x380;
    throwObj->base.unk63 = 0xC;
    throwObj->base.flags |= 0x2000000;
    throwObj->base.flags |= 0x20000100;
    throwObj->base.flags |= 0x40;
    throwObj->base.unk68 |= 0x20001003;
    if (obj->base.header.kind != 1)
        throwObj->base.flags |= effect->flags & 0x4000;
    else
        throwObj->base.flags |= obj->base.flags & 0x4000;
    if (kirby->base.flags & 1)
        throwObj->base.flags |= 1;
    else
        throwObj->base.flags &= ~1;
    if (obj->base.header.kind != 1) {
        u32 v10;

        sub_0803E2B0(&throwObj->base, -0xB, -0xB, 0xB, 0xB);
        ObjectSetBounds(&throwObj->base, -3, -3, 3, 3);
        v10 = effect->flags & 0x4000 ? 0x80000 : 0;
        throwObj->base.sprite.tilesVram = effect->sprite.tilesVram;
        throwObj->base.sprite.unk14 = 0x280;
        throwObj->base.sprite.animId = effect->sprite.animId;
        throwObj->base.sprite.variant = effect->sprite.variant;
        throwObj->base.sprite.unk16 = 0;
        throwObj->base.sprite.unk1B = 0xFF;
        throwObj->base.sprite.unk1C = 0x10;
        throwObj->base.sprite.palId = effect->sprite.palId;
        throwObj->base.sprite.x = 0;
        throwObj->base.sprite.y = 0;
        throwObj->base.sprite.unk8 = v10 | 0x42000;
        throwObj->base.sprite.unk20[0].unk0 = -1;
        sub_08155128(&throwObj->base.sprite);
        throwObj->unk78 = 0xFF;
        effect->flags |= 0x400;
    } else {
        u32 v12;

        if (ObjType38To52(obj)) {
            sub_0803E2B0(&throwObj->base, -0x10, -0x10, 0x10, 0x10);
            ObjectSetBounds(&throwObj->base, -0xC, -0xC, 0xC, 0xC);
        } else {
            sub_0803E2B0(&throwObj->base, -0xB, -0xB, 0xB, 0xB);
            ObjectSetBounds(&throwObj->base, -3, -3, 3, 3);
        }
        v12 = obj->base.flags & 0x4000 ? 0x80000 : 0;
        throwObj->base.sprite.tilesVram = obj->base.sprite.tilesVram;
        throwObj->base.sprite.unk14 = 0x340;
        throwObj->base.sprite.animId = obj->base.sprite.animId;
        throwObj->base.sprite.variant = obj->base.sprite.variant;
        throwObj->base.sprite.unk16 = 0;
        throwObj->base.sprite.unk1B = 0xFF;
        throwObj->base.sprite.unk1C = 0x10;
        throwObj->base.sprite.palId = obj->base.sprite.palId;
        throwObj->base.sprite.x = 0;
        throwObj->base.sprite.y = 0;
        throwObj->base.sprite.unk8 = v12 | 0x42000;
        if (obj->base.sprite.palId == 0xF) {
            if (obj->base.unkC & 0x10)
                throwObj->base.sprite.palId = sub_0803DF24(gUnk_08351648[OBJ_DROPPY].unk8);
            else
                throwObj->base.sprite.palId = sub_0803DF24(gUnk_08351648[obj->type].unk8);
        }
        throwObj->base.sprite.unk20[0].unk0 = -1;
        sub_08155128(&throwObj->base.sprite);
        throwObj->base.sprite.unk1C = 0;
        obj->base.sprite.tilesVram = 0;
        obj->base.flags |= 0x400;
        throwObj->base.counter = 0;
        throwObj->unk78 = obj->type;
    }
    return throwObj;
}

void sub_0807AAD4(void) {
    struct ThrowAbilityObject *tmp = TaskGetStructPtr(gCurTask), *throwObj = tmp;
    struct Kirby *kirby = throwObj->base.parent;
    struct Sprite sprite;

    if (throwObj->unk78 != 0xFF) {
        Macro_08107BA8_4(&throwObj->base, &throwObj->base.sprite, &sprite, gUnk_08351648[throwObj->unk78].numTiles, &throwObj->base.sprite);
        Macro_081050E8(&throwObj->base, &throwObj->base.sprite, gUnk_08351648[throwObj->unk78].unk8, 0, !throwObj->base.sprite.palId);
    }
    if (!ObjectPreUpdate(&throwObj->base)) {
        throwObj->base.x = kirby->base.x;
        throwObj->base.y = kirby->base.y;
        if (kirby->base.flags & 1)
            throwObj->base.flags |= 1;
        else
            throwObj->base.flags &= ~1;
        switch (kirby->animationIndex) {
        case 0x1E:
            break;
        case 0x73:
        case 0x74:
        case 0x75:
            throwObj->base.counter = 0;
            sub_0807AEF4();
            gCurTask->main = sub_0807AEF4;
            return;
        case 0x6F:
            if (kirby->base.header.unk1 == 1 && kirby->base.unk62 & 4) {
                struct EffectObject *effect = CreateEffectObject(&kirby->base, 0, 0x293, 1);

                effect->unk3C = -0x240;
                effect->unk3E = 0x40;
                effect->unk4 = 0x18;
                effect->unk8 = 0x20;
                if (kirby->base.flags & 1) {
                    effect->unk3C = -effect->unk3C;
                    effect->unk4 = -effect->unk4;
                }
            }
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CB0[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CB0[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CB0[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CB0[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            break;
        case 0x70:
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CC8[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CC8[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CC8[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CC8[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            throwObj->base.sprite.unk8 |= 0x800;
            break;
        case 0x72:
            throwObj->base.sprite.unk8 |= 0x800;
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CDC[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CDC[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CDC[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CDC[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            break;
        case 0x71:
            throwObj->base.sprite.unk8 &= ~0x800;
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CD2[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CD2[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CD2[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CD2[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            break;
        default:
            CreateEffectObject(&throwObj->base, 0, 0x292, 0);
            throwObj->base.flags |= 0x1000;
            break;
        }
        ++throwObj->base.counter;
        if ((kirby->animationIndex == 0x70 || kirby->animationIndex == 0x71 || kirby->animationIndex == 0x72)
            && !(throwObj->base.counter & 7) && kirby->base.unk62 & 4) {
            struct EffectObject *effect = CreateEffectObject(&kirby->base, 0, 0x293, 2);

            effect->unk3C = -0x300;
            effect->unk3E = 0x200;
            effect->unk4 = 0x60;
            effect->unk8 = -0x40;
            effect->y += 0x400;
            if (kirby->base.flags & 1) {
                effect->unk3C = -effect->unk3C;
                effect->unk4 = -effect->unk4;
                effect->x += 0x800;
            } else {
                effect->x -= 0x800;
            }
        }
        sub_0806F8BC(&throwObj->base);
    }
}

void sub_0807AEF4(void) {
    struct ThrowAbilityObject *tmp = TaskGetStructPtr(gCurTask), *throwObj = tmp;
    struct Kirby *kirby = throwObj->base.parent;
    struct Sprite sprite;

    if (throwObj->unk78 != 0xFF) {
        Macro_08107BA8_4(&throwObj->base, &throwObj->base.sprite, &sprite, gUnk_08351648[throwObj->unk78].numTiles, &throwObj->base.sprite);
        Macro_081050E8(&throwObj->base, &throwObj->base.sprite, gUnk_08351648[throwObj->unk78].unk8, 0, !throwObj->base.sprite.palId);
    }
    if (!ObjectPreUpdate(&throwObj->base)) {
        if (throwObj->base.flags & 2)
            throwObj->base.flags |= 4;
        throwObj->base.x = kirby->base.x;
        throwObj->base.y = kirby->base.y;
        if (kirby->base.flags & 1)
            throwObj->base.flags |= 1;
        else
            throwObj->base.flags &= ~1;
        switch (kirby->animationIndex) {
        case 0x73:
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CE6[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CE6[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CE6[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CE6[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.header.unk1 == 3)
                sub_0807B200(throwObj, kirby->animationIndex);
            break;
        case 0x74:
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CEE[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CEE[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CEE[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CEE[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.header.unk1 == 3)
                sub_0807B200(throwObj, kirby->animationIndex);
            break;
        case 0x75:
            if (throwObj->base.flags & 1) {
                throwObj->base.x -= gUnk_08350CF6[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CF6[kirby->base.header.unk1*2 + 1] * 0x100;
            } else {
                throwObj->base.x += gUnk_08350CF6[kirby->base.header.unk1*2] * 0x100;
                throwObj->base.y += gUnk_08350CF6[kirby->base.header.unk1*2 + 1] * 0x100;
            }
            if (kirby->base.header.unk1 == 3)
                sub_0807B200(throwObj, kirby->animationIndex);
            break;
        default:
            CreateEffectObject(&throwObj->base, 0, 0x292, 0);
            throwObj->base.flags |= 0x1000;
            break;
        }
        if (kirby->base.header.unk1 == 2)
            sub_0807BAE0(throwObj);
        if (!(throwObj->base.flags & 0x800)) {
            throwObj->base.unk48 = throwObj->base.x;
            throwObj->base.unk4C = throwObj->base.y;
            throwObj->base.x += throwObj->base.xspeed;
            throwObj->base.y -= throwObj->base.yspeed;
        }
        sub_0806F8BC(&throwObj->base);
    }
}

void sub_0807B200(struct ThrowAbilityObject *throwObj, u16 a2) {
    throwObj->base.flags &= ~0x100;
    throwObj->base.flags &= ~0x2000000;
    throwObj->base.flags |= 0x40;
    throwObj->base.counter = 0;
    sub_0809D8C8(&throwObj->base);
    switch (a2) {
    case 0x73:
        throwObj->base.xspeed = 0x394;
        throwObj->base.yspeed = 0x1CA;
        break;
    case 0x74:
        throwObj->base.xspeed = 0x400;
        throwObj->base.yspeed = 0;
        break;
    case 0x75:
        throwObj->base.xspeed = 0x394;
        throwObj->base.yspeed = -0x1CA;
        break;
    }
    if (throwObj->base.flags & 1)
        throwObj->base.xspeed = -throwObj->base.xspeed;
    gCurTask->main = sub_0807B2A8;
}

void sub_0807B2A8(void) {
    struct ThrowAbilityObject *tmp = TaskGetStructPtr(gCurTask), *throwObj = tmp;
    struct Sprite sprite;
    s16 yspeed;
    s8 objBase54, objBase55;

    if (throwObj->unk78 != 0xFF) {
        Macro_08107BA8_4(&throwObj->base, &throwObj->base.sprite, &sprite, gUnk_08351648[throwObj->unk78].numTiles, &throwObj->base.sprite);
        Macro_081050E8(&throwObj->base, &throwObj->base.sprite, gUnk_08351648[throwObj->unk78].unk8, 0, !throwObj->base.sprite.palId);
    }
    if (!ObjectPreUpdate(&throwObj->base)) {
        if (throwObj->base.flags & 2)
            throwObj->base.flags |= 4;
        if (throwObj->base.unk58 & 2) {
            if (!(throwObj->base.unkC & 1)) {
                CreateEffectObject(&throwObj->base, 0, 0x296, 0);
                throwObj->base.unkC |= 1;
            }
        } else {
            if (throwObj->base.unkC & 1) {
                CreateEffectObject(&throwObj->base, 0, 0x296, 0);
                throwObj->base.unkC &= ~1;
            }
        }
        throwObj->base.counter &= 0xF;
        objBase54 = throwObj->base.objBase54 = gUnk_08350CFE[2*throwObj->base.counter];
        objBase55 = throwObj->base.objBase55 = gUnk_08350CFE[2*throwObj->base.counter + 1];
        ++throwObj->base.counter;
        if (!(throwObj->base.counter & 3)) {
            if (throwObj->base.counter & 4) {
                throwObj->base.sprite.unk8 ^= 0x800;
                sub_080995AC(throwObj);
            } else {
                throwObj->base.flags ^= 1;
                sub_08099828(throwObj);
            }
        }
        if (!(throwObj->base.flags & 0x800)) {
            throwObj->base.unk48 = throwObj->base.x;
            throwObj->base.unk4C = throwObj->base.y;
            throwObj->base.x += throwObj->base.xspeed;
            throwObj->base.y -= throwObj->base.yspeed;
        }
        yspeed = throwObj->base.yspeed;
        sub_0809D8C8(&throwObj->base);
        throwObj->base.yspeed = yspeed;
        sub_0806F8BC(&throwObj->base);
        throwObj->base.objBase54 = objBase54;
        throwObj->base.objBase55 = objBase55;
        if (throwObj->base.yspeed < 0)
            throwObj->base.unk62 &= ~8;
        else if (throwObj->base.yspeed > 0)
            throwObj->base.unk62 &= ~4;
        else if (throwObj->base.unk4C == throwObj->base.y)
            throwObj->base.unk62 &= ~0xC;
        if (throwObj->base.unk62) {
            RequestScreenShake(2, &throwObj->base);
            sub_0807B5CC(throwObj);
        }
    }
}

void sub_0807B5CC(struct ThrowAbilityObject *throwObj) {
    throwObj->base.flags |= 0x300;
    throwObj->base.counter = 0;
    if (throwObj->base.unk62 & 4) {
        throwObj->base.xspeed >>= 1;
        throwObj->base.yspeed = 0x1CA;
    } else if (throwObj->base.unk62 & 8) {
        throwObj->base.xspeed >>= 1;
        throwObj->base.yspeed = -0x1CA;
    } else {
        throwObj->base.xspeed = -(throwObj->base.xspeed >> 1);
        throwObj->base.yspeed = 0x200;
    }
    gCurTask->main = sub_0807B6D4;
    PlaySfx(&throwObj->base, SE_ABILITY_THROW_COLLISION);
}

void sub_0807B6D4(void) {
    struct ThrowAbilityObject *tmp = TaskGetStructPtr(gCurTask), *throwObj = tmp;
    struct Sprite sprite;

    if (throwObj->unk78 != 0xFF) {
        Macro_08107BA8_4(&throwObj->base, &throwObj->base.sprite, &sprite, gUnk_08351648[throwObj->unk78].numTiles, &throwObj->base.sprite);
        Macro_081050E8(&throwObj->base, &throwObj->base.sprite, gUnk_08351648[throwObj->unk78].unk8, 0, !throwObj->base.sprite.palId);
    }
    if (!ObjectPreUpdate(&throwObj->base)) {
        if (++throwObj->base.counter > 0xC) {
            switch (RandLessThan3()) {
            case 1:
                PlaySfx(&throwObj->base, SE_OBJECT_ENEMY_DESPAWN_1);
                break;
            case 2:
                PlaySfx(&throwObj->base, SE_OBJECT_ENEMY_DESPAWN_2);
                break;
            default:
                PlaySfx(&throwObj->base, SE_OBJECT_ENEMY_DESPAWN_3);
                break;
            }
            CreateEffectObject(&throwObj->base, 0, 0x292, 0);
            throwObj->base.flags |= 0x1000;
        }
        throwObj->base.yspeed -= 0x40;
        if (throwObj->base.yspeed < -0x200)
            throwObj->base.yspeed = -0x200;
        if (!(throwObj->base.flags & 0x800)) {
            throwObj->base.unk48 = throwObj->base.x;
            throwObj->base.unk4C = throwObj->base.y;
            throwObj->base.x += throwObj->base.xspeed;
            throwObj->base.y -= throwObj->base.yspeed;
        }
        sub_0806F8BC(&throwObj->base);
    }
}

void sub_0807BAE0(struct ThrowAbilityObject *throwObj) {
    struct Task *t = TaskCreate(sub_0807BBDC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = throwObj->base.x;
    objBase->y = throwObj->base.y;
    objBase->parent = throwObj;
    objBase->counter = 0;
    objBase->roomId = throwObj->base.roomId;
    objBase->unk56 = throwObj->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x80000500;
    objBase->unk68 |= 0x20001003;
    if (throwObj->base.unk3C != -3)
        ObjectSetBounds(objBase, -0x14, -0x14, 0x14, 0x14);
    else
        ObjectSetBounds(objBase, -0xA, -0xA, 0xA, 0xA);
    if (throwObj->base.flags & 1)
        objBase->flags |= 1;
}

void sub_0807BBDC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct ThrowAbilityObject *throwObj;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        throwObj = objBase->parent;
        if (throwObj->base.flags & 0x1000 || throwObj->base.flags & 0x200)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            objBase->x = throwObj->base.x;
            objBase->y = throwObj->base.y;
            SetPointerSomething(objBase);
        }
    }
}

void sub_0807BCE0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084B94;
    var->unk7C = sub_08084BD8;
    var->unk80 = sub_0807C1A0;
    var->unk84 = sub_08084E88;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 2;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20000103;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x800;
        var->base.flags |= 1;
        var->base.x += 0x200;
    } else {
        var->base.xspeed = 0x800;
        var->base.x -= 0x200;
    }
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    ObjectSetBounds(&var->base, -1, -1, 1, 1);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0xED, 0, 0xD);
    var->base.sprite.palId = kirby->base.unk56;
    PlaySfx(&kirby->base, SE_LASER_ATTACK);
}

void sub_0807BF2C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084B94;
    var->unk7C = sub_08084BD8;
    var->unk80 = sub_0807C1A0;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000000;
    var->base.unk68 |= 0x20000103;
    var->base.flags |= 0x4000;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x800;
        var->base.flags |= 1;
        var->base.x -= 0x400;
    } else {
        var->base.xspeed = 0x800;
        var->base.x += 0x400;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    ObjectSetBounds(&var->base, -1, -1, 1, 1);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x199, 0, 0x17);
    PlaySfx(&kirby->base, SE_ABILITY_UFO_SMALL_LASER_ATTACK);
    if (var->base.x <= gCurLevelInfo[var->base.unk56].levelMaxPosition.x
        && var->base.x >= gCurLevelInfo[var->base.unk56].levelMinPosition.x
        && var->base.y <= gCurLevelInfo[var->base.unk56].levelMaxPosition.y
        && var->base.y >= gCurLevelInfo[var->base.unk56].levelMinPosition.y)
        sub_0806FC70(&var->base);
}

static inline struct EffectObject *sub_0808AE30_inline(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    CreateEffectObject(objBase, a2, a3, a4);
}

bool8 sub_0807C1A0(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (!(a1->base.flags & 0x800)) {
        switch (gCollisionAttributes[a1->base.unk57] & 0xF0000000) {
        case 0x10000000:
        case 0x20000000:
        case 0x30000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed > 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = 0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed < 0) {
                    a1->base.xspeed = -0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags |= 1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0x40000000:
        case 0x50000000:
        case 0x60000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed < 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = 0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed < 0) {
                    a1->base.xspeed = 0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0x70000000:
        case 0x80000000:
        case 0x90000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed < 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = -0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed > 0) {
                    a1->base.xspeed = 0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            }
            break;
        case 0xA0000000:
        case 0xB0000000:
        case 0xC0000000:
            if (a1->base.xspeed) {
                if (a1->base.xspeed > 0) {
                    a1->base.xspeed = 0;
                    a1->base.yspeed = -0x800;
                    a1->base.flags &= ~1;
                } else {
                    return FALSE;
                }
            } else {
                if (a1->base.yspeed > 0) {
                    a1->base.xspeed = -0x800;
                    a1->base.yspeed = 0;
                    a1->base.flags |= 1;
                } else {
                    return FALSE;
                }
            }
            break;
        default:
            a1->base.flags |= 0x40000;
            a1->base.flags |= 0x800;
            return FALSE;
        }
        a1->base.sprite.variant = 1;
        a1->base.flags |= 0x800;
        if (a1->base.sprite.animId == 0x199)
            PlaySfx(&kirby->base, SE_ABILITY_UFO_LASER_REDIRECT);
        else
            PlaySfx(&kirby->base, SE_LASER_REDIRECT);
        if (++a1->unk88 > 3) {
            sub_0808AE30_inline(&a1->base, 0, 0x28C, 2);
            a1->base.flags |= 0x1000;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0807C48C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = NULL;
    var->unk7C = sub_08084BFC;
    var->unk80 = sub_08084C20;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 0xA;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20000103;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0xA00;
    } else {
        var->base.xspeed = 0x600;
        var->base.x += 0xA00;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -0xC, -8, 0xC, 8);
    ObjectSetBounds(&var->base, -6, -4, 6, 4);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x19A, 0, 0xD);
    sub_08092944(&var->base, 0, 0x2AF, 1);
    PlaySfx(&kirby->base, SE_ABILITY_UFO_MEDIUM_LASER_ATTACK);
}

void sub_0807C6C0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = NULL;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084EDC;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 0x12;
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x100;
    var->base.flags |= 0x4000;
    var->base.unk68 |= 0x20001103;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x600;
        var->base.flags |= 1;
        var->base.x -= 0xA00;
    } else {
        var->base.xspeed = 0x600;
        var->base.x += 0xA00;
    }
    var->base.y += 0x200;
    sub_0803E2B0(&var->base, -0x10, -0xE, 0xA, 0xE);
    ObjectSetBounds(&var->base, -6, -4, 6, 4);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x198, 0, 0xD);
    sub_08092944(&var->base, 0, 0x2AF, 0);
    PlaySfx(&kirby->base, SE_ABILITY_UFO_LARGE_LASER_ATTACK);
}

void sub_0807C8F0(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;
    u32 helper = kirby->animationIndex;

    if ((kirby->animationIndex == 0x18 || kirby->animationIndex == 0x19 || kirby->animationIndex == 0x1A)
        && kirby->ability == KIRBY_ABILITY_UFO) {
        bool32 b = FALSE;

        ++helper; --helper;
        if ((u16)helper == 0x5A) {
            a1->base.flags |= 0x1400;
            b = TRUE;
        }
        if (!b) return;
    }
    CreateEffectObject(&a1->base, 0, 0x28E, 0);
    a1->base.roomId = 0xFFFF;
}

void sub_0807C954(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CB4C;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.flags |= 0xA0000100;
    var->base.unk68 |= 0x20000403;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    sub_0803E2B0(&var->base, -6, -6, 6, 6);
    ObjectSetBounds(&var->base, -2, -2, 2, 2);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x195, 0, 0xA);
    PlaySfx(&kirby->base, SE_ABILITY_UFO_BEAM_ATTACK);
}

bool8 sub_0807CB4C(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        a1->base.flags &= ~0x40000;
        if (a1->base.counter > 7) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D1E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D1E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D1E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D1E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xA00;
        }
        a1->base.y = kirby->base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CC14(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CD3C;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x196, 0, 0xA);
}

bool8 sub_0807CD3C(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        if (a1->base.counter > 7) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D3E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D3E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D3E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D3E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xA00;
        }
        a1->base.y = kirby->base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CDFC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807CF24;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_0807C8F0;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    var->base.flags &= ~0x2000;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x197, 0, 0xA);
}

bool8 sub_0807CF24(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D5E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D5E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xA00;
        } else {
            a1->base.xspeed = gUnk_08350D5E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D5E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xA00;
        }
        a1->base.y = kirby->base.y + 0x400;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807CFE4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D208;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.unk64 = 0x1C0;
    var->base.unk66 = 0;
    var->base.unk63 = 3;
    var->base.flags |= 0xA0000100;
    var->base.unk68 |= 0x20000403;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x200;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    sub_0803E2B0(&var->base, -6, -6, 6, 6);
    ObjectSetBounds(&var->base, -2, -2, 2, 2);
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x103, 0, 0xA);
    PlaySfx(&kirby->base, SE_ABILITY_BEAM_ATTACK);
}

bool8 sub_0807D208(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        a1->base.flags &= ~0x40000;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D7E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D7E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350D7E[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D7E[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xD00;
        }
        a1->base.y = kirby->base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D2D0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D3F0;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x102, 0, 0xA);
}

bool8 sub_0807D3F0(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350D96[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D96[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350D96[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350D96[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xD00;
        }
        a1->base.y = kirby->base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D4B0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *var = TaskGetStructPtr(t);

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807D5D0;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08084F30;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0x300;
    var->base.flags |= 2;
    var->base.flags |= 0x4000;
    var->base.header.unk1 = 5;
    if (kirby->base.flags & 1)
        var->base.flags |= 1;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x102, 1, 0xA);
}

bool8 sub_0807D5D0(struct Unk_080C4EDC *a1) {
    if (a1->base.header.unk1 == 5) {
        struct Kirby *kirby = a1->base.parent;

        a1->base.header.unk1 = 0;
        a1->base.header.unk2 = 0;
        if (a1->base.counter > 5) {
            a1->base.flags |= 0x600;
            a1->base.flags |= 0x1000;
            return TRUE;
        }
        a1->base.flags |= 4;
        if (a1->base.flags & 1) {
            a1->base.xspeed = -gUnk_08350DAE[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350DAE[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x - 0xD00;
        } else {
            a1->base.xspeed = gUnk_08350DAE[2 * a1->base.counter];
            a1->base.yspeed = gUnk_08350DAE[2 * a1->base.counter + 1];
            a1->base.x = kirby->base.x + 0xD00;
        }
        a1->base.y = kirby->base.y + 0x200;
        ++a1->base.counter;
    }
    return FALSE;
}

void sub_0807D690(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080737D8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084FA8);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    struct Object14 *obj14;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x80;
    objBase->unk66 = 0;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0100100;
    objBase->unk68 |= 0x20000203;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x80000000;
    objBase->unk5C |= 0x80000;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x200;
    sub_0803E2B0(objBase, -0xA, -0xC, 0xA, 0x10);
    ObjectSetBounds(objBase, -3, -3, 3, 3);
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    objBase->xspeed = 0x108;
    objBase->yspeed = 0;
    objBase->unk48 = 0x38 - (Rand16() & 0x1F);
    objBase->unk4C = ~Rand16() & 0x1F;
    if (objBase->flags & 1) {
        objBase->x -= 0x1800;
        objBase->xspeed = -objBase->xspeed;
        objBase->unk48 = -objBase->unk48;
    } else {
        objBase->x += 0x1800;
    }
    obj14 = sub_080706A0(&kirby->base, (kirby->base.unk56 << 0xB) + 0x6010600, 0xD8, 0, sub_080730E0, sub_08073068);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x2C0;
    obj14 = sub_080706A0(&kirby->base, (kirby->base.unk56 << 0xB) + 0x6010400, 0xD8, 2, sub_0807D978, sub_08073068);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base, (kirby->base.unk56 << 0xB) + 0x6010400, 0xD8, 3, sub_080732E4, sub_08073068);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    obj14 = sub_080706A0(&kirby->base, (kirby->base.unk56 << 0xB) + 0x6010400, 0xD8, 4, sub_080733D8, sub_08073068);
    obj14->effect.sprite.palId = kirby->base.unk56 + 4;
    obj14->effect.sprite.unk14 = 0x280;
    sub_08073A74(kirby);
    obj14 = sub_080706A0(&kirby->base, 0, 0x293, 2, sub_08073C98, NULL);
    obj14->effect.sprite.palId = 0xF;
    obj14->effect.sprite.unk14 = 0x280;
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0xD7, 0, 0xB);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

bool8 sub_0807D978(struct Object14 *obj14) {
    struct Kirby *kirby = obj14->effect.parent;
    s16 v9;
    s8 dx, dy;

    if (kirby->animationIndex != 0x34 && (obj14->effect.flags & 2 || !(obj14->effect.header.unk1 & 0xF))) {
        return TRUE;
    }
    if (Macro_08091C7C(&obj14->effect)) return TRUE;
    if (obj14->effect.flags & 2 || !(obj14->effect.header.unk1 & 0xF)) {
        obj14->effect.flags |= 4;
        obj14->effect.flags &= ~1;
        obj14->effect.flags |= kirby->base.flags & 1;
        obj14->effect.x = kirby->base.x;
        obj14->effect.y = kirby->base.y;
        switch ((obj14->effect.header.unk1 >> 4) & 3) {
        case 0:
        default:
            v9 = 8;
            break;
        case 1:
            v9 = 4;
            break;
        case 2:
            v9 = -4;
            break;
        case 3:
            v9 = -8;
            break;
        }
        switch (gUnk_08350DF0[obj14->effect.header.unk1 >> 4]) {
        case 0:
        default:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 7) - 0xC;
            break;
        case 1:
            dx = (Rand16() & 0x1F) + 0xC;
            dy = (Rand16() & 7) - 4;
            break;
        case 2:
            dx = (Rand16() & 0x1F) + 0xC;
            dy = (Rand16() & 7) + 4;
            break;
        case 3:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 0xF) + 4;
            break;
        case 4:
            dx = (Rand16() & 0x1F) + 0x10;
            dy = (Rand16() & 0xF) - 0xC;
            break;
        }
        obj14->effect.unk3C = 0;
        obj14->effect.unk3E = 0;
        obj14->effect.unk4 = 0x20;
        obj14->effect.unk8 = v9;
        if (obj14->effect.flags & 1) {
            // duplicate but required for matching
            obj14->effect.unk3C = 0;
            obj14->effect.unk3E = 0;
            obj14->effect.x -= dx * 0x100;
            obj14->effect.y -= dy * 0x100;
            obj14->effect.unk4 = -obj14->effect.unk4;
        } else {
            obj14->effect.x += dx * 0x100;
            obj14->effect.y -= dy * 0x100;
        }
    }
    return FALSE;
}

void sub_0807DBCC(struct Object *obj) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;
    u32 ff = 0xFF;
#ifdef NONMATCHING
    u32 r0;
#else
    register u32 r0 asm("r0");
#endif

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = obj->base.x;
    var->base.y = obj->base.y;
    var->base.parent = obj;
    var->base.counter = 0;
    var->base.roomId = obj->base.roomId;
    var->base.unk56 = obj->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_0807DE28;
    var->unk7C = sub_0807E098;
    var->unk80 = NULL;
    var->unk84 = NULL;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0;
    var->base.x = obj->base.x;
    var->base.y = obj->base.y;
    var->base.unk63 = (gUnk_08351648[obj->type].unk4 >> 1) + 9;
    var->base.unk64 = var->base.unk63;
    var->base.unk66 = var->base.unk63;
    var->base.flags |= 0x300100;
    var->base.unk5C = 0x80220;
    var->base.flags |= 0x200;
    var->base.unk68 = 0x10880007;
    if (obj->base.flags & 0x4000
        || gUnk_08351648[obj->type].numTiles - 9 < 0x10
        || obj->type == OBJ_SWORD_KNIGHT || obj->type == OBJ_PRANK || obj->type == OBJ_EMPTY_31) {
        var->base.flags |= 0x4000;
        ObjectBaseInitSprite(&var->base, &var->base.sprite, 9, 0x28B, 1, 0x340);
    } else {
        var->base.sprite.tilesVram = obj->base.sprite.tilesVram;
        var->base.sprite.unk14 = 0x340;
        var->base.sprite.animId = 0x28B;
        var->base.sprite.variant = 2;
        var->base.sprite.unk16 = 0;
        r0 = var->base.sprite.unk1B;
        var->base.sprite.unk1B |= ff;
        var->base.sprite.unk1C = 0x10;
        var->base.sprite.palId = 0xF;
        var->base.sprite.x = 0;
        var->base.sprite.y = 0;
        var->base.sprite.unk8 = 0x42000;
        var->base.sprite.unk20[0].unk0 = -1;
        obj->base.sprite.tilesVram = 0;
    }
    if (gUnk_08351648[obj->type].numTiles < 9) {
        sub_0803E2B0(&var->base, -5, -5, 5, 5);
        var->base.unkC |= 1;
    } else if (gUnk_08351648[obj->type].numTiles < 0x19
        || obj->base.flags & 0x4000
        || obj->type == OBJ_SWORD_KNIGHT || obj->type == OBJ_PRANK || obj->type == OBJ_EMPTY_31) {
        sub_0803E2B0(&var->base, -0xB, -0xB, 0xB, 0xB);
    } else {
        var->base.sprite.variant = 0;
        sub_0803E2B0(&var->base, -0x10, -0x10, 0x10, 0x10);
    }
}

bool8 sub_0807DE28(struct Unk_080C4EDC *a1) {
    struct Sprite sprite;

    if (!a1->unk88) {
        struct Object *obj = a1->base.parent;

        a1->base.x = obj->base.x;
        a1->base.y = obj->base.y;
        if (obj->base.flags & 0x400)
            a1->base.flags &= ~0x400;
        else
            a1->base.flags |= 0x400;
        if (obj->base.flags & 0x1000) {
            a1->unk88 = 1;
            a1->base.parent = NULL;
            a1->base.flags &= ~0x400;
            a1->base.flags |= 0x50000000;
            a1->base.flags &= ~0x200;
        }
    }
    if (a1->base.flags & 0x4000) {
        if (gKirbys[gLocalPlayerId].base.roomId == a1->base.roomId) {
            if (!a1->base.sprite.tilesVram)
                Macro_08107BA8_1(&a1->base, &a1->base.sprite, &sprite, 9, &a1->base.sprite);
        } else {
            a1->base.sprite.unk8 |= 0x80000;
        }
    } else {
        if (a1->base.unkC & 1) {
            if (gKirbys[gLocalPlayerId].base.roomId == a1->base.roomId) {
                if (!a1->base.sprite.tilesVram)
                    Macro_08107BA8_2(&a1->base, &a1->base.sprite, &sprite, 4, &a1->base.sprite);
            } else {
                if (a1->base.sprite.tilesVram) {
                    VramFree(a1->base.sprite.tilesVram);
                    a1->base.sprite.tilesVram = 0;
                }
                a1->base.sprite.unk8 |= 0x80000;
            }
        } else {
            if (gKirbys[gLocalPlayerId].base.roomId == a1->base.roomId) {
                if (!a1->base.sprite.tilesVram)
                    Macro_08107BA8_2(&a1->base, &a1->base.sprite, &sprite, 0x19, &a1->base.sprite);
            } else {
                if (a1->base.sprite.tilesVram) {
                    VramFree(a1->base.sprite.tilesVram);
                    a1->base.sprite.tilesVram = 0;
                }
                a1->base.sprite.unk8 |= 0x80000;
            }
        }
    }
    if (a1->base.flags & 0x10000000 && ++a1->base.counter > 0x78) {
        PlaySfx(&a1->base, SE_OBJECT_ICE_EXPLODE);
        CreateEffectObject(&a1->base, 0, 0x292, 0);
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        return FALSE;
    }
}

bool8 sub_0807E098(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.unk6C; // TODO: may be a union?

    a1->base.xspeed = 0x400;
    if (kirby->base.x > a1->base.x)
        a1->base.xspeed = -a1->base.xspeed;
    a1->base.flags |= 0x20000000;
    a1->base.flags &= ~0x50040000;
    a1->base.unk68 = 0x20000043;
    if (!kirby->base.header.kind) {
        sub_080853C8(kirby, 4);
        a1->base.parent = kirby;
    } else if (kirby->base.unk68 & 0x10000000 && kirby->base.parent) {
        sub_080853C8(kirby->base.parent, 4);
        a1->base.parent = kirby->base.parent;
    }
    PlaySfx(&kirby->base, SE_ABILITY_ICE_BLOCK_PUSH);
    a1->unk7C = sub_08084C34;
    return FALSE;
}

void sub_0807E190(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E2FC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1C0;
    objBase->unk66 = 0;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30400043;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 0, 0, 0x10, 0x10);
    ObjectSetBounds(objBase, 0, 0, 0x10, 0x10);
    SetPointerSomething(objBase);
}

void sub_0807E2FC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex != 0x68) {
            objBase->flags |= 0x1000;
        } else {
            if (objBase->flags & 0x40000) {
                if (objBase->unk6C && ((struct Object *)objBase->unk6C)->base.header.kind == 1
                    && ((struct Object *)objBase->unk6C)->type == OBJ_GORDO)
                    objBase->flags &= ~0x40000;
                if (objBase->flags & 0x40000) {
                    objBase->flags |= 0x1000;
                    sub_080666C0(kirby);
                    return;
                }
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
            if (kirby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
        }
    }
}

void sub_0807E430(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E518, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20008003;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
}

void sub_0807E518(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask), *objBase2 = objBase;
    struct Kirby *kirby = objBase->parent;

    if (!ObjectPreUpdate(objBase)) {
        if (kirby->ability != KIRBY_ABILITY_COOK || objBase->roomId != kirby->base.roomId || sub_0805BEC4(kirby))
            objBase2->flags |= 0x1000;
        else if (kirby->animationIndex == 0x36 || !(kirby->base.flags & 0x200))
            objBase->flags |= 0x1000;
        else if (!objBase->counter) {
            SetPointerSomething(objBase2);
            objBase2->x = gCurLevelInfo[kirby->base.unk56].viewportPosition.x + 0x7800;
            objBase2->y = gCurLevelInfo[kirby->base.unk56].viewportPosition.y + 0x5000;
            objBase2->counter = 1;
        } else {
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
        }
    }
}

void sub_0807E66C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x180;
    objBase->unk66 = 0;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->unk68 |= 0x1000000;
    objBase->flags |= kirby->base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1FA, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_COMBO_1);
#else
    if (gKirbys[gLocalPlayerId].base.roomId == kirby->base.roomId) {
        if (((kirby->base.header.kind != 0) || (kirby->base.unk56 == gLocalPlayerId))
            && (gUnk_08D60FA4[gSongTable[201].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[201].ms]->unk9 <= gSongTable[201].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[201].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(SE_ABILITY_FIGHTER_COMBO_1);
    }
#endif
}

void sub_0807E820(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || (objBase->flags & 2)
            || (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x35 && kirby->animationIndex != 0x36))
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (objBase->counter) {
                if (!(kirby->base.flags & 0x800000)
                    && ++objBase->counter & 1)
                    objBase->flags &= ~0x40000;
            }
            if (objBase->sprite.animId == 0x1FA && !objBase->sprite.variant
                && !(kirby->base.flags & 0x800000)
                && (objBase->header.unk1 == 6 || objBase->header.unk1 == 0xA)) {
                objBase->flags &= ~0x40000;
                PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_COMBO_1);
            }
            objBase->flags &= ~0x200;
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                ObjectSetBounds(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_0807EA78(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x240;
    objBase->unk66 = 0x200;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->unk68 |= 0x1000000;
    objBase->flags |= kirby->base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1FA, 1, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_0807EBAC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807E820, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084FEC);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x1E0;
    objBase->unk66 = -0x240;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.flags & 1;
    objBase->counter = 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1FA, 2, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_0807ECE0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = sub_08084C8C;
    var->unk80 = sub_08084CB0;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x200;
    var->base.unk66 = 0;
    var->base.unk63 = 2;
    var->base.unk68 = 0x30000043;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x320;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x320;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -6, -3, 6, 3);
    ObjectSetBounds(&var->base, -3, -6, 3, 6);
    var->base.flags |= 0x4000;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 3, 0xA);
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_SMALL_WAVE);
}

void sub_0807EF0C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = NULL;
    var->unk80 = sub_08084CC4;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000000;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x200;
    var->base.unk66 = 0;
    var->base.unk63 = 4;
    var->base.unk68 = 0x30000043;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x3C0;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x3C0;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -8, 8, 8);
    ObjectSetBounds(&var->base, -6, -6, 6, 6);
    var->base.flags |= 0x4000;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 4, 0xA);
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_LARGE_WAVE);
}

void sub_0807F128(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    ClearObjectBase(&var->base);
    var->base.header.kind = 2;
    var->base.x = kirby->base.x;
    var->base.y = kirby->base.y;
    var->base.parent = kirby;
    var->base.counter = 0;
    var->base.roomId = kirby->base.roomId;
    var->base.unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78 = sub_08084CF8;
    var->unk7C = NULL;
    var->unk80 = NULL;
    var->unk84 = sub_08085030;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->unk88 = 0; // redundant
    var->base.flags |= 0xA0000100;
    var->base.flags |= 0x4000;
    var->base.unk64 = 0x180;
    var->base.unk66 = 0;
    var->base.unk63 = 6;
    var->base.unk68 = 0x30000043;
    if (kirby->base.flags & 1) {
        var->base.xspeed = -0x420;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    } else {
        var->base.xspeed = 0x420;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, -0xC, -0xE, 0xA, 0xE);
    ObjectSetBounds(&var->base, -0xA, -0xA, 0xA, 0xA);
    var->base.flags |= 0x4000;
    ObjectBaseInitSprite(&var->base, &var->base.sprite, 0x6012000, 0x2B7, 5, 0xA);
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_1_HP_ATTACK);
}

void sub_0807F344(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807F46C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x380;
    objBase->unk66 = 0x480;
    objBase->unk63 = 0;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0xC0000000;
    objBase->flags |= kirby->base.flags & 1;
    sub_0803E2B0(objBase, 1, -5, 0x10, 0xE);
    ObjectSetBounds(objBase, 5, 5, 0x10, 0xE);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1FD, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_0807F46C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->animationIndex < 0x6B)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            objBase->flags |= 4;
            if (kirby->animationIndex > 0x6B) {
                if (objBase->header.unk1 == 1)
                    sub_08099AC4(objBase);
                if (objBase->flags & 0x400) {
                    sub_0803E2B0(objBase, 0, 0, 0, 0);
                    ObjectSetBounds(objBase, 0, 0, 0, 0);
                    objBase->unk63 = 2;
                    objBase->unk64 = 0x240;
                    objBase->unk66 = 0x300;
                    objBase->flags &= ~0x200;
                    objBase->flags &= ~0x400;
                    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_UPPERCUT);
                }
                if (kirby->animationIndex == 0x6D) {
                    objBase->sprite.variant = 1;
                    if (kirby->base.header.unk1 > 4) {
                        objBase->flags |= 0x1000;
                        return;
                    }
                } else {
                    kirby->base.flags |= 0x8000;
                    kirby->base.unk68 = 0x80;
                }
                if (!(kirby->base.flags & 0x800000) && ++objBase->counter & 1)
                    objBase->flags &= ~0x40000;
                if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                    objBase->sprite.unk20[0].unk0 = -1;
                sub_0806F8BC(objBase);
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    ObjectSetBounds(objBase, 0, 0, 0, 0);
                }
            } else {
                kirby->base.flags |= 0x8000;
                objBase->flags |= 0x400;
                sub_0806F8BC(objBase);
                objBase->sprite.unk20[0].unk0 = -1;
            }
        }
    }
}

void sub_0807F720(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807F840, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = -0x100;
    objBase->unk66 = 0x2C0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->flags |= 0x400;
    objBase->unk68 |= 0x30000043;
    objBase->flags |= kirby->base.flags & 1;
    if (kirby->base.flags & 0x20) {
        objBase->unk64 = 0x200;
        objBase->unk68 |= 0x80000000;
    }
    sub_0803E2B0(objBase, -0x13, -0xA, 0x13, 0xE);
    ObjectSetBounds(objBase, -0xC, -6, 0xC, 6);
}

void sub_0807F840(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->animationIndex < 0x6F)
            objBase->flags |= 0x1000;
        else {
            kirby->base.flags |= 0x8000;
            if (kirby->animationIndex == 0x70) {
                if (objBase->unk64 == 0x200) {
                    objBase->unk64 = 0x100 - (Rand16() & 0x1FF);
                }
                if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 2) {
                    objBase->flags &= ~0x40000;
                    objBase->counter = 0;
                }
            } else if (kirby->animationIndex == 0x71) {
                if (kirby->base.header.unk1 > 4)
                    kirby->base.flags &= ~0x8000;
                return;
            }
            SetPointerSomething(objBase);
        }
    }
}

void sub_0807F9EC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807FB80, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x200;
    objBase->unk63 = 3;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.flags & 1;
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1FF, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_RUN_ATTACK);
#else
    if (gKirbys[gLocalPlayerId].base.roomId == kirby->base.roomId) {
        if (((kirby->base.header.kind != 0) || (kirby->base.unk56 == gLocalPlayerId))
            && (gUnk_08D60FA4[gSongTable[213].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[213].ms]->unk9 <= gSongTable[213].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[213].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(SE_ABILITY_FIGHTER_RUN_ATTACK);
    }
#endif
}

void sub_0807FB80(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->animationIndex != 0x6E)
            objBase->flags |= 0x1000;
        else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                ObjectSetBounds(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_0807FCD4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0807FDC8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08085084);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x10400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30001043;
    objBase->unk68 &= ~7;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 2, -7, 0xE, 7);
    ObjectSetBounds(objBase, -0xD, -0xD, 0xD, 0xD);
}

void sub_0807FDC8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!ObjectPreUpdate(objBase)) {
        PlaySfxAlt(&kirby->base, SE_ABILITY_MISSILE_MOVEMENT);
        if ((kirby->animationIndex < 0x67 || kirby->animationIndex > 0x6E)
            && (kirby->animationIndex != 0x35 || kirby->base.flags & 0x200)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            sub_08067458(kirby);
            objBase->flags |= 0x1000;
            return;
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        switch (kirby->animationIndex) {
        case 0x67:
            sub_0803E2B0(objBase, 2, -7, 0xE, 7);
            break;
        case 0x6E:
            sub_0803E2B0(objBase, 0, 0, 0xC, 0xC);
            break;
        case 0x6D:
            sub_0803E2B0(objBase, -7, 2, 7, 0xE);
            break;
        case 0x6C:
            sub_0803E2B0(objBase, -0xC, 0, 0, 0xC);
            break;
        case 0x6B:
            sub_0803E2B0(objBase, -0xE, -7, -2, 7);
            break;
        case 0x6A:
            sub_0803E2B0(objBase, -0xC, -0xC, 0, 0);
            break;
        case 0x69:
            sub_0803E2B0(objBase, -7, -0xE, 7, -2);
            break;
        case 0x68:
            sub_0803E2B0(objBase, 0, -0xC, 0xC, 0);
            break;
        }
    }
}

void sub_08080004(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080130, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x220;
    objBase->unk66 = 0;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 &= ~0x10002000;
    objBase->unk68 |= 0x40;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 4;
    objBase->flags |= kirby->base.flags & 1;
    objBase->xspeed = 0x620;
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x9C, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08080130(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if ((kirby->ability != KIRBY_ABILITY_SWORD && kirby->ability != KIRBY_ABILITY_MASTER && kirby->ability != KIRBY_ABILITY_SMASH)
        || ++objBase->counter > 9)
        objBase->flags |= 0x1000;
    else if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        sub_0803D9A8(objBase);
    else {
        objBase->flags |= 4;
        if (objBase->counter == 8) {
            objBase->sprite.variant = 1;
            objBase->xspeed = 0x380;
            if (objBase->flags & 1)
                objBase->xspeed = -objBase->xspeed;
        }
        objBase->flags &= ~0x200;
        if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
            objBase->sprite.unk20[0].unk0 = -1;
        if (!(objBase->flags & 0x800)) {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
        if (objBase->sprite.unk20[0].unk0 != -1) {
            objBase->flags &= ~0x200;
            if (objBase->flags & 1)
                ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
            else
                ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
        } else {
            ObjectSetBounds(objBase, 0, 0, 0, 0);
        }
    }
}

void sub_080802CC(struct Kirby *kirby, u8 a2) {
    u16 animId = 0x283;
    bool8 v4 = FALSE;
    struct Task *t = TaskCreate(sub_0808049C, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x180;
    objBase->unk66 = 0;
    objBase->unk63 = 1;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30000043;
    objBase->unk68 |= 0x80000000;
    objBase->flags |= kirby->base.flags & 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    if (a2) {
        v4 = TRUE;
        objBase->counter = 1;
    }
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, animId, v4, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
#ifdef NONMATCHING
    PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_COMBO_1);
#else
    if (gKirbys[gLocalPlayerId].base.roomId == kirby->base.roomId) {
        if (((kirby->base.header.kind != 0) || (kirby->base.unk56 == gLocalPlayerId))
            && (gUnk_08D60FA4[gSongTable[201].ms]->unk4 & 0x80000000 || gUnk_08D60FA4[gSongTable[201].ms]->unk9 <= gSongTable[201].header->priority) // TODO: for some reason 0x80000000 is reused
            && (gSongTable[201].ms == 0 || !(gUnk_0203AD10 & 0x100)))
            m4aSongNumStart(SE_ABILITY_FIGHTER_COMBO_1);
    }
#endif
}

void sub_0808049C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (objBase->counter) {
            if (((kirby->base.header.unk1 == 6 && objBase->header.unk1)
                || (!kirby->base.header.unk1 && objBase->header.unk1 && objBase->sprite.unk1C))) {
                objBase->flags |= 0x1000;
                return;
            }
        } else {
            if (kirby->base.header.unk1 == 0x14
                || (!kirby->base.header.unk1 && objBase->header.unk1 && objBase->sprite.unk1C)) {
                objBase->flags |= 0x1000;
                return;
            }
        }
        if (kirby->base.flags & 0x2000000)
            objBase->sprite.unk1C = 0;
        else
            objBase->sprite.unk1C = 0x10;
        if (kirby->ability != KIRBY_ABILITY_SMASH || (kirby->animationIndex != 0x6F && kirby->animationIndex != 0x70)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else {
            if (!(kirby->base.flags & 0x800000)) {
                if (objBase->counter) {
                    if (objBase->header.unk1 == 2 || objBase->header.unk1 == 4) {
                        PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_COMBO_1);
                        objBase->flags &= ~0x40000;
                    }
                } else {
                    if (objBase->header.unk1 == 6 || objBase->header.unk1 == 0xB) {
                        PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_COMBO_1);
                        objBase->flags &= ~0x40000;
                    }
                }
            }
            objBase->flags &= ~0x200;
            if (!objBase->sprite.unk20[0].unk0 && !objBase->sprite.unk16)
                objBase->sprite.unk20[0].unk0 = -1;
            sub_0806F8BC(objBase);
            if (objBase->sprite.unk20[0].unk0 != -1) {
                objBase->flags &= ~0x200;
                if (objBase->flags & 1)
                    ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                else
                    ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
            } else {
                ObjectSetBounds(objBase, 0, 0, 0, 0);
            }
        }
    }
}

void sub_080806FC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080870, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30005003;
    objBase->unk68 |= 0x4000008;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    if (kirby->animationIndex == 0x71) {
        objBase->unk64 = 0x280;
        objBase->unk66 = 0x100;
        objBase->unk63 = 9;
        ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x1DC, 1, 0xC);
    } else {
        objBase->unk64 = 0x280;
        objBase->unk66 = 0x280;
        objBase->unk63 = 0xA;
        ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x287, 0, 0xC);
    }
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08080870(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2405;
        objBase->roomId = kirby->base.roomId;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SMASH || (kirby->animationIndex != 0x67 && kirby->animationIndex != 0x71)) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (!objBase->sprite.unk20[0].unk0) {
                    objBase->flags &= ~0x200;
                    if (!objBase->sprite.unk16) {
                        objBase->sprite.unk20[0].unk0 = -1;
                        objBase->flags |= 0x200;
                    }
                }
                Macro_080FC150(objBase, &objBase->sprite);
                if (gLocalPlayerId == kirby->base.unk56) {
                    objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                    objBase->sprite.x += gUnk_0203AD18[0];
                    objBase->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(objBase, &objBase->sprite);
                }
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    if (kirby->animationIndex == 0x71 && kirby->base.header.unk1 == 9
                        && !(kirby->base.flags & 0x800000)) {
                        objBase->flags &= ~0x40000;
                        PlaySfx(&kirby->base, SE_ABILITY_HAMMER_MIDAIR);
                    }
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    ObjectSetBounds(objBase, 0, 0, 0, 0);
                }
                SetPointerSomething(objBase);
            }
        }
    }
}

void sub_08080E9C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08080FBC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x80;
    objBase->unk66 = 0x280;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000100;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 |= 0x2000000;
    objBase->flags |= 0x200;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x285, 0, 0xC);
    objBase->sprite.palId = kirby->base.unk56 + 4;
    objBase->sprite.unk20[0].unk0 = -1;
}

void sub_08080FBC(void) {
    // declarations with initialization interfere with stack allocation; same for other similar callback functions
    struct ObjectBase *tmp, *objBase;
    struct Sprite *sprite;
    struct Kirby *kirby;

    tmp = TaskGetStructPtr(gCurTask);
    objBase = tmp;
    sprite = &objBase->sprite;
    kirby = objBase->parent;
    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags &= ~0x2401;
        objBase->flags |= kirby->base.flags & 0x2405;
        objBase->roomId = kirby->base.roomId;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 0x2000000) {
            objBase->sprite.unk1C = 0;
        } else {
            objBase->sprite.unk1C = 0x10; // dead code
            objBase->sprite.unk1C = kirby->base.sprite.unk1C;
        }
        if (kirby->ability != KIRBY_ABILITY_SMASH || kirby->animationIndex < 0x6A || kirby->animationIndex > 0x6E) {
            objBase->flags |= 0x1000;
        } else {
            if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
                u8 unk1C = objBase->sprite.unk1C;

                if (objBase->sprite.animId) {
                    objBase->sprite.unk1C = 0;
                    Macro_080FC150(objBase, &objBase->sprite);
                    objBase->sprite.unk1C = unk1C;
                    if (gLocalPlayerId == kirby->base.unk56) {
                        objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                        objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                    }
                    if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                        objBase->sprite.x += gUnk_0203AD18[0];
                        objBase->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(objBase, &objBase->sprite);
                    }
                }
            } else {
                if (sprite->variant != kirby->animationIndex - 0x6A)
                    sprite->variant = kirby->animationIndex - 0x6A;
                if (!objBase->sprite.unk20[0].unk0) {
                    objBase->flags &= ~0x200;
                    if (!objBase->sprite.unk16) {
                        if (!(kirby->base.flags & 2))
                            objBase->sprite.unk20[0].unk0 = -1;
                        objBase->flags |= 0x200;
                    }
                }
                Macro_080FC150(objBase, &objBase->sprite);
                if (gLocalPlayerId == kirby->base.unk56) {
                    objBase->sprite.x = (objBase->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    objBase->sprite.y = (objBase->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                    objBase->sprite.x += gUnk_0203AD18[0];
                    objBase->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(objBase, &objBase->sprite);
                }
                if (kirby->animationIndex == 0x6C && kirby->base.header.unk1 == 0xC) {
                    objBase->unk64 = 0x100;
                    objBase->unk66 = -0x380;
                    objBase->unk63 = 6;
                    objBase->unk68 &= ~0x80000000;
                    if (!(kirby->base.flags & 0x800000))
                        objBase->flags &= ~0x40000;
                }
                if (objBase->sprite.unk20[0].unk0 != -1) {
                    objBase->flags &= ~0x200;
                    if (objBase->flags & 1)
                        ObjectSetBounds(objBase, -objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk5, -objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk7);
                    else
                        ObjectSetBounds(objBase, objBase->sprite.unk20[0].unk4, objBase->sprite.unk20[0].unk5, objBase->sprite.unk20[0].unk6, objBase->sprite.unk20[0].unk7);
                } else {
                    ObjectSetBounds(objBase, 0, 0, 0, 0);
                }
                SetPointerSomething(objBase);
            }
        }
    }
}

void sub_080815B0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08081724, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0x100;
    objBase->unk63 = 2;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30000043;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x16, -0x16, 0x16, 0x16);
    ObjectSetBounds(objBase, -0x12, -0x12, 0x12, 0x12);
    SetPointerSomething(objBase);
}

void sub_08081724(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69) {
            kirby->base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
            return;
        }
        SetPointerSomething(objBase);
        if (kirby->animationIndex == 0x68) {
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 8) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        } else {
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 4) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
        }
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
    }
}

void sub_08081864(struct Kirby *kirby, s16 a2, u8 a3) {
    struct Task *t = TaskCreate(sub_08081EB0, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    s16 unk;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 3;
    if (a2 > 0x30) {
        objBase->unk63 = 5;
        objBase->unk64 = 0x200;
    }
    objBase->flags |= 0xA0000040;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x2003;
    objBase->flags |= kirby->base.flags & 1;
    if (objBase->flags & 1)
        objBase->x -= 0x600;
    else
        objBase->x += 0x600;
    if (a2 > 0x4F) a2 = 0x4F;
    unk = gUnk_08350C88[a2 >> 2];
    if (a3 == 0) {
        objBase->xspeed = unk * (gSineTable[0x1A0] >> 6) >> 8;
        objBase->yspeed = (unk - 0x120) * (gSineTable[0xA0] >> 6) >> 8;
    } else if (a3 != 2) {
        objBase->xspeed = unk * (gSineTable[0x11E] >> 6) >> 8;
        objBase->yspeed = unk * (gSineTable[0x1E] >> 6) >> 8;
    } else {
        objBase->xspeed = unk * (gSineTable[0x480] >> 6) >> 8;
        objBase->yspeed = unk * (gSineTable[0x380] >> 6) >> 8;
    }
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    sub_0803E2B0(objBase, -6, -3, 0, 3);
    ObjectSetBounds(objBase, -1, -1, 1, 1);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x21D, 0, 8);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08081ABC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object *obj = objBase->unk6C;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_CUPID || kirby->animationIndex == 0x5A) {
        CreateEffectObject(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (obj && obj->base.header.kind == 1 && (obj->base.flags & 0x1000 || obj->base.flags & 0x400))
        objBase->roomId = 0xFFFF;
    if (!ObjectPreUpdate(objBase)) {
        if (obj) {
            if (obj->base.header.kind == 1) {
                struct Object *r6 = obj;

                if (obj->type == OBJ_VERTICAL_SLIDING_DOOR) {
                    objBase->yspeed -= (obj->base.unk3B - objBase->unk4C) * 0x100;
                    if (objBase->yspeed > 0x2100) {
                        CreateEffectObject(objBase, 0, 0x28E, 0);
                        objBase->flags |= 0x1000;
                        return;
                    }
                    objBase->unk4C = obj->base.unk3B;
                }
                if (r6->type == OBJ_STAR_PLATFORM || r6->type == OBJ_DARK_MIND_FORM_2) {
                    CreateEffectObject(objBase, 0, 0x28E, 0);
                    objBase->flags |= 0x1000;
                    return;
                }
                objBase->x = obj->base.x - objBase->xspeed;
                objBase->y = obj->base.y - objBase->yspeed;
                if (r6->type != OBJ_KRACKO && objBase->unk48 != (obj->base.flags & 1)) {
                    objBase->xspeed = -objBase->xspeed;
                    objBase->flags ^= 1;
                    objBase->unk48 = obj->base.flags & 1;
                }
            }
        } else if (objBase->unk58 & 0x1000 || objBase->unk58 & 0x40) {
            u8 unk = 0;

            if ((objBase->x + objBase->xspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x >> 0xC
                && (objBase->x + objBase->xspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].levelMinPosition.x >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].levelMinPosition.y >> 0xC)
                unk = GetCollisionTile(objBase->unk56, (objBase->x + objBase->xspeed) >> 0xC, (objBase->y - objBase->yspeed) >> 0xC);
            objBase->unk57 = unk;
            objBase->unk58 = gCollisionAttributes[objBase->unk57];
            if (!(objBase->unk58 & 0x1000) && !(objBase->unk58 & 0x40)) {
                CreateEffectObject(objBase, 0, 0x28E, 0);
                objBase->flags |= 0x1000;
                return;
            }
        }
        if (objBase->counter > 180) {
            if (objBase->counter & 1)
                objBase->flags |= 0x400;
            else
                objBase->flags &= ~0x400;
            if (objBase->counter > 200) {
                CreateEffectObject(objBase, 0, 0x2B4, 0);
                objBase->flags |= 0x1000;
            }
        }
        if (objBase->counter < 8 && objBase->counter & 1) {
            if (objBase->sprite.variant > 0x12 && objBase->sprite.variant < 0x18)
                objBase->objBase55 = 1;
            else
                objBase->objBase54 = 1;
        }
        ++objBase->counter;
        Macro_080FC150(objBase, &objBase->sprite);
        if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
            objBase->sprite.x += gUnk_0203AD18[0];
            objBase->sprite.y += gUnk_0203AD18[1];
            Macro_0803DBC8(objBase, &objBase->sprite);
        }
    }
}

void sub_08081EB0(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Object *obj = objBase->unk6C;
    u32 unk62;

    if (obj && obj->base.header.kind == 1 && obj->base.flags & 0x1000)
        objBase->unk6C = NULL;
    if (!ObjectPreUpdate(objBase)) {
        if (kirby->ability == KIRBY_ABILITY_CUPID && kirby->animationIndex != 0x5A) {
            sub_080822B4(objBase);
            if (objBase->unk58 & 2) {
                if (!(objBase->unkC & 1)) {
                    CreateEffectObject(objBase, 0, 0x296, 0);
                    objBase->unkC |= 1;
                }
            } else {
                if (objBase->unkC & 1) {
                    CreateEffectObject(objBase, 0, 0x296, 0);
                    objBase->unkC &= ~1;
                }
            }
            if (!(objBase->flags & 0x80000)) {
                if (objBase->flags & 0x40000) {
                    struct Object *v6 = objBase->unk6C;

                    objBase->flags &= ~0x40000;
                    objBase->flags |= 0x200;
                    objBase->flags |= 0x100;
                    objBase->counter = 0;
                    objBase->xspeed = 0;
                    objBase->yspeed = 0;
                    if (v6 && v6->base.header.kind == 1) {
                        if (v6->base.flags & 0x1000 || v6->base.flags & 0x400)
                            objBase->flags |= 0x1000;
                        objBase->xspeed = v6->base.x - objBase->x;
                        objBase->yspeed = v6->base.y - objBase->y;
                        if (v6->type != OBJ_KRACKO)
                            objBase->sprite.unk14 = v6->base.sprite.unk14 - 0x40;
                        if (v6->type == OBJ_KING_GOLEM)
                            objBase->xspeed -= 0xA00;
                        objBase->unk48 = v6->base.flags & 1;
                        objBase->unk4C = v6->base.unk3B;
                        objBase->sprite.variant += 0x10;
                        gCurTask->main = sub_08081ABC;
                        sub_08081ABC();
                        return;
                    } else {
                        CreateEffectObject(objBase, 0, 0x2B4, 0);
                        objBase->flags |= 0x1000;
                        return;
                    }
                }
            } else {
                CreateEffectObject(objBase, 0, 0x2B4, 0);
                objBase->flags |= 0x1000;
                return;
            }
        } else {
            CreateEffectObject(objBase, 0, 0x2B4, 0);
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x
            && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
            && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y
            && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
            sub_0806FC70(objBase);
        else {
            objBase->unk58 &= ~2;
            objBase->unkC &= ~1;
        }
        if (objBase->unk58 & 0xC && objBase->unk4C < objBase->y)
            objBase->unk62 |= 4;
        unk62 = objBase->unk62;
        if (unk62) {
            u8 unk;

            objBase->flags |= 0x200;
            objBase->flags |= 0x100;
            objBase->flags |= 0x800;
            unk = 0;
            if ((objBase->x + objBase->xspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x >> 0xC
                && (objBase->x + objBase->xspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].levelMinPosition.x >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y >> 0xC
                && (objBase->y - objBase->yspeed) >> 0xC >= gCurLevelInfo[objBase->unk56].levelMinPosition.y >> 0xC)
                unk = GetCollisionTile(objBase->unk56, (objBase->x + objBase->xspeed) >> 0xC, (objBase->y - objBase->yspeed) >> 0xC);
            objBase->unk57 = unk;
            objBase->unk58 = gCollisionAttributes[objBase->unk57];
            objBase->counter = 0;
            objBase->sprite.variant += 0x10;
            gCurTask->main = sub_08081ABC;
            sub_08081ABC();
            return;
        } else {
            if (objBase->xspeed) {
                if (!(++objBase->counter & 7))
                    CreateEffectObject(objBase, 0, 0x2BC, 0);
                if (objBase->xspeed < 0) {
                    objBase->xspeed += 6;
                    if (objBase->xspeed > 0)
                        objBase->xspeed = unk62;
                } else {
                    objBase->xspeed -= 6;
                    if (objBase->xspeed < 0)
                        objBase->xspeed = unk62;
                }
                if (objBase->unkC & 1) {
                    objBase->yspeed -= 0xC;
                    if (objBase->yspeed < -0x240)
                        objBase->yspeed = -0x240;
                    if (objBase->flags & 1) {
                        if (objBase->xspeed > -0x40)
                            objBase->xspeed = -0x40;
                    } else {
                        if (objBase->xspeed < 0x40)
                            objBase->xspeed = 0x40;
                    }
                } else {
                    objBase->yspeed -= 0x18;
                    if (objBase->yspeed < -0x480)
                        objBase->yspeed = -0x480;
                    if (objBase->flags & 1) {
                        if (objBase->xspeed > -0x80)
                            objBase->xspeed = -0x80;
                    } else {
                        if (objBase->xspeed < 0x80)
                            objBase->xspeed = 0x80;
                    }
                }
                if (!(objBase->flags & 0x800)) {
                    objBase->unk48 = objBase->x;
                    objBase->unk4C = objBase->y;
                    objBase->x += objBase->xspeed;
                    objBase->y -= objBase->yspeed;
                }
            }
            sub_0806F8BC(objBase);
            if (objBase->y <= gCurLevelInfo[objBase->unk56].levelMinPosition.y - 0x2F00)
                objBase->y = gCurLevelInfo[objBase->unk56].levelMinPosition.y - 0x2F00;
        }
    }
}

void sub_080822B4(struct ObjectBase *objBase) {
    if (abs(objBase->xspeed) < 0x180) {
        objBase->sprite.variant = 4;
        if (objBase->yspeed > 0x80) {
            objBase->sprite.variant = 2;
            if (objBase->yspeed > 0x180) {
                if (objBase->yspeed > 0x240)
                    objBase->sprite.variant = 0;
                else
                    objBase->sprite.variant = 1;
            }
        }
        if (objBase->yspeed < -0x80) {
            objBase->sprite.variant = 6;
            if (objBase->yspeed < -0x180) {
                if (objBase->yspeed < -0x240)
                    objBase->sprite.variant = 8;
                else
                    objBase->sprite.variant = 7;
            }
        }
    } else {
        objBase->sprite.variant = 4;
        if (objBase->yspeed > 0x80) {
            if (objBase->yspeed > 0x180)
                objBase->sprite.variant = 2;
            else
                objBase->sprite.variant = 3;
        }
        if (objBase->yspeed < -0x80) {
            if (objBase->yspeed < -0x180)
                objBase->sprite.variant = 6;
            else
                objBase->sprite.variant = 5;
        }
    }
}

void sub_08082380(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08082748, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;
    u32 value;
    s32 param;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0;
    objBase->unk63 = 0;
    objBase->flags |= 0x60000040;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x800000;
    objBase->flags |= 0x1000000;
    value = 0x880000;
    param = -8; // TODO
    objBase->unk68 = value;
    objBase->flags |= kirby->base.flags & 1;
    sub_0803E2B0(objBase, param, param, 8, 0xA);
    ObjectSetBounds(objBase, -3, -3, 3, 6);
    switch (a2) {
    case 0:
        objBase->xspeed = 0x13B;
        objBase->yspeed = 0x366;
        objBase->y -= 0xF00;
        if (objBase->flags & 1)
            objBase->x -= 0xA00;
        else
            objBase->x += 0xA00;
        break;
    default:
    case 1:
        objBase->xspeed = 0x321;
        objBase->yspeed = 0x1D0;
        objBase->y -= 0x300;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 2:
        objBase->xspeed = 0x37F;
        objBase->yspeed = -0xEF;
        objBase->y += 0x500;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 3:
        objBase->xspeed = 0x480;
        objBase->yspeed = 0;
        objBase->y -= 0x400;
        objBase->unkC |= 2;
        if (objBase->flags & 1)
            objBase->x -= 0xC00;
        else
            objBase->x += 0xC00;
        break;
    case 4:
        t->main = sub_08082950;
        objBase->counter = 0;
        objBase->yspeed = -0x180;
        objBase->xspeed = 8;
        if (objBase->flags & 1)
            objBase->x -= 0x800;
        else
            objBase->x += 0x800;
        objBase->flags &= ~0x40000000;
        break;
    case 5:
        t->main = sub_08082950;
        objBase->counter = 0;
        objBase->yspeed = -0x180;
        objBase->xspeed = 8;
        objBase->y -= 6;
        if (objBase->flags & 1)
            objBase->x -= 0x800;
        else
            objBase->x += 0x800;
        objBase->flags &= ~0x40000000;
        break;
    }
    if (objBase->flags & 1)
        objBase->xspeed = -objBase->xspeed;
    if (a2 == 4 || a2 == 5)
        sub_0809D8C8(objBase);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x25A, 0, 0xD);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_0808269C(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->animationIndex == 0x5A) {
        CreateEffectObject(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (!ObjectPreUpdate(objBase)) {
        sub_0806F8BC(objBase);
        if (++objBase->counter > 4) {
            if (objBase->unkC & 2)
                sub_08074240(objBase, TRUE);
            else
                sub_08074240(objBase, FALSE);
            objBase->flags |= 0x1000;
        }
    }
}

void sub_08082748(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->animationIndex == 0x5A) {
        CreateEffectObject(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (!ObjectPreUpdate(objBase)) {
        sub_0809D8C8(objBase);
        if (objBase->unk62 || (objBase->flags & 0x40000 || objBase->flags & 0x80000)) {
            objBase->counter = 0;
            goto _08082830;
        }
        if (objBase->unk58 & 2) {
            if (!(objBase->unkC & 1)) {
                objBase->counter = 0;
                objBase->yspeed = 0;
                objBase->xspeed = 0;
                CreateEffectObject(objBase, 0, 0x296, 0);
                objBase->unkC |= 1;
            }
            if (!(++objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (objBase->counter > 120) {
                objBase->counter = 0;
            _08082830:
                objBase->flags |= 0x200;
                objBase->flags |= 0x100;
                objBase->flags |= 0x800;
                gCurTask->main = sub_0808269C;
                sub_0806F8BC(objBase);
                return;
            }
            objBase->yspeed -= 4;
            if (objBase->yspeed < -0x100)
                objBase->yspeed = -0x100;
        } else {
            if (objBase->unkC & 1) {
                CreateEffectObject(objBase, 0, 0x296, 1);
                objBase->counter = 0;
                objBase->unkC &= ~1;
            }
            if (!(++objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (!(objBase->unkC & 2)) {
                objBase->yspeed -= 0x1B;
            if (objBase->yspeed < -0x500)
                objBase->yspeed = -0x500;
            } else if (!(objBase->counter & 0xF)) {
                struct EffectObject *effect = CreateEffectObject(objBase, 0, 0x2C0, 0);

                effect->unk3C = -0x200;
                if (objBase->flags & 1) {
                    effect->flags |= 1;
                    effect->unk3C = -effect->unk3C;
                }
            }
        }
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C=  objBase->y;
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_08082950(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!ObjectPreUpdate(objBase)) {
        if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->animationIndex == 0x5A) {
            CreateEffectObject(objBase, 0, 0x28E, 0);
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->xspeed < 0) {
            objBase->xspeed += 0x10;
            if (objBase->xspeed > 0)
                objBase->xspeed = 0;
        } else {
            objBase->xspeed -= 0x10;
            if (objBase->xspeed < 0)
                objBase->xspeed = 0;
        }
        if (++objBase->counter > 0x5A) {
            objBase->counter = 0;
            objBase->flags |= 0x200;
            objBase->flags |= 0x100;
            objBase->flags |= 0x800;
            gCurTask->main = sub_0808269C;
            sub_0806F8BC(objBase);
        } else {
            if (objBase->flags & 0x40000)
                objBase->counter = 0x5A;
            if (!(objBase->counter & 7))
                sub_08096464(objBase, -8, -6);
            if (objBase->unk58 & 2) {
                if (!(objBase->unkC & 1)) {
                    objBase->xspeed = objBase->yspeed = 0;
                    CreateEffectObject(objBase, 0, 0x296, 0);
                    objBase->unkC |= 1;
                }
                objBase->yspeed -= 4;
                if (objBase->yspeed < -0x100)
                    objBase->yspeed = -0x100;
            } else {
                if (objBase->unkC & 1) {
                    CreateEffectObject(objBase, 0, 0x296, 1);
                    objBase->unkC &= ~1;
                }
                objBase->yspeed -= 0x1B;
                if (objBase->yspeed < -0x500)
                    objBase->yspeed = -0x500;
            }
            if (!(objBase->flags & 0x800)) {
                objBase->unk48 = objBase->x;
                objBase->unk4C=  objBase->y;
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            if (objBase->x <= gCurLevelInfo[objBase->unk56].levelMaxPosition.x && objBase->x >= gCurLevelInfo[objBase->unk56].levelMinPosition.x
                && objBase->y <= gCurLevelInfo[objBase->unk56].levelMaxPosition.y && objBase->y >= gCurLevelInfo[objBase->unk56].levelMinPosition.y)
                sub_0809D8C8(objBase);
            sub_0806F8BC(objBase);
        }
    }
}

void sub_08082B5C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08082CCC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x120;
    objBase->unk63 = 8;
    objBase->flags |= 0x60000040;
    objBase->flags |= 0x80000000;
    objBase->flags |= 0x4000;
    objBase->unk68 = 0x30007103;
    objBase->flags |= kirby->base.flags & 1;
    objBase->xspeed = 0x680;
    objBase->y -= 0x800;
    if (objBase->flags & 1) {
        objBase->xspeed = -objBase->xspeed;
        objBase->x -= 0x1000;
    } else {
        objBase->x += 0x1000;
    }
    sub_0803E2B0(objBase, -0xA, -0x14, 8, 0x14);
    ObjectSetBounds(objBase, -8, -0xC, 8, 0xC);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x248, 0, 0xA);
    objBase->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08082CCC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (kirby->ability != KIRBY_ABILITY_MASTER || kirby->animationIndex == 0x5A) {
        CreateEffectObject(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (objBase->counter == 0x10)
        objBase->roomId = 0xFFFF;
    if (!ObjectPreUpdate(objBase)) {
        objBase->flags |= 4;
        if (objBase->counter == 0xC) {
            objBase->sprite.variant = 1;
            objBase->xspeed = 0x400;
            if (objBase->flags & 1)
                objBase->xspeed = -objBase->xspeed;
        }
        ++objBase->counter;
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C=  objBase->y;
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
    }
}

void sub_08082DB4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08082EBC, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x100;
    objBase->unk66 = 0;
    objBase->unk63 = 0x1D;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->flags |= 0x2000;
    objBase->flags |= 0x200000;
    objBase->unk68 |= 0x10003;
    objBase->unk5C |= 0xFFFF;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
    objBase->counter = 4;
}

void sub_08082EBC(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct ObjectBase *v6; // TODO: type

    if (!ObjectPreUpdate(objBase)) {
        struct Kirby *kirby = objBase->parent;

        if (kirby->ability != KIRBY_ABILITY_CRASH
            || objBase->roomId != kirby->base.roomId
            || sub_0805BEC4(kirby)) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            v6 = objBase->unk6C;
            if (objBase->counter == 4) {
                objBase->counter = 0;
                v6->flags |= 0x2000;
            }
            if (objBase->counter == 1)
                v6->flags &= ~0x2000;
            if (++objBase->counter != 4)
                return;
            objBase->flags &= ~0x40000;
        } else {
            if (objBase->header.unk1 > 1) {
                kirby->flyTimer = 1;
                objBase->flags |= 0x1000;
                return;
            }
            ++objBase->header.unk1;
        }
        if (objBase->counter == 4) {
            SetPointerSomething(objBase);
            objBase->x = gCurLevelInfo[kirby->base.unk56].viewportPosition.x + 0x7800;
            objBase->y = gCurLevelInfo[kirby->base.unk56].viewportPosition.y + 0x5000;
        }
    }
}

void sub_08083040(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08083150, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 0x1D;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20008003;
    objBase->unk68 |= 0x40000000;
    if (a2 == 1)
        objBase->unk68 |= 0x100000;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0x78, -0x50, 0x78, 0x50);
    RequestScreenShake(1, objBase);
    sub_080860A8(objBase, gUnk_08350E04);
}

void sub_08083150(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->counter > 4)
            objBase->flags |= 0x1000;
        else {
            ++objBase->counter;
            SetPointerSomething(objBase);
            objBase->x = gCurLevelInfo[objBase->unk56].viewportPosition.x + 0x7800;
            objBase->y = gCurLevelInfo[objBase->unk56].viewportPosition.y + 0x5000;
        }
    }
}

void sub_0808324C(struct Kirby *kirby, u16 a2) {
    if (kirby->base.roomId > 0x383
        || kirby->base.roomId == 0x321
        || kirby->base.roomId == gUnk_0835105C[1]
        || kirby->base.roomId == gUnk_0835105C[2]
        || kirby->base.roomId == gUnk_0835105C[3]
        || kirby->base.roomId == gUnk_0835105C[4]
        || kirby->base.roomId == gUnk_0835105C[5]
        || kirby->base.roomId == gUnk_0835105C[6]
        || kirby->base.roomId == gUnk_0835105C[7]
        || kirby->base.roomId == gUnk_0835105C[8]) {
        if (kirby->unkE4 == 0x64)
            kirby->unkE5 = 0;
    } else if (!(kirby->base.unkC & 0x40)) {
        struct Task *t;
        struct ObjectBase *tmp, *objBase;

        kirby->base.unkC |= 0x40;
        t = TaskCreate(sub_08083494, sizeof(struct ObjectBase), 0x38E8, TASK_USE_IWRAM | TASK_x0004 | TASK_x0008, sub_0808382C);
        tmp = TaskGetStructPtr(t);
        objBase = tmp;
        ClearObjectBase(objBase);
        objBase->header.kind = 2;
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        objBase->parent = kirby;
        objBase->counter = 0;
        objBase->roomId = kirby->base.roomId;
        objBase->unk56 = kirby->base.unk56;
        if (Macro_0810B1F4(objBase))
            objBase->flags |= 0x2000;
        objBase->unk64 = 0x200;
        objBase->unk66 = 0x100;
        objBase->unk63 = 7;
        objBase->flags |= 0x20100000;
        objBase->flags |= 0x400;
        objBase->flags |= 0x2000000;
        objBase->unk68 |= 0x20000043;
        if (kirby->base.flags & 1)
            objBase->flags |= 1;
        kirby->base.unk5C &= ~7;
        kirby->base.unk5C |= 6;
        objBase->unk5C |= 0x80000;
        objBase->counter = a2;
        sub_0803E2B0(objBase, -7, -9, 7, 7);
        if (!(kirby->base.flags & 0x200))
            SetPointerSomething(objBase);
        if (kirby->base.unk56 == gLocalPlayerId) {
            m4aSongNumStart(MUS_INVINCIBLE_CANDY);
            gUnk_0203AD20 |= 4;
        }
    }
}

void sub_08083494(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;
    struct Sprite sprite;

    objBase->flags &= ~1;
    objBase->flags |= kirby->base.flags & 1;
    objBase->roomId = kirby->base.roomId;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 6;
    if (!ObjectPreUpdate(objBase)) {
        if (kirby->base.roomId > 0x383
            || kirby->base.roomId == 0x321
            || kirby->base.roomId == gUnk_0835105C[1]
            || kirby->base.roomId == gUnk_0835105C[2]
            || kirby->base.roomId == gUnk_0835105C[3]
            || kirby->base.roomId == gUnk_0835105C[4]
            || kirby->base.roomId == gUnk_0835105C[5]
            || kirby->base.roomId == gUnk_0835105C[6]
            || kirby->base.roomId == gUnk_0835105C[7]
            || kirby->base.roomId == gUnk_0835105C[8]) {
            objBase->counter = 0;
            if (kirby->unkE4 == 0x64)
                kirby->unkE5 = 0;
        }
        if (kirby->hp <= 0) {
            if (gUnk_0203AD20 & 4)
                gUnk_0203AD20 &= ~4;
            objBase->flags |= 0x1000;
            return;
        }
        kirby->base.unk5C &= ~7;
        kirby->base.unk5C |= 6;
        kirby->base.unk68 = 0x80;
        if (objBase->counter == 0) {
            if (gMainFlags & 0x800800) {
                gUnk_0203AD20 &= ~4;
                if (kirby->base.unk56 == gLocalPlayerId)
                    m4aSongNumStartOrChange(GetRoomMusicId(gCurLevelInfo[kirby->base.unk56].unk65E));
            } else {
                if (kirby->base.unk56 == gLocalPlayerId) {
                    gUnk_0203AD20 &= ~4;
                    if (kirby->base.unk56 == gLocalPlayerId)
                        m4aSongNumStartOrChange(GetRoomMusicId(gCurLevelInfo[kirby->base.unk56].unk65E));
                }
                kirby->base.unkC &= ~0x40;
                objBase->flags |= 0x1000;
            }
        } else {
            if (!(gMainFlags & 0x800800) || objBase->counter < 72)
                --objBase->counter;
            if (!(gMainFlags & 0x800800)) {
                if (!(objBase->counter & 7)) {
                    if (!(kirby->base.unkC & 0x200))
                        sub_0803E868(kirby->base.unk56);
                } else {
                    if ((objBase->counter & 7) == 2) {
                        if (!(kirby->base.unkC & 0x200)) {
                            if (kirby->ability == KIRBY_ABILITY_UFO)
                                SpriteSomething(&sprite, 0x6000000, 0x1A0, 0xF, 0xFF, 0, 0, 0, 0, 0x10, kirby->base.sprite.palId & 0xF, 0x80000);
                            else
                                SpriteSomething(&sprite, 0x6000000, 0x15, 0xF, 0xFF, 0, 0, 0, 0, 0x10, kirby->base.sprite.palId & 0xF, 0x80000);
                        }
                    } else if ((objBase->counter & 7) == 6 && !(kirby->base.unkC & 0x200)) {
                        sub_0803E558(kirby->base.unk56);
                    }
                }
                if (kirby->unkE4 == 0x64 && objBase->counter > 180)
                    kirby->unkE2 = objBase->counter;
                if (objBase->counter > 120) {
                    if (!(objBase->counter & 7))
                        sub_0808925C(objBase);
                } else {
                    if (objBase->counter == 72 && kirby->base.unk56 == gLocalPlayerId)
                        m4aMPlayFadeOut(&gMPlayInfo_0, 4);
                }
                // slightly different from SetPointerSomething
                if (!(kirby->base.flags & 0x200) && !(objBase->flags & 0x1200)) {
                    u32 temp = objBase->unk56 != 0xFF ? gCurLevelInfo[objBase->unk56].unk65E : 0xFF;

                    if (temp != 0xFF) {
                        u8 idx;
                        u32 temp2 = temp * 0x40 + (objBase->header.kind - 1) * 0x20;

                        ++objBase; --objBase;
                        idx = gUnk_02022EB0[temp][objBase->header.kind - 1]++ + temp2;
                        gUnk_02022F50[idx] = objBase;
                        gUnk_02022F50[idx + 1] = NULL;
                    }
                }
            }
        }
    }
}

void sub_0808382C(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    struct Kirby *kirby = objBase->parent;

    if (!(kirby->base.unkC & 0x200))
        sub_0803E558(kirby->base.unk56);
    kirby->base.unkC &= ~0x40;
    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 2;
    kirby->base.unk68 = 0x82;
    if (kirby->base.unk56 == gLocalPlayerId && gUnk_0203AD20 & 4) {
        gUnk_0203AD20 &= ~4;
        m4aSongNumStartOrChange(GetRoomMusicId(gCurLevelInfo[kirby->base.unk56].unk65E));
    }
    ObjectBaseDestroy(t);
}

void sub_080838DC(struct Kirby *kirby, struct Kirby *kirby2) {
    struct Task *t = TaskCreate(sub_08083B04, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    s32 v8, v9;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 4;
    objBase->unk64 = 0x300;
    objBase->unk66 = 0x100;
    objBase->flags |= 0x20000000;
    objBase->flags |= 0x2000000;
    objBase->flags |= 0x4000;
    objBase->unk68 |= 0x30002003;
    objBase->unk68 |= 8;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 2;
    objBase->flags |= 0x2000;
    sub_0803E2B0(objBase, -0x28, -0x50, 0, 0x50);
    ObjectBaseInitSprite(objBase, &objBase->sprite, (kirby2->base.unk56 << 0xB) + 0x6010400, 0x209, 0, 8);
    objBase->sprite.palId = kirby2->base.unk56 + 4;
    objBase->kirby2 = kirby2;
    v8 = gCurLevelInfo[objBase->unk56].viewportPosition.x;
    objBase->x = v8 + 0x7800; // dead code
    v9 = gCurLevelInfo[objBase->unk56].viewportPosition.y;
    objBase->x = v8 - 0x2C00;
    objBase->y = v9 + 0xA000;
    objBase->yspeed = 0x3D0;
    objBase->xspeed = 0x7D0;
    if (gLocalPlayerId == kirby->base.unk56) {
        sub_080860A8(objBase, gUnk_08350E1C);
        RequestScreenShake(1, objBase);
        PlaySfx(objBase, SE_ABILITY_MAGIC_META_KNIGHT);
    }
}

void sub_08083B04(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby2 = objBase->kirby2, *kirby = objBase->parent;

    objBase->sprite.palId = kirby2->base.unk56 + 4;
    if (kirby2->ability != KIRBY_ABILITY_MAGIC) {
        CreateEffectObject(objBase, 0, 0x28E, 0);
        objBase->roomId = 0xFFFF;
    }
    if (!ObjectPreUpdate(objBase)) {
        if (objBase->counter == 38) {
            s32 a, b;

            objBase->flags |= 1;
            a = gCurLevelInfo[objBase->unk56].viewportPosition.x;
            objBase->x = a + 0x7800; // dead code
            b = gCurLevelInfo[objBase->unk56].viewportPosition.y;
            objBase->x = a + 0x11C00;
            objBase->y = b + 0xA000;
            objBase->yspeed = 0x3D0;
            objBase->xspeed = -0x7D0;
            objBase->flags &= ~0x40000;
            if (gLocalPlayerId == kirby->base.unk56) {
                sub_080860A8(objBase, gUnk_08350E1C);
                RequestScreenShake(1, objBase);
                PlaySfx(objBase, SE_ABILITY_MAGIC_META_KNIGHT);
            }
        } else if (objBase->counter == 90) {
            s32 a, b;

            objBase->sprite.variant = 1;
            objBase->flags &= ~1;
            a = gCurLevelInfo[objBase->unk56].viewportPosition.x;
            objBase->x = a + 0x7800; // dead code
            b = gCurLevelInfo[objBase->unk56].viewportPosition.y;
            objBase->y = b + 0x5000;
            objBase->x = a - 0x2C00;
            objBase->yspeed = 0;
            objBase->xspeed = 0x600;
            objBase->flags &= ~0x40000;
            objBase->unk68 |= 0x30002003;
            objBase->unk63 = 0x16;
            if (gLocalPlayerId == kirby->base.unk56) {
                sub_080860A8(objBase, gUnk_08350E1C);
                RequestScreenShake(1, objBase);
                PlaySfx(objBase, SE_ABILITY_MAGIC_META_KNIGHT);
            }
        } else if (objBase->counter == 140) {
            objBase->flags |= 0x1000;
            return;
        }
        ++objBase->counter;
        sub_0803E2B0(objBase, -0x28, -((objBase->y - gCurLevelInfo[objBase->unk56].viewportPosition.y) >> 8), 0, (gCurLevelInfo[objBase->unk56].viewportPosition.y - ({objBase->y - 0xA000;})) >> 8);
        if (!(objBase->flags & 0x800)) {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        SetPointerSomething(objBase);
        if (gLocalPlayerId == kirby->base.unk56) {
            if (!(objBase->counter & 3))
                sub_08097864(objBase, gUnk_0203AD40 & 7);
            Macro_080FC150(objBase, &objBase->sprite);
            if (!(objBase->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == objBase->roomId) {
                objBase->sprite.x += gUnk_0203AD18[0];
                objBase->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
        }
    }
}

void sub_08083FC0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080840B8, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20001843;
    objBase->unk63 = 0x1C;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, -0xC, -0xC, 0xC, 0xC);
    ObjectSetBounds(objBase, -0xC, -0xC, 0xC, 0xC);
}

void sub_080840B8(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (!(kirby->base.flags & 0x8000))
            objBase->flags |= 0x1000;
        else {
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
        }
    }
}

void sub_08084188(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08084280, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x60000000;
    objBase->flags |= 0x400400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x20000043;
    objBase->unk64 = 0x120;
    objBase->unk66 = 0x100;
    objBase->unk63 = 1;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 0xA, -0xD, 0x26, 0xD);
}

void sub_08084280(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if ((kirby->animationIndex != 0x68 && kirby->animationIndex != 0x45 && kirby->animationIndex != 0x69 && kirby->animationIndex != 0x46)
            || kirby->ability != KIRBY_ABILITY_PARASOL)
            objBase->flags |= 0x1000;
        else {
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 6) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
            }
            SetPointerSomething(objBase);
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
        }
    }
}

void sub_08084398(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08084524, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0x80;
    objBase->unk66 = -0x1C0;
    objBase->unk63 = 4;
    objBase->flags |= 0xA0000000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    objBase->unk68 |= 0x30007103;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    if (kirby->base.flags & 1)
        objBase->flags |= 1;
    if (kirby->ability == KIRBY_ABILITY_MASTER) {
        sub_0803E2B0(objBase, -0xA, 2, 0xC, 0x28);
        ObjectSetBounds(objBase, -8, 2, 0xA, 0x24);
    }
    SetPointerSomething(objBase);
}

void sub_08084524(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby;

    if (!ObjectPreUpdate(objBase)) {
        kirby = objBase->parent;
        if (kirby->animationIndex != 0x67) {
            objBase->flags |= 0x1000;
            return;
        }
        if (objBase->flags & 0x40000) {
            if (!(kirby->base.flags & 0x800000) && ++objBase->counter > 1) {
                objBase->flags &= ~0x40000;
                objBase->counter = 0;
                ++objBase->header.unk1;
                kirby->base.yspeed >>= 1;
            }
            if (objBase->header.unk1 > 2) {
                kirby->base.unk62 |= 4;
                return;
            }
        }
        SetPointerSomething(objBase);
        objBase->x = kirby->base.x;
        objBase->y = kirby->base.y;
        if (kirby->base.flags & 1)
            objBase->flags |= 1;
        else
            objBase->flags &= ~1;
    }
}

void sub_0808466C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080848C4, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0xA0000000;
    objBase->unk68 |= 0x20000043;
    objBase->unk64 = 0x280;
    objBase->unk66 = 0x280;
    objBase->unk63 = 0xA;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y - 0xA00;
    objBase->xspeed = 0;
    objBase->yspeed = 0x500;
    sub_0803E2B0(objBase, -2, -2, 2, 2);
    ObjectSetBounds(objBase, -2, -2, 2, 2);
    objBase->flags |= 0x4000;
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x6012000, 0x295, 0, 0xA);
    sub_080706A0(objBase, 0, 0x295, 2, sub_08072C0C, 0);
    PlaySfx(&kirby->base, SE_KIRBY_STARSHOT_1);
    SetPointerSomething(objBase);
}

void sub_080848C4(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask);

    if (!ObjectPreUpdate(objBase)) {
        objBase->flags |= 4;
        if (!(objBase->flags & 0x800)) {
            objBase->unk48 = objBase->x;
            objBase->unk4C = objBase->y;
            objBase->x = objBase->x + objBase->xspeed;
            objBase->y = objBase->y - objBase->yspeed;
        }
        if (objBase->flags & 0x40000 || objBase->flags & 0x80000) {
            CreateEffectObject(objBase, 0, 0x28E, 0);
            objBase->flags |= 0x1000;
        } else {
            sub_0806F8BC(objBase);
            ++objBase->counter;
        }
    }
}

void sub_08084968(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08084A20, sizeof(struct ObjectBase), 0x3500, TASK_USE_IWRAM, sub_08084D28);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    ClearObjectBase(objBase);
    objBase->header.kind = 2;
    objBase->x = kirby->base.x;
    objBase->y = kirby->base.y;
    objBase->parent = kirby;
    objBase->counter = 0;
    objBase->roomId = kirby->base.roomId;
    objBase->unk56 = kirby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->flags |= 0x400;
    objBase->flags |= 0x2000000;
    kirby->base.flags |= 0x8000;
    kirby->base.unk68 = 0x80;
}

void sub_08084A20(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kirby *kirby = objBase->parent;

    if (!ObjectPreUpdate(objBase)) {
        if (kirby->animationIndex != 0x6F && kirby->animationIndex != 0x73 && kirby->animationIndex != 0x75
            && kirby->animationIndex != 0x74 && kirby->animationIndex != 0x70 && kirby->animationIndex != 0x72
            && kirby->animationIndex != 0x71) {
            kirby->base.flags &= ~0x8000;
            objBase->flags |= 0x1000;
        } else {
            objBase->x = kirby->base.x;
            objBase->y = kirby->base.y;
        }
    }
}

void sub_08084AA0(struct Object14 *obj14) {
    struct ObjectBase *objBase = obj14->effect.parent; // TODO: type

    if (objBase->flags & 0x1000)
        obj14->effect.roomId = 0xFFFF;
}

void sub_08084AC4(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    struct Kirby *kirby = objBase->parent;

    if (kirby->base.unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_KIRBY_INHALE);
        if (kirby->base.unk56 == gLocalPlayerId)
            m4aSongNumStop(SE_08D55A98);
    }
    ObjectBaseDestroy(t);
}

void sub_08084B1C(void) {
    struct ObjectBase *objBase = TaskGetStructPtr(gCurTask);

    if (!ObjectPreUpdate(objBase)) {
        if (objBase->flags & 2)
            objBase->flags |= 0x1000;
        else
            sub_0806F8BC(objBase);
    }
}

bool8 sub_08084B70(struct Unk_080C4EDC *a1) {
    CreateEffectObject(&a1->base, 0, 0x28E, 0);
    a1->base.flags |= 0x1000;
    return TRUE;
}

bool8 sub_08084B94(struct Unk_080C4EDC *a1) {
    if (a1->base.flags & 2) {
        a1->base.sprite.unk14 = 0x340;
        a1->base.flags |= 4;
        a1->base.flags &= ~0x800;
        if (a1->base.yspeed)
            a1->base.sprite.variant = 2;
        else
            a1->base.sprite.variant = 0;
    }
    return FALSE;
}

bool8 sub_08084BD8(struct Unk_080C4EDC *a1) {
    CreateEffectObject(&a1->base, 0, 0x28C, 2);
    a1->base.flags |= 0x1000;
    return TRUE;
}

bool8 sub_08084BFC(struct Unk_080C4EDC *a1) {
    CreateEffectObject(&a1->base, 0, 0x28C, 2);
    a1->base.flags |= 0x1000;
    return TRUE;
}

bool8 sub_08084C20(struct Unk_080C4EDC *a1) {
    a1->base.flags |= 0x40000;
    a1->base.flags |= 0x800;
    return FALSE;
}

bool8 sub_08084C34(struct Unk_080C4EDC *a1) {
    struct Object *obj = a1->base.unk6C;

    if (obj->base.sprite.animId == 0x28B || (obj->base.header.kind == 1 && obj->type == 0x71)) {
        a1->base.flags &= ~0x40000;
        return FALSE;
    } else {
        CreateEffectObject(&a1->base, 0, 0x292, 0);
        a1->base.flags |= 0x1000;
        return TRUE;
    }
}

bool8 sub_08084C8C(struct Unk_080C4EDC *a1) {
    CreateEffectObject(&a1->base, 0, 0x2B7, 6);
    a1->base.flags |= 0x1000;
    return TRUE;
}

bool8 sub_08084CB0(struct Unk_080C4EDC *a1) {
    a1->base.flags |= 0x40000;
    a1->base.flags |= 0x800;
    return FALSE;
}

bool8 sub_08084CC4(struct Unk_080C4EDC *a1) {
    if (!(a1->base.unk58 & 0x1000)) {
        CreateEffectObject(&a1->base, 0, 0x2B7, 6);
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        return FALSE;
    }
}

bool8 sub_08084CF8(struct Unk_080C4EDC *a1) {
    if (++a1->base.counter > 0x14) {
        a1->base.flags |= 0x1000;
        return TRUE;
    } else {
        a1->base.flags |= 4;
        return FALSE;
    }
}

void sub_08084D28(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);
    struct Kirby *kirby = objBase->parent;

    kirby->base.flags &= ~0x8000;
    kirby->base.unk68 = 0x82;
    ObjectBaseDestroy(t);
}

void sub_08084D68(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_ABILITY_FIRE_ATTACK);
    }
    ObjectBaseDestroy(t);
}

void sub_08084DAC(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;
    bool32 b;

    if (kirby->ability == KIRBY_ABILITY_CUTTER) {
        b = FALSE;
        if (kirby->animationIndex == 0x5A) {
            a1->base.flags |= 0x1400;
            b = TRUE;
        }
        if (!b) return;
    }
    CreateEffectObject(&a1->base, 0, 0x28E, 0);
    a1->base.roomId = 0xFFFF;
}

void sub_08084E00(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_ABILITY_BURNING_ATTACK);
    }
    sub_08084D28(t);
}

void sub_08084E44(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_ABILITY_WHEEL_TRANSFORM);
    }
    sub_08084D28(t);
}

void sub_08084E88(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;
    bool32 b;

    if (kirby->ability == KIRBY_ABILITY_LASER) {
        b = FALSE;
        if (kirby->animationIndex == 0x5A) {
            a1->base.flags |= 0x1400;
            b = TRUE;
        }
        if (!b) return;
    }
    CreateEffectObject(&a1->base, 0, 0x28E, 0);
    a1->base.roomId = 0xFFFF;
}

void sub_08084EDC(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;
    bool32 b;

    if (kirby->ability == KIRBY_ABILITY_UFO) {
        b = FALSE;
        if (kirby->animationIndex == 0x5A) {
            a1->base.flags |= 0x1400;
            b = TRUE;
        }
        if (!b) return;
    }
    CreateEffectObject(&a1->base, 0, 0x28E, 0);
    a1->base.roomId = 0xFFFF;
}

void sub_08084F30(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (kirby->animationIndex < 0x34 || kirby->animationIndex > 0x35) {
        a1->base.flags |= 0x1000;
        a1->base.roomId = 0xFFFF;
    }
    if (kirby->ability != KIRBY_ABILITY_BEAM)
        a1->base.roomId = 0xFFFF;
    if (Macro_08091C7C(&a1->base))
        a1->base.roomId = 0xFFFF;
}

void sub_08084FA8(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_ABILITY_ICE_ATTACK);
    }
    ObjectBaseDestroy(t);
}

void sub_08084FEC(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_KIRBY_SLIDING);
    }
    ObjectBaseDestroy(t);
}

void sub_08085030(struct Unk_080C4EDC *a1) {
    struct Kirby *kirby = a1->base.parent;

    if (kirby->ability != KIRBY_ABILITY_FIGHTER)
        a1->base.roomId = 0xFFFF;
    if (Macro_08091C7C(&a1->base))
        a1->base.roomId = 0xFFFF;
}

void sub_08085084(struct Task *t) {
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    if (objBase->unk56 == gLocalPlayerId) {
        m4aSongNumStop(SE_ABILITY_MISSILE_MOVEMENT);
    }
    ObjectBaseDestroy(t);
}

struct Unk_080880AC {
    u16 unk0;
    s16 unk2;
    void *unk4; // parent?
}; /* size = 0x8 */

void sub_080850C8(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk4;

    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 6;
    if (!Macro_0810B1F4(&kirby->base)) {
        if (kirby->animationIndex != 0x27 && kirby->animationIndex < 0x7B) {
            if (unk->unk2 & 4) {
                if (!(kirby->base.unkC & 0x200))
                    sub_0803E558(kirby->base.unk56);
            } else if (!(kirby->base.unkC & 0x200)) {
                sub_0803E868(kirby->base.unk56);
            }
            --unk->unk2;
        }
        if (!unk->unk2)
            TaskDestroy(gCurTask);
    }
}

void sub_08085180(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk4;

    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 6;
    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        if (unk->unk0 != kirby->animationIndex)
            TaskDestroy(gCurTask);
        else
            sub_080850C8();
    }
}

void sub_0808520C(struct Object *obj, s16 a2) {
    if (!(obj->base.flags & 0x8000)) {
        struct Task *t = TaskCreate(sub_080852A4, sizeof(struct Unk_080880AC), 0x356E, TASK_USE_IWRAM, sub_0808882C);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = obj;
        unk->unk2 = a2;
        unk->unk0 = 0;
        obj->base.flags |= 0x8000;
        if (unk->unk2 != 0x10 && obj->base.header.kind == 1 && (ObjType38To52(obj) || ObjType43To52(obj))) {
            unk->unk0 = 1;
            obj->base.unk68 &= ~0x80;
        }
    }
}

void sub_080852A4(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Object *obj = unk->unk4;

    if (obj->base.flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!obj || !Macro_0810B1F4(&obj->base) || obj->base.flags & 0x2000) {
        if (!--unk->unk2)
            TaskDestroy(gCurTask);
    }
}

void sub_08085328(struct Kirby *kirby) {
    if (!kirby->base.header.kind && !(kirby->base.flags & 0x800000)
        && (kirby->animationIndex != 0x27
            && kirby->hp > 0
            && ((kirby->animationIndex < 0x4A || kirby->animationIndex > 0x66) && kirby->animationIndex < 0x7B))) {
        struct Task *t = TaskCreate(sub_08085468, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, sub_0808876C);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = kirby;
        unk->unk2 = 3;
        unk->unk0 = 0;
        kirby->base.flags |= 0x2800808;
    }
}

void sub_080853C8(struct Kirby *kirby, u16 a2) {
    if (!kirby->base.header.kind && !(kirby->base.flags & 0x800000)
        && (kirby->animationIndex != 0x27
            && kirby->hp > 0
            && ((kirby->animationIndex < 0x4A || kirby->animationIndex > 0x66) && kirby->animationIndex < 0x7B))) {
        struct Task *t = TaskCreate(sub_08085468, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, sub_0808876C);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = kirby;
        unk->unk2 = a2;
        unk->unk0 = 0;
        kirby->base.flags |= 0x2800808;
    }
}

void sub_08085468(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk4;

    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        if (!--unk->unk2 || kirby->animationIndex == 0x27)
            TaskDestroy(gCurTask);
    }
}

void sub_080854E8(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk4;
    struct EffectObject *effect;

    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        if (unk->unk2 > 0x78)
            TaskDestroy(gCurTask);
        else {
            if (unk->unk2 == 0) {
                effect = CreateEffectObject(&kirby->base, 0, 0x28F, 0);
                effect->flags |= 0x2000;
            }
            if (unk->unk2 == 0x12) {
                effect = CreateEffectObject(&kirby->base, 0, 0x28F, 3);
                effect->flags |= 0x2000;
                effect->sprite.unk14 = 0x380;
                PlaySfx(&kirby->base, SE_KIRBY_ABILITY);
            }
            if (unk->unk2 == 0x10) {
                effect = CreateEffectObject(&kirby->base, 0, 0x28F, 2);
                effect->flags |= 0x2000;
            }
            if (unk->unk2 < 0x1E && (unk->unk2 & 7) == 7) {
                effect = CreateEffectObject(&kirby->base, 0, 0x28F, 1);
                effect->flags |= 0x2000;
                effect->x += gUnk_08350EE0[(Rand16() & 7)][0] * 0x100;
                effect->y += gUnk_08350EE0[(Rand16() & 7)][1] * 0x100;
                effect->sprite.unk14 = 0x380;
            }
            ++unk->unk2;
        }
    }
}

// TODO: we don't know type of the unk4 since sub_080881E0 is never referenced
void sub_080856F4(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct ObjectBase *objBase = unk->unk4;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!objBase || !Macro_0810B1F4(objBase)
        || objBase->flags & 0x2000) {
        if ((--unk->unk2 & 3) == 3) {
            if (objBase->flags & 0x400)
                objBase->flags &= ~0x400;
            else
                objBase->flags |= 0x400;
        }
        if (!unk->unk2)
            TaskDestroy(gCurTask);
    }
}

void sub_080857A0(struct Object *obj) {
    struct Task *t = TaskCreate(sub_08085834, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, sub_0808590C);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = obj;
    unk->unk2 = 0xE;
    if (obj->base.sprite.palId != 0xF)
        unk->unk0 = obj->base.sprite.palId;
    if (obj->base.unkC & 0x10)
        unk->unk0 = sub_0803DF24(gUnk_08351648[OBJ_DROPPY].unk8);
    else
        unk->unk0 = sub_0803DF24(gUnk_08351648[obj->type].unk8);
}

void sub_08085834(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Object *obj = unk->unk4, *obj_2;

    obj->base.sprite.palId = unk->unk0;
    if (obj->base.flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    obj_2 = unk->unk4;
    if (!obj_2 || !Macro_0810B1F4(&obj_2->base) || obj_2->base.flags & 0x2000) {
        if (gKirbys[gLocalPlayerId].base.roomId == obj->base.roomId) {
            if (unk->unk2 & 1)
                obj->base.sprite.palId = 0xF;
            else if (unk->unk0)
                obj->base.sprite.palId = unk->unk0;
        }
        if (!unk->unk2)
            TaskDestroy(gCurTask);
        else
            --unk->unk2;
    }
}

void sub_0808590C(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct Object *obj = unk->unk4;

    if (unk->unk0)
        obj->base.sprite.palId = unk->unk0;
    else {
        u16 unk8 = gUnk_08351648[obj->type].unk8;

        if (obj->base.unkC & 0x10)
            unk8 = gUnk_08351648[OBJ_DROPPY].unk8;
        if (sub_0803DF24(unk8) == 0xFF && gKirbys[gLocalPlayerId].base.roomId == obj->base.roomId) {
            sub_0803DFAC(unk8, obj->objTemplate->unkF);
            sub_0803DF24(unk8);
        }
    }
}

struct Unk_08088234 {
    u16 unk0;
    s16 unk2;
    u32 unk4;
}; /* size = 0x8 */

void sub_080859B4(void) {
    struct Unk_08088234 *unk = TaskGetStructPtr(gCurTask);

    if (!(gUnk_03000510.unk4 & ((1 << unk->unk4) | 0x10))) { // TODO: we can probably use Macro_0810B1F4 here as long as unk4 is named correctly
        u32 *ptr = GetStateSlot(STATE_SLOT_ROOM, unk->unk0, gCurLevelInfo[unk->unk4].unk65E);

        if (*ptr != unk->unk2)
            TaskDestroy(gCurTask);
        else {
            --unk->unk2;
            *ptr = unk->unk2;
            if (!*ptr)
                TaskDestroy(gCurTask);
        }
    }
}

struct Unk_080882B4 {
    u16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    struct Kirby *unk8;
}; /* size = 0xC */

void sub_08085A54(void) {
    struct Unk_080882B4 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk8, *kirby2 = kirby, *kirby3;

    if (sub_0805BEC4(kirby)) {
        gCurLevelInfo[kirby->base.unk56].unk1EC = 0;
        gCurLevelInfo[kirby->base.unk56].unk664 = 0x300;
        TaskDestroy(gCurTask);
        return;
    }
    kirby3 = unk->unk8;
    if (!kirby3 || !Macro_0810B1F4(&kirby3->base)
        || kirby3->base.flags & 0x2000) {
        gCurLevelInfo[kirby2->base.unk56].unk20
            = kirby2->base.y - ({gCurLevelInfo[kirby2->base.unk56].viewportPosition.y + 0x5000;}) - unk->unk6;
        gCurLevelInfo[kirby2->base.unk56].unk1C
            = kirby2->base.x - ({gCurLevelInfo[kirby2->base.unk56].viewportPosition.x + 0x7800;});
        unk->unk4 += 0x40;
        if (unk->unk4 >= 0x1C0)
            unk->unk4 = 0x1C0;
        if (kirby->movementState & 0x40 && unk->unk6 >= 0) {
            unk->unk6 += unk->unk4;
            if (unk->unk6 > 0x3000)
                unk->unk6 = 0x3000;
        } else if (kirby->movementState & 0x80 && unk->unk6 <= 0) {
            unk->unk6 -= unk->unk4;
            if (unk->unk6 < -0x3000)
                unk->unk6 = -0x3000;
        } else if (++unk->unk2 > 4) {
            gCurLevelInfo[kirby2->base.unk56].unk1EC = 0;
            gCurLevelInfo[kirby2->base.unk56].unk664 = 0x300;
            TaskDestroy(gCurTask);
            return;
        }
        if (kirby->animationIndex > 0xB && (kirby->animationIndex < 0x1F || kirby->animationIndex > 0x22)) {
            gCurLevelInfo[kirby2->base.unk56].unk1EC = 0;
            gCurLevelInfo[kirby2->base.unk56].unk664 = 0x300;
            TaskDestroy(gCurTask);
        }
    }
}

void sub_08085C38(void) {
    struct Unk_080882B4 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->unk8;

    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        unk->unk4 += 0x40;
        if (unk->unk4 >= 0x1C0 + 0x40)
            unk->unk4 = 0x1C0;
        if (unk->unk6 < 0) {
            unk->unk6 += unk->unk4;
            if (unk->unk6 > 0)
                unk->unk6 = 0;
        } else if (unk->unk6 > 0) {
            unk->unk6 -= unk->unk4;
            if (unk->unk6 < 0)
                unk->unk6 = 0;
        } else {
            TaskDestroy(gCurTask);
        }
    }
}

struct Unk_08085CE8 {
    u8 unk0;
    u8 unk1;
    u16 roomId;
    const struct AnimInfo *unk4;
    struct ObjectBase *objBase;
}; /* size = 0xC */

struct Unk_08085CE8 *sub_08085CE8(struct ObjectBase *objBase, const struct AnimInfo *a2) {
    if ((gUnk_0300051C >> objBase->sprite.palId) & 1)
        return NULL;
    else {
        struct Task *t = TaskCreate(sub_08085E60, sizeof(struct Unk_08085CE8), 0x3500, TASK_USE_IWRAM, sub_0808895C);
        struct Unk_08085CE8 *unk = TaskGetStructPtr(t);

        unk->objBase = NULL;
        unk->unk4 = a2;
        unk->unk1 = 0;
        unk->unk0 = objBase->sprite.palId;
        unk->roomId = objBase->roomId;
        gUnk_03000524 = 0;
        return unk;
    }
}

// TODO: the functions are handling Unk_02021590::unk3 differently. Is it another struct?
void sub_08085D74(struct Unk_08085CE8 *a1) {
    u8 i;
    u8 r6 = 0;
    const struct AnimInfo *unk = a1->unk4;
    struct Sprite sprite;

    for (i = unk[r6].unk3; i && i != 0xFF; i = unk[r6].unk3)
        ++r6;
    if (gKirbys[gLocalPlayerId].base.roomId == a1->roomId) {
        if (!(a1->unk0 & 0xF)) {
            if (!a1->objBase) {
                u8 v7 = sub_0803DF24(a1->unk4->animId);

                if (v7 == 0xFF)
                    v7 = sub_0803DFAC(a1->unk4->animId, 0);
                a1->unk0 |= v7;
            } else {
                a1->unk0 |= a1->objBase->sprite.palId & 0xF;
            }
        }
        if (a1->unk0 & 0xF)
            SpriteSomething(&sprite, 0x6000000, a1->unk4[r6].animId, a1->unk4[r6].variant,
                0xFF, 0, 0, 0, 0, 0x10, a1->unk0 & 0xF, 0x80000);
    }
}

void sub_08085E60(void) {
    struct Sprite sprite;
    struct Unk_08085CE8 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct ObjectBase *v4;
    u8 r1;
    u32 v5;
    u16 *ptr;

    if (!Macro_081135A8(unk->roomId)) {
        sub_08085D74(unk);
        TaskDestroy(gCurTask);
        return;
    }
    v4 = unk->objBase;
    if (v4) {
        if (v4->flags & 0x1000) {
            sub_08085D74(unk);
            TaskDestroy(gCurTask);
            return;
        }
    } else if (gUnk_03000524) {
        TaskDestroy(gCurTask);
        return;
    }
    v5 = unk->unk0;
    if ((u8)unk->unk4[unk->unk0 / 0x10].unk3 == ++unk->unk1) {
        v5 += 0x10;
        unk->unk0 = v5;
        unk->unk1 = 0;
        if ((u8)unk->unk4[(u8)v5 / 0x10].unk3 == unk->unk1)
            unk->unk0 = v5 & 0xF;
        r1 = unk->unk4[unk->unk0 / 0x10].unk3;
        v5 = unk->unk0;
        if (r1 == (u8)-1) {
            TaskDestroy(gCurTask);
            return;
        }
    }
    if (gKirbys[gLocalPlayerId].base.roomId == unk->roomId) {
        if (!v4) {
            ptr = &gUnk_0300051C;
            ++ptr; --ptr; // swap r6/r7
            if ((*ptr >> (v5 & 0xF)) & 1) {
                TaskDestroy(gCurTask);
                return;
            }
            *ptr |= 1 << (v5 & 0xF);
        }
        if (!(unk->unk0 & 0xF)) {
            if (!v4) {
                u8 v7 = sub_0803DF24(unk->unk4->animId);

                if (v7 == 0xFF)
                    v7 = sub_0803DFAC(unk->unk4->animId, 0);
                unk->unk0 |= v7;
            } else {
                unk->unk0 |= v4->sprite.palId & 0xF;
            }
        }
        if (unk->unk0 & 0xF)
            SpriteSomething(&sprite, 0x6000000, unk->unk4[unk->unk0 / 0x10].animId, unk->unk4[unk->unk0 / 0x10].variant,
                0xFF, 0, 0, 0, 0, 0x10, unk->unk0 & 0xF, 0x80000);
    } else {
        if (!v4)
            gUnk_0300051C &= ~(1 << (unk->unk0 & 0xF));
        unk->unk0 &= 0xF0;
    }
}

struct Unk_080860A8 {
    u8 unk0; // bg/obj enable bits
    u8 unk1;
    u16 roomId;
    const struct Unk_08357260 *unk4;
}; /* size = 0x8 */

void sub_080860A8(struct ObjectBase *objBase, const struct Unk_08357260 *a2) {
    struct Task *t = TaskCreate(sub_08086194, sizeof(struct Unk_080860A8), 0x3500, TASK_USE_IWRAM, sub_08086304);
    struct Unk_080860A8 *unk = TaskGetStructPtr(t);

    unk->roomId = objBase->roomId;
    unk->unk4 = a2;
    unk->unk0 = (gDispCnt & (DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON)) >> 8;
    unk->unk1 = a2->unk3;
    if (gKirbys[gLocalPlayerId].base.roomId == unk->roomId) {
        sub_0803D21C(&a2->unk0, 0, 1);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        if (unk->unk4->unk2 == 1) {
            gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
            gDispCnt |= DISPCNT_OBJ_ON;
            if (unk->roomId == 0x396)
                gDispCnt |= DISPCNT_BG2_ON;
        } else if (unk->unk4->unk2 == 2) {
            gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
        }
    }
}

void sub_08086194(void) {
    struct Unk_080860A8 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    u32 roomId;

    if (!--unk->unk1) {
        ++unk->unk4;
        unk->unk1 = unk->unk4->unk3;
        if (gKirbys[gLocalPlayerId].base.roomId == unk->roomId) {
            sub_0803D21C(&unk->unk4->unk0, 0, 1);
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
        if (!unk->unk1) TaskDestroy(gCurTask);
    }
    roomId = gKirbys[gLocalPlayerId].base.roomId;
    if (roomId == unk->roomId) {
        if (unk->unk4->unk2) {
            if (unk->unk4->unk2 == 1) {
                gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
                gDispCnt |= DISPCNT_OBJ_ON;
                if (roomId == 0x396)
                    gDispCnt |= DISPCNT_BG2_ON;
            } else if (unk->unk4->unk2 == 2) {
                gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
            }
        } else {
            gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
            gDispCnt |= DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
            if (gRoomProps[unk->roomId].objectList2Idx == 0xFFFF)
                gDispCnt &= ~DISPCNT_BG2_ON;
            if (roomId == 0x396)
                gDispCnt |= DISPCNT_BG2_ON;
            if (gUnk_0203AD10 & 0x40)
                gDispCnt &= ~DISPCNT_BG1_ON;
        }
    }
}

void sub_08086304(struct Task *t) {
    struct Unk_080860A8 *unk = TaskGetStructPtr(t);
    u32 roomId = gKirbys[gLocalPlayerId].base.roomId;

    if (roomId == unk->roomId) {
        gDispCnt &= ~(DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
        gDispCnt |= DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
        if (gRoomProps[unk->roomId].objectList2Idx == 0xFFFF)
            gDispCnt &= ~DISPCNT_BG2_ON;
        if (roomId == 0x396)
            gDispCnt |= DISPCNT_BG2_ON;
        if (gUnk_0203AD10 & 0x40)
            gDispCnt &= ~DISPCNT_BG1_ON;
    }
}

// not the same as Unk_080880AC since the first field is used differently
struct Unk_08088118 {
    u16 kirbyAbility;
    s16 unk2;
    struct Kirby *kirby;
}; /* size = 0x8 */

void sub_080863C0(void) {
    struct Unk_08088118 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Kirby *kirby = unk->kirby;
    struct Sprite sprite;

    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        if (!unk->unk2) {
            if (!(kirby->base.unkC & 0x200))
                SpriteSomething(&sprite, 0x6000000, 0x15, 0xF, 0xFF, 0, 0, 0, 0, 0x10, kirby->base.sprite.palId & 0xF, 0x80000);
        } else if (unk->unk2 < 3) {
            if (!(kirby->base.unkC & 0x200))
                sub_0803E868(kirby->base.unk56);
        } else {
            if (!(kirby->base.unkC & 0x200))
                sub_0803E558(kirby->base.unk56);
        }
        unk->unk2 = (unk->unk2 + 1) & 0xF;
        if (unk->kirbyAbility != kirby->ability || kirby->animationIndex == 0x35)
            TaskDestroy(gCurTask);
    }
}

void sub_080864E8(void) {
    struct Unk_08088118 *unk = TaskGetStructPtr(gCurTask); // TODO: probably another struct but the functions are only using one field
    struct Kirby *kirby = unk->kirby;

    if (!kirby || !Macro_0810B1F4(&kirby->base)
        || kirby->base.flags & 0x2000) {
        PlaySfxAlt(&kirby->base, SE_PHONE_RING);
        if ((kirby->ability != KIRBY_ABILITY_UFO && kirby->animationIndex != 0x63)
            || (kirby->ability == KIRBY_ABILITY_UFO && kirby->animationIndex != 0x36))
            TaskDestroy(gCurTask);
    }
}

void sub_080865E8(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Object *obj = unk->unk4;

    if (!(obj->base.flags & 0x1000000) || obj->base.flags & 0x1000) {
        obj->base.flags &= ~0x1000000;
        TaskDestroy(gCurTask);
    } else if (!obj || !Macro_0810B1F4(&obj->base) || obj->base.flags & 0x2000) {
        if (!--unk->unk2) {
            obj->base.flags &= ~0x1000000;
            TaskDestroy(gCurTask);
        }
    }
}

void sub_0808668C(void) {
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    struct Object *obj = unk->unk4;

    if (obj->base.flags & 0x1000) {
        TaskDestroy(gCurTask);
    } else if ((!obj || !Macro_0810B1F4(&obj->base) || obj->base.flags & 0x2000) && !(obj->base.flags & 0x2000)) {
        obj->base.unk5C &= ~0x10000;
        TaskDestroy(gCurTask);
    }
}

struct Object6 *sub_0808671C(struct Object *obj) {
    struct Task *t = TaskCreate(sub_080867E4, sizeof(struct Object6), 0x3500, TASK_USE_IWRAM, sub_080868D4);
    struct Object6 *obj6 = TaskGetStructPtr(t);
    struct Unk_02022930_0 *unk;

    obj6->unk4 = obj;
    obj6->unk2 = 0xB;
    obj6->unk0 = 0;
    unk = sub_0803C8CC(5, obj->base.roomId);
    unk->unk0 = 2;
    unk->unkA = 0x100;
    unk->unk3 = 5;
    unk->unk2 = 0x10;
    unk->unk4 = 0;
    unk->unk6 = 0x3FFF;
    unk->unk8 |= 0x40;
    return obj6;
}

void sub_080867A0(struct Object6 *obj6) {
    struct Unk_02022930_0 *unk = sub_0803C8CC(5, obj6->unk4->base.roomId);

    unk->unk0 = 2;
    unk->unkA = -0x100;
    unk->unkC = 0x1000;
    unk->unk1 = 0x10;
    unk->unk3 = 5;
    unk->unk2 = 0;
    unk->unk4 = 0;
    unk->unk6 = 0x3FFF;
    obj6->unk0 = 1;
}

void sub_080867E4(void) {
    struct Object6 *tmp = TaskGetStructPtr(gCurTask), *obj6 = tmp;
    struct Object *obj = obj6->unk4;
    struct Unk_02022930_0 *unk;

    if (obj->base.flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    unk = sub_0803D308(5);
    if (unk->unk8 & 2) {
        if (gKirbys[gLocalPlayerId].base.roomId != obj->base.roomId)
            unk->unk8 &= ~2;
    } else {
        if (gKirbys[gLocalPlayerId].base.roomId == obj->base.roomId)
            unk->unk8 |= 2;
    }
    if (!Macro_0810B1F4(&obj->base) && obj6->unk0 && !--obj6->unk2) {
        obj6->unk0 = 2;
        TaskDestroy(gCurTask);
    }
}

void sub_080868D4(struct Task *t) {
    struct Object6 *obj6 = TaskGetStructPtr(t);
    struct Object *obj = obj6->unk4;
    struct Unk_02022930_0 *unk;

    if (obj6->unk0 != 2) {
        unk = sub_0803C8CC(5, obj->base.roomId);
        unk->unk0 = 2;
        unk->unkA = -0x1000;
        unk->unkC = 0x1000;
        unk->unk1 = 0x10;
        unk->unk3 = 5;
        unk->unk2 = 0;
        unk->unk4 = 0;
        unk->unk6 = 0x3FFF;
    }
}

struct Object6 *sub_08086938(struct Object *obj, u8 a2) {
    struct Task *t = TaskCreate(sub_08086AC0, sizeof(struct Object6), 0x3500, TASK_USE_IWRAM, sub_08086B40);
    struct Object6 *tmp = TaskGetStructPtr(t), *obj6 = tmp;
    struct Unk_02022930_0 *unk;
    u8 ret;

    obj6->unk4 = obj;
    obj6->unk2 = 0x20;
    obj6->unk0 = 0;
    if (a2)
        t->dtor = sub_08086BE0;
    unk = sub_0803C8CC(6, obj->base.roomId);
    unk->unk4 = 0xFF00;
    unk->unk6 = 0x3FFF;
    ret = sub_0803DF24(0x39A);
    if (ret != 0xFF)
        unk->unk4 &= ~(1 << ret);
    ret = sub_0803DF24(0x399);
    if (ret != 0xFF)
        unk->unk4 &= ~(1 << ret);
    if (a2) {
        unk->unk0 = 1;
        unk->unkA = 0x40;
        obj6->unk2 = 0x80;
        unk->unk4 = 0xFFFF;
        unk->unk6 = 0x3FFF;
    } else {
        unk->unk0 = 2;
        unk->unkA = 0x100;
    }
    unk->unk3 = 8;
    unk->unk2 = 0x1F;
    unk->unk8 |= 0x40;
    return obj6;
}

void sub_08086A28(struct Object6 *obj6, u8 a2) {
    struct Unk_02022930_0 *unk = sub_0803C8CC(6, obj6->unk4->base.roomId);
    u8 ret;

    unk->unk4 = 0xFF00;
    unk->unk6 = 0x3FFF;
    ret = sub_0803DF24(0x39A);
    if (ret != 0xFF)
        unk->unk4 &= ~(1 << ret);
    ret = sub_0803DF24(0x399);
    if (ret != 0xFF)
        unk->unk4 &= ~(1 << ret);
    if (a2) {
        unk->unk0 = 1;
        unk->unk4 = 0xFFFF;
    } else {
        unk->unk0 = 2;
    }
    unk->unk3 = 8;
    unk->unkA = -0x100;
    unk->unkC = 0x1F00;
    unk->unk1 = 0x1F;
    unk->unk2 = 0;
    obj6->unk0 = 1;
}

void sub_08086AC0(void) {
    struct Object6 *obj6 = TaskGetStructPtr(gCurTask);
    struct Object *obj = obj6->unk4;

    if (obj->base.flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!Macro_0810B1F4(&obj->base) && obj6->unk0 && !--obj6->unk2) {
        obj6->unk0 = 2;
        TaskDestroy(gCurTask);
    }
}

void sub_08086B40(struct Task *t) {
    struct Object6 *obj6 = TaskGetStructPtr(t);
    struct Unk_02022930_0 *unk;
    struct Object *obj = obj6->unk4;
    u8 ret;

    if (obj6->unk0 != 2) {
        unk = sub_0803C8CC(6, obj->base.roomId);
        unk->unk0 = 2;
        unk->unkA = -0x1000;
        unk->unkC = 0x1F00;
        unk->unk1 = 0x1F;
        unk->unk3 = 8;
        unk->unk2 = 0;
        unk->unk4 = 0xFF00;
        ret = sub_0803DF24(0x39A);
        if (ret != 0xFF)
            unk->unk4 &= ~(1 << ret);
        ret = sub_0803DF24(0x399);
        if (ret != 0xFF)
            unk->unk4 &= ~(1 << ret);
        unk->unk6 = 0x3FFF;
    }
}

void sub_08086BE0(struct Task *t) {
    struct Object6 *obj6 = TaskGetStructPtr(t);
    struct Unk_02022930_0 *unk;
    struct Object *obj = obj6->unk4;

    if (obj6->unk0 != 2) {
        unk = sub_0803C8CC(6, obj->base.roomId);
        unk->unk0 = 2;
        unk->unkA = -0x1000;
        unk->unkC = 0x1F00;
        unk->unk1 = 0x1F;
        unk->unk2 = 0;
        unk->unk3 = 8;
        unk->unk0 = 1;
        unk->unk4 = 0xFFFF;
        unk->unk6 = 0x3FFF;
    }
}

struct Unk_08086C48 {
    u8 unk0;
    u8 unk1;
    u16 roomId;
    s16 unk4;
    u16 unk6;
    struct Object *obj;
}; /* size = 0xC */

void sub_08086C48(struct Object *obj) {
    u32 v6, v7 = 0; // redundant initialization
    u8 i;
    struct Task *t = TaskCreate(sub_08086DAC, sizeof(struct Unk_08086C48), 0x3500, TASK_USE_IWRAM | TASK_x0008 | TASK_x0004, NULL);
    struct Unk_08086C48 *tmp = TaskGetStructPtr(t), *unk = tmp;

    unk->unk6 = 0x3C;
    unk->unk0 = obj->base.unk56;
    unk->roomId = obj->base.roomId;
    v6 = sub_08002A2C(gCurLevelInfo[unk->unk0].unk65E, 0);
    unk->unk4 = v7 = GetRoomMusicId(gCurLevelInfo[unk->unk0].unk65E);
    if (v6) {
        SetRoomMusicId(gCurLevelInfo[unk->unk0].unk65E, v6);
        for (i = 1; i < 2; ++i)
            sub_08002A44(gCurLevelInfo[unk->unk0].unk65E, sub_08002A2C(gCurLevelInfo[unk->unk0].unk65E, i), i - 1);
    }
    if (gKirbys[gLocalPlayerId].base.roomId == unk->roomId
        && v6 != v7
        && !(gUnk_0203AD20 & 4)
        && gMPlayInfo_0.songHeader != gSongTable[0x14].header) {
        if (obj->base.roomId == 0x396)
            MPlayStop(&gMPlayInfo_0);
        else
            m4aMPlayFadeOut(&gMPlayInfo_0, 8);
    }
}

void sub_08086DAC(void) {
    struct Unk_08086C48 *unk = TaskGetStructPtr(gCurTask);

    if (!--unk->unk6) {
        if (gKirbys[gLocalPlayerId].base.roomId == unk->roomId) {
            u16 v2 = GetRoomMusicId(gCurLevelInfo[unk->unk0].unk65E);
            // TODO: might be another struct?
            if ((u16)unk->unk4 != v2 && !(gUnk_0203AD20 & 4))
                m4aSongNumStart(v2);
        }
        TaskDestroy(gCurTask);
    }
}

// TODO: the function depends on object type order
void sub_08086E50(void) {
    struct Unk_08086C48 *unk = TaskGetStructPtr(gCurTask);
    struct Object *obj = unk->obj;

    if (!--unk->unk6) {
        sub_080700D8(&obj->base);
        sub_080335B4(obj->base.unk56);
        RequestScreenShake(3, &obj->base);
        sub_08098184(&obj->base);
        CreateEffectObject(&obj->base, 0, 0x299, 0);
        if (obj->type != OBJ_MEGA_TITAN)
            PlaySfx(&obj->base, SE_AUDIENCE_CHEER);
        if (gUnk_08350E58[obj->type - OBJ_EMPTY_43])
            gUnk_08350E58[obj->type - OBJ_EMPTY_43](obj);
        if (obj->type != OBJ_KING_GOLEM && obj->type != OBJ_MEGA_TITAN && obj->type != OBJ_TITAN_HEAD && obj->type != OBJ_GOBBLER
            && obj->type != OBJ_MOLEY && obj->type != OBJ_WIZ
            && (ObjType0To37(obj) || ObjType38To42(obj) || ObjType43To4D(obj)))
            obj->base.flags |= 0x1000;
        TaskDestroy(gCurTask);
    }
}

void sub_08086F98(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        s32 x, y;

        if (obj->base.flags & 1)
            x = (obj->base.x >> 8) - 0x60;
        else
            x = (obj->base.x >> 8) + 0x60;
        y = obj->base.y >> 8;
        if (HasShard(1))
            sub_08088A38(obj, x, y, 1);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_08088700(&obj->base, 2);
    }
}

void sub_080870B8(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        if (HasShard(4))
            sub_08088A38(obj, 0x80, 0x20, 4);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, 0x80, 0x20, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_08088700(&obj->base, 5);
    }
}

void sub_080871A4(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        if (HasShard(6))
            sub_08088A38(obj, 0x80, 0x50, 6);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, 0x80, 0x50, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_08088700(&obj->base, 7);
    }
}

void sub_08087290(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        s32 x = 0x250, y = 0xE5;

        if (HasShard(5))
            sub_08088A38(obj, x, y, 5);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_080886A8(&obj->base);
        sub_08088700(&obj->base, 6);
    }
}

void sub_08087390(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        s32 x = 0x80, y = 0x50;

        if (HasShard(0))
            sub_08088A38(obj, x, y, 0);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_08088700(&obj->base, 1);
    }
}

void sub_0808747C(struct Object *obj) {
    struct Object *parent = obj->base.parent;

    if ((!parent || parent->unk80 <= 0) && !*GetStateSlot(STATE_SLOT_SESSION, 3, 0)) {
        sub_080886A8(&obj->base);
        if (gUnk_0203AD10 & 4) {
            u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

            *v2 |= 0x80000000;
            sub_0808859C(obj, 0x3B7, 0x5A);
        } else {
            s32 x = 0x80, y = 0x50;

            if (HasShard(2))
                sub_08088A38(obj, x, y, 2);
            else
                CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            sub_08088700(&obj->base, 3);
        }
    }
}

void sub_0808758C(struct Object *obj) {
    sub_080886A8(&obj->base);
    if (gUnk_0203AD10 & 4) {
        u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

        *v2 |= 0x80000000;
        sub_0808859C(obj, 0x3B7, 0x5A);
    } else {
        s32 x = 0x80, y = 0xF8;

        if (HasShard(3))
            sub_08088A38(obj, x, y, 3);
        else
            CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_08088700(&obj->base, 4);
    }
}

void sub_08087678(struct Object *obj) {
    if (!obj->objTemplate->subtype1) {
        sub_080886A8(&obj->base);
        if (gUnk_0203AD10 & 4) {
            u32 *v2 = GetStateSlot(STATE_SLOT_SESSION, 9, 0xFF);

            *v2 |= 0x80000000;
            sub_0808859C(obj, 0x3B7, 0x5A);
        } else {
            s32 x = 0x80, y = 0x50;

            if (HasShard(7))
                sub_08088A38(obj, x, y, 7);
            else
                CreateObjTemplateAndObj(obj->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_MIRROR_SHARD, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            sub_08088700(&obj->base, 8);
        }
    }
}

struct Unk_08088700 {
    u16 roomId;
    u16 unk2;
    struct ObjectBase *unk4; // TODO: unknown type
}; /* size = 0x8 */

void sub_08087770(void) {
    struct Unk_08088700 *unk = TaskGetStructPtr(gCurTask);
    bool32 b = FALSE;
    u8 i;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == unk->roomId && !(gUnk_02026D50[gCurLevelInfo[i].unk65E] & 8))
            b = TRUE;
    }
    if (!b) TaskDestroy(gCurTask);
}

struct Unk_0808859C {
    u16 roomId;
    u16 unk2;
    s16 unk4;
    u8 unk6;
}; /* size = 0x8 */

void sub_0808781C(void) {
    u8 v0 = 0;
    struct Unk_0808859C *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    bool32 b = FALSE;
    u8 i, j;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == unk->roomId && !(gUnk_02026D50[gCurLevelInfo[i].unk65E] & 8))
            b = TRUE;
    }
    if (!b)
        TaskDestroy(gCurTask);
    else {
        for (j = 0; j < gNumKirbys; ++j) {
            if (gKirbys[j].base.roomId == unk->roomId) {
                if (gKirbys[j].animationIndex >= 0x30 && gKirbys[j].animationIndex <= 0x33)
                    return;
                v0 = gKirbys[j].base.unk56;
            }
        }
        if (!(gUnk_03000510.unk4 & ((1 << v0) | 0x10))) {
            if (!unk->unk4) {
                for (j = 0; j < gNumKirbys; ++j) {
                    u8 a, b;
                    bool32 v14;

                    if (gKirbys[j].base.roomId == unk->roomId) {
                        if (gKirbys[j].hp > 0 && !((unk->unk6 >> j) & 1)) {
                            sub_08002D40(unk->unk2, &a, &b);
                            gKirbys[j].roomId = unk->unk2;
                            gKirbys[j].spawnLocation.x = a;
                            gKirbys[j].spawnLocation.y = b;
                            if (gKirbys[j].base.flags & 0x400)
                                v14 = TRUE;
                            else
                                v14 = FALSE;
                            gKirbys[j].base.unkC |= 0x80000;
                            gKirbys[j].base.unkC |= 0x400000;
                            gKirbys[j].base.unkC &= ~0x40000;
                            sub_0805545C(&gKirbys[j]);
                            if (v14)
                                gKirbys[j].base.flags |= 0x400;
                            unk->unk6 |= 1 << j;
                            continue;
                        }
                    }
                    if (gKirbys[j].base.roomId != unk->roomId)
                        unk->unk6 &= ~(1 << j);
                }
            } else {
                --unk->unk4;
            }
        }
    }
}

void sub_08087A78(void) {
    struct Unk_08086C48 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    bool32 b = FALSE;
    u8 i;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == unk->roomId && !(gUnk_02026D50[gCurLevelInfo[i].unk65E] & 8))
            b = TRUE;
    }
    if (!b)
        TaskDestroy(gCurTask);
    else if (unk->obj && unk->obj->base.flags & 0x1000) {
        sub_080027A8();
        unk->obj = 0;
        gCurTask->main = sub_08087B58;
    }
}

void sub_08087B58(void) {
    struct Unk_08086C48 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    bool32 b = FALSE;
    u8 i;
    struct Unk_02022930_0 *v8;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == unk->roomId && !(gUnk_02026D50[gCurLevelInfo[i].unk65E] & 8))
            b = TRUE;
    }
    if (!b)
        TaskDestroy(gCurTask);
    else {
        u8 i;

        for (i = 0; i < gNumKirbys; ++i) {
            if (gKirbys[i].base.roomId == unk->roomId
                && (gKirbys[i].animationIndex > 0x2F && gKirbys[i].animationIndex < 0x34))
                return;
        }
        // TODO: we can probably use Macro_0810B1F4 here as long as unk0 is named correctly
        if (!(gUnk_03000510.unk4 & ((1 << unk->unk0) | 0x10)) && !--unk->unk4) {
            for (i = 0; i < gNumKirbys; ++i) {
                if (gKirbys[i].base.roomId == unk->roomId) {
                    unk->unk0 = i;
                    break;
                }
            }
            sub_08033540(unk->unk0);
            v8 = sub_0803CA20(unk->unk0);
            v8->unk4 = 0xFFFF;
            v8->unk6 = 0xFFFF;
            unk->unk4 = 0x28;
            gCurTask->main = sub_08087CEC;
        }
    }
}

void sub_08087CEC(void) {
    u8 m = 0, n = 0;
    struct Unk_08086C48 *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    bool32 b = FALSE;
    u8 i;
    struct Unk_02022930_0 *v7;
    u8 v9;

    for (i = 0; i < gNumKirbys; ++i) {
        if (gKirbys[i].base.roomId == unk->roomId && !(gUnk_02026D50[gCurLevelInfo[i].unk65E] & 8))
            b = TRUE;
    }
    if (!b)
        TaskDestroy(gCurTask);
    else if (!--unk->unk4) {
        v7 = sub_0803C95C(unk->unk0);
        v7->unk4 = 0xFFFF;
        v7->unk6 = 0xFFFF;
        TaskDestroy(gCurTask);
    } else if (unk->unk4 == 4) {
        u8 i;

        sub_080335B4(unk->unk0);
        for (i = 0; i < gNumKirbys; ++i) {
            struct Kirby *kirby = gKirbys + i;

            if (unk->roomId == kirby->base.roomId)
                ++n;
        }
        if (n == 1)
            v9 = 1;
        else
            v9 = (Rand16() & 1) + 2;
        for (i = 0; i < gNumKirbys; ++i) {
            struct Kirby *kirby = gKirbys + i;

            if (unk->roomId == kirby->base.roomId) {
                sub_0804BD98(&gKirbys[i], m, n, v9, gUnk_08352DBE[unk->unk1][0], gUnk_08352DBE[unk->unk1][1]);
                ++m;
            }
        }
    }
}

void sub_08087ECC(void) {
    bool32 b = TRUE;
    struct Unk_080880AC *tmp = TaskGetStructPtr(gCurTask), *unk = tmp;
    u8 i;

    for (i = 0; i < gNumKirbys; ++i) {
        struct Kirby *kirby = gKirbys + i;

        if (unk->unk2 == kirby->base.roomId) {
            unk->unk0 |= 1 << i;
            kirby->base.unk5C &= ~7;
            kirby->base.unk5C |= 6;
            b = FALSE;
        }
    }
    if (b) {
        for (i = 0; i < gNumKirbys; ++i) {
            struct Kirby *kirby = gKirbys + i;

            if ((unk->unk0 >> i) & 1) {
                kirby->base.unk5C &= ~7;
                kirby->base.unk5C |= 2;
            }
        }
        TaskDestroy(gCurTask);
    }
}

void sub_08087F98(void) {
    struct Unk_080880AC *unk = TaskGetStructPtr(gCurTask);
    struct Kirby *kirby = unk->unk4;

    if (!Macro_0810B1F4(&kirby->base)) {
        if (kirby->ability != KIRBY_ABILITY_NORMAL) {
            if (gLocalPlayerId == kirby->base.unk56)
                sub_08035E28(kirby->ability);
            TaskDestroy(gCurTask);
        } else {
            --unk->unk2;
            if (gLocalPlayerId == kirby->base.unk56) {
                sub_08035E28(unk->unk0);
                sub_08035F50(&kirby->base);
            }
            if (!unk->unk2) {
                if (gLocalPlayerId == kirby->base.unk56)
                    sub_08035E28(kirby->ability);
                TaskDestroy(gCurTask);
            }
        }
    }
}

void sub_08088060(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080854E8, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, NULL);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = kirby;
    unk->unk2 = 0;
    unk->unk0 = 0;
}

void sub_080880AC(struct Kirby *kirby, u32 a2) {
    struct Task *t = TaskCreate(sub_080850C8, sizeof(struct Unk_080880AC), a2 + 0x356E, TASK_USE_IWRAM, sub_080887A0);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = kirby;
    unk->unk2 = a2;
    unk->unk0 = 0;
    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 6;
}

void sub_08088118(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080863C0, sizeof(struct Unk_08088118), 0x3564, TASK_USE_IWRAM, sub_080887EC);
    struct Unk_08088118 *unk = TaskGetStructPtr(t);

    unk->kirby = kirby;
    unk->unk2 = 0;
    unk->kirbyAbility = kirby->ability;
}

void sub_08088178(struct Kirby *kirby, u32 a2) {
    struct Task *t = TaskCreate(sub_08085180, sizeof(struct Unk_080880AC), 0x356E, TASK_USE_IWRAM, sub_080887A0);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = kirby;
    unk->unk2 = a2;
    unk->unk0 = kirby->animationIndex;
    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 6;
}

// TODO: The function is never referenced so we don't know its arg type
void sub_080881E0(struct ObjectBase *objBase, u32 a2) {
    struct Task *t = TaskCreate(sub_080856F4, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, sub_08088884);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = objBase;
    unk->unk2 = a2;
    unk->unk0 = 0;
}

// TODO: The function is never referenced so we don't know its arg type
void sub_08088234(struct ObjectBase *objBase, u8 a2, u16 a3) {
    struct Task *t = TaskCreate(sub_080859B4, sizeof(struct Unk_08088234), 0x3500, TASK_USE_IWRAM, NULL);
    struct Unk_08088234 *unk = TaskGetStructPtr(t);

    unk->unk4 = objBase->unk56;
    unk->unk2 = a3;
    unk->unk0 = a2;
    *GetStateSlot(STATE_SLOT_ROOM, unk->unk0, gCurLevelInfo[objBase->unk56].unk65E) = unk->unk2;
}

void sub_080882B4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08085A54, sizeof(struct Unk_080882B4), 0x3500, TASK_USE_IWRAM, NULL);
    struct Unk_080882B4 *unk = TaskGetStructPtr(t);

    unk->unk8 = kirby;
    unk->unk2 = 0;
    unk->unk0 = 0;
    unk->unk4 = 0x80;
    unk->unk6 = 0;
    gCurLevelInfo[kirby->base.unk56].unk1EC = 2;
}

// TODO: The function is never referenced so we don't know its arg type
void sub_08088324(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080888B8, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, sub_0808891C);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = objBase;
    unk->unk2 = 200;
    unk->unk0 = 0;
    sub_08033540(objBase->unk56);
    objBase->flags |= 0x2000;
}

void sub_0808838C(void) {
    gUnk_0300051C = 0;
}

struct Object7 *sub_08088398(struct Object *obj, const struct AnimInfo *a2) {
    struct Task *t = TaskCreate(sub_08085E60, sizeof(struct Object7), 0x3500, TASK_USE_IWRAM, sub_0808895C);
    struct Object7 *obj7 = TaskGetStructPtr(t);

    obj7->unk8 = obj;
    obj7->unk4 = a2;
    obj7->unk1 = 0;
    obj7->unk0 = obj->base.sprite.palId;
    obj7->unk2 = obj->base.roomId;
    return obj7;
}

// TODO: The function is never referenced so we don't know its arg type
void sub_08088400(struct Object7 *obj7, const struct AnimInfo *a2) {
    obj7->unk4 = a2;
    obj7->unk0 &= 0xF;
}

void sub_0808840C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080864E8, sizeof(struct Unk_08088118), 0x3500, TASK_USE_IWRAM, sub_080889C0);
    struct Unk_08088118 *unk = TaskGetStructPtr(t);

    unk->kirby = kirby;
    unk->unk2 = 0;
    unk->kirbyAbility = KIRBY_ABILITY_NORMAL;
}

void sub_0808845C(struct Object *obj, u16 a2) {
    if (!(obj->base.flags & 0x1000000)) {
        struct Task *t = TaskCreate(sub_080865E8, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, NULL);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = obj;
        unk->unk2 = a2;
        unk->unk0 = 0;
        obj->base.flags |= 0x1000000;
    }
}

void sub_080884C4(struct Object *obj) {
    if (!(obj->base.unk5C & 0x10000)) {
        struct Task *t = TaskCreate(sub_0808668C, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, NULL);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = obj;
        unk->unk2 = 0;
        unk->unk0 = 0;
        obj->base.unk5C |= 0x10000;
    }
}

void sub_08088528(struct Object *obj) {
    struct Task *t = TaskCreate(sub_08086E50, sizeof(struct Unk_08086C48), 0x2F9C, TASK_USE_IWRAM, NULL);
    struct Unk_08086C48 *unk = TaskGetStructPtr(t);

    unk->unk6 = 0x1C;
    unk->roomId = obj->base.roomId;
    unk->obj = obj;
    sub_080860A8(&obj->base, gUnk_08350E34);
    RequestScreenShake(4, &obj->base);
    sub_08033540(obj->base.unk56);
}

void sub_0808859C(struct Object *obj, u16 a2, u16 a3) {
    struct Task *t = TaskCreate(sub_0808781C, sizeof(struct Unk_0808859C), 0x3500, TASK_USE_IWRAM, NULL);
    struct Unk_0808859C *unk = TaskGetStructPtr(t);

    unk->unk2 = a2;
    unk->roomId = obj->base.roomId;
    unk->unk4 = a3;
    unk->unk6 = 0;
}

void sub_080885F8(struct Object *obj) {
    u16 v2 = 240;
    u16 v3 = gUnk_08350E98[obj->subtype];

    if (obj->objTemplate->subtype2 > 2)
        v2 = 420;
    sub_080886A8(&obj->base);
    sub_08088700(&obj->base, obj->objTemplate->subtype2 + 0xD);
    sub_0808859C(obj, v3, v2);
}

void sub_08088640(struct Kirby *kirby, u8 a2, u16 a3) {
    if (gLocalPlayerId == kirby->base.unk56) {
        struct Task *t = TaskCreate(sub_08087F98, sizeof(struct Unk_080880AC), 0x3500, TASK_USE_IWRAM, NULL);
        struct Unk_080880AC *unk = TaskGetStructPtr(t);

        unk->unk4 = kirby;
        unk->unk2 = a3;
        unk->unk0 = a2;
    }
}

void sub_080886A8(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08087ECC, sizeof(struct Unk_080880AC), 0x3596, TASK_USE_IWRAM, NULL);
    struct Unk_080880AC *unk = TaskGetStructPtr(t);

    unk->unk4 = NULL;
    unk->unk2 = objBase->roomId;
    unk->unk0 = 0;
}

void sub_08088700(struct ObjectBase *objBase, u16 a2) {
    struct Task *t = TaskCreate(sub_08087770, sizeof(struct Unk_08088700), 0x3500, TASK_USE_IWRAM, sub_08088A04);
    struct Unk_08088700 *unk = TaskGetStructPtr(t);

    unk->unk4 = NULL;
    unk->unk2 = a2;
    unk->roomId = objBase->roomId;
    *GetStateSlot(STATE_SLOT_SESSION, a2, 0) = 1;
}

void sub_0808876C(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct Kirby *kirby = unk->unk4;

    kirby->base.flags &= ~0x2800808;
}

void sub_080887A0(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct Kirby *kirby = unk->unk4;

    kirby->base.unk5C &= ~7;
    kirby->base.unk5C |= 2;
    if (!(kirby->base.unkC & 0x200))
        sub_0803E558(kirby->base.unk56);
}

void sub_080887EC(struct Task *t) {
    struct Unk_08088118 *unk = TaskGetStructPtr(t);
    struct Kirby *kirby = unk->kirby;

    if (!(kirby->base.unkC & 0x200))
        sub_0803E558(kirby->base.unk56);
}

void sub_0808882C(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct Object *obj = unk->unk4;

    obj->base.flags &= ~0x8000;
    if (unk->unk0 && obj->base.header.kind == 1 && ObjType38To52(obj))
        obj->base.unk68 |= 0x80;
}

void sub_08088884(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct ObjectBase *objBase = unk->unk4;

    objBase->flags &= ~0x400;
}

void sub_080888B8(void) {
    struct Unk_080880AC *unk = TaskGetStructPtr(gCurTask);
    struct ObjectBase *objBase = unk->unk4;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase->flags |= 0x2000;
        if (!--unk->unk2)
            TaskDestroy(gCurTask);
    }
}

void sub_0808891C(struct Task *t) {
    struct Unk_080880AC *unk = TaskGetStructPtr(t);
    struct ObjectBase *objBase = unk->unk4;

    sub_080335B4(objBase->unk56);
    objBase->flags &= ~0x2000;
}

void sub_0808895C(struct Task *t) {
    struct Object7 *obj7 = TaskGetStructPtr(t);

    if (gKirbys[gLocalPlayerId].base.roomId == obj7->unk2 && !obj7->unk8)
        gUnk_0300051C &= ~(1 << (obj7->unk0 & 0xF));
}

void sub_080889C0(struct Task *t) {
    struct Unk_08088118 *unk = TaskGetStructPtr(t);
    struct Kirby *kirby = unk->kirby;

    if (kirby->base.unk56 == gLocalPlayerId)
        m4aSongNumStop(SE_PHONE_RING);
}

void sub_08088A04(struct Task *t) {
    struct Unk_08088700 *unk = TaskGetStructPtr(t);

    *GetStateSlot(STATE_SLOT_SESSION, unk->unk2, 0) = 0;
}

void sub_08088A38(struct Object *obj, s16 a2, s16 a3, u8 a4) {
    struct Task *t = TaskCreate(sub_08087A78, sizeof(struct Unk_08086C48), 0x2F9C, TASK_USE_IWRAM, NULL);
    struct Unk_08086C48 *unk = TaskGetStructPtr(t);
    struct Object *tomato;

    unk->roomId = obj->base.roomId;
    unk->unk4 = 0xB4;
    unk->unk0 = 0;
    unk->unk1 = a4;
    tomato = BonusCreateTomatoAt(obj, a2, a3);
    unk->obj = tomato;
    CreateEffectObject(&tomato->base, 0, 0x28F, 3);
}

void sub_08088AC8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08088C0C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= (gUnk_08350EA0[(Rand16() & 0xF) * 2] * 0x100);
    } else {
        effect->x += (gUnk_08350EA0[(Rand16() & 0xF) * 2] * 0x100);
    }
    effect->y -= gUnk_08350EA0[(Rand16() & 0xF) * 2 + 1] * 0x100;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010200, 0x14, 0, 0xA);
    effect->sprite.palId = kirby->base.unk56;
}

void sub_08088C0C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby, *kirby2;
    s32 a;
    u32 b;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        kirby = effect->parent;
        if ((kirby->animationIndex < 0x1A || kirby->animationIndex > 0x1B) && kirby->animationIndex != 0x6A && kirby->animationIndex != 0x6B && kirby->animationIndex != 0x1D) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08088D38;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08088D38:
            KirbySomething(effect);
        }
        if (!(abs(kirby->base.x - effect->x) & 0xFFFFF000)) {
            if (kirby->animationIndex == 0x6B) {
                if (kirby->base.flags & 1)
                    effect->x -= (gUnk_08350EC0[2 * (Rand16() & 0xF)] * 0x100);
                else
                    effect->x += (gUnk_08350EC0[2 * (Rand16() & 0xF)] * 0x100);
                effect->y -= gUnk_08350EC0[2 * (Rand16() & 0xF) + 1] * 0x100;
            } else {
                if (kirby->base.flags & 1)
                    effect->x -= (gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100);
                else
                    effect->x += (gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100);
                effect->y -= gUnk_08350EA0[2 * (Rand16() & 0xF) + 1] * 0x100;
            }
            effect->unk3C = 0;
            effect->flags |= 4;
        }
        if (effect->flags & 1) {
            effect->unk3C += 0x60;
            if (kirby->animationIndex == 0x6B)
                effect->unk3C += 0x30;
        } else {
            effect->unk3C -= 0x60;
            if (kirby->animationIndex == 0x6B)
                effect->unk3C -= 0x30;
        }
        b = abs(kirby->base.y - effect->y) & 0xFFFFFF00;
        a = abs(kirby->base.x - effect->x);
        b >>= ((a >> 0xC) + 1);
        effect->unk3E = b;
        if (kirby->base.y - effect->y > 0)
            effect->unk3E = -effect->unk3E;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08088F84(struct Kirby *kirby, s16 a2, s16 a3) {
    struct Task *t = TaskCreate(sub_08089050, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x800;
    effect->x = a2 * 0x1000 + 0x800;
    effect->y = a3 * 0x1000 + 0x800;
    effect->unk3C = effect->x - kirby->base.x;
    effect->unk3E = effect->y - kirby->base.y;
    ++kirby->inhaling;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x295, 1, 0xA);
}

void sub_08089050(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080890E4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080890E4:
            KirbySomething(effect);
        }
        if ((kirby->animationIndex < 0x1A || kirby->animationIndex > 0x1B) && kirby->animationIndex != 0x6A && kirby->animationIndex != 0x6B && kirby->animationIndex != 0x1C) {
            struct EffectObject *v7;

            if (kirby->inhaling) --kirby->inhaling;
            v7 = CreateEffectObject(&kirby->base, 0, 0x292, 0);
            v7->x = effect->x;
            v7->y = effect->y;
            effect->flags |= 0x1000;
            return;
        }
        if (abs(effect->unk3C) < 0x1200) {
            if (kirby->ability == KIRBY_ABILITY_THROW) {
                sub_08063D98(kirby, 0);
                sub_0807A7E8(&effect->header);
            }
            else {
                sub_080547C4(kirby, 0);
            }
            effect->flags |= 0x1000;
            return;
        }
        effect->unk4 += 0x2A;
        if (effect->unk3C > 0)
            effect->unk3C -= effect->unk4;
        else
            effect->unk3C += effect->unk4;
        if (effect->unk3E > 0)
            effect->unk3E -= effect->unk3E >> 3;
        else if (effect->unk3E < 0)
            effect->unk3E += -effect->unk3E >> 3;
        effect->x = kirby->base.x + effect->unk3C;
        effect->y = kirby->base.y + effect->unk3E;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_0808925C(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08089350, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);
    u16 v5;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    v5 = Rand16() & 7;
    effect->unk4 = v5 << 8;
    effect->x += gUnk_08350EE0[v5][0] * 0x100;
    effect->y += gUnk_08350EE0[v5][1] * 0x100;
    effect->unk3C = gUnk_08350EF0[2 * v5][0];
    effect->unk3E = gUnk_08350EF0[2 * v5][1];
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x291, 0, 9);
}

void sub_08089350(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080893E4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080893E4:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if ((effect->unk4 & 0xF) == 3) {
            effect->unk3C = gUnk_08350EF0[2 * effect->header.kind + 1][0];
            effect->unk3E = gUnk_08350EF0[2 * effect->header.kind + 1][1];
        }
        if ((effect->unk4 & 0xF) == 6) {
            effect->unk3C = 0;
            effect->unk3E = 0;
        }
        if ((effect->unk4 & 0xF) == 0xF) {
            effect->flags |= 0x1000;
        }
        else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

// TODO: The function is never referenced so we don't know its arg type
void sub_08089538(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08089618, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);
    u16 v5;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    v5 = Rand16() & 7;
    effect->unk4 = v5 * 0x100;
    effect->x += gUnk_08350EE0[v5][0] * 0x100;
    effect->y += gUnk_08350EE0[v5][1] * 0x100;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2A3, 0, 8);
}

void sub_08089618(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _080896AC;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080896AC:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else
            EffectObjectPostUpdate(effect);
    }
}

void sub_080897A0(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_0808994C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x300;
        effect->unk3E = 0;
    } else {
        effect->unk3C = -0x300;
        effect->unk3E = 0;
    }
    effect->y += 0x400;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 0, 0xA);
}

void sub_08089864(struct ObjectBase *objBase, s8 a2, s8 a3, u32 a4) {
    struct Task *t = TaskCreate(sub_0808994C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk3E = 0;
    effect->y += a3 * 0x100;
    if (a4 & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x300;
        effect->x -= a2 * 0x100;
    } else {
        effect->unk3C = -0x300;
        effect->x += a2 * 0x100;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 0, 0xA);
}

void sub_0808994C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _080899E0;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080899E0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            if (effect->flags & 1)
                effect->unk3E += 0x20;
            else
                effect->unk3E += 0x20;
            if (effect->unk4 == 5)
                sub_0808A0F8(effect);
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

void sub_08089B14(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08089BCC, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x300;
        effect->unk3E = 0;
    } else {
        effect->unk3C = -0x300;
        effect->unk3E = 0;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 0, 0xA);
}

void sub_08089BCC(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _08089C60;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08089C60:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            if (effect->flags & 1)
                effect->unk3E += 0x20;
            else
                effect->unk3E += 0x20;
            if (effect->unk4 == 5) {
                effect->unk3C = 0;
                sub_0808A0F8(effect);
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

void sub_08089D98(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08089E50, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x300;
        effect->unk3E = 0;
    } else {
        effect->unk3C = -0x300;
        effect->unk3E = 0;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 0, 0xA);
}

void sub_08089E50(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby = effect->parent;
        ++kirby; --kirby; // swap registers
        if (kirby) {
            if (kirby->base.header.kind && kirby->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby = NULL;
            }
            if (!kirby) goto _08089EE8;
            if (Macro_0810B1F4(&kirby->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08089EE8:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        kirby2 = effect->parent;
        if (effect->unk4 == 5)
            sub_0808A0F8(effect);
        if (effect->flags & 2) {
            if (effect->unk8 == 0) {
                if (effect->flags & 1)
                    effect->unk3C = 0x240;
                else
                    effect->unk3C = -0x240;
                effect->unk3E = 0x40;
                effect->flags |= 4;
            } else if (effect->unk8 == 1) {
                if (effect->flags & 1)
                    effect->unk3C = 0x120;
                else
                    effect->unk3C = -0x120;
                effect->unk3E = 0x40;
                effect->sprite.animId = 0x293;
                effect->sprite.variant = 3;
            }
            effect->x = kirby2->base.x;
            effect->y = kirby2->base.y;
            effect->unk4 = 0;
            if (++effect->unk8 == 3) {
                effect->flags |= 0x1000;
                return;
            }
        }
        switch (effect->unk8) {
        case 0:
            if (effect->flags & 1)
                effect->unk3E += 0x20;
            else
                effect->unk3E += 0x20;
            break;
        case 1:
            if (effect->flags & 1)
                effect->unk3C -= 0x10;
            else
                effect->unk3C += 0x10;
            effect->unk3E += 0x20;
            break;
        case 2:
            if (effect->flags & 1)
                effect->unk3C -= 0x18;
            else
                effect->unk3C += 0x18;
            effect->unk3E += 0x20;
            break;
        }
        if (effect->flags & 2 && kirby2->animationIndex != 0xD)
            effect->flags |= 0x1000;
        else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

void sub_0808A0F8(struct EffectObject *effect2) {
    struct Task *t = TaskCreate(sub_0808A208, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = effect2->x;
    effect->y = effect2->y;
    effect->parent = effect2;
    effect->roomId = effect2->roomId;
    effect->parent = effect2->parent;
    if (effect2->flags & 1) {
        effect->flags |= 1;
        effect->x += 1 + (Rand16() & 7);
        effect->y -= 1 + (Rand16() & 7);
    } else {
        effect->x -= 1 + (Rand16() & 7);
        effect->y -= 1 + (Rand16() & 7);
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 4, 0xA);
}

void sub_0808A208(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase = effect->parent; // UB: parent is actually struct EffectObject *
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808A2A0;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808A2A0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 1) {
            effect->unk3C += 0x40;
            effect->unk3E += 0x40;
        } else {
            effect->unk3C -= 0x40;
            effect->unk3E += 0x40;
        }
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

void sub_0808A3E0(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_0808A490, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk3C = -0x240;
    effect->unk3E = -0x40;
    effect->x -= 0xC00;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 1, 0xA);
}

void sub_0808A490(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (Macro_0810B1F4(objBase)) {
            s32 var;

            effect->sprite.x = ((effect->x + (effect->objBase54 * 0x100)) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            var = ((objBase->x + (objBase->x - effect->x)) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.x = effect->objBase54 + var;
            effect->sprite.unk8 |= 0x400;
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            effect->sprite.unk8 &= ~0x400;
        } else {
            Macro_0809E55C(effect);
            if (effect->flags & 2) {
                effect->flags |= 0x1000;
                return;
            }
            effect->unk3C += 0x18;
            effect->unk3E += 0x20;
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            Macro_080FC150(effect, &effect->sprite);
            if (!(effect->flags & 0x400)) {
                s32 var;

                if (gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    effect->sprite.x += gUnk_0203AD18[0];
                    effect->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, &effect->sprite);
                }
                var = ((objBase->x + (objBase->x - effect->x)) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                effect->sprite.x = effect->objBase54 + var;
                effect->sprite.unk8 |= 0x400;
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    effect->sprite.x += gUnk_0203AD18[0];
                    effect->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, &effect->sprite);
                }
                effect->sprite.unk8 &= ~0x400;
            }
        }
    }
}

void sub_0808A90C(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_0808A9C4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk3C = -0x600;
    effect->unk3E = -0x200;
    effect->y -= 0x600;
    effect->x -= 0xC00;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 2, 0xA);
}

void sub_0808A9C4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (Macro_0810B1F4(objBase)) {
            s32 var;

            effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            var = ((objBase->x + (objBase->x - effect->x)) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.x = effect->objBase54 + var;
            effect->sprite.unk8 |= 0x400;
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            effect->sprite.unk8 &= ~0x400;
        } else {
            Macro_0809E55C(effect);
            if (effect->flags & 2) {
                effect->flags |= 0x1000;
                return;
            }
            effect->unk3C += 0xC0;
            effect->unk3E += 0x40;
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            Macro_080FC150(effect, &effect->sprite);
            if (!(effect->flags & 0x400)) {
                s32 var;

                if (gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    effect->sprite.x += gUnk_0203AD18[0];
                    effect->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, &effect->sprite);
                }
                var = ((objBase->x + (objBase->x - effect->x)) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                effect->sprite.x = effect->objBase54 + var;
                effect->sprite.unk8 |= 0x400;
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    effect->sprite.x += gUnk_0203AD18[0];
                    effect->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, &effect->sprite);
                }
                effect->sprite.unk8 &= ~0x400;
            }
        }
    }
}

struct EffectObject *CreateEffectObject(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    struct Task *t = TaskCreate(sub_0808AF48, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    if (a2) {
        if (a2 > 0x400) {
            effect->flags |= 0x4000;
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
        } else {
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
            effect->objBase54 = a2;
        }
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, a3, a4, 0xC);
    }
    return effect;
}

void sub_0808AF48(void) {
    s8 numTiles = 0;
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite sprite;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->objBase54) {
            numTiles = effect->objBase54;
            Macro_08107BA8_4(effect, &effect->sprite, &sprite, numTiles, &effect->sprite);
            effect->objBase54 = 0;
        }
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808B0E8;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                effect->objBase54 = numTiles;
                return;
            }
        } else {
            struct EffectObject *obj;
            u8 r3;

        _0808B0E8:
            obj = effect;
            r3 = 0;
            if (gKirbys[0].base.roomId != effect->roomId) {
                r3 = 1;
                if (gKirbys[1].base.roomId != effect->roomId) {
                    r3 = 2;
                    if (gKirbys[2].base.roomId != effect->roomId) {
                        r3 = 3;
                        if (gKirbys[3].base.roomId != effect->roomId)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(obj->flags & 0x2000)) {
                EffectObjectDisplaySprite(obj);
                effect->objBase54 = numTiles;
                return;
            }
        }
        Macro_0809E55C(effect);
        effect->x += effect->unk3C;
        effect->y -= effect->unk3E;
#ifndef NONMATCHING
        asm("":::"ip");
#endif
        effect->unk3C += effect->unk4;
        effect->unk3E += effect->unk8;
        if (effect->flags & 2) {
            effect->flags |= 0x1000;
        } else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            effect->objBase54 = numTiles;
        }
    }
}

struct EffectObject *sub_0808B248(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    struct Task *t = TaskCreate(sub_0808B360, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    if (a2) {
        if (a2 > 0x400) {
            effect->flags |= 0x4000;
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
        } else {
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
            effect->objBase54 = a2;
        }
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, a3, a4, 0xC);
    }
    return effect;
}

void sub_0808B360(void) {
    s8 numTiles = 0;
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite sprite;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->objBase54) {
            numTiles = effect->objBase54;
            Macro_08107BA8_4(effect, &effect->sprite, &sprite, numTiles, &effect->sprite);
            effect->objBase54 = 0;
        }
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808B4E0;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                effect->objBase54 = numTiles;
                return;
            }
        } else {
            struct EffectObject *obj;
            u8 r3;

        _0808B4E0:
            obj = effect;
            r3 = 0;
            if (gKirbys[0].base.roomId != effect->roomId) {
                r3 = 1;
                if (gKirbys[1].base.roomId != effect->roomId) {
                    r3 = 2;
                    if (gKirbys[2].base.roomId != effect->roomId) {
                        r3 = 3;
                        if (gKirbys[3].base.roomId != effect->roomId)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(obj->flags & 0x2000)) {
                EffectObjectDisplaySprite(obj);
                effect->objBase54 = numTiles;
                return;
            }
        }
        Macro_0809E55C(effect);
        if (sub_0803D8AC(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        effect->x += effect->unk3C;
        effect->y -= effect->unk3E;
        effect->unk3C += effect->unk4;
        effect->unk3E += effect->unk8;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
        effect->objBase54 = numTiles;
    }
}

struct EffectObject *sub_0808B62C(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4, u16 a5) {
    struct Task *t = TaskCreate(sub_0808B754, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk4 = a5;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    if (a2) {
        if (a2 > 0x400) {
            effect->flags |= 0x4000;
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
        } else {
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
            effect->objBase54 = a2;
        }
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, a3, a4, 0xC);
    }
    return effect;
}

void sub_0808B754(void) {
    s8 numTiles = 0;
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite sprite;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (((struct ObjectBase *)effect->parent)->flags & 0x1000) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->objBase54) {
            numTiles = effect->objBase54;
            Macro_08107BA8_4(effect, &effect->sprite, &sprite, numTiles, &effect->sprite);
            effect->objBase54 = 0;
        }
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808B900;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                effect->objBase54 = numTiles;
                return;
            }
        } else {
            struct EffectObject *obj;
            u8 r3;

        _0808B900:
            obj = effect;
            r3 = 0;
            if (gKirbys[0].base.roomId != effect->roomId) {
                r3 = 1;
                if (gKirbys[1].base.roomId != effect->roomId) {
                    r3 = 2;
                    if (gKirbys[2].base.roomId != effect->roomId) {
                        r3 = 3;
                        if (gKirbys[3].base.roomId != effect->roomId)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(obj->flags & 0x2000)) {
                EffectObjectDisplaySprite(obj);
                effect->objBase54 = numTiles;
                return;
            }
        }
        Macro_0809E55C(effect);
        effect->x += effect->unk3C;
        effect->y -= effect->unk3E;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        if (effect->unk4) {
            if (effect->flags & 2) {
                if (--effect->unk4)
                    effect->flags |= 4;
                else if (!(effect->flags & 0x8000))
                    effect->flags |= 0x1000;
            }
        } else {
            effect->flags |= 4;
        }
        EffectObjectPostUpdate(effect);
        effect->objBase54 = numTiles;
    }
}

// a1 can be struct Object * or struct Kirby *
struct EffectObject *sub_0808BA6C(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    struct Task *t = TaskCreate(sub_0808BB98, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    if (a2) {
        if (a2 > 0x400) {
            effect->flags |= 0x4000;
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
        } else {
            EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
            effect->objBase54 = a2;
        }
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, a3, a4, 0xC);
    }
    return effect;
}

void sub_0808BB98(void) {
    s8 numTiles = 0;
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite sprite;
    struct ObjectBase *objBase, *objBase2;

    objBase2 = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (objBase2->flags & 0x1000) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->objBase54) {
            numTiles = effect->objBase54;
            Macro_08107BA8_4(effect, &effect->sprite, &sprite, numTiles, &effect->sprite);
            effect->objBase54 = 0;
        }
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808BD44;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                effect->objBase54 = numTiles;
                return;
            }
        } else {
            struct EffectObject *obj;
            u8 r3;

        _0808BD44:
            obj = effect;
            r3 = 0;
            if (gKirbys[0].base.roomId != effect->roomId) {
                r3 = 1;
                if (gKirbys[1].base.roomId != effect->roomId) {
                    r3 = 2;
                    if (gKirbys[2].base.roomId != effect->roomId) {
                        r3 = 3;
                        if (gKirbys[3].base.roomId != effect->roomId)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(obj->flags & 0x2000)) {
                EffectObjectDisplaySprite(obj);
                effect->objBase54 = numTiles;
                return;
            }
        }
        Macro_0809E55C(effect);
        if (effect->sprite.tilesVram < 0x6012000) {
            if (Macro_08091C7C(effect)) return;
        }
        effect->x = objBase2->x;
        effect->y = objBase2->y;
        if (effect->flags & 2 || objBase2->flags & 0x400) {
            effect->flags |= 0x1000;
            return;
        }
        EffectObjectPostUpdate(effect);
        effect->objBase54 = numTiles;
    }
}

struct EffectObject *sub_0808BEA4(struct Kirby *kirby, u32 a2, u16 a3, u8 a4, u32 a5) {
    struct Task *t = TaskCreate(sub_0808BF88, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    if (a5 & 0x4000)
        effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC);
    return effect;
}

void sub_0808BF88(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2 = kirby;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (Macro_08091C7C(effect)) return;
        effect->x = kirby2->base.x;
        effect->y = kirby2->base.y;
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            u8 unk1C = effect->sprite.unk1C;

            if (!effect->sprite.animId) return;
            effect->sprite.unk1C = 0;
            Macro_080FC150(effect, &effect->sprite);
            effect->sprite.unk1C = unk1C;
            if (gLocalPlayerId == kirby->base.unk56) {
                effect->sprite.x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                effect->sprite.y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
        } else {
            if (effect->flags & 2) {
                effect->flags |= 0x1000;
                return;
            }
            if (effect->sprite.animId == 0x1B6 && kirby->animationIndex != 0x35) {
                effect->flags |= 0x1000;
                return;
            }
            Macro_080FC150(effect, &effect->sprite);
            if (gLocalPlayerId == kirby->base.unk56) {
                effect->sprite.x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                effect->sprite.y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
        }
    }
}

void sub_0808C464(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_0808C538, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    effect->unk3C = -0x100;
    if (objBase->flags & 1) {
        effect->unk3C = 0x100;
        effect->flags |= 1;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x28C, 3, 0xB);
}

void sub_0808C538(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase = effect->parent;
        if (objBase) {
            if (objBase->header.kind && objBase->flags & 0x1000) {
                effect->parent = NULL;
                objBase = NULL;
            }
            if (!objBase) goto _0808C5CC;
            if (Macro_0810B1F4(objBase) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
            struct EffectObject *obj;
            u8 r3;

        _0808C5CC:
            obj = effect;
            r3 = 0;
            if (gKirbys[0].base.roomId != effect->roomId) {
                r3 = 1;
                if (gKirbys[1].base.roomId != effect->roomId) {
                    r3 = 2;
                    if (gKirbys[2].base.roomId != effect->roomId) {
                        r3 = 3;
                        if (gKirbys[3].base.roomId != effect->roomId)
                            r3 = 4;
                    }
                }
            }
            if (gUnk_03000510.unk4 & ((1 << r3) | 0x10) && !(obj->flags & 0x2000)) {
                EffectObjectDisplaySprite(obj);
                return;
            }
        }
        Macro_0809E55C(effect);
        effect->flags |= 4;
        if (effect->unk4 > 6)
            effect->flags |= 0x1000;
        else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
            ++effect->unk4;
        }
    }
}

void sub_0808C6F4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808C828, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100;
    } else {
        effect->x += gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100;
    }
    effect->y -= gUnk_08350EA0[2 * (Rand16() & 0xF) + 1] * 0x100;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x291, 0, 9);
}

void sub_0808C828(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby, *kirby2;
    s32 a;
    u32 b;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby = effect->parent;
        if (kirby) {
            if (kirby->base.header.kind && kirby->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby = NULL;
            }
            if (!kirby) goto _0808C8B8;
            if (Macro_0810B1F4(&kirby->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808C8B8:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        kirby2 = effect->parent;
        if (kirby2->animationIndex != 0x1A && kirby2->animationIndex != 0x1B && kirby2->animationIndex != 0x1D) {
            effect->flags |= 0x1000;
            return;
        }
        if (!(abs(kirby2->base.x - effect->x) & 0xFFFFF000)) {
            if (kirby2->animationIndex == 0x6B) {
                if (kirby2->base.flags & 1)
                    effect->x -= (gUnk_08350EC0[2 * (Rand16() & 0xF)] * 0x100);
                else
                    effect->x += (gUnk_08350EC0[2 * (Rand16() & 0xF)] * 0x100);
            } else {
                if (kirby2->base.flags & 1)
                    effect->x -= (gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100);
                else
                    effect->x += (gUnk_08350EA0[2 * (Rand16() & 0xF)] * 0x100);
            }
            effect->y -= gUnk_08350EA0[2 * (Rand16() & 0xF) + 1] * 0x100;
            effect->unk3C = 0;
            effect->flags |= 4;
        }
        if (effect->flags & 1) {
            effect->unk3C += 0x60;
            if (kirby2->animationIndex == 0x6B)
                effect->unk3C += 0x30;
        } else {
            effect->unk3C -= 0x60;
            if (kirby2->animationIndex == 0x6B)
                effect->unk3C -= 0x30;
        }
        b = abs(kirby2->base.y - effect->y) & 0xFFFFFF00;
        if (kirby2->base.x - effect->x >= 0) {
            a = (kirby2->base.x - effect->x) >> 0xC;
        } else {
            a = (effect->x - kirby2->base.x) >> 0xC;
        }
        b >>= a + 1;
        effect->unk3E = b;
        if (kirby2->base.y - effect->y > 0)
            effect->unk3E = -effect->unk3E;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_0808CBCC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808CC78, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->flags |= 0x400;
    effect->unk3C = 0;
    effect->unk3E = 0x100;
    effect->unk8 = 0;
    effect->flags &= ~0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2A0, 0, 0xC);
}

void sub_0808CC78(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (kirby) { ++kirby; --kirby; } // dead code optimized out?
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808CD10;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808CD10:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->roomId != kirby->base.roomId)
            effect->flags |= 0x1000;
        else {
            if (!(kirby->base.unk58 & 2) || kirby->base.flags & 0x1000000)
                effect->unk8 = 1;
            if (effect->unk4 > 0x100) {
                effect->flags |= 4;
                effect->flags &= ~0x400;
                if (effect->x <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.x
                    && effect->x >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.x
                    && effect->y <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.y
                    && effect->y >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.y) {
                    u32 v14;

                    v14 = gCollisionAttributes[
                        GetCollisionTile(kirby->base.unk56, effect->x >> 0xC, (effect->y - 0x800) >> 0xC)
                    ];
                    if (!(effect->flags & 0x800)) {
                        effect->x += effect->unk3C;
                        effect->y -= effect->unk3E;
                    }
                    if (!(v14 & 2)) {
                        effect->flags |= 0x400;
                        effect->unk4 = 0;
                        if (effect->unk8) {
                            effect->flags |= 0x1000;
                            return;
                        }
                    }
                } else {
                    effect->flags |= 0x400;
                    effect->unk4 = 0;
                    if (effect->unk8) {
                        effect->flags |= 0x1000;
                        return;
                    }
                }
            } else {
                u8 v19;
                const u32 *table;

                effect->x = kirby->base.x;
                effect->y = kirby->base.y;
                table = gCollisionAttributes;
                v19 = 0;
                if (effect->x >> 0xC <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.x >> 0xC
                    && effect->x >> 0xC >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.x >> 0xC
                    && effect->y >> 0xC <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.y >> 0xC
                    && effect->y >> 0xC >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.y >> 0xC) {
                    v19 = GetCollisionTile(kirby->base.unk56, effect->x >> 0xC, effect->y >> 0xC);
                }
                if (table[v19] & 2)
                    ++effect->unk4;
                if (effect->unk8) {
                    effect->flags |= 0x1000;
                    return;
                }
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808CFC0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808D100, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->unk3C = 0xC0;
    effect->unk3E = 0x80;
    if (effect->flags & 1)
        effect->unk3C = 0;
    effect->x += ((Rand16() & 7) - 7) * 0x100;
    effect->y += ((Rand16() & 7) - 0xB) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x297, 1, (kirby->base.sprite.unk14 >> 6) - 1);
}

void sub_0808D100(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->flags & 0x2000 && !Macro_0810B1F4(&kirby->base))
            effect->flags &= ~0x2000;
        if (kirby->ability != KIRBY_ABILITY_FIRE) {
            effect->flags |= 0x1000;
            return;
        }
        if (kirby->animationIndex > 0x2F) {
            effect->x = kirby->base.x;
            effect->y = kirby->base.y - 0x800;
            return;
        }
        if (sub_0805BEC4(kirby))
            return;
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808D21C;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808D21C:
            KirbySomething(effect);
        }
        if (effect->unk4) {
            --effect->unk4;
            return;
        }
        if (effect->flags & 1)
            effect->unk3C += 0x10;
        else
            effect->unk3C -= 0x10;
        if (effect->header.unk1 > 9)
            effect->unk3E = 0x200;
        else if (effect->header.unk1 > 5)
            effect->unk3E = 0x100;
        if (effect->header.unk1 == 0xB) {
            effect->flags ^= 1;
            effect->x = kirby->base.x;
            effect->y = kirby->base.y - 0x800;
            switch (kirby->animationIndex) {
            case 0xC:
            case 0x2F:
                if (kirby->base.flags & 1)
                    effect->x += 0xC00;
                else
                    effect->x -= 0xC00;
                effect->y += 0x400;
                break;
            case 1:
            case 3:
            case 5:
            case 7:
            case 9:
            case 0x29:
                effect->y += 0x600;
                break;
            case 0x2D:
                effect->y -= 0x800;
                break;
            case 0x2E:
                effect->y += 0x400;
                break;
            case 0x1F:
                if (kirby->base.header.unk1 < 2)
                    effect->y -= 0x400;
                else if (kirby->base.header.unk1 < 4)
                    effect->y += 0x600;
                else
                    effect->y -= 0x400;
                break;
            case 0x20:
            case 0x21:
            case 0x22:
            case 0x23:
            case 0x24:
                effect->y -= 0x400;
                break;
            case 0xD:
                if (kirby->base.flags & 1)
                    effect->x += 0x800;
                else
                    effect->x -= 0x800;
                effect->y += 0x800;
                break;
            case 0xE:
                if (kirby->base.flags & 1)
                    effect->x += 0x800;
                else
                    effect->x -= 0x800;
                effect->y += 0x400;
                break;
            case 0x10:
                if (kirby->base.header.unk1 < 2)
                    effect->y += 0x800;
                else if (kirby->base.header.unk1 < 6)
                    effect->y += 0x1000;
                else if (kirby->base.header.unk1 < 8)
                    effect->y += 0x1400;
                else if (kirby->base.header.unk1 < 10)
                    return;
                break;
            case 0x12:
                if (kirby->base.header.unk1 < 2)
                    effect->y += 0x800;
                else
                    effect->y += 0x1000;
                break;
            case 0x13:
                effect->y += 0x1000;
                break;
            case 0x14:
                if (kirby->base.header.unk1 < 8)
                    effect->y += 0x1400;
                else if (kirby->base.header.unk1 < 0xF)
                    return;
                break;
            case 0x15:
                if (kirby->base.header.unk1 < 6)
                    effect->y += 0x1400;
                else if (kirby->base.header.unk1 < 0xD)
                    return;
                break;
            case 0x16:
                if (kirby->base.flags & 1)
                    effect->x -= 0x600;
                else
                    effect->x += 0x600;
                break;
            case 0x17:
                if (kirby->base.flags & 1)
                    effect->x += 0x800;
                else
                    effect->x -= 0x800;
                break;
            }
            effect->x += ((Rand16() & 7) - 7) * 0x100;
            effect->y += ((Rand16() & 7) - 0xB) * 0x100;
            effect->unk3C = 0xC0;
            effect->unk3E = 0x80;
            if (effect->flags & 1)
                effect->unk3C = 0;
            effect->flags |= 4;
            effect->unk4 = 4;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_0808D5E0(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808D728, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    effect->unk3C = -0x200;
    if (effect->flags & 1)
        effect->unk3C = -effect->unk3C;
    effect->x = kirby->base.x + ((0x10 - (Rand16() & 0x1F)) * 0x100);
    effect->y = kirby->base.y + ((0x10 - (Rand16() & 0x1F)) * 0x100);
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x297, 0, 0xC);
}

void sub_0808D728(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808D7C4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808D7C4:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && kirby->animationIndex != 0x7B)
            effect->flags |= 0x1000;
        else {
            if (effect->header.unk1 > 0xB) {
                effect->x = kirby->base.x + (0x10 - (Rand16() & 0x1F)) * 0x100;
                effect->y = kirby->base.y + (0x10 - (Rand16() & 0x1F)) * 0x100;
                effect->flags |= 4;
            } else {
                effect->unk3E = gUnk_08350FFA[effect->header.unk1 >> 1];
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808D95C(struct Kirby *kirby, s8 a2, s8 a3) {
    struct Task *t = TaskCreate(sub_0808DAC8, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    effect->y += a3 * 0x100;
    effect->unk3C = -0x200;
    if (effect->flags & 1) {
        effect->unk3C = -effect->unk3C;
        effect->x -= a2 * 0x100;
    } else {
        effect->x += a2 * 0x100;
    }
    effect->x += ((8 - (Rand16() & 0xF)) * 0x100);
    effect->y += ((8 - (Rand16() & 0xF)) * 0x100);
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x297, 1, 0xC);
}

void sub_0808DAC8(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby = effect->parent;
        if (kirby) {
            if (kirby->base.header.kind && kirby->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby = NULL;
            }
            if (!kirby) goto _0808DB5C;
            if (Macro_0810B1F4(&kirby->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808DB5C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            effect->unk3E = gUnk_08350FFA[effect->header.unk1 / 2];
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808DC80(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808DDD0, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    effect->x = kirby->base.x + (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    effect->y = kirby->base.y + (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x297, 1, 0xC);
}

void sub_0808DDD0(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808DE6C;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808DE6C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && kirby->animationIndex != 0x7D) {
            effect->flags |= 0x1000;
        } else {
            if (effect->header.unk1 > 0xA) {
                effect->x = kirby->base.x + (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->y = kirby->base.y + (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->flags |= 4;
            } else {
                effect->unk3E = gUnk_08350FFA[effect->header.unk1 >> 1];
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808E024(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808E11C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (Rand16() & 1)
        effect->flags |= 1;
    effect->unk3E = 0x80;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2A6, 0, 0xC);
}

void sub_0808E11C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808E1B0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808E1B0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && kirby->animationIndex != 0x7D) {
            effect->flags |= 0x1000;
        } else {
            if (effect->header.unk1 > 0xC) {
                effect->x = kirby->base.x;
                effect->y = kirby->base.y;
                effect->flags |= 4;
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808E2EC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808E404, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->unk3C = (0x10 - (Rand16() & 0x1F)) * 0x100;
    effect->unk3E = (0x10 - (Rand16() & 0x1F)) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x29D, 1, 0xC);
}

void sub_0808E404(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808E4A0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808E4A0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && kirby->animationIndex != 0x87) {
            effect->flags |= 0x1000;
        } else {
            effect->flags |= 4;
            if (effect->header.unk1 == 5 || effect->header.unk1 == 7 || effect->header.unk1 == 0x13 || effect->header.unk1 == 0x15) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
            }
            if (effect->header.unk1 == 1 || effect->header.unk1 == 0xD) {
                effect->unk3C = (0x10 - (Rand16() & 0x1F)) * 0x100;
                effect->unk3E = (0x10 - (Rand16() & 0x1F)) * 0x100;
            }
            effect->x = kirby->base.x + effect->unk3C;
            effect->y = kirby->base.y + effect->unk3E;
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808E66C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808E7A4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x29D, 2, 0xC);
}

void sub_0808E7A4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808E840;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808E840:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && kirby->animationIndex != 0x7D) {
            effect->flags |= 0x1000;
        } else {
            effect->flags |= 4;
            if (effect->header.unk1 == 1 || effect->header.unk1 == 6) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
            }
            effect->x = kirby->base.x + effect->unk3C;
            effect->y = kirby->base.y + effect->unk3E;
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0808E9C8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808EB08, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *effect = TaskGetStructPtr(t);

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->unk8 = 0;
    effect->flags |= 0x4000;
    effect->unk4 = 0x40;
    effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x29E, 0, 0xC);
}

void sub_0808EB08(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kirby->base.flags & 0x1000)
        effect->flags |= 0x1000;
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808EB9C;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808EB9C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2) {
            effect->flags |= 0x1000;
        } else {
            if (effect->header.unk1 == 0x12) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk4 = -0x40;
                if (!effect->unk8)
                    effect->flags |= 4;
            }
            if (effect->header.unk1 == 0x24) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk4 = 0x40;
            }
            if (effect->header.unk1 > 0x11) {
                effect->unk3E -= 0x40 + 0x10 * (effect->header.unk1 - 0x12);
                effect->unk4 += 7;
            } else {
                effect->unk3E -= 0x40 + 0x10 * (effect->header.unk1 - 0);
                effect->unk3C += effect->unk4;
                effect->unk4 -= 7;
            }
            effect->x = kirby->base.x + effect->unk3C;
            effect->y = kirby->base.y + effect->unk3E;
            EffectObjectPostUpdate(effect);
        }
    }
}

struct EffectObject *sub_0808EDB8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808EEF4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6010600 + (kirby->base.unk56 << 0xB), 0x2DE, 0, kirby->base.sprite.unk14 >> 6);
    PlaySfx(&kirby->base, SE_KIRBY_STAR_DESTROY);
    return effect;
}

void sub_0808EEF4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = kirby;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808EF88;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808EF88:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->roomId = kirby->base.roomId;
        if (kirby->animationIndex != 0x5A && kirby->animationIndex != 0x5B) {
            PlaySfx(&kirby->base, SE_WARPSTAR_ACTIVATE_DESTROY);
            effect->flags |= 0x1000;
        } else {
            if (kirby->animationIndex == 0x5B) {
                effect->sprite.unk14 = kirby->base.sprite.unk14;
                effect->sprite.unk8 &= ~0x3000;
                effect->sprite.unk8 |= kirby->base.sprite.unk8 & 0x3000;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

struct EffectObject *sub_0808F0E8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808F1C8, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6010600 + (kirby->base.unk56 << 0xB), 0x117, 0, 0xC);
    effect->sprite.palId = kirby->base.sprite.palId;
    return effect;
}

void sub_0808F1C8(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->animationIndex != 0x34)
            effect->flags |= 0x1000;
        else {
            if (!Macro_08091C7C(effect)) {
                kirby2 = effect->parent;
                if (kirby2) {
                    if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                        effect->parent = NULL;
                        kirby2 = NULL;
                    }
                    if (!kirby2) goto _0808F318;
                    if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                        EffectObjectDisplaySprite(effect);
                        return;
                    }
                } else {
                _0808F318:
                    KirbySomething(effect);
                }
                effect->flags |= 4;
                if (!(effect->flags & 0x400)) {
                    Macro_080FC150(effect, &effect->sprite);
                    effect->x = kirby->base.x + (0x20 - (Rand16() & 0x3F)) * 0x100;
                    effect->y = kirby->base.y + (0x24 - (Rand16() & 0x3F)) * 0x100;
                    effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                    effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
                    if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                        effect->sprite.x += gUnk_0203AD18[0];
                        effect->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(effect, &effect->sprite);
                    }
                    effect->x = kirby->base.x + (0x10 - (Rand16() & 0x1F)) * 0x100;
                    effect->y = kirby->base.y + (0x24 - ((Rand16() & 0xF) + (Rand16() & 0x3F))) * 0x100;
                    effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                    effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
                    if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                        effect->sprite.x += gUnk_0203AD18[0];
                        effect->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(effect, &effect->sprite);
                    }
                    effect->x = kirby->base.x + (0x28 - ((Rand16() & 0xF) + (Rand16() & 0x3F))) * 0x100;
                    effect->y = kirby->base.y + (0x10 - (Rand16() & 0x1F)) * 0x100;
                    effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                    effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
                    if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                        effect->sprite.x += gUnk_0203AD18[0];
                        effect->sprite.y += gUnk_0203AD18[1];
                        Macro_0803DBC8(effect, &effect->sprite);
                    }
                }
            }
        }
    }
}

void sub_0808F774(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808F8C0, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->unk3C = 0xC0;
    effect->unk3E = 0x80;
    if (effect->flags & 1)
        effect->unk3C = 0;
    effect->x += ((Rand16() & 7) - 7) * 0x100;
    effect->y += ((Rand16() & 7) - 0xB) * 0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6010400 + (kirby->base.unk56 << 0xB),
        0x118, 0, (kirby->base.sprite.unk14 >> 6) - 1);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
}

void sub_0808F8C0(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->flags & 0x2000 && !Macro_0810B1F4(&kirby->base))
            effect->flags &= ~0x2000;
        if (kirby->ability != KIRBY_ABILITY_SPARK)
            effect->flags |= 0x1000;
        else if (kirby->animationIndex == 0x34)
            effect->unk8 = 8;
        else if (kirby->animationIndex == 0x36 || kirby->animationIndex == 0x64 || kirby->animationIndex == 0x65
            || kirby->animationIndex == 0x66 || kirby->animationIndex == 0x5E) {
            if (kirby->animationIndex == 0x34) // never going to happen
                effect->unk8 = 8;
        } else if (!(kirby->base.unk58 & 2) && !(kirby->base.flags & 0x400)) {
            effect->sprite.unk8 &= ~0x80000;
            effect->flags |= 4;
            if (effect->unk4 == 0 || effect->unk4 == 2 || effect->unk4 == 4) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (8 - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->sprite.variant = (Rand16() & 7) + (Rand16() & 3);
            }
            if (effect->unk4 == 0xC || effect->unk4 == 0xE || effect->unk4 == 0x10 || effect->unk4 == 0x20) {
                effect->unk3C = (0xC - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->unk3E = (-2 - ((Rand16() & 0xF) + (Rand16() & 7))) * 0x100;
                effect->sprite.variant = (Rand16() & 7) + (Rand16() & 3);
            }
            if ((effect->unk4 < 6 || effect->unk4 > 0xB)
                && (effect->unk4 < 0x12 || effect->unk4 > 0x1F)
                && effect->unk4 < 0x22) {
                ++kirby->base.y; --kirby->base.y; // What?
                effect->x = kirby->base.x + effect->unk3C;
                effect->y = kirby->base.y + effect->unk3E;
                EffectObjectPostUpdate(effect);
            }
            if (!Macro_0810B1F4(&kirby->base))
                ++effect->unk4;
            if (effect->unk4 > 0x2D)
                effect->unk4 = 0;
        }
    }
}

void sub_0808FB44(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808FC1C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y -= 0x800;
    effect->unk3E = 0x200;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x184, 6, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    effect->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_0808FC1C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_SLEEP) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0808FD34;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0808FD34:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->flags & 2) {
            effect->sprite.variant = 7;
            if (++effect->unk4 > 4) {
                effect->flags |= 0x1000;
                return;
            }
        }
        effect->unk3E -= 0x20;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_0808FE0C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0808FF8C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y -= 0x200;
    effect->unk3E = 0x80;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x600;
        effect->unk3C = -0xC0;
    } else {
        effect->x += 0x600;
        effect->unk3C = 0xC0;
    }
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x184, 0, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    PlaySfx(&kirby->base, SE_ABILITY_SLEEP_SNORE);
}

void sub_0808FF8C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_SLEEP) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080900A4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080900A4:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->flags & 2) {
            if (effect->unk4)
                effect->sprite.variant = 1;
            if (++effect->unk4 > 2) {
                effect->flags |= 0x1000;
                return;
            }
        }
        if (effect->flags & 1)
            effect->unk3C += 3;
        else
            effect->unk3C -= 3;
        effect->unk3E -= 0x2;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08090198(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0809030C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y -= 0x200;
    effect->unk3E = 0x80;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x100;
    } else {
        effect->x += 0x100;
    }
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x184, 0, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    PlaySfx(&kirby->base, SE_ABILITY_SLEEP_SNORE);
}

void sub_0809030C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_SLEEP) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08090424;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08090424:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->flags & 2) {
            if (effect->unk4)
                effect->sprite.variant = 1;
            if (++effect->unk4 > 2) {
                effect->flags |= 0x1000;
                return;
            }
        }
        if (effect->flags & 1)
            effect->unk3C += 1;
        else
            effect->unk3C -= 1;
        effect->unk3E -= 0x2;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08090518(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08090698, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y -= 0x200;
    effect->unk3E = 0x80;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x600;
        effect->unk3C = -0x40;
    } else {
        effect->x += 0x600;
        effect->unk3C = 0x40;
    }
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x184, 0, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
    PlaySfx(&kirby->base, SE_ABILITY_SLEEP_SNORE);
}

void sub_08090698(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_SLEEP) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080907B0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080907B0:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->flags & 2) {
            if (effect->unk4)
                effect->sprite.variant = 1;
            if (++effect->unk4 > 2) {
                effect->flags |= 0x1000;
                return;
            }
        }
        if (effect->flags & 1)
            effect->unk3C += 1;
        else
            effect->unk3C -= 1;
        effect->unk3E -= 0x2;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_080908A4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08090968, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x300;
    } else {
        effect->unk3C = -0x300;
    }
    if (!(kirby->base.unk62 & 4))
        effect->flags |= 2;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 0, 0xA);
}

void sub_08090968(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->flags & 2) {
            if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x6B) {
                effect->flags |= 0x1000;
                return;
            }
            if (effect->flags & 2) {
                if (kirby->base.unk62 & 4) {
                    effect->x = kirby->base.x;
                    effect->y = kirby->base.y;
                    if (kirby->base.flags & 1) {
                        effect->flags |= 1;
                        effect->unk3C = 0x300;
                        effect->unk3E = 0;
                    } else {
                        effect->flags &= ~1;
                        effect->unk3C = -0x300;
                        effect->unk3E = 0;
                    }
                    effect->flags |= 4;
                    effect->flags &= ~2;
                }
                return;
            }
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08090A8C;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08090A8C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        effect->unk3E += 0x20;
        if (effect->header.unk1 == 5)
            sub_0808A0F8(effect);
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08090BAC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08090CB8, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (8 - (Rand16() & 0xF)) * 0x100;
    effect->y += ((Rand16() & 7) + 8) * 0x100;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = -0x400;
    } else {
        effect->unk3C = 0x400;
    }
    effect->unk3E = 0x180;
    if (!(kirby->base.unk62 & 4))
        effect->header.unk1 = 0x13;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 5, 0xA);
}

void sub_08090CB8(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (effect->flags & 2) {
            if (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x6B) {
                effect->flags |= 0x1000;
                return;
            }
        }
        if (effect->header.unk1 > 0x11) {
            if (!(kirby->base.unk62 & 4))
                effect->flags |= 2;
            else {
                effect->x = kirby->base.x;
                effect->y = kirby->base.y;
                effect->x += (8 - (Rand16() & 0xF)) * 0x100;
                effect->y += ((Rand16() & 7) + 8) * 0x100;
                if (kirby->base.flags & 1) {
                    effect->flags |= 1;
                    effect->unk3C = -0x400;
                    effect->unk3E = 0x180;
                } else {
                    effect->flags &= ~1;
                    effect->unk3C = 0x400;
                    effect->unk3E = 0x180;
                }
                effect->flags |= 4;
            }
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08090E20;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08090E20:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->header.unk1 == 0xB) {
            effect->unk3E = 0x100;
            if (effect->flags & 1)
                effect->unk3C = 0x100;
            else
                effect->unk3C = -0x100;
        }
        if (effect->header.unk1 > 3 && effect->header.unk1 < 11) {
            if (effect->flags & 1)
                effect->unk3C += 0x80;
            else
                effect->unk3C -= 0x80;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08090F68(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0809104C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (!(kirby->base.flags & 1))
        effect->flags |= 1;
    effect->y -= 0x300;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010200, 0x129, 0, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId;
    effect->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_0809104C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->base.unk58 & 2) {
            effect->flags |= 0x1000;
            return;
        }
        if (kirby->ability != KIRBY_ABILITY_WHEEL) {
            effect->flags |= 0x1000;
            return;
        }
        if (!Macro_08091C7C(effect)) {
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _0809119C;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _0809119C:
                KirbySomething(effect);
            }
            if (kirby->ability != KIRBY_ABILITY_WHEEL) {
                effect->flags |= 0x1000;
                return;
            }
            if (kirby->animationIndex != 0x34) {
                effect->flags |= 0x1000;
                return;
            }
            if (effect->header.unk1 == 3) {
                effect->flags |= 0x1000;
            } else {
                EffectObjectPostUpdate(effect);
            }
        }
    }
}

void sub_08091258(struct Kirby *kirby) {
    bool32 flags = 0;
    struct Task *t = TaskCreate(sub_08091438, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;
    s16 x, y;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x += 0x200;
    } else {
        effect->x -= 0x200;
    }
    effect->y += 0x900;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    x = kirby->base.x >> 8;
    y = (kirby->base.y >> 8) + kirby->base.unk3F + 1;
    if (x * 0x100 <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.x
        && x * 0x100 >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.x
        && y * 0x100 <= gCurLevelInfo[kirby->base.unk56].levelMaxPosition.y
        && y * 0x100 >= gCurLevelInfo[kirby->base.unk56].levelMinPosition.y)
        flags = gCollisionAttributes[GetCollisionTile(kirby->base.unk56, x >> 4, y >> 4)];
    if (flags & 2) {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2BD, 0, 0xA);
    } else {
        EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x129, 1, 0xA);
        effect->sprite.palId = kirby->base.sprite.palId + 4;
    }
}

void sub_08091438(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (!Macro_08091C7C(effect)) {
            if (kirby->ability != KIRBY_ABILITY_WHEEL) {
                effect->flags |= 0x1000;
                return;
            }
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _08091580;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _08091580:
                KirbySomething(effect);
            }
            if (effect->header.unk1 == 7) {
                effect->flags |= 0x1000;
            } else {
                EffectObjectPostUpdate(effect);
            }
        }
    }
}

void sub_08091614(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08091714, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (8 - (Rand16() & 0xF)) * 0x100;
    effect->y += (4 - (Rand16() & 0xF)) * 0x100;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x200;
    } else {
        effect->unk3C = -0x200;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x297, 2, 0xA);
}

void sub_08091714(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080917B4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080917B4:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            effect->unk3E += 0x60;
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_080918CC(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08091990, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x += 0x600;
    } else {
        effect->x -= 0x600;
    }
    effect->y += 0x800;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 4, 0xA);
}

void sub_08091990(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08091A30;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08091A30:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            effect->unk3E = 0x40;
            if (effect->flags & 1)
                effect->unk3C = 0x40;
            else
                effect->unk3C = -0x40;
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_08091B5C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08091C7C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x100;
        effect->x -= (Rand16() & 0xF) * 0x100;
        effect->y -= (Rand16() & 7) * 0x100;
    }
    else
    {
        effect->unk3C = -0x100;
        effect->x = (Rand16() & 0xF) * 0x100 + effect->x; // why not +=?
        effect->y -= (Rand16() & 7) * 0x100;
    }
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x166, 0, 0xA);
    effect->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08091C7C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->animationIndex != 0x34
            || Macro_08091C7C(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08091DCC;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08091DCC:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->header.unk1 > 8) {
            effect->x = kirby->base.x;
            effect->y = kirby->base.y;
            if (effect->flags & 1) {
                effect->unk3C = 0x100;
                effect->x -= (Rand16() & 0xF) * 0x100;
                effect->y -= (Rand16() & 7) * 0x100;
            } else {
                effect->unk3C = -0x100;
                effect->x = (Rand16() & 0xF) * 0x100 + effect->x; // why not +=?
                effect->y -= (Rand16() & 7) * 0x100;
            }
        }
        if (effect->flags & 1)
            effect->unk3C += 0x20;
        else
            effect->unk3C -= 0x20;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        if (++effect->unk4 > 1)
            EffectObjectPostUpdate(effect);
    }
}

void sub_08091F38(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080920A0, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->unk3C = 0x200;
        effect->x += (8 - (Rand16() & 0xF)) * 0x100;
        effect->x -= (Rand16() & 7) * 0x100;
        effect->y += (0xC - (Rand16() & 0xF)) * 0x100;
    } else {
        effect->unk3C = -0x200;
        effect->x -= (8 - (Rand16() & 0xF)) * 0x100;
        effect->x = (Rand16() & 7) * 0x100 + effect->x; // why not +=?
        effect->y += (0xC - (Rand16() & 0xF)) * 0x100;
    }
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010480, 0x166, 1, 0xA);
    effect->sprite.palId = kirby->base.unk56 + 4;
}

void sub_080920A0(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->animationIndex != 0x34
            || Macro_08091C7C(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080921F0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080921F0:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (effect->header.unk1 > 5) {
            effect->x = kirby->base.x;
            effect->y = kirby->base.y;
            if (effect->flags & 1) {
                effect->unk3C = 0x200;
                effect->x += (8 - (Rand16() & 0xF)) * 0x100;
                effect->x -= (Rand16() & 7) * 0x100;
                effect->y += (0xC - (Rand16() & 0xF)) * 0x100;
            } else {
                effect->unk3C = -0x200;
                effect->x -= (8 - (Rand16() & 0xF)) * 0x100;
                effect->x = (Rand16() & 7) * 0x100 + effect->x; // why not +=?
                effect->y += (0xC - (Rand16() & 0xF)) * 0x100;
            }
        }
        if (effect->flags & 1)
            effect->unk3C += 0x20;
        else
            effect->unk3C -= 0x20;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        if (++effect->unk4 > 1)
            EffectObjectPostUpdate(effect);
    }
}

void sub_08092380(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08092748, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (4 - (Rand16() & 7)) * 0x100;
    effect->y += (4 - (Rand16() & 7)) * 0x100;
    effect->unk3C = -0x180;
    effect->unk3E = 0x180;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x166, 2, 0xA);
}

void sub_08092474(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08092748, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (4 - (Rand16() & 7)) * 0x100;
    effect->y += (4 - (Rand16() & 7)) * 0x100;
    effect->unk3C = 0x180;
    effect->unk3E = 0x180;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010680, 0x166, 3, 0xA);
}

void sub_08092568(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08092748, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (4 - (Rand16() & 7)) * 0x100;
    effect->y += (4 - (Rand16() & 7)) * 0x100;
    effect->unk3C = -0x180;
    effect->unk3E = -0x180;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010700, 0x166, 4, 0xA);
}

void sub_08092654(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08092748, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->x += (4 - (Rand16() & 7)) * 0x100;
    effect->y += (4 - (Rand16() & 7)) * 0x100;
    effect->unk3C = 0x180;
    effect->unk3E = -0x180;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010780, 0x166, 5, 0xA);
}

void sub_08092748(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (effect->flags & 2
            || Macro_08091C7C(effect)
            || (kirby->ability != KIRBY_ABILITY_BURNING
                && kirby->ability != KIRBY_ABILITY_SMASH
                && kirby->ability != KIRBY_ABILITY_STONE))
            effect->flags |= 0x1000;
        else {
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _0809289C;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _0809289C:
                KirbySomething(effect);
            }
            if (effect->header.unk1 > 5) {
                effect->unk3C = 0;
                effect->unk3E = 0;
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

struct EffectObject *sub_08092944(struct ObjectBase *objBase, u32 a2, u16 a3, u8 a4) {
    struct Task *t = TaskCreate(sub_08092A54, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    if (a2) {
        if (a2 > 0x400)
            effect->flags |= 0x4000;
        do EffectObjectInitSprite(effect, &effect->sprite, a2, a3, a4, 0xC); while (0);
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, a3, a4, 0xC);
    }
    return effect;
}

void sub_08092A54(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase = effect->parent, *objBase2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (objBase->flags & 0x1000)
        effect->flags |= 0x1000;
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->sprite.tilesVram >= 0x6012000
            // TODO: Macro_08091C7C requires effect->parent to be of struct Kirby *, which is not always the case here
            || !Macro_08091C7C(effect)) {
            effect->flags |= 4;
            effect->x = objBase->x;
            effect->y = objBase->y;
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_08092C10(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08092D50, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->y += 0x600;
    if (kirby->base.unk58 & 2)
        effect->unk3E = 0x10;
    else
        effect->unk3E = 0x40;
    if (kirby->base.unk58 & 2)
        effect->unk3C = -0x120;
    else
        effect->unk3C = -0x240;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x += 0x800;
        effect->unk3C = -effect->unk3C;
    } else {
        effect->x -= 0x800;
    }
    if (kirby->base.unk58 & 2) {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 6, 0xA);
    } else {
        effect->flags |= 0x4000;
        EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x293, 1, 0xA);
    }
}

void sub_08092D50(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08092DF0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08092DF0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2)
            effect->flags |= 0x1000;
        else {
            if (kirby->base.unk58 & 2) {
                if (effect->flags & 1)
                    effect->unk3C -= 0xC;
                else
                    effect->unk3C += 0xC;
                effect->unk3E += 1;
            } else {
                if (effect->flags & 1)
                    effect->unk3C -= 0x18;
                else
                    effect->unk3C += 0x18;
                effect->unk3E += 0x20;
            }
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_08092F44(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08093044, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    switch (a2) {
    case 1:
        effect->unk3C = 0x230;
        effect->unk3E = -0xA0;
        break;
    case 2:
        effect->unk3C = 0x230;
        effect->unk3E = 0xA0;
        break;
    default:
        effect->unk3C = 0x280;
        effect->unk3E = 0;
        break;
    }
    effect->x -= 0x400;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x2800;
        effect->unk3C = -effect->unk3C;
    } else {
        effect->x += 0x2800;
    }
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0xC8, 0, 0xA);
}

void sub_08093044(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_PARASOL) {
            effect->flags |= 0x1000;
            return;
        }
        if ((effect->flags & 2) || Macro_08091C7C(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _0809319C;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0809319C:
            KirbySomething(effect);
        }
        if (!(kirby->base.unk58 & 2) || ++effect->unk4 > 4) {
            if (effect->flags & 1)
                effect->unk3C += 0x10;
            else
                effect->unk3C -= 0x10;
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_08093264(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08093468, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->y -= (0xC - (Rand16() & 0xF)) * 0x100;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x += ((Rand16() & 0xF) + 0x10) * 0x100;
    } else {
        effect->x += (-0x10 - (Rand16() & 0xF)) * 0x100;
    }
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2B0, 0, 0xA);
}

void sub_08093390(struct Kirby *kirby, s16 a2, s16 a3) {
    struct Task *t = TaskCreate(sub_08093468, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->y += a3 * 0x100;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= a2 * 0x100;
    } else {
        effect->x += a2 * 0x100;
    }
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2B0, 0, 0xA);
}

void sub_08093468(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080934FC;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080934FC:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (++effect->unk4 > 3)
            effect->flags |= 0x1000;
        else {
            if (!(effect->flags & 0x800)) {
                effect->x += effect->unk3C;
                effect->y -= effect->unk3E;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0809361C(struct Kirby *kirby, u32 a2) {
    struct Task *t = TaskCreate(sub_080936F4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->y += 0x600;
    if (kirby->base.unk58 & 2)
        effect->unk3C = -0x300;
    else
        effect->unk3C = -0x600;
    if (a2 & 1) {
        effect->flags |= 1;
        effect->unk3C = -effect->unk3C;
    }
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2AD, 0, 0xA);
}

void sub_080936F4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08093794;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08093794:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->header.unk1 == 3) {
            if (kirby->base.unk58 & 2) {
                if (effect->flags & 1)
                    effect->unk3C = 0x100;
                else
                    effect->unk3C = -0x100;
            } else {
                if (effect->flags & 1)
                    effect->unk3C = 0x200;
                else
                    effect->unk3C = -0x200;
            }
        } else if (effect->header.unk1 > 3) {
            if (kirby->base.unk58 & 2) {
                if (effect->flags & 1)
                    effect->unk3C -= 8;
                else
                    effect->unk3C += 8;
            } else {
                if (effect->flags & 1)
                    effect->unk3C -= 0x10;
                else
                    effect->unk3C += 0x10;
            }
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08093918(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08093A4C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.unk58 & 2)
        effect->unk4 = 1;
    if (a2 != 1) {
        effect->unk3C = -(0x300 >> effect->unk4);
        if (kirby->base.flags & 1) {
            effect->unk3C = -effect->unk3C;
            effect->x -= 0x2000;
        } else {
            effect->flags |= 1;
            effect->x += 0x1600;
        }
    } else {
        effect->unk3C = 0x300 >> effect->unk4;
        if (kirby->base.flags & 1) {
            effect->flags |= 1;
            effect->unk3C = -effect->unk3C;
            effect->x -= 0x1600;
        } else {
            effect->x += 0x2000;
        }
    }
    effect->y += 0x800;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010600, 0x1D5, 0, 0xA);
    effect->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08093A4C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_HAMMER) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->flags & 2
            || Macro_08091C7C(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08093BA4;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08093BA4:
            KirbySomething(effect);
        }
        if (effect->flags & 1)
            effect->unk3C += 0x28 >> effect->unk4;
        else
            effect->unk3C -= 0x28 >> effect->unk4;
        effect->unk3E += 0x20 >> effect->unk4;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08093C74(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08093D10, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    effect->y += 0x800;
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2B5, 0, 0x14);
}

void sub_08093D10(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08093DA0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08093DA0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->flags & 2 && effect->sprite.animId == 0x2B5) {
            if (effect->sprite.variant == 0) {
                sub_08093F00(effect);
                effect->sprite.animId = 0x294;
                effect->sprite.variant = 0;
            } else {
                if (effect->sprite.variant == 1)
                    effect->flags |= 0x1000;
            }
        }
        if (effect->sprite.animId == 0x294) {
            effect->flags |= 4;
            if (++effect->unk4 > 0xA) {
                effect->flags &= ~4;
                effect->flags &= ~2;
                effect->sprite.animId = 0x2B5;
                effect->sprite.variant = 1;
            }
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08093F00(struct EffectObject *effect2) {
    struct Task *t = TaskCreate(sub_08093F90, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = effect2->x;
    effect->y = effect2->y;
    effect->parent = effect2;
    effect->roomId = effect2->roomId;
    effect->flags |= 0x4000;
    effect->flags |= 0x4000; // redundant
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x294, 0, 0x15);
}

void sub_08093F90(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08094024;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08094024:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (++effect->unk4 > 0xA)
            effect->flags |= 0x1000;
        else
            EffectObjectPostUpdate(effect);
    }
}

void sub_08094124(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080941F0, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y -= 0x1000;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x1300;
    } else {
        effect->x += 0x1300;
    }
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x205, 0, 0x1C);
    effect->sprite.palId = kirby->base.unk56 + 4;
}

void sub_080941F0(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;
    struct EffectObject *v9;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if ( kirby->ability != KIRBY_ABILITY_COOK
            || (kirby->animationIndex != 0x34 && kirby->animationIndex != 0x35 && kirby->animationIndex != 0x36
                && kirby->animationIndex != 0x67 && kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69)) {
            v9 = CreateEffectObject(&kirby->base, 0, 0x292, 0);
            v9->y -= 0x1000;
            if (effect->flags & 1)
                v9->x -= 0x1300;
            else
                v9->x += 0x1300;
            effect->flags |= 0x1000;
        } else if (kirby->ability != KIRBY_ABILITY_COOK || Macro_08091C7C(effect)) {
            v9 = CreateEffectObject(&kirby->base, 0, 0x292, 0);
            v9->y -= 0x1000;
            if (effect->flags & 1)
                v9->x -= 0x1300;
            else
                v9->x += 0x1300;
            effect->flags |= 0x1000;
        } else {
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _080943D8;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _080943D8:
                KirbySomething(effect);
            }
            effect->flags |= 4;
            if (kirby->animationIndex == 0x67) {
                effect->sprite.variant = 1;
                effect->sprite.unk14 = 0x700;
            } else {
                effect->sprite.variant = 0;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0809447C(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08094540, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->y += 0x200;
    if (kirby->base.flags & 1) {
        effect->flags |= 1;
        effect->x -= 0x800;
    } else {
        effect->x += 0x800;
    }
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2B7, 0, 0xA);
}

void sub_08094540(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _080945E0;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _080945E0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_FIGHTER || kirby->animationIndex != 0x1B
            || Macro_08091C7C(effect)) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        if (kirby->base.flags & 1) {
            effect->flags |= 1;
            effect->x = kirby->base.x + 0x800;
        } else {
            effect->flags &= ~1;
            effect->x = kirby->base.x - 0x800;
        }
        effect->y = kirby->base.y + 0x200;
        if (kirby->hp == 1)
            effect->sprite.variant = 2;
        else if (kirby->flyTimer)
            effect->sprite.variant = 1;
        if (effect->header.unk1 == 1) {
            if (effect->sprite.variant == 0)
                PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_CHARGE_1);
            else if (effect->sprite.variant == 1)
                PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_CHARGE_2);
            else
                PlaySfx(&kirby->base, SE_ABILITY_FIGHTER_CHARGE_3);
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08094930(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_080949C8, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk4 = 4;
    effect->parent = objBase;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2B2, 0, 0xA);
}

void sub_080949C8(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase, *objBase2;

    effect->roomId = ((struct ObjectBase *)effect->parent)->roomId;
    objBase = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08094A6C;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08094A6C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->unk4-- == 0) {
            effect->unk4 = 4;
            sub_08094C50(objBase);
        }
        if (objBase->flags & 0x400) {
            effect->flags |= 0x1000;
            effect->parent = 0;
        } else {
            effect->flags |= 4;
            effect->x = objBase->x + (objBase->sprite.unk20[0].unk4 * 0x100);
            effect->y = objBase->y + (objBase->sprite.unk20[0].unk5 * 0x100);
            EffectObjectPostUpdate(effect);
            if (!(effect->header.unk1 & 3))
                PlaySfx(objBase, SE_CANNON_FUSE_LIT);
        }
    }
}

void sub_08094C50(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08094D30, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;
    u32 r;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    r = Rand16() & 7;
    effect->x += gUnk_08350EE0[r][0] * 0x100;
    effect->y += gUnk_08350EE0[r][1] * 0x100;
    effect->unk4 = 4;
    effect->parent = objBase;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x291, 1, 9);
}

void sub_08094D30(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2;

    effect->roomId = ((struct ObjectBase *)effect->parent)->roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08094DD0;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08094DD0:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->unk4 == 0) {
            effect->flags |= 0x1000;
            effect->parent = 0;
        } else {
            effect->flags |= 4;
            EffectObjectPostUpdate(effect);
            --effect->unk4;
        }
    }
}

void sub_08094EDC(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08094F7C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk4 = 9;
    effect->y -= 0x1000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2A8, 6, 9);
}

void sub_08094F7C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2;

    effect->roomId = ((struct ObjectBase *)effect->parent)->roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _0809501C;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _0809501C:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->unk4 == 0) {
            effect->flags |= 0x1000;
            effect->parent = NULL;
        } else {
            effect->y -= 0x200;
            if (effect->flags & 2) {
                --effect->unk4;
                effect->sprite.unk1B = 0xFF;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_0809513C(struct ObjectBase *objBase, s8 a2, s8 a3) {
    struct Task *t = TaskCreate(sub_080951E4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->flags |= 0x4000;
    effect->unk8 = (a2 * 0x100) | a3;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2BB, 0, 0x1A);
}

void sub_080951E4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2, *objBase;

    objBase = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        effect->roomId = objBase->roomId;
        effect->x = objBase->x + (effect->unk8 >> 8) * 0x100;
        effect->y = objBase->y + (s8)effect->unk8 * 0x100;
        if (objBase->flags & 0x1000 || objBase->flags & 0x400) {
            effect->flags |= 0x1000;
            return;
        }
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08095324;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08095324:
            KirbySomething(effect);
        }
        if (!(effect->unk4 & 3)) {
            if (effect->unk4 > 0xB) {
                effect->sprite.unk14 = 0x6C0;
                effect->unk4 = 0;
            } else {
                effect->sprite.unk14 = 0x700;
            }
            EffectObjectPostUpdate(effect);
        }
        effect->unk4 = (effect->unk4 + 1) & 0xF;
    }
}

void sub_080953D4(struct ObjectBase *objBase, s8 a2, s8 a3) {
    struct Task *t = TaskCreate(sub_08095468, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t);
    struct EffectObject *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->unk8 = (a2 * 0x100) | a3;
    EffectObjectInitSprite(effect, &effect->sprite, 0x10, 0x2C8, 0, 0xA);
}

void sub_08095468(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2, *objBase;
    struct Sprite sprite;

    objBase = effect->parent;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        effect->roomId = objBase->roomId;
        effect->x = objBase->x + (effect->unk8 >> 8) * 0x100;
        effect->y = objBase->y + (s8)effect->unk8 * 0x100;
        if (objBase->flags & 0x1000 || objBase->flags & 0x400) {
            effect->flags |= 0x1000;
            return;
        }
        Macro_08107BA8_4(effect, &effect->sprite, &sprite, 0x10, &effect->sprite);
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08095680;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08095680:
            KirbySomething(effect);
        }
        if (!(effect->unk4 & 3))
            EffectObjectPostUpdate(effect);
        effect->unk4 = (effect->unk4 + 1) & 0xF;
    }
}

void sub_08095714(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_080957F4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010200, 0x220, kirby->base.sprite.variant + 8, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId;
    effect->sprite.unk14 = kirby->base.sprite.unk14;
}

void sub_080957F4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (!Macro_08091C7C(effect)) {
            if (kirby->ability != KIRBY_ABILITY_MISSILE) {
                effect->flags |= 0x1000;
                return;
            }
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _0809593C;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _0809593C:
                KirbySomething(effect);
            }
            if (kirby->animationIndex != 0x67 && kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69
                && kirby->animationIndex != 0x6A && kirby->animationIndex != 0x6B && kirby->animationIndex != 0x6C
                && kirby->animationIndex != 0x6D && kirby->animationIndex != 0x6E) {
                effect->flags |= 0x1000;
                return;
            }
            if (++effect->unk4 == 3) {
                effect->flags |= 0x1000;
                return;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_080959F4(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08095AD4, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010200,
        gUnk_0834D484[5].animId, gUnk_0834D484[5].variant, (kirby->base.sprite.unk14 >> 6) - 1);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
}

void sub_08095AD4(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite *sprite = &effect->sprite;
    struct Kirby *kirby = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        effect->flags &= ~0x2405;
        effect->flags |= kirby->base.flags & 0x2405;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        if (kirby->ability != KIRBY_ABILITY_CUPID) {
            effect->flags |= 0x1000;
            return;
        }
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            u8 v7 = sprite->unk1C;

            if (effect->sprite.animId) {
                sprite->unk1C = 0;
                Macro_080FC150(effect, sprite);
                sprite->unk1C = v7;
                if (gLocalPlayerId == kirby->base.unk56) {
                    sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, sprite);
                }
            }
        } else {
            if (kirby->animationIndex > 0x66) {
                sprite->animId = gUnk_0834D484[kirby->animationIndex - 0x65].animId;
                sprite->variant = gUnk_0834D484[kirby->animationIndex - 0x65].variant;
            } else if (kirby->animationIndex == 0x34) {
                sprite->animId = gUnk_0834D484[1].animId;
                sprite->variant = gUnk_0834D484[1].variant;
            } else if (kirby->animationIndex != 0x35) {
                effect->flags |= 0x1000;
                return;
            } else {
                sprite->animId = gUnk_0834D484[0].animId;
                sprite->variant = gUnk_0834D484[0].variant;
            }
            if (sprite->animId) {
                Macro_080FC150(effect, sprite);
                if (gLocalPlayerId == kirby->base.unk56) {
                    sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                    sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
                }
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    sprite->x += gUnk_0203AD18[0];
                    sprite->y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, sprite);
                }
            }
        }
    }
}

void sub_08095F68(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_0809603C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, sub_08099B28);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x21C, 0, 0xA);
    effect->sprite.palId = kirby->base.sprite.palId + 4;
}

void sub_0809603C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite *sprite = &effect->sprite;
    struct Kirby *kirby = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        effect->flags &= ~0x401;
        effect->flags |= kirby->base.flags & 0x401;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        if (kirby->ability != KIRBY_ABILITY_CUPID) {
            effect->flags |= 0x1000;
            return;
        }
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
            sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                sprite->x += gUnk_0203AD18[0];
                sprite->y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, sprite);
            }
        } else {
            if ((kirby->animationIndex != 0x67 && kirby->animationIndex != 0x68 && kirby->animationIndex != 0x69
                    && kirby->animationIndex != 0x6A && kirby->animationIndex != 0x6B && kirby->animationIndex != 0x6C)
                && (kirby->animationIndex != 0x70 && kirby->animationIndex != 0x71 && kirby->animationIndex != 0x72
                    && kirby->animationIndex != 0x73 && kirby->animationIndex != 0x74 && kirby->animationIndex != 0x75)) {
                effect->flags |= 0x1000;
                return;
            }
            effect->flags |= 4;
            if (kirby->base.counter >= 0x30) {
                effect->sprite.variant = 3;
                if (kirby->base.unk56 == gLocalPlayerId)
                    m4aSongNumStop(SE_ABILITY_CUPID_CHARGE_1);
                PlaySfxAlt(&kirby->base, SE_ABILITY_CUPID_CHARGE_2);
            } else {
                PlaySfxAlt(&kirby->base, SE_ABILITY_CUPID_CHARGE_1);
            }
            Macro_080FC150(effect, sprite);
            if (gLocalPlayerId == kirby->base.unk56) {
                sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                sprite->x += gUnk_0203AD18[0];
                sprite->y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, sprite);
            }
        }
    }
}

// TODO: the first argument can be ObjectBase * or Kirby *. Use a union?
void sub_08096464(struct ObjectBase *objBase, s8 a2, s8 a3) {
    struct Task *t = TaskCreate(sub_0809656C, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->flags |= 0x4000;
    if (objBase->flags & 1) {
        effect->x -= a2 * 0x100;
        effect->flags |= 1;
    } else {
        effect->x += a2 * 0x100;
    }
    effect->y += a3 * 0x100;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (objBase->unk56 << 0xB) + 0x6010600, 0x25B, 0, 0xA);
    effect->sprite.palId = objBase->unk56 + 4;
}

void sub_0809656C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    // TODO: it can be just ObjectBase * or Kirby *. I use Kirby * here only for convenience
    struct Kirby *kirby = effect->parent, *kirby2, *kirby3;

    effect->roomId = kirby->base.roomId;
    effect->sprite.palId = kirby->base.unk56 + 4;
    if (kirby->base.header.kind == 0) {
        if (kirby->ability != KIRBY_ABILITY_BOMB || kirby->animationIndex == 0x5A) {
            effect->flags |= 0x1000;
            return;
        }
    } else {
        kirby3 = effect->parent;
        if (kirby3->base.flags & 0x1000) {
            effect->flags |= 0x1000;
            return;
        }
    }
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08096658;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08096658:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->header.unk1 > 3)
            effect->unk3E = 0x200;
        else if (effect->header.unk1 > 1) {
            effect->unk3E = 0x300;
            if (effect->header.unk1 == 2)
                effect->unk3C = 0x100 - (Rand16() & 0x1FF);
        }
        if (effect->flags & 2) {
            effect->flags |= 0x1000;
            return;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_080967B8(struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08096898, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010200, 0x233, 0, 0x1C);
    effect->sprite.palId = kirby->base.sprite.palId;
}

void sub_08096898(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2, *kirby3 = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby3->ability != KIRBY_ABILITY_CRASH) {
            effect->flags |= 0x1000;
            return;
        }
        if (!Macro_08091C7C(effect)) {
            kirby2 = effect->parent;
            if (kirby2) {
                if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                    effect->parent = NULL;
                    kirby2 = NULL;
                }
                if (!kirby2) goto _080969D4;
                if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                    EffectObjectDisplaySprite(effect);
                    return;
                }
            } else {
            _080969D4:
                KirbySomething(effect);
            }
            if (effect->flags & 2) {
                effect->flags |= 0x1000;
                return;
            }
            if (effect->header.unk1 == 0xF) {
                struct Unk_02022930_0 *v13;

                v13 = sub_0803C83C(4, kirby->base.roomId);
                v13->unk0 = 2;
                v13->unkA = 0x180;
                v13->unk4 = 0x7F00;
                v13->unk6 = 0;
                v13->unk8 |= 0x40;
            }
            if (effect->header.unk1 == 0x24) {
                struct Unk_02022930_0 *v14;

                v14 = sub_0803CA20(kirby->base.unk56);
                v14->unkA = 0x600;
                v14->unk4 = 0;
                v14->unk6 = 0x3FFF;
                v14->unk8 |= 0x40;
            }
            EffectObjectPostUpdate(effect);
        }
    }
}

void sub_08096AC4(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08096C28, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    effect->flags |= 0x4000;
    if (kirby->base.flags & 1) {
        effect->x -= 0xB00;
        effect->flags |= 1;
    } else {
        effect->x += 0xB00;
    }
    effect->y -= 0x1800;
    effect->x = ({effect->x + 0xF00;}) - (Rand16() & 0x1FFF);
    effect->y = ({effect->y + 0x100;}) - (Rand16() & 0xFFF);
    effect->unk3E = -0x100;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x208, a2, 8);
    effect->sprite.palId = kirby->base.unk56 + 4;
}

void sub_08096C28(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent, *kirby2;

    effect->roomId = kirby->base.roomId;
    effect->sprite.palId = kirby->base.unk56 + 4;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        Macro_0809E55C(effect);
        if (kirby->ability != KIRBY_ABILITY_MAGIC) {
            effect->flags |= 0x1000;
            return;
        }
        kirby2 = effect->parent;
        if (kirby2) {
            if (kirby2->base.header.kind && kirby2->base.flags & 0x1000) {
                effect->parent = NULL;
                kirby2 = NULL;
            }
            if (!kirby2) goto _08096D50;
            if (Macro_0810B1F4(&kirby2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08096D50:
            KirbySomething(effect);
        }
        effect->flags |= 4;
        if (++effect->unk4 > 0x1E) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->unk4 & 4)
            effect->objBase54 = 1;
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08096E24(struct Kirby *kirby, u8 a2) {
    struct Task *t;
    struct EffectObject *tmp, *effect;
    u32 v4 = 8;

    if (kirby->base.unk56 == gLocalPlayerId) // Why not use a ternary...
        v4 = 7;
    t = TaskCreate(sub_08096F80, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    tmp = TaskGetStructPtr(t);
    effect = tmp;
    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (Macro_0810B1F4(&kirby->base))
        effect->flags |= 0x2000;
    EffectObjectInitSprite(effect, &effect->sprite, (kirby->base.unk56 << 0xB) + 0x6010400, 0x208, 6, v4);
    effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010480;
    effect->sprite.variant = 9;
    sub_08155128(&effect->sprite);
    effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010500;
    effect->sprite.variant = 7;
    sub_08155128(&effect->sprite);
    effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010580;
    effect->sprite.variant = 8;
    sub_08155128(&effect->sprite);
    effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010600;
    effect->sprite.variant = 0xA;
    sub_08155128(&effect->sprite);
    effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010680;
    effect->sprite.variant = 0xB;
    sub_08155128(&effect->sprite);
    effect->unk3C = 0x140;
    effect->unk8 = a2;
}

void sub_08096F80(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent;
    u8 i;
    s16 v6;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (kirby->ability != KIRBY_ABILITY_MAGIC || effect->roomId != kirby->base.roomId || sub_0805BEC4(kirby)) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y - 0x800;
        if (!Macro_0810B1F4(&kirby->base) || (kirby->base.flags & 0x2000)) {
            effect->unk4 += effect->unk3C >> 4;
            effect->unk4 &= 0x3FF;
            if (kirby->unk11A & 3 || ++effect->unk3E > 0x64)
                gCurTask->main = sub_0809729C;
        }
        for (v6 = effect->unk4, i = 0; i < 8; v6 += 0x80, v6 &= 0x3FF, ++i) {
            s32 a = ({ 3 * (gSineTable[v6 + 0x100] >> 6); });
            s32 b = ({ 3 * (gSineTable[v6]         >> 6); });

            effect->sprite.x = ((effect->x + a * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = ((effect->y + b * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if ((!Macro_0810B1F4(&kirby->base) || (kirby->base.flags & 0x2000))
                && (v6 >= 0x2F0 && v6 < 0x310))
                PlaySfx(&kirby->base, SE_MAIN_MENU_CURSOR);
            if (v6 >= 0x2E0 && v6 < 0x320)
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010680;
            else
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + ({(gUnk_0835100A[effect->unk8][i] << 7) + 0x6010400;});
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
        }
    }
}

void sub_0809729C(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent;
    u8 i;
    s16 v6;

    effect->roomId = kirby->base.roomId;
    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (kirby->ability != KIRBY_ABILITY_MAGIC || effect->roomId != kirby->base.roomId|| sub_0805BEC4(kirby)) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y - 0x800;
        if (!Macro_0810B1F4(&kirby->base) || (kirby->base.flags & 0x2000)) {
            effect->unk4 += effect->unk3C >> 4;
            effect->unk4 &= 0x3FF;
            effect->unk3C -= 4;
            if (effect->unk3C < 0x10)
                effect->unk3C = 0x10;
        }
        for (v6 = effect->unk4, i = 0; i < 8; v6 += 0x80, v6 &= 0x3FF, ++i) {
            s32 a = ({ 3 * (gSineTable[v6 + 0x100] >> 6); });
            s32 b = ({ 3 * (gSineTable[v6] >> 6); });

            effect->sprite.x = ((effect->x + a * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = ((effect->y + b * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if ((!Macro_0810B1F4(&kirby->base) || (kirby->base.flags & 0x2000))) {
                s32 var = effect->unk3C >> 5;

                if (0x300 - var <= v6 && 0x300 + var > v6)
                    PlaySfx(&kirby->base, SE_MAIN_MENU_CURSOR);
            }
            if (v6 >= 0x2E0 && v6 < 0x320)
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010680;
            else
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + ({(gUnk_0835100A[effect->unk8][i] << 7) + 0x6010400;});
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            if (effect->unk3C == 0x10 && v6 == 0x300) {
                effect->unk4 = 0;
                kirby->unkD9 = gUnk_0835100A[effect->unk8][i];
                gCurTask->main = sub_08097668;
                PlaySfx(&kirby->base, SE_PAUSE_MENU_ACTIVATE);
            }
        }
    }
}

void sub_08097668(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        if (kirby->ability != KIRBY_ABILITY_MAGIC || effect->roomId != kirby->base.roomId || sub_0805BEC4(kirby)) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y - 0x800;
        {
            s32 a = ({ 3 * (gSineTable[0x400] >> 6); });
            s32 b = ({ 3 * (gSineTable[0x300] >> 6); });

            effect->sprite.x = ((effect->x + a * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = ((effect->y + b * 8) >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if (effect->unk4 & 2)
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + 0x6010680;
            else
                effect->sprite.tilesVram = (kirby->base.unk56 << 0xB) + ({(kirby->unkD9 << 7) + 0x6010400;});
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            if (!Macro_0810B1F4(&kirby->base) || (kirby->base.flags & 0x2000)) {
                if (++effect->unk4 == 0x10)
                    kirby->base.counter = 1;
                if (effect->unk4 > 0x17)
                    effect->flags |= 0x1000;
            }
        }
    }
}

void sub_08097864(struct ObjectBase *objBase, u8 a2) {
    struct Task *t = TaskCreate(sub_080979E0, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;
    u32 r;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1) {
        effect->x -= 0xB00;
        effect->flags |= 1;
    } else {
        effect->x += 0xB00;
    }
    effect->y += 0x1800;
    r = (0x196225 * gRngVal + 0x3C6EF35F);
    effect->x = ({effect->x + 0xF00;}) - ((r >> 0x10) & 0x1FFF);
    effect->y = ({effect->y + 0x100;}) - ((r >> 0x10) & 0xFFF);
    effect->unk3C = -(objBase->xspeed >> 1);
    effect->unk3E = -0x100 - (objBase->yspeed >> 1);
    effect->unk3C -= ((r >> 0x10) & 0x1FF) - 0x100;
    effect->unk3E -= ((r >> 0x10) & 0x1FF) - 0x100;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x291, a2 + 1, 0xC);
}

void sub_080979E0(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08097A74;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08097A74:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        effect->flags |= 4;
        if (++effect->unk4 > 0x1E) {
            effect->flags |= 0x1000;
            return;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08097B9C(struct Object *obj, struct Kirby *kirby) {
    struct Task *t = TaskCreate(sub_08097C74, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = obj->base.x;
    effect->y = obj->base.y;
    effect->parent = obj;
    effect->roomId = obj->base.roomId;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    if (obj->base.flags & 1)
        effect->flags |= 1;
    if (Macro_0810B1F4(&obj->base))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2A9, 1, 0xC);
}

void sub_08097C74(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Object *obj = effect->parent, *obj_2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        obj_2 = effect->parent;
        if (obj_2) {
            if (obj_2->base.header.kind && obj_2->base.flags & 0x1000) {
                effect->parent = NULL;
                obj_2 = NULL;
            }
            if (!obj_2) goto _08097D10;
            if (Macro_0810B1F4(&obj_2->base) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08097D10:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        effect->flags |= 4;
        if ((effect->x & 0xFFFFFF00) == (obj->base.x & 0xFFFFFF00))
            effect->unk3C = 0;
        else if (effect->x < obj->base.x)
            effect->unk3C = 0x100;
        else
            effect->unk3C = -0x100;
        if ((effect->y & 0xFFFFFF00) == (obj->base.y & 0xFFFFFF00))
            effect->unk3E = 0;
        else if (effect->y < obj->base.y)
            effect->unk3E = 0x80;
        else
            effect->unk3E = -0x80;
        if (++effect->unk4 > 8) {
            effect->flags |= 0x1000;
            return;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08097E9C(struct ObjectBase *objBase, s8 a2, s8 a3) {
    struct Task *t = TaskCreate(sub_08097F90, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    if (objBase->flags & 1) {
        effect->x -= a2 * 0x100;
        effect->flags |= 1;
    } else {
        effect->x += a2 * 0x100;
    }
    effect->y += a3 * 0x100;
    if (Macro_0810B1F4(objBase))
        effect->flags |= 0x2000;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2C1, 0, 0xC);
}

void sub_08097F90(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase2;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        objBase2 = effect->parent;
        if (objBase2) {
            if (objBase2->header.kind && objBase2->flags & 0x1000) {
                effect->parent = NULL;
                objBase2 = NULL;
            }
            if (!objBase2) goto _08098024;
            if (Macro_0810B1F4(objBase2) && !(effect->flags & 0x2000)) {
                EffectObjectDisplaySprite(effect);
                return;
            }
        } else {
        _08098024:
            KirbySomething(effect);
        }
        Macro_0809E55C(effect);
        if (effect->header.unk1 > 3)
            effect->unk3E = 0x200;
        else if (effect->header.unk1 > 1) {
            effect->unk3E = 0x300;
            if (effect->header.unk1 == 2)
                effect->unk3C = 0x100 - (Rand16() & 0x1FF);
        }
        if (effect->flags & 2) {
            effect->flags |= 0x1000;
            return;
        }
        if (!(effect->flags & 0x800)) {
            effect->x += effect->unk3C;
            effect->y -= effect->unk3E;
        }
        EffectObjectPostUpdate(effect);
    }
}

void sub_08098184(struct ObjectBase *objBase) {
    struct EffectObject *effect;

    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = 0;
    effect->unk3E = 0x300;
    effect->unk4 = 0;
    effect->unk8 = -0x10;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = 0x21F;
    effect->unk3E = 0x21F;
    effect->unk4 = -0xB;
    effect->unk8 = -0xB;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = 0x300;
    effect->unk3E = 0;
    effect->unk4 = -0x10;
    effect->unk8 = 0;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = 0x21F;
    effect->unk3E = -0x21F;
    effect->unk4 = -0xB;
    effect->unk8 = 0xB;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = 0;
    effect->unk3E = -0x300;
    effect->unk4 = 0;
    effect->unk8 = 0x10;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = -0x21F;
    effect->unk3E = -0x21F;
    effect->unk4 = 0xB;
    effect->unk8 = 0xB;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = -0x300;
    effect->unk3E = 0;
    effect->unk4 = 0x10;
    effect->unk8 = 0;
    effect = CreateEffectObject(objBase, 0, 0x290, 0);
    effect->sprite.unk14 = 0x640;
    effect->unk3C = -0x21F;
    effect->unk3E = 0x21F;
    effect->unk4 = 0xB;
    effect->unk8 = -0xB;
}

void sub_080982C4(struct ObjectBase *objBase) {
    s32 v2;
    u8 r;
    struct EffectObject *effect;
    s16 v4, v5;
    u16 v7;
    u16 var;

    v2 = 0x200;
    r = (Rand16() & 7) + 1;
    effect = sub_0808B248(objBase, 0, 0x291, r);
    effect->sprite.unk14 = 0x640;
    if (objBase->roomId > 0x3D3) { // TODO: make the comparison independent of the order
        v4 = -objBase->xspeed >> 8;
        v5 = (-0x500 - objBase->yspeed) >> 8;
        v2 = 0x400;
    } else {
        v4 = -objBase->xspeed >> 8;
        v5 = (-objBase->yspeed - 0x200) >> 8;
    }
    if (v4 == v5)
        v5 = v4 - 1;
    v7 = ArcTan2(v4, v5);
    var = v7 + 0x20;
    v4 = v2; // why?
    effect->unk3C = v4 * (gSineTable[(var >> 6) + 0x100] >> 6) >> 8;
    effect->unk3E = v4 * (gSineTable[(var >> 6)        ] >> 6) >> 8;
    effect->unk3C = ({effect->unk3C + 0x80;}) - (Rand16() & 0xFF);
    effect->unk3E = ({effect->unk3E + 0x80;}) - (Rand16() & 0xFF);
}

void sub_08098400(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Kirby *kirby = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (!Macro_08091C7C(effect)) {
        if (!Macro_0810B1F4(&kirby->base) || !(kirby->base.flags & 0x2000))
            ++effect->unk4;
        if (effect->unk4 == 6) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->unk4 & 1) {
            effect->sprite.tilesVram = kirby->base.sprite.tilesVram;
            effect->sprite.unk4 = kirby->base.sprite.unk4;
            effect->sprite.unk8 = kirby->base.sprite.unk8;
            effect->sprite.animId = kirby->base.sprite.animId;
            effect->sprite.animCursor = kirby->base.sprite.animCursor;
            effect->sprite.unk14 = ((effect->unk4 >> 1) + 0x1A) << 6;
            effect->sprite.unk16 = kirby->base.sprite.unk16;
            effect->sprite.variant = kirby->base.sprite.variant;
            effect->sprite.unk1B = kirby->base.sprite.unk1B;
            effect->sprite.unk1C = kirby->base.sprite.unk1C;
            effect->sprite.unk1D = kirby->base.sprite.unk1D;
            effect->sprite.numSubframes = kirby->base.sprite.numSubframes;
            effect->sprite.palId = kirby->base.sprite.palId;
            effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
            if (kirby->sprites[1].animId) {
                effect->sprite.tilesVram = kirby->sprites[1].tilesVram;
                effect->sprite.unk4 = kirby->sprites[1].unk4;
                effect->sprite.unk8 = kirby->sprites[1].unk8;
                effect->sprite.animId = kirby->sprites[1].animId;
                effect->sprite.animCursor = kirby->sprites[1].animCursor;
                effect->sprite.unk14 = ((effect->unk4 >> 1) + 0x1A) << 6;
                effect->sprite.unk16 = kirby->sprites[1].unk16;
                effect->sprite.variant = kirby->sprites[1].variant;
                effect->sprite.unk1B = kirby->sprites[1].unk1B;
                effect->sprite.unk1C = kirby->sprites[1].unk1C;
                effect->sprite.unk1D = kirby->sprites[1].unk1D;
                effect->sprite.numSubframes = kirby->sprites[1].numSubframes;
                effect->sprite.palId = kirby->sprites[1].palId;
                effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
                effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
                if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                    effect->sprite.x += gUnk_0203AD18[0];
                    effect->sprite.y += gUnk_0203AD18[1];
                    Macro_0803DBC8(effect, &effect->sprite);
                }
            }
        }
    }
}

void sub_08098700(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct ObjectBase *objBase = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (objBase->flags & 0x1000)
        effect->flags |= 0x1000;
    else {
        if (!Macro_0810B1F4(objBase) || !(objBase->flags & 0x2000))
            ++effect->unk4;
        if (effect->unk4 == 6) {
            effect->flags |= 0x1000;
            return;
        }
        if (effect->unk4 & 1) {
            effect->sprite.tilesVram = objBase->sprite.tilesVram;
            effect->sprite.unk4 = objBase->sprite.unk4;
            effect->sprite.unk8 = objBase->sprite.unk8;
            effect->sprite.animId = objBase->sprite.animId;
            effect->sprite.animCursor = objBase->sprite.animCursor;
            effect->sprite.unk14 = ((effect->unk4 >> 1) + 0x1A) << 6;
            effect->sprite.unk16 = objBase->sprite.unk16;
            effect->sprite.variant = objBase->sprite.variant;
            effect->sprite.unk1B = objBase->sprite.unk1B;
            effect->sprite.unk1C = objBase->sprite.unk1C;
            effect->sprite.unk1D = objBase->sprite.unk1D;
            effect->sprite.numSubframes = objBase->sprite.numSubframes;
            effect->sprite.palId = objBase->sprite.palId;
            effect->sprite.x = (effect->x >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.x >> 8);
            effect->sprite.y = (effect->y >> 8) - (gCurLevelInfo[gLocalPlayerId].viewportPosition.y >> 8);
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                effect->sprite.x += gUnk_0203AD18[0];
                effect->sprite.y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, &effect->sprite);
            }
        }
    }
}

void sub_080988B0(struct ObjectBase *objBase) {
    struct Task *t = TaskCreate(sub_08098938, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = objBase->x;
    effect->y = objBase->y;
    effect->parent = objBase;
    effect->roomId = objBase->roomId;
    effect->y += 0x1000;
    EffectObjectInitSprite(effect, &effect->sprite, 2, 0x384, 0x1E, 0x1E);
}

void sub_08098938(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite sprite;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        struct ObjectBase *objBase = effect->parent;

        if (objBase->flags & 0x1000) {
            effect->flags |= 0x1000;
            return;
        }
        effect->flags |= 4;
        Macro_08107BA8_4(effect, &effect->sprite, &sprite, 2, &effect->sprite);
        EffectObjectPostUpdate(effect);
    }
}

void sub_08098A78(struct Kirby *kirby, u8 a2) {
    struct Task *t = TaskCreate(sub_08098B34, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effect = tmp;

    ClearEffectObject(effect);
    effect->header.kind = 3;
    effect->x = kirby->base.x;
    effect->y = kirby->base.y;
    effect->parent = kirby;
    effect->roomId = kirby->base.roomId;
    if (kirby->base.flags & 1)
        effect->flags |= 1;
    if (kirby->ability == KIRBY_ABILITY_UFO)
        a2 += 2;
    effect->flags |= 0x4000;
    EffectObjectInitSprite(effect, &effect->sprite, 0x6012000, 0x2C7, a2, kirby->base.sprite.unk14 >> 6);
}

void sub_08098B34(void) {
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effect = tmp;
    struct Sprite *sprite = &effect->sprite;
    struct Kirby *kirby = effect->parent;

    if (effect->flags & 0x1000)
        TaskDestroy(gCurTask);
    else {
        effect->flags &= ~0x2405;
        effect->flags |= kirby->base.flags & 0x2405;
        effect->roomId = kirby->base.roomId;
        effect->x = kirby->base.x;
        effect->y = kirby->base.y;
        effect->sprite.unk1C = kirby->sprites[1].unk1C;
        if (kirby->ability == KIRBY_ABILITY_UFO) {
            if (kirby->animationIndex != 0x36) {
                effect->flags |= 0x1000;
                return;
            }
        } else {
            if (kirby->animationIndex != 0x63) {
                effect->flags |= 0x1000;
                return;
            }
        }
        if (Macro_0810B1F4(&kirby->base) && !(kirby->base.flags & 0x2000)) {
            sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
            sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                sprite->x += gUnk_0203AD18[0];
                sprite->y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, sprite);
            }
        } else {
            Macro_080FC150(effect, sprite);
            if (gLocalPlayerId == kirby->base.unk56) {
                sprite->x = (effect->x - gCurLevelInfo[gLocalPlayerId].viewportPosition.x) >> 8;
                sprite->y = (effect->y - gCurLevelInfo[gLocalPlayerId].viewportPosition.y) >> 8;
            }
            if (!(effect->flags & 0x400) && gKirbys[gLocalPlayerId].base.roomId == effect->roomId) {
                sprite->x += gUnk_0203AD18[0];
                sprite->y += gUnk_0203AD18[1];
                Macro_0803DBC8(effect, sprite);
            }
        }
    }
}

#ifndef GUARD_CODE_080023A4_H
#define GUARD_CODE_080023A4_H

#include "global.h"
#include "data.h"

extern void CreateLevelObjects(u8);
extern void sub_080023A4(u8);
extern u8 sub_080023E4(u8 playerId, u16 x, u16 y);
extern u8 sub_08002434(struct LevelInfo *, u16 x, u16 y);
extern u8 sub_08002470(u8 playerId, u16 x, u16 y);
extern u8 sub_080024F0(struct LevelInfo *, u16 x, u16 y);
extern u8 sub_0800255C(u8 playerId, u16 x, u16 y, u8 value);
extern union LevelInfo_1E0 sub_080025AC(u8 playerId, u8 x, u8 y);
extern union LevelInfo_1E0 sub_08002624(u8 playerId, u8 x, u8 y, u8);
extern u8 sub_080026A8(u8 playerId, u16 x, u16 y);
extern u8 sub_080026F8(u16 roomId);
extern u8 sub_0800271C(u16 roomId, u8);
extern u8 sub_08002750(u16 roomId);
extern u8 sub_08002774(u16 roomId, u8);
extern void sub_080027A8(void);
extern void sub_080027C8(void);

#endif

#ifndef GUARD_CODE_080023A4_H
#define GUARD_CODE_080023A4_H

#include "global.h"

struct Unk_02023530 {
	u8 unk000[484];
	void **objlist_ptr; // 0x1E4
	u8 unk1E8[1040];
	u16 current_room; // 0x5F8
	u8 unk5FA[110];
};

extern struct Unk_02023530 gUnk_02023530[4];
extern u32 gUnk_0203AD10;

extern void sub_0800A08C(u8);

#endif

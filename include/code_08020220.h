#ifndef GUARD_CODE_08020220_H
#define GUARD_CODE_08020220_H

#include "global.h"

// sub_08020220, sub_08020370 and sub_080203C8 are also non-static, but they are
// called only from asm/code_08032E98.s, so they have no declaration here.

void sub_08020428(void (*)(void));
void sub_08020490(void);
void sub_080204B0(u16, void *, u32);
u16 sub_0802055C(u16);

#endif

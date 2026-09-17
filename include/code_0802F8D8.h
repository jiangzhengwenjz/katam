#ifndef GUARD_CODE_0802F8D8_H
#define GUARD_CODE_0802F8D8_H

#include "code_0802E57C.h"

// The other non-static functions in src/code_0802F8D8.c are reached from
// asm/code_0802E57C.s or through the pointer table at gUnk_082EB7D0, neither of
// which is C, so they need external linkage but no declaration.

void sub_0802FBE0(struct Unk_0802E57C *);
void sub_0802FBF4(struct Unk_0802E57C *);

#endif // GUARD_CODE_0802F8D8_H

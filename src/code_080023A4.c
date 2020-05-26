#include "code_080023A4.h"
#include "data.h"

// TODO: define file boundaries

void sub_080023A4(u8 arg0) {
    struct Unk_02023530* r1 = gUnk_02023530 + arg0;
    if (r1->current_room != 0xffff &&
        (gUnk_0203AD10 & 1) == 0) {
        sub_0800A08C(arg0);
    }
}

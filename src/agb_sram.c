#include "agb_sram.h"

const char gAgbSramLibVer[] = "NINTENDOSRAM_V113";

static void ReadSramFast_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
        *dest++ = *src++;
}

void SetReadSramFastFunc(const u8 *src, u8 *dest, u32 size)
{
    const u16 *s;
    u16 *d;
    u16 readSramFast_Work[64];
    u16 size_;
    
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    s = (void *)((uintptr_t)ReadSramFast_Core);
    s = (void *)((uintptr_t)s & ~1);
    d = readSramFast_Work;
    size_ = ((uintptr_t)SetReadSramFastFunc - (uintptr_t)ReadSramFast_Core) / 2;
    while (size_ != 0)
    {
        *d++ = *s++;
        --size_;
    }
    ((void (*)(const u8 *, u8 *, u32))readSramFast_Work + 1)(src, dest, size);
}

void WriteSramFast(const u8 *src, u8 *dest, u32 size)
{
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    while (--size != -1)
        *dest++ = *src++;
}

static u32 VerifySramFast_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
        if (*dest++ != *src++)
            return (u32)(dest - 1);
    return 0;
}

u32 SetVerifySramFastFunc(const u8 *src, u8 *dest, u32 size)
{
    const u16 *s;
    u16 *d;
    u16 verifySramFast_Work[96];
    u16 size_;
    
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    s = (void *)((uintptr_t)VerifySramFast_Core);
    s = (void *)((uintptr_t)s & ~1);
    d = verifySramFast_Work;
    size_ = ((uintptr_t)SetVerifySramFastFunc - (uintptr_t)VerifySramFast_Core) / 2;
    while (size_ != 0)
    {
        *d++ = *s++;
        --size_;
    }
    return ((u32 (*)(const u8 *, u8 *, u32))verifySramFast_Work + 1)(src, dest, size);
}

u32 WriteAndVerifySramFast(const u8 *src, u8 *dest, u32 size)
{
    u8 i;
    u32 errorAddr;

    // try writing and verifying the data 3 times
    for (i = 0; i < 3; ++i)
    {
        WriteSramFast(src, dest, size);
        errorAddr = SetVerifySramFastFunc(src, dest, size);
        if (errorAddr == 0)
            break;
    }
    return errorAddr;
}

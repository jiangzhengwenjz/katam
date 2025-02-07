#include "save.h"
#include "code_08019CB8.h"
#include "functions.h"
#include "agb_sram.h"

extern u16 gUnused_03000464;

static void sbSaveFileInfoClear(void);
static void sbWorldPropsClear(void);
static const struct SaveBuffer *getSaveBufferType(enum SaveBufferType);

const struct SaveBuffer g_SaveFileInfo[] = {
    { (void *)&gUnused_03000464,    sizeof(gUnused_03000464)},
    { (void *)&gSaveID,             sizeof(gSaveID) },
    { (void *)-1u,                  -1u },
};


const struct SaveBuffer g_WorldProps[] = {
    { (void *)gUnk_02028BF0,                sizeof(gUnk_02028BF0) },
    { (void *)gUnk_02028C10,                sizeof(gUnk_02028C10) },
    { (void *)gVisitedDoors,                sizeof(gVisitedDoors) - 2 }, // TODO: why is this subtracted by 2?
    { (void *)&gTreasures,                  sizeof(gTreasures) },
    { (void *)&gShadowKirbyEncounters,      sizeof(gShadowKirbyEncounters) },
    { (void *)&gMirraEncounters,            sizeof(gMirraEncounters) },
    { (void *)&gAIKirbyState,               sizeof(gAIKirbyState) },
    { (void *)-1u, -1u },
};

void (*const sbClearFunctions[])(void) = { 
    sbSaveFileInfoClear, sbWorldPropsClear
};

static void nullsub_4(void) {}

s16 writeSaveSectionByID(enum SaveBufferType sbufferType, u16 saveID) {
    s16 a = saveID * 2;
    s16 b = saveID * 2 + 1;
    s16 c;

    c = verifySaveByOffset(sbufferType, saveID * 2);
    if (c == 0) return 0;
    c = verifySaveByOffset(sbufferType, saveID * 2 + 1);
    if (c != 0) return c;
    c = writeSaveSectionByOffset(sbufferType, saveID * 2);
    if (c != 0) return 0;
    writeSaveSectionByOffset(sbufferType, saveID * 2 + 1);
    return 0;
}

void calculateSaveChecksum(enum SaveBufferType sbufferType, struct SaveChecksum *out) {
    const struct SaveBuffer *sBuffer;
    u32 i;

    switch (sbufferType) {
    default:
        sBuffer = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sBuffer = g_SaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sBuffer = g_WorldProps;
        break;
    }
    CpuFill32(0, out, sizeof(struct SaveChecksum));
    while ((uintptr_t)sBuffer->dataPtr != -1u && sBuffer->dataSize != -1u) {
        for (i = 0; i != sBuffer->dataSize; i += 2)
            out->a += *(u16 *)(sBuffer->dataPtr + i);
        ++sBuffer;
    }
    out->b = ~out->a;
    out->c = ~out->a + 1;
    out->d = 0;
}

s16 writeSaveSectionByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 sbCursor, sbSaveFileInfoOffset, sbWorldPropsOffset;
    const struct SaveBuffer *srcSaveBuf, *dstSaveBuf;
    struct SaveChecksum checksum;

    srcSaveBuf = g_SaveFileInfo;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    do sbSaveFileInfoOffset = sbCursor + 8; while (0); // reg mismatch
    srcSaveBuf = g_WorldProps;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbWorldPropsOffset = sbCursor + 8;
    switch (sbufferType) {
    default:
        return -1;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sramPointer += offset * sbSaveFileInfoOffset;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sramPointer += 2 * sbSaveFileInfoOffset;
        sramPointer += offset * sbWorldPropsOffset;
        break;
    }
    calculateSaveChecksum(sbufferType, &checksum);
    if (WriteSramEx((u8 *)&checksum, sramPointer, sizeof(struct SaveChecksum)))
        return -1;
    sramPointer += 8;
    switch (sbufferType) {
    default:
        dstSaveBuf = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        dstSaveBuf = g_SaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        dstSaveBuf = g_WorldProps;
        break;
    }
    while ((uintptr_t)dstSaveBuf->dataPtr != -1u && dstSaveBuf->dataSize != -1u) {
        if (WriteSramEx(dstSaveBuf->dataPtr, sramPointer, dstSaveBuf->dataSize))
            return -1;
        sramPointer += dstSaveBuf->dataSize;
        ++dstSaveBuf;
    }
    return 0;
}

s16 verifySaveByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 sbCursor, sbSaveFileInfoOffset, sbWorldPropsOffset;
    const struct SaveBuffer *srcSaveBuf, *dstSaveBuf;
    struct SaveChecksum srcChecksum, dstChecksum, *p;
    u32 lhs, rhs;

    srcSaveBuf = g_SaveFileInfo;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbSaveFileInfoOffset = sbCursor + 8;
    srcSaveBuf = g_WorldProps;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbWorldPropsOffset = sbCursor + 8;
    switch (sbufferType) {
    default:
        return -1;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sramPointer += offset * sbSaveFileInfoOffset;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sramPointer += 2 * sbSaveFileInfoOffset;
        sramPointer += offset * sbWorldPropsOffset;
        break;
    }
#ifndef NONMATCHING
    asm(""::"r"(sbWorldPropsOffset), "r"(sbSaveFileInfoOffset));
#endif
    ReadSram(sramPointer, (u8 *)&srcChecksum, sizeof(struct SaveBuffer));
    sramPointer += 8;
    switch (sbufferType) {
    default:
        dstSaveBuf = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        dstSaveBuf = g_SaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        dstSaveBuf = g_WorldProps;
        break;
    }
    while ((uintptr_t)dstSaveBuf->dataPtr != -1u && dstSaveBuf->dataSize != -1u) {
        ReadSram(sramPointer, dstSaveBuf->dataPtr, dstSaveBuf->dataSize);
        sramPointer += dstSaveBuf->dataSize;
        ++dstSaveBuf;
    }
    p = &srcChecksum;
    lhs = ~srcChecksum.a;
    rhs = p->b;
    if ((u16)lhs != p->b) return -1;
    if ((u16)(lhs+1) != p->c) return -1;
    if (p->d) return -1;
    calculateSaveChecksum(sbufferType, &dstChecksum);
    if ((dstChecksum.a != srcChecksum.a || dstChecksum.b != srcChecksum.b)
        || (dstChecksum.c != srcChecksum.c || dstChecksum.d != srcChecksum.d))
        return -1;
    return 0;
}

// not referenced
static u16 sub_0800ABF8(void) {
    return 7;
}

// TODO: This mostly likely returned a macro that evaulated to seven. Or it just had a bunch of commented out code.
u16 theNumberSeven(void) {
    return 7;
}

void clearSaveBuffer(enum SaveBufferType sbufferType) {
    const struct SaveBuffer *destSb = getSaveBufferType(sbufferType);

    while ((uintptr_t)destSb->dataPtr != -1u && destSb->dataSize != -1u) {
        CpuFill16(0, destSb->dataPtr, destSb->dataSize);
        ++destSb;
    }
    sbClearFunctions[sbufferType]();
}

void initSaveBuffers(void) {
    enum SaveBufferType i;

    for (i = 0; i < 2; ++i) {
        const struct SaveBuffer *sbType = getSaveBufferType(i);

        while ((uintptr_t)sbType->dataPtr != -1u && sbType->dataSize != -1u) {
            CpuFill16(0, sbType->dataPtr, sbType->dataSize);
            ++sbType;
        }
        sbClearFunctions[i]();
    }
}

s16 updateSaveBufferByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u16 dupOffset = (offset *= 2) + 1;
    s16 result;

    result = writeSaveSectionByOffset(sbufferType, offset);
    if (result) {
        return result;
    } else {
        result = writeSaveSectionByOffset(sbufferType, dupOffset);
        if (result)
            return result;
    }
    return 0;
}

void sbSaveFileInfoClear(void) {
    nullsub_4();
}

void sbWorldPropsClear(void) { 
    sub_080027C8();
    sub_08002868();
}

static const struct SaveBuffer *getSaveBufferType(enum SaveBufferType sbufferType) {
    const struct SaveBuffer *b;

    switch (sbufferType) {
    default:
        b = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        b = g_SaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        b = g_WorldProps;
        break;
    }
    return b;
}

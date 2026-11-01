#include "global.h"

#include "data.h"
#include "kirby.h"
#include "main.h"
#include "palette.h"
#include "task.h"

#include "palette_effects.h"
#include "functions.h"

struct SourcePalettes {
    /* 0x000 */ u16 bg[0x100];
    /* 0x200 */ u16 obj[0x100];
}; /* size = 0x400 */

extern struct SourcePalettes gSourcePalettes ALIGNED(4);
extern struct SourcePalettes gSourcePalettesBackup ALIGNED(4);

// The sprite palette transforms inline this operation; other callers use SaveObjPaletteColors.
static inline void SaveObjPaletteColorsInline(u8 offset, u8 num)
{
    CpuCopy16(&gObjPalette[offset], &gSourcePalettes.obj[offset], num << 1);
}

static void UpdatePaletteEffects(void);

static void ApplyPaletteDarkening(struct PaletteEffect *);
static void ApplyPaletteBrightening(struct PaletteEffect *);
static void ApplyPaletteTableDarkening(struct PaletteEffect *);
static void ApplyPaletteRedTint(struct PaletteEffect *);
static void ApplyPaletteWhiteFill(struct PaletteEffect *);

static void PaletteEffectsTaskDestructor(struct Task *task UNUSED);
static void InsertPaletteEffectByPriority(struct PaletteEffect *arg0, u8 arg1);

static const u16 sBrightenRedTable[64] = {
    0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007, 0x0008,
    0x0009, 0x000A, 0x000B, 0x000C, 0x000D, 0x000E, 0x000F, 0x0010,
    0x0011, 0x0012, 0x0013, 0x0014, 0x0015, 0x0016, 0x0017, 0x0018,
    0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 0x001E, 0x001F, 0x001F,
    0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F,
    0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F,
    0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F,
    0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F, 0x001F,
};

static const u16 sBrightenGreenTable[64] = {
    0x0020, 0x0040, 0x0060, 0x0080, 0x00A0, 0x00C0, 0x00E0, 0x0100,
    0x0120, 0x0140, 0x0160, 0x0180, 0x01A0, 0x01C0, 0x01E0, 0x0200,
    0x0220, 0x0240, 0x0260, 0x0280, 0x02A0, 0x02C0, 0x02E0, 0x0300,
    0x0320, 0x0340, 0x0360, 0x0380, 0x03A0, 0x03C0, 0x03E0, 0x03E0,
    0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0,
    0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0,
    0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0,
    0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0, 0x03E0,
};

static const u16 sBrightenBlueTable[64] = {
    0x0400, 0x0800, 0x0C00, 0x1000, 0x1400, 0x1800, 0x1C00, 0x2000,
    0x2400, 0x2800, 0x2C00, 0x3000, 0x3400, 0x3800, 0x3C00, 0x4000,
    0x4400, 0x4800, 0x4C00, 0x5000, 0x5400, 0x5800, 0x5C00, 0x6000,
    0x6400, 0x6800, 0x6C00, 0x7000, 0x7400, 0x7800, 0x7C00, 0x7C00,
    0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00,
    0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00,
    0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00,
    0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00, 0x7C00,
};

static const u16 sDarkenRedTable[64] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007,
    0x0008, 0x0009, 0x000A, 0x000B, 0x000C, 0x000D, 0x000E, 0x000F,
    0x0010, 0x0011, 0x0012, 0x0013, 0x0014, 0x0015, 0x0016, 0x0017,
    0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 0x001E, 0x001F,
};

static const u16 sDarkenGreenTable[64] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0020, 0x0040, 0x0060, 0x0080, 0x00A0, 0x00C0, 0x00E0,
    0x0100, 0x0120, 0x0140, 0x0160, 0x0180, 0x01A0, 0x01C0, 0x01E0,
    0x0200, 0x0220, 0x0240, 0x0260, 0x0280, 0x02A0, 0x02C0, 0x02E0,
    0x0300, 0x0320, 0x0340, 0x0360, 0x0380, 0x03A0, 0x03C0, 0x03E0,
};

static const u16 sDarkenBlueTable[64] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0400, 0x0800, 0x0C00, 0x1000, 0x1400, 0x1800, 0x1C00,
    0x2000, 0x2400, 0x2800, 0x2C00, 0x3000, 0x3400, 0x3800, 0x3C00,
    0x4000, 0x4400, 0x4800, 0x4C00, 0x5000, 0x5400, 0x5800, 0x5C00,
    0x6000, 0x6400, 0x6800, 0x6C00, 0x7000, 0x7400, 0x7800, 0x7C00,
};

static void (*const sPaletteEffectCallbacks[5])(struct PaletteEffect *) = {
    ApplyPaletteDarkening, ApplyPaletteBrightening, ApplyPaletteTableDarkening, ApplyPaletteRedTint, ApplyPaletteWhiteFill,
};

static void QueuePaletteEffect(struct PaletteEffect *effect)
{
    struct Task *task = gPaletteEffectsTask;
    struct PaletteEffectManager *state = &gPaletteEffectManager;
    u8 i;
    struct PaletteEffect **slot;
    struct PaletteEffect *existing;

    if (task == NULL) {
        gPaletteEffectsTask = TaskCreate(UpdatePaletteEffects, 0, 0xFFFE, TASK_x0004 | TASK_USE_IWRAM, PaletteEffectsTaskDestructor);
        for (i = 0; i < ARRAY_COUNT(state->unk80); i++)
            state->unk80[i] = NULL;
    }
    slot = &state->unk80[0];
    existing = *slot;
    if (existing != NULL) {
        if (existing->unk3 <= effect->unk3) {
            InsertPaletteEffectByPriority(effect, 1);
            return;
        }
        InsertPaletteEffectByPriority(existing, 1);
    }
    *slot = effect;
}

static void CompactPaletteEffectQueue(void)
{
    struct PaletteEffectManager *state = &gPaletteEffectManager;

    if (!state->unk80[0] && !state->unk80[1] && !state->unk80[2] && !state->unk80[3]
        && !state->unk80[4] && !state->unk80[5] && !state->unk80[6] && !state->unk80[7])
        return;
    if (state->unk80[6] == NULL) {
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[5] == NULL) {
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[4] == NULL) {
        state->unk80[4] = state->unk80[5];
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[3] == NULL) {
        state->unk80[3] = state->unk80[4];
        state->unk80[4] = state->unk80[5];
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[2] == NULL) {
        state->unk80[2] = state->unk80[3];
        state->unk80[3] = state->unk80[4];
        state->unk80[4] = state->unk80[5];
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[1] == NULL) {
        state->unk80[1] = state->unk80[2];
        state->unk80[2] = state->unk80[3];
        state->unk80[3] = state->unk80[4];
        state->unk80[4] = state->unk80[5];
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
    if (state->unk80[0] == NULL) {
        state->unk80[0] = state->unk80[1];
        state->unk80[1] = state->unk80[2];
        state->unk80[2] = state->unk80[3];
        state->unk80[3] = state->unk80[4];
        state->unk80[4] = state->unk80[5];
        state->unk80[5] = state->unk80[6];
        state->unk80[6] = state->unk80[7];
        state->unk80[7] = NULL;
    }
}

static void UpdatePaletteEffects(void)
{
    struct PaletteEffectManager *state = &gPaletteEffectManager;
    bool32 objRestored = FALSE;
    bool32 bgRestored = FALSE;
    u16 flags = state->unk0[0].unk8 | state->unk0[1].unk8 | state->unk0[2].unk8 | state->unk0[3].unk8
        | state->unk0[4].unk8 | state->unk0[5].unk8 | state->unk0[6].unk8 | state->unk0[7].unk8;
    u8 i;

    if (flags & 4) {
        for (i = 0; i < ARRAY_COUNT(state->unk80); i++) {
            if (!(state->unk0[i].unk8 & 0x10)) {
                if ((state->unk0[i].unk8 & 4)
                    && (!(gMainFlags & 0x800) || !(flags & 0x100) || (state->unk0[i].unk8 & 0x80))) {
                    if (state->unk0[i].unk6 && !bgRestored) {
                        CpuCopy32(gSourcePalettes.bg, gBgPalette, sizeof(gBgPalette));
                        bgRestored = TRUE;
                    }
                    if (state->unk0[i].unk4 && !objRestored) {
                        CpuCopy32(gSourcePalettes.obj, gObjPalette, sizeof(gObjPalette));
                        objRestored = TRUE;
                    }
                }
            }
        }
    }
    if ((gMainFlags & 0x800) && !(flags & 0x80))
        return;
    for (i = 0; i < ARRAY_COUNT(state->unk80); i++) {
        if (state->unk80[i] && (!(gMainFlags & 0x800) || !(flags & 0x100) || (state->unk80[i]->unk8 & 0x80))) {
            sPaletteEffectCallbacks[state->unk80[i]->unk0](state->unk80[i]);
            if (!(state->unk80[i]->unk8 & 2)) {
                if (state->unk80[i]->unk8 & 1)
                    state->unk80[i] = NULL;
                objRestored = FALSE;
            } else {
                // Indexed by queue position, not by the effect the slot points at.
                struct PaletteEffect *effect = &state->unk0[i];
                if (!(effect->unk8 & 0x10)) {
                    if ((effect->unk8 & 4) && effect->unk4)
                        objRestored = TRUE;
                }
            }
        }
    }
    CompactPaletteEffectQueue();
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        if (objRestored) {
            if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE) {
                LoadObjPaletteWithTransformation(gObjPalette, 0, ARRAY_COUNT(gObjPalette));
            } else {
                DmaCopy16(3, gObjPalette, gObjPalette, sizeof(gObjPalette));
                gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
            }
        }
        if (bgRestored) {
            if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
                LoadBgPaletteWithTransformation(gBgPalette, 0, ARRAY_COUNT(gBgPalette));
            } else {
                DmaCopy16(3, gBgPalette, gBgPalette, sizeof(gBgPalette));
                gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
            }
        }
    }
}

static inline void DarkenColor(u16 *palette, struct PaletteEffect *effect)
{
    u16 channel = (*palette & 0x1F) - effect->unk1;
    u32 underflow = channel & 0x8000;
    u16 result = channel;
    if (underflow)
        result = 0;
    channel = ((*palette >> 5) & 0x1F) - effect->unk1;
    if (!(channel & 0x8000))
        result |= channel << 5;
    channel = ((*palette >> 10) & 0x1F) - effect->unk1;
    if (!(channel & 0x8000))
        result |= channel << 10;
    *palette = result;
}

// The colour accumulates in a function-scope variable: as an inline-function local it
// takes r2 ahead of the adjustment and each colour's final OR lands in r0.
#define BRIGHTEN_COLOR(palette, effect)                                         \
    ({ amount = (effect)->unk1;                                                 \
     color = sBrightenRedTable[(*(palette) & 0x1F) + amount];                   \
     color |= sBrightenGreenTable[((*(palette) >> 5) & 0x1F) + amount];         \
     color |= sBrightenBlueTable[((*(palette) >> 10) & 0x1F) + amount];         \
     *(palette) = color; })

static inline void DarkenColorWithTable(u16 *palette, struct PaletteEffect *effect)
{
    const u16 *redTable = sDarkenRedTable;
    s32 offset;
    u32 result;
    u32 red = *palette & 0x1F;
    offset = effect->unk1 - 0x1F;
    result = redTable[red - offset];
    result |= sDarkenGreenTable[((*palette >> 5) & 0x1F) - offset];
    result |= sDarkenBlueTable[((*palette >> 10) & 0x1F) - offset];
    *palette = result;
}

static inline void TintColorRed(u16 *palette, struct PaletteEffect *effect)
{
    s8 amount = effect->unk1;
    s32 offset;
    u32 green;
    u32 result = sBrightenRedTable[(*palette & 0x1F) + amount];
    green = (*palette >> 5) & 0x1F;
    offset = amount - 0x1F;
    result |= sDarkenGreenTable[green - offset];
    result |= sDarkenBlueTable[((*palette >> 10) & 0x1F) - offset];
    *palette = result;
}

static inline void AdvancePaletteEffect(struct PaletteEffect *effect, u32 flags)
{
    s32 current;
    s32 tgt;
    s8 target;
    effect->unkC += effect->unkA;
    current = effect->unk1 = effect->unkC >> 8;
    tgt = effect->unk2;
    target = effect->unk2;
    if ((current <= tgt && effect->unkA < 0) || (current >= tgt && effect->unkA > 0)) {
        struct PaletteEffect *e = effect;
        if (flags & 0x20) {
            if (flags & 0x40) {
                e->unkC = e->unk2 * 0x100;
                e->unk1 = target;
            } else {
                u16 newFlags;
                // TODO(match): The do-while(0) keeps regmove from folding the ORed value back
                // into the flags register, so newFlags gets a register of its own.
                do newFlags = flags | 1; while (0);
                e->unk8 = newFlags & 0xFF59;
            }
        } else {
            e->unk1 = target;
            {
                u16 newFlags = flags | 0x20;
                // TODO(match): The do-while(0) around the store keeps regmove from folding
                // newFlags into the flags register, so the store reads a register of its own.
                do e->unk8 = newFlags; while (0);
            }
        }
    }
}

// Each bank has fifteen visible colors after its transparent entry.
#define TRANSFORM_VISIBLE_COLORS(transform)                                     \
    ({                                                                          \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
        ++palette; transform(palette, effect);                                  \
    })

static void ApplyPaletteDarkening(struct PaletteEffect *effect)
{
    u16 *palette;
    u16 bank;
    u32 flags;
    if (effect->unk8 & 2) {
        palette = gBgPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk6 >> bank) & 1) {
                TRANSFORM_VISIBLE_COLORS(DarkenColor);
                ++palette;
            } else {
                palette += 16;
            }
        }
        palette = gObjPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk4 >> bank) & 1) {
                TRANSFORM_VISIBLE_COLORS(DarkenColor);
                ++palette;
            } else {
                palette += 16;
            }
        }
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    flags = effect->unk8;
    if (!(flags & 1) && (!(gMainFlags & 0x800) || (flags & 0x80))) {
        if (effect->unk1 == effect->unk2) {
            if (flags & 0x40)
                effect->unk1 = effect->unk2;
            else {
                u16 newFlags = flags | 1;
                flags = newFlags & 0xFF79;
                effect->unk8 = flags;
            }
        } else {
            effect->unkC += effect->unkA;
            effect->unk1 = effect->unkC >> 8;
        }
    }
}

static void ApplyPaletteBrightening(struct PaletteEffect *effect)
{
    u16 *palette;
    u16 bank;
    u32 finished;
    u32 flags;
    u32 flags2;
    u32 color;
    s8 amount;
    if (effect->unk8 & 2) {
        palette = gBgPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk6 >> bank) & 1) {
                if (bank == 0)
                    BRIGHTEN_COLOR(palette, effect);
                TRANSFORM_VISIBLE_COLORS(BRIGHTEN_COLOR);
                ++palette;
            } else {
                palette += 16;
            }
        }
        palette = gObjPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk4 >> bank) & 1) {
                TRANSFORM_VISIBLE_COLORS(BRIGHTEN_COLOR);
                ++palette;
            } else {
                palette += 16;
            }
        }
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    flags = effect->unk8;
    finished = flags & 1;
    flags2 = flags;
    if (!finished && (!(gMainFlags & 0x800) || (flags2 & 0x80)))
        AdvancePaletteEffect(effect, flags2);
}

static void ApplyPaletteTableDarkening(struct PaletteEffect *effect)
{
    u16 *palette;
    u16 bank;
    u32 finished;
    u32 flags;
    u32 flags2;
    if (effect->unk8 & 2) {
        palette = gBgPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk6 >> bank) & 1) {
                if (bank == 0)
                    DarkenColorWithTable(palette, effect);
                TRANSFORM_VISIBLE_COLORS(DarkenColorWithTable);
                ++palette;
            } else {
                palette += 16;
            }
        }
        palette = gObjPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk4 >> bank) & 1) {
                TRANSFORM_VISIBLE_COLORS(DarkenColorWithTable);
                ++palette;
            } else {
                palette += 16;
            }
        }
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    flags = effect->unk8;
    finished = flags & 1;
    flags2 = flags;
    if (!finished && (!(gMainFlags & 0x800) || (flags2 & 0x80)))
        AdvancePaletteEffect(effect, flags2);
}

static void ApplyPaletteRedTint(struct PaletteEffect *effect)
{
    u16 *palette;
    u16 bank;
    u32 finished;
    u32 flags;
    u32 flags2;
    if (effect->unk8 & 2) {
        palette = gBgPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk6 >> bank) & 1) {
                if (bank == 0)
                    TintColorRed(palette, effect);
                TRANSFORM_VISIBLE_COLORS(TintColorRed);
                ++palette;
            } else {
                palette += 16;
            }
        }
        palette = gObjPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk4 >> bank) & 1) {
                TRANSFORM_VISIBLE_COLORS(TintColorRed);
                ++palette;
            } else {
                palette += 16;
            }
        }
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    flags = effect->unk8;
    finished = flags & 1;
    flags2 = flags;
    if (!finished && (!(gMainFlags & 0x800) || (flags2 & 0x80)))
        AdvancePaletteEffect(effect, flags2);
}

static void ApplyPaletteWhiteFill(struct PaletteEffect *effect)
{
    u16 *palette;
    u16 bank;
    u32 finished;
    u32 flags;
    u32 flags2;
    if (effect->unk8 & 2) {
        palette = gBgPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk6 >> bank) & 1) {
                CpuFill32(0xFFFFFFFF, palette, 16 * sizeof(*palette));
                palette += 16;
            } else {
                palette += 16;
            }
        }
        palette = gObjPalette;
        for (bank = 0; bank < 16; bank++) {
            if ((effect->unk4 >> bank) & 1) {
                CpuFill32(0xFFFFFFFF, palette, 16 * sizeof(*palette));
                palette += 16;
            } else {
                palette += 16;
            }
        }
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    flags = effect->unk8;
    finished = flags & 1;
    flags2 = flags;
    if (!finished)
        AdvancePaletteEffect(effect, flags2);
}

#undef TRANSFORM_VISIBLE_COLORS
#undef BRIGHTEN_COLOR

struct PaletteEffect *CreateRoomPaletteEffect(u8 slot, u16 room)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 0xC;
    if (gKirbys[gLocalPlayerId].base.roomId == room) {
        effect->unk8 = 0xE;
    }
    effect->unkE = room;
    effect->unkA = 0x200;
    effect->unkC = 0;
    effect->unk1 = 0;
    effect->unk2 = 0x1F;
    effect->unk0 = 1;
    effect->unk3 = 0xF;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    QueuePaletteEffect(effect);
    return effect;
}

struct PaletteEffect *CreateLowPriorityRoomPaletteEffect(u8 slot, u16 room)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 0xC;
    if (gKirbys[gLocalPlayerId].base.roomId == room) {
        effect->unk8 = 0xE;
    }
    effect->unkE = room;
    effect->unkA = 0x200;
    effect->unkC = 0;
    effect->unk1 = 0;
    effect->unk2 = 0x1F;
    effect->unk0 = 1;
    effect->unk3 = 8;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    QueuePaletteEffect(effect);
    return effect;
}

struct PaletteEffect *CreatePaletteFadeFromWhite(u8 slot)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 4;
    if (slot >= gNumKirbys) {
        effect->unk8 = 6;
    } else if (gKirbys[gLocalPlayerId].base.roomId == gKirbys[slot].base.roomId) {
        effect->unk8 = 6;
    }
    // TODO: Original UB: slots 4-7 read beyond the four-element gKirbys array.
    effect->unkE = gKirbys[slot].base.roomId;
    effect->unkA = -0x200;
    effect->unkC = 0x1F00;
    effect->unk1 = 0x1F;
    effect->unk2 = 0;
    effect->unk0 = 1;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    effect->unk3 = 0xA;
    QueuePaletteEffect(effect);
    return effect;
}

struct PaletteEffect *CreatePaletteFadeToWhite(u8 slot)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 0x4C;
    if (slot >= gNumKirbys) {
        effect->unk8 = 0x4E;
    } else if (gKirbys[gLocalPlayerId].base.roomId == gKirbys[slot].base.roomId) {
        effect->unk8 = 0x4E;
    }
    // TODO: Original UB: slots 4-7 read beyond the four-element gKirbys array.
    effect->unkE = gKirbys[slot].base.roomId;
    effect->unkA = 0x200;
    effect->unkC = 0;
    effect->unk1 = 0;
    effect->unk2 = 0x1F;
    effect->unk0 = 1;
    effect->unk3 = 0xA;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    QueuePaletteEffect(effect);
    return effect;
}

// Advance the fade without applying colors to the displayed palettes.
struct PaletteEffect *CreateHiddenPaletteFadeToWhite(u8 slot)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 0x14;
    // TODO: Original UB: slots 4-7 read beyond the four-element gKirbys array.
    effect->unkE = gKirbys[slot].base.roomId;
    effect->unkA = 0x200;
    effect->unkC = 0;
    effect->unk1 = 0;
    effect->unk2 = 0x1F;
    effect->unk0 = 1;
    effect->unk3 = 0xA;
    effect->unk4 = 0xFFFF;
    effect->unk6 = 0xFFFF;
    QueuePaletteEffect(effect);
    return effect;
}

static struct PaletteEffect *UNUSED HoldPaletteEffect(u8 slot)
{
    struct PaletteEffect *effect;

    struct PaletteEffectManager *state;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    effect->unk8 = 4;
    if ((slot >= gNumKirbys) || (gKirbys[gLocalPlayerId].base.roomId == gKirbys[slot].base.roomId)) {
        effect->unk8 = 6;
    }
    effect->unkA = 0;
    effect->unk2 = 0xFF;
    return effect;
}

struct PaletteEffect *CreatePaletteDim(u8 slot)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 0x4C;
    if (slot >= gNumKirbys) {
        effect->unk8 = 0x4E;
    } else if (gKirbys[gLocalPlayerId].base.roomId == gKirbys[slot].base.roomId) {
        effect->unk8 = 0x4E;
    }
    // TODO: Original UB: slots 4-7 read beyond the four-element gKirbys array.
    effect->unkE = gKirbys[slot].base.roomId;
    effect->unkA = 0x100;
    effect->unkC = 0;
    effect->unk1 = 0;
    effect->unk2 = 0xA;
    effect->unk0 = 0;
    effect->unk4 = 0x3F00;
    effect->unk6 = 0x3FFF;
    effect->unk3 = 5;
    QueuePaletteEffect(effect);
    return effect;
}

struct PaletteEffect *CreatePaletteUndim(u8 slot)
{
    struct PaletteEffectManager *state;
    struct PaletteEffect *effect;
    u8 queueIndex;

    state = &gPaletteEffectManager;
    effect = &state->unk0[slot];
    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        if (state->unk80[queueIndex] == effect) {
            state->unk80[queueIndex] = NULL;
            CompactPaletteEffectQueue();
        }
    }
    effect->unk8 = 4;
    if (slot >= gNumKirbys) {
        effect->unk8 = 6;
    } else if (gKirbys[gLocalPlayerId].base.roomId == gKirbys[slot].base.roomId) {
        effect->unk8 = 6;
    }
    // TODO: Original UB: slots 4-7 read beyond the four-element gKirbys array.
    effect->unkE = gKirbys[slot].base.roomId;
    effect->unkA = -0x200;
    effect->unkC = 0xA00;
    effect->unk1 = 0xA;
    effect->unk2 = 0;
    effect->unk0 = 0;
    effect->unk4 = 0x3F00;
    effect->unk6 = 0x3FFF;
    effect->unk3 = 5;
    QueuePaletteEffect(effect);
    return effect;
}

void EnablePaletteEffectsForCurrentRoom(void)
{
    struct PaletteEffectManager *state = &gPaletteEffectManager;
    struct PaletteEffect *effect;
    u8 queueIndex;

    for (queueIndex = 0; queueIndex < ARRAY_COUNT(state->unk80); queueIndex++) {
        effect = &state->unk0[queueIndex];
        if ((effect->unk8 & 4) && (gKirbys[gLocalPlayerId].base.roomId == effect->unkE) && !(effect->unk8 & 0x10)) {
            effect->unk8 |= 2;
        }
    }
}

static inline s8 ClampPaletteChannel(s32 value)
{
    s8 result = value;

    if (result & 0xE0) {
        if (result & 0x80)
            result = 0;
        else
            result = 0x1F;
    }
    return result;
}

void BlendSpriteAnimationPalettes(u8 paletteId, u16 sourceAnim, u8 sourceVariant, u16 targetAnim, u8 targetVariant, u16 amount)
{
    u16 source[16];
    u16 target[16];
    struct Sprite sprite;
    u8 i;

    sprite.tilesVram = BG_VRAM;
    sprite.unk1B = 0xFF;
    sprite.x = 0;
    sprite.y = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.palId = paletteId;
    sprite.unk8 = 0x80000;
    if (targetAnim == 0 && targetVariant == 0)
        CpuCopy16(&gObjPalette[paletteId * 16], target, sizeof(target));
    if (sourceAnim != 0 || sourceVariant != 0) {
        sprite.animId = sourceAnim;
        sprite.variant = sourceVariant;
        sub_08155128(&sprite);
    }
    CpuCopy16(&gObjPalette[paletteId * 16], source, sizeof(source));
    if (targetAnim != 0 || targetVariant != 0) {
        sprite.animId = targetAnim;
        sprite.variant = targetVariant;
        sub_08155128(&sprite);
        CpuCopy16(&gObjPalette[paletteId * 16], target, sizeof(target));
    }
    for (i = 1; !(i & 0xF0); i++) {
        u8 srcLow, dstLow;
        u16 srcChannel, dstChannel;
        u16 color;
        s32 difference;
        s32 mask = 0x1F;
        srcLow = source[i];
        dstLow = target[i];
        {
            s32 sourceRed, targetRed;
            // TODO(match): The do-while(0), with the compound red arithmetic below, is what
            // masks the target red byte into a fresh copy of the mask register as the original
            // does; written as a plain expression the red channel masks in place instead.
            do targetRed = dstLow & mask; while (0);
            sourceRed = srcLow & mask;
            targetRed -= sourceRed;
            sourceRed += (amount * targetRed) >> 8;
            color = ClampPaletteChannel(sourceRed);
        }
        srcChannel = source[i] >> 5;
        dstChannel = target[i] >> 5;
        difference = (dstChannel & mask) - (srcChannel & mask);
        color |= ClampPaletteChannel((srcChannel & mask) + ((amount * difference) >> 8)) << 5;
        srcChannel = source[i] >> 10;
        dstChannel = target[i] >> 10;
        difference = (dstChannel & mask) - (srcChannel & mask);
        color |= ClampPaletteChannel((srcChannel & mask) + ((amount * difference) >> 8)) << 10;
        source[i] = color;
    }
    if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE)
        LoadObjPaletteWithTransformation(source, paletteId * 16, 16);
    else {
        DmaCopy16(3, source, &gObjPalette[paletteId * 16], sizeof(source));
        gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    SaveObjPaletteColorsInline(paletteId * 16, 16);
}

void OffsetSpriteAnimationPalette(u8 paletteId, u16 anim, u8 variant, s8 red, s8 green, s8 blue, u16 amount)
{
    u16 colors[16];
    struct Sprite sprite;
    u8 i;

    sprite.tilesVram = BG_VRAM;
    sprite.unk1B = 0xFF;
    sprite.x = 0;
    sprite.y = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.palId = paletteId;
    sprite.unk8 = 0x80000;
    if (anim != 0 || variant != 0) {
        sprite.animId = anim;
        sprite.variant = variant;
        sub_08155128(&sprite);
    }
    CpuCopy16(&gObjPalette[paletteId * 16], colors, sizeof(colors));
    for (i = 1; !(i & 0xF0); i++) {
        u8 low;
        u16 color;
        s32 mask = 0x1F;
        // TODO(match): The do-while(0) keeps the load and red arithmetic in separate
        // first-CSE blocks. Without it, CSE substitutes the load temporary for low,
        // changing the mask destination and subsequent register allocation.
        do low = colors[i]; while (0);
        {
            s32 delta = (red * amount) >> 8;
            s32 value = low & mask;
            value += delta;
            color = ClampPaletteChannel(value);
        }
        {
            u32 channel = colors[i] >> 5;
            s32 delta = (amount * green) >> 8;
            color |= ClampPaletteChannel((channel & mask) + delta) << 5;
        }
        {
            u32 channel = colors[i] >> 10;
            s32 delta = (amount * blue) >> 8;
            color |= ClampPaletteChannel((channel & mask) + delta) << 10;
        }
        colors[i] = color;
    }
    if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE)
        LoadObjPaletteWithTransformation(colors, paletteId * 16, 16);
    else {
        DmaCopy16(3, colors, &gObjPalette[paletteId * 16], sizeof(colors));
        gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    SaveObjPaletteColorsInline(paletteId * 16, 16);
}

bool8 IsPaletteEffectFinished(u8 slot)
{
    if (gPaletteEffectManager.unk0[slot].unk8 & 1)
        return TRUE;
    else
        return FALSE;
}

static bool32 UNUSED AreKirbyPaletteEffectsInactive(void)
{
    if (!(gPaletteEffectManager.unk0[0].unk8 & 4)
        && !(gPaletteEffectManager.unk0[1].unk8 & 4)
        && !(gPaletteEffectManager.unk0[2].unk8 & 4)
        && !(gPaletteEffectManager.unk0[3].unk8 & 4))
        return TRUE;
    else
        return FALSE;
}

void DestroyPaletteEffectsTask(u32 arg0 UNUSED)
{
    TaskDestroy(gPaletteEffectsTask);
}

void LoadBgPaletteAndPaletteEffectSource(const u16 *palette, u8 offset, u16 num)
{
    u16 *destination = gBgPalette;
    destination += offset;
    CpuSet(palette, destination, num);
    destination = gSourcePalettes.bg;
    destination += offset;
    CpuSet(palette, destination, num);
}

void LoadLevelPaletteEffectSourcePalettes(const u16 **arg0, const u16 **arg1)
{
    CpuCopy32(*arg0, gSourcePalettes.bg, 0xC0);
    CpuCopy32(*arg1, &gSourcePalettes.bg[0x60], 0x100);
}

void SaveObjPaletteColors(u8 offset, u8 num)
{
    CpuCopy16(&gObjPalette[offset], &gSourcePalettes.obj[offset], num << 1);
}

void SaveBgPaletteColors(u8 offset, u8 num)
{
    CpuCopy16(&gBgPalette[offset], &gSourcePalettes.bg[offset], num << 1);
}

void BackupPaletteEffectSourcePalettes(void)
{
    CpuFastCopy(&gSourcePalettes, &gSourcePalettesBackup, sizeof(gSourcePalettes));
}

void RestorePaletteEffectSourcePalettes(void)
{
    CpuFastCopy(&gSourcePalettesBackup, &gSourcePalettes, sizeof(gSourcePalettes));
}

struct PaletteEffect *GetPaletteEffect(u8 slot)
{
    return &gPaletteEffectManager.unk0[slot];
}

static void PaletteEffectsTaskDestructor(struct Task *task UNUSED)
{
    gPaletteEffectsTask = NULL;
}

static void InsertPaletteEffectByPriority(struct PaletteEffect *effect, u8 index)
{
    u8 queueIndex = index;
    struct PaletteEffect *existing = gPaletteEffectManager.unk80[queueIndex];

    if (existing == NULL) {
        gPaletteEffectManager.unk80[queueIndex] = effect;
        return;
    }
    if (existing->unk3 <= effect->unk3) {
        InsertPaletteEffectByPriority(effect, queueIndex + 1);
        return;
    }
    InsertPaletteEffectByPriority(existing, queueIndex + 1);
    gPaletteEffectManager.unk80[queueIndex] = effect;
}

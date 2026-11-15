#include "global.h"
#include "main.h"
#include "data.h"
#include "multi_sio.h"
#include "sio32_multi_load.h"

static void sub_020384D0(void);
static void sub_020385FC(struct PayloadWork *work);
static void sub_02038A04(u8 count);
static void sub_02038A6C(const u16 *src, u16 count, u16 x, u16 y, u8 arg4);
static void sub_02038BB8(struct PayloadWork *work);
static void sub_02038CB8(struct PayloadWork *work);
static void sub_02038DF4(struct PayloadWork *work);
static void sub_02038E50(struct PayloadWork *work);
static void sub_02038EE8(struct PayloadWork *work);
static void sub_02039194(struct PayloadWork *work);
static void sub_020391C8(struct PayloadWork *work);

void AgbMain(void)
{
    struct PayloadWork work;
    u16 colors[7];
    u16 sp28;
    struct ObjAffineSrcData affine;

    sp28 = 0;
    sub_020384D0();
    sub_020385FC(&work);
    colors[0] = RGB(16, 0, 0);
    colors[1] = RGB_GREEN;
    colors[2] = RGB_BLUE;
    colors[3] = RGB_YELLOW;
    colors[4] = RGB_CYAN;
    colors[5] = RGB_MAGENTA;
    colors[6] = RGB(16, 16, 16);
    sp28 = 0;
    while (1) {
        if (work.unkF <= 5)
            sub_02038A6C(gUnk_0203CF50, 1, 0x68, 0x48, 0);
        switch (work.unkF) {
        case 0:
        case 1:
            sub_02038CB8(&work);
            break;
        case 2:
            sub_02038DF4(&work);
            // fallthrough
        case 3:
            sub_02038E50(&work);
            break;
        case 4:
            sub_02038EE8(&work);
            break;
        case 5:
            sub_02039194(&work);
            break;
        case 6:
            sub_020391C8(&work);
            break;
        default:
            break;
        }
        VBlankIntrWait();
        sub_02038A04(gUnk_03000034);
        gUnk_03000034 = 0;
        if (work.unkF <= 5) {
            affine.xScale = 0x100;
            affine.yScale = 0x100;
            affine.rotation = work.unk8;
            work.unk8 -= 0x800;
            ObjAffineSet(&affine, (void *)(OAM + 6), 1, 8);
            REG_BG2HOFS = work.unk6;
            work.unk6 += 2;
            work.unk6 &= 0x1FF;
            if (work.unkA++ > 720)
                sub_02038BB8(&work);
        }
    }
}

static void sub_020384D0(void)
{
    RegisterRamReset(RESET_IWRAM);
    DmaCopy32(3, gIntrTableTemplate, gIntrTable, sizeof(gIntrTableTemplate));
    DmaCopy32(3, IntrMain, gIntrMainBuf, sizeof(gIntrMainBuf));
    INTR_VECTOR = gIntrMainBuf;
    DmaFill32(3, 0xA0, OAM, OAM_SIZE);
    REG_IE = INTR_FLAG_VBLANK;
    // Cartridge header: fixed value 0x96 and game code "B8KE"
    if (*(vu8 *)0x080000B2 == 0x96 && *(u32 *)0x080000AC == 0x454B3842)
        REG_IE |= INTR_FLAG_GAMEPAK;
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
    gMultiSioSend.unk0 = 0xF001;
    gUnk_03000034 = 0;
    sub_02038A04(0x80);
}

static void sub_020385FC(struct PayloadWork *work)
{
    DmaFill16(3, 0, work, sizeof(*work));
    work->unk0 = &gMultiSioSend.unk2;
    LZ77UnCompVram(gUnk_0203C3D4, OBJ_VRAM0 + TILE_OFFSET_4BPP(0x3E0));
    DmaCopy16(3, gUnk_0203C3B4, OBJ_PLTT, sizeof(gUnk_0203C3B4));
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    REG_BG0CNT = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(31) | BGCNT_TXT256x256;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    DmaCopy16(3, gUnk_0203A168, BG_PLTT, sizeof(gUnk_0203A168));
    LZ77UnCompVram(gUnk_0203A228, BG_CHAR_ADDR(2));
    {
        u16 i;

        for (i = 0; i < ARRAY_COUNT(gUnk_0203B5F8); i++)
            DmaCopy16(3, gUnk_0203B5F8[i], BG_SCREEN_ADDR(31) + (i << 6), sizeof(gUnk_0203B5F8[i]));
    }
    REG_BG1CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(30) | BGCNT_TXT256x256;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    LZ77UnCompVram(gUnk_0203C298, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0x64));
    DmaFill32(3, 0, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0xF9), TILE_SIZE_4BPP);
    DmaFill16(3, 0xF9, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
    {
        u16 *p = BG_SCREEN_ADDR(30) + 0x1D6;
        u16 i;
        u16 j;

        for (j = 0; j < 8; j++) {
            for (i = 0; i < 8; i++) {
                p[(j << 5) + i] = *(gUnk_0203C318 + ((j << 3) + i)) + 0x64;
            }
        }
    }
    REG_BG2CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(28) | BGCNT_TXT512x256;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    LZ77UnCompVram(gUnk_0203BAC4, BG_CHAR_ADDR(3));
    DmaFill32(3, 0, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0x63), TILE_SIZE_4BPP);
    DmaFill16(3, 0x63, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE * 2);
    DmaCopy16(3, gUnk_0203BE04[0][0], BG_SCREEN_ADDR(28) + 0x480, sizeof(gUnk_0203BE04[0][0]));
    DmaCopy16(3, gUnk_0203BE04[1][0], BG_SCREEN_ADDR(28) + 0x4C0, sizeof(gUnk_0203BE04[1][0]));
    DmaCopy16(3, gUnk_0203BE04[0][1], BG_SCREEN_ADDR(29) + 0x480, sizeof(gUnk_0203BE04[0][1]));
    DmaCopy16(3, gUnk_0203BE04[1][1], BG_SCREEN_ADDR(29) + 0x4C0, sizeof(gUnk_0203BE04[1][1]));
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
}

static void sub_02038A04(u8 count)
{
    u8 i;

    if (count > 0x80)
        count = 0x80;
    for (i = 0; i < count; i++)
        CpuFill16(0x200, (void *)(OAM + (i << 3)), 6);
}

// arg4 is overwritten with 0 before use
static void sub_02038A6C(const u16 *src, u16 count, u16 x, u16 y, u8 arg4)
{
    u16 i;
    u16 oam[3];

    arg4 = 0;
    for (i = 0; i < count && gUnk_03000034 < 0x80; i++, gUnk_03000034++) {
        CpuCopy16(src + i * 3, oam, 6);
        oam[0] = (oam[0] & 0xFF00) | ((oam[0] + y) & 0xFF);
        oam[1] = (oam[1] & 0xFE00) | ((oam[1] + x) & 0x1FF);
        oam[2] += arg4;
        CpuCopy16(oam, (void *)(OAM + (gUnk_03000034 << 3)), 6);
    }
}

static void sub_02038BB8(struct PayloadWork *work)
{
    u32 i;

    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    REG_BG0CNT = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(31) | BGCNT_TXT256x256;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    DmaCopy16(3, gUnk_0203C54C, BG_PLTT, sizeof(gUnk_0203C54C));
    LZ77UnCompVram(gUnk_0203C56C, BG_CHAR_ADDR(2));
    for (i = 0; i < ARRAY_COUNT(gUnk_0203C854); i++)
        DmaCopy16(3, gUnk_0203C854[i], BG_SCREEN_ADDR(31) + (i << 6), sizeof(gUnk_0203C854[i]));
    REG_DISPCNT |= DISPCNT_BG0_ON;
    work->unkF = 0xFF;
}

static void sub_02038CB8(struct PayloadWork *work)
{
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG);
    REG_IME = 1;
    gIntrTable[0] = (void *)gMultiSioIntrFuncBuf;
    MultiSioInit((gMultiSioStatusFlags & MULTI_SIO_CONNECTED_ID_MASK) >> MULTI_SIO_CONNECTED_ID_SHIFT);
    work->loadRequest = 0;
    gMultiSioStatusFlags = 0;
    if (work->unkF == 0) {
        work->unkF = 3;
    } else {
        work->unkF = 2;
        switch (work->unk4) {
        case 8:
            break;
        case 0:
            LZ77UnCompVram(gUnk_0203A144[0], OBJ_VRAM0);
            break;
        case 1:
            LZ77UnCompWram(gUnk_0203A144[1], (void *)(EWRAM_START + 0x28000));
            DmaCopy32(3, EWRAM_START + 0x28000, VRAM, 0x8000);
            break;
        case 2:
            LZ77UnCompVram(gUnk_0203A144[2], BG_CHAR_ADDR(1));
            break;
        }
    }
}

static void sub_02038DF4(struct PayloadWork *work)
{
    if (gMultiSioStatusFlags & MULTI_SIO_LD_ENABLE) {
        if (gMultiSioStatusFlags & MULTI_SIO_LD_SUCCESS)
            (*work->unk0)++;
        work->unkF = 3;
    }
    MultiSioStart();
}

static void sub_02038E50(struct PayloadWork *work)
{
    if (gMultiSioStatusFlags & MULTI_SIO_LD_REQUEST)
        work->unkF = 4;
    gMultiSioStatusFlags = MultiSioMain(&gMultiSioSend, gMultiSioRecv, work->loadRequest);
    work->unkE = gMultiSioRecv[0].unk0;
    if (work->unk4 != gMultiSioRecv[0].unk2) {
        work->unkA = 0;
        work->unk4 = gMultiSioRecv[0].unk2;
    }
}

static void sub_02038EE8(struct PayloadWork *work)
{
    work->unk11 = ((volatile struct SioMultiCnt *)REG_ADDR_SIOCNT)->id;
    MultiSioStop();
    if (work->unk4 == 9) {
        work->unkC = 0;
        LZ77UnCompVram(gUnk_0203C10C, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0x64));
        DmaFill32(3, 0, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0xF9), TILE_SIZE_4BPP);
        DmaFill16(3, 0xF9, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
        {
            u16 *p = BG_SCREEN_ADDR(30) + 0x1D6;
            u16 i;
            u16 j;

            for (j = 0; j < 8; j++) {
                for (i = 0; i < 8; i++) {
                    p[(j << 5) + i] = *(gUnk_0203C1FC + ((j << 3) + i)) + 0x64;
                }
            }
        }
        REG_BG2CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_SCREENBASE(28) | BGCNT_TXT256x256;
        REG_BG2HOFS = 0;
        REG_BG2VOFS = 0;
        LZ77UnCompVram(gUnk_0203BF20, BG_CHAR_ADDR(3));
        DmaFill32(3, 0, BG_CHAR_ADDR(3) + TILE_OFFSET_4BPP(0x63), TILE_SIZE_4BPP);
        DmaCopy16(3, gUnk_0203C078[0], BG_SCREEN_ADDR(28) + 0x480, sizeof(gUnk_0203C078[0]));
        DmaCopy16(3, gUnk_0203C078[1], BG_SCREEN_ADDR(28) + 0x4C0, sizeof(gUnk_0203C078[1]));
        work->unkF = 6;
    } else {
        REG_IME = 0;
        REG_IE &= ~(INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG);
        REG_IME = 1;
        gIntrTable[0] = Sio32MultiLoadIntr;
        Sio32MultiLoadInit(MULTI_SIO_CHILD, gUnk_0203A144[work->unk4]);
        work->unkF = 5;
    }
}

static void sub_02039194(struct PayloadWork *work)
{
    u32 progress = 0;

    if (Sio32MultiLoadMain(&progress))
        work->unkF = 1;
}

static void sub_020391C8(struct PayloadWork *work)
{
    if (work->unkC++ > 60) {
        DmaStop(0);
        DmaStop(1);
        DmaStop(2);
        DmaStop(3);
        REG_IME = 0;
        REG_IE = 0;
        REG_DISPSTAT = 0;
        ((void (*)(void))EWRAM_START)();
    }
}

void VBlankIntr(void)
{
    INTR_CHECK |= INTR_FLAG_VBLANK;
}

void IntrDummy(void)
{
}

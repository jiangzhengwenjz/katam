#include "global.h"
#include "gbplayer.h"
#include "main.h"

// Handshake (gSio32CommState 0): each side sends its own 16-bit ID in one half of SIODATA32
// and the complement of the other side's last ID in the other half. The GBA's ID steps
// through "NI", "NT", "EN", "DO" as each one is echoed back, then becomes 0x8000. A reply
// of 0x8002 moves to state 1.
// Packets (states 1-3): [command:4][payload:24][checksum:4]. The checksum is the XOR of the
// other seven nibbles.

static const u16 sSio32ConnectionData[] = { 0x494E, 0x544E, 0x4E45, 0x4F44 }; // "NINTENDO"

static u32 Sio32ValidateResponse(u8);
static u8 Sio32VerifyChecksum(void);
static u32 Sio32BuildCommand(u8);

static void UNUSED InitSio32Hardware(void)
{
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_32BIT_MODE | SIO_ACK_SEND;
    REG_SIOCNT |= SIO_INTR_ENABLE;
    REG_IF = INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL;
    REG_IME = 0;
    REG_IE |= INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL;
    REG_IME = 1;
    ((volatile struct SioNormalCnt *)REG_ADDR_SIOCNT)->sck_I_O = ST_SIO_SCK_OUT;
    gSio32CommState = 0;
    CpuFill32(0, &gSio32Id, sizeof(gSio32Id));
    REG_IME = 0;
    REG_SIOCNT |= SIO_START;
    REG_IME = 1;
    REG_TM3CNT_L = 0x8000;
    REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_64CLK;
}

static void UNUSED Sio32IDIntr(void)
{
    gSio32ReceivedData = REG_SIODATA32;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    switch (gSio32CommState) {
    case 0: {
        u32 recv = REG_SIODATA32;
        u32 sent = recv << (gSio32Id.MS_mode * 16) >> 16;

        recv = recv << ((1 - gSio32Id.MS_mode) * 16) >> 16;
        if (gSio32Id.lastId == 0) {
            if ((u16)sent == gSio32Id.recv_id) {
                if (gSio32Id.count < 4) {
                    if (gSio32Id.recv_id == (u16)~gSio32Id.send_id && (u16)recv == (u16)~gSio32Id.recv_id)
                        gSio32Id.count++;
                } else {
                    gSio32Id.lastId = recv;
                    if (recv == 0x8002) {
                        gSio32CommState = 1;
                        gSio32SendData = Sio32BuildCommand(1);
                        REG_SIODATA32 = gSio32SendData;
                        gSio32Id.count = 0;
                        break;
                    }
                    gSio32Id.lastId = 0;
                    gSio32Id.count = 0;
                }
            } else {
                gSio32Id.count = 0;
            }
        }
        if (gSio32Id.count < 4)
            gSio32Id.send_id = *(gSio32Id.count + sSio32ConnectionData);
        else
            gSio32Id.send_id = 0x8000;
        gSio32Id.recv_id = ~recv;
        REG_SIODATA32 = (gSio32Id.send_id << ((1 - gSio32Id.MS_mode) * 16))
                      + (gSio32Id.recv_id << (gSio32Id.MS_mode * 16));
        break;
    }
    case 1:
        if (Sio32ValidateResponse(gSio32CommState)) {
            gSio32Id.count = 0;
            CpuFill32(0, &gSio32Id, sizeof(gSio32Id));
            gSio32CommState = 0;
        } else {
            gSio32CommState = 2;
        }
        gSio32SendData = Sio32BuildCommand(gSio32CommState);
        REG_SIODATA32 = gSio32SendData;
        break;
    case 2:
        if (Sio32ValidateResponse(gSio32CommState)) {
            gSio32Id.count = 0;
            CpuFill32(0, &gSio32Id, sizeof(gSio32Id));
            gSio32CommState = 0;
        } else {
            gSio32CommState = 3;
        }
        gSio32SendData = Sio32BuildCommand(gSio32CommState);
        REG_SIODATA32 = gSio32SendData;
        break;
    case 3:
        if (Sio32ValidateResponse(gSio32CommState)) {
            gSio32Id.count = 0;
            CpuFill32(0, &gSio32Id, sizeof(gSio32Id));
            gSio32CommState = 0;
        }
        gSio32SendData = Sio32BuildCommand(gSio32CommState);
        REG_SIODATA32 = gSio32SendData;
        break;
    case 4:
    case 5:
    default:
        REG_IME = 0;
        REG_IE &= ~INTR_FLAG_SERIAL;
        REG_IME = 1;
        return;
    }
    REG_SIOCNT |= SIO_START;
    REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_64CLK;
}

static u32 Sio32ValidateResponse(u8 state)
{
    u32 top = gSio32ReceivedData >> 28;

    if (Sio32VerifyChecksum())
        return 1;
    switch (state) {
    case 1:
        gSio32RemoteDeviceId = (gSio32ReceivedData << 4 >> 8) & 1;
        if (top != 1)
            return 1;
        break;
    case 2:
        if (top != 2 || gSio32RemoteDeviceId != gSio32ReceivedData << 4 >> 8)
            return 1;
        break;
    case 3:
        if (top != 3)
            return 1;
        break;
    default:
        return 1;
    }
    return 0;
}

static u8 Sio32VerifyChecksum(void)
{
    u32 packet = gSio32ReceivedData;
    s32 body = packet >> 4;
    u32 sum = packet & 0xF;
    u8 chk = body >> 24;
    u8 i;

    for (i = 6; i != 0; i--)
        chk ^= ((u32)body >> ((i - 1) * 4)) & 0xF;
    if (chk == sum)
        return 0;
    return 1;
}

static inline u32 Sio32EncodePacket(u32 payload, u32 cmd)
{
    u32 packet = (payload & 0xFFFFFF) << 4;
    u8 chk;
    u8 i;

    packet |= cmd << 28;
    chk = packet >> 28;
    for (i = 6; i != 0; i--)
        chk ^= (packet >> (i * 4)) & 0xF;
    return (chk & 0xF) | packet;
}

static u32 Sio32BuildCommand(u8 state)
{
    // TODO: Original UB: state 0 (passed by Sio32IDIntr after a failed response check) and states above 5
    // return result uninitialized, and the caller sends it to REG_SIODATA32. Initializing result does not match.
    u32 result;

    switch (state) {
    case 1:
        result = Sio32EncodePacket(1, 1);
        break;
    case 2:
        result = Sio32EncodePacket(gSio32RemoteDeviceId, 2);
        break;
    case 3:
        result = Sio32EncodePacket(gUnk_0300607C, 4);
        break;
    case 4:
    case 5:
        result = Sio32EncodePacket(1, 1);
        break;
    }
    return result;
}

void Sio32TimeoutIntr(void)
{
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_TIMER3;
    REG_IME = 1;
    REG_IME = 0;
    REG_SIOCNT &= ~SIO_START;
    REG_IME = 1;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    gSio32CommState = 5;
}

static void UNUSED nullsub_147(void)
{
}

void nullsub_1(void)
{
}

void nullsub_2(void)
{
}

static u32 UNUSED sub_08158F10(void)
{
    return 1;
}

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x02008984
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _02008998
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_02008998:
	ldr r3, _020089E0 @ =gUnk_02019F74
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _020089E4 @ =gUnk_0201A028
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_02007D68
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_02007D68
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_020089E0: .4byte gUnk_02019F74
_020089E4: .4byte gUnk_0201A028

	thumb_func_start DummyFunc
DummyFunc: @ 0x020089E8
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x020089EC
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _02008A00 @ =0x68736D53
	cmp r3, r0
	bne _020089FE
	ldr r0, [r2, #4]
	ldr r1, _02008A04 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_020089FE:
	bx lr
	.align 2, 0
_02008A00: .4byte 0x68736D53
_02008A04: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x02008A08
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _02008A24 @ =0x68736D53
	cmp r3, r0
	bne _02008A20
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_02008A20:
	bx lr
	.align 2, 0
_02008A24: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x02008A28
	push {r4, r5, r6, lr}
	ldr r0, _02008A7C @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _02008A80 @ =gUnk_03000640
	ldr r2, _02008A84 @ =0x04000100
	bl CpuSet
	ldr r0, _02008A88 @ =gUnk_03000D80
	bl SoundInit_rev01
	ldr r0, _02008A8C @ =gUnk_03001DC0
	bl MPlayExtender
	ldr r0, _02008A90 @ =0x0095FA00
	bl SoundMode_rev01
	ldr r0, _02008A94 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02008A76
	ldr r5, _02008A98 @ =gUnk_0201AF28
	adds r6, r0, #0
_02008A5A:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _02008A9C @ =gUnk_03001F80
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _02008A5A
_02008A76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008A7C: .4byte SoundMainRAM
_02008A80: .4byte gUnk_03000640
_02008A84: .4byte 0x04000100
_02008A88: .4byte gUnk_03000D80
_02008A8C: .4byte gUnk_03001DC0
_02008A90: .4byte 0x0095FA00
_02008A94: .4byte 0x00000003
_02008A98: .4byte gUnk_0201AF28
_02008A9C: .4byte gUnk_03001F80

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x02008AA0
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x02008AAC
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008AD0 @ =gUnk_0201AF28
	ldr r1, _02008AD4 @ =gUnk_0201AF4C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_02008AD0: .4byte gUnk_0201AF28
_02008AD4: .4byte gUnk_0201AF4C

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x02008AD8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008B04 @ =gUnk_0201AF28
	ldr r1, _02008B08 @ =gUnk_0201AF4C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _02008B0C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _02008B20
	.align 2, 0
_02008B04: .4byte gUnk_0201AF28
_02008B08: .4byte gUnk_0201AF4C
_02008B0C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02008B18
	cmp r2, #0
	bge _02008B20
_02008B18:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_02008B20:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x02008B24
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008B50 @ =gUnk_0201AF28
	ldr r1, _02008B54 @ =gUnk_0201AF4C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _02008B58
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _02008B74
	.align 2, 0
_02008B50: .4byte gUnk_0201AF28
_02008B54: .4byte gUnk_0201AF4C
_02008B58:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _02008B6A
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _02008B74
_02008B6A:
	cmp r2, #0
	bge _02008B74
	adds r0, r1, #0
	bl MPlayContinue
_02008B74:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x02008B78
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008BA4 @ =gUnk_0201AF28
	ldr r1, _02008BA8 @ =gUnk_0201AF4C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _02008B9E
	adds r0, r2, #0
	bl MPlayStop_rev01
_02008B9E:
	pop {r0}
	bx r0
	.align 2, 0
_02008BA4: .4byte gUnk_0201AF28
_02008BA8: .4byte gUnk_0201AF4C

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x02008BAC
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008BD8 @ =gUnk_0201AF28
	ldr r1, _02008BDC @ =gUnk_0201AF4C
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _02008BD2
	adds r0, r2, #0
	bl MPlayContinue
_02008BD2:
	pop {r0}
	bx r0
	.align 2, 0
_02008BD8: .4byte gUnk_0201AF28
_02008BDC: .4byte gUnk_0201AF4C

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x02008BE0
	push {r4, r5, lr}
	ldr r0, _02008C04 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02008BFE
	ldr r5, _02008C08 @ =gUnk_0201AF28
	adds r4, r0, #0
_02008BF0:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _02008BF0
_02008BFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C04: .4byte 0x00000003
_02008C08: .4byte gUnk_0201AF28

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x02008C0C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x02008C18
	push {r4, r5, lr}
	ldr r0, _02008C3C @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02008C36
	ldr r5, _02008C40 @ =gUnk_0201AF28
	adds r4, r0, #0
_02008C28:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _02008C28
_02008C36:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C3C: .4byte 0x00000003
_02008C40: .4byte gUnk_0201AF28

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x02008C44
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x02008C54
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _02008C6C @ =0x68736D53
	cmp r3, r0
	bne _02008C6A
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _02008C70 @ =0x00000101
	strh r0, [r2, #0x28]
_02008C6A:
	bx lr
	.align 2, 0
_02008C6C: .4byte 0x68736D53
_02008C70: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x02008C74
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _02008C94 @ =0x68736D53
	cmp r3, r0
	bne _02008C92
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _02008C98 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_02008C92:
	bx lr
	.align 2, 0
_02008C94: .4byte 0x68736D53
_02008C98: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x02008C9C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _02008CDE
	movs r7, #0x80
_02008CA8:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _02008CD6
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _02008CD6
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_02008CD6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02008CA8
_02008CDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x02008CE4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _02008DAC @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _02008DB0 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _02008DB4 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _02008DB8 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _02008DBC @ =0x68736D53
	cmp r6, r0
	bne _02008DA4
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _02008DC0 @ =gUnk_03001D30
	ldr r0, _02008DC4 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _02008DC8 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _02008DCC @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _02008DD0 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _02008DD4 @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _02008DD8 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _02008DDC @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _02008DE0 @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _02008DE4 @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _02008DE8 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _02008DEC @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _02008DF0 @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _02008DF4 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _02008DF8 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_02008DA4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008DAC: .4byte 0x04000084
_02008DB0: .4byte 0x04000080
_02008DB4: .4byte 0x04000063
_02008DB8: .4byte 0x03007FF0
_02008DBC: .4byte 0x68736D53
_02008DC0: .4byte gUnk_03001D30
_02008DC4: .4byte ply_memacc
_02008DC8: .4byte ply_lfos_rev01
_02008DCC: .4byte ply_mod_rev01
_02008DD0: .4byte ply_xcmd
_02008DD4: .4byte ply_endtie_rev01
_02008DD8: .4byte SampFreqSet_rev01
_02008DDC: .4byte TrackStop_rev01
_02008DE0: .4byte FadeOutBody_rev01
_02008DE4: .4byte TrkVolPitSet_rev01
_02008DE8: .4byte CgbSound
_02008DEC: .4byte CgbOscOff
_02008DF0: .4byte MidiKey2CgbFr
_02008DF4: .4byte 0x00000000
_02008DF8: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x02008DFC
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x02008E00
	push {lr}
	ldr r1, _02008E10 @ =gUnk_03001DB8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_02008E10: .4byte gUnk_03001DB8

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x02008E14
	push {lr}
	ldr r1, _02008E24 @ =gUnk_03001DBC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_02008E24: .4byte gUnk_03001DBC

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x02008E28
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _02008EE0 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _02008E44
	ldr r0, _02008EE4 @ =0x84400004
	str r0, [r1]
_02008E44:
	ldr r1, _02008EE8 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _02008E52
	ldr r0, _02008EE4 @ =0x84400004
	str r0, [r1]
_02008E52:
	ldr r0, _02008EEC @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _02008EF0 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _02008EF4 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _02008EF8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _02008EFC @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _02008F00 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _02008F04 @ =0x040000A4
	str r0, [r1]
	ldr r0, _02008F08 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _02008F0C @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _02008F10 @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _02008F14 @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _02008F18 @ =gUnk_03001D30
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _02008F1C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008EE0: .4byte 0x040000C4
_02008EE4: .4byte 0x84400004
_02008EE8: .4byte 0x040000D0
_02008EEC: .4byte 0x040000C6
_02008EF0: .4byte 0x04000084
_02008EF4: .4byte 0x0000A90E
_02008EF8: .4byte 0x04000089
_02008EFC: .4byte 0x040000BC
_02008F00: .4byte 0x040000A0
_02008F04: .4byte 0x040000A4
_02008F08: .4byte 0x03007FF0
_02008F0C: .4byte 0x050003EC
_02008F10: .4byte ply_note_rev01
_02008F14: .4byte DummyFunc_rev
_02008F18: .4byte gUnk_03001D30
_02008F1C: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x02008F20
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _02008FA0 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _02008FA4 @ =gUnk_0201A058
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _02008FA8 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _02008FAC @ =0x00001388
	adds r0, r0, r1
	ldr r1, _02008FB0 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _02008FB4 @ =0x04000102
	strh r6, [r0]
	ldr r4, _02008FB8 @ =0x04000100
	ldr r0, _02008FBC @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _02008FC0 @ =0x04000006
_02008F84:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _02008F84
	ldr r1, _02008FC0 @ =0x04000006
_02008F8C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _02008F8C
	ldr r1, _02008FB4 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008FA0: .4byte 0x03007FF0
_02008FA4: .4byte gUnk_0201A058
_02008FA8: .4byte 0x00091D1B
_02008FAC: .4byte 0x00001388
_02008FB0: .4byte 0x00002710
_02008FB4: .4byte 0x04000102
_02008FB8: .4byte 0x04000100
_02008FBC: .4byte 0x00044940
_02008FC0: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x02008FC4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _02009050 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _02009054 @ =0x68736D53
	cmp r1, r0
	bne _0200904A
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _02008FE6
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_02008FE6:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _02009006
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_02008FFC:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _02008FFC
_02009006:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _02009014
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_02009014:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _02009032
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _02009058 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_02009032:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _02009046
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_02009046:
	ldr r0, _02009054 @ =0x68736D53
	str r0, [r5]
_0200904A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02009050: .4byte 0x03007FF0
_02009054: .4byte 0x68736D53
_02009058: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x0200905C
	push {r4, r5, r6, r7, lr}
	ldr r0, _020090A8 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _020090AC @ =0x68736D53
	cmp r1, r0
	bne _020090A2
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_02009076:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _02009076
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0200909E
	movs r5, #1
	movs r7, #0
_0200908A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0200908A
_0200909E:
	ldr r0, _020090AC @ =0x68736D53
	str r0, [r6]
_020090A2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020090A8: .4byte 0x03007FF0
_020090AC: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x020090B0
	push {lr}
	sub sp, #4
	ldr r0, _02009110 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _02009114 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _02009108
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _02009118 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _020090DA
	ldr r0, _0200911C @ =0x84400004
	str r0, [r1]
_020090DA:
	ldr r1, _02009120 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _020090E8
	ldr r0, _0200911C @ =0x84400004
	str r0, [r1]
_020090E8:
	ldr r0, _02009124 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _02009128 @ =0x05000318
	mov r0, sp
	bl CpuSet
_02009108:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02009110: .4byte 0x03007FF0
_02009114: .4byte 0x978C92AD
_02009118: .4byte 0x040000C4
_0200911C: .4byte 0x84400004
_02009120: .4byte 0x040000D0
_02009124: .4byte 0x040000C6
_02009128: .4byte 0x05000318

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x0200912C
	push {r4, lr}
	ldr r0, _0200915C @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _02009160 @ =0x68736D53
	cmp r3, r0
	beq _02009154
	ldr r0, _02009164 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_02009154:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200915C: .4byte 0x03007FF0
_02009160: .4byte 0x68736D53
_02009164: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x02009168
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _020091CC
	cmp r4, #0x10
	bls _0200917C
	movs r4, #0x10
_0200917C:
	ldr r0, _020091D4 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _020091D8 @ =0x68736D53
	cmp r1, r0
	bne _020091CC
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _020091B0
	movs r1, #0
_020091A2:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _020091A2
_020091B0:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020091C0
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_020091C0:
	str r7, [r5, #0x24]
	ldr r0, _020091DC @ =MPlayMain_rev01
	str r0, [r5, #0x20]
	ldr r0, _020091D8 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_020091CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020091D4: .4byte 0x03007FF0
_020091D8: .4byte 0x68736D53
_020091DC: .4byte MPlayMain_rev01

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x020091E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _020092C0 @ =0x68736D53
	cmp r1, r0
	bne _020092B6
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _02009222
	ldr r0, [r5]
	cmp r0, #0
	beq _0200920C
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _02009218
_0200920C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02009222
	cmp r1, #0
	blt _02009222
_02009218:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _020092B6
_02009222:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _02009282
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _020092A2
	mov r8, r6
_02009256:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _02009282
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _02009256
_02009282:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _020092A2
	movs r1, #0
	mov r8, r1
_0200928C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _0200928C
_020092A2:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _020092B2
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_020092B2:
	ldr r0, _020092C0 @ =0x68736D53
	str r0, [r5, #0x34]
_020092B6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020092C0: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x020092C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _02009300 @ =0x68736D53
	cmp r1, r0
	bne _020092FA
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _020092F6
_020092E6:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _020092E6
_020092F6:
	ldr r0, _02009300 @ =0x68736D53
	str r0, [r6, #0x34]
_020092FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02009300: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x02009304
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _020093C6
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _02009344 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _020093C6
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02009348
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _0200939A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _0200939A
	.align 2, 0
_02009344: .4byte 0x0000FFFF
_02009348:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0200939A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _0200937A
_0200935E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _02009372
	strb r0, [r4]
_02009372:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0200935E
_0200937A:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _0200938E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _02009392
_0200938E:
	movs r0, #0x80
	lsls r0, r0, #0x18
_02009392:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _020093C6
_0200939A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _020093C6
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_020093A8:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _020093BE
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_020093BE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _020093A8
_020093C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x020093CC
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _02009430
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _020093F4
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_020093F4:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _0200940A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_0200940A:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _02009416
	adds r1, r0, #0
	b _0200941C
_02009416:
	cmp r1, #0x7f
	ble _0200941C
	movs r1, #0x7f
_0200941C:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_02009430:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _02009474
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0200946E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0200946E:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_02009474:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x02009480
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _020094B8
	cmp r5, #0x14
	bhi _0200949C
	movs r5, #0
	b _020094AA
_0200949C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _020094AA
	movs r5, #0x3b
_020094AA:
	ldr r0, _020094B4 @ =gUnk_0201A10C
	adds r0, r5, r0
	ldrb r0, [r0]
	b _0200951A
	.align 2, 0
_020094B4: .4byte gUnk_0201A10C
_020094B8:
	cmp r5, #0x23
	bhi _020094C4
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _020094D6
_020094C4:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _020094D6
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_020094D6:
	ldr r3, _02009520 @ =gUnk_0201A070
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _02009524 @ =gUnk_0201A0F4
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0200951A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02009520: .4byte gUnk_0201A070
_02009524: .4byte gUnk_0201A0F4

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x02009528
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _02009550
	cmp r0, #2
	bgt _0200953C
	cmp r0, #1
	beq _02009542
	b _02009564
_0200953C:
	cmp r1, #3
	beq _02009558
	b _02009564
_02009542:
	ldr r1, _0200954C @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0200956C
	.align 2, 0
_0200954C: .4byte 0x04000063
_02009550:
	ldr r1, _02009554 @ =0x04000069
	b _02009566
	.align 2, 0
_02009554: .4byte 0x04000069
_02009558:
	ldr r1, _02009560 @ =0x04000070
	movs r0, #0
	b _0200956E
	.align 2, 0
_02009560: .4byte 0x04000070
_02009564:
	ldr r1, _02009574 @ =0x04000079
_02009566:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0200956C:
	movs r0, #0x80
_0200956E:
	strb r0, [r1]
	bx lr
	.align 2, 0
_02009574: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x02009578
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _02009598
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _020095A4
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _020095B2
_02009598:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _020095A4
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _020095B2
_020095A4:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _020095C2
_020095B2:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _020095C4
	movs r0, #0xf
_020095C2:
	strb r0, [r1, #0xa]
_020095C4:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x020095E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _02009600 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _02009604
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _0200960A
	.align 2, 0
_02009600: .4byte 0x03007FF0
_02009604:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_0200960A:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_02009610:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _02009626
	b _02009A10
_02009626:
	cmp r6, #2
	beq _02009658
	cmp r6, #2
	bgt _02009634
	cmp r6, #1
	beq _0200963A
	b _02009690
_02009634:
	cmp r6, #3
	beq _02009670
	b _02009690
_0200963A:
	ldr r0, _0200964C @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _02009650 @ =0x04000062
	ldr r2, _02009654 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _020096A0
	.align 2, 0
_0200964C: .4byte 0x04000060
_02009650: .4byte 0x04000062
_02009654: .4byte 0x04000063
_02009658:
	ldr r0, _02009664 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _02009668 @ =0x04000068
	ldr r2, _0200966C @ =0x04000069
	b _02009698
	.align 2, 0
_02009664: .4byte 0x04000061
_02009668: .4byte 0x04000068
_0200966C: .4byte 0x04000069
_02009670:
	ldr r0, _02009684 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _02009688 @ =0x04000072
	ldr r2, _0200968C @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _020096A0
	.align 2, 0
_02009684: .4byte 0x04000070
_02009688: .4byte 0x04000072
_0200968C: .4byte 0x04000073
_02009690:
	ldr r0, _020096F0 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _020096F4 @ =0x04000078
	ldr r2, _020096F8 @ =0x04000079
_02009698:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_020096A0:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _02009796
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _020097BA
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _02009708
	cmp r6, #2
	bgt _020096FC
	cmp r6, #1
	beq _02009702
	b _0200975C
	.align 2, 0
_020096F0: .4byte 0x04000071
_020096F4: .4byte 0x04000078
_020096F8: .4byte 0x04000079
_020096FC:
	cmp r6, #3
	beq _02009714
	b _0200975C
_02009702:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_02009708:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _02009768
_02009714:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0200973C
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _02009750 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0200973C:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _02009754
	movs r0, #0xc0
	b _02009776
	.align 2, 0
_02009750: .4byte 0x04000090
_02009754:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _02009778
_0200975C:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_02009768:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _02009776
	movs r0, #0x40
_02009776:
	strb r0, [r4, #0x1a]
_02009778:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _02009792
	b _020098CE
_02009792:
	strb r2, [r4, #9]
	b _020098FC
_02009796:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _020097C8
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _020097BA
	b _0200990E
_020097BA:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _02009A0C
_020097C8:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _02009808
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02009808
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0200983A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _020098FC
	ldrb r2, [r4, #7]
	mov r8, r2
	b _020098FC
_02009808:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _020098FC
	cmp r6, #3
	bne _0200981A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0200981A:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _0200986E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0200986A
_0200983A:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _020097BA
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0200990E
	movs r2, #8
	mov r8, r2
	b _0200990E
_0200986A:
	ldrb r0, [r4, #7]
	b _020098FA
_0200986E:
	cmp r0, #1
	bne _0200987A
_02009872:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _020098FA
_0200987A:
	cmp r0, #2
	bne _020098BE
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _020098BA
_02009892:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _020098A2
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _0200983A
_020098A2:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _02009872
	movs r0, #8
	mov r8, r0
	b _02009872
_020098BA:
	ldrb r0, [r4, #5]
	b _020098FA
_020098BE:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _020098F8
_020098CE:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _02009892
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _020098FC
	ldrb r2, [r4, #5]
	mov r8, r2
	b _020098FC
_020098F8:
	ldrb r0, [r4, #4]
_020098FA:
	strb r0, [r4, #0xb]
_020098FC:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0200990E
	subs r0, #1
	str r0, [sp]
	b _02009808
_0200990E:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _02009986
	cmp r6, #3
	bgt _0200994E
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _0200994E
	ldr r0, _02009938 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _02009940
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _0200993C @ =0x000007FC
	b _0200994A
	.align 2, 0
_02009938: .4byte 0x04000089
_0200993C: .4byte 0x000007FC
_02009940:
	cmp r0, #0x7f
	bgt _0200994E
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _0200995C @ =0x000007FE
_0200994A:
	ands r0, r1
	str r0, [r4, #0x20]
_0200994E:
	cmp r6, #4
	beq _02009960
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _0200996E
	.align 2, 0
_0200995C: .4byte 0x000007FE
_02009960:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_0200996E:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_02009986:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _02009A0C
	ldr r1, _020099D0 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _020099D8
	ldr r0, _020099D4 @ =gUnk_0201A148
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _02009A0C
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _02009A0C
	.align 2, 0
_020099D0: .4byte 0x04000081
_020099D4: .4byte gUnk_0201A148
_020099D8:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _02009A0C
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _02009A0C
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_02009A0C:
	movs r0, #0
	strb r0, [r4, #0x1d]
_02009A10:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _02009A1A
	b _02009610
_02009A1A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x02009A2C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _02009A50 @ =0x68736D53
	cmp r3, r0
	bne _02009A48
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_02009A48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02009A50: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x02009A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _02009AB8 @ =0x68736D53
	cmp r3, r0
	bne _02009AAC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02009AA8
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_02009A84:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _02009A9E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _02009A9E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_02009A9E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _02009A84
_02009AA8:
	ldr r0, _02009AB8 @ =0x68736D53
	str r0, [r4, #0x34]
_02009AAC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009AB8: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x02009ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _02009B2C @ =0x68736D53
	cmp r3, r0
	bne _02009B1E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02009B1A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_02009AF4:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _02009B10
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _02009B10
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_02009B10:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _02009AF4
_02009B1A:
	ldr r0, _02009B2C @ =0x68736D53
	str r0, [r4, #0x34]
_02009B1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009B2C: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x02009B30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _02009B94 @ =0x68736D53
	cmp r3, r0
	bne _02009B88
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02009B84
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_02009B60:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _02009B7A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _02009B7A
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_02009B7A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _02009B60
_02009B84:
	ldr r0, _02009B94 @ =0x68736D53
	str r0, [r4, #0x34]
_02009B88:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009B94: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x02009B98
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _02009BAC
	movs r0, #0xc
	b _02009BAE
_02009BAC:
	movs r0, #3
_02009BAE:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x02009BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _02009C28 @ =0x68736D53
	cmp r1, r0
	bne _02009C18
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _02009C14
	mov sb, r8
_02009BE8:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _02009C0A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _02009C0A
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _02009C0A
	adds r0, r4, #0
	bl MP_clear_modM
_02009C0A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _02009BE8
_02009C14:
	ldr r0, _02009C28 @ =0x68736D53
	str r0, [r6, #0x34]
_02009C18:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009C28: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x02009C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _02009C9C @ =0x68736D53
	cmp r1, r0
	bne _02009C8C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _02009C88
	mov sb, r8
_02009C5C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _02009C7E
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _02009C7E
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _02009C7E
	adds r0, r4, #0
	bl MP_clear_modM
_02009C7E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _02009C5C
_02009C88:
	ldr r0, _02009C9C @ =0x68736D53
	str r0, [r6, #0x34]
_02009C8C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009C9C: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x02009CA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _02009CC4
	b _02009DF2
_02009CC4:
	lsls r0, r5, #2
	ldr r1, _02009CD0 @ =_02009CD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02009CD0: .4byte _02009CD4
_02009CD4: @ jump table
	.4byte _02009D1C @ case 0
	.4byte _02009D20 @ case 1
	.4byte _02009D28 @ case 2
	.4byte _02009D30 @ case 3
	.4byte _02009D3A @ case 4
	.4byte _02009D48 @ case 5
	.4byte _02009D56 @ case 6
	.4byte _02009D5E @ case 7
	.4byte _02009D66 @ case 8
	.4byte _02009D6E @ case 9
	.4byte _02009D76 @ case 10
	.4byte _02009D7E @ case 11
	.4byte _02009D86 @ case 12
	.4byte _02009D94 @ case 13
	.4byte _02009DA2 @ case 14
	.4byte _02009DB0 @ case 15
	.4byte _02009DBE @ case 16
	.4byte _02009DCC @ case 17
_02009D1C:
	strb r2, [r3]
	b _02009DF2
_02009D20:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _02009DF2
_02009D28:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _02009DF2
_02009D30:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _02009DF2
_02009D3A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _02009DF2
_02009D48:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _02009DF2
_02009D56:
	ldrb r3, [r3]
	cmp r3, r2
	beq _02009DD8
	b _02009DEC
_02009D5E:
	ldrb r3, [r3]
	cmp r3, r2
	bne _02009DD8
	b _02009DEC
_02009D66:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _02009DD8
	b _02009DEC
_02009D6E:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _02009DD8
	b _02009DEC
_02009D76:
	ldrb r3, [r3]
	cmp r3, r2
	bls _02009DD8
	b _02009DEC
_02009D7E:
	ldrb r3, [r3]
	cmp r3, r2
	blo _02009DD8
	b _02009DEC
_02009D86:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _02009DD8
	b _02009DEC
_02009D94:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _02009DD8
	b _02009DEC
_02009DA2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _02009DD8
	b _02009DEC
_02009DB0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _02009DD8
	b _02009DEC
_02009DBE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _02009DD8
	b _02009DEC
_02009DCC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _02009DEC
_02009DD8:
	ldr r0, _02009DE8 @ =gUnk_03001D34
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _02009DF2
	.align 2, 0
_02009DE8: .4byte gUnk_03001D34
_02009DEC:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_02009DF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x02009DF8
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _02009E14 @ =gUnk_0201A18C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_02009E14: .4byte gUnk_0201A18C

	thumb_func_start ply_xxx
ply_xxx: @ 0x02009E18
	push {lr}
	ldr r2, _02009E28 @ =gUnk_03001D30
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_02009E28: .4byte gUnk_03001D30

	thumb_func_start ply_xwave
ply_xwave: @ 0x02009E2C
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _02009E64 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _02009E68 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _02009E6C @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _02009E70 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02009E64: .4byte 0xFFFFFF00
_02009E68: .4byte 0xFFFF00FF
_02009E6C: .4byte 0xFF00FFFF
_02009E70: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x02009E74
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x02009E88
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x02009E9C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x02009EB0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x02009EC4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x02009ED8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x02009EE4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x02009EF0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x02009F04
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x02009F18
	bx lr
	.align 2, 0

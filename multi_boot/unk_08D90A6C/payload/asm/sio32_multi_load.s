	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x02039B70
	push {r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _02039BEC @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039BF0 @ =0x04000200
	ldr r1, _02039BF0 @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _02039BF4 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039BEC @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	movs r0, #0
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, _02039BF8 @ =gUnk_03000870
	ldr r2, _02039BFC @ =0x05000006
	bl CpuSet
	ldr r0, _02039C00 @ =0x04000128
	ldr r1, _02039C04 @ =0x00002003
	str r1, [r0]
	ldr r0, _02039BF8 @ =gUnk_03000870
	ldr r1, [r7, #4]
	str r1, [r0, #4]
	ldr r0, _02039BF8 @ =gUnk_03000870
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #8]
	ldr r0, [r7]
	cmp r0, #0
	beq _02039C44
	ldr r0, _02039C08 @ =0x0400010C
	movs r1, #0
	str r1, [r0]
	ldr r0, _02039BF8 @ =gUnk_03000870
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	movs r0, #0
	str r0, [r7, #0xc]
_02039BE2:
	ldr r0, [r7, #0xc]
	ldr r1, _02039C0C @ =0x00001FFF
	cmp r0, r1
	ble _02039C10
	b _02039C2A
	.align 2, 0
_02039BEC: .4byte 0x04000208
_02039BF0: .4byte 0x04000200
_02039BF4: .4byte 0x0000FF3F
_02039BF8: .4byte gUnk_03000870
_02039BFC: .4byte 0x05000006
_02039C00: .4byte 0x04000128
_02039C04: .4byte 0x00002003
_02039C08: .4byte 0x0400010C
_02039C0C: .4byte 0x00001FFF
_02039C10:
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	lsls r0, r1, #2
	ldr r1, [r7, #4]
	adds r0, r0, r1
	ldr r1, [r7, #8]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r7, #8]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02039BE2
_02039C2A:
	ldr r0, _02039C4C @ =gUnk_03000870
	ldr r1, [r7, #8]
	mvns r2, r1
	str r2, [r0, #0xc]
	ldr r0, _02039C50 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _02039C50 @ =0x04000128
	ldr r2, _02039C54 @ =0x00001001
	adds r1, r2, #0
	strh r1, [r0]
_02039C44:
	add sp, #0x14
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02039C4C: .4byte gUnk_03000870
_02039C50: .4byte 0x04000128
_02039C54: .4byte 0x00001001

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x02039C58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r1, _02039C74 @ =gUnk_03000870
	ldrb r0, [r1, #1]
	cmp r0, #4
	bls _02039C6A
	b _02039F50
_02039C6A:
	lsls r1, r0, #2
	ldr r2, _02039C78 @ =_02039C7C
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_02039C74: .4byte gUnk_03000870
_02039C78: .4byte _02039C7C
_02039C7C: @ jump table
	.4byte _02039C90 @ case 0
	.4byte _02039CC4 @ case 1
	.4byte _02039DB0 @ case 2
	.4byte _02039E94 @ case 3
	.4byte _02039F40 @ case 4
_02039C90:
	ldr r0, _02039CA4 @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #0
	bne _02039CA8
	ldr r0, _02039CA4 @ =gUnk_03000870
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _02039CA8
	b _02039CBC
	.align 2, 0
_02039CA4: .4byte gUnk_03000870
_02039CA8:
	ldr r0, _02039CC0 @ =gUnk_03000870
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
_02039CBC:
	b _02039F50
	.align 2, 0
_02039CC0: .4byte gUnk_03000870
_02039CC4:
	ldr r0, _02039CD8 @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	bne _02039CDE
	ldr r0, _02039CD8 @ =gUnk_03000870
	ldrb r1, [r0, #2]
	cmp r1, #5
	bhi _02039CDC
	b _02039F50
	.align 2, 0
_02039CD8: .4byte gUnk_03000870
_02039CDC:
	b _02039CE8
_02039CDE:
	ldr r0, _02039D30 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
_02039CE8:
	ldr r0, _02039D34 @ =0x04000120
	movs r1, #0
	str r1, [r0]
	ldr r0, _02039D38 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldr r0, _02039D3C @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	bne _02039D50
	ldr r0, _02039D30 @ =0x04000128
	ldr r1, _02039D30 @ =0x04000128
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039D40 @ =0x0400010C
	ldr r1, _02039D44 @ =0x00C0F318
	str r1, [r0]
	ldr r0, _02039D48 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039D4C @ =0x04000200
	ldr r1, _02039D4C @ =0x04000200
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039D48 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	b _02039D7E
	.align 2, 0
_02039D30: .4byte 0x04000128
_02039D34: .4byte 0x04000120
_02039D38: .4byte 0x04000202
_02039D3C: .4byte gUnk_03000870
_02039D40: .4byte 0x0400010C
_02039D44: .4byte 0x00C0F318
_02039D48: .4byte 0x04000208
_02039D4C: .4byte 0x04000200
_02039D50:
	ldr r0, _02039DA0 @ =0x04000128
	ldr r1, _02039DA0 @ =0x04000128
	ldrh r2, [r1]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039DA4 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039DA8 @ =0x04000200
	ldr r1, _02039DA8 @ =0x04000200
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039DA4 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
_02039D7E:
	ldr r0, _02039DAC @ =gUnk_03000870
	ldrb r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _02039DAC @ =gUnk_03000870
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
	b _02039F50
	.align 2, 0
_02039DA0: .4byte 0x04000128
_02039DA4: .4byte 0x04000208
_02039DA8: .4byte 0x04000200
_02039DAC: .4byte gUnk_03000870
_02039DB0:
	ldr r0, _02039DCC @ =gUnk_03000870
	ldr r1, [r0, #8]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	ble _02039DD0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #4]
	b _02039DDA
	.align 2, 0
_02039DCC: .4byte gUnk_03000870
_02039DD0:
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _02039DDA
	movs r0, #0
	str r0, [r7, #4]
_02039DDA:
	ldr r0, [r7]
	cmp r0, #0
	beq _02039DE6
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0]
_02039DE6:
	ldr r0, _02039DFC @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	beq _02039E60
_02039DEE:
	ldr r0, _02039DFC @ =gUnk_03000870
	ldr r1, [r0, #0x14]
	ldr r0, [r7, #4]
	cmp r1, r0
	blt _02039E00
	b _02039E2C
	.align 2, 0
_02039DFC: .4byte gUnk_03000870
_02039E00:
	ldr r0, _02039E28 @ =gUnk_03000870
	ldr r3, _02039E28 @ =gUnk_03000870
	ldr r4, _02039E28 @ =gUnk_03000870
	ldr r2, _02039E28 @ =gUnk_03000870
	adds r1, r2, #0
	adds r1, #0x14
	ldr r2, [r1]
	adds r5, r2, #0
	adds r6, r5, #0
	lsls r5, r6, #2
	ldr r6, [r4, #4]
	adds r4, r5, r6
	ldr r3, [r3, #0x10]
	ldr r4, [r4]
	adds r3, r3, r4
	str r3, [r0, #0x10]
	adds r2, #1
	str r2, [r1]
	b _02039DEE
	.align 2, 0
_02039E28: .4byte gUnk_03000870
_02039E2C:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	ble _02039E60
	ldr r0, _02039E74 @ =gUnk_03000870
	ldr r1, _02039E74 @ =gUnk_03000870
	ldr r2, _02039E74 @ =gUnk_03000870
	ldr r1, [r1, #0xc]
	ldr r3, [r2, #0x10]
	adds r2, r1, r3
	adds r1, r2, #0
	str r1, [r0, #0xc]
	movs r0, #1
	cmn r1, r0
	bne _02039E60
	ldr r0, _02039E74 @ =gUnk_03000870
	ldrb r1, [r0, #3]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #3]
_02039E60:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bgt _02039E78
	ldr r0, _02039E74 @ =gUnk_03000870
	ldrb r1, [r0, #2]
	cmp r1, #0x8c
	beq _02039E78
	b _02039E8C
	.align 2, 0
_02039E74: .4byte gUnk_03000870
_02039E78:
	ldr r0, _02039E90 @ =gUnk_03000870
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
_02039E8C:
	b _02039F50
	.align 2, 0
_02039E90: .4byte gUnk_03000870
_02039E94:
	ldr r0, _02039EF4 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039EF8 @ =0x04000200
	ldr r1, _02039EF8 @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _02039EFC @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039EF4 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _02039F00 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _02039F00 @ =0x04000128
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0]
	ldr r0, _02039F00 @ =0x04000128
	ldr r1, _02039F04 @ =0x00002003
	str r1, [r0]
	ldr r0, _02039F08 @ =0x04000120
	movs r1, #0
	movs r2, #0
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, _02039F0C @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #0
	beq _02039EE0
	ldr r0, _02039F10 @ =0x0400010C
	movs r1, #0
	str r1, [r0]
_02039EE0:
	ldr r0, _02039F14 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldr r0, _02039F0C @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #0
	bne _02039F18
	movs r0, #1
	b _02039F74
	.align 2, 0
_02039EF4: .4byte 0x04000208
_02039EF8: .4byte 0x04000200
_02039EFC: .4byte 0x0000FF3F
_02039F00: .4byte 0x04000128
_02039F04: .4byte 0x00002003
_02039F08: .4byte 0x04000120
_02039F0C: .4byte gUnk_03000870
_02039F10: .4byte 0x0400010C
_02039F14: .4byte 0x04000202
_02039F18:
	ldr r0, _02039F3C @ =gUnk_03000870
	ldrb r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _02039F3C @ =gUnk_03000870
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
	b _02039F50
	.align 2, 0
_02039F3C: .4byte gUnk_03000870
_02039F40:
	ldr r0, _02039F4C @ =gUnk_03000870
	ldrb r1, [r0, #2]
	cmp r1, #2
	bls _02039F50
	movs r0, #1
	b _02039F74
	.align 2, 0
_02039F4C: .4byte gUnk_03000870
_02039F50:
	ldr r1, _02039F70 @ =gUnk_03000870
	ldr r0, _02039F70 @ =gUnk_03000870
	ldr r1, _02039F70 @ =gUnk_03000870
	ldrb r2, [r1, #2]
	adds r1, r2, #1
	ldrb r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #2]
	movs r0, #0
	b _02039F74
	.align 2, 0
_02039F70: .4byte gUnk_03000870
_02039F74:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x02039F7C
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	ldr r0, _02039FC0 @ =0x04000120
	ldr r1, [r0]
	str r1, [r7]
	ldr r0, _02039FC4 @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	beq _02039FA0
	ldr r0, _02039FC8 @ =0x04000128
	ldr r1, _02039FC8 @ =0x04000128
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_02039FA0:
	ldr r0, _02039FC4 @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	bne _0203A014
	ldr r0, _02039FCC @ =0x0400010E
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039FC4 @ =gUnk_03000870
	ldr r1, [r0, #8]
	cmp r1, #0
	bge _02039FD4
	ldr r0, _02039FC0 @ =0x04000120
	ldr r1, _02039FD0 @ =0xFEFEFEFE
	str r1, [r0]
	b _0203A008
	.align 2, 0
_02039FC0: .4byte 0x04000120
_02039FC4: .4byte gUnk_03000870
_02039FC8: .4byte 0x04000128
_02039FCC: .4byte 0x0400010E
_02039FD0: .4byte 0xFEFEFEFE
_02039FD4:
	ldr r0, _02039FF4 @ =gUnk_03000870
	ldr r1, [r0, #8]
	ldr r0, _02039FF8 @ =0x00001FFF
	cmp r1, r0
	bgt _0203A000
	ldr r0, _02039FFC @ =0x04000120
	ldr r1, _02039FF4 @ =gUnk_03000870
	ldr r2, _02039FF4 @ =gUnk_03000870
	ldr r3, [r2, #8]
	adds r2, r3, #0
	lsls r3, r2, #2
	ldr r2, [r1, #4]
	adds r1, r3, r2
	ldr r2, [r1]
	str r2, [r0]
	b _0203A008
	.align 2, 0
_02039FF4: .4byte gUnk_03000870
_02039FF8: .4byte 0x00001FFF
_02039FFC: .4byte 0x04000120
_0203A000:
	ldr r0, _0203A00C @ =0x04000120
	ldr r1, _0203A010 @ =gUnk_03000870
	ldr r2, [r1, #0xc]
	str r2, [r0]
_0203A008:
	b _0203A06A
	.align 2, 0
_0203A00C: .4byte 0x04000120
_0203A010: .4byte gUnk_03000870
_0203A014:
	ldr r0, _0203A034 @ =gUnk_03000870
	ldr r1, [r0, #8]
	cmp r1, #0
	bge _0203A03C
	ldr r0, [r7]
	ldr r1, _0203A038 @ =0xFEFEFEFE
	cmp r0, r1
	beq _0203A030
	ldr r1, _0203A034 @ =gUnk_03000870
	ldr r0, _0203A034 @ =gUnk_03000870
	ldr r1, _0203A034 @ =gUnk_03000870
	ldr r2, [r1, #8]
	subs r1, r2, #1
	str r1, [r0, #8]
_0203A030:
	b _0203A06A
	.align 2, 0
_0203A034: .4byte gUnk_03000870
_0203A038: .4byte 0xFEFEFEFE
_0203A03C:
	ldr r0, _0203A05C @ =gUnk_03000870
	ldr r1, [r0, #8]
	ldr r0, _0203A060 @ =0x00001FFF
	cmp r1, r0
	bgt _0203A064
	ldr r0, _0203A05C @ =gUnk_03000870
	ldr r1, _0203A05C @ =gUnk_03000870
	ldr r2, [r1, #8]
	adds r1, r2, #0
	lsls r2, r1, #2
	ldr r1, [r0, #4]
	adds r0, r2, r1
	ldr r1, [r7]
	str r1, [r0]
	b _0203A06A
	.align 2, 0
_0203A05C: .4byte gUnk_03000870
_0203A060: .4byte 0x00001FFF
_0203A064:
	ldr r0, _0203A0A8 @ =gUnk_03000870
	ldr r1, [r7]
	str r1, [r0, #0xc]
_0203A06A:
	ldr r0, _0203A0A8 @ =gUnk_03000870
	ldr r1, [r0, #8]
	ldr r0, _0203A0AC @ =0x00002002
	cmp r1, r0
	bgt _0203A09E
	ldr r1, _0203A0A8 @ =gUnk_03000870
	ldr r0, _0203A0A8 @ =gUnk_03000870
	ldr r1, _0203A0A8 @ =gUnk_03000870
	ldr r2, [r1, #8]
	adds r1, r2, #1
	str r1, [r0, #8]
	ldr r0, _0203A0A8 @ =gUnk_03000870
	ldrb r1, [r0]
	cmp r1, #1
	bne _0203A09E
	ldr r0, _0203A0B0 @ =0x04000128
	ldr r1, _0203A0B0 @ =0x04000128
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0203A0B4 @ =0x0400010E
	movs r1, #0xc0
	strh r1, [r0]
_0203A09E:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0203A0A8: .4byte gUnk_03000870
_0203A0AC: .4byte 0x00002002
_0203A0B0: .4byte 0x04000128
_0203A0B4: .4byte 0x0400010E

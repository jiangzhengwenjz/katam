	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x0200C410
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _0200C48C @ =0x04000208
	strh r6, [r3]
	ldr r2, _0200C490 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C494 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _0200C498 @ =gUnk_03005C20
	ldr r2, _0200C49C @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _0200C4A0 @ =0x04000128
	ldr r0, _0200C4A4 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _0200C47E
	ldr r0, _0200C4A8 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_0200C45E:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _0200C45E
	ldr r1, _0200C498 @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _0200C4A0 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_0200C47E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200C48C: .4byte 0x04000208
_0200C490: .4byte 0x04000200
_0200C494: .4byte 0x0000FF3F
_0200C498: .4byte gUnk_03005C20
_0200C49C: .4byte 0x05000006
_0200C4A0: .4byte 0x04000128
_0200C4A4: .4byte 0x00002003
_0200C4A8: .4byte 0x0400010C

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x0200C4AC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _0200C4C4 @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _0200C4BA
	b _0200C686
_0200C4BA:
	lsls r0, r0, #2
	ldr r1, _0200C4C8 @ =_0200C4CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0200C4C4: .4byte gUnk_03005C20
_0200C4C8: .4byte _0200C4CC
_0200C4CC: @ jump table
	.4byte _0200C4E0 @ case 0
	.4byte _0200C4F8 @ case 1
	.4byte _0200C594 @ case 2
	.4byte _0200C610 @ case 3
	.4byte _0200C67C @ case 4
_0200C4E0:
	ldr r0, [r5]
	ldr r1, _0200C4F4 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _0200C4EC
	b _0200C686
_0200C4EC:
	movs r0, #1
	strb r0, [r5, #1]
	b _0200C686
	.align 2, 0
_0200C4F4: .4byte 0x00FF00FF
_0200C4F8:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200C508
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _0200C506
	b _0200C686
_0200C506:
	b _0200C512
_0200C508:
	ldr r1, _0200C548 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_0200C512:
	ldr r0, _0200C54C @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _0200C550 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _0200C560
	ldr r2, _0200C548 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200C554 @ =0x0400010C
	ldr r0, _0200C558 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _0200C55C @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _0200C580
	.align 2, 0
_0200C548: .4byte 0x04000128
_0200C54C: .4byte 0x04000120
_0200C550: .4byte 0x04000202
_0200C554: .4byte 0x0400010C
_0200C558: .4byte 0x00C0F318
_0200C55C: .4byte 0x04000208
_0200C560:
	ldr r2, _0200C58C @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0200C590 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0200C580:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0200C686
	.align 2, 0
_0200C58C: .4byte 0x04000128
_0200C590: .4byte 0x04000208
_0200C594:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200C5A4
	adds r3, r0, #0
	b _0200C5AA
_0200C5A4:
	cmp r6, #0
	bge _0200C5AA
	movs r3, #0
_0200C5AA:
	cmp r2, #0
	beq _0200C5B0
	str r3, [r2]
_0200C5B0:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0200C5F2
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _0200C5D6
_0200C5BE:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, #1
	str r2, [r4, #0x14]
	cmp r2, r3
	blt _0200C5BE
_0200C5D6:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200C5FA
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0200C5F2
	movs r0, #1
	strb r0, [r5, #3]
_0200C5F2:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _0200C602
_0200C5FA:
	ldr r0, _0200C60C @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _0200C686
_0200C602:
	ldr r1, _0200C60C @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _0200C686
	.align 2, 0
_0200C60C: .4byte gUnk_03005C20
_0200C610:
	ldr r3, _0200C660 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200C664 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C668 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0200C66C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _0200C670 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _0200C64E
	ldr r1, _0200C674 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_0200C64E:
	ldr r1, _0200C678 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _0200C682
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0200C686
	.align 2, 0
_0200C660: .4byte 0x04000208
_0200C664: .4byte 0x04000200
_0200C668: .4byte 0x0000FF3F
_0200C66C: .4byte 0x04000128
_0200C670: .4byte 0x04000120
_0200C674: .4byte 0x0400010C
_0200C678: .4byte 0x04000202
_0200C67C:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0200C686
_0200C682:
	movs r0, #1
	b _0200C690
_0200C686:
	ldr r1, _0200C698 @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_0200C690:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0200C698: .4byte gUnk_03005C20

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x0200C69C
	push {r4, r5, lr}
	ldr r2, _0200C6C0 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _0200C6C4 @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _0200C6CC
	ldr r0, _0200C6C8 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _0200C714
	b _0200C702
	.align 2, 0
_0200C6C0: .4byte 0x04000120
_0200C6C4: .4byte gUnk_03005C20
_0200C6C8: .4byte 0x04000128
_0200C6CC:
	ldr r1, _0200C6DC @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _0200C6E4
	ldr r0, _0200C6E0 @ =0xFEFEFEFE
	str r0, [r2]
	b _0200C72A
	.align 2, 0
_0200C6DC: .4byte 0x0400010E
_0200C6E0: .4byte 0xFEFEFEFE
_0200C6E4:
	ldr r0, _0200C6F8 @ =0x00001FFF
	cmp r3, r0
	bgt _0200C6FC
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0200C72A
	.align 2, 0
_0200C6F8: .4byte 0x00001FFF
_0200C6FC:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _0200C72A
_0200C702:
	ldr r0, _0200C710 @ =0xFEFEFEFE
	cmp r4, r0
	beq _0200C72A
	subs r0, r1, #1
	str r0, [r5, #8]
	b _0200C72A
	.align 2, 0
_0200C710: .4byte 0xFEFEFEFE
_0200C714:
	ldr r0, _0200C724 @ =0x00001FFF
	cmp r3, r0
	bgt _0200C728
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _0200C72A
	.align 2, 0
_0200C724: .4byte 0x00001FFF
_0200C728:
	str r4, [r5, #0xc]
_0200C72A:
	ldr r1, [r5, #8]
	ldr r0, _0200C754 @ =0x00002002
	cmp r1, r0
	bgt _0200C74C
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200C74C
	ldr r2, _0200C758 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200C75C @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0200C74C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200C754: .4byte 0x00002002
_0200C758: .4byte 0x04000128
_0200C75C: .4byte 0x0400010E

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x0200B338
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _0200B3B4 @ =0x04000208
	strh r6, [r3]
	ldr r2, _0200B3B8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200B3BC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _0200B3C0 @ =gUnk_03005C20
	ldr r2, _0200B3C4 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _0200B3C8 @ =0x04000128
	ldr r0, _0200B3CC @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _0200B3A6
	ldr r0, _0200B3D0 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_0200B386:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _0200B386
	ldr r1, _0200B3C0 @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _0200B3C8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_0200B3A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200B3B4: .4byte 0x04000208
_0200B3B8: .4byte 0x04000200
_0200B3BC: .4byte 0x0000FF3F
_0200B3C0: .4byte gUnk_03005C20
_0200B3C4: .4byte 0x05000006
_0200B3C8: .4byte 0x04000128
_0200B3CC: .4byte 0x00002003
_0200B3D0: .4byte 0x0400010C

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x0200B3D4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _0200B3EC @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _0200B3E2
	b _0200B5AE
_0200B3E2:
	lsls r0, r0, #2
	ldr r1, _0200B3F0 @ =_0200B3F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0200B3EC: .4byte gUnk_03005C20
_0200B3F0: .4byte _0200B3F4
_0200B3F4: @ jump table
	.4byte _0200B408 @ case 0
	.4byte _0200B420 @ case 1
	.4byte _0200B4BC @ case 2
	.4byte _0200B538 @ case 3
	.4byte _0200B5A4 @ case 4
_0200B408:
	ldr r0, [r5]
	ldr r1, _0200B41C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _0200B414
	b _0200B5AE
_0200B414:
	movs r0, #1
	strb r0, [r5, #1]
	b _0200B5AE
	.align 2, 0
_0200B41C: .4byte 0x00FF00FF
_0200B420:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200B430
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _0200B42E
	b _0200B5AE
_0200B42E:
	b _0200B43A
_0200B430:
	ldr r1, _0200B470 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_0200B43A:
	ldr r0, _0200B474 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _0200B478 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _0200B488
	ldr r2, _0200B470 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200B47C @ =0x0400010C
	ldr r0, _0200B480 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _0200B484 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _0200B4A8
	.align 2, 0
_0200B470: .4byte 0x04000128
_0200B474: .4byte 0x04000120
_0200B478: .4byte 0x04000202
_0200B47C: .4byte 0x0400010C
_0200B480: .4byte 0x00C0F318
_0200B484: .4byte 0x04000208
_0200B488:
	ldr r2, _0200B4B4 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0200B4B8 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0200B4A8:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0200B5AE
	.align 2, 0
_0200B4B4: .4byte 0x04000128
_0200B4B8: .4byte 0x04000208
_0200B4BC:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200B4CC
	adds r3, r0, #0
	b _0200B4D2
_0200B4CC:
	cmp r6, #0
	bge _0200B4D2
	movs r3, #0
_0200B4D2:
	cmp r2, #0
	beq _0200B4D8
	str r3, [r2]
_0200B4D8:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0200B51A
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _0200B4FE
_0200B4E6:
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
	blt _0200B4E6
_0200B4FE:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200B522
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0200B51A
	movs r0, #1
	strb r0, [r5, #3]
_0200B51A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _0200B52A
_0200B522:
	ldr r0, _0200B534 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _0200B5AE
_0200B52A:
	ldr r1, _0200B534 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _0200B5AE
	.align 2, 0
_0200B534: .4byte gUnk_03005C20
_0200B538:
	ldr r3, _0200B588 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200B58C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200B590 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0200B594 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _0200B598 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _0200B576
	ldr r1, _0200B59C @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_0200B576:
	ldr r1, _0200B5A0 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _0200B5AA
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0200B5AE
	.align 2, 0
_0200B588: .4byte 0x04000208
_0200B58C: .4byte 0x04000200
_0200B590: .4byte 0x0000FF3F
_0200B594: .4byte 0x04000128
_0200B598: .4byte 0x04000120
_0200B59C: .4byte 0x0400010C
_0200B5A0: .4byte 0x04000202
_0200B5A4:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0200B5AE
_0200B5AA:
	movs r0, #1
	b _0200B5B8
_0200B5AE:
	ldr r1, _0200B5C0 @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_0200B5B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0200B5C0: .4byte gUnk_03005C20

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x0200B5C4
	push {r4, r5, lr}
	ldr r2, _0200B5E8 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _0200B5EC @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _0200B5F4
	ldr r0, _0200B5F0 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _0200B63C
	b _0200B62A
	.align 2, 0
_0200B5E8: .4byte 0x04000120
_0200B5EC: .4byte gUnk_03005C20
_0200B5F0: .4byte 0x04000128
_0200B5F4:
	ldr r1, _0200B604 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _0200B60C
	ldr r0, _0200B608 @ =0xFEFEFEFE
	str r0, [r2]
	b _0200B652
	.align 2, 0
_0200B604: .4byte 0x0400010E
_0200B608: .4byte 0xFEFEFEFE
_0200B60C:
	ldr r0, _0200B620 @ =0x00001FFF
	cmp r3, r0
	bgt _0200B624
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0200B652
	.align 2, 0
_0200B620: .4byte 0x00001FFF
_0200B624:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _0200B652
_0200B62A:
	ldr r0, _0200B638 @ =0xFEFEFEFE
	cmp r4, r0
	beq _0200B652
	subs r0, r1, #1
	str r0, [r5, #8]
	b _0200B652
	.align 2, 0
_0200B638: .4byte 0xFEFEFEFE
_0200B63C:
	ldr r0, _0200B64C @ =0x00001FFF
	cmp r3, r0
	bgt _0200B650
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _0200B652
	.align 2, 0
_0200B64C: .4byte 0x00001FFF
_0200B650:
	str r4, [r5, #0xc]
_0200B652:
	ldr r1, [r5, #8]
	ldr r0, _0200B67C @ =0x00002002
	cmp r1, r0
	bgt _0200B674
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200B674
	ldr r2, _0200B680 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200B684 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0200B674:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200B67C: .4byte 0x00002002
_0200B680: .4byte 0x04000128
_0200B684: .4byte 0x0400010E

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MultiSioInit
MultiSioInit: @ 0x08157210
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _081572D4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _081572D8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081572DC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _081572E0 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _081572E4 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _081572E8 @ =gMultiSioArea
	ldr r2, _081572EC @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _081572F0 @ =MultiSioRecvBufChange
	ldr r1, _081572F4 @ =gMultiSioRecvFuncBuf
	ldr r2, _081572F8 @ =0x04000010
	bl CpuSet
	ldr r0, _081572FC @ =MultiSioIntr
	ldr r1, _08157300 @ =gMultiSioIntrFuncBuf
	ldr r2, _08157304 @ =0x04000060
	bl CpuSet
	strb r5, [r4, #2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x1c
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r2, r4, #0
	movs r0, #0x30
	adds r0, r0, r2
	mov ip, r0
	adds r6, r2, #0
	adds r6, #0xd0
	adds r7, r2, #0
	adds r7, #0x40
	adds r5, r2, #0
	adds r5, #0x98
	movs r4, #0
_0815728E:
	lsls r0, r3, #2
	mov r1, ip
	adds r1, #4
	mov ip, r1
	subs r1, #4
	stm r1!, {r5}
	adds r1, r2, #0
	adds r1, #0xb4
	adds r1, r4, r1
	stm r7!, {r1}
	adds r1, r2, #0
	adds r1, #0x50
	adds r0, r0, r1
	str r6, [r0]
	adds r6, #0x54
	adds r5, #0x54
	adds r4, #0x54
	adds r3, #1
	cmp r3, #3
	ble _0815728E
	ldr r3, _081572D4 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _081572D8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081572D4: .4byte 0x04000208
_081572D8: .4byte 0x04000200
_081572DC: .4byte 0x0000FF3F
_081572E0: .4byte 0x04000134
_081572E4: .4byte 0x00004003
_081572E8: .4byte gMultiSioArea
_081572EC: .4byte 0x0500007A
_081572F0: .4byte MultiSioRecvBufChange
_081572F4: .4byte gMultiSioRecvFuncBuf
_081572F8: .4byte 0x04000010
_081572FC: .4byte MultiSioIntr
_08157300: .4byte gMultiSioIntrFuncBuf
_08157304: .4byte 0x04000060

	thumb_func_start MultiSioMain
MultiSioMain: @ 0x08157308
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08157330 @ =0x04000128
	ldr r6, [r5]
	ldr r0, _08157334 @ =gMultiSioArea
	ldrb r2, [r0, #1]
	adds r7, r0, #0
	cmp r2, #1
	beq _081573A8
	cmp r2, #1
	bgt _08157338
	cmp r2, #0
	beq _0815733E
	b _081573F2
	.align 2, 0
_08157330: .4byte 0x04000128
_08157334: .4byte gMultiSioArea
_08157338:
	cmp r2, #2
	beq _081573E4
	b _081573F2
_0815733E:
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _081573A4
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _081573F2
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _081573A4
	ldr r1, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _081573A4
	ldr r3, _081573C8 @ =0x04000208
	strh r2, [r3]
	ldr r2, _081573CC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081573D0 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _081573D4 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _081573D8 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r7]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_081573A4:
	movs r0, #1
	strb r0, [r7, #1]
_081573A8:
	ldr r2, _081573DC @ =gMultiSioArea
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _081573E4
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _081573E4
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _081573E0
	adds r0, #1
	strb r0, [r2, #0xa]
	b _081573E4
	.align 2, 0
_081573C8: .4byte 0x04000208
_081573CC: .4byte 0x04000200
_081573D0: .4byte 0x0000FF7F
_081573D4: .4byte 0x04000202
_081573D8: .4byte 0x0000BBBC
_081573DC: .4byte gMultiSioArea
_081573E0:
	movs r0, #2
	strb r0, [r2, #1]
_081573E4:
	mov r0, ip
	bl MultiSioRecvDataCheck
	mov r0, sb
	mov r1, r8
	bl MultiSioSendDataSet
_081573F2:
	ldr r1, _08157424 @ =gMultiSioArea
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	adds r7, r1, #0
	cmp r0, #8
	bne _08157428
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _0815742C
	.align 2, 0
_08157424: .4byte gMultiSioArea
_08157428:
	adds r0, r3, #0
	orrs r0, r2
_0815742C:
	adds r2, r0, #0
	ldrb r0, [r7, #9]
	cmp r0, #0
	beq _0815743A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_0815743A:
	ldrb r0, [r7, #0xa]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08157452
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _08157456
_08157452:
	adds r0, r2, #0
	orrs r0, r1
_08157456:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiSioSendDataSet
MultiSioSendDataSet: @ 0x08157464
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08157524 @ =gMultiSioArea
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _08157528 @ =gSio32MultiLoadArea
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _0815752C @ =0x04000005
	bl CpuSet
	movs r2, #0
	ldr r1, [r5, #0x28]
_081574E0:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xb
	bls _081574E0
	adds r2, r5, #0
	ldr r1, [r2, #0x28]
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08157502
	ldr r1, _08157530 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08157502:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0815751E
	ldrb r1, [r5, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0815751E
	ldr r1, _08157530 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0815751E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08157524: .4byte gMultiSioArea
_08157528: .4byte gSio32MultiLoadArea
_0815752C: .4byte 0x04000005
_08157530: .4byte 0x0400010E

	thumb_func_start MultiSioRecvDataCheck
MultiSioRecvDataCheck: @ 0x08157534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, _0815764C @ =gMultiSioRecvFuncBuf
	movs r4, #0
	str r4, [sp]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r1, _08157650 @ =gMultiSioArea
	strb r4, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	add r0, sp, #4
	mov sl, r0
	add r2, sp, #8
	mov sb, r2
	adds r5, r1, #0
	adds r6, r5, #0
	movs r7, #0x50
	adds r7, r7, r6
	mov r8, r7
_0815756E:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #2
	adds r0, r4, #1
	str r0, [sp, #0x10]
	mov r1, r8
	adds r0, r5, r1
	ldr r1, [r0]
_0815757E:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xb
	bls _0815757E
	mov r2, sl
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081575E0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r7, #0xf
	rsbs r7, r7, #0
	cmp r0, r7
	bne _081575E0
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6, #3]
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r6, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	mov r0, r8
	adds r3, r5, r0
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r4
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	subs r7, #1
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #8]
	ldr r0, [r3]
	adds r0, #4
	adds r1, r5, r4
	lsls r1, r1, #2
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _08157654 @ =0x04000005
	bl CpuSet
_081575E0:
	movs r0, #0
	str r0, [sp, #8]
	mov r7, r8
	adds r0, r5, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _08157658 @ =0x05000005
	bl CpuSet
	ldr r4, [sp, #0x10]
	cmp r4, #3
	ble _0815756E
	ldr r0, _08157650 @ =gMultiSioArea
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r3, r1, #0
	orrs r3, r2
	strb r3, [r0, #2]
	movs r4, #1
	adds r1, r4, #0
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	beq _0815768C
	ldrb r0, [r5]
	cmp r0, #8
	bne _0815765C
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08157630
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08157630
	ldrb r0, [r5, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #8]
_08157630:
	ldrb r4, [r5, #8]
	lsls r2, r4, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r5, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08157676
	movs r0, #0x40
	orrs r0, r4
	b _08157674
	.align 2, 0
_0815764C: .4byte gMultiSioRecvFuncBuf
_08157650: .4byte gMultiSioArea
_08157654: .4byte 0x04000005
_08157658: .4byte 0x05000005
_0815765C:
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_08157674:
	strb r0, [r5, #8]
_08157676:
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r5, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #8]
_0815768C:
	ldrb r0, [r5, #3]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiSioStart
MultiSioStart: @ 0x081576A0
	push {lr}
	ldr r2, _081576B8 @ =gMultiSioArea
	ldrb r0, [r2]
	cmp r0, #0
	beq _081576B2
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_081576B2:
	pop {r0}
	bx r0
	.align 2, 0
_081576B8: .4byte gMultiSioArea

	thumb_func_start MultiSioStop
MultiSioStop: @ 0x081576BC
	ldr r3, _081576F0 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _081576F4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081576F8 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _081576FC @ =0x04000128
	ldr r2, _08157700 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08157704 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08157708 @ =gMultiSioArea
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_081576F0: .4byte 0x04000208
_081576F4: .4byte 0x04000200
_081576F8: .4byte 0x0000FF3F
_081576FC: .4byte 0x04000128
_08157700: .4byte 0x00002003
_08157704: .4byte 0x0000BBBC
_08157708: .4byte gMultiSioArea

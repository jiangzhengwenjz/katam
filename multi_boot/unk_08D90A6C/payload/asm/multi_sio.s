	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MultiSioInit
MultiSioInit: @ 0x0203933C
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _020393D8 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020393DC @ =0x04000200
	ldr r1, _020393DC @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _020393E0 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _020393D8 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _020393E4 @ =0x04000134
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020393E8 @ =0x04000128
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0]
	ldr r0, _020393E8 @ =0x04000128
	ldr r1, _020393E8 @ =0x04000128
	ldrh r2, [r1]
	ldr r3, _020393EC @ =0x00004003
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	movs r0, #0
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, _020393F0 @ =gUnk_03000640
	ldr r2, _020393F4 @ =0x0500007A
	bl CpuSet
	ldr r0, _020393F8 @ =MultiSioRecvBufChange
	ldr r1, _020393FC @ =gUnk_03000830
	ldr r2, _02039400 @ =0x04000010
	bl CpuSet
	ldr r0, _02039404 @ =MultiSioIntr
	ldr r1, _02039408 @ =gUnk_030004C0
	ldr r2, _0203940C @ =0x04000060
	bl CpuSet
	ldr r0, _020393F0 @ =gUnk_03000640
	ldr r2, [r7]
	adds r1, r2, #0
	ldrb r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _020393F0 @ =gUnk_03000640
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x14]
	ldr r0, _020393F0 @ =gUnk_03000640
	ldr r1, _02039410 @ =gUnk_030006A0
	str r1, [r0, #0x28]
	ldr r0, _020393F0 @ =gUnk_03000640
	ldr r1, _02039414 @ =gUnk_030006BC
	str r1, [r0, #0x2c]
	movs r0, #0
	str r0, [r7, #4]
_020393CE:
	ldr r0, [r7, #4]
	cmp r0, #3
	ble _02039418
	b _02039480
	.align 2, 0
_020393D8: .4byte 0x04000208
_020393DC: .4byte 0x04000200
_020393E0: .4byte 0x0000FF3F
_020393E4: .4byte 0x04000134
_020393E8: .4byte 0x04000128
_020393EC: .4byte 0x00004003
_020393F0: .4byte gUnk_03000640
_020393F4: .4byte 0x0500007A
_020393F8: .4byte MultiSioRecvBufChange
_020393FC: .4byte gUnk_03000830
_02039400: .4byte 0x04000010
_02039404: .4byte MultiSioIntr
_02039408: .4byte gUnk_030004C0
_0203940C: .4byte 0x04000060
_02039410: .4byte gUnk_030006A0
_02039414: .4byte gUnk_030006BC
_02039418:
	ldr r0, _02039470 @ =gUnk_03000640
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #0
	adds r2, #0x30
	adds r0, r2, r1
	ldr r1, [r7, #4]
	movs r2, #0x54
	muls r1, r2, r1
	ldr r2, _02039474 @ =gUnk_030006D8
	adds r1, r2, r1
	str r1, [r0]
	ldr r0, _02039470 @ =gUnk_03000640
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #0
	adds r2, #0x40
	adds r0, r2, r1
	ldr r1, [r7, #4]
	movs r2, #0x54
	muls r1, r2, r1
	ldr r2, _02039478 @ =gUnk_030006F4
	adds r1, r1, r2
	str r1, [r0]
	ldr r0, _02039470 @ =gUnk_03000640
	ldr r1, [r7, #4]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #0
	adds r2, #0x50
	adds r0, r2, r1
	ldr r1, [r7, #4]
	movs r2, #0x54
	muls r1, r2, r1
	ldr r2, _0203947C @ =gUnk_03000710
	adds r1, r1, r2
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _020393CE
	.align 2, 0
_02039470: .4byte gUnk_03000640
_02039474: .4byte gUnk_030006D8
_02039478: .4byte gUnk_030006F4
_0203947C: .4byte gUnk_03000710
_02039480:
	ldr r0, _020394A4 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020394A8 @ =0x04000200
	ldr r1, _020394A8 @ =0x04000200
	ldrh r2, [r1]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _020394A4 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020394A4: .4byte 0x04000208
_020394A8: .4byte 0x04000200

	thumb_func_start MultiSioStart
MultiSioStart: @ 0x020394AC
	push {r7, lr}
	mov r7, sp
	ldr r0, _020394CC @ =gUnk_03000640
	ldrb r1, [r0]
	cmp r1, #0
	beq _020394C4
	ldr r0, _020394CC @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x80
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #8]
_020394C4:
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020394CC: .4byte gUnk_03000640

	thumb_func_start MultiSioStop
MultiSioStop: @ 0x020394D0
	push {r7, lr}
	mov r7, sp
	ldr r0, _02039518 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0203951C @ =0x04000200
	ldr r1, _0203951C @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _02039520 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02039518 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _02039524 @ =0x04000128
	ldr r2, _02039528 @ =0x00002003
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0203952C @ =0x0400010C
	ldr r1, _02039530 @ =0x0000BBBC
	str r1, [r0]
	ldr r0, _02039534 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldr r0, _02039538 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x7f
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #8]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02039518: .4byte 0x04000208
_0203951C: .4byte 0x04000200
_02039520: .4byte 0x0000FF3F
_02039524: .4byte 0x04000128
_02039528: .4byte 0x00002003
_0203952C: .4byte 0x0400010C
_02039530: .4byte 0x0000BBBC
_02039534: .4byte 0x04000202
_02039538: .4byte gUnk_03000640

	thumb_func_start MultiSioMain
MultiSioMain: @ 0x0203953C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	ldr r0, _02039568 @ =0x04000128
	ldr r1, [r0]
	str r1, [r7, #0xc]
	ldr r1, _0203956C @ =gUnk_03000640
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0203955E
	b _02039656
_0203955E:
	cmp r0, #1
	bgt _02039570
	cmp r0, #0
	beq _02039578
	b _020396E4
	.align 2, 0
_02039568: .4byte 0x04000128
_0203956C: .4byte gUnk_03000640
_02039570:
	cmp r0, #2
	bne _02039576
	b _020396CC
_02039576:
	b _020396E4
_02039578:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #0x30
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _02039642
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #8
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _020395BC
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _020395BC
	b _020395BE
_020395BC:
	b _020396E4
_020395BE:
	adds r0, r7, #0
	adds r0, #0xc
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _02039642
	ldr r0, _02039698 @ =gUnk_03000640
	ldr r1, [r0, #0x14]
	movs r0, #1
	cmn r1, r0
	bne _02039642
	ldr r0, _0203969C @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020396A0 @ =0x04000200
	ldr r1, _020396A0 @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _020396A4 @ =0x0000FF7F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _020396A0 @ =0x04000200
	ldr r1, _020396A0 @ =0x04000200
	ldrh r2, [r1]
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0203969C @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _020396A8 @ =0x04000128
	ldrb r1, [r0, #1]
	movs r2, #0xbf
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _020396AC @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldr r0, _020396B0 @ =0x0400010C
	ldr r1, _020396B4 @ =0x0000BBBC
	str r1, [r0]
	ldr r0, _02039698 @ =gUnk_03000640
	ldrb r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #8
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _020396A8 @ =0x04000128
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
_02039642:
	ldr r0, _02039698 @ =gUnk_03000640
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
_02039656:
	ldr r0, _02039698 @ =gUnk_03000640
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _020396CC
	ldr r0, _02039698 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _020396CC
	ldr r0, _02039698 @ =gUnk_03000640
	ldrb r1, [r0, #0xa]
	cmp r1, #7
	bhi _020396B8
	ldr r1, _02039698 @ =gUnk_03000640
	ldr r0, _02039698 @ =gUnk_03000640
	ldr r1, _02039698 @ =gUnk_03000640
	ldrb r2, [r1, #0xa]
	adds r1, r2, #1
	ldrb r2, [r0, #0xa]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0xa]
	b _020396CC
	.align 2, 0
_02039698: .4byte gUnk_03000640
_0203969C: .4byte 0x04000208
_020396A0: .4byte 0x04000200
_020396A4: .4byte 0x0000FF7F
_020396A8: .4byte 0x04000128
_020396AC: .4byte 0x04000202
_020396B0: .4byte 0x0400010C
_020396B4: .4byte 0x0000BBBC
_020396B8:
	ldr r0, _020396E0 @ =gUnk_03000640
	ldrb r1, [r0, #1]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #1]
_020396CC:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	bl MultiSioRecvDataCheck
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl MultiSioSendDataSet
	b _020396E4
	.align 2, 0
_020396E0: .4byte gUnk_03000640
_020396E4:
	ldr r1, _02039754 @ =gUnk_03000640
	ldr r0, _02039754 @ =gUnk_03000640
	ldr r1, _02039754 @ =gUnk_03000640
	ldrb r2, [r1, #0xb]
	adds r1, r2, #1
	ldrb r2, [r0, #0xb]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0xb]
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r6, [r0, #3]
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x1b
	lsrs r2, r0, #0x1f
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	lsls r1, r0, #4
	orrs r6, r1
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x1a
	lsrs r2, r0, #0x1f
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	lsls r1, r0, #5
	orrs r6, r1
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x19
	lsrs r2, r0, #0x1f
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	lsls r1, r0, #6
	orrs r6, r1
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r1, [r0, #2]
	mov r8, r1
	mov r0, r8
	lsls r0, r0, #8
	mov r8, r0
	ldr r0, _02039754 @ =gUnk_03000640
	ldrb r1, [r0]
	cmp r1, #8
	bne _02039758
	movs r1, #0x80
	mov r0, r8
	orrs r0, r1
	adds r5, r6, #0
	orrs r5, r0
	b _0203975C
	.align 2, 0
_02039754: .4byte gUnk_03000640
_02039758:
	mov r5, r8
	orrs r5, r6
_0203975C:
	adds r4, r5, #0
	ldr r0, _0203979C @ =gUnk_03000640
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _0203976C
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r4, r0
_0203976C:
	ldr r0, _0203979C @ =gUnk_03000640
	ldrb r1, [r0, #0xa]
	lsrs r0, r1, #3
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	mov sb, r1
	mov r0, sb
	lsls r0, r0, #0xf
	mov sb, r0
	ldr r0, [r7, #0xc]
	lsls r1, r0, #0x1a
	lsrs r0, r1, #0x1e
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #3
	bls _020397A0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r1, sb
	orrs r1, r0
	adds r0, r4, #0
	orrs r0, r1
	b _020397A4
	.align 2, 0
_0203979C: .4byte gUnk_03000640
_020397A0:
	mov r0, sb
	orrs r0, r4
_020397A4:
	b _020397A6
_020397A6:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start MultiSioSendDataSet
MultiSioSendDataSet: @ 0x020397B4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r2, [r7, #4]
	adds r1, r2, #0
	movs r2, #1
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #4
	ldrb r2, [r0, #1]
	movs r3, #0xef
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r1, _02039894 @ =gUnk_03000870
	ldrb r2, [r1, #3]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #5
	ldrb r2, [r0, #1]
	movs r3, #0xdf
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r1, _02039890 @ =gUnk_03000640
	ldrb r2, [r1, #8]
	lsls r1, r2, #0x19
	lsrs r3, r1, #0x1f
	movs r2, #1
	adds r1, r3, #0
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldrb r2, [r0, #1]
	movs r3, #0xbf
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r1, _02039890 @ =gUnk_03000640
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1, #0xb]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r2, _02039890 @ =gUnk_03000640
	ldrb r1, [r1, #2]
	ldrb r2, [r2, #3]
	eors r1, r2
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0, #1]
	movs r3, #0xf0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, _02039890 @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldrh r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _02039890 @ =gUnk_03000640
	ldr r2, [r0, #0x28]
	adds r1, r2, #4
	ldr r2, _02039898 @ =0x04000005
	ldr r0, [r7]
	bl CpuSet
	movs r0, #0
	str r0, [r7, #0xc]
_02039888:
	ldr r0, [r7, #0xc]
	cmp r0, #0xb
	bls _0203989C
	b _020398BC
	.align 2, 0
_02039890: .4byte gUnk_03000640
_02039894: .4byte gUnk_03000870
_02039898: .4byte 0x04000005
_0203989C:
	ldr r0, _020398B8 @ =gUnk_03000640
	ldr r1, [r7, #0xc]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r0, #0x28]
	adds r0, r1, r2
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, r1
	str r1, [r7, #8]
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	str r1, [r7, #0xc]
	b _02039888
	.align 2, 0
_020398B8: .4byte gUnk_03000640
_020398BC:
	ldr r1, _0203991C @ =gUnk_03000640
	ldr r0, [r1, #0x28]
	ldr r2, [r7, #8]
	adds r1, r2, #0
	mvns r2, r1
	adds r3, r2, #0
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r0, _0203991C @ =gUnk_03000640
	ldrb r1, [r0]
	cmp r1, #0
	beq _020398EA
	ldr r0, _02039920 @ =0x0400010E
	movs r1, #0
	strh r1, [r0]
_020398EA:
	ldr r0, _0203991C @ =gUnk_03000640
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x14]
	ldr r0, _0203991C @ =gUnk_03000640
	ldrb r1, [r0]
	cmp r1, #0
	beq _02039914
	ldr r0, _0203991C @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _02039914
	ldr r0, _02039920 @ =0x0400010E
	movs r1, #0xc0
	strh r1, [r0]
_02039914:
	add sp, #0x10
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0203991C: .4byte gUnk_03000640
_02039920: .4byte 0x0400010E

	thumb_func_start MultiSioRecvDataCheck
MultiSioRecvDataCheck: @ 0x02039924
	push {r4, r7, lr}
	sub sp, #0x28
	mov r7, sp
	str r0, [r7]
	ldr r0, _02039960 @ =gUnk_03000830
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r4, [r7, #4]
	bl _call_via_r4
	str r0, [r7, #0x10]
	ldr r0, _02039964 @ =gUnk_03000640
	ldrb r1, [r0, #3]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #3]
	ldr r0, _02039964 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0xbf
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #8]
	movs r0, #0
	str r0, [r7, #0x1c]
_02039958:
	ldr r0, [r7, #0x1c]
	cmp r0, #3
	ble _02039968
	b _02039A78
	.align 2, 0
_02039960: .4byte gUnk_03000830
_02039964: .4byte gUnk_03000640
_02039968:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0
	str r0, [r7, #0x20]
_02039970:
	ldr r0, [r7, #0x20]
	cmp r0, #0xb
	bls _02039978
	b _020399A4
_02039978:
	ldr r0, _020399A0 @ =gUnk_03000640
	ldr r1, [r7, #0x1c]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r2, r0, #0
	adds r2, #0x50
	adds r0, r2, r1
	ldr r1, [r7, #0x20]
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, [r0]
	adds r0, r1, r2
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, r1
	str r1, [r7, #8]
	ldr r0, [r7, #0x20]
	adds r1, r0, #1
	str r1, [r7, #0x20]
	b _02039970
	.align 2, 0
_020399A0: .4byte gUnk_03000640
_020399A4:
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r7, #0x1c]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _02039A44
	ldr r1, [r7, #8]
	adds r0, r1, #0
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r1, #0xf
	cmn r0, r1
	bne _02039A44
	ldr r0, _02039A6C @ =gUnk_03000640
	ldr r1, _02039A6C @ =gUnk_03000640
	movs r2, #1
	ldr r3, [r7, #0x1c]
	lsls r2, r3
	ldrb r1, [r1, #3]
	orrs r1, r2
	ldrb r2, [r0, #3]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #3]
	ldr r0, _02039A6C @ =gUnk_03000640
	ldr r1, _02039A6C @ =gUnk_03000640
	ldrb r2, [r1, #8]
	lsls r3, r2, #0x1c
	lsrs r1, r3, #0x1c
	ldr r2, _02039A6C @ =gUnk_03000640
	ldr r3, [r7, #0x1c]
	adds r4, r3, #0
	lsls r3, r4, #2
	adds r2, #0x50
	adds r3, r2, r3
	ldr r2, [r3]
	ldrb r3, [r2, #1]
	lsls r2, r3, #0x1a
	lsrs r4, r2, #0x1f
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	ldr r3, [r7, #0x1c]
	lsls r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	ldrb r2, [r0, #8]
	movs r3, #0xf0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #8]
	ldr r0, _02039A6C @ =gUnk_03000640
	ldr r1, [r7, #0x1c]
	adds r2, r1, #0
	lsls r1, r2, #2
	adds r0, #0x50
	adds r1, r0, r1
	ldr r2, [r1]
	adds r0, r2, #4
	ldr r1, [r7, #0x1c]
	adds r3, r1, #0
	lsls r2, r3, #2
	adds r2, r2, r1
	lsls r1, r2, #2
	ldr r2, [r7]
	adds r1, r1, r2
	ldr r2, _02039A70 @ =0x04000005
	bl CpuSet
_02039A44:
	movs r0, #0
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x24
	ldr r1, _02039A6C @ =gUnk_03000640
	ldr r2, [r7, #0x1c]
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r1, #0x50
	adds r2, r1, r2
	ldr r3, [r2]
	adds r1, r3, #4
	ldr r2, _02039A74 @ =0x05000005
	bl CpuSet
	ldr r0, [r7, #0x1c]
	adds r1, r0, #1
	str r1, [r7, #0x1c]
	b _02039958
	.align 2, 0
_02039A6C: .4byte gUnk_03000640
_02039A70: .4byte 0x04000005
_02039A74: .4byte 0x05000005
_02039A78:
	ldr r0, _02039B10 @ =gUnk_03000640
	ldr r1, _02039B10 @ =gUnk_03000640
	ldr r2, _02039B10 @ =gUnk_03000640
	ldrb r1, [r1, #2]
	ldrb r2, [r2, #3]
	orrs r1, r2
	ldrb r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #2]
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0, #3]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _02039B5C
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0]
	cmp r1, #8
	bne _02039B14
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0, #3]
	movs r2, #3
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _02039ADC
	ldr r0, _02039B10 @ =gUnk_03000640
	ldr r1, _02039B10 @ =gUnk_03000640
	ldrb r0, [r0, #3]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _02039ADC
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x10
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #8]
_02039ADC:
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	movs r1, #0xe
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _02039B10 @ =gUnk_03000640
	ldrb r2, [r1, #2]
	movs r3, #0xe
	adds r1, r2, #0
	ands r1, r3
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	cmp r0, r1
	bne _02039B0C
	ldr r0, _02039B10 @ =gUnk_03000640
	ldrb r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #8]
_02039B0C:
	b _02039B38
	.align 2, 0
_02039B10: .4byte gUnk_03000640
_02039B14:
	ldr r0, _02039B64 @ =gUnk_03000640
	ldr r1, _02039B64 @ =gUnk_03000640
	ldr r2, [r1, #0x50]
	ldrb r1, [r2, #1]
	lsls r2, r1, #0x19
	lsrs r1, r2, #0x1f
	movs r2, #1
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #6
	ldrb r2, [r0, #8]
	movs r3, #0xbf
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #8]
_02039B38:
	ldr r0, _02039B64 @ =gUnk_03000640
	ldr r1, _02039B64 @ =gUnk_03000640
	ldr r2, [r1, #0x50]
	ldrb r1, [r2, #1]
	lsls r2, r1, #0x1b
	lsrs r1, r2, #0x1f
	movs r2, #1
	ands r1, r2
	adds r2, r1, #0
	lsls r1, r2, #5
	ldrb r2, [r0, #8]
	movs r3, #0xdf
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #8]
_02039B5C:
	ldr r0, _02039B64 @ =gUnk_03000640
	ldrb r1, [r0, #3]
	adds r0, r1, #0
	b _02039B68
	.align 2, 0
_02039B64: .4byte gUnk_03000640
_02039B68:
	add sp, #0x28
	pop {r4, r7}
	pop {r1}
	bx r1

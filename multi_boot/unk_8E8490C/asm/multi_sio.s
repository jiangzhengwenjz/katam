	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MultiSioInit
MultiSioInit: @ 0x0200C5D4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _0200C690 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200C694 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C698 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _0200C69C @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _0200C6A0 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _0200C6A4 @ =gUnk_03007240
	ldr r2, _0200C6A8 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0200C6AC @ =MultiSioRecvBufChange
	ldr r1, _0200C6B0 @ =gUnk_03007430
	ldr r2, _0200C6B4 @ =0x04000010
	bl CpuSet
	ldr r0, _0200C6B8 @ =MultiSioIntr
	ldr r1, _0200C6BC @ =gUnk_030070C0
	ldr r2, _0200C6C0 @ =0x04000060
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
	movs r5, #0
_0200C63C:
	ldr r4, _0200C6A4 @ =gUnk_03007240
	lsls r3, r5, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r3, r1
	movs r0, #0x54
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x98
	adds r0, r2, r0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	adds r0, r4, #0
	adds r0, #0xb4
	adds r0, r2, r0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	adds r3, r3, r0
	adds r0, #0x80
	adds r2, r2, r0
	str r2, [r3]
	adds r5, #1
	cmp r5, #3
	ble _0200C63C
	ldr r3, _0200C690 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0200C694 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200C690: .4byte 0x04000208
_0200C694: .4byte 0x04000200
_0200C698: .4byte 0x0000FF3F
_0200C69C: .4byte 0x04000134
_0200C6A0: .4byte 0x00004003
_0200C6A4: .4byte gUnk_03007240
_0200C6A8: .4byte 0x0500007A
_0200C6AC: .4byte MultiSioRecvBufChange
_0200C6B0: .4byte gUnk_03007430
_0200C6B4: .4byte 0x04000010
_0200C6B8: .4byte MultiSioIntr
_0200C6BC: .4byte gUnk_030070C0
_0200C6C0: .4byte 0x04000060

	thumb_func_start MultiSioStart
MultiSioStart: @ 0x0200C6C4
	push {lr}
	ldr r2, _0200C6DC @ =gUnk_03007240
	ldrb r0, [r2]
	cmp r0, #0
	beq _0200C6D6
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_0200C6D6:
	pop {r0}
	bx r0
	.align 2, 0
_0200C6DC: .4byte gUnk_03007240

	thumb_func_start MultiSioStop
MultiSioStop: @ 0x0200C6E0
	ldr r3, _0200C714 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0200C718 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C71C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0200C720 @ =0x04000128
	ldr r2, _0200C724 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _0200C728 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _0200C72C @ =gUnk_03007240
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_0200C714: .4byte 0x04000208
_0200C718: .4byte 0x04000200
_0200C71C: .4byte 0x0000FF3F
_0200C720: .4byte 0x04000128
_0200C724: .4byte 0x00002003
_0200C728: .4byte 0x0000BBBC
_0200C72C: .4byte gUnk_03007240

	thumb_func_start MultiSioMain
MultiSioMain: @ 0x0200C730
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _0200C754 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _0200C758 @ =gUnk_03007240
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _0200C7CC
	cmp r0, #1
	bgt _0200C75C
	cmp r0, #0
	beq _0200C762
	b _0200C816
	.align 2, 0
_0200C754: .4byte 0x04000128
_0200C758: .4byte gUnk_03007240
_0200C75C:
	cmp r0, #2
	beq _0200C808
	b _0200C816
_0200C762:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0200C7C8
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _0200C816
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0200C7C8
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200C7C8
	ldr r3, _0200C7EC @ =0x04000208
	strh r2, [r3]
	ldr r2, _0200C7F0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200C7F4 @ =0x0000FF7F
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
	ldr r1, _0200C7F8 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _0200C7FC @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_0200C7C8:
	movs r0, #1
	strb r0, [r6, #1]
_0200C7CC:
	ldr r2, _0200C800 @ =gUnk_03007240
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _0200C808
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0200C808
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _0200C804
	adds r0, #1
	strb r0, [r2, #0xa]
	b _0200C808
	.align 2, 0
_0200C7EC: .4byte 0x04000208
_0200C7F0: .4byte 0x04000200
_0200C7F4: .4byte 0x0000FF7F
_0200C7F8: .4byte 0x04000202
_0200C7FC: .4byte 0x0000BBBC
_0200C800: .4byte gUnk_03007240
_0200C804:
	movs r0, #2
	strb r0, [r2, #1]
_0200C808:
	mov r0, ip
	bl MultiSioRecvDataCheck
	mov r0, sb
	mov r1, r8
	bl MultiSioSendDataSet
_0200C816:
	ldr r3, _0200C848 @ =gUnk_03007240
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	ldrb r2, [r3, #3]
	ldrb r1, [r3, #8]
	movs r0, #0x10
	ands r0, r1
	orrs r2, r0
	movs r0, #0x20
	ands r0, r1
	orrs r2, r0
	movs r0, #0x40
	ands r0, r1
	orrs r2, r0
	ldrb r0, [r3, #2]
	lsls r1, r0, #8
	ldrb r0, [r3]
	cmp r0, #8
	bne _0200C84C
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _0200C850
	.align 2, 0
_0200C848: .4byte gUnk_03007240
_0200C84C:
	adds r0, r2, #0
	orrs r0, r1
_0200C850:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _0200C85E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_0200C85E:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _0200C876
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _0200C87A
_0200C876:
	adds r0, r1, #0
	orrs r0, r2
_0200C87A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiSioSendDataSet
MultiSioSendDataSet: @ 0x0200C888
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _0200C948 @ =gUnk_03007240
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
	ldr r1, _0200C94C @ =gUnk_03007470
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
	ldr r2, _0200C950 @ =0x04000005
	bl CpuSet
	movs r1, #0
_0200C902:
	ldr r3, _0200C948 @ =gUnk_03007240
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _0200C902
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _0200C926
	ldr r1, _0200C954 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_0200C926:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _0200C940
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0200C940
	ldr r1, _0200C954 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0200C940:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200C948: .4byte gUnk_03007240
_0200C94C: .4byte gUnk_03007470
_0200C950: .4byte 0x04000005
_0200C954: .4byte 0x0400010E

	thumb_func_start MultiSioRecvDataCheck
MultiSioRecvDataCheck: @ 0x0200C958
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0200CA60 @ =gUnk_03007430
	movs r4, #0
	str r4, [sp]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r1, _0200CA64 @ =gUnk_03007240
	strb r4, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	adds r6, r5, #0
_0200C984:
	movs r3, #0
	movs r2, #0
_0200C988:
	ldr r5, _0200CA64 @ =gUnk_03007240
	adds r0, r5, #0
	adds r0, #0x50
	mov r1, r8
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #0xb
	bls _0200C988
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200C9EC
	lsls r1, r3, #0x10
	ldr r0, _0200CA68 @ =0xFFF10000
	cmp r1, r0
	bne _0200C9EC
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r5, #3]
	orrs r0, r1
	strb r0, [r5, #3]
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r7
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #8]
	ldr r0, [r4]
	adds r0, #4
	adds r1, r6, #0
	ldr r2, _0200CA6C @ =0x04000005
	bl CpuSet
_0200C9EC:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _0200CA64 @ =gUnk_03007240
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _0200CA70 @ =0x05000005
	bl CpuSet
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _0200C984
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r3, r0, #0
	orrs r3, r2
	strb r3, [r4, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0200CAA4
	ldrb r0, [r4]
	cmp r0, #8
	bne _0200CA74
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0200CA44
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _0200CA44
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_0200CA44:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _0200CA8C
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _0200CA8C
	.align 2, 0
_0200CA60: .4byte gUnk_03007430
_0200CA64: .4byte gUnk_03007240
_0200CA68: .4byte 0xFFF10000
_0200CA6C: .4byte 0x04000005
_0200CA70: .4byte 0x05000005
_0200CA74:
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #8]
_0200CA8C:
	ldr r3, _0200CAB4 @ =gUnk_03007240
	ldr r0, [r3, #0x50]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_0200CAA4:
	ldr r0, _0200CAB4 @ =gUnk_03007240
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200CAB4: .4byte gUnk_03007240

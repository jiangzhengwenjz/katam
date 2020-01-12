	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D94D68
sub_08D94D68: @ 0x08D94D68
	push {lr}
	ldr r1, _08D94D7C @ =gUnk_03002604
	ldr r0, _08D94D80 @ =gUnk_0200EC1C
	str r0, [r1]
	bl sub_08D94D84
	bl sub_08D95FBC
	pop {r0}
	bx r0
	.align 2, 0
_08D94D7C: .4byte gUnk_03002604
_08D94D80: .4byte gUnk_0200EC1C

	thumb_func_start sub_08D94D84
sub_08D94D84: @ 0x08D94D84
	push {r4, lr}
	sub sp, #4
	ldr r0, _08D94DB0 @ =gUnk_03000720
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08D94DB4 @ =gUnk_03000470
	ldr r2, _08D94DB8 @ =0x01000158
	bl sub_08DA048C
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08D94DBC @ =gUnk_03000440
	ldr r2, _08D94DC0 @ =0x01000016
	bl sub_08DA048C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D94DB0: .4byte gUnk_03000720
_08D94DB4: .4byte gUnk_03000470
_08D94DB8: .4byte 0x01000158
_08D94DBC: .4byte gUnk_03000440
_08D94DC0: .4byte 0x01000016

	thumb_func_start sub_08D94DC4
sub_08D94DC4: @ 0x08D94DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08D94E28 @ =gUnk_03001420
	ldr r2, _08D94E2C @ =0x05000014
	add r0, sp, #4
	bl sub_08DA048C
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _08D94E30 @ =gUnk_03002640
	ldr r2, _08D94E34 @ =0x05000005
	bl sub_08DA048C
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08D94E38 @ =gUnk_03000440
	ldr r2, _08D94E3C @ =0x01000016
	adds r1, r4, #0
	bl sub_08DA048C
	strh r5, [r4, #4]
	bl sub_08D9FAE0
	ldr r0, _08D94E40 @ =gUnk_02000A15
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_08D9E260
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _08D94E44
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D94E4A
	.align 2, 0
_08D94E28: .4byte gUnk_03001420
_08D94E2C: .4byte 0x05000014
_08D94E30: .4byte gUnk_03002640
_08D94E34: .4byte 0x05000005
_08D94E38: .4byte gUnk_03000440
_08D94E3C: .4byte 0x01000016
_08D94E40: .4byte gUnk_02000A15
_08D94E44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08D94E4A:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D94E74 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08DA048C
	ldr r0, _08D94E78 @ =gUnk_02000C01
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _08D94E6C
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl sub_08DA048C
_08D94E6C:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D94E74: .4byte 0x01000010
_08D94E78: .4byte gUnk_02000C01

	thumb_func_start sub_08D94E7C
sub_08D94E7C: @ 0x08D94E7C
	push {r4, lr}
	ldr r4, _08D94E90 @ =gUnk_03000440
	ldr r0, [r4]
	bl sub_08D9E37C
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D94E90: .4byte gUnk_03000440

	thumb_func_start sub_08D94E94
sub_08D94E94: @ 0x08D94E94
	ldr r2, _08D94EA0 @ =gUnk_03000440
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08D94EA0: .4byte gUnk_03000440

	thumb_func_start sub_08D94EA4
sub_08D94EA4: @ 0x08D94EA4
	ldr r0, _08D94EAC @ =gUnk_03000440
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08D94EAC: .4byte gUnk_03000440

	thumb_func_start sub_08D94EB0
sub_08D94EB0: @ 0x08D94EB0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08D94EF0 @ =gUnk_03001420
	ldr r2, _08D94EF4 @ =0x05000014
	mov r0, sp
	bl sub_08DA048C
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08D94EF8 @ =gUnk_03002640
	ldr r2, _08D94EFC @ =0x05000005
	bl sub_08DA048C
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08D94F00 @ =gUnk_03000470
	ldr r2, _08D94F04 @ =0x01000158
	adds r1, r4, #0
	bl sub_08DA048C
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D94EF0: .4byte gUnk_03001420
_08D94EF4: .4byte 0x05000014
_08D94EF8: .4byte gUnk_03002640
_08D94EFC: .4byte 0x05000005
_08D94F00: .4byte gUnk_03000470
_08D94F04: .4byte 0x01000158

	thumb_func_start sub_08D94F08
sub_08D94F08: @ 0x08D94F08
	ldr r1, _08D94F10 @ =gUnk_03000470
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08D94F10: .4byte gUnk_03000470

	thumb_func_start sub_08D94F14
sub_08D94F14: @ 0x08D94F14
	ldr r2, _08D94F20 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08D94F20: .4byte gUnk_03000470

	thumb_func_start sub_08D94F24
sub_08D94F24: @ 0x08D94F24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08D94FB0 @ =gUnk_03000470
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _08D94FB4 @ =gUnk_0300041C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08D94FDA
_08D94F3E:
	movs r7, #0xaa
	lsls r7, r7, #2
	adds r3, r5, r7
	adds r3, r3, r4
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r2, r5, r6
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08D94F98
_08D94F5E:
	adds r0, r5, r7
	adds r3, r0, r4
	ldrb r2, [r3]
	lsls r1, r2, #3
	lsls r0, r4, #7
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp ip, r0
	beq _08D94F88
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08D94F5E
_08D94F88:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08D94FBC
_08D94F98:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _08D94FB8 @ =gUnk_03000720
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08D94FE4
	.align 2, 0
_08D94FB0: .4byte gUnk_03000470
_08D94FB4: .4byte gUnk_0300041C
_08D94FB8: .4byte gUnk_03000720
_08D94FBC:
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r2, r2, r4
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D94F3E
_08D94FDA:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_08D94FE4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D94FF0
sub_08D94FF0: @ 0x08D94FF0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08D95004 @ =gUnk_03000470
	ldr r1, _08D95008 @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08D95004: .4byte gUnk_03000470
_08D95008: .4byte 0x000002AD

	thumb_func_start sub_08D9500C
sub_08D9500C: @ 0x08D9500C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08D9512C @ =gUnk_03000470
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D9501C
	b _08D95126
_08D9501C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D95026
	b _08D95126
_08D95026:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _08D95130 @ =gUnk_03001E20
	ldrh r1, [r0]
	ldr r0, _08D95134 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _08D95138 @ =gUnk_03002640
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_08D95052:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08D95052
	movs r0, #0xab
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r5, [r3]
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #2]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #2]
	subs r5, #1
	movs r2, #0xf
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #2]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #4]
	orrs r1, r0
	strh r1, [r6, #4]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #6]
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #8]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #8]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #0xa]
	orrs r1, r0
	strh r1, [r6, #0xa]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #0xa]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	orrs r1, r0
	strh r1, [r6, #0xc]
	subs r0, r5, #1
	ands r0, r2
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #0xc]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
_08D95126:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9512C: .4byte gUnk_03000470
_08D95130: .4byte gUnk_03001E20
_08D95134: .4byte 0x000003FF
_08D95138: .4byte gUnk_03002640

	thumb_func_start sub_08D9513C
sub_08D9513C: @ 0x08D9513C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D951C4 @ =gUnk_03000470
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D95158
	b _08D9559E
_08D95158:
	movs r1, #0
	mov r8, r1
	ldr r2, _08D951C8 @ =gUnk_0300041C
	ldrb r2, [r2]
	cmp r8, r2
	blo _08D95166
	b _08D95370
_08D95166:
	ldr r0, _08D951CC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _08D951D0
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	mov r2, ip
	adds r5, r2, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	adds r3, r0, r3
	ldrb r4, [r3]
	subs r0, r4, #1
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0xa0
	add r1, ip
	lsls r0, r0, #3
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r2, [r5]
	cmp r0, r2
	bne _08D951AE
	b _08D9535C
_08D951AE:
	lsls r0, r4, #3
	adds r6, r1, r0
	str r2, [r6]
	ldrh r0, [r5, #4]
	strh r0, [r6, #4]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	b _08D9535C
	.align 2, 0
_08D951C4: .4byte gUnk_03000470
_08D951C8: .4byte gUnk_0300041C
_08D951CC: .4byte 0x04000128
_08D951D0:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08D9538C @ =gUnk_03001420
	adds r5, r0, r1
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	mov sb, r0
	ldrb r2, [r0]
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	ldr r4, [r5, #0x10]
	lsls r1, r1, #3
	mov sl, r6
	add r1, sl
	mov r0, ip
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r3, [r0]
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	str r1, [sp]
	asrs r3, r3, #0x18
	adds r2, r2, r3
	subs r7, r2, #1
	movs r2, #0xf
	ands r7, r2
	mov r2, sl
	adds r2, #0xa0
	add r2, ip
	lsls r0, r7, #3
	adds r6, r2, r0
	str r4, [r6]
	ldrh r0, [r5, #2]
	strh r0, [r6, #4]
	subs r7, #1
	movs r4, #0xf
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r6]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #4]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #2
	str r0, [r6]
	ldrh r1, [r5, #4]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #3
	str r0, [r6]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #4
	str r0, [r6]
	ldrh r0, [r5, #8]
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #5
	str r0, [r6]
	ldrh r1, [r5, #8]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #6
	str r0, [r6]
	ldrh r1, [r5, #0xa]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r0, r7, #1
	ands r0, r4
	lsls r0, r0, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #7
	str r0, [r6]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	cmp r3, #0
	ble _08D952DC
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_08D952DC:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r7, r0, #1
	movs r2, #0xf
	ands r7, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r7, r3
	beq _08D9531C
_08D952F4:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _08D95390 @ =0x0000FFFF
	str r0, [r6]
	ldrh r1, [r6, #4]
	orrs r0, r1
	strh r0, [r6, #4]
	subs r7, #1
	movs r0, #0xf
	ands r7, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	bne _08D952F4
_08D9531C:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D9535C
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08D95330
	b _08D95540
_08D95330:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _08D9533C
	b _08D95558
_08D9533C:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r3, r8
	lsls r1, r3, #7
	adds r0, r0, r1
	add r0, ip
	adds r0, #0xa4
	ldrh r1, [r0]
	ldr r0, _08D95390 @ =0x0000FFFF
	cmp r1, r0
	bne _08D9535C
	b _08D95570
_08D9535C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08D95394 @ =gUnk_0300041C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08D95370
	b _08D95166
_08D95370:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D9544E
	ldr r0, _08D95398 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _08D95394 @ =gUnk_0300041C
	b _08D9540A
	.align 2, 0
_08D9538C: .4byte gUnk_03001420
_08D95390: .4byte 0x0000FFFF
_08D95394: .4byte gUnk_0300041C
_08D95398: .4byte 0x0000FFFB
_08D9539C:
	ldr r0, _08D9542C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _08D95400
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	mov r1, r8
	lsls r3, r1, #7
	adds r0, r0, r3
	mov r2, ip
	adds r2, #0xa0
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r0, [r2]
	subs r1, r1, r0
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08D95400
	cmp r1, #1
	bgt _08D95414
_08D95400:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08D9540A:
	ldrb r3, [r4]
	cmp r8, r3
	blo _08D9539C
	cmp r5, #0
	beq _08D95434
_08D95414:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D95430 @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D9544E
	.align 2, 0
_08D9542C: .4byte 0x04000128
_08D95430: .4byte 0x000002AD
_08D95434:
	ldr r1, _08D95448 @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08D9544C
	adds r0, r2, #1
	strb r0, [r1]
	b _08D9544E
	.align 2, 0
_08D95448: .4byte 0x000002AD
_08D9544C:
	strb r5, [r1]
_08D9544E:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D954CE
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D95464
	b _08D9558C
_08D95464:
	movs r3, #0
	mov r8, r3
	ldr r0, _08D954FC @ =gUnk_0300041C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _08D954CE
_08D95472:
	mov r2, r8
	lsls r5, r2, #1
	mov r2, ip
	adds r2, #8
	adds r2, r2, r5
	ldrh r4, [r2]
	movs r3, #0xaa
	lsls r3, r3, #2
	add r3, ip
	add r3, r8
	ldrb r7, [r3]
	mov r1, r8
	lsls r0, r1, #7
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldrh r1, [r6, #4]
	ldr r0, _08D95500 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x10
	adds r1, r1, r5
	bics r0, r4
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x18
	adds r0, r0, r5
	ldrh r1, [r2]
	bics r4, r1
	strh r4, [r0]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	ldrb r2, [r2]
	cmp r8, r2
	blo _08D95472
_08D954CE:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08D9558C
	ldr r0, _08D95504 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08D9550C
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08D95508 @ =gUnk_03000720
	movs r0, #7
	b _08D95580
	.align 2, 0
_08D954FC: .4byte gUnk_0300041C
_08D95500: .4byte 0x000003FF
_08D95504: .4byte 0x000002AD
_08D95508: .4byte gUnk_03000720
_08D9550C:
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r2, r0
	bne _08D9558C
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08D9553C @ =gUnk_03000720
	movs r0, #5
	b _08D95580
	.align 2, 0
_08D9553C: .4byte gUnk_03000720
_08D95540:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D95554 @ =gUnk_03000720
	movs r0, #3
	b _08D95580
	.align 2, 0
_08D95554: .4byte gUnk_03000720
_08D95558:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D9556C @ =gUnk_03000720
	movs r0, #4
	b _08D95580
	.align 2, 0
_08D9556C: .4byte gUnk_03000720
_08D95570:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D95588 @ =gUnk_03000720
	movs r0, #6
_08D95580:
	str r0, [r1]
	movs r0, #0
	b _08D955A0
	.align 2, 0
_08D95588: .4byte gUnk_03000720
_08D9558C:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D9559E
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08D9559E:
	movs r0, #1
_08D955A0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D955B0
sub_08D955B0: @ 0x08D955B0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D955CC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D955D0 @ =gUnk_03000440
	cmp r0, #0
	beq _08D955D4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D955D8
	.align 2, 0
_08D955CC: .4byte gUnk_03002560
_08D955D0: .4byte gUnk_03000440
_08D955D4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D955D8:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _08D956C0
	ldr r0, _08D95600 @ =gUnk_030014E4
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08D95608
	ldr r0, _08D95604 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08D95638
	.align 2, 0
_08D95600: .4byte gUnk_030014E4
_08D95604: .4byte 0x0000FFFE
_08D95608:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _08D95620
	ldr r0, _08D9561C @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08D9563C
	.align 2, 0
_08D9561C: .4byte 0x0000FFFD
_08D95620:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08D9566C
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _08D95650
	ldr r0, _08D95648 @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_08D95638:
	ands r0, r1
	ldr r1, _08D9564C @ =0x0000FFFB
_08D9563C:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _08D956C0
	.align 2, 0
_08D95648: .4byte 0x0000FFFF
_08D9564C: .4byte 0x0000FFFB
_08D95650:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _08D9566E
_08D95656:
	ldr r0, _08D95668 @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _08D956C0
	.align 2, 0
_08D95668: .4byte 0x0000FFFC
_08D9566C:
	strh r2, [r3, #0x18]
_08D9566E:
	movs r6, #0
_08D95670:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r6
	mov r1, ip
	ldr r2, [r1]
	ands r0, r2
	lsls r5, r6, #1
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, #0
	beq _08D9569E
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _08D9569E
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08D95656
	adds r0, #1
	b _08D956A2
_08D9569E:
	adds r1, r1, r5
	movs r0, #0
_08D956A2:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08D95670
	ldr r1, [r3]
	adds r0, r3, #0
	bl sub_08DA04B0
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _08D956C8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_08D956C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D956C8: .4byte 0x0000FFFB

	thumb_func_start sub_08D956CC
sub_08D956CC: @ 0x08D956CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08D956FC @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08D95700 @ =gUnk_03002640
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_08D956E4:
	ldr r0, _08D95704 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _08D95708
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _08D9575A
	.align 2, 0
_08D956FC: .4byte gUnk_03000440
_08D95700: .4byte gUnk_03002640
_08D95704: .4byte 0x04000128
_08D95708:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _08D9573C @ =gUnk_030014E4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08D95770
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08D95740 @ =gUnk_03001420
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08D95782
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _08D95748
	ldr r5, _08D95744 @ =0x0000FFFB
	b _08D95782
	.align 2, 0
_08D9573C: .4byte gUnk_030014E4
_08D95740: .4byte gUnk_03001420
_08D95744: .4byte 0x0000FFFB
_08D95748:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08D9575A
	cmp r0, #0x20
	blt _08D95782
	cmp r0, #0x41
	bgt _08D95782
	cmp r0, #0x40
	blt _08D95782
_08D9575A:
	mov r1, ip
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	lsls r0, r2
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	b _08D95782
_08D95770:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08D95782
	lsls r0, r2, #1
	ldr r1, _08D95798 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_08D95782:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08D956E4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08D95798: .4byte 0x04000120

	thumb_func_start sub_08D9579C
sub_08D9579C: @ 0x08D9579C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08D95800 @ =gUnk_03000440
	ldr r1, _08D95804 @ =gUnk_03002640
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08D95808 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl sub_08DA048C
	ldrh r0, [r6, #6]
	ldr r3, _08D9580C @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08D95810 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D9581C
	ldr r0, _08D95814 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D9581C
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08D9581C
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08D95818 @ =gUnk_02000CC9
	b _08D9584E
	.align 2, 0
_08D95800: .4byte gUnk_03000440
_08D95804: .4byte gUnk_03002640
_08D95808: .4byte 0x00000123
_08D9580C: .4byte 0x0000FFFC
_08D95810: .4byte 0x04000128
_08D95814: .4byte gUnk_030014E4
_08D95818: .4byte gUnk_02000CC9
_08D9581C:
	ldr r3, _08D95858 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D95850
	ldr r0, _08D9585C @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D95850
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08D95850
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08D95860 @ =gUnk_02000F69
_08D9584E:
	str r0, [r4]
_08D95850:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D95858: .4byte 0x04000128
_08D9585C: .4byte gUnk_030014E4
_08D95860: .4byte gUnk_02000F69

	thumb_func_start sub_08D95864
sub_08D95864: @ 0x08D95864
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08D958BC @ =gUnk_03000440
	ldr r6, _08D958C0 @ =gUnk_03002640
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08D958C4 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _08D958C8 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D958A8
	ldr r0, _08D958CC @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D958A8
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D958D8
_08D958A8:
	ldrh r0, [r4, #6]
	ldr r1, _08D958D0 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08D958D4 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D9595A
	.align 2, 0
_08D958BC: .4byte gUnk_03000440
_08D958C0: .4byte gUnk_03002640
_08D958C4: .4byte 0x00000123
_08D958C8: .4byte 0x04000128
_08D958CC: .4byte gUnk_030014E4
_08D958D0: .4byte 0x0000FFFC
_08D958D4: .4byte gUnk_02000C01
_08D958D8:
	adds r0, r5, #0
	bl sub_08D956CC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D9595A
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08D95958
	cmp r0, #1
	bls _08D95958
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D9594C
	movs r1, #0
_08D95906:
	ldr r0, _08D95924 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08D95928 @ =gUnk_03000448
	adds r4, r1, #1
	cmp r0, r1
	bne _08D9592C
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl sub_08DA048C
	b _08D95940
	.align 2, 0
_08D95924: .4byte 0x04000128
_08D95928: .4byte gUnk_03000448
_08D9592C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08D95950 @ =gUnk_03001420
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08DA048C
_08D95940:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08D95906
	ldr r0, _08D95954 @ =gUnk_02000DC5
	str r0, [r5]
_08D9594C:
	movs r0, #1
	b _08D9595A
	.align 2, 0
_08D95950: .4byte gUnk_03001420
_08D95954: .4byte gUnk_02000DC5
_08D95958:
	movs r0, #0
_08D9595A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D95960
sub_08D95960: @ 0x08D95960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _08D959C8 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08D959CC @ =gUnk_03002640
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _08D959D0 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _08D959D4 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D959B4
	ldr r1, _08D959D8 @ =gUnk_030014E4
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D959B4
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D959E4
_08D959B4:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _08D959DC @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08D959E0 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D95AD2
	.align 2, 0
_08D959C8: .4byte gUnk_03000440
_08D959CC: .4byte gUnk_03002640
_08D959D0: .4byte 0x00000123
_08D959D4: .4byte 0x04000128
_08D959D8: .4byte gUnk_030014E4
_08D959DC: .4byte 0x0000FFFC
_08D959E0: .4byte gUnk_02000C01
_08D959E4:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _08D95A8A
	ldr r2, _08D95A34 @ =gUnk_03001420
	mov sl, r2
_08D959F8:
	ldr r0, _08D95A38 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _08D95A6C
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08D95A7C
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _08D95A7C
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _08D95A40
	ldr r6, _08D95A3C @ =0x0000FFFB
	b _08D95A7C
	.align 2, 0
_08D95A34: .4byte gUnk_03001420
_08D95A38: .4byte 0x04000128
_08D95A3C: .4byte 0x0000FFFB
_08D95A40:
	ldrh r1, [r2, #2]
	ldr r0, _08D95A4C @ =0x00000123
	cmp r1, r0
	beq _08D95A54
	ldr r6, _08D95A50 @ =0x0000FFFA
	b _08D95A7C
	.align 2, 0
_08D95A4C: .4byte 0x00000123
_08D95A50: .4byte 0x0000FFFA
_08D95A54:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _08D95A7C
	cmp r0, #0x41
	ble _08D95A64
	cmp r0, #0x42
	beq _08D95A6C
	b _08D95A7C
_08D95A64:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _08D95A78
_08D95A6C:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_08D95A78:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08D95A7C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _08D959F8
_08D95A8A:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D95AD2
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08D95ABA
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _08D95AB4
_08D95AA4:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08D95ABA
	movs r0, #0x10
	lsls r0, r3
_08D95AB4:
	ands r0, r1
	cmp r0, #0
	bne _08D95AA4
_08D95ABA:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _08D95AD0
	ldr r0, _08D95ACC @ =gUnk_02000F45
	str r0, [r5]
	movs r0, #2
	b _08D95AD2
	.align 2, 0
_08D95ACC: .4byte gUnk_02000F45
_08D95AD0:
	movs r0, #1
_08D95AD2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D95AE0
sub_08D95AE0: @ 0x08D95AE0
	ldr r2, _08D95AFC @ =gUnk_03002640
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08D95B00 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_08D95AFC: .4byte gUnk_03002640
_08D95B00: .4byte 0x00000123

	thumb_func_start sub_08D95B04
sub_08D95B04: @ 0x08D95B04
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08D95B60 @ =gUnk_03000440
	ldr r1, _08D95B64 @ =gUnk_03002640
	ldr r6, _08D95B68 @ =gUnk_03001420
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08D95B6C @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08D95B70 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D95B4C
	ldr r0, _08D95B74 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D95B4C
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D95B80
_08D95B4C:
	ldrh r0, [r3, #6]
	ldr r1, _08D95B78 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08D95B7C @ =gUnk_02000C01
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D95BB0
	.align 2, 0
_08D95B60: .4byte gUnk_03000440
_08D95B64: .4byte gUnk_03002640
_08D95B68: .4byte gUnk_03001420
_08D95B6C: .4byte 0x00000123
_08D95B70: .4byte 0x04000128
_08D95B74: .4byte gUnk_030014E4
_08D95B78: .4byte 0x0000FFFC
_08D95B7C: .4byte gUnk_02000C01
_08D95B80:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08D95BAE
	adds r0, r4, #0
	bl sub_08D956CC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D95BB0
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08D95BAE
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08D95BAE
	ldr r0, _08D95BB8 @ =gUnk_02001021
	str r0, [r4]
_08D95BAE:
	movs r0, #0
_08D95BB0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D95BB8: .4byte gUnk_02001021

	thumb_func_start sub_08D95BBC
sub_08D95BBC: @ 0x08D95BBC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08D95C14 @ =gUnk_03000440
	ldr r4, _08D95C18 @ =gUnk_03002640
	ldr r6, _08D95C1C @ =gUnk_03001420
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _08D95C20 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _08D95C24 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D95C02
	ldr r0, _08D95C28 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D95C02
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D95C34
_08D95C02:
	ldrh r0, [r7, #6]
	ldr r1, _08D95C2C @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _08D95C30 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D95CA6
	.align 2, 0
_08D95C14: .4byte gUnk_03000440
_08D95C18: .4byte gUnk_03002640
_08D95C1C: .4byte gUnk_03001420
_08D95C20: .4byte 0x00000123
_08D95C24: .4byte 0x04000128
_08D95C28: .4byte gUnk_030014E4
_08D95C2C: .4byte 0x0000FFFC
_08D95C30: .4byte gUnk_02000C01
_08D95C34:
	ldrb r0, [r6]
	cmp r0, #2
	beq _08D95C40
	movs r0, #1
	rsbs r0, r0, #0
	b _08D95CA6
_08D95C40:
	adds r0, r5, #0
	bl sub_08D956CC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D95CA6
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _08D95CA4
	movs r1, #0
_08D95C56:
	ldr r0, _08D95C74 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08D95C78 @ =gUnk_03000448
	adds r7, r1, #1
	cmp r0, r1
	bne _08D95C7C
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl sub_08DA048C
	b _08D95C90
	.align 2, 0
_08D95C74: .4byte 0x04000128
_08D95C78: .4byte gUnk_03000448
_08D95C7C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08D95CAC @ =gUnk_03001420
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08DA048C
_08D95C90:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08D95C56
	ldr r0, _08D95CB0 @ =gUnk_02001119
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_08D95CA4:
	movs r0, #0
_08D95CA6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D95CAC: .4byte gUnk_03001420
_08D95CB0: .4byte gUnk_02001119

	thumb_func_start sub_08D95CB4
sub_08D95CB4: @ 0x08D95CB4
	push {lr}
	adds r1, r0, #0
	ldr r2, _08D95CD8 @ =gUnk_03002640
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _08D95CE0
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08D95CDC @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08D95CF4
	.align 2, 0
_08D95CD8: .4byte gUnk_03002640
_08D95CDC: .4byte 0x00000123
_08D95CE0:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08D95CF8 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08D95CF4:
	pop {r1}
	bx r1
	.align 2, 0
_08D95CF8: .4byte 0x00000123

	thumb_func_start sub_08D95CFC
sub_08D95CFC: @ 0x08D95CFC
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08D95D5C @ =0x0000FFFF
	movs r0, #0
	bl sub_08D9E304
	ldr r1, _08D95D60 @ =gUnk_03002994
	ldr r0, _08D95D64 @ =gUnk_03002720
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08D95D68 @ =gUnk_03005840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08D95D6C @ =gUnk_03005008
	ldr r0, _08D95D70 @ =gUnk_03002934
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_18
	ldr r1, _08D95D74 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D95D78 @ =gUnk_030014D0
	ldr r0, _08D95D7C @ =0x06010000
	str r0, [r1]
	ldr r0, _08D95D80 @ =gUnk_020012AD
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08D95D84 @ =gUnk_020012DD
	ldr r5, _08D95D88 @ =gUnk_03000720
	cmp r1, #0
	beq _08D95D8C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D95D92
	.align 2, 0
_08D95D5C: .4byte 0x0000FFFF
_08D95D60: .4byte gUnk_03002994
_08D95D64: .4byte gUnk_03002720
_08D95D68: .4byte gUnk_03005840
_08D95D6C: .4byte gUnk_03005008
_08D95D70: .4byte gUnk_03002934
_08D95D74: .4byte gUnk_03001418
_08D95D78: .4byte gUnk_030014D0
_08D95D7C: .4byte 0x06010000
_08D95D80: .4byte gUnk_020012AD
_08D95D84: .4byte gUnk_020012DD
_08D95D88: .4byte gUnk_03000720
_08D95D8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D95D92:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_08D94F08
	bl sub_08DA02D8
	str r4, [sp, #4]
	ldr r1, _08D95E20 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08D95E24 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08D95E28 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D95DBC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D95DBC
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08D95E20 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08D95E2C @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08D95E30 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D95DD6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D95DD6
	ldr r0, _08D95E34 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08D95E38 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08D9F9F0
	bl sub_08D94D84
	bl sub_08D9BFFC
	ldr r0, _08D95E3C @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_08D95DFA:
	ldr r2, _08D95E40 @ =gUnk_03000740
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _08D95E44 @ =gUnk_0201DE94
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _08D95DFA
	ldr r1, _08D95E3C @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D95E20: .4byte 0x040000D4
_08D95E24: .4byte gUnk_03002640
_08D95E28: .4byte 0x85000005
_08D95E2C: .4byte gUnk_03001420
_08D95E30: .4byte 0x85000014
_08D95E34: .4byte gUnk_030014E4
_08D95E38: .4byte gUnk_030014E8
_08D95E3C: .4byte 0x04000208
_08D95E40: .4byte gUnk_03000740
_08D95E44: .4byte gUnk_0201DE94

	thumb_func_start sub_08D95E48
sub_08D95E48: @ 0x08D95E48
	push {lr}
	ldr r0, _08D95E64 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D95E68
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D95E6C
	.align 2, 0
_08D95E64: .4byte gUnk_03002560
_08D95E68:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D95E6C:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl sub_08DA04B0
	pop {r0}
	bx r0

	thumb_func_start sub_08D95E78
sub_08D95E78: @ 0x08D95E78
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08D94F08
	bl sub_08DA02D8
	bl sub_08D9BFFC
	ldr r0, _08D95EE4 @ =gUnk_03000400
	movs r3, #0
	str r3, [r0]
	ldr r2, _08D95EE8 @ =gUnk_030013D0
	ldr r0, [r2]
	ldr r1, _08D95EEC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08D95EF0 @ =gUnk_03001478
	strh r3, [r0]
	ldr r1, _08D95EF4 @ =gUnk_03002620
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08D95EF8 @ =gUnk_03001E40
	ldr r0, _08D95EFC @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08D95F00 @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08D95F04 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08D95F08 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08D95F0C @ =gUnk_03002610
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _08D95F10 @ =gUnk_02001379
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D95EE4: .4byte gUnk_03000400
_08D95EE8: .4byte gUnk_030013D0
_08D95EEC: .4byte 0xFFFFFBFF
_08D95EF0: .4byte gUnk_03001478
_08D95EF4: .4byte gUnk_03002620
_08D95EF8: .4byte gUnk_03001E40
_08D95EFC: .4byte 0x00001F03
_08D95F00: .4byte 0x040000D4
_08D95F04: .4byte 0x8100C000
_08D95F08: .4byte 0x81000200
_08D95F0C: .4byte gUnk_03002610
_08D95F10: .4byte gUnk_02001379

	thumb_func_start sub_08D95F14
sub_08D95F14: @ 0x08D95F14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08D95F88 @ =gUnk_03002620
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D95F8C @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08D95F90 @ =0x00001F03
	strh r0, [r1]
	ldr r0, _08D95F94 @ =gUnk_03002610
	strh r2, [r0]
	strh r2, [r0, #2]
_08D95F30:
	ldr r4, _08D95F98 @ =gUnk_0200C2C0
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _08D95F9C @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _08D95FA0 @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08D95FA4 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08D95F30
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08DA049C
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _08D95FA8 @ =gUnk_03002730
	str r0, [r5, #4]
	ldr r0, _08D95FAC @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08D95FB0 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08D95FB4 @ =gUnk_0200141D
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D95F88: .4byte gUnk_03002620
_08D95F8C: .4byte gUnk_03001E40
_08D95F90: .4byte 0x00001F03
_08D95F94: .4byte gUnk_03002610
_08D95F98: .4byte gUnk_0200C2C0
_08D95F9C: .4byte 0x040000D4
_08D95FA0: .4byte 0x0600F800
_08D95FA4: .4byte 0x8000001E
_08D95FA8: .4byte gUnk_03002730
_08D95FAC: .4byte 0x80000010
_08D95FB0: .4byte gUnk_030013D0
_08D95FB4: .4byte gUnk_0200141D

	thumb_func_start nullsub_73
nullsub_73: @ 0x08D95FB8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D95FBC
sub_08D95FBC: @ 0x08D95FBC
	push {r4, lr}
	sub sp, #8
	ldr r0, _08D95FE8 @ =gUnk_02001491
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _08D95FEC @ =gUnk_02001521
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D95FF0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D95FF6
	.align 2, 0
_08D95FE8: .4byte gUnk_02001491
_08D95FEC: .4byte gUnk_02001521
_08D95FF0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08D95FF6:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08D96024 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08DA048C
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _08D96028 @ =gUnk_02001525
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08D964FC
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96024: .4byte 0x01000052
_08D96028: .4byte gUnk_02001525

	thumb_func_start sub_08D9602C
sub_08D9602C: @ 0x08D9602C
	push {r4, r5, lr}
	ldr r0, _08D96048 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9604C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96050
	.align 2, 0
_08D96048: .4byte gUnk_03002560
_08D9604C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96050:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_08D96060:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _08D960B8 @ =gUnk_03000470
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x88
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x18
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08D96060
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08D960AA
	adds r0, r4, #0
	bl sub_08D9660C
_08D960AA:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_08DA04B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D960B8: .4byte gUnk_03000470

	thumb_func_start nullsub_74
nullsub_74: @ 0x08D960BC
	bx lr
	.align 2, 0

	thumb_func_start sub_08D960C0
sub_08D960C0: @ 0x08D960C0
	push {r4, lr}
	ldr r3, _08D960E8 @ =gUnk_03002620
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _08D960EC @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _08D960F0 @ =gUnk_03002610
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _08D960F4 @ =gUnk_0200155D
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D960E8: .4byte gUnk_03002620
_08D960EC: .4byte 0x0000F9FF
_08D960F0: .4byte gUnk_03002610
_08D960F4: .4byte gUnk_0200155D

	thumb_func_start sub_08D960F8
sub_08D960F8: @ 0x08D960F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08D9617C @ =gUnk_0200C6A4
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _08D96180 @ =0x0600C000
	bl sub_08DA049C
	movs r2, #0
	str r2, [sp]
	ldr r1, _08D96184 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D96188 @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _08D9618C @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08D96190 @ =gUnk_03005030
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _08D96194 @ =gUnk_03001E10
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _08D96198 @ =0x0600E480
_08D96134:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08D96134
	ldr r3, _08D9619C @ =0x0600E4C0
	movs r2, #0
_08D9614C:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08D9614C
	ldr r2, _08D961A0 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D961A4 @ =gUnk_0200160D
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9617C: .4byte gUnk_0200C6A4
_08D96180: .4byte 0x0600C000
_08D96184: .4byte 0x040000D4
_08D96188: .4byte 0x0600CC60
_08D9618C: .4byte 0x85000008
_08D96190: .4byte gUnk_03005030
_08D96194: .4byte gUnk_03001E10
_08D96198: .4byte 0x0600E480
_08D9619C: .4byte 0x0600E4C0
_08D961A0: .4byte gUnk_03002620
_08D961A4: .4byte gUnk_0200160D

	thumb_func_start sub_08D961A8
sub_08D961A8: @ 0x08D961A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08DA0224
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08D961C8 @ =gUnk_02001631
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D961C8: .4byte gUnk_02001631

	thumb_func_start sub_08D961CC
sub_08D961CC: @ 0x08D961CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08D961F0 @ =0xFFFF0000
	cmp r1, r0
	bne _08D961E8
	bl sub_08DA027C
	ldr r0, _08D961F4 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
_08D961E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D961F0: .4byte 0xFFFF0000
_08D961F4: .4byte gUnk_0200165D

	thumb_func_start sub_08D961F8
sub_08D961F8: @ 0x08D961F8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08D94DC4
	ldr r0, _08D96218 @ =gUnk_02001681
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96218: .4byte gUnk_02001681

	thumb_func_start sub_08D9621C
sub_08D9621C: @ 0x08D9621C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08D96248 @ =0xFFFF0000
	cmp r0, r1
	bne _08D96254
	ldr r0, _08D9624C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
	ldr r0, _08D96250 @ =gUnk_03000720
	str r5, [r0]
	bl sub_08D95CFC
	b _08D962DE
	.align 2, 0
_08D96248: .4byte 0xFFFF0000
_08D9624C: .4byte gUnk_03002560
_08D96250: .4byte gUnk_03000720
_08D96254:
	bl sub_08D94EA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08D962A8
	bl sub_08D94E7C
	ldr r1, _08D9628C @ =gUnk_0300041C
	ldr r0, _08D96290 @ =gUnk_03000440
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08D96294 @ =gUnk_03000428
	ldr r0, _08D96298 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _08D9629C @ =gUnk_03000434
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08D962A0 @ =gUnk_03000410
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08D962A4 @ =gUnk_02001749
	str r0, [r4, #0x7c]
	b _08D962DE
	.align 2, 0
_08D9628C: .4byte gUnk_0300041C
_08D96290: .4byte gUnk_03000440
_08D96294: .4byte gUnk_03000428
_08D96298: .4byte 0x04000128
_08D9629C: .4byte gUnk_03000434
_08D962A0: .4byte gUnk_03000410
_08D962A4: .4byte gUnk_02001749
_08D962A8:
	cmp r0, #1
	bne _08D962C4
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08D962DE
	bl sub_08D94E94
	b _08D962DE
_08D962C4:
	cmp r0, #0
	bge _08D962D8
	bl sub_08D94E7C
	ldr r0, _08D962D4 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
	b _08D962DE
	.align 2, 0
_08D962D4: .4byte gUnk_0200165D
_08D962D8:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_08D962DE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08D962E4
sub_08D962E4: @ 0x08D962E4
	ldr r1, _08D962EC @ =gUnk_02001755
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D962EC: .4byte gUnk_02001755

	thumb_func_start sub_08D962F0
sub_08D962F0: @ 0x08D962F0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_08D962FE:
	lsls r2, r3, #1
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x88
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08D962FE
	movs r0, #3
	bl sub_08D94EB0
	bl sub_08D94F14
	ldr r0, _08D96338 @ =gUnk_020017A1
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96338: .4byte gUnk_020017A1

	thumb_func_start sub_08D9633C
sub_08D9633C: @ 0x08D9633C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08D96372
	movs r0, #0
	strh r0, [r2]
	bl sub_08D94F24
	cmp r0, #0
	bne _08D9636E
	bl sub_08D95CFC
	b _08D96372
_08D9636E:
	ldr r0, _08D96378 @ =gUnk_020017E1
	str r0, [r4, #0x7c]
_08D96372:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96378: .4byte gUnk_020017E1

	thumb_func_start sub_08D9637C
sub_08D9637C: @ 0x08D9637C
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _08D96388 @ =gUnk_020017F1
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D96388: .4byte gUnk_020017F1

	thumb_func_start sub_08D9638C
sub_08D9638C: @ 0x08D9638C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D963AC
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D963AC
	subs r0, #1
	strh r0, [r1]
_08D963AC:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D963C4
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _08D963C4
	adds r0, #1
	strh r0, [r1]
_08D963C4:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08D965BC
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08D963E8
	ldr r0, _08D963F0 @ =gUnk_02001859
	str r0, [r4, #0x7c]
_08D963E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D963F0: .4byte gUnk_02001859

	thumb_func_start sub_08D963F4
sub_08D963F4: @ 0x08D963F4
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08D96404 @ =gUnk_0200186D
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D96404: .4byte gUnk_0200186D

	thumb_func_start sub_08D96408
sub_08D96408: @ 0x08D96408
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_08D965BC
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08D96436
	ldr r0, _08D9643C @ =gUnk_020018A5
	str r0, [r4, #0x7c]
_08D96436:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9643C: .4byte gUnk_020018A5

	thumb_func_start sub_08D96440
sub_08D96440: @ 0x08D96440
	ldr r2, _08D96458 @ =gUnk_03001478
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _08D9645C @ =gUnk_020018C5
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D96458: .4byte gUnk_03001478
_08D9645C: .4byte gUnk_020018C5

	thumb_func_start sub_08D96460
sub_08D96460: @ 0x08D96460
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08D9648C @ =gUnk_03001478
	adds r2, r3, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08D96486
	strh r4, [r5, #4]
	ldr r0, _08D96490 @ =gUnk_020018F9
	str r0, [r3, #0x7c]
_08D96486:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9648C: .4byte gUnk_03001478
_08D96490: .4byte gUnk_020018F9

	thumb_func_start sub_08D96494
sub_08D96494: @ 0x08D96494
	push {lr}
	sub sp, #4
	ldr r1, _08D964E0 @ =gUnk_03000404
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _08D964E4 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08D964E8 @ =0x01000200
	mov r0, sp
	bl sub_08DA048C
	ldr r1, _08D964EC @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08D964F0 @ =gUnk_02030000
	ldr r1, _08D964F4 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08DA048C
	ldr r0, _08D964F8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
	bl sub_08D98304
	bl sub_08D98334
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D964E0: .4byte gUnk_03000404
_08D964E4: .4byte 0x00007FFF
_08D964E8: .4byte 0x01000200
_08D964EC: .4byte gUnk_03001478
_08D964F0: .4byte gUnk_02030000
_08D964F4: .4byte 0x06008000
_08D964F8: .4byte gUnk_03002560

	thumb_func_start sub_08D964FC
sub_08D964FC: @ 0x08D964FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08D965BC
	ldr r0, _08D965B8 @ =0x06010000
	str r0, [r7]
	movs r0, #0
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	mov r1, sl
	strh r1, [r7, #0x14]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	strh r1, [r7, #0xc]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08D9EAD4
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _08D965B8 @ =0x06010000
	str r0, [r7, #0x28]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, r8
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sb
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08D9EAD4
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _08D965B8 @ =0x06010000
	str r0, [r7, #0x50]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, r8
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r0, sb
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08D9EAD4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D965B8: .4byte 0x06010000

	thumb_func_start sub_08D965BC
sub_08D965BC: @ 0x08D965BC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08D965D4 @ =gUnk_0200C2C4
	ldr r4, _08D965D8 @ =gUnk_03001DD0
	ldr r2, _08D965DC @ =gUnk_030013D0
	cmp r1, #0
	beq _08D965E4
	ldr r1, _08D965E0 @ =0x040000D4
	adds r0, #1
	b _08D965E8
	.align 2, 0
_08D965D4: .4byte gUnk_0200C2C4
_08D965D8: .4byte gUnk_03001DD0
_08D965DC: .4byte gUnk_030013D0
_08D965E0: .4byte 0x040000D4
_08D965E4:
	ldr r1, _08D96604 @ =0x040000D4
	adds r0, #2
_08D965E8:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08D96608 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96604: .4byte 0x040000D4
_08D96608: .4byte 0x80000010

	thumb_func_start sub_08D9660C
sub_08D9660C: @ 0x08D9660C
	push {lr}
	adds r1, r0, #0
	adds r1, #0xa0
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_08D9F2DC
	pop {r0}
	bx r0

	thumb_func_start sub_08D9662C
sub_08D9662C: @ 0x08D9662C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x3c]
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #0x30]
	movs r6, #0
	strh r0, [r4, #0x30]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x34]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08D96788
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D96668
sub_08D96668: @ 0x08D96668
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08D96680
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08D96680:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D96692
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08D96692:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08D966FA
	adds r0, r4, #0
	bl sub_08D96704
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D966F4
	adds r0, r4, #0
	bl sub_08D9EAD4
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _08D966CC
	ldr r0, _08D966C8 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _08D966E4
	.align 2, 0
_08D966C8: .4byte 0x0000FDFF
_08D966CC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D966DC
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08D966EA
_08D966DC:
	ldr r0, _08D96700 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_08D966E4:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08D966EA:
	cmp r2, #0
	beq _08D966F4
	adds r0, r2, #0
	bl sub_08D96668
_08D966F4:
	adds r0, r4, #0
	bl sub_08D9F2DC
_08D966FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96700: .4byte 0x0000FBFF

	thumb_func_start sub_08D96704
sub_08D96704: @ 0x08D96704
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08D96744
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	mov r0, sp
	adds r1, r4, #0
	bl sub_08D9674C
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_08D96744:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9674C
sub_08D9674C: @ 0x08D9674C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _08D9675C
	bl sub_08D9674C
_08D9675C:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _08D9677A
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _08D96780
_08D9677A:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_08D96780:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D96788
sub_08D96788: @ 0x08D96788
	push {lr}
_08D9678A:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _08D96794
	adds r0, r1, #0
	b _08D9678A
_08D96794:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9679C
sub_08D9679C: @ 0x08D9679C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _08D967BC @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D967B6
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08D967B6:
	pop {r0}
	bx r0
	.align 2, 0
_08D967BC: .4byte 0x0000FEFF

	thumb_func_start sub_08D967C0
sub_08D967C0: @ 0x08D967C0
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x48]
	adds r4, r0, r1
	str r4, [r2, #0x48]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x4c]
	adds r3, r0, r1
	str r3, [r2, #0x4c]
	str r4, [r2, #0x2c]
	str r3, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D967F8
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_08D967F8:
	adds r0, r2, #4
	bl sub_08D96668
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D96804
sub_08D96804: @ 0x08D96804
	push {r4, lr}
	ldr r0, _08D96820 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D96824
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96828
	.align 2, 0
_08D96820: .4byte gUnk_03002560
_08D96824:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96828:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D967C0
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9685C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D9684E
	subs r0, #1
	strh r0, [r1]
	b _08D96870
_08D9684E:
	ldr r0, _08D96858 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
	b _08D96870
	.align 2, 0
_08D96858: .4byte gUnk_03002560
_08D9685C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D96870
	ldr r0, _08D96878 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
_08D96870:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96878: .4byte gUnk_03002560

	thumb_func_start sub_08D9687C
sub_08D9687C: @ 0x08D9687C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08D968B0 @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _08D968B4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D968BA
	.align 2, 0
_08D968B0: .4byte gUnk_02001E01
_08D968B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D968BA:
	adds r2, r0, #0
	cmp r3, #0
	ble _08D968C6
	movs r0, #0
	strb r0, [r2, #3]
	b _08D968CE
_08D968C6:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08D968CE:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _08D968E4 @ =gUnk_03001478
	cmp r5, #0
	beq _08D968E8
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _08D968F0
	.align 2, 0
_08D968E4: .4byte gUnk_03001478
_08D968E8:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_08D968F0:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _08D96908 @ =gUnk_03001478
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D96908: .4byte gUnk_03001478

	thumb_func_start sub_08D9690C
sub_08D9690C: @ 0x08D9690C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08D96940 @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _08D96944
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D9694A
	.align 2, 0
_08D96940: .4byte gUnk_02001E01
_08D96944:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D9694A:
	adds r2, r0, #0
	cmp r3, #0
	ble _08D96956
	movs r0, #0
	strb r0, [r2, #3]
	b _08D9695E
_08D96956:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08D9695E:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _08D96974 @ =gUnk_03001478
	cmp r5, #0
	beq _08D96978
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _08D96980
	.align 2, 0
_08D96974: .4byte gUnk_03001478
_08D96978:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_08D96980:
	strb r6, [r2, #2]
	ldr r1, _08D96998 @ =gUnk_03001478
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D96998: .4byte gUnk_03001478

	thumb_func_start sub_08D9699C
sub_08D9699C: @ 0x08D9699C
	push {r4, lr}
	ldr r4, _08D969B8 @ =gUnk_03002560
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D969BC @ =gUnk_03001478
	cmp r0, #0
	beq _08D969C0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D969C4
	.align 2, 0
_08D969B8: .4byte gUnk_03002560
_08D969BC: .4byte gUnk_03001478
_08D969C0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D969C4:
	adds r2, r1, r0
	movs r0, #2
	ldrsb r0, [r2, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	lsrs r0, r0, #4
	strh r0, [r3, #4]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D96A1C
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08D96A02
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D96A0A
	movs r0, #0x1e
	b _08D96A10
_08D96A02:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D96A0E
_08D96A0A:
	strh r2, [r3, #4]
	b _08D96A12
_08D96A0E:
	movs r0, #0x1f
_08D96A10:
	strh r0, [r3, #4]
_08D96A12:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_08D9E37C
_08D96A1C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D96A24
sub_08D96A24: @ 0x08D96A24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08D96A60 @ =gUnk_02001EF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _08D96A64
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D96A6A
	.align 2, 0
_08D96A60: .4byte gUnk_02001EF9
_08D96A64:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D96A6A:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _08D96A76
	rsbs r4, r4, #0
_08D96A76:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _08D96A80
	movs r0, #0x10
	b _08D96A82
_08D96A80:
	movs r0, #0x20
_08D96A82:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D96A94
sub_08D96A94: @ 0x08D96A94
	push {r4, lr}
	ldr r0, _08D96AB0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D96AB4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96AB8
	.align 2, 0
_08D96AB0: .4byte gUnk_03002560
_08D96AB4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96AB8:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D96AEA
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08D96AE2
	adds r0, r1, #0
	movs r1, #1
	bl sub_08D9687C
	b _08D96AEA
_08D96AE2:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08D9687C
_08D96AEA:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D96B22
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _08D96B16
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_08D9687C
	b _08D96B22
_08D96B16:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_08D9687C
_08D96B22:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08D96B5A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D96B50
	ldr r1, _08D96B48 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _08D96B4C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
	b _08D96B5A
	.align 2, 0
_08D96B48: .4byte gUnk_03001478
_08D96B4C: .4byte gUnk_03002560
_08D96B50:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_08D96B5A:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _08D96B78 @ =gUnk_03001478
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08D96B72
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_08D96B72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96B78: .4byte gUnk_03001478

	thumb_func_start sub_08D96B7C
sub_08D96B7C: @ 0x08D96B7C
	push {lr}
	ldr r1, _08D96B94 @ =gUnk_03001478
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08D96B8A
	cmp r0, #0x1f
	bne _08D96B98
_08D96B8A:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08D96B98
	movs r0, #0
	b _08D96B9A
	.align 2, 0
_08D96B94: .4byte gUnk_03001478
_08D96B98:
	movs r0, #1
_08D96B9A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D96BA0
sub_08D96BA0: @ 0x08D96BA0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D96BD0 @ =gUnk_02002069
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08D9E260
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08D96BD4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96BD8
	.align 2, 0
_08D96BD0: .4byte gUnk_02002069
_08D96BD4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96BD8:
	adds r2, r1, r0
	str r5, [r2]
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r4, #3]
	strb r0, [r2, #8]
	ldrb r0, [r4, #2]
	lsls r0, r0, #5
	movs r1, #0
	strh r0, [r2, #0xa]
	strb r1, [r2, #0xc]
	movs r0, #0xff
	strb r0, [r2, #0xd]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D96C04
sub_08D96C04: @ 0x08D96C04
	push {lr}
	ldr r0, _08D96C20 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D96C24
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96C28
	.align 2, 0
_08D96C20: .4byte gUnk_03002560
_08D96C24:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96C28:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08D96C40
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _08D96C74
_08D96C40:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _08D96C54
	strb r1, [r2, #0xc]
_08D96C54:
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldrh r2, [r2, #0xa]
	lsrs r2, r2, #2
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl sub_08DA048C
_08D96C74:
	pop {r0}
	bx r0

	thumb_func_start sub_08D96C78
sub_08D96C78: @ 0x08D96C78
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D96CA8 @ =gUnk_0200213D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08D9E260
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08D96CAC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96CB0
	.align 2, 0
_08D96CA8: .4byte gUnk_0200213D
_08D96CAC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96CB0:
	adds r2, r1, r0
	str r5, [r2]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	ldrb r0, [r4]
	strb r0, [r2, #6]
	ldrb r0, [r4, #2]
	strb r0, [r2, #7]
	ldrb r0, [r4, #1]
	strb r0, [r2, #8]
	strb r1, [r2, #9]
	movs r0, #0xff
	strb r0, [r2, #0xa]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D96CD8
sub_08D96CD8: @ 0x08D96CD8
	push {r4, lr}
	ldr r0, _08D96CF4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D96CF8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D96CFC
	.align 2, 0
_08D96CF4: .4byte gUnk_03002560
_08D96CF8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D96CFC:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08D96D14
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _08D96D66
_08D96D14:
	ldrb r1, [r3, #9]
	adds r1, #1
	movs r2, #0
	strb r1, [r3, #9]
	strb r2, [r3, #0xa]
	ldrh r0, [r3, #4]
	adds r0, #1
	ldrb r4, [r3, #7]
	adds r0, r0, r4
	strh r0, [r3, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r3, #8]
	cmp r1, r0
	blo _08D96D38
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_08D96D38:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _08D96D6C @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _08D96D70 @ =gUnk_03002730
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08D96D74 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08D96D66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D96D6C: .4byte 0x040000D4
_08D96D70: .4byte gUnk_03002730
_08D96D74: .4byte gUnk_030013D0

	thumb_func_start sub_08D96D78
sub_08D96D78: @ 0x08D96D78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	ldr r0, [sp, #0x88]
	ldr r4, [sp, #0x8c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x34]
	ldr r0, _08D96E00 @ =gUnk_020027ED
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_08D9E260
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _08D96E04 @ =gUnk_0200C2C4
	mov ip, r0
	ldr r4, _08D96E08 @ =gUnk_030013D0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x44]
	adds r0, #4
	str r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x4c]
	adds r0, #4
	str r0, [sp, #0x50]
	adds r0, #4
	str r0, [sp, #0x54]
	adds r0, #4
	str r0, [sp, #0x58]
	adds r0, #4
	str r0, [sp, #0x5c]
	adds r0, #4
	str r0, [sp, #0x60]
	adds r0, #4
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _08D96E0C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08D96E12
	.align 2, 0
_08D96E00: .4byte gUnk_020027ED
_08D96E04: .4byte gUnk_0200C2C4
_08D96E08: .4byte gUnk_030013D0
_08D96E0C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_08D96E12:
	adds r1, r7, #0
	str r5, [r1]
	movs r2, #0xab
	lsls r2, r2, #2
	adds r3, r1, r2
	movs r6, #0
	movs r5, #0x10
	strb r5, [r3]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	ldr r5, _08D97210 @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08D97214 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _08D97218 @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08D9721C @ =0x000002B3
	adds r0, r1, r2
	mov r2, sl
	strb r2, [r0]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	mov r2, sp
	ldrh r2, [r2, #0x2c]
	strh r2, [r0]
	ldr r0, _08D97220 @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08D96E7E
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08D96E7E:
	ldr r1, _08D97224 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _08D97228 @ =gUnk_03001BF0
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _08D9722C @ =0x80000010
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	mov r5, ip
	str r5, [r1]
	mov r5, r8
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r5, _08D97228 @ =gUnk_03001BF0
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	orrs r0, r2
	str r0, [r4]
	str r6, [sp, #4]
	adds r5, r7, #4
	add r0, sp, #4
	adds r1, r5, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r0, _08D97234 @ =0x06010000
	str r0, [r7, #4]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r7, #0x18]
	ldr r1, [r7]
	ldrh r0, [r1]
	strh r0, [r7, #0x10]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1e]
	strh r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, [sp, #0x3c]
	ldrb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x23
	strb r0, [r1]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x16]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r7, #0xc]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x2c]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x30]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	movs r0, #0x10
	strh r0, [r7, #0x38]
	strh r6, [r7, #0x3a]
	str r6, [r7, #0x3c]
	str r6, [r7, #0x40]
	str r6, [r7, #0x44]
	str r6, [sp, #8]
	adds r4, r7, #0
	adds r4, #0x48
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r1, _08D97234 @ =0x06010000
	str r1, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, #6]
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r6, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x67
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	str r6, [r7, #0x70]
	str r6, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r2, r7, #0
	adds r2, #0x7c
	movs r1, #0x10
	strh r1, [r2]
	adds r0, #4
	strh r6, [r0]
	adds r0, #2
	str r6, [r0]
	adds r1, r7, #0
	adds r1, #0x84
	str r6, [r1]
	adds r0, #8
	str r6, [r0]
	str r4, [r7, #0x44]
	str r5, [r1]
	ldrh r1, [r2]
	ldr r0, _08D97238 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r2, _08D97234 @ =0x06010000
	str r2, [r5]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x10]
	adds r4, #0x88
	ldr r0, [sp, #0x4c]
	adds r1, r4, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r1, _08D97234 @ =0x06010000
	str r1, [r4]
	movs r2, #0xb0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D97238 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r2, _08D97234 @ =0x06010000
	str r2, [r5]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x18]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [sp, #0x54]
	adds r1, r4, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r2, _08D97234 @ =0x06010000
	str r2, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D97238 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r0, _08D97234 @ =0x06010000
	str r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #5
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x20]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x5c]
	adds r1, r4, #0
	ldr r2, _08D97230 @ =0x05000011
	bl sub_08DA048C
	ldr r2, _08D97234 @ =0x06010000
	str r2, [r4]
	b _08D9723C
	.align 2, 0
_08D97210: .4byte 0x000002AE
_08D97214: .4byte 0x000002B1
_08D97218: .4byte 0x000002B2
_08D9721C: .4byte 0x000002B3
_08D97220: .4byte 0x000002B6
_08D97224: .4byte 0x040000D4
_08D97228: .4byte gUnk_03001BF0
_08D9722C: .4byte 0x80000010
_08D97230: .4byte 0x05000011
_08D97234: .4byte 0x06010000
_08D97238: .4byte 0x0000FFEF
_08D9723C:
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D9737C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _08D97380 @ =0x05000011
	bl sub_08DA048C
	ldr r0, _08D97384 @ =0x06010000
	str r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0xf
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xf
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x28]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x64]
	adds r1, r4, #0
	ldr r2, _08D97380 @ =0x05000011
	bl sub_08DA048C
	ldr r2, _08D97384 @ =0x06010000
	str r2, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x16]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r0, [r4, #0x34]
	ldr r2, _08D9737C @ =0x0000FFEF
	ands r2, r0
	strh r2, [r4, #0x34]
	ldr r0, [sp, #0x38]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9737C: .4byte 0x0000FFEF
_08D97380: .4byte 0x05000011
_08D97384: .4byte 0x06010000

	thumb_func_start sub_08D97388
sub_08D97388: @ 0x08D97388
	ldr r0, _08D97394 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D97398 @ =gUnk_02002801
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08D97394: .4byte gUnk_03002560
_08D97398: .4byte gUnk_02002801

	thumb_func_start sub_08D9739C
sub_08D9739C: @ 0x08D9739C
	push {r4, r5, r6, lr}
	ldr r6, _08D973B8 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D973BC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D973C0
	.align 2, 0
_08D973B8: .4byte gUnk_03002560
_08D973BC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D973C0:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D973D8
	movs r1, #0
	b _08D973DC
_08D973D8:
	ldr r0, _08D973FC @ =gUnk_03000470
	ldrh r1, [r0, #0x10]
_08D973DC:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08D97454
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D97400
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _08D974F0
	.align 2, 0
_08D973FC: .4byte gUnk_03000470
_08D97400:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08D97418
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08D974F0
_08D97418:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08D97438
	ldr r1, _08D97430 @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _08D97434 @ =gUnk_020030F9
	b _08D974EE
	.align 2, 0
_08D97430: .4byte 0x000002AE
_08D97434: .4byte gUnk_020030F9
_08D97438:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08D974F0
	ldr r1, _08D9744C @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08D97450 @ =gUnk_02002E09
	b _08D974EE
	.align 2, 0
_08D9744C: .4byte 0x000002AE
_08D97450: .4byte gUnk_02002E09
_08D97454:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08D974BC
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08D97498
	ldr r1, _08D97478 @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D97480
	ldr r0, _08D9747C @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _08D97496
	.align 2, 0
_08D97478: .4byte 0x000002AD
_08D9747C: .4byte 0x000002B2
_08D97480:
	cmp r0, #1
	bne _08D97490
	ldr r0, _08D9748C @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _08D97496
	.align 2, 0
_08D9748C: .4byte 0x000002B2
_08D97490:
	ldr r0, _08D974B0 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_08D97496:
	strb r0, [r1]
_08D97498:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D974B4
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _08D974B6
	.align 2, 0
_08D974B0: .4byte 0x000002B2
_08D974B4:
	movs r0, #1
_08D974B6:
	orrs r0, r1
	strb r0, [r2]
	b _08D974F0
_08D974BC:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08D974DC
	ldr r1, _08D974D4 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08D974D8 @ =gUnk_02002A49
	b _08D974EE
	.align 2, 0
_08D974D4: .4byte 0x000002AE
_08D974D8: .4byte gUnk_02002A49
_08D974DC:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08D974F0
	ldr r1, _08D97530 @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _08D97534 @ =gUnk_02002C29
_08D974EE:
	str r0, [r1, #8]
_08D974F0:
	adds r0, r4, #0
	bl sub_08D9754C
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D97546
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D97538
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D96668
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D96668
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D96668
	b _08D97546
	.align 2, 0
_08D97530: .4byte 0x000002AE
_08D97534: .4byte gUnk_02002C29
_08D97538:
	adds r0, r4, #4
	bl sub_08D96668
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08D96668
_08D97546:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9754C
sub_08D9754C: @ 0x08D9754C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08D97584 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08D975D2
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _08D97588 @ =gUnk_0200C2C4
	ldr r6, _08D9758C @ =gUnk_03001BF0
	ldr r5, _08D97590 @ =gUnk_030013D0
	cmp r0, #0
	beq _08D97598
	ldr r2, _08D97594 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _08D975A0
	.align 2, 0
_08D97584: .4byte 0x000002B3
_08D97588: .4byte gUnk_0200C2C4
_08D9758C: .4byte gUnk_03001BF0
_08D97590: .4byte gUnk_030013D0
_08D97594: .4byte 0x000002B2
_08D97598:
	ldr r2, _08D975D8 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_08D975A0:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _08D975DC @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08D975E0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_08D975D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D975D8: .4byte 0x000002B2
_08D975DC: .4byte 0x040000D4
_08D975E0: .4byte 0x80000010

	thumb_func_start sub_08D975E4
sub_08D975E4: @ 0x08D975E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08D97608 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9760C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D97610
	.align 2, 0
_08D97608: .4byte gUnk_03002560
_08D9760C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D97610:
	adds r0, r1, r0
	adds r5, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	ldrh r3, [r5, #0x18]
	movs r4, #0x23
	adds r4, r4, r5
	mov sl, r4
	adds r6, r5, #0
	adds r6, #0x5c
	adds r4, r5, #0
	adds r4, #0x67
	str r4, [sp]
	adds r7, r5, #0
	adds r7, #0xb4
	movs r4, #0xb8
	adds r4, r4, r5
	mov ip, r4
	movs r4, #0xa0
	adds r4, r4, r5
	mov r8, r4
	adds r4, r5, #0
	adds r4, #0xab
	str r4, [sp, #4]
	movs r4, #0xe4
	adds r4, r4, r5
	mov sb, r4
	adds r4, r5, #0
	adds r4, #0xef
	str r4, [sp, #8]
	cmp r1, #0
	beq _08D976BC
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08D976B4 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _08D976B8 @ =0x000002B1
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	subs r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	movs r4, #0xac
	lsls r4, r4, #2
	b _08D97712
	.align 2, 0
_08D976B4: .4byte 0x0000F83F
_08D976B8: .4byte 0x000002B1
_08D976BC:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08D97744 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	ldr r4, _08D97748 @ =0x000002B1
_08D97712:
	adds r1, r5, r4
	ldrb r0, [r1]
	ldr r4, [sp, #4]
	strb r0, [r4]
	mov r4, sb
	ldrh r0, [r4]
	ands r2, r0
	orrs r2, r3
	strh r2, [r4]
	ldrb r0, [r1]
	ldr r1, [sp, #8]
	strb r0, [r1]
	movs r4, #0xab
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D97750
	ldr r0, _08D9774C @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _08D97756
	.align 2, 0
_08D97744: .4byte 0x0000F83F
_08D97748: .4byte 0x000002B1
_08D9774C: .4byte 0x000002B2
_08D97750:
	ldr r4, _08D977B4 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_08D97756:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08D9754C
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D9777C
	adds r0, r5, #4
	bl sub_08D96668
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08D96668
_08D9777C:
	ldr r0, _08D977B8 @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D977A2
	ldr r0, _08D977BC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D977C0 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_08D977A2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D977B4: .4byte 0x000002B2
_08D977B8: .4byte 0x000002AE
_08D977BC: .4byte gUnk_03002560
_08D977C0: .4byte gUnk_02002801

	thumb_func_start sub_08D977C4
sub_08D977C4: @ 0x08D977C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D977E4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D977E8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D977EC
	.align 2, 0
_08D977E4: .4byte gUnk_03002560
_08D977E8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D977EC:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x30]
	adds r6, r4, #0
	adds r6, #0x23
	movs r2, #0x67
	adds r2, r2, r4
	mov sb, r2
	adds r2, r4, #0
	adds r2, #0xb4
	adds r3, r4, #0
	adds r3, #0xb8
	movs r7, #0xab
	adds r7, r7, r4
	mov ip, r7
	movs r7, #0xef
	adds r7, r7, r4
	mov r8, r7
	cmp r1, #0
	beq _08D97858
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _08D97854 @ =0x000002B1
	adds r1, r4, r0
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	b _08D9788A
	.align 2, 0
_08D97854: .4byte 0x000002B1
_08D97858:
	subs r0, #8
	str r0, [r4, #0x2c]
	subs r0, r5, #4
	str r0, [r4, #0x30]
	movs r7, #0xac
	lsls r7, r7, #2
	adds r1, r4, r7
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #8
	str r0, [r2]
	ldr r0, [r3]
	adds r0, #4
	str r0, [r3]
	ldr r2, _08D978A4 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_08D9788A:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D978AC
	ldr r2, _08D978A8 @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _08D978B2
	.align 2, 0
_08D978A4: .4byte 0x000002B1
_08D978A8: .4byte 0x000002B2
_08D978AC:
	ldr r3, _08D97934 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_08D978B2:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08D9754C
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D978D8
	adds r0, r4, #4
	bl sub_08D96668
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08D96668
_08D978D8:
	ldr r0, _08D97938 @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D97994
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _08D9793C @ =gUnk_03002560
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _08D97940 @ =gUnk_02002801
	mov r8, r0
	cmp r1, #0
	beq _08D97948
	ldr r1, _08D97944 @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xa0
	lsls r3, r3, #2
	b _08D9796C
	.align 2, 0
_08D97934: .4byte 0x000002B2
_08D97938: .4byte 0x000002AE
_08D9793C: .4byte gUnk_03002560
_08D97940: .4byte gUnk_02002801
_08D97944: .4byte 0x0000F83F
_08D97948:
	ldr r1, _08D979A0 @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xb0
	lsls r3, r3, #2
_08D9796C:
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r6]
	ldrh r0, [r7]
	ands r1, r0
	orrs r1, r2
	strh r1, [r7]
	mov r7, ip
	ldr r0, [r7]
	mov r1, r8
	str r1, [r0, #8]
	movs r3, #0xab
	lsls r3, r3, #2
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r2]
_08D97994:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D979A0: .4byte 0x0000F83F

	thumb_func_start sub_08D979A4
sub_08D979A4: @ 0x08D979A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D979CC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D979D0 @ =gUnk_0200C6C0
	cmp r0, #0
	beq _08D979D4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D979D8
	.align 2, 0
_08D979CC: .4byte gUnk_03002560
_08D979D0: .4byte gUnk_0200C6C0
_08D979D4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D979D8:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08D97BEC @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, r2
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r0, _08D97BF0 @ =0x0000F83F
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08D97BF4 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _08D97BF8 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D97BF0 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	subs r1, #8
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	subs r1, #4
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D97BF0 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0xac
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D97BF0 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r2, sb
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r3, r8
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D97BF0 @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r3, _08D97BF0 @ =0x0000F83F
	ands r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r2, ip
	ldrb r1, [r2]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _08D97C00
	ldr r3, _08D97BFC @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _08D97C16
	.align 2, 0
_08D97BEC: .4byte 0x000002AD
_08D97BF0: .4byte 0x0000F83F
_08D97BF4: .4byte 0x000002B1
_08D97BF8: .4byte 0x00000133
_08D97BFC: .4byte 0x000002B2
_08D97C00:
	cmp r0, #1
	bne _08D97C10
	ldr r0, _08D97C0C @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _08D97C16
	.align 2, 0
_08D97C0C: .4byte 0x000002B2
_08D97C10:
	ldr r2, _08D97C80 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_08D97C16:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08D9754C
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D97C4C
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08D96668
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08D96668
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08D96668
_08D97C4C:
	ldr r0, _08D97C84 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D97C6E
	ldr r0, _08D97C88 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D97C8C @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08D97C90 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08D97C6E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D97C80: .4byte 0x000002B2
_08D97C84: .4byte 0x000002AE
_08D97C88: .4byte gUnk_03002560
_08D97C8C: .4byte gUnk_02002801
_08D97C90: .4byte 0x000002AD

	thumb_func_start sub_08D97C94
sub_08D97C94: @ 0x08D97C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D97CBC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D97CC0 @ =gUnk_0200C6C0
	cmp r0, #0
	beq _08D97CC4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D97CC8
	.align 2, 0
_08D97CBC: .4byte gUnk_03002560
_08D97CC0: .4byte gUnk_0200C6C0
_08D97CC4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D97CC8:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08D97ED8 @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r6, r0, r2
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r5, _08D97EDC @ =0x0000F83F
	mov ip, r5
	mov r0, ip
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08D97EE0 @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _08D97EE4 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	adds r1, #8
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r3, sb
	ldr r0, [r3]
	subs r0, #0x10
	str r0, [r3]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r5, r8
	ldr r0, [r5]
	subs r0, #8
	str r0, [r5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r5, #0xac
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r5, ip
	ands r5, r1
	strh r5, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08D97EEC
	ldr r2, _08D97EE8 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _08D97F02
	.align 2, 0
_08D97ED8: .4byte 0x000002AD
_08D97EDC: .4byte 0x0000F83F
_08D97EE0: .4byte 0x000002B1
_08D97EE4: .4byte 0x00000133
_08D97EE8: .4byte 0x000002B2
_08D97EEC:
	cmp r0, #1
	bne _08D97EFC
	ldr r3, _08D97EF8 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _08D97F02
	.align 2, 0
_08D97EF8: .4byte 0x000002B2
_08D97EFC:
	ldr r5, _08D97F6C @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_08D97F02:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08D9754C
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D97F38
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08D96668
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08D96668
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08D96668
_08D97F38:
	ldr r0, _08D97F70 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D97F5A
	ldr r0, _08D97F74 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D97F78 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _08D97F7C @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08D97F5A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D97F6C: .4byte 0x000002B2
_08D97F70: .4byte 0x000002AE
_08D97F74: .4byte gUnk_03002560
_08D97F78: .4byte gUnk_02002801
_08D97F7C: .4byte 0x000002AD

	thumb_func_start sub_08D97F80
sub_08D97F80: @ 0x08D97F80
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D97F96
	movs r0, #0
	b _08D97F98
_08D97F96:
	movs r0, #1
_08D97F98:
	pop {r1}
	bx r1

	thumb_func_start sub_08D97F9C
sub_08D97F9C: @ 0x08D97F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _08D98054 @ =gUnk_0300041C
	adds r1, r7, #0
	adds r1, #0xd0
	ldr r2, _08D98058 @ =gUnk_03000428
	movs r3, #0xcc
	adds r3, r3, r7
	mov sb, r3
	movs r5, #0xdc
	adds r5, r5, r7
	mov sl, r5
	movs r3, #0xde
	adds r3, r3, r7
	mov ip, r3
	adds r5, r7, #0
	adds r5, #0xdf
	str r5, [sp, #0x10]
	adds r3, r7, #0
	adds r3, #0xe0
	str r3, [sp, #0x14]
	adds r5, #3
	str r5, [sp, #0x18]
	adds r3, #4
	str r3, [sp, #0x1c]
	adds r5, #4
	str r5, [sp, #0x20]
	adds r3, #3
	str r3, [sp, #0x24]
	adds r5, #2
	str r5, [sp, #0x28]
	mov r3, r8
	lsls r3, r3, #1
	str r3, [sp, #0x2c]
	mov r5, r8
	lsls r5, r5, #3
	str r5, [sp, #0x30]
	mov r3, sp
	adds r3, #4
	str r3, [sp, #0x34]
	adds r5, r7, #0
	adds r5, #0x44
	str r5, [sp, #0x38]
	adds r3, r7, #0
	adds r3, #0x58
	str r3, [sp, #0x3c]
	adds r5, #0xc
	str r5, [sp, #0x40]
	adds r3, #6
	str r3, [sp, #0x44]
	adds r5, #0xa
	str r5, [sp, #0x48]
	adds r3, #1
	str r3, [sp, #0x4c]
	adds r5, #6
	str r5, [sp, #0x50]
	adds r3, #4
	str r3, [sp, #0x54]
	subs r5, #0xc
	str r5, [sp, #0x58]
	subs r3, #0xd
	str r3, [sp, #0x5c]
	adds r5, #0x20
	str r5, [sp, #0x60]
	adds r3, #0x20
	str r3, [sp, #0x64]
	adds r5, #4
	str r5, [sp, #0x68]
	adds r3, #4
	str r3, [sp, #0x6c]
	adds r5, #8
	str r5, [sp, #0x70]
	adds r3, #0xa
	str r3, [sp, #0x74]
	mov r5, sp
	adds r5, #8
	str r5, [sp, #0x78]
	adds r3, #4
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08D9805C
	movs r0, #0
	b _08D9805E
	.align 2, 0
_08D98054: .4byte gUnk_0300041C
_08D98058: .4byte gUnk_03000428
_08D9805C:
	movs r0, #1
_08D9805E:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r8, r2
	bne _08D98072
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08D98072:
	adds r1, r7, #0
	adds r1, #0xd0
	ldrh r0, [r1]
	movs r5, #0x10
	movs r6, #0
	movs r4, #0
	orrs r0, r5
	strh r0, [r1]
	mov r0, sb
	str r4, [r0]
	mov r1, sl
	strh r4, [r1]
	mov sb, ip
	mov r2, sb
	strb r6, [r2]
	ldr r0, [sp, #0x10]
	strb r6, [r0]
	ldr r1, [sp, #0x14]
	strh r4, [r1]
	ldr r2, [sp, #0x18]
	strb r6, [r2]
	ldr r0, [sp, #0x1c]
	strh r4, [r0]
	ldr r1, [sp, #0x20]
	strb r6, [r1]
	ldr r2, [sp, #0x24]
	strb r6, [r2]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	strb r6, [r0]
	str r4, [sp]
	ldr r2, _08D98268 @ =0x05000011
	mov r0, sp
	adds r1, r7, #0
	str r3, [sp, #0x7c]
	bl sub_08DA048C
	ldr r0, _08D9826C @ =0x06010000
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _08D98270 @ =gUnk_0200D77C
	ldrh r0, [r1, #0x18]
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	mov r1, r8
	strb r1, [r7, #0x1f]
	ldr r1, _08D98274 @ =gUnk_0200D80C
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x80]
	ldr r5, [sp, #0x30]
	mov sl, r5
	adds r0, r5, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	str r2, [r7, #0x28]
	str r1, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r3, [sp, #0x7c]
	mov r1, r8
	cmp r1, #1
	bhi _08D98126
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
_08D98126:
	mov r2, r8
	cmp r2, #0
	beq _08D98130
	cmp r2, #3
	bne _08D98140
_08D98130:
	ldrh r0, [r7, #0x14]
	ldr r1, _08D98278 @ =0x0000F83F
	ands r1, r0
	movs r5, #0x98
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r7, #0x14]
_08D98140:
	ldr r0, [r7, #8]
	ldr r1, _08D9827C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, _08D98268 @ =0x05000011
	str r3, [sp, #0x7c]
	bl sub_08DA048C
	ldr r0, _08D9826C @ =0x06010000
	str r0, [r7, #0x44]
	movs r2, #0xf0
	lsls r2, r2, #2
	ldr r1, [sp, #0x3c]
	strh r2, [r1]
	ldr r1, _08D98280 @ =gUnk_0200D82C
	mov r5, sb
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x24]
	ldr r2, [sp, #0x40]
	strh r0, [r2]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r5, [sp, #0x44]
	strb r0, [r5]
	ldr r0, [sp, #0x48]
	strh r4, [r0]
	movs r0, #0xff
	ldr r1, [sp, #0x4c]
	strb r0, [r1]
	movs r6, #0x10
	ldr r2, [sp, #0x50]
	strb r6, [r2]
	mov r0, r8
	ldr r5, [sp, #0x54]
	strb r0, [r5]
	ldr r1, _08D98284 @ =gUnk_0200D904
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	ldr r5, [sp, #0x58]
	strh r0, [r5]
	ldr r5, [sp, #0x80]
	adds r5, #1
	lsls r5, r5, #2
	str r5, [sp, #0x80]
	adds r1, r5, r1
	ldr r1, [r1]
	asrs r0, r1, #2
	ldr r5, [sp, #0x5c]
	strh r0, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [r7, #0x4c]
	str r2, [r7, #0x6c]
	str r1, [r7, #0x70]
	ldr r1, [sp, #0x60]
	strh r4, [r1]
	ldr r2, [sp, #0x64]
	strh r4, [r2]
	movs r5, #0x10
	mov r8, r5
	ldr r0, [sp, #0x68]
	strh r6, [r0]
	ldr r1, [sp, #0x6c]
	strh r4, [r1]
	str r4, [r7, #0x7c]
	ldr r2, [sp, #0x70]
	str r4, [r2]
	ldr r5, [sp, #0x74]
	str r4, [r5]
	str r4, [sp, #8]
	ldr r0, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	adds r1, r3, #0
	ldr r2, _08D98268 @ =0x05000011
	bl sub_08DA048C
	ldr r3, [sp, #0x7c]
	ldr r0, _08D9826C @ =0x06010000
	str r0, [r3]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	ldr r1, _08D98288 @ =gUnk_0200D924
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	strh r0, [r3, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x12]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r5, r8
	strb r5, [r3, #0x1c]
	movs r0, #5
	strb r0, [r3, #0x1f]
	ldr r1, _08D9828C @ =gUnk_0200D984
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x80]
	adds r5, r0, r1
	ldr r1, [r5]
	asrs r0, r1, #2
	strh r0, [r3, #0x12]
	mov r5, sb
	str r5, [r3, #8]
	str r2, [r3, #0x28]
	str r1, [r3, #0x2c]
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x32]
	strh r6, [r3, #0x34]
	strh r4, [r3, #0x36]
	str r4, [r3, #0x38]
	str r4, [r3, #0x3c]
	str r4, [r3, #0x40]
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D98268: .4byte 0x05000011
_08D9826C: .4byte 0x06010000
_08D98270: .4byte gUnk_0200D77C
_08D98274: .4byte gUnk_0200D80C
_08D98278: .4byte 0x0000F83F
_08D9827C: .4byte 0xFFFFCFFF
_08D98280: .4byte gUnk_0200D82C
_08D98284: .4byte gUnk_0200D904
_08D98288: .4byte gUnk_0200D924
_08D9828C: .4byte gUnk_0200D984

	thumb_func_start sub_08D98290
sub_08D98290: @ 0x08D98290
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xd0
	ldrh r0, [r3]
	ldr r2, _08D982F8 @ =0x0000FEFF
	ands r2, r0
	movs r7, #0
	movs r6, #0
	ldr r0, _08D982FC @ =0x0000FDFF
	ands r2, r0
	strh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D982BE
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08D982BE:
	ldrh r1, [r3]
	ldr r0, _08D98300 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
	adds r5, r4, #0
	adds r5, #0xcc
	ldr r0, [r5]
	cmp r0, #0
	beq _08D982D6
	bl sub_08D9E37C
	str r6, [r5]
_08D982D6:
	adds r0, r4, #0
	adds r0, #0xdc
	strh r6, [r0]
	adds r0, #3
	strb r7, [r0]
	adds r0, #1
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D982F8: .4byte 0x0000FEFF
_08D982FC: .4byte 0x0000FDFF
_08D98300: .4byte 0x0000FFDF

	thumb_func_start sub_08D98304
sub_08D98304: @ 0x08D98304
	ldr r1, _08D98320 @ =0x040000D4
	ldr r0, _08D98324 @ =gUnk_0200DC98
	str r0, [r1]
	ldr r0, _08D98328 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08D9832C @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08D98330 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08D98320: .4byte 0x040000D4
_08D98324: .4byte gUnk_0200DC98
_08D98328: .4byte gUnk_03002730
_08D9832C: .4byte 0x80000100
_08D98330: .4byte gUnk_030013D0

	thumb_func_start sub_08D98334
sub_08D98334: @ 0x08D98334
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08D98398 @ =gUnk_03005868
	movs r2, #0
	str r2, [r0]
	ldr r1, _08D9839C @ =gUnk_03002620
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08D983A0 @ =gUnk_03001E40
	ldr r0, _08D983A4 @ =0x00001C02
	strh r0, [r1]
	adds r0, #0xff
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08D983A8 @ =gUnk_03001478
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r1, _08D983AC @ =gUnk_03002610
	movs r0, #8
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _08D983B0 @ =gUnk_02003885
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08D983B4 @ =gUnk_02004F35
	str r3, [sp]
	movs r3, #0
	bl sub_08D9E260
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08D983B8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D983BC
	.align 2, 0
_08D98398: .4byte gUnk_03005868
_08D9839C: .4byte gUnk_03002620
_08D983A0: .4byte gUnk_03001E40
_08D983A4: .4byte 0x00001C02
_08D983A8: .4byte gUnk_03001478
_08D983AC: .4byte gUnk_03002610
_08D983B0: .4byte gUnk_02003885
_08D983B4: .4byte gUnk_02004F35
_08D983B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D983BC:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08D98404 @ =0x01000210
	adds r1, r5, #0
	bl sub_08DA048C
	bl sub_08D9B038
	str r0, [r5, #0xc]
	ldr r0, _08D98408 @ =gUnk_03000404
	ldrb r1, [r0]
	ldr r2, _08D9840C @ =0x0000041C
	adds r0, r5, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08D98410 @ =gUnk_03000428
	ldrb r1, [r0]
	ldr r3, _08D98414 @ =0x0000041D
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, _08D98418 @ =0x0000040E
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _08D9841C @ =0x00000416
	adds r0, r5, r2
	strb r4, [r0]
	subs r3, #6
	adds r0, r5, r3
	strb r4, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D98404: .4byte 0x01000210
_08D98408: .4byte gUnk_03000404
_08D9840C: .4byte 0x0000041C
_08D98410: .4byte gUnk_03000428
_08D98414: .4byte 0x0000041D
_08D98418: .4byte 0x0000040E
_08D9841C: .4byte 0x00000416

	thumb_func_start sub_08D98420
sub_08D98420: @ 0x08D98420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x150
	ldr r4, _08D98458 @ =gUnk_03002560
	ldr r0, [r4]
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r0, _08D9845C @ =gUnk_02003C15
	mov sl, r0
	add r7, sp, #0x28
	add r3, sp, #0x50
	add r6, sp, #0x78
	add r5, sp, #0xa0
	add r0, sp, #0xc8
	mov sb, r0
	add r0, sp, #0xf0
	mov r8, r0
	cmp r2, #0
	beq _08D98460
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D98464
	.align 2, 0
_08D98458: .4byte gUnk_03002560
_08D9845C: .4byte gUnk_02003C15
_08D98460:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D98464:
	adds r1, r1, r0
	str r1, [sp, #0x148]
	ldr r1, [sp, #0x148]
	str r1, [sp, #0x144]
	ldr r0, [r4]
	mov r2, sl
	str r2, [r0, #8]
	ldr r0, _08D98768 @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r1, #0
	mov sl, r1
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	mov r2, sl
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp, #8]
	str r3, [sp, #0x14c]
	bl sub_08D9EAD4
	ldr r0, _08D98768 @ =0x06010000
	str r0, [sp, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	movs r2, #2
	strh r2, [r7, #0xc]
	movs r0, #7
	strb r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #1
	strb r0, [r7, #0x1f]
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl sub_08D9EAD4
	ldr r1, _08D98768 @ =0x06010000
	str r1, [sp, #0x50]
	ldr r3, [sp, #0x14c]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r3, #0x14]
	movs r0, #2
	strh r0, [r3, #0xc]
	movs r1, #6
	strb r1, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #2
	strb r1, [r3, #0x1f]
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl sub_08D9EAD4
	ldr r2, _08D98768 @ =0x06010000
	str r2, [sp, #0x78]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	movs r1, #2
	strh r1, [r6, #0xc]
	movs r0, #8
	strb r0, [r6, #0x1a]
	mov r2, sl
	strh r2, [r6, #0x16]
	subs r0, #9
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #3
	strb r1, [r6, #0x1f]
	strh r2, [r6, #0x10]
	strh r2, [r6, #0x12]
	str r4, [r6, #8]
	adds r0, r6, #0
	bl sub_08D9EAD4
	ldr r2, _08D98768 @ =0x06010000
	str r2, [r5]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	movs r1, #2
	strh r1, [r5, #0xc]
	movs r0, #9
	strb r0, [r5, #0x1a]
	mov r2, sl
	strh r2, [r5, #0x16]
	subs r0, #0xa
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r0, #4
	strb r0, [r5, #0x1f]
	strh r2, [r5, #0x10]
	strh r2, [r5, #0x12]
	str r4, [r5, #8]
	adds r0, r5, #0
	bl sub_08D9EAD4
	ldr r1, _08D98768 @ =0x06010000
	mov r2, sb
	str r1, [r2]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sl
	strh r1, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r7, #5
	strb r7, [r2, #0x1f]
	mov r0, sl
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, sb
	bl sub_08D9EAD4
	ldr r1, _08D98768 @ =0x06010000
	mov r2, r8
	str r1, [r2]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sl
	strh r1, [r2, #0xc]
	movs r0, #2
	strb r0, [r2, #0x1a]
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r0, #6
	strb r0, [r2, #0x1f]
	mov r1, sl
	strh r1, [r2, #0x10]
	strh r1, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, r8
	bl sub_08D9EAD4
	add r0, sp, #0x118
	ldr r2, _08D98768 @ =0x06010000
	str r2, [r0]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #7
	strb r1, [r0, #0x1f]
	mov r2, sl
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	str r4, [r0, #8]
	bl sub_08D9EAD4
	ldr r0, _08D9876C @ =gUnk_0200DE98
	ldr r1, _08D98770 @ =0x0600E000
	bl sub_08DA04A0
	ldr r0, _08D98774 @ =gUnk_0200E304
	ldr r1, _08D98778 @ =0x0600E800
	bl sub_08DA04A0
	ldr r0, _08D9877C @ =gUnk_0200E864
	ldr r1, _08D98780 @ =0x0600F000
	bl sub_08DA04A0
	mov r0, sl
	ldr r1, [sp, #0x144]
	str r0, [r1]
	adds r0, r1, #0
	adds r0, #0x10
	movs r1, #0
	bl sub_08D97F9C
	ldr r0, [sp, #0x144]
	adds r0, #0xfc
	movs r1, #1
	bl sub_08D97F9C
	ldr r2, [sp, #0x144]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #2
	bl sub_08D97F9C
	ldr r2, [sp, #0x144]
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #3
	bl sub_08D97F9C
	add r0, sp, #0x140
	mov r2, sl
	str r2, [r0]
	ldr r1, [sp, #0x144]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r4, r1, r2
	ldr r2, _08D98784 @ =0x05000011
	adds r1, r4, #0
	bl sub_08DA048C
	ldr r0, _08D98768 @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r0, _08D98788 @ =gUnk_0200D9DC
	ldrh r1, [r0, #0x28]
	strh r1, [r4, #0xc]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	mov r1, sl
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r1, [r4, #0x36]
	mov r1, sl
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	ldr r0, [sp, #0x144]
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r0, [r2]
	ldr r1, _08D9878C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	ldr r2, [sp, #0x144]
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, [sp, #0x144]
	ldr r2, _08D98790 @ =0x00000409
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _08D98794 @ =0x0000040A
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, [sp, #0x144]
	ldr r2, _08D98798 @ =0x0000040B
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _08D9879C @ =0x0000041A
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, [sp, #0x144]
	subs r1, #2
	adds r4, r0, r1
	movs r2, #0x10
	strh r2, [r4]
	subs r1, #2
	adds r5, r0, r1
	ldrh r1, [r5]
	ldr r0, _08D987A0 @ =0x0000050A
	cmp r1, r0
	bne _08D98738
	movs r0, #0x8f
	lsls r0, r0, #2
	bl sub_08D9BEC8
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, [sp, #0x144]
	ldr r2, _08D987A4 @ =0x0000041C
	adds r0, r1, r2
	movs r1, #3
	strb r1, [r0]
_08D98738:
	mov r2, sl
	strb r2, [r5]
	ldr r1, [sp, #0x148]
	ldr r2, _08D987A8 @ =0x00000417
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x148]
	ldr r1, _08D987AC @ =0x0000041E
	adds r0, r2, r1
	mov r2, sl
	strh r2, [r0]
	movs r0, #0x23
	bl sub_08D9BEC8
	add sp, #0x150
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D98768: .4byte 0x06010000
_08D9876C: .4byte gUnk_0200DE98
_08D98770: .4byte 0x0600E000
_08D98774: .4byte gUnk_0200E304
_08D98778: .4byte 0x0600E800
_08D9877C: .4byte gUnk_0200E864
_08D98780: .4byte 0x0600F000
_08D98784: .4byte 0x05000011
_08D98788: .4byte gUnk_0200D9DC
_08D9878C: .4byte 0xFFFFCFFF
_08D98790: .4byte 0x00000409
_08D98794: .4byte 0x0000040A
_08D98798: .4byte 0x0000040B
_08D9879C: .4byte 0x0000041A
_08D987A0: .4byte 0x0000050A
_08D987A4: .4byte 0x0000041C
_08D987A8: .4byte 0x00000417
_08D987AC: .4byte 0x0000041E

	thumb_func_start sub_08D987B0
sub_08D987B0: @ 0x08D987B0
	push {r4, r5, lr}
	ldr r3, _08D987CC @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D987D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D987D4
	.align 2, 0
_08D987CC: .4byte gUnk_03002560
_08D987D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D987D4:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08D987F4 @ =0x0000040E
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08D987FC
	cmp r0, #0xb3
	ble _08D98872
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _08D987F8 @ =gUnk_02003D11
	str r0, [r1, #8]
	b _08D98872
	.align 2, 0
_08D987F4: .4byte 0x0000040E
_08D987F8: .4byte gUnk_02003D11
_08D987FC:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D9687C
	ldr r2, _08D98894 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D98898 @ =gUnk_0200E864
	ldr r1, _08D9889C @ =0x0600F000
	bl sub_08DA04A0
	bl sub_08D9A824
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D98872
	ldr r0, _08D988A0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08D988A4 @ =0x0000041D
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D9A4A8
	movs r5, #0
_08D9884A:
	movs r0, #0xec
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r4, r2
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D98868
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D9A6A8
_08D98868:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D9884A
_08D98872:
	ldr r2, _08D988A8 @ =0x0000040E
	adds r0, r4, r2
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r4, r3
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D98894: .4byte gUnk_03002620
_08D98898: .4byte gUnk_0200E864
_08D9889C: .4byte 0x0600F000
_08D988A0: .4byte 0x0000FFEF
_08D988A4: .4byte 0x0000041D
_08D988A8: .4byte 0x0000040E

	thumb_func_start sub_08D988AC
sub_08D988AC: @ 0x08D988AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08D988D0 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D988D4 @ =gUnk_02003E59
	cmp r0, #0
	beq _08D988D8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D988DC
	.align 2, 0
_08D988D0: .4byte gUnk_03002560
_08D988D4: .4byte gUnk_02003E59
_08D988D8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D988DC:
	adds r6, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r2, r0, #0
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r3, _08D989E8 @ =0x0000040C
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #2
	adds r1, r6, r3
	strh r0, [r1]
	strh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08D98920
	strh r5, [r4]
_08D98920:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08D98930
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08D98930:
	adds r7, r6, #0
	adds r7, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08D98290
	movs r0, #0xfc
	adds r0, r0, r6
	mov r8, r0
	movs r1, #1
	bl sub_08D98290
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	movs r1, #2
	bl sub_08D98290
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r3, r3, r6
	mov sl, r3
	mov r0, sl
	movs r1, #3
	bl sub_08D98290
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	ldr r3, _08D989EC @ =0x0000EFFF
	ands r3, r0
	strh r3, [r2]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08D9898C
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D9898C:
	adds r0, r6, #0
	bl sub_08D99B88
	adds r0, r6, #0
	bl sub_08D99C3C
	ldr r1, _08D989F0 @ =0x0000041C
	adds r5, r6, r1
	ldrb r1, [r5]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r4, r6, r3
	ldrh r2, [r4]
	adds r0, r7, #0
	bl sub_08D99C90
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, r8
	bl sub_08D99C90
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sb
	bl sub_08D99C90
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sl
	bl sub_08D99C90
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08D96668
	adds r0, r6, #0
	bl sub_08D9A158
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D989E8: .4byte 0x0000040C
_08D989EC: .4byte 0x0000EFFF
_08D989F0: .4byte 0x0000041C

	thumb_func_start sub_08D989F4
sub_08D989F4: @ 0x08D989F4
	push {r4, lr}
	ldr r0, _08D98A10 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D98A14
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D98A18
	.align 2, 0
_08D98A10: .4byte gUnk_03002560
_08D98A14:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D98A18:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_08D9B128
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _08D98A3C @ =gUnk_03002560
	cmp r0, #0
	beq _08D98A44
	ldr r1, [r1]
	ldr r0, _08D98A40 @ =gUnk_02003EC9
	b _08D98A48
	.align 2, 0
_08D98A3C: .4byte gUnk_03002560
_08D98A40: .4byte gUnk_02003EC9
_08D98A44:
	ldr r1, [r1]
	ldr r0, _08D98A60 @ =gUnk_020044A9
_08D98A48:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D98A60: .4byte gUnk_020044A9

	thumb_func_start sub_08D98A64
sub_08D98A64: @ 0x08D98A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D98A88 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D98A8C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D98A90
	.align 2, 0
_08D98A88: .4byte gUnk_03002560
_08D98A8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D98A90:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_08D99AEC
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _08D98B9C @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08D98ACA
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_08D9BEC8
	bl sub_08D99CE8
	ldr r0, [r4, #0xc]
	bl sub_08D9B158
_08D98ACA:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D98AF8
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08D98AF8
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_08DA0580
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08D98AF8
	bl sub_08D9A3E0
_08D98AF8:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08D98AFE:
	movs r0, #0xec
	adds r1, r5, #0
	muls r1, r0, r1
	str r1, [sp]
	adds r1, r1, r4
	mov ip, r1
	mov r6, ip
	adds r6, #0xe0
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D98BD2
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08D98BD2
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D98BD2
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _08D98B50
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D98B50:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _08D98BD2
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _08D98B9C @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _08D98BA0 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08D98BA4
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	movs r6, #1
	orrs r0, r6
	strh r0, [r1]
	b _08D98BD2
	.align 2, 0
_08D98B9C: .4byte 0x00000412
_08D98BA0: .4byte 0x0000040D
_08D98BA4:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _08D98C3C @ =gUnk_0200D9A4
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_08D9ABBC
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_08D98BD2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D98AFE
	mov r0, sb
	cmp r0, #0
	beq _08D98BEC
	ldr r2, _08D98C40 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08D98BEC:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D98CC2
	ldr r5, _08D98C44 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08D98CC2
	movs r5, #0
_08D98C10:
	movs r0, #0xec
	muls r0, r5, r0
	adds r2, r4, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D98C4C
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D98C4C
	ldr r6, _08D98C48 @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D98C56
	.align 2, 0
_08D98C3C: .4byte gUnk_0200D9A4
_08D98C40: .4byte 0x0000040D
_08D98C44: .4byte 0x00000414
_08D98C48: .4byte 0x0000040C
_08D98C4C:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D98C56:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D98C10
	movs r5, #0
_08D98C62:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r4, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D98C9E
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D98C9E
	ldr r1, _08D98D88 @ =gUnk_0201EA58
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _08D98D8C @ =0x0000040C
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xef
	strb r1, [r0]
_08D98C9E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D98C62
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D98D90 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D98D94 @ =gUnk_02004205
	str r0, [r1, #8]
_08D98CC2:
	ldr r5, _08D98D98 @ =0x00000412
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r3, r4, r6
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D98D06
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r0, r5
	cmp r1, r0
	blt _08D98D06
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08D98D90 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D98D9C @ =gUnk_020049A5
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
_08D98D06:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98D66
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98D66
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98D66
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98D66
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D98D90 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D98D9C @ =gUnk_020049A5
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
_08D98D66:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D98D88: .4byte gUnk_0201EA58
_08D98D8C: .4byte 0x0000040C
_08D98D90: .4byte gUnk_03002560
_08D98D94: .4byte gUnk_02004205
_08D98D98: .4byte 0x00000412
_08D98D9C: .4byte gUnk_020049A5

	thumb_func_start sub_08D98DA0
sub_08D98DA0: @ 0x08D98DA0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D98DBC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D98DC0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D98DC4
	.align 2, 0
_08D98DBC: .4byte gUnk_03002560
_08D98DC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D98DC4:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r7, #0
_08D98DCA:
	movs r0, #0xec
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, r4, r5
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98E0E
	ldr r6, _08D98F0C @ =0x0000FFFE
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98E0E
	ldr r0, _08D98F10 @ =0x00000239
	bl sub_08D9BEC8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08D99ED0
_08D98E0E:
	movs r0, #0xec
	muls r0, r7, r0
	adds r6, r4, r0
	adds r5, r6, #0
	adds r5, #0xec
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D98E5C
	ldr r0, _08D98F10 @ =0x00000239
	bl sub_08D9BF94
	ldr r0, _08D98F14 @ =0x0000023A
	bl sub_08D9BEC8
	ldrh r0, [r5]
	ldr r2, _08D98F18 @ =0x0000FFEF
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	adds r2, r6, #0
	adds r2, #0x10
	ldr r0, _08D98F1C @ =gUnk_0200D77C
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r2, #0x34
	ldrh r0, [r2]
	ldr r3, _08D98F20 @ =0x0000F7FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
_08D98E5C:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D98EA4
	adds r3, r6, #0
	adds r3, #0x44
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08D98EA4
	ldr r1, _08D98F24 @ =0x0000FFDF
	adds r0, r1, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r5]
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _08D98F1C @ =gUnk_0200D77C
	ldrh r0, [r2, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08D98EA4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D98DCA
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98EF6
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98EF6
	movs r6, #0xb1
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98EF6
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D98EF6
	ldr r0, _08D98F28 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D98F2C @ =gUnk_02004395
	str r0, [r1, #8]
_08D98EF6:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D98F0C: .4byte 0x0000FFFE
_08D98F10: .4byte 0x00000239
_08D98F14: .4byte 0x0000023A
_08D98F18: .4byte 0x0000FFEF
_08D98F1C: .4byte gUnk_0200D77C
_08D98F20: .4byte 0x0000F7FF
_08D98F24: .4byte 0x0000FFDF
_08D98F28: .4byte gUnk_03002560
_08D98F2C: .4byte gUnk_02004395

	thumb_func_start sub_08D98F30
sub_08D98F30: @ 0x08D98F30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08D98F50 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D98F54
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D98F58
	.align 2, 0
_08D98F50: .4byte gUnk_03002560
_08D98F54:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D98F58:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_08D99AEC
	movs r0, #0
	mov r8, r0
_08D98F64:
	movs r0, #0xec
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r6, r7, r0
	adds r5, r6, #0
	adds r5, #0xef
	ldrb r0, [r5]
	cmp r0, #0
	beq _08D98FD0
	adds r4, r6, #0
	adds r4, #0xf7
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08D98FD0
	ldr r0, _08D99030 @ =0x0000023B
	bl sub_08D9BEC8
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	adds r3, r6, #0
	adds r3, #0xee
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08D98FB0
	movs r0, #8
	strb r0, [r3]
_08D98FB0:
	adds r1, r6, #0
	adds r1, #0x54
	ldr r2, _08D99034 @ =gUnk_0200D82C
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0x24]
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_08D98FD0:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08D98F64
	adds r0, r7, #0
	adds r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D99016
	ldr r1, _08D99038 @ =0x000001DB
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D99016
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D99016
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D99016
	ldr r0, _08D9903C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D99040 @ =gUnk_020049A5
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
_08D99016:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08D96668
	adds r0, r7, #0
	bl sub_08D9A158
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D99030: .4byte 0x0000023B
_08D99034: .4byte gUnk_0200D82C
_08D99038: .4byte 0x000001DB
_08D9903C: .4byte gUnk_03002560
_08D99040: .4byte gUnk_020049A5

	thumb_func_start sub_08D99044
sub_08D99044: @ 0x08D99044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D99068 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9906C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99070
	.align 2, 0
_08D99068: .4byte gUnk_03002560
_08D9906C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99070:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_08D99AEC
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _08D9917C @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08D990AA
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_08D9BEC8
	bl sub_08D99CE8
	ldr r0, [r4, #0xc]
	bl sub_08D9B158
_08D990AA:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D990D8
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08D990D8
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_08DA0580
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08D990D8
	bl sub_08D9A3E0
_08D990D8:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08D990DE:
	movs r0, #0xec
	adds r1, r5, #0
	muls r1, r0, r1
	str r1, [sp]
	adds r1, r1, r4
	mov ip, r1
	mov r6, ip
	adds r6, #0xe0
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D991B2
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08D991B2
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D991B2
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _08D99130
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D99130:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _08D991B2
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _08D9917C @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _08D99180 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08D99184
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	movs r6, #1
	orrs r0, r6
	strh r0, [r1]
	b _08D991B2
	.align 2, 0
_08D9917C: .4byte 0x00000412
_08D99180: .4byte 0x0000040D
_08D99184:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _08D9921C @ =gUnk_0200D9A4
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_08D9ABBC
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_08D991B2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D990DE
	mov r0, sb
	cmp r0, #0
	beq _08D991CC
	ldr r2, _08D99220 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08D991CC:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D992A2
	ldr r5, _08D99224 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08D992A2
	movs r5, #0
_08D991F0:
	movs r0, #0xec
	muls r0, r5, r0
	adds r2, r4, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9922C
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D9922C
	ldr r6, _08D99228 @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D99236
	.align 2, 0
_08D9921C: .4byte gUnk_0200D9A4
_08D99220: .4byte 0x0000040D
_08D99224: .4byte 0x00000414
_08D99228: .4byte 0x0000040C
_08D9922C:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D99236:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D991F0
	movs r5, #0
_08D99242:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r4, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9927E
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D9927E
	ldr r1, _08D99368 @ =gUnk_0201EA58
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _08D9936C @ =0x0000040C
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xef
	strb r1, [r0]
_08D9927E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D99242
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D99370 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D99374 @ =gUnk_020047E5
	str r0, [r1, #8]
_08D992A2:
	ldr r5, _08D99378 @ =0x00000412
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r3, r4, r6
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D992E6
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r0, r5
	cmp r1, r0
	blt _08D992E6
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08D99370 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D9937C @ =gUnk_020049A5
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
_08D992E6:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D99346
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D99346
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D99346
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D99346
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D99370 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D9937C @ =gUnk_020049A5
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
_08D99346:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D99368: .4byte gUnk_0201EA58
_08D9936C: .4byte 0x0000040C
_08D99370: .4byte gUnk_03002560
_08D99374: .4byte gUnk_020047E5
_08D99378: .4byte 0x00000412
_08D9937C: .4byte gUnk_020049A5

	thumb_func_start sub_08D99380
sub_08D99380: @ 0x08D99380
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D993A0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D993A4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D993A8
	.align 2, 0
_08D993A0: .4byte gUnk_03002560
_08D993A4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D993A8:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
_08D993B2:
	movs r0, #0xec
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, r4, r5
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D993F6
	ldr r6, _08D994D4 @ =0x0000FFFE
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08D993F6
	ldr r0, _08D994D8 @ =0x00000239
	bl sub_08D9BEC8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #1
	bl sub_08D99ED0
_08D993F6:
	movs r0, #0xec
	adds r2, r7, #0
	muls r2, r0, r2
	mov r8, r2
	adds r6, r4, r2
	adds r5, r6, #0
	adds r5, #0xec
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D9943A
	ldr r2, _08D994DC @ =0x0000FFEF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	ldr r0, _08D994D8 @ =0x00000239
	bl sub_08D9BF94
	ldr r0, _08D994E0 @ =0x0000023A
	bl sub_08D9BEC8
	adds r2, r6, #0
	adds r2, #0x10
	ldr r0, _08D994E4 @ =gUnk_0200D77C
	ldrh r1, [r0, #0x24]
	strh r1, [r2, #0xc]
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08D9943A:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D99464
	ldr r6, _08D994E8 @ =0x0000FFDF
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r5]
	mov r0, r8
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D99DB0
	mov r0, sb
	cmp r0, #0
	bne _08D99464
	movs r1, #1
	mov sb, r1
	bl sub_08D9A2B0
_08D99464:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D993B2
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D994B6
	movs r6, #0xec
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D994B6
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D994B6
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D994B6
	ldr r0, _08D994EC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D994F0 @ =gUnk_02004959
	str r0, [r1, #8]
_08D994B6:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D994D4: .4byte 0x0000FFFE
_08D994D8: .4byte 0x00000239
_08D994DC: .4byte 0x0000FFEF
_08D994E0: .4byte 0x0000023A
_08D994E4: .4byte gUnk_0200D77C
_08D994E8: .4byte 0x0000FFDF
_08D994EC: .4byte gUnk_03002560
_08D994F0: .4byte gUnk_02004959

	thumb_func_start sub_08D994F4
sub_08D994F4: @ 0x08D994F4
	push {r4, lr}
	ldr r3, _08D99510 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D99514 @ =gUnk_020049A5
	cmp r0, #0
	beq _08D99518
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9951C
	.align 2, 0
_08D99510: .4byte gUnk_03002560
_08D99514: .4byte gUnk_020049A5
_08D99518:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9951C:
	adds r4, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D99540
sub_08D99540: @ 0x08D99540
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D9955C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99560
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99564
	.align 2, 0
_08D9955C: .4byte gUnk_03002560
_08D99560:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99564:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D96B7C
	cmp r0, #0
	bne _08D99664
	movs r6, #0
_08D99572:
	movs r0, #0xec
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xdc
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08D9958C
	bl sub_08D9E37C
	movs r0, #0
	str r0, [r4]
_08D9958C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D99572
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	ldr r1, _08D995CC @ =gUnk_03002560
	cmp r0, #7
	bhi _08D995C2
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08D995C2
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08D995C2
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bls _08D995D4
_08D995C2:
	ldr r1, [r1]
	ldr r0, _08D995D0 @ =gUnk_02004AF1
	str r0, [r1, #8]
	b _08D99664
	.align 2, 0
_08D995CC: .4byte gUnk_03002560
_08D995D0: .4byte gUnk_02004AF1
_08D995D4:
	ldr r0, _08D9967C @ =0x0000041A
	adds r2, r5, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08D995EA
	movs r0, #7
	strb r0, [r2]
_08D995EA:
	ldr r1, [r1]
	ldr r0, _08D99680 @ =gUnk_02003C15
	str r0, [r1, #8]
	movs r6, #0
	ldr r7, _08D99684 @ =gUnk_0200D77C
_08D995F4:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r3, r2, #0
	adds r3, #0xe0
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08D99628
	ldr r0, _08D99688 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x10
	ldrh r0, [r7, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r7, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r2, #0
	adds r0, #0x2f
	strb r6, [r0]
_08D99628:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08D9965A
	ldr r2, _08D9967C @ =0x0000041A
	adds r0, r5, r2
	strb r1, [r0]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9965A
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D9965A
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
_08D9965A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D995F4
_08D99664:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08D96668
	adds r0, r5, #0
	bl sub_08D9A158
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9967C: .4byte 0x0000041A
_08D99680: .4byte gUnk_02003C15
_08D99684: .4byte gUnk_0200D77C
_08D99688: .4byte 0x0000FBFF

	thumb_func_start sub_08D9968C
sub_08D9968C: @ 0x08D9968C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D996A8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D996AC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D996B0
	.align 2, 0
_08D996A8: .4byte gUnk_03002560
_08D996AC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D996B0:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D96B7C
	cmp r0, #0
	beq _08D996BE
	b _08D99802
_08D996BE:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D9687C
	adds r0, r5, #0
	bl sub_08D9A1A4
	movs r7, #0
_08D996D0:
	movs r0, #0xec
	adds r1, r7, #0
	muls r1, r0, r1
	mov ip, r1
	adds r4, r1, r5
	adds r1, r4, #0
	adds r1, #0x98
	ldr r2, _08D99744 @ =gUnk_0200D924
	adds r3, r4, #0
	adds r3, #0xf8
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	adds r6, r2, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r2, r4, #0
	adds r2, #0xe0
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	strb r7, [r0]
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08D99748 @ =gUnk_0200D77C
	adds r7, #1
	cmp r0, #0
	bne _08D9974C
	ldrh r0, [r2, #0x2c]
	strh r0, [r1, #0xc]
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	adds r1, r5, #0
	adds r1, #0x3c
	add r1, ip
	ldr r0, [r1]
	subs r0, #0x30
	str r0, [r1]
	b _08D9978C
	.align 2, 0
_08D99744: .4byte gUnk_0200D924
_08D99748: .4byte gUnk_0200D77C
_08D9974C:
	cmp r0, #3
	bne _08D99764
	ldrh r0, [r2, #0x28]
	strh r0, [r1, #0xc]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	b _08D9978C
_08D99764:
	ldrh r0, [r2, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x1a]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	mov r0, ip
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08D9EAD4
	adds r2, r4, #0
	adds r2, #0x44
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D9978C:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D996D0
	ldr r1, _08D997E0 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D997F4
	adds r0, r1, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #8
	bne _08D997EC
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r3, _08D997E4 @ =0x000002C6
	adds r2, r5, r3
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r2, _08D997E8 @ =0x000003B2
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #8
	bne _08D997EC
	movs r0, #0x22
	bl sub_08D9BEC8
	b _08D997FA
	.align 2, 0
_08D997E0: .4byte 0x0000041D
_08D997E4: .4byte 0x000002C6
_08D997E8: .4byte 0x000003B2
_08D997EC:
	movs r0, #0x21
	bl sub_08D9BEC8
	b _08D997FA
_08D997F4:
	movs r0, #0x24
	bl sub_08D9BEC8
_08D997FA:
	ldr r0, _08D99818 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D9981C @ =gUnk_02004C85
	str r0, [r1, #8]
_08D99802:
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r5, r3
	bl sub_08D96668
	adds r0, r5, #0
	bl sub_08D9A158
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D99818: .4byte gUnk_03002560
_08D9981C: .4byte gUnk_02004C85

	thumb_func_start sub_08D99820
sub_08D99820: @ 0x08D99820
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08D9983C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99840
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99844
	.align 2, 0
_08D9983C: .4byte gUnk_03002560
_08D99840:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99844:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D96B7C
	cmp r0, #0
	beq _08D99852
	b _08D9994A
_08D99852:
	ldr r3, [r5]
	cmp r3, #0
	bne _08D998D8
	ldr r0, _08D9987C @ =gUnk_03000470
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08D9989E
	ldr r0, _08D99880 @ =gUnk_03000428
	ldrb r0, [r0]
	ldr r1, _08D99884 @ =gUnk_0200D704
	cmp r0, #0
	beq _08D99888
	movs r0, #0x82
	str r0, [sp]
	str r6, [sp, #4]
	b _08D9988E
	.align 2, 0
_08D9987C: .4byte gUnk_03000470
_08D99880: .4byte gUnk_03000428
_08D99884: .4byte gUnk_0200D704
_08D99888:
	movs r0, #0x82
	str r0, [sp]
	str r3, [sp, #4]
_08D9988E:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08D96D78
	str r0, [r5]
	b _08D9994A
_08D9989E:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08D9994A
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08D998BC
	ldr r0, _08D998B8 @ =0x00000416
	adds r1, r5, r0
	b _08D998CA
	.align 2, 0
_08D998B8: .4byte 0x00000416
_08D998BC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08D9994A
	ldr r2, _08D998D4 @ =0x00000417
	adds r1, r5, r2
_08D998CA:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D9994A
	.align 2, 0
_08D998D4: .4byte 0x00000417
_08D998D8:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _08D998EC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D998F0
_08D998EC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D998F0:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D97F80
	cmp r0, #0
	beq _08D9994A
	movs r0, #0x10
	movs r1, #1
	bl sub_08D9687C
	ldr r1, _08D9992C @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08D99930 @ =0x0000041C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _08D99934 @ =gUnk_03002560
	cmp r0, #0
	beq _08D9993C
	ldr r1, [r1]
	ldr r0, _08D99938 @ =gUnk_02004DD5
	str r0, [r1, #8]
	b _08D9994A
	.align 2, 0
_08D9992C: .4byte 0x000002AD
_08D99930: .4byte 0x0000041C
_08D99934: .4byte gUnk_03002560
_08D99938: .4byte gUnk_02004DD5
_08D9993C:
	ldr r1, [r1]
	ldr r0, _08D99964 @ =gUnk_02004E39
	str r0, [r1, #8]
	ldr r0, _08D99968 @ =gUnk_0200EAD8
	ldr r1, _08D9996C @ =0x0600F000
	bl sub_08DA04A0
_08D9994A:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_08D96668
	adds r0, r5, #0
	bl sub_08D9A158
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D99964: .4byte gUnk_02004E39
_08D99968: .4byte gUnk_0200EAD8
_08D9996C: .4byte 0x0600F000

	thumb_func_start sub_08D99970
sub_08D99970: @ 0x08D99970
	push {r4, r5, lr}
	ldr r0, _08D9998C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99990
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99994
	.align 2, 0
_08D9998C: .4byte gUnk_03002560
_08D99990:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99994:
	adds r4, r1, r0
	bl sub_08D96B7C
	adds r5, r0, #0
	cmp r5, #0
	bne _08D999B4
	bl sub_08D9BFFC
	ldr r0, _08D999CC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D999D0 @ =gUnk_02003885
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_08D9E37C
	str r5, [r4]
_08D999B4:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D96668
	adds r0, r4, #0
	bl sub_08D9A158
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D999CC: .4byte gUnk_03002560
_08D999D0: .4byte gUnk_02003885

	thumb_func_start sub_08D999D4
sub_08D999D4: @ 0x08D999D4
	push {r4, r5, lr}
	ldr r0, _08D999F0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D999F4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D999F8
	.align 2, 0
_08D999F0: .4byte gUnk_03002560
_08D999F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D999F8:
	adds r4, r1, r0
	bl sub_08D96B7C
	adds r5, r0, #0
	cmp r5, #0
	bne _08D99A54
	ldr r0, [r4]
	bl sub_08D9E37C
	str r5, [r4]
	ldr r0, [r4, #0xc]
	bl sub_08D9E37C
	str r5, [r4, #0xc]
	ldr r0, _08D99A5C @ =gUnk_03000400
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08D99A2A
	ldr r2, _08D99A60 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _08D99A64 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08D99A2A:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D9687C
	ldr r2, _08D99A60 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _08D99A64 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _08D99A68 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D99A6C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D99A70 @ =gUnk_02004ED9
	str r0, [r1, #8]
_08D99A54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D99A5C: .4byte gUnk_03000400
_08D99A60: .4byte gUnk_03000470
_08D99A64: .4byte 0x0000FFFD
_08D99A68: .4byte gUnk_03002620
_08D99A6C: .4byte gUnk_03002560
_08D99A70: .4byte gUnk_02004ED9

	thumb_func_start sub_08D99A74
sub_08D99A74: @ 0x08D99A74
	push {lr}
	bl sub_08D96B7C
	cmp r0, #0
	bne _08D99A82
	bl sub_08D94F08
_08D99A82:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D99A88
sub_08D99A88: @ 0x08D99A88
	push {lr}
	ldr r3, _08D99AA4 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99AA8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99AAC
	.align 2, 0
_08D99AA4: .4byte gUnk_03002560
_08D99AA8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99AAC:
	adds r0, r1, r0
	ldr r1, _08D99ACC @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _08D99AC6
	ldr r0, [r3]
	bl sub_08D9E37C
_08D99AC6:
	pop {r0}
	bx r0
	.align 2, 0
_08D99ACC: .4byte 0x0000041E

	thumb_func_start nullsub_75
nullsub_75: @ 0x08D99AD0
	bx lr
	.align 2, 0

	thumb_func_start sub_08D99AD4
sub_08D99AD4: @ 0x08D99AD4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r0, #0xe4
	ldrh r0, [r0]
	cmp r0, r1
	bne _08D99AE6
	movs r2, #1
_08D99AE6:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08D99AEC
sub_08D99AEC: @ 0x08D99AEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
_08D99AF8:
	movs r0, #0xec
	adds r5, r4, #0
	muls r5, r0, r5
	adds r2, r6, r5
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xe8
	adds r3, r2, #0
	adds r3, #0xe6
	adds r7, r2, #0
	adds r7, #0xe4
	adds r2, #0xea
	mov r8, r2
	adds r2, r4, #1
	mov sb, r2
	cmp r0, #0
	beq _08D99B44
	movs r4, #0
	strh r4, [r1]
	strh r4, [r3]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r6, r0
	ldr r2, _08D99B40 @ =0x00000412
	adds r1, r6, r2
	ldrh r1, [r1]
	bl sub_08D99AD4
	strh r0, [r7]
	mov r0, r8
	strh r4, [r0]
	b _08D99B6C
	.align 2, 0
_08D99B40: .4byte 0x00000412
_08D99B44:
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r2, _08D99B84 @ =gUnk_03000470
	lsls r1, r4, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r7]
	adds r0, r2, #0
	adds r0, #0x18
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
_08D99B6C:
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08D99AF8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D99B84: .4byte gUnk_03000470

	thumb_func_start sub_08D99B88
sub_08D99B88: @ 0x08D99B88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08D99BE4 @ =gUnk_03005868
	ldr r0, [r5]
	ldr r1, _08D99BE8 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08D99BEC @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r3, r0, #0x10
	movs r2, #0xf
	ands r3, r2
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r2
	ldr r2, _08D99BF0 @ =gUnk_0200DBBC
	ldr r4, _08D99BF4 @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r4, _08D99BF8 @ =gUnk_0200D9DC
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08D99C04
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08D99BFC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08D99C00 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r1, r6, r0
	ldrh r0, [r4, #0x3c]
	strh r0, [r1, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	b _08D99C28
	.align 2, 0
_08D99BE4: .4byte gUnk_03005868
_08D99BE8: .4byte 0x00196225
_08D99BEC: .4byte 0x3C6EF35F
_08D99BF0: .4byte gUnk_0200DBBC
_08D99BF4: .4byte 0x0000041A
_08D99BF8: .4byte gUnk_0200D9DC
_08D99BFC: .4byte 0x0000FFFE
_08D99C00: .4byte 0x000003DF
_08D99C04:
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D99C38 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r1, r6, r0
	ldrh r0, [r4, #0x28]
	strh r0, [r1, #0xc]
	adds r0, r4, #0
	adds r0, #0x2a
_08D99C28:
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D99C38: .4byte 0x000003DF

	thumb_func_start sub_08D99C3C
sub_08D99C3C: @ 0x08D99C3C
	push {r4, r5, lr}
	ldr r4, _08D99C7C @ =gUnk_03005868
	ldr r2, [r4]
	ldr r1, _08D99C80 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _08D99C84 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _08D99C88 @ =gUnk_0200DB3C
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _08D99C8C @ =0x0000041C
	adds r1, r0, r5
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r2, r2, r1
	adds r2, r2, r4
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsrs r3, r3, #2
	movs r1, #0xf
	ands r3, r1
	adds r2, r2, r3
	subs r5, #0xc
	adds r0, r0, r5
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D99C7C: .4byte gUnk_03005868
_08D99C80: .4byte 0x00196225
_08D99C84: .4byte 0x3C6EF35F
_08D99C88: .4byte gUnk_0200DB3C
_08D99C8C: .4byte 0x0000041C

	thumb_func_start sub_08D99C90
sub_08D99C90: @ 0x08D99C90
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D99CD2
	ldr r2, _08D99CD8 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D99CDC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D99CE0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _08D99CE4 @ =gUnk_0200DAFC
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xe4
	strh r0, [r1]
_08D99CD2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D99CD8: .4byte gUnk_03005868
_08D99CDC: .4byte 0x00196225
_08D99CE0: .4byte 0x3C6EF35F
_08D99CE4: .4byte gUnk_0200DAFC

	thumb_func_start sub_08D99CE8
sub_08D99CE8: @ 0x08D99CE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08D99D1C @ =gUnk_020051C5
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D9E260
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r4, _08D99D20 @ =gUnk_03000730
	ldr r7, _08D99D24 @ =gUnk_03001400
	ldr r3, _08D99D28 @ =gUnk_03005000
	ldr r6, _08D99D2C @ =gUnk_020058F5
	ldr r5, _08D99D30 @ =gUnk_030013D0
	cmp r2, #0
	beq _08D99D34
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99D38
	.align 2, 0
_08D99D1C: .4byte gUnk_020051C5
_08D99D20: .4byte gUnk_03000730
_08D99D24: .4byte gUnk_03001400
_08D99D28: .4byte gUnk_03005000
_08D99D2C: .4byte gUnk_020058F5
_08D99D30: .4byte gUnk_030013D0
_08D99D34:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99D38:
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	str r1, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r7
	str r6, [r0]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D99D60
sub_08D99D60: @ 0x08D99D60
	push {lr}
	ldr r3, _08D99D7C @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99D80
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99D84
	.align 2, 0
_08D99D7C: .4byte gUnk_03002560
_08D99D80:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99D84:
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08D99DA4
	ldr r2, _08D99DA8 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08D99DAC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_08D9E37C
_08D99DA4:
	pop {r0}
	bx r0
	.align 2, 0
_08D99DA8: .4byte gUnk_03002620
_08D99DAC: .4byte 0x0000FBFF

	thumb_func_start sub_08D99DB0
sub_08D99DB0: @ 0x08D99DB0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D99DE0 @ =gUnk_0200525D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D99DE4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D99DEA
	.align 2, 0
_08D99DE0: .4byte gUnk_0200525D
_08D99DE4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D99DEA:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D99DF8
sub_08D99DF8: @ 0x08D99DF8
	push {r4, r5, lr}
	ldr r5, _08D99E14 @ =gUnk_03002560
	ldr r2, [r5]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99E18
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99E1C
	.align 2, 0
_08D99E14: .4byte gUnk_03002560
_08D99E18:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99E1C:
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08D99E38
	cmp r0, #0x37
	bne _08D99E5E
	ldr r0, [r4]
	bl sub_08D9A994
	b _08D99E5E
_08D99E38:
	ldr r2, [r4]
	ldr r0, _08D99E64 @ =gUnk_0200D77C
	ldrh r1, [r0, #0x28]
	movs r3, #0
	strh r1, [r2, #0xc]
	ldr r1, [r4]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r1, [r4]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0x1f]
	strb r3, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08D99E68 @ =gUnk_020052D1
	str r0, [r1, #8]
_08D99E5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D99E64: .4byte gUnk_0200D77C
_08D99E68: .4byte gUnk_020052D1

	thumb_func_start sub_08D99E6C
sub_08D99E6C: @ 0x08D99E6C
	push {r4, lr}
	ldr r3, _08D99E88 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D99E8C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D99E90
	.align 2, 0
_08D99E88: .4byte gUnk_03002560
_08D99E8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D99E90:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #4]
	ldr r2, [r4]
	cmp r0, #0x15
	bhi _08D99EB4
	ldr r1, _08D99EB0 @ =gUnk_0200D9C4
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _08D99EC4
	.align 2, 0
_08D99EB0: .4byte gUnk_0200D9C4
_08D99EB4:
	adds r2, #0xdc
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_08D9E37C
_08D99EC4:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D99ED0
sub_08D99ED0: @ 0x08D99ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r0, _08D99F14 @ =gUnk_02005549
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	adds r3, r5, #0
	adds r3, #0xdf
	cmp r1, #0
	beq _08D99F18
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D99F1E
	.align 2, 0
_08D99F14: .4byte gUnk_02005549
_08D99F18:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D99F1E:
	adds r4, r1, #0
	str r5, [r4, #0x54]
	ldrb r2, [r3]
	ldr r0, _08D9A018 @ =gUnk_0200D77C
	mov sb, r0
	ldrb r1, [r5, #0x1b]
	movs r7, #0x50
	adds r7, r7, r4
	mov r8, r7
	adds r3, r4, #0
	adds r3, #0x52
	lsls r0, r6, #1
	str r0, [sp, #0x18]
	lsls r7, r6, #3
	mov ip, r7
	adds r0, r4, #4
	mov sl, r0
	adds r7, r4, #0
	adds r7, #0x20
	str r7, [sp, #0x10]
	adds r0, #0x1f
	str r0, [sp, #0x14]
	lsls r6, r6, #2
	str r6, [sp, #0xc]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq _08D99F5A
	adds r0, r2, #5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08D99F5A:
	mov r7, sb
	ldrh r0, [r7, #0x1c]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r7, #0x1e]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	mov sb, r0
	mov r0, sb
	orrs r0, r1
	strb r0, [r5, #0x1b]
	str r5, [r4]
	mov r1, r8
	strh r6, [r1]
	movs r1, #2
	strh r1, [r3]
	ldr r5, [sp, #0x18]
	mov r8, r5
	ldr r0, _08D9A01C @ =gUnk_0200DACC
	add r0, ip
	ldr r0, [r0]
	str r0, [r4, #0x48]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #2
	ldr r7, _08D9A01C @ =gUnk_0200DACC
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r4, #0x4c]
	ldrh r0, [r3]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r7, r2, #2
	cmp r5, #0
	beq _08D9A02C
	str r6, [sp, #4]
	ldr r2, _08D9A020 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl sub_08DA048C
	ldr r0, _08D9A024 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08D9A028 @ =gUnk_0200D9DC
	adds r0, r7, r0
	ldrh r1, [r0, #0x28]
	strh r1, [r4, #0x10]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	ldrb r0, [r4, #0x1f]
	mov r1, sb
	orrs r0, r1
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	movs r0, #7
	ldr r5, [sp, #0x14]
	strb r0, [r5]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08D9A08E
	.align 2, 0
_08D9A018: .4byte gUnk_0200D77C
_08D9A01C: .4byte gUnk_0200DACC
_08D9A020: .4byte 0x05000011
_08D9A024: .4byte 0x06010000
_08D9A028: .4byte gUnk_0200D9DC
_08D9A02C:
	str r5, [sp, #4]
	ldr r2, _08D9A0D0 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl sub_08DA048C
	ldr r0, _08D9A0D4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08D9A0D8 @ =gUnk_0200D9DC
	adds r0, r7, r0
	ldrh r1, [r0, #0x28]
	strh r1, [r4, #0x10]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	ldrb r0, [r4, #0x1f]
	mov r6, sb
	orrs r0, r6
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	ldr r7, [sp, #0x10]
	strb r0, [r7]
	movs r0, #7
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D9A08E:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08D9A09C
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
_08D9A09C:
	ldr r0, [r4, #0xc]
	ldr r1, _08D9A0DC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _08D9A0E0 @ =gUnk_0200DAEC
	ldr r5, [sp, #0xc]
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x36]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A0D0: .4byte 0x05000011
_08D9A0D4: .4byte 0x06010000
_08D9A0D8: .4byte gUnk_0200D9DC
_08D9A0DC: .4byte 0xFFFFCFFF
_08D9A0E0: .4byte gUnk_0200DAEC

	thumb_func_start sub_08D9A0E4
sub_08D9A0E4: @ 0x08D9A0E4
	push {r4, lr}
	ldr r0, _08D9A100 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9A104
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9A108
	.align 2, 0
_08D9A100: .4byte gUnk_03002560
_08D9A104:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9A108:
	adds r4, r1, r0
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _08D9A118
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_08D9A118:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _08D9A124
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_08D9A124:
	adds r0, r4, #0
	bl sub_08D967C0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08D9A14A
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08D9A14A
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08D9A150 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
_08D9A14A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A150: .4byte gUnk_03002560

	thumb_func_start nullsub_76
nullsub_76: @ 0x08D9A154
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9A158
sub_08D9A158: @ 0x08D9A158
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_08D9A15E:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_08D96668
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D9A182
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_08D96668
_08D9A182:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D9A194
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_08D96668
_08D9A194:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D9A15E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9A1A4
sub_08D9A1A4: @ 0x08D9A1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	adds r0, #0xee
	ldrb r0, [r0]
	strb r0, [r1]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r4, _08D9A1EC @ =0x000002C6
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r2, _08D9A1F0 @ =0x000003B2
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r6, #0
_08D9A1CE:
	movs r7, #0
	mov r0, sp
	ldrb r3, [r0]
	ldrb r4, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D9A1F4
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r4, r0
	bgt _08D9A1FC
	b _08D9A202
	.align 2, 0
_08D9A1EC: .4byte 0x000002C6
_08D9A1F0: .4byte 0x000003B2
_08D9A1F4:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r4, r0
	ble _08D9A202
_08D9A1FC:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _08D9A212
_08D9A202:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D9A218
	mov r0, sp
	ldrb r0, [r0, #2]
_08D9A212:
	cmp r3, r0
	bgt _08D9A220
	b _08D9A226
_08D9A218:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _08D9A226
_08D9A220:
	mov r0, sp
	ldrb r0, [r0]
	b _08D9A262
_08D9A226:
	mov r0, sp
	ldrb r3, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D9A23E
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r3, r0
	bgt _08D9A246
	b _08D9A24C
_08D9A23E:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _08D9A24C
_08D9A246:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _08D9A262
_08D9A24C:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D9A25E
	mov r0, sp
	ldrb r0, [r0, #2]
	b _08D9A262
_08D9A25E:
	mov r0, sp
	ldrb r0, [r0, #3]
_08D9A262:
	mov ip, r0
	movs r3, #0
_08D9A266:
	movs r0, #0xec
	muls r0, r3, r0
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp ip, r1
	bne _08D9A294
	adds r0, #0xf8
	movs r2, #0
	strb r6, [r0]
	adds r1, r6, r7
	movs r4, #0x81
	lsls r4, r4, #3
	adds r0, r5, r4
	adds r0, r0, r1
	strb r3, [r0]
	mov r1, sp
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08D9A294:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08D9A266
	adds r0, r6, r7
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D9A1CE
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9A2B0
sub_08D9A2B0: @ 0x08D9A2B0
	push {lr}
	sub sp, #4
	ldr r0, _08D9A2DC @ =gUnk_02005755
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9A2E0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D9A2E6
	.align 2, 0
_08D9A2DC: .4byte gUnk_02005755
_08D9A2E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D9A2E6:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D9A2F0
sub_08D9A2F0: @ 0x08D9A2F0
	push {r4, lr}
	ldr r0, _08D9A30C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9A310
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9A314
	.align 2, 0
_08D9A30C: .4byte gUnk_03002560
_08D9A310:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9A314:
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _08D9A330
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl sub_08D9BEC8
	ldr r0, _08D9A33C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D9A340 @ =gUnk_020057A9
	str r0, [r1, #8]
_08D9A330:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A33C: .4byte gUnk_03002560
_08D9A340: .4byte gUnk_020057A9

	thumb_func_start sub_08D9A344
sub_08D9A344: @ 0x08D9A344
	push {r4, r5, r6, lr}
	ldr r6, _08D9A364 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D9A368 @ =gUnk_03002610
	ldr r4, _08D9A36C @ =gUnk_0200DC3C
	ldr r5, _08D9A370 @ =gUnk_0200DC4B
	cmp r0, #0
	beq _08D9A374
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9A378
	.align 2, 0
_08D9A364: .4byte gUnk_03002560
_08D9A368: .4byte gUnk_03002610
_08D9A36C: .4byte gUnk_0200DC3C
_08D9A370: .4byte gUnk_0200DC4B
_08D9A374:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9A378:
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	strh r0, [r3, #6]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08D9A3D8
	movs r0, #8
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6]
	bl sub_08D9E37C
_08D9A3D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9A3E0
sub_08D9A3E0: @ 0x08D9A3E0
	push {lr}
	sub sp, #4
	ldr r0, _08D9A40C @ =gUnk_02005885
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9A410
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D9A416
	.align 2, 0
_08D9A40C: .4byte gUnk_02005885
_08D9A410:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D9A416:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D9A420
sub_08D9A420: @ 0x08D9A420
	push {r4, r5, r6, lr}
	ldr r6, _08D9A440 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D9A444 @ =gUnk_03002610
	ldr r4, _08D9A448 @ =gUnk_0200DC5A
	ldr r5, _08D9A44C @ =gUnk_0200DC69
	cmp r0, #0
	beq _08D9A450
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9A454
	.align 2, 0
_08D9A440: .4byte gUnk_03002560
_08D9A444: .4byte gUnk_03002610
_08D9A448: .4byte gUnk_0200DC5A
_08D9A44C: .4byte gUnk_0200DC69
_08D9A450:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9A454:
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #0
	strh r0, [r3, #8]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0xa]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08D9A488
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r6]
	bl sub_08D9E37C
_08D9A488:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9A490
sub_08D9A490: @ 0x08D9A490
	push {lr}
	ldr r0, _08D9A4A0 @ =gUnk_0200E9F0
	ldr r1, _08D9A4A4 @ =0x0600F000
	bl sub_08DA04A0
	pop {r0}
	bx r0
	.align 2, 0
_08D9A4A0: .4byte gUnk_0200E9F0
_08D9A4A4: .4byte 0x0600F000

	thumb_func_start sub_08D9A4A8
sub_08D9A4A8: @ 0x08D9A4A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D9A4E0 @ =gUnk_02005A95
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9A4E4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D9A4EA
	.align 2, 0
_08D9A4E0: .4byte gUnk_02005A95
_08D9A4E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D9A4EA:
	adds r4, r0, #0
	adds r0, #0x54
	movs r7, #0
	strh r7, [r0]
	ldr r0, _08D9A5A8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D9A5AC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	subs r0, #0xbb
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D9A5B8
	str r7, [sp, #4]
	ldr r2, _08D9A5B0 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A5B4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D9A60E
	.align 2, 0
_08D9A5A8: .4byte 0xFFFF0000
_08D9A5AC: .4byte 0xFF00FFFF
_08D9A5B0: .4byte 0x05000011
_08D9A5B4: .4byte 0x06010000
_08D9A5B8:
	str r5, [sp, #4]
	ldr r2, _08D9A628 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A62C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D9A60E:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	movs r0, #2
	strh r0, [r4, #0x36]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A628: .4byte 0x05000011
_08D9A62C: .4byte 0x06010000

	thumb_func_start sub_08D9A630
sub_08D9A630: @ 0x08D9A630
	push {r4, lr}
	ldr r0, _08D9A64C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9A650
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9A654
	.align 2, 0
_08D9A64C: .4byte gUnk_03002560
_08D9A650:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9A654:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D967C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08D9A676
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08D9A676:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9A69C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D9A694
	subs r0, #1
	strh r0, [r1]
	b _08D9A69C
_08D9A694:
	ldr r0, _08D9A6A4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
_08D9A69C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A6A4: .4byte gUnk_03002560

	thumb_func_start sub_08D9A6A8
sub_08D9A6A8: @ 0x08D9A6A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D9A6E0 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9A6E4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D9A6EA
	.align 2, 0
_08D9A6E0: .4byte gUnk_02001C69
_08D9A6E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D9A6EA:
	adds r4, r1, #0
	ldr r0, _08D9A7A0 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D9A7A4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	subs r0, #0xbb
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D9A7B0
	str r7, [sp, #4]
	ldr r2, _08D9A7A8 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A7AC @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D9A806
	.align 2, 0
_08D9A7A0: .4byte 0xFFFF0000
_08D9A7A4: .4byte 0xFF00FFFF
_08D9A7A8: .4byte 0x05000011
_08D9A7AC: .4byte 0x06010000
_08D9A7B0:
	str r5, [sp, #4]
	ldr r2, _08D9A81C @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A820 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D9A806:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A81C: .4byte 0x05000011
_08D9A820: .4byte 0x06010000

	thumb_func_start sub_08D9A824
sub_08D9A824: @ 0x08D9A824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08D9A858 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08D9A85C
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D9A862
	.align 2, 0
_08D9A858: .4byte gUnk_02001C69
_08D9A85C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_08D9A862:
	ldr r0, _08D9A914 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D9A918 @ =0xFF00FFFF
	ands r6, r0
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D9A924
	str r7, [sp, #4]
	ldr r2, _08D9A91C @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A920 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D9A97A
	.align 2, 0
_08D9A914: .4byte 0xFFFF0000
_08D9A918: .4byte 0xFF00FFFF
_08D9A91C: .4byte 0x05000011
_08D9A920: .4byte 0x06010000
_08D9A924:
	str r5, [sp, #4]
	ldr r2, _08D9A98C @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9A990 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D9A97A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9A98C: .4byte 0x05000011
_08D9A990: .4byte 0x06010000

	thumb_func_start sub_08D9A994
sub_08D9A994: @ 0x08D9A994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D9A9CC @ =gUnk_02005F71
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9A9D0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D9A9D6
	.align 2, 0
_08D9A9CC: .4byte gUnk_02005F71
_08D9A9D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D9A9D6:
	adds r5, r0, #0
	ldr r0, [sp, #8]
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, _08D9AA8C @ =0xFFFF0000
	ands r7, r0
	ldr r0, _08D9AA90 @ =0xFF00FFFF
	ands r7, r0
	ldr r1, [sp, #8]
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	str r6, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r7, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08D9AA9C
	str r6, [sp, #4]
	ldr r2, _08D9AA94 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9AA98 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r7, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	b _08D9AAEE
	.align 2, 0
_08D9AA8C: .4byte 0xFFFF0000
_08D9AA90: .4byte 0xFF00FFFF
_08D9AA94: .4byte 0x05000011
_08D9AA98: .4byte 0x06010000
_08D9AA9C:
	str r4, [sp, #4]
	ldr r2, _08D9AB04 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9AB08 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r7, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D9AAEE:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9AB04: .4byte 0x05000011
_08D9AB08: .4byte 0x06010000

	thumb_func_start sub_08D9AB0C
sub_08D9AB0C: @ 0x08D9AB0C
	push {r4, r5, r6, lr}
	ldr r0, _08D9AB28 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9AB2C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9AB30
	.align 2, 0
_08D9AB28: .4byte gUnk_03002560
_08D9AB2C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9AB30:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D967C0
	adds r3, r4, #0
	adds r3, #0x59
	movs r5, #0
	ldrsb r5, [r3, r5]
	cmp r5, #0
	bne _08D9AB68
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08D9ABB2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strb r5, [r2]
	b _08D9ABB2
_08D9AB68:
	cmp r5, #1
	bne _08D9AB9A
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08D9ABB2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strb r6, [r2]
	strh r6, [r4, #0x10]
	strb r5, [r4, #0x1e]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	b _08D9ABB2
_08D9AB9A:
	cmp r5, #2
	bne _08D9ABB2
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D9ABB2
	ldr r0, _08D9ABB8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
_08D9ABB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9ABB8: .4byte gUnk_03002560

	thumb_func_start sub_08D9ABBC
sub_08D9ABBC: @ 0x08D9ABBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	adds r4, r1, #0
	mov r8, r2
	ldr r0, _08D9ABF8 @ =gUnk_020061D1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D9E260
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9ABFC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9AC00
	.align 2, 0
_08D9ABF8: .4byte gUnk_020061D1
_08D9ABFC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9AC00:
	adds r0, r1, r0
	adds r5, r0, #0
	ldr r0, _08D9ACB4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08D9ACB8 @ =0xFF00FFFF
	ands r6, r0
	ldr r1, [sp, #8]
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r4, [r5, #0x48]
	mov r2, r8
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r5
	mov sb, r2
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	adds r2, r5, #0
	adds r2, #0x54
	str r2, [sp, #0x10]
	cmp r4, #0
	beq _08D9ACC4
	str r7, [sp, #4]
	ldr r2, _08D9ACBC @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9ACC0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r4, r8
	lsrs r0, r4, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r2, #5
	mov r1, sl
	strb r2, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08D9AD16
	.align 2, 0
_08D9ACB4: .4byte 0xFFFF0000
_08D9ACB8: .4byte 0xFF00FFFF
_08D9ACBC: .4byte 0x05000011
_08D9ACC0: .4byte 0x06010000
_08D9ACC4:
	str r4, [sp, #4]
	ldr r2, _08D9AD5C @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9AD60 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r2, sb
	strb r3, [r2]
	movs r1, #5
	mov r0, sl
	strb r1, [r0]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D9AD16:
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08D9AD64 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _08D9AD68 @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldr r4, [sp, #8]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	ldr r0, [sp, #0x10]
	strb r3, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9AD5C: .4byte 0x05000011
_08D9AD60: .4byte 0x06010000
_08D9AD64: .4byte 0xFFFFCFFF
_08D9AD68: .4byte 0x0000F83F

	thumb_func_start sub_08D9AD6C
sub_08D9AD6C: @ 0x08D9AD6C
	push {lr}
	ldr r0, _08D9AD88 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9AD8C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9AD90
	.align 2, 0
_08D9AD88: .4byte gUnk_03002560
_08D9AD8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9AD90:
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08D9ADA8
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08D9ADA8:
	adds r0, r1, #0
	bl sub_08D967C0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9ADB4
sub_08D9ADB4: @ 0x08D9ADB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08D9ADEC @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08D9ADF0
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _08D9ADF6
	.align 2, 0
_08D9ADEC: .4byte gUnk_02001C69
_08D9ADF0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
_08D9ADF6:
	ldr r0, _08D9AEA0 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08D9AEA4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r6, r0
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r4, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08D9AEB0
	str r7, [sp, #4]
	ldr r2, _08D9AEA8 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9AEAC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08D9AF02
	.align 2, 0
_08D9AEA0: .4byte 0xFFFF0000
_08D9AEA4: .4byte 0xFF00FFFF
_08D9AEA8: .4byte 0x05000011
_08D9AEAC: .4byte 0x06010000
_08D9AEB0:
	str r4, [sp, #4]
	ldr r2, _08D9AF14 @ =0x05000011
	add r0, sp, #4
	bl sub_08DA048C
	ldr r0, _08D9AF18 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D9AF02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9AF14: .4byte 0x05000011
_08D9AF18: .4byte 0x06010000

	thumb_func_start sub_08D9AF1C
sub_08D9AF1C: @ 0x08D9AF1C
	push {lr}
	sub sp, #4
	ldr r0, _08D9AF48 @ =gUnk_020063C9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D9E260
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9AF4C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D9AF52
	.align 2, 0
_08D9AF48: .4byte gUnk_020063C9
_08D9AF4C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D9AF52:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D9AF64
sub_08D9AF64: @ 0x08D9AF64
	push {r4, r5, r6, lr}
	ldr r0, _08D9AF80 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9AF84
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9AF88
	.align 2, 0
_08D9AF80: .4byte gUnk_03002560
_08D9AF84:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9AF88:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _08D9B02C
	ldr r2, _08D9AFCC @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D9AFD0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D9AFD4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _08D9AFD8 @ =gUnk_0200DC78
	adds r1, r0, r2
	ldrb r6, [r1]
	strb r6, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r1, r3, #3
	movs r0, #1
	ands r1, r0
	lsrs r2, r3, #2
	lsrs r5, r3, #5
	cmp r1, #0
	beq _08D9AFDC
	movs r0, #3
	ands r2, r0
	adds r0, r6, r2
	b _08D9AFE2
	.align 2, 0
_08D9AFCC: .4byte gUnk_03005868
_08D9AFD0: .4byte 0x00196225
_08D9AFD4: .4byte 0x3C6EF35F
_08D9AFD8: .4byte gUnk_0200DC78
_08D9AFDC:
	movs r0, #3
	ands r2, r0
	subs r0, r6, r2
_08D9AFE2:
	strb r0, [r4]
	movs r0, #1
	ands r5, r0
	lsrs r1, r3, #4
	ldrb r2, [r4, #1]
	ldrb r6, [r4]
	cmp r5, #0
	beq _08D9AFFA
	movs r0, #3
	ands r1, r0
	adds r0, r2, r1
	b _08D9B000
_08D9AFFA:
	movs r0, #3
	ands r1, r0
	subs r0, r2, r1
_08D9B000:
	strb r0, [r4, #1]
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	lsls r0, r6, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_08D9ADB4
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08D9B02C
	ldr r0, _08D9B028 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D9E37C
	b _08D9B032
	.align 2, 0
_08D9B028: .4byte gUnk_03002560
_08D9B02C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08D9B032:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9B038
sub_08D9B038: @ 0x08D9B038
	push {lr}
	sub sp, #4
	ldr r0, _08D9B064 @ =gUnk_020064E5
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D9E260
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9B068
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9B06C
	.align 2, 0
_08D9B064: .4byte gUnk_020064E5
_08D9B068:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9B06C:
	adds r1, r1, r0
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9B080
sub_08D9B080: @ 0x08D9B080
	push {r4, lr}
	ldr r3, _08D9B09C @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D9B0A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D9B0A4
	.align 2, 0
_08D9B09C: .4byte gUnk_03002560
_08D9B0A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D9B0A4:
	adds r4, r1, r0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9B0B8
	ldr r0, [r3]
	bl sub_08D9E37C
	b _08D9B0E8
_08D9B0B8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D9B0E8
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08D9B0E8
	bl sub_08D9AF1C
	ldr r2, _08D9B0F0 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D9B0F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D9B0F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_08D9B0E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9B0F0: .4byte gUnk_03005868
_08D9B0F4: .4byte 0x00196225
_08D9B0F8: .4byte 0x3C6EF35F

	thumb_func_start sub_08D9B0FC
sub_08D9B0FC: @ 0x08D9B0FC
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9B114
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D9B11A
_08D9B114:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D9B11A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9B128
sub_08D9B128: @ 0x08D9B128
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9B140
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D9B146
_08D9B140:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D9B146:
	ldrh r1, [r2]
	ldr r0, _08D9B154 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08D9B154: .4byte 0x0000FFFD

	thumb_func_start sub_08D9B158
sub_08D9B158: @ 0x08D9B158
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D9B170
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D9B176
_08D9B170:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D9B176:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_020001CC
sub_020001CC: @ 0x020001CC
	push {lr}
	ldr r1, _020001E0 @ =gUnk_03003E54
	ldr r0, _020001E4 @ =gUnk_0201887C
	str r0, [r1]
	bl sub_020001E8
	bl sub_02001420
	pop {r0}
	bx r0
	.align 2, 0
_020001E0: .4byte gUnk_03003E54
_020001E4: .4byte gUnk_0201887C

	thumb_func_start sub_020001E8
sub_020001E8: @ 0x020001E8
	push {r4, lr}
	sub sp, #4
	ldr r0, _02000214 @ =gUnk_03000D60
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _02000218 @ =gUnk_03000AB0
	ldr r2, _0200021C @ =0x01000158
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _02000220 @ =gUnk_03000A80
	ldr r2, _02000224 @ =0x01000016
	bl CpuSet
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000214: .4byte gUnk_03000D60
_02000218: .4byte gUnk_03000AB0
_0200021C: .4byte 0x01000158
_02000220: .4byte gUnk_03000A80
_02000224: .4byte 0x01000016

	thumb_func_start sub_02000228
sub_02000228: @ 0x02000228
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _0200028C @ =gUnk_03002C70
	ldr r2, _02000290 @ =0x05000014
	add r0, sp, #4
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _02000294 @ =gUnk_03003E90
	ldr r2, _02000298 @ =0x05000005
	bl CpuSet
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _0200029C @ =gUnk_03000A80
	ldr r2, _020002A0 @ =0x01000016
	adds r1, r4, #0
	bl CpuSet
	strh r5, [r4, #4]
	bl MultiSioStart
	ldr r0, _020002A4 @ =sub_02000A14
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_0200AE44
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _020002A8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _020002AE
	.align 2, 0
_0200028C: .4byte gUnk_03002C70
_02000290: .4byte 0x05000014
_02000294: .4byte gUnk_03003E90
_02000298: .4byte 0x05000005
_0200029C: .4byte gUnk_03000A80
_020002A0: .4byte 0x01000016
_020002A4: .4byte sub_02000A14
_020002A8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_020002AE:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _020002D8 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _020002DC @ =sub_02000C00
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _020002D0
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl CpuSet
_020002D0:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020002D8: .4byte 0x01000010
_020002DC: .4byte sub_02000C00

	thumb_func_start sub_020002E0
sub_020002E0: @ 0x020002E0
	push {r4, lr}
	ldr r4, _020002F4 @ =gUnk_03000A80
	ldr r0, [r4]
	bl sub_0200AF60
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020002F4: .4byte gUnk_03000A80

	thumb_func_start sub_020002F8
sub_020002F8: @ 0x020002F8
	ldr r2, _02000304 @ =gUnk_03000A80
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_02000304: .4byte gUnk_03000A80

	thumb_func_start sub_02000308
sub_02000308: @ 0x02000308
	ldr r0, _02000310 @ =gUnk_03000A80
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02000310: .4byte gUnk_03000A80

	thumb_func_start sub_02000314
sub_02000314: @ 0x02000314
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _02000354 @ =gUnk_03002C70
	ldr r2, _02000358 @ =0x05000014
	mov r0, sp
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _0200035C @ =gUnk_03003E90
	ldr r2, _02000360 @ =0x05000005
	bl CpuSet
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _02000364 @ =gUnk_03000AB0
	ldr r2, _02000368 @ =0x01000158
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02000354: .4byte gUnk_03002C70
_02000358: .4byte 0x05000014
_0200035C: .4byte gUnk_03003E90
_02000360: .4byte 0x05000005
_02000364: .4byte gUnk_03000AB0
_02000368: .4byte 0x01000158

	thumb_func_start sub_0200036C
sub_0200036C: @ 0x0200036C
	ldr r1, _02000374 @ =gUnk_03000AB0
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_02000374: .4byte gUnk_03000AB0

	thumb_func_start sub_02000378
sub_02000378: @ 0x02000378
	ldr r2, _02000384 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_02000384: .4byte gUnk_03000AB0

	thumb_func_start sub_02000388
sub_02000388: @ 0x02000388
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _02000414 @ =gUnk_03000AB0
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _02000418 @ =gUnk_03000A5C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0200043E
_020003A2:
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
	beq _020003FC
_020003C2:
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
	beq _020003EC
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _020003C2
_020003EC:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _02000420
_020003FC:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _0200041C @ =gUnk_03000D60
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _02000448
	.align 2, 0
_02000414: .4byte gUnk_03000AB0
_02000418: .4byte gUnk_03000A5C
_0200041C: .4byte gUnk_03000D60
_02000420:
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
	blo _020003A2
_0200043E:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_02000448:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02000454
sub_02000454: @ 0x02000454
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _02000468 @ =gUnk_03000AB0
	ldr r1, _0200046C @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_02000468: .4byte gUnk_03000AB0
_0200046C: .4byte 0x000002AD

	thumb_func_start sub_02000470
sub_02000470: @ 0x02000470
	push {r4, r5, r6, r7, lr}
	ldr r7, _02000590 @ =gUnk_03000AB0
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02000480
	b _0200058A
_02000480:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0200048A
	b _0200058A
_0200048A:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _02000594 @ =gUnk_03003670
	ldrh r1, [r0]
	ldr r0, _02000598 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _0200059C @ =gUnk_03003E90
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_020004B6:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _020004B6
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
_0200058A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000590: .4byte gUnk_03000AB0
_02000594: .4byte gUnk_03003670
_02000598: .4byte 0x000003FF
_0200059C: .4byte gUnk_03003E90

	thumb_func_start sub_020005A0
sub_020005A0: @ 0x020005A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02000628 @ =gUnk_03000AB0
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020005BC
	b _02000A02
_020005BC:
	movs r1, #0
	mov r8, r1
	ldr r2, _0200062C @ =gUnk_03000A5C
	ldrb r2, [r2]
	cmp r8, r2
	blo _020005CA
	b _020007D4
_020005CA:
	ldr r0, _02000630 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _02000634
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
	bne _02000612
	b _020007C0
_02000612:
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
	b _020007C0
	.align 2, 0
_02000628: .4byte gUnk_03000AB0
_0200062C: .4byte gUnk_03000A5C
_02000630: .4byte 0x04000128
_02000634:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _020007F0 @ =gUnk_03002C70
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
	ble _02000740
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_02000740:
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
	beq _02000780
_02000758:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _020007F4 @ =0x0000FFFF
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
	bne _02000758
_02000780:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _020007C0
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _02000794
	b _020009A4
_02000794:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _020007A0
	b _020009BC
_020007A0:
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
	ldr r0, _020007F4 @ =0x0000FFFF
	cmp r1, r0
	bne _020007C0
	b _020009D4
_020007C0:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _020007F8 @ =gUnk_03000A5C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _020007D4
	b _020005CA
_020007D4:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _020008B2
	ldr r0, _020007FC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _020007F8 @ =gUnk_03000A5C
	b _0200086E
	.align 2, 0
_020007F0: .4byte gUnk_03002C70
_020007F4: .4byte 0x0000FFFF
_020007F8: .4byte gUnk_03000A5C
_020007FC: .4byte 0x0000FFFB
_02000800:
	ldr r0, _02000890 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _02000864
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
	bls _02000864
	cmp r1, #1
	bgt _02000878
_02000864:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0200086E:
	ldrb r3, [r4]
	cmp r8, r3
	blo _02000800
	cmp r5, #0
	beq _02000898
_02000878:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _02000894 @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _020008B2
	.align 2, 0
_02000890: .4byte 0x04000128
_02000894: .4byte 0x000002AD
_02000898:
	ldr r1, _020008AC @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _020008B0
	adds r0, r2, #1
	strb r0, [r1]
	b _020008B2
	.align 2, 0
_020008AC: .4byte 0x000002AD
_020008B0:
	strb r5, [r1]
_020008B2:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _02000932
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _020008C8
	b _020009F0
_020008C8:
	movs r3, #0
	mov r8, r3
	ldr r0, _02000960 @ =gUnk_03000A5C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _02000932
_020008D6:
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
	ldr r0, _02000964 @ =0x000003FF
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
	blo _020008D6
_02000932:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _020009F0
	ldr r0, _02000968 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _02000970
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _0200096C @ =gUnk_03000D60
	movs r0, #7
	b _020009E4
	.align 2, 0
_02000960: .4byte gUnk_03000A5C
_02000964: .4byte 0x000003FF
_02000968: .4byte 0x000002AD
_0200096C: .4byte gUnk_03000D60
_02000970:
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
	bne _020009F0
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _020009A0 @ =gUnk_03000D60
	movs r0, #5
	b _020009E4
	.align 2, 0
_020009A0: .4byte gUnk_03000D60
_020009A4:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009B8 @ =gUnk_03000D60
	movs r0, #3
	b _020009E4
	.align 2, 0
_020009B8: .4byte gUnk_03000D60
_020009BC:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009D0 @ =gUnk_03000D60
	movs r0, #4
	b _020009E4
	.align 2, 0
_020009D0: .4byte gUnk_03000D60
_020009D4:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009EC @ =gUnk_03000D60
	movs r0, #6
_020009E4:
	str r0, [r1]
	movs r0, #0
	b _02000A04
	.align 2, 0
_020009EC: .4byte gUnk_03000D60
_020009F0:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _02000A02
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_02000A02:
	movs r0, #1
_02000A04:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02000A14
sub_02000A14: @ 0x02000A14
	push {r4, r5, r6, r7, lr}
	ldr r0, _02000A30 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02000A34 @ =gUnk_03000A80
	cmp r0, #0
	beq _02000A38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02000A3C
	.align 2, 0
_02000A30: .4byte gUnk_03003DB0
_02000A34: .4byte gUnk_03000A80
_02000A38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02000A3C:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _02000B24
	ldr r0, _02000A64 @ =gUnk_03002D34
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _02000A6C
	ldr r0, _02000A68 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _02000A9C
	.align 2, 0
_02000A64: .4byte gUnk_03002D34
_02000A68: .4byte 0x0000FFFE
_02000A6C:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _02000A84
	ldr r0, _02000A80 @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _02000AA0
	.align 2, 0
_02000A80: .4byte 0x0000FFFD
_02000A84:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _02000AD0
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _02000AB4
	ldr r0, _02000AAC @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_02000A9C:
	ands r0, r1
	ldr r1, _02000AB0 @ =0x0000FFFB
_02000AA0:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _02000B24
	.align 2, 0
_02000AAC: .4byte 0x0000FFFF
_02000AB0: .4byte 0x0000FFFB
_02000AB4:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _02000AD2
_02000ABA:
	ldr r0, _02000ACC @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _02000B24
	.align 2, 0
_02000ACC: .4byte 0x0000FFFC
_02000AD0:
	strh r2, [r3, #0x18]
_02000AD2:
	movs r6, #0
_02000AD4:
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
	beq _02000B02
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _02000B02
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _02000ABA
	adds r0, #1
	b _02000B06
_02000B02:
	adds r1, r1, r5
	movs r0, #0
_02000B06:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _02000AD4
	ldr r1, [r3]
	adds r0, r3, #0
	bl _call_via_r1
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _02000B2C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_02000B24:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000B2C: .4byte 0x0000FFFB

	thumb_func_start sub_02000B30
sub_02000B30: @ 0x02000B30
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _02000B60 @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _02000B64 @ =gUnk_03003E90
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_02000B48:
	ldr r0, _02000B68 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _02000B6C
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _02000BBE
	.align 2, 0
_02000B60: .4byte gUnk_03000A80
_02000B64: .4byte gUnk_03003E90
_02000B68: .4byte 0x04000128
_02000B6C:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _02000BA0 @ =gUnk_03002D34
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _02000BD4
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _02000BA4 @ =gUnk_03002C70
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _02000BE6
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _02000BAC
	ldr r5, _02000BA8 @ =0x0000FFFB
	b _02000BE6
	.align 2, 0
_02000BA0: .4byte gUnk_03002D34
_02000BA4: .4byte gUnk_03002C70
_02000BA8: .4byte 0x0000FFFB
_02000BAC:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _02000BBE
	cmp r0, #0x20
	blt _02000BE6
	cmp r0, #0x41
	bgt _02000BE6
	cmp r0, #0x40
	blt _02000BE6
_02000BBE:
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
	b _02000BE6
_02000BD4:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _02000BE6
	lsls r0, r2, #1
	ldr r1, _02000BFC @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_02000BE6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _02000B48
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_02000BFC: .4byte 0x04000120

	thumb_func_start sub_02000C00
sub_02000C00: @ 0x02000C00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _02000C64 @ =gUnk_03000A80
	ldr r1, _02000C68 @ =gUnk_03003E90
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _02000C6C @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl CpuSet
	ldrh r0, [r6, #6]
	ldr r3, _02000C70 @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _02000C74 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _02000C80
	ldr r0, _02000C78 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _02000C80
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _02000C80
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _02000C7C @ =sub_02000CC8
	b _02000CB2
	.align 2, 0
_02000C64: .4byte gUnk_03000A80
_02000C68: .4byte gUnk_03003E90
_02000C6C: .4byte 0x00000123
_02000C70: .4byte 0x0000FFFC
_02000C74: .4byte 0x04000128
_02000C78: .4byte gUnk_03002D34
_02000C7C: .4byte sub_02000CC8
_02000C80:
	ldr r3, _02000CBC @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _02000CB4
	ldr r0, _02000CC0 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _02000CB4
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _02000CB4
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _02000CC4 @ =sub_02000F68
_02000CB2:
	str r0, [r4]
_02000CB4:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02000CBC: .4byte 0x04000128
_02000CC0: .4byte gUnk_03002D34
_02000CC4: .4byte sub_02000F68

	thumb_func_start sub_02000CC8
sub_02000CC8: @ 0x02000CC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _02000D20 @ =gUnk_03000A80
	ldr r6, _02000D24 @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _02000D28 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _02000D2C @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _02000D0C
	ldr r0, _02000D30 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _02000D0C
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _02000D3C
_02000D0C:
	ldrh r0, [r4, #6]
	ldr r1, _02000D34 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _02000D38 @ =sub_02000C00
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _02000DBE
	.align 2, 0
_02000D20: .4byte gUnk_03000A80
_02000D24: .4byte gUnk_03003E90
_02000D28: .4byte 0x00000123
_02000D2C: .4byte 0x04000128
_02000D30: .4byte gUnk_03002D34
_02000D34: .4byte 0x0000FFFC
_02000D38: .4byte sub_02000C00
_02000D3C:
	adds r0, r5, #0
	bl sub_02000B30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _02000DBE
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _02000DBC
	cmp r0, #1
	bls _02000DBC
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02000DB0
	movs r1, #0
_02000D6A:
	ldr r0, _02000D88 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _02000D8C @ =gUnk_03000A88
	adds r4, r1, #1
	cmp r0, r1
	bne _02000D90
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl CpuSet
	b _02000DA4
	.align 2, 0
_02000D88: .4byte 0x04000128
_02000D8C: .4byte gUnk_03000A88
_02000D90:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _02000DB4 @ =gUnk_03002C70
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl CpuSet
_02000DA4:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _02000D6A
	ldr r0, _02000DB8 @ =sub_02000DC4
	str r0, [r5]
_02000DB0:
	movs r0, #1
	b _02000DBE
	.align 2, 0
_02000DB4: .4byte gUnk_03002C70
_02000DB8: .4byte sub_02000DC4
_02000DBC:
	movs r0, #0
_02000DBE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02000DC4
sub_02000DC4: @ 0x02000DC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _02000E2C @ =gUnk_03000A80
	mov ip, r0
	ldr r4, _02000E30 @ =gUnk_03003E90
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _02000E34 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _02000E38 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _02000E18
	ldr r1, _02000E3C @ =gUnk_03002D34
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _02000E18
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _02000E48
_02000E18:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _02000E40 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _02000E44 @ =sub_02000C00
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _02000F36
	.align 2, 0
_02000E2C: .4byte gUnk_03000A80
_02000E30: .4byte gUnk_03003E90
_02000E34: .4byte 0x00000123
_02000E38: .4byte 0x04000128
_02000E3C: .4byte gUnk_03002D34
_02000E40: .4byte 0x0000FFFC
_02000E44: .4byte sub_02000C00
_02000E48:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _02000EEE
	ldr r2, _02000E98 @ =gUnk_03002C70
	mov sl, r2
_02000E5C:
	ldr r0, _02000E9C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _02000ED0
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _02000EE0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _02000EE0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _02000EA4
	ldr r6, _02000EA0 @ =0x0000FFFB
	b _02000EE0
	.align 2, 0
_02000E98: .4byte gUnk_03002C70
_02000E9C: .4byte 0x04000128
_02000EA0: .4byte 0x0000FFFB
_02000EA4:
	ldrh r1, [r2, #2]
	ldr r0, _02000EB0 @ =0x00000123
	cmp r1, r0
	beq _02000EB8
	ldr r6, _02000EB4 @ =0x0000FFFA
	b _02000EE0
	.align 2, 0
_02000EB0: .4byte 0x00000123
_02000EB4: .4byte 0x0000FFFA
_02000EB8:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _02000EE0
	cmp r0, #0x41
	ble _02000EC8
	cmp r0, #0x42
	beq _02000ED0
	b _02000EE0
_02000EC8:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _02000EDC
_02000ED0:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_02000EDC:
	orrs r0, r1
	strh r0, [r4, #0xc]
_02000EE0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _02000E5C
_02000EEE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _02000F36
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _02000F1E
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _02000F18
_02000F08:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _02000F1E
	movs r0, #0x10
	lsls r0, r3
_02000F18:
	ands r0, r1
	cmp r0, #0
	bne _02000F08
_02000F1E:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _02000F34
	ldr r0, _02000F30 @ =sub_02000F44
	str r0, [r5]
	movs r0, #2
	b _02000F36
	.align 2, 0
_02000F30: .4byte sub_02000F44
_02000F34:
	movs r0, #1
_02000F36:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02000F44
sub_02000F44: @ 0x02000F44
	ldr r2, _02000F60 @ =gUnk_03003E90
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _02000F64 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_02000F60: .4byte gUnk_03003E90
_02000F64: .4byte 0x00000123

	thumb_func_start sub_02000F68
sub_02000F68: @ 0x02000F68
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _02000FC4 @ =gUnk_03000A80
	ldr r1, _02000FC8 @ =gUnk_03003E90
	ldr r6, _02000FCC @ =gUnk_03002C70
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _02000FD0 @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _02000FD4 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _02000FB0
	ldr r0, _02000FD8 @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _02000FB0
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _02000FE4
_02000FB0:
	ldrh r0, [r3, #6]
	ldr r1, _02000FDC @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _02000FE0 @ =sub_02000C00
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _02001014
	.align 2, 0
_02000FC4: .4byte gUnk_03000A80
_02000FC8: .4byte gUnk_03003E90
_02000FCC: .4byte gUnk_03002C70
_02000FD0: .4byte 0x00000123
_02000FD4: .4byte 0x04000128
_02000FD8: .4byte gUnk_03002D34
_02000FDC: .4byte 0x0000FFFC
_02000FE0: .4byte sub_02000C00
_02000FE4:
	ldrb r0, [r6]
	cmp r0, #2
	bne _02001012
	adds r0, r4, #0
	bl sub_02000B30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _02001014
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _02001012
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _02001012
	ldr r0, _0200101C @ =sub_02001020
	str r0, [r4]
_02001012:
	movs r0, #0
_02001014:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200101C: .4byte sub_02001020

	thumb_func_start sub_02001020
sub_02001020: @ 0x02001020
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _02001078 @ =gUnk_03000A80
	ldr r4, _0200107C @ =gUnk_03003E90
	ldr r6, _02001080 @ =gUnk_03002C70
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _02001084 @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _02001088 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _02001066
	ldr r0, _0200108C @ =gUnk_03002D34
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _02001066
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _02001098
_02001066:
	ldrh r0, [r7, #6]
	ldr r1, _02001090 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _02001094 @ =sub_02000C00
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _0200110A
	.align 2, 0
_02001078: .4byte gUnk_03000A80
_0200107C: .4byte gUnk_03003E90
_02001080: .4byte gUnk_03002C70
_02001084: .4byte 0x00000123
_02001088: .4byte 0x04000128
_0200108C: .4byte gUnk_03002D34
_02001090: .4byte 0x0000FFFC
_02001094: .4byte sub_02000C00
_02001098:
	ldrb r0, [r6]
	cmp r0, #2
	beq _020010A4
	movs r0, #1
	rsbs r0, r0, #0
	b _0200110A
_020010A4:
	adds r0, r5, #0
	bl sub_02000B30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0200110A
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _02001108
	movs r1, #0
_020010BA:
	ldr r0, _020010D8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _020010DC @ =gUnk_03000A88
	adds r7, r1, #1
	cmp r0, r1
	bne _020010E0
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl CpuSet
	b _020010F4
	.align 2, 0
_020010D8: .4byte 0x04000128
_020010DC: .4byte gUnk_03000A88
_020010E0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _02001110 @ =gUnk_03002C70
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl CpuSet
_020010F4:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _020010BA
	ldr r0, _02001114 @ =sub_02001118
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_02001108:
	movs r0, #0
_0200110A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02001110: .4byte gUnk_03002C70
_02001114: .4byte sub_02001118

	thumb_func_start sub_02001118
sub_02001118: @ 0x02001118
	push {lr}
	adds r1, r0, #0
	ldr r2, _0200113C @ =gUnk_03003E90
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _02001144
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _02001140 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _02001158
	.align 2, 0
_0200113C: .4byte gUnk_03003E90
_02001140: .4byte 0x00000123
_02001144:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _0200115C @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_02001158:
	pop {r1}
	bx r1
	.align 2, 0
_0200115C: .4byte 0x00000123

	thumb_func_start sub_02001160
sub_02001160: @ 0x02001160
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _020011C0 @ =0x0000FFFF
	movs r0, #0
	bl sub_0200AEE8
	ldr r1, _020011C4 @ =gUnk_030041E4
	ldr r0, _020011C8 @ =gUnk_03003F70
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _020011CC @ =gUnk_03007090
	movs r0, #0
	strb r0, [r1]
	ldr r1, _020011D0 @ =gUnk_03006858
	ldr r0, _020011D4 @ =gUnk_03004184
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_01
	ldr r1, _020011D8 @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _020011DC @ =gUnk_03002D20
	ldr r0, _020011E0 @ =0x06010000
	str r0, [r1]
	ldr r0, _020011E4 @ =sub_020012AC
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _020011E8 @ =sub_020012DC
	ldr r5, _020011EC @ =gUnk_03000D60
	cmp r1, #0
	beq _020011F0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _020011F6
	.align 2, 0
_020011C0: .4byte 0x0000FFFF
_020011C4: .4byte gUnk_030041E4
_020011C8: .4byte gUnk_03003F70
_020011CC: .4byte gUnk_03007090
_020011D0: .4byte gUnk_03006858
_020011D4: .4byte gUnk_03004184
_020011D8: .4byte gUnk_03002C68
_020011DC: .4byte gUnk_03002D20
_020011E0: .4byte 0x06010000
_020011E4: .4byte sub_020012AC
_020011E8: .4byte sub_020012DC
_020011EC: .4byte gUnk_03000D60
_020011F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_020011F6:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_0200036C
	bl sub_0200CEBC
	str r4, [sp, #4]
	ldr r1, _02001284 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _02001288 @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _0200128C @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02001220:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02001220
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _02001284 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _02001290 @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _02001294 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200123A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200123A
	ldr r0, _02001298 @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _0200129C @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl MultiSioInit
	bl sub_020001E8
	bl m4aMPlayAllStop
	ldr r0, _020012A0 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_0200125E:
	ldr r2, _020012A4 @ =gUnk_03001F90
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _020012A8 @ =gUnk_02027D4C
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _0200125E
	ldr r1, _020012A0 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02001284: .4byte 0x040000D4
_02001288: .4byte gUnk_03003E90
_0200128C: .4byte 0x85000005
_02001290: .4byte gUnk_03002C70
_02001294: .4byte 0x85000014
_02001298: .4byte gUnk_03002D34
_0200129C: .4byte gUnk_03002D38
_020012A0: .4byte 0x04000208
_020012A4: .4byte gUnk_03001F90
_020012A8: .4byte gUnk_02027D4C

	thumb_func_start sub_020012AC
sub_020012AC: @ 0x020012AC
	push {lr}
	ldr r0, _020012C8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020012CC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020012D0
	.align 2, 0
_020012C8: .4byte gUnk_03003DB0
_020012CC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020012D0:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start sub_020012DC
sub_020012DC: @ 0x020012DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0200036C
	bl sub_0200CEBC
	bl m4aMPlayAllStop
	ldr r0, _02001348 @ =gUnk_03000A40
	movs r3, #0
	str r3, [r0]
	ldr r2, _0200134C @ =gUnk_03002C20
	ldr r0, [r2]
	ldr r1, _02001350 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _02001354 @ =gUnk_03002CC8
	strh r3, [r0]
	ldr r1, _02001358 @ =gUnk_03003E70
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0200135C @ =gUnk_03003690
	ldr r0, _02001360 @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _02001364 @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _02001368 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0200136C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _02001370 @ =gUnk_03003E60
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _02001374 @ =sub_02001378
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001348: .4byte gUnk_03000A40
_0200134C: .4byte gUnk_03002C20
_02001350: .4byte 0xFFFFFBFF
_02001354: .4byte gUnk_03002CC8
_02001358: .4byte gUnk_03003E70
_0200135C: .4byte gUnk_03003690
_02001360: .4byte 0x00001F03
_02001364: .4byte 0x040000D4
_02001368: .4byte 0x8100C000
_0200136C: .4byte 0x81000200
_02001370: .4byte gUnk_03003E60
_02001374: .4byte sub_02001378

	thumb_func_start sub_02001378
sub_02001378: @ 0x02001378
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _020013EC @ =gUnk_03003E70
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _020013F0 @ =gUnk_03003690
	movs r2, #0
	ldr r0, _020013F4 @ =0x00001F03
	strh r0, [r1]
	ldr r0, _020013F8 @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
_02001394:
	ldr r4, _020013FC @ =gUnk_0200DAB4
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _02001400 @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _02001404 @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _02001408 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _02001394
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _0200140C @ =gUnk_03003F80
	str r0, [r5, #4]
	ldr r0, _02001410 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _02001414 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _02001418 @ =nullsub_04
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020013EC: .4byte gUnk_03003E70
_020013F0: .4byte gUnk_03003690
_020013F4: .4byte 0x00001F03
_020013F8: .4byte gUnk_03003E60
_020013FC: .4byte gUnk_0200DAB4
_02001400: .4byte 0x040000D4
_02001404: .4byte 0x0600F800
_02001408: .4byte 0x8000001E
_0200140C: .4byte gUnk_03003F80
_02001410: .4byte 0x80000010
_02001414: .4byte gUnk_03002C20
_02001418: .4byte nullsub_04

	thumb_func_start nullsub_04
nullsub_04: @ 0x0200141C
	bx lr
	.align 2, 0

	thumb_func_start sub_02001420
sub_02001420: @ 0x02001420
	push {r4, lr}
	sub sp, #8
	ldr r0, _0200144C @ =sub_02001490
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _02001450 @ =nullsub_05
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02001454
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _0200145A
	.align 2, 0
_0200144C: .4byte sub_02001490
_02001450: .4byte nullsub_05
_02001454:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_0200145A:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _02001488 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _0200148C @ =sub_02001524
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_02001960
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001488: .4byte 0x01000052
_0200148C: .4byte sub_02001524

	thumb_func_start sub_02001490
sub_02001490: @ 0x02001490
	push {r4, r5, lr}
	ldr r0, _020014AC @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020014B0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020014B4
	.align 2, 0
_020014AC: .4byte gUnk_03003DB0
_020014B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020014B4:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_020014C4:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _0200151C @ =gUnk_03000AB0
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
	bls _020014C4
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0200150E
	adds r0, r4, #0
	bl sub_02001A70
_0200150E:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200151C: .4byte gUnk_03000AB0

	thumb_func_start nullsub_05
nullsub_05: @ 0x02001520
	bx lr
	.align 2, 0

	thumb_func_start sub_02001524
sub_02001524: @ 0x02001524
	push {r4, lr}
	ldr r3, _0200154C @ =gUnk_03003E70
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _02001550 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _02001554 @ =gUnk_03003E60
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _02001558 @ =sub_0200155C
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200154C: .4byte gUnk_03003E70
_02001550: .4byte 0x0000F9FF
_02001554: .4byte gUnk_03003E60
_02001558: .4byte sub_0200155C

	thumb_func_start sub_0200155C
sub_0200155C: @ 0x0200155C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _020015E0 @ =gUnk_0200DE98
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _020015E4 @ =0x0600C000
	bl LZ77UnCompVram
	movs r2, #0
	str r2, [sp]
	ldr r1, _020015E8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _020015EC @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _020015F0 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _020015F4 @ =gUnk_03006880
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _020015F8 @ =gUnk_03003660
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _020015FC @ =0x0600E480
_02001598:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _02001598
	ldr r3, _02001600 @ =0x0600E4C0
	movs r2, #0
_020015B0:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _020015B0
	ldr r2, _02001604 @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _02001608 @ =sub_0200160C
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020015E0: .4byte gUnk_0200DE98
_020015E4: .4byte 0x0600C000
_020015E8: .4byte 0x040000D4
_020015EC: .4byte 0x0600CC60
_020015F0: .4byte 0x85000008
_020015F4: .4byte gUnk_03006880
_020015F8: .4byte gUnk_03003660
_020015FC: .4byte 0x0600E480
_02001600: .4byte 0x0600E4C0
_02001604: .4byte gUnk_03003E70
_02001608: .4byte sub_0200160C

	thumb_func_start sub_0200160C
sub_0200160C: @ 0x0200160C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0200CE08
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _0200162C @ =sub_02001630
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200162C: .4byte sub_02001630

	thumb_func_start sub_02001630
sub_02001630: @ 0x02001630
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _02001654 @ =0xFFFF0000
	cmp r1, r0
	bne _0200164C
	bl sub_0200CE60
	ldr r0, _02001658 @ =sub_0200165C
	str r0, [r4, #0x7c]
_0200164C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001654: .4byte 0xFFFF0000
_02001658: .4byte sub_0200165C

	thumb_func_start sub_0200165C
sub_0200165C: @ 0x0200165C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_02000228
	ldr r0, _0200167C @ =sub_02001680
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200167C: .4byte sub_02001680

	thumb_func_start sub_02001680
sub_02001680: @ 0x02001680
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _020016AC @ =0xFFFF0000
	cmp r0, r1
	bne _020016B8
	ldr r0, _020016B0 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	ldr r0, _020016B4 @ =gUnk_03000D60
	str r5, [r0]
	bl sub_02001160
	b _02001742
	.align 2, 0
_020016AC: .4byte 0xFFFF0000
_020016B0: .4byte gUnk_03003DB0
_020016B4: .4byte gUnk_03000D60
_020016B8:
	bl sub_02000308
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0200170C
	bl sub_020002E0
	ldr r1, _020016F0 @ =gUnk_03000A5C
	ldr r0, _020016F4 @ =gUnk_03000A80
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _020016F8 @ =gUnk_03000A68
	ldr r0, _020016FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _02001700 @ =gUnk_03000A74
	movs r0, #4
	strb r0, [r1]
	ldr r1, _02001704 @ =gUnk_03000A50
	movs r0, #0
	strb r0, [r1]
	ldr r0, _02001708 @ =sub_02001748
	str r0, [r4, #0x7c]
	b _02001742
	.align 2, 0
_020016F0: .4byte gUnk_03000A5C
_020016F4: .4byte gUnk_03000A80
_020016F8: .4byte gUnk_03000A68
_020016FC: .4byte 0x04000128
_02001700: .4byte gUnk_03000A74
_02001704: .4byte gUnk_03000A50
_02001708: .4byte sub_02001748
_0200170C:
	cmp r0, #1
	bne _02001728
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _02001742
	bl sub_020002F8
	b _02001742
_02001728:
	cmp r0, #0
	bge _0200173C
	bl sub_020002E0
	ldr r0, _02001738 @ =sub_0200165C
	str r0, [r4, #0x7c]
	b _02001742
	.align 2, 0
_02001738: .4byte sub_0200165C
_0200173C:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_02001742:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02001748
sub_02001748: @ 0x02001748
	ldr r1, _02001750 @ =sub_02001754
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_02001750: .4byte sub_02001754

	thumb_func_start sub_02001754
sub_02001754: @ 0x02001754
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_02001762:
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
	bls _02001762
	movs r0, #3
	bl sub_02000314
	bl sub_02000378
	ldr r0, _0200179C @ =sub_020017A0
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200179C: .4byte sub_020017A0

	thumb_func_start sub_020017A0
sub_020017A0: @ 0x020017A0
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
	bls _020017D6
	movs r0, #0
	strh r0, [r2]
	bl sub_02000388
	cmp r0, #0
	bne _020017D2
	bl sub_02001160
	b _020017D6
_020017D2:
	ldr r0, _020017DC @ =sub_020017E0
	str r0, [r4, #0x7c]
_020017D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020017DC: .4byte sub_020017E0

	thumb_func_start sub_020017E0
sub_020017E0: @ 0x020017E0
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _020017EC @ =sub_020017F0
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_020017EC: .4byte sub_020017F0

	thumb_func_start sub_020017F0
sub_020017F0: @ 0x020017F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _02001810
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _02001810
	subs r0, #1
	strh r0, [r1]
_02001810:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02001828
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _02001828
	adds r0, #1
	strh r0, [r1]
_02001828:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_02001A20
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0200184C
	ldr r0, _02001854 @ =sub_02001858
	str r0, [r4, #0x7c]
_0200184C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02001854: .4byte sub_02001858

	thumb_func_start sub_02001858
sub_02001858: @ 0x02001858
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _02001868 @ =sub_0200186C
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_02001868: .4byte sub_0200186C

	thumb_func_start sub_0200186C
sub_0200186C: @ 0x0200186C
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
	bl sub_02001A20
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0200189A
	ldr r0, _020018A0 @ =sub_020018A4
	str r0, [r4, #0x7c]
_0200189A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020018A0: .4byte sub_020018A4

	thumb_func_start sub_020018A4
sub_020018A4: @ 0x020018A4
	ldr r2, _020018BC @ =gUnk_03002CC8
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _020018C0 @ =sub_020018C4
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_020018BC: .4byte gUnk_03002CC8
_020018C0: .4byte sub_020018C4

	thumb_func_start sub_020018C4
sub_020018C4: @ 0x020018C4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _020018F0 @ =gUnk_03002CC8
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
	bls _020018EA
	strh r4, [r5, #4]
	ldr r0, _020018F4 @ =sub_020018F8
	str r0, [r3, #0x7c]
_020018EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020018F0: .4byte gUnk_03002CC8
_020018F4: .4byte sub_020018F8

	thumb_func_start sub_020018F8
sub_020018F8: @ 0x020018F8
	push {lr}
	sub sp, #4
	ldr r1, _02001944 @ =gUnk_03000A44
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _02001948 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _0200194C @ =0x01000200
	mov r0, sp
	bl CpuSet
	ldr r1, _02001950 @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _02001954 @ =gUnk_02030000
	ldr r1, _02001958 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl CpuSet
	ldr r0, _0200195C @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	bl sub_02003BA4
	bl sub_02003BD4
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02001944: .4byte gUnk_03000A44
_02001948: .4byte 0x00007FFF
_0200194C: .4byte 0x01000200
_02001950: .4byte gUnk_03002CC8
_02001954: .4byte gUnk_02030000
_02001958: .4byte 0x06008000
_0200195C: .4byte gUnk_03003DB0

	thumb_func_start sub_02001960
sub_02001960: @ 0x02001960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_02001A20
	ldr r0, _02001A1C @ =0x06010000
	str r0, [r7]
	movs r0, #0
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	mov r1, sl
	strh r1, [r7, #0x14]
	movs r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r7, #0xc]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_0200B6B8
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _02001A1C @ =0x06010000
	str r0, [r7, #0x28]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #2
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_0200B6B8
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _02001A1C @ =0x06010000
	str r0, [r7, #0x50]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_0200B6B8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02001A1C: .4byte 0x06010000

	thumb_func_start sub_02001A20
sub_02001A20: @ 0x02001A20
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _02001A38 @ =gUnk_0200DAB8
	ldr r4, _02001A3C @ =gUnk_03003620
	ldr r2, _02001A40 @ =gUnk_03002C20
	cmp r1, #0
	beq _02001A48
	ldr r1, _02001A44 @ =0x040000D4
	adds r0, #1
	b _02001A4C
	.align 2, 0
_02001A38: .4byte gUnk_0200DAB8
_02001A3C: .4byte gUnk_03003620
_02001A40: .4byte gUnk_03002C20
_02001A44: .4byte 0x040000D4
_02001A48:
	ldr r1, _02001A68 @ =0x040000D4
	adds r0, #2
_02001A4C:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _02001A6C @ =0x80000010
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
_02001A68: .4byte 0x040000D4
_02001A6C: .4byte 0x80000010

	thumb_func_start sub_02001A70
sub_02001A70: @ 0x02001A70
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
	bl sub_0200BEC0
	pop {r0}
	bx r0

	thumb_func_start sub_02001A90
sub_02001A90: @ 0x02001A90
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
	bl sub_02001BEC
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001ACC
sub_02001ACC: @ 0x02001ACC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _02001AE4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_02001AE4:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _02001AF6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_02001AF6:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _02001B5E
	adds r0, r4, #0
	bl sub_02001B68
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02001B58
	adds r0, r4, #0
	bl sub_0200B6B8
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _02001B30
	ldr r0, _02001B2C @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _02001B48
	.align 2, 0
_02001B2C: .4byte 0x0000FDFF
_02001B30:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02001B40
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _02001B4E
_02001B40:
	ldr r0, _02001B64 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_02001B48:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_02001B4E:
	cmp r2, #0
	beq _02001B58
	adds r0, r2, #0
	bl sub_02001ACC
_02001B58:
	adds r0, r4, #0
	bl sub_0200BEC0
_02001B5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001B64: .4byte 0x0000FBFF

	thumb_func_start sub_02001B68
sub_02001B68: @ 0x02001B68
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
	bne _02001BA8
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
	bl sub_02001BB0
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_02001BA8:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02001BB0
sub_02001BB0: @ 0x02001BB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02001BC0
	bl sub_02001BB0
_02001BC0:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _02001BDE
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _02001BE4
_02001BDE:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_02001BE4:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02001BEC
sub_02001BEC: @ 0x02001BEC
	push {lr}
_02001BEE:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _02001BF8
	adds r0, r1, #0
	b _02001BEE
_02001BF8:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02001C00
sub_02001C00: @ 0x02001C00
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _02001C20 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02001C1A
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_02001C1A:
	pop {r0}
	bx r0
	.align 2, 0
_02001C20: .4byte 0x0000FEFF

	thumb_func_start sub_02001C24
sub_02001C24: @ 0x02001C24
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
	beq _02001C5C
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_02001C5C:
	adds r0, r2, #4
	bl sub_02001ACC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02001C68
sub_02001C68: @ 0x02001C68
	push {r4, lr}
	ldr r0, _02001C84 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02001C88
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001C8C
	.align 2, 0
_02001C84: .4byte gUnk_03003DB0
_02001C88:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001C8C:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_02001C24
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001CC0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02001CB2
	subs r0, #1
	strh r0, [r1]
	b _02001CD4
_02001CB2:
	ldr r0, _02001CBC @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	b _02001CD4
	.align 2, 0
_02001CBC: .4byte gUnk_03003DB0
_02001CC0:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02001CD4
	ldr r0, _02001CDC @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
_02001CD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001CDC: .4byte gUnk_03003DB0

	thumb_func_start sub_02001CE0
sub_02001CE0: @ 0x02001CE0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _02001D14 @ =sub_02001E00
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _02001D18
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02001D1E
	.align 2, 0
_02001D14: .4byte sub_02001E00
_02001D18:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02001D1E:
	adds r2, r0, #0
	cmp r3, #0
	ble _02001D2A
	movs r0, #0
	strb r0, [r2, #3]
	b _02001D32
_02001D2A:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_02001D32:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _02001D48 @ =gUnk_03002CC8
	cmp r5, #0
	beq _02001D4C
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _02001D54
	.align 2, 0
_02001D48: .4byte gUnk_03002CC8
_02001D4C:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_02001D54:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _02001D6C @ =gUnk_03002CC8
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
_02001D6C: .4byte gUnk_03002CC8

	thumb_func_start sub_02001D70
sub_02001D70: @ 0x02001D70
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _02001DA4 @ =sub_02001E00
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _02001DA8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02001DAE
	.align 2, 0
_02001DA4: .4byte sub_02001E00
_02001DA8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02001DAE:
	adds r2, r0, #0
	cmp r3, #0
	ble _02001DBA
	movs r0, #0
	strb r0, [r2, #3]
	b _02001DC2
_02001DBA:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_02001DC2:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _02001DD8 @ =gUnk_03002CC8
	cmp r5, #0
	beq _02001DDC
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _02001DE4
	.align 2, 0
_02001DD8: .4byte gUnk_03002CC8
_02001DDC:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_02001DE4:
	strb r6, [r2, #2]
	ldr r1, _02001DFC @ =gUnk_03002CC8
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
_02001DFC: .4byte gUnk_03002CC8

	thumb_func_start sub_02001E00
sub_02001E00: @ 0x02001E00
	push {r4, lr}
	ldr r4, _02001E1C @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _02001E20 @ =gUnk_03002CC8
	cmp r0, #0
	beq _02001E24
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001E28
	.align 2, 0
_02001E1C: .4byte gUnk_03003DB0
_02001E20: .4byte gUnk_03002CC8
_02001E24:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001E28:
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
	beq _02001E80
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _02001E66
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _02001E6E
	movs r0, #0x1e
	b _02001E74
_02001E66:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001E72
_02001E6E:
	strh r2, [r3, #4]
	b _02001E76
_02001E72:
	movs r0, #0x1f
_02001E74:
	strh r0, [r3, #4]
_02001E76:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_0200AF60
_02001E80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001E88
sub_02001E88: @ 0x02001E88
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _02001EC4 @ =sub_02001EF8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _02001EC8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02001ECE
	.align 2, 0
_02001EC4: .4byte sub_02001EF8
_02001EC8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02001ECE:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _02001EDA
	rsbs r4, r4, #0
_02001EDA:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _02001EE4
	movs r0, #0x10
	b _02001EE6
_02001EE4:
	movs r0, #0x20
_02001EE6:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02001EF8
sub_02001EF8: @ 0x02001EF8
	push {r4, lr}
	ldr r0, _02001F14 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02001F18
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001F1C
	.align 2, 0
_02001F14: .4byte gUnk_03003DB0
_02001F18:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001F1C:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _02001F4E
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _02001F46
	adds r0, r1, #0
	movs r1, #1
	bl sub_02001CE0
	b _02001F4E
_02001F46:
	adds r0, r1, #0
	movs r1, #0
	bl sub_02001CE0
_02001F4E:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02001F86
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _02001F7A
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_02001CE0
	b _02001F86
_02001F7A:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_02001CE0
_02001F86:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _02001FBE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001FB4
	ldr r1, _02001FAC @ =gUnk_03002CC8
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _02001FB0 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	b _02001FBE
	.align 2, 0
_02001FAC: .4byte gUnk_03002CC8
_02001FB0: .4byte gUnk_03003DB0
_02001FB4:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_02001FBE:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _02001FDC @ =gUnk_03002CC8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02001FD6
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_02001FD6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001FDC: .4byte gUnk_03002CC8

	thumb_func_start sub_02001FE0
sub_02001FE0: @ 0x02001FE0
	push {lr}
	ldr r1, _02001FF8 @ =gUnk_03002CC8
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02001FEE
	cmp r0, #0x1f
	bne _02001FFC
_02001FEE:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _02001FFC
	movs r0, #0
	b _02001FFE
	.align 2, 0
_02001FF8: .4byte gUnk_03002CC8
_02001FFC:
	movs r0, #1
_02001FFE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02002004
sub_02002004: @ 0x02002004
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _02002034 @ =sub_02002068
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_0200AE44
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _02002038
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200203C
	.align 2, 0
_02002034: .4byte sub_02002068
_02002038:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200203C:
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

	thumb_func_start sub_02002068
sub_02002068: @ 0x02002068
	push {lr}
	ldr r0, _02002084 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002088
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200208C
	.align 2, 0
_02002084: .4byte gUnk_03003DB0
_02002088:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200208C:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _020020A4
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _020020D8
_020020A4:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _020020B8
	strb r1, [r2, #0xc]
_020020B8:
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
	bl CpuSet
_020020D8:
	pop {r0}
	bx r0

	thumb_func_start sub_020020DC
sub_020020DC: @ 0x020020DC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0200210C @ =sub_0200213C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_0200AE44
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _02002110
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002114
	.align 2, 0
_0200210C: .4byte sub_0200213C
_02002110:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002114:
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

	thumb_func_start sub_0200213C
sub_0200213C: @ 0x0200213C
	push {r4, lr}
	ldr r0, _02002158 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200215C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002160
	.align 2, 0
_02002158: .4byte gUnk_03003DB0
_0200215C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002160:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _02002178
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _020021CA
_02002178:
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
	blo _0200219C
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_0200219C:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _020021D0 @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _020021D4 @ =gUnk_03003F80
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _020021D8 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_020021CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020021D0: .4byte 0x040000D4
_020021D4: .4byte gUnk_03003F80
_020021D8: .4byte gUnk_03002C20

	thumb_func_start sub_020021DC
sub_020021DC: @ 0x020021DC
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
	ldr r0, _02002264 @ =sub_020027EC
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_0200AE44
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _02002268 @ =gUnk_0200DAB8
	mov ip, r0
	ldr r4, _0200226C @ =gUnk_03002C20
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
	beq _02002270
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _02002276
	.align 2, 0
_02002264: .4byte sub_020027EC
_02002268: .4byte gUnk_0200DAB8
_0200226C: .4byte gUnk_03002C20
_02002270:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_02002276:
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
	ldr r5, _02002674 @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _02002678 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _0200267C @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _02002680 @ =0x000002B3
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
	ldr r0, _02002684 @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _020022E2
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_020022E2:
	ldr r1, _02002688 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _0200268C @ =gUnk_03003440
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _02002690 @ =0x80000010
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
	ldr r5, _0200268C @ =gUnk_03003440
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
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r0, _02002698 @ =0x06010000
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
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r1, _02002698 @ =0x06010000
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
	ldr r0, _0200269C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r2, _02002698 @ =0x06010000
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
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r1, _02002698 @ =0x06010000
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
	ldr r0, _0200269C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r2, _02002698 @ =0x06010000
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
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r2, _02002698 @ =0x06010000
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
	ldr r0, _0200269C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r0, _02002698 @ =0x06010000
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
	ldr r2, _02002694 @ =0x05000011
	bl CpuSet
	ldr r2, _02002698 @ =0x06010000
	str r2, [r4]
	b _020026A0
	.align 2, 0
_02002674: .4byte 0x000002AE
_02002678: .4byte 0x000002B1
_0200267C: .4byte 0x000002B2
_02002680: .4byte 0x000002B3
_02002684: .4byte 0x000002B6
_02002688: .4byte 0x040000D4
_0200268C: .4byte gUnk_03003440
_02002690: .4byte 0x80000010
_02002694: .4byte 0x05000011
_02002698: .4byte 0x06010000
_0200269C: .4byte 0x0000FFEF
_020026A0:
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
	ldr r0, _020027E0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _020027E4 @ =0x05000011
	bl CpuSet
	ldr r0, _020027E8 @ =0x06010000
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
	ldr r2, _020027E4 @ =0x05000011
	bl CpuSet
	ldr r2, _020027E8 @ =0x06010000
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
	ldr r2, _020027E0 @ =0x0000FFEF
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
_020027E0: .4byte 0x0000FFEF
_020027E4: .4byte 0x05000011
_020027E8: .4byte 0x06010000

	thumb_func_start sub_020027EC
sub_020027EC: @ 0x020027EC
	ldr r0, _020027F8 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _020027FC @ =sub_02002800
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_020027F8: .4byte gUnk_03003DB0
_020027FC: .4byte sub_02002800

	thumb_func_start sub_02002800
sub_02002800: @ 0x02002800
	push {r4, r5, r6, lr}
	ldr r6, _0200281C @ =gUnk_03003DB0
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002820
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002824
	.align 2, 0
_0200281C: .4byte gUnk_03003DB0
_02002820:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002824:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200283C
	movs r1, #0
	b _02002840
_0200283C:
	ldr r0, _02002860 @ =gUnk_03000AB0
	ldrh r1, [r0, #0x10]
_02002840:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _020028B8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02002864
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _02002954
	.align 2, 0
_02002860: .4byte gUnk_03000AB0
_02002864:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0200287C
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _02002954
_0200287C:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0200289C
	ldr r1, _02002894 @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _02002898 @ =sub_020030F8
	b _02002952
	.align 2, 0
_02002894: .4byte 0x000002AE
_02002898: .4byte sub_020030F8
_0200289C:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _02002954
	ldr r1, _020028B0 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _020028B4 @ =sub_02002E08
	b _02002952
	.align 2, 0
_020028B0: .4byte 0x000002AE
_020028B4: .4byte sub_02002E08
_020028B8:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _02002920
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _020028FC
	ldr r1, _020028DC @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _020028E4
	ldr r0, _020028E0 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _020028FA
	.align 2, 0
_020028DC: .4byte 0x000002AD
_020028E0: .4byte 0x000002B2
_020028E4:
	cmp r0, #1
	bne _020028F4
	ldr r0, _020028F0 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _020028FA
	.align 2, 0
_020028F0: .4byte 0x000002B2
_020028F4:
	ldr r0, _02002914 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_020028FA:
	strb r0, [r1]
_020028FC:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02002918
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _0200291A
	.align 2, 0
_02002914: .4byte 0x000002B2
_02002918:
	movs r0, #1
_0200291A:
	orrs r0, r1
	strb r0, [r2]
	b _02002954
_02002920:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _02002940
	ldr r1, _02002938 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _0200293C @ =sub_02002A48
	b _02002952
	.align 2, 0
_02002938: .4byte 0x000002AE
_0200293C: .4byte sub_02002A48
_02002940:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _02002954
	ldr r1, _02002994 @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _02002998 @ =sub_02002C28
_02002952:
	str r0, [r1, #8]
_02002954:
	adds r0, r4, #0
	bl sub_020029B0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _020029AA
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0200299C
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	b _020029AA
	.align 2, 0
_02002994: .4byte 0x000002AE
_02002998: .4byte sub_02002C28
_0200299C:
	adds r0, r4, #4
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_02001ACC
_020029AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_020029B0
sub_020029B0: @ 0x020029B0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _020029E8 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _02002A36
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _020029EC @ =gUnk_0200DAB8
	ldr r6, _020029F0 @ =gUnk_03003440
	ldr r5, _020029F4 @ =gUnk_03002C20
	cmp r0, #0
	beq _020029FC
	ldr r2, _020029F8 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _02002A04
	.align 2, 0
_020029E8: .4byte 0x000002B3
_020029EC: .4byte gUnk_0200DAB8
_020029F0: .4byte gUnk_03003440
_020029F4: .4byte gUnk_03002C20
_020029F8: .4byte 0x000002B2
_020029FC:
	ldr r2, _02002A3C @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_02002A04:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _02002A40 @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _02002A44 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_02002A36:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02002A3C: .4byte 0x000002B2
_02002A40: .4byte 0x040000D4
_02002A44: .4byte 0x80000010

	thumb_func_start sub_02002A48
sub_02002A48: @ 0x02002A48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _02002A6C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002A70
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002A74
	.align 2, 0
_02002A6C: .4byte gUnk_03003DB0
_02002A70:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002A74:
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
	beq _02002B20
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _02002B18 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _02002B1C @ =0x000002B1
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
	b _02002B76
	.align 2, 0
_02002B18: .4byte 0x0000F83F
_02002B1C: .4byte 0x000002B1
_02002B20:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _02002BA8 @ =0x0000F83F
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
	ldr r4, _02002BAC @ =0x000002B1
_02002B76:
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
	beq _02002BB4
	ldr r0, _02002BB0 @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _02002BBA
	.align 2, 0
_02002BA8: .4byte 0x0000F83F
_02002BAC: .4byte 0x000002B1
_02002BB0: .4byte 0x000002B2
_02002BB4:
	ldr r4, _02002C18 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_02002BBA:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_020029B0
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002BE0
	adds r0, r5, #4
	bl sub_02001ACC
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_02001ACC
_02002BE0:
	ldr r0, _02002C1C @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _02002C06
	ldr r0, _02002C20 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _02002C24 @ =sub_02002800
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_02002C06:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002C18: .4byte 0x000002B2
_02002C1C: .4byte 0x000002AE
_02002C20: .4byte gUnk_03003DB0
_02002C24: .4byte sub_02002800

	thumb_func_start sub_02002C28
sub_02002C28: @ 0x02002C28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _02002C48 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002C4C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002C50
	.align 2, 0
_02002C48: .4byte gUnk_03003DB0
_02002C4C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002C50:
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
	beq _02002CBC
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _02002CB8 @ =0x000002B1
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
	b _02002CEE
	.align 2, 0
_02002CB8: .4byte 0x000002B1
_02002CBC:
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
	ldr r2, _02002D08 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_02002CEE:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02002D10
	ldr r2, _02002D0C @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _02002D16
	.align 2, 0
_02002D08: .4byte 0x000002B1
_02002D0C: .4byte 0x000002B2
_02002D10:
	ldr r3, _02002D98 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_02002D16:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_020029B0
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002D3C
	adds r0, r4, #4
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_02001ACC
_02002D3C:
	ldr r0, _02002D9C @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _02002DF8
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _02002DA0 @ =gUnk_03003DB0
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _02002DA4 @ =sub_02002800
	mov r8, r0
	cmp r1, #0
	beq _02002DAC
	ldr r1, _02002DA8 @ =0x0000F83F
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
	b _02002DD0
	.align 2, 0
_02002D98: .4byte 0x000002B2
_02002D9C: .4byte 0x000002AE
_02002DA0: .4byte gUnk_03003DB0
_02002DA4: .4byte sub_02002800
_02002DA8: .4byte 0x0000F83F
_02002DAC:
	ldr r1, _02002E04 @ =0x0000F83F
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
_02002DD0:
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
_02002DF8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002E04: .4byte 0x0000F83F

	thumb_func_start sub_02002E08
sub_02002E08: @ 0x02002E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02002E30 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02002E34 @ =gUnk_0200DEB4
	cmp r0, #0
	beq _02002E38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002E3C
	.align 2, 0
_02002E30: .4byte gUnk_03003DB0
_02002E34: .4byte gUnk_0200DEB4
_02002E38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002E3C:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _02003050 @ =0x000002AD
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
	ldr r0, _02003054 @ =0x0000F83F
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
	ldr r1, _02003058 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _0200305C @ =0x00000133
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
	ldr r1, _02003054 @ =0x0000F83F
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
	ldr r1, _02003054 @ =0x0000F83F
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
	ldr r1, _02003054 @ =0x0000F83F
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
	ldr r1, _02003054 @ =0x0000F83F
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
	ldr r3, _02003054 @ =0x0000F83F
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
	bne _02003064
	ldr r3, _02003060 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _0200307A
	.align 2, 0
_02003050: .4byte 0x000002AD
_02003054: .4byte 0x0000F83F
_02003058: .4byte 0x000002B1
_0200305C: .4byte 0x00000133
_02003060: .4byte 0x000002B2
_02003064:
	cmp r0, #1
	bne _02003074
	ldr r0, _02003070 @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _0200307A
	.align 2, 0
_02003070: .4byte 0x000002B2
_02003074:
	ldr r2, _020030E4 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_0200307A:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_020029B0
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _020030B0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_02001ACC
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_02001ACC
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_02001ACC
_020030B0:
	ldr r0, _020030E8 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _020030D2
	ldr r0, _020030EC @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _020030F0 @ =sub_02002800
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _020030F4 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_020030D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020030E4: .4byte 0x000002B2
_020030E8: .4byte 0x000002AE
_020030EC: .4byte gUnk_03003DB0
_020030F0: .4byte sub_02002800
_020030F4: .4byte 0x000002AD

	thumb_func_start sub_020030F8
sub_020030F8: @ 0x020030F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02003120 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02003124 @ =gUnk_0200DEB4
	cmp r0, #0
	beq _02003128
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200312C
	.align 2, 0
_02003120: .4byte gUnk_03003DB0
_02003124: .4byte gUnk_0200DEB4
_02003128:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200312C:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _0200333C @ =0x000002AD
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
	ldr r5, _02003340 @ =0x0000F83F
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
	ldr r1, _02003344 @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _02003348 @ =0x00000133
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
	bne _02003350
	ldr r2, _0200334C @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _02003366
	.align 2, 0
_0200333C: .4byte 0x000002AD
_02003340: .4byte 0x0000F83F
_02003344: .4byte 0x000002B1
_02003348: .4byte 0x00000133
_0200334C: .4byte 0x000002B2
_02003350:
	cmp r0, #1
	bne _02003360
	ldr r3, _0200335C @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _02003366
	.align 2, 0
_0200335C: .4byte 0x000002B2
_02003360:
	ldr r5, _020033D0 @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_02003366:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_020029B0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0200339C
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_02001ACC
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_02001ACC
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_02001ACC
_0200339C:
	ldr r0, _020033D4 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _020033BE
	ldr r0, _020033D8 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _020033DC @ =sub_02002800
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _020033E0 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_020033BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020033D0: .4byte 0x000002B2
_020033D4: .4byte 0x000002AE
_020033D8: .4byte gUnk_03003DB0
_020033DC: .4byte sub_02002800
_020033E0: .4byte 0x000002AD

	thumb_func_start sub_020033E4
sub_020033E4: @ 0x020033E4
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020033FA
	movs r0, #0
	b _020033FC
_020033FA:
	movs r0, #1
_020033FC:
	pop {r1}
	bx r1

	thumb_func_start sub_02003400
sub_02003400: @ 0x02003400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xdc
	adds r4, r0, #0
	str r1, [sp, #8]
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _02003518 @ =gUnk_03000A5C
	adds r1, r4, #0
	adds r1, #0x94
	ldr r2, _0200351C @ =gUnk_03000A68
	adds r5, r4, #0
	adds r5, #0x9a
	movs r3, #0x98
	adds r3, r3, r4
	mov r8, r3
	movs r3, #0x9c
	adds r3, r3, r4
	mov ip, r3
	adds r3, r4, #0
	adds r3, #0x9e
	str r3, [sp, #0x10]
	adds r3, #2
	str r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x1c]
	adds r3, #2
	str r3, [sp, #0x20]
	adds r3, #2
	str r3, [sp, #0x24]
	adds r3, #2
	str r3, [sp, #0x28]
	adds r3, #2
	str r3, [sp, #0x2c]
	adds r3, #2
	str r3, [sp, #0x30]
	adds r3, #4
	str r3, [sp, #0x34]
	adds r3, #2
	str r3, [sp, #0x38]
	adds r3, #1
	str r3, [sp, #0x3c]
	adds r3, #1
	str r3, [sp, #0x40]
	adds r3, #2
	str r3, [sp, #0x44]
	adds r3, #2
	str r3, [sp, #0x48]
	adds r3, #4
	str r3, [sp, #0x4c]
	adds r3, #1
	str r3, [sp, #0x50]
	adds r3, #1
	str r3, [sp, #0x54]
	adds r3, #1
	str r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x5c]
	adds r3, #8
	str r3, [sp, #0x60]
	adds r3, #4
	str r3, [sp, #0x64]
	adds r3, #4
	str r3, [sp, #0x68]
	adds r3, #4
	str r3, [sp, #0x6c]
	adds r3, #4
	str r3, [sp, #0x70]
	ldrb r3, [r7]
	str r3, [sp, #0x74]
	adds r3, r4, #0
	adds r3, #0xdc
	str r3, [sp, #0x78]
	ldrb r3, [r7, #1]
	str r3, [sp, #0x7c]
	adds r3, r4, #0
	adds r3, #0xe0
	str r3, [sp, #0x80]
	adds r3, #4
	str r3, [sp, #0x84]
	movs r3, #0xe5
	adds r3, r3, r4
	mov sl, r3
	adds r3, r4, #0
	adds r3, #0xe6
	str r3, [sp, #0x88]
	adds r3, #2
	str r3, [sp, #0x8c]
	mov r3, sp
	adds r3, #4
	str r3, [sp, #0x90]
	adds r3, r4, #0
	adds r3, #0x44
	str r3, [sp, #0x94]
	adds r3, #0x14
	str r3, [sp, #0x98]
	subs r3, #8
	str r3, [sp, #0x9c]
	adds r3, #0xe
	str r3, [sp, #0xa0]
	subs r3, #4
	str r3, [sp, #0xa4]
	adds r3, #5
	str r3, [sp, #0xa8]
	adds r3, #1
	str r3, [sp, #0xac]
	adds r3, #3
	str r3, [sp, #0xb0]
	subs r3, #0xf
	str r3, [sp, #0xb4]
	adds r3, #2
	str r3, [sp, #0xb8]
	adds r3, #0x1e
	str r3, [sp, #0xbc]
	adds r3, #2
	str r3, [sp, #0xc0]
	adds r3, #2
	str r3, [sp, #0xc4]
	adds r3, #2
	str r3, [sp, #0xc8]
	adds r3, #6
	str r3, [sp, #0xcc]
	adds r3, #4
	str r3, [sp, #0xd0]
	adds r3, #4
	str r3, [sp, #0xd4]
	adds r3, #4
	str r3, [sp, #0xd8]
	ldrb r0, [r0]
	cmp r6, r0
	bhs _02003520
	movs r0, #0
	b _02003522
	.align 2, 0
_02003518: .4byte gUnk_03000A5C
_0200351C: .4byte gUnk_03000A68
_02003520:
	movs r0, #1
_02003522:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r6, r2
	bne _02003536
	adds r2, r4, #0
	adds r2, #0x94
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_02003536:
	movs r0, #0x94
	adds r0, r0, r4
	mov sb, r0
	ldrh r3, [r0]
	movs r0, #0x10
	movs r2, #0
	movs r1, #0
	orrs r0, r3
	mov r3, sb
	strh r0, [r3]
	strh r1, [r5]
	mov r0, r8
	strh r1, [r0]
	mov r3, ip
	strh r1, [r3]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	movs r0, #6
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	movs r0, #1
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	ldr r3, [sp, #0x1c]
	strh r0, [r3]
	ldr r0, [sp, #0x20]
	strh r1, [r0]
	ldr r3, [sp, #0x24]
	strb r2, [r3]
	ldr r0, [sp, #0x28]
	strh r1, [r0]
	ldr r3, [sp, #0x2c]
	strh r1, [r3]
	ldr r0, [sp, #0x30]
	str r1, [r0]
	ldr r3, [sp, #0x34]
	strh r1, [r3]
	ldr r0, [sp, #0x38]
	strb r2, [r0]
	ldr r3, [sp, #0x3c]
	strb r2, [r3]
	ldr r0, [sp, #0x40]
	strh r1, [r0]
	ldr r3, [sp, #0x44]
	strh r1, [r3]
	ldr r0, [sp, #0x48]
	strb r2, [r0]
	ldr r1, [sp, #0x4c]
	strb r2, [r1]
	ldr r3, [sp, #0x50]
	strb r2, [r3]
	ldr r0, [sp, #0x54]
	strb r2, [r0]
	ldr r1, [sp, #0x58]
	strb r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x5c]
	str r0, [r2]
	cmp r6, #1
	beq _020035CE
	cmp r6, #1
	bgt _020035BA
	cmp r6, #0
	beq _020035C4
	b _020035EC
_020035BA:
	cmp r6, #2
	beq _020035D8
	cmp r6, #3
	beq _020035E2
	b _020035EC
_020035C4:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xe8
	lsls r0, r0, #2
	b _020035EA
_020035CE:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xc8
	lsls r0, r0, #2
	b _020035EA
_020035D8:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0xa8
	lsls r0, r0, #2
	b _020035EA
_020035E2:
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #0x88
	lsls r0, r0, #2
_020035EA:
	str r0, [r1]
_020035EC:
	movs r5, #0
	ldr r3, [sp, #0x60]
	str r5, [r3]
	ldr r0, [sp, #0x64]
	str r5, [r0]
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #0x68]
	strh r5, [r2]
	ldr r3, [sp, #0x6c]
	str r7, [r3]
	ldr r1, [sp, #0x74]
	lsls r0, r1, #2
	ldr r2, _02003794 @ =gUnk_020183F4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #0x70]
	str r0, [r3]
	ldr r1, [sp, #0x7c]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	str r0, [r2]
	mov r0, r8
	ldr r3, [sp, #0x80]
	strb r0, [r3]
	ldr r1, [sp, #0x84]
	strb r0, [r1]
	mov r0, sl
	mov r2, r8
	strb r2, [r0]
	ldr r3, [sp, #0x88]
	strh r5, [r3]
	ldr r0, _02003798 @ =gUnk_030070B8
	ldr r1, [r0]
	ldr r0, _0200379C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _020037A0 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _02003798 @ =gUnk_030070B8
	str r0, [r2]
	ldr r3, [sp, #0x8c]
	str r0, [r3]
	str r5, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _020037A4 @ =0x05000011
	bl CpuSet
	ldr r0, _020037A8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r0, _020037AC @ =gUnk_0200EF70
	ldrh r1, [r0, #0x28]
	strh r1, [r4, #0xc]
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sp
	strb r3, [r2, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r7, #0x10
	strb r7, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #0x14
	strh r0, [r4, #0x10]
	movs r0, #0x82
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0x50
	str r0, [r4, #0x28]
	movs r0, #0x82
	lsls r0, r0, #2
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	ldr r0, _020037B0 @ =gUnk_03000A68
	ldrb r0, [r0]
	cmp r6, r0
	bne _020036B2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
_020036B2:
	str r5, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	ldr r2, _020037A4 @ =0x05000011
	bl CpuSet
	ldr r1, _020037A8 @ =0x06010000
	str r1, [r4, #0x44]
	movs r3, #0x88
	lsls r3, r3, #3
	ldr r2, [sp, #0x98]
	strh r3, [r2]
	ldr r1, _020037B4 @ =gUnk_0200F0F4
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x2c]
	ldr r3, [sp, #0x9c]
	strh r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	ldr r1, [sp, #0xa0]
	strb r0, [r1]
	ldr r2, [sp, #0xa4]
	strh r5, [r2]
	ldr r3, [sp, #0xa8]
	ldrb r0, [r3]
	mov r1, sp
	ldrb r1, [r1, #0xc]
	orrs r0, r1
	strb r0, [r3]
	ldr r2, [sp, #0xac]
	strb r7, [r2]
	movs r0, #4
	ldr r3, [sp, #0xb0]
	strb r0, [r3]
	ldr r1, [sp, #0xb4]
	strh r0, [r1]
	ldr r0, _020037B8 @ =0x0000FFEC
	ldr r2, [sp, #0xb8]
	strh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	str r3, [r4, #0x4c]
	str r7, [r4, #0x6c]
	movs r0, #0x50
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	ldr r0, [sp, #0xbc]
	strh r5, [r0]
	ldr r1, [sp, #0xc0]
	strh r5, [r1]
	ldr r0, _020037BC @ =0x00001010
	ldr r2, [sp, #0xc4]
	strh r0, [r2]
	ldr r3, [sp, #0xc8]
	strh r5, [r3]
	str r5, [r4, #0x7c]
	ldr r0, [sp, #0xcc]
	str r5, [r0]
	ldr r1, [sp, #0xd0]
	str r5, [r1]
	ldr r2, [sp, #0x94]
	str r2, [r4, #0x40]
	str r4, [r0]
	ldr r3, [sp, #0xc4]
	ldrh r1, [r3]
	ldr r0, _020037C0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r3]
	ldr r0, [sp, #8]
	str r0, [r4, #0x38]
	ldr r1, [sp, #0xd4]
	str r5, [r1]
	ldr r2, [sp, #0xd8]
	str r5, [r2]
	mov r3, sb
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02003782
	adds r0, r4, #0
	bl sub_020072CC
	ldr r1, [sp, #0xd4]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0200735C
	ldr r2, [sp, #0xd8]
	str r0, [r2]
	adds r0, r4, #0
	bl sub_02006BA4
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
_02003782:
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003794: .4byte gUnk_020183F4
_02003798: .4byte gUnk_030070B8
_0200379C: .4byte 0x00196225
_020037A0: .4byte 0x3C6EF35F
_020037A4: .4byte 0x05000011
_020037A8: .4byte 0x06010000
_020037AC: .4byte gUnk_0200EF70
_020037B0: .4byte gUnk_03000A68
_020037B4: .4byte gUnk_0200F0F4
_020037B8: .4byte 0x0000FFEC
_020037BC: .4byte 0x00001010
_020037C0: .4byte 0x0000FFEF

	thumb_func_start sub_020037C4
sub_020037C4: @ 0x020037C4
	push {r4, lr}
	lsls r3, r3, #0x18
	ldrb r1, [r2]
	lsls r1, r1, #2
	lsrs r3, r3, #0xe
	adds r1, r1, r3
	str r1, [r0]
	ldrb r3, [r2, #1]
	lsls r3, r3, #2
	str r3, [r0, #4]
	ldrb r4, [r2, #2]
	lsrs r1, r4, #4
	lsls r1, r1, #5
	subs r1, r3, r1
	str r1, [r0, #8]
	movs r1, #0xf
	ands r1, r4
	lsls r1, r1, #5
	adds r3, r3, r1
	str r3, [r0, #0xc]
	ldrb r1, [r2, #3]
	strh r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x12]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_020037FC
sub_020037FC: @ 0x020037FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	mov r8, r1
	adds r4, r3, #0
	ldr r0, [sp, #0x50]
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	movs r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r0, _02003B50 @ =0x06010000
	str r0, [r7]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	ldr r0, _02003B54 @ =gUnk_0200F094
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r0, [r4, #0x10]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #0x12]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #4
	strb r1, [r7, #0x1f]
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r0, sl
	lsls r0, r0, #7
	str r0, [sp, #0x28]
	adds r4, r0, #0
	adds r4, #0x90
	asrs r6, r4, #2
	strh r6, [r7, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r7, #8]
	movs r0, #0xe0
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	movs r0, #0x10
	strh r0, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r5, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r1, _02003B50 @ =0x06010000
	str r1, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r0, _02003B58 @ =gUnk_0200EF70
	ldrh r2, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x50
	strh r2, [r1]
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, #0xe
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	mov r1, r8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0x72
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x56
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x4c]
	movs r0, #0xe4
	lsls r0, r0, #1
	str r0, [r7, #0x6c]
	str r4, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	mov r0, sp
	mov r1, sb
	bl sub_02006408
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r0, _02003B50 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r0, _02003B5C @ =gUnk_0200F0F4
	mov r8, r0
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xa4
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x28]
	adds r1, #0x9c
	str r1, [sp, #0x2c]
	asrs r1, r1, #2
	mov sb, r1
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xa4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	adds r4, #0x44
	adds r1, r4, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r1, _02003B50 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xac
	strh r0, [r4, #0x10]
	mov r1, sb
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x2c]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x14]
	add r0, sp, #0x14
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r0, _02003B50 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, r8
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xb4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r0, _02003B50 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xbc
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xbc
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x1c]
	add r0, sp, #0x1c
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	ldr r2, _02003B4C @ =0x05000011
	bl CpuSet
	ldr r0, _02003B50 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0x2c]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #4
	strb r1, [r4, #0x1f]
	movs r0, #0xc4
	strh r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xc4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003B4C: .4byte 0x05000011
_02003B50: .4byte 0x06010000
_02003B54: .4byte gUnk_0200F094
_02003B58: .4byte gUnk_0200EF70
_02003B5C: .4byte gUnk_0200F0F4

	thumb_func_start sub_02003B60
sub_02003B60: @ 0x02003B60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_02001ACC
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001ACC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02003BA4
sub_02003BA4: @ 0x02003BA4
	ldr r1, _02003BC0 @ =0x040000D4
	ldr r0, _02003BC4 @ =gUnk_0200F2F4
	str r0, [r1]
	ldr r0, _02003BC8 @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _02003BCC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _02003BD0 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_02003BC0: .4byte 0x040000D4
_02003BC4: .4byte gUnk_0200F2F4
_02003BC8: .4byte gUnk_03003F80
_02003BCC: .4byte 0x80000100
_02003BD0: .4byte gUnk_03002C20

	thumb_func_start sub_02003BD4
sub_02003BD4: @ 0x02003BD4
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _02003C34 @ =gUnk_030070B8
	movs r2, #0
	str r2, [r0]
	ldr r1, _02003C38 @ =gUnk_03003E70
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _02003C3C @ =gUnk_03003690
	ldr r0, _02003C40 @ =0x00001C01
	strh r0, [r1]
	ldr r0, _02003C44 @ =0x00001D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _02003C48 @ =gUnk_03002CC8
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _02003C4C @ =gUnk_03003E60
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _02003C50 @ =sub_02003CDC
	movs r1, #0xb0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _02003C54 @ =sub_02005154
	str r3, [sp]
	movs r3, #0
	bl sub_0200AE44
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _02003C58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003C5C
	.align 2, 0
_02003C34: .4byte gUnk_030070B8
_02003C38: .4byte gUnk_03003E70
_02003C3C: .4byte gUnk_03003690
_02003C40: .4byte 0x00001C01
_02003C44: .4byte 0x00001D01
_02003C48: .4byte gUnk_03002CC8
_02003C4C: .4byte gUnk_03003E60
_02003C50: .4byte sub_02003CDC
_02003C54: .4byte sub_02005154
_02003C58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003C5C:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _02003CB8 @ =0x010002C0
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _02003CBC @ =gUnk_03000A44
	ldrb r1, [r0]
	ldr r2, _02003CC0 @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _02003CC4 @ =gUnk_02018494
	bl sub_02002004
	str r0, [r5, #0x10]
	ldr r0, _02003CC8 @ =gUnk_020184A8
	bl sub_020020DC
	str r0, [r5, #0x14]
	ldr r0, _02003CCC @ =gUnk_020185B4
	bl sub_020020DC
	str r0, [r5, #0x18]
	ldr r0, _02003CD0 @ =gUnk_02018828
	bl sub_020020DC
	str r0, [r5, #0x1c]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _02003CD4 @ =0x00000529
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _02003CD8 @ =0x0000052A
	adds r0, r5, r2
	strb r4, [r0]
	bl m4aMPlayAllStop
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003CB8: .4byte 0x010002C0
_02003CBC: .4byte gUnk_03000A44
_02003CC0: .4byte 0x0000057C
_02003CC4: .4byte gUnk_02018494
_02003CC8: .4byte gUnk_020184A8
_02003CCC: .4byte gUnk_020185B4
_02003CD0: .4byte gUnk_02018828
_02003CD4: .4byte 0x00000529
_02003CD8: .4byte 0x0000052A

	thumb_func_start sub_02003CDC
sub_02003CDC: @ 0x02003CDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x130
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CE0
	ldr r4, _02003D24 @ =gUnk_03003DB0
	ldr r2, [r4]
	ldrh r0, [r2, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrh r3, [r2, #6]
	ldr r6, _02003D28 @ =sub_02004100
	add r7, sp, #0x28
	add r2, sp, #0x50
	add r5, sp, #0x78
	add r0, sp, #0xa0
	mov sb, r0
	add r0, sp, #0xc8
	mov r8, r0
	mov r0, sp
	adds r0, #0xf0
	str r0, [sp, #0x128]
	cmp r1, #0
	beq _02003D2C
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x124]
	b _02003D34
	.align 2, 0
_02003D24: .4byte gUnk_03003DB0
_02003D28: .4byte sub_02004100
_02003D2C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	str r3, [sp, #0x124]
_02003D34:
	ldr r1, [sp, #0x124]
	str r1, [sp, #0x11c]
	ldr r0, [r4]
	str r6, [r0, #8]
	ldr r3, _020040A8 @ =0x06010000
	str r3, [sp]
	mov r0, sp
	movs r1, #0
	mov sl, r1
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r0, #0x14]
	movs r6, #3
	strh r6, [r0, #0xc]
	strb r1, [r0, #0x1a]
	mov r3, sl
	strh r3, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	mov r1, sl
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp, #8]
	str r2, [sp, #0x12c]
	bl sub_0200B6B8
	ldr r3, _020040A8 @ =0x06010000
	str r3, [sp, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xc]
	movs r0, #0xd
	strb r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #0x16]
	subs r0, #0xe
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #1
	strb r0, [r7, #0x1f]
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl sub_0200B6B8
	ldr r1, _020040A8 @ =0x06010000
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x12c]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	strh r6, [r2, #0xc]
	movs r0, #0xc
	strb r0, [r2, #0x1a]
	mov r0, sl
	strh r0, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #2
	strb r3, [r2, #0x1f]
	mov r0, sl
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_0200B6B8
	ldr r1, _020040A8 @ =0x06010000
	str r1, [sp, #0x78]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r5, #0x14]
	strh r6, [r5, #0xc]
	movs r0, #0xe
	strb r0, [r5, #0x1a]
	mov r3, sl
	strh r3, [r5, #0x16]
	subs r0, #0xf
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r1, #3
	strb r1, [r5, #0x1f]
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	str r4, [r5, #8]
	adds r0, r5, #0
	bl sub_0200B6B8
	ldr r2, _020040A8 @ =0x06010000
	mov r3, sb
	str r2, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	movs r1, #1
	strh r1, [r3, #0xc]
	movs r2, #0
	strb r2, [r3, #0x1a]
	mov r0, sl
	strh r0, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r2, #4
	strb r2, [r3, #0x1f]
	mov r0, sl
	strh r0, [r3, #0x10]
	strh r0, [r3, #0x12]
	str r4, [r3, #8]
	mov r0, sb
	bl sub_0200B6B8
	ldr r1, _020040A8 @ =0x06010000
	mov r2, r8
	str r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	movs r6, #6
	movs r0, #6
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #5
	strb r0, [r2, #0x1f]
	strh r1, [r2, #0x10]
	strh r1, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, r8
	bl sub_0200B6B8
	ldr r0, _020040A8 @ =0x06010000
	ldr r1, [sp, #0x128]
	str r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r1, #0x14]
	movs r3, #1
	strh r3, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	mov r2, sl
	strh r2, [r1, #0x16]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	adds r0, r3, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x12]
	str r4, [r1, #8]
	ldr r0, [sp, #0x128]
	bl sub_0200B6B8
	ldr r0, _020040AC @ =gUnk_020101F4
	ldr r1, _020040B0 @ =0x0600E000
	ldr r4, _020040B4 @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _020040B8 @ =gUnk_0200F9F4
	ldr r1, _020040BC @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _020040C0 @ =gUnk_0200F4F4
	ldr r1, _020040C4 @ =0x0600F000
	ldr r2, _020040C8 @ =0x04000140
	bl CpuSet
	mov r1, sl
	ldr r2, [sp, #0x11c]
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r0, r2, r3
	movs r1, #0
	strb r1, [r0]
	adds r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	ldr r1, _020040CC @ =0x000003D2
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r3, [sp, #0x11c]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _020040D0 @ =0x0000057A
	adds r0, r3, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x11c]
	ldr r1, _020040D4 @ =0x0000052A
	adds r4, r0, r1
	ldrb r6, [r4]
	adds r7, r6, #0
	movs r2, #0
	strb r2, [r4]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r5, r0, r3
	ldrh r1, [r5]
	ldr r0, _020040D8 @ =0x00000A05
	cmp r1, r0
	bne _02003F1C
	ldr r0, _020040DC @ =0x00000235
	bl m4aSongNumStart
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_02003F1C:
	movs r2, #1
	ands r6, r2
	cmp r6, #0
	beq _02003F2A
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
_02003F2A:
	movs r3, #2
	ands r7, r3
	cmp r7, #0
	beq _02003F3A
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_02003F3A:
	movs r0, #0
	strb r0, [r5]
	ldr r1, [sp, #0x124]
	ldr r2, _020040E0 @ =0x00000529
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	ldr r0, _020040E4 @ =gUnk_03000A68
	ldrb r1, [r0]
	ldr r0, [sp, #0x124]
	adds r2, #0x50
	adds r6, r0, r2
	strb r1, [r6]
	ldr r3, _020040E8 @ =0x0000057D
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [sp, #0x124]
	adds r2, #5
	adds r0, r1, r2
	mov r3, sl
	strh r3, [r0]
	ldr r0, [sp, #0x124]
	bl sub_02005298
	ldr r0, [sp, #0x124]
	adds r0, #0x20
	ldr r7, [sp, #0x124]
	adds r7, #8
	ldr r1, [sp, #0x124]
	ldr r2, _020040EC @ =0x0000052C
	adds r4, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_02003400
	ldr r3, [sp, #0x124]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_02003400
	ldr r2, [sp, #0x124]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_02003400
	ldr r1, [sp, #0x124]
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_02003400
	ldr r0, [sp, #0x124]
	bl sub_0200538C
	ldr r0, [sp, #0x124]
	bl sub_02006470
	ldr r0, _020040F0 @ =0xFFFF0000
	ldr r3, [sp, #0x120]
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _020040F4 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r3, r0
	str r3, [sp, #0x120]
	add r0, sp, #0x118
	mov r1, sl
	str r1, [r0]
	ldr r2, [sp, #0x124]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r4, r2, r3
	ldr r2, _020040F8 @ =0x05000011
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _020040A8 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	add r2, sp, #0x120
	ldrh r2, [r2]
	strh r2, [r4, #0xc]
	ldr r3, [sp, #0x120]
	lsrs r0, r3, #0x10
	strb r0, [r4, #0x1a]
	mov r0, sl
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r3, #4
	strb r3, [r4, #0x1f]
	mov r0, sl
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	mov r1, sl
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	strh r1, [r4, #0x30]
	mov r2, sl
	strh r2, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r2, [r4, #0x36]
	mov r3, sl
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	str r3, [r4, #0x40]
	ldr r1, [sp, #0x124]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r0, r1, r2
	str r7, [r0]
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r1, r0
	ldrb r0, [r6]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [sp, #0x124]
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r1, [sp, #0x124]
	ldr r0, _020040FC @ =0x00000574
	adds r3, r1, r0
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [sp, #0x124]
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldrb r0, [r6]
	muls r0, r2, r0
	ldr r1, [sp, #0x124]
	adds r0, r1, r0
	adds r2, #0x14
	adds r0, r0, r2
	ldrb r1, [r0]
	ldr r3, [sp, #0x124]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r3, r2
	strb r1, [r0]
	movs r0, #0x1e
	bl m4aSongNumStart
	add sp, #0x130
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020040A8: .4byte 0x06010000
_020040AC: .4byte gUnk_020101F4
_020040B0: .4byte 0x0600E000
_020040B4: .4byte 0x04000200
_020040B8: .4byte gUnk_0200F9F4
_020040BC: .4byte 0x0600E800
_020040C0: .4byte gUnk_0200F4F4
_020040C4: .4byte 0x0600F000
_020040C8: .4byte 0x04000140
_020040CC: .4byte 0x000003D2
_020040D0: .4byte 0x0000057A
_020040D4: .4byte 0x0000052A
_020040D8: .4byte 0x00000A05
_020040DC: .4byte 0x00000235
_020040E0: .4byte 0x00000529
_020040E4: .4byte gUnk_03000A68
_020040E8: .4byte 0x0000057D
_020040EC: .4byte 0x0000052C
_020040F0: .4byte 0xFFFF0000
_020040F4: .4byte 0xFF00FFFF
_020040F8: .4byte 0x05000011
_020040FC: .4byte 0x00000574

	thumb_func_start sub_02004100
sub_02004100: @ 0x02004100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02004128 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _0200412C @ =gUnk_030070B8
	cmp r0, #0
	beq _02004130
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004134
	.align 2, 0
_02004128: .4byte gUnk_03003DB0
_0200412C: .4byte gUnk_030070B8
_02004130:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004134:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _02004518 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0200451C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r1, r7, #0
	adds r1, #0xe8
	movs r0, #0xe0
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r2, r7, #0
	adds r2, #0xe4
	str r2, [sp]
	ldr r0, [r2]
	str r0, [r1]
	movs r5, #0xea
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	strb r0, [r1]
	movs r5, #0x20
	adds r5, r5, r7
	mov sb, r5
	mov r0, sb
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _02004520 @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	movs r5, #0x86
	lsls r5, r5, #1
	adds r5, r5, r7
	mov r8, r5
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	ldr r0, _02004524 @ =0x000002AA
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _02004528 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r6, r7, r5
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	ldr r0, _0200452C @ =0x00000396
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _02004530 @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	mov r0, sb
	bl sub_02005780
	mov r0, r8
	bl sub_02005780
	adds r0, r6, #0
	bl sub_02005780
	adds r0, r5, #0
	bl sub_02005780
	mov r0, sb
	bl sub_02005848
	mov r0, r8
	bl sub_02005848
	adds r0, r6, #0
	bl sub_02005848
	adds r0, r5, #0
	bl sub_02005848
	mov r0, sb
	bl sub_02005870
	mov r0, r8
	bl sub_02005870
	adds r0, r6, #0
	bl sub_02005870
	adds r0, r5, #0
	bl sub_02005870
	mov r0, sb
	bl sub_020058B0
	mov r0, r8
	bl sub_020058B0
	adds r0, r6, #0
	bl sub_020058B0
	adds r0, r5, #0
	bl sub_020058B0
	mov r0, sb
	bl sub_02005AE8
	mov r0, r8
	bl sub_02005AE8
	adds r0, r6, #0
	bl sub_02005AE8
	adds r0, r5, #0
	bl sub_02005AE8
	ldr r2, _02004534 @ =0x0000045C
	adds r1, r7, r2
	adds r2, #0xc8
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sb
	bl sub_02005B94
	mov r0, sb
	bl sub_02005E8C
	mov r0, r8
	bl sub_02005E8C
	adds r0, r6, #0
	bl sub_02005E8C
	adds r0, r5, #0
	bl sub_02005E8C
	mov r0, sb
	bl sub_02006028
	mov r0, r8
	bl sub_02006028
	adds r0, r6, #0
	bl sub_02006028
	adds r0, r5, #0
	bl sub_02006028
	adds r4, r7, #0
	adds r4, #8
	mov r0, sb
	adds r1, r4, #0
	bl sub_0200608C
	mov r0, r8
	adds r1, r4, #0
	bl sub_0200608C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0200608C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0200608C
	ldr r5, _02004538 @ =0x00000579
	adds r3, r7, r5
	ldrb r0, [r3]
	movs r4, #0xec
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r7, r2
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _02004414
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrb r0, [r3]
	muls r0, r4, r0
	ldr r5, [sp]
	adds r1, r5, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	adds r0, r7, r0
	adds r0, #0xf0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r1, r5
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _02004386
	ldr r1, _0200453C @ =0xFFFFFE80
	cmp r0, r1
	bge _02004388
_02004386:
	str r1, [r7, #0xc]
_02004388:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _02004538 @ =0x00000579
	adds r3, r7, r1
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r5, _02004540 @ =0x00000574
	adds r4, r7, r5
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
	ldr r2, _02004544 @ =gUnk_03003E60
	movs r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	ldr r0, _02004548 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _0200454C @ =gUnk_03002C50
	ldr r2, _02004550 @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _02004554 @ =sub_0200665C
	str r1, [r0]
	ldr r2, _02004558 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
_02004414:
	adds r0, r7, #0
	bl sub_020064E4
	mov r0, sb
	bl sub_020060E4
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_020060E4
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_020060E4
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	bl sub_020060E4
	adds r0, r7, #0
	bl sub_02006158
	movs r5, #0xad
	lsls r5, r5, #3
	adds r0, r7, r5
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _02004504
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _02004504
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, r2
	ble _02004504
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _02004504
	ldr r1, _0200455C @ =0x0000052A
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _020044BC
	adds r3, r7, #0
	adds r3, #0x98
	ldrh r2, [r3]
	ldr r1, _02004560 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0x9c
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_020044BC:
	adds r3, r7, #0
	adds r3, #0xb4
	ldrh r2, [r3]
	ldr r1, _02004564 @ =0x0000FFEF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0xa3
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xde
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	bl sub_02007A80
	ldr r0, _02004568 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _0200456C @ =sub_02004570
	str r0, [r1, #8]
	movs r0, #0x1d
	bl m4aSongNumStart
_02004504:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_02004514:
	b sub_02004570
	.align 2, 0
_02004518: .4byte 0x00196225
_0200451C: .4byte 0x3C6EF35F
_02004520: .4byte 0x000001BF
_02004524: .4byte 0x000002AA
_02004528: .4byte 0x000002AB
_0200452C: .4byte 0x00000396
_02004530: .4byte 0x00000397
_02004534: .4byte 0x0000045C
_02004538: .4byte 0x00000579
_0200453C: .4byte 0xFFFFFE80
_02004540: .4byte 0x00000574
_02004544: .4byte gUnk_03003E60
_02004548: .4byte gUnk_03000D70
_0200454C: .4byte gUnk_03002C50
_02004550: .4byte gUnk_03006850
_02004554: .4byte sub_0200665C
_02004558: .4byte gUnk_03002C20
_0200455C: .4byte 0x0000052A
_02004560: .4byte 0x0000EFFF
_02004564: .4byte 0x0000FFEF
_02004568: .4byte gUnk_03003DB0
_0200456C: .4byte sub_02004570

	thumb_func_start sub_02004570
sub_02004570: @ 0x02004570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _02004598 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r4, _0200459C @ =gUnk_030070B8
	cmp r0, #0
	beq _020045A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020045A4
	.align 2, 0
_02004598: .4byte gUnk_03003DB0
_0200459C: .4byte gUnk_030070B8
_020045A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020045A4:
	adds r0, r1, r0
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r0, [r4]
	ldr r2, _02004894 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _02004898 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r5, #0xec
	adds r3, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	str r0, [r3]
	adds r1, r7, #0
	adds r1, #0xe8
	adds r0, r7, #0
	adds r0, #0xe0
	str r0, [sp]
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r2, r7, #0
	adds r2, #0xe4
	str r2, [sp, #4]
	ldr r0, [r2]
	str r0, [r1]
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r4, #0xe6
	lsls r4, r4, #1
	adds r4, r7, r4
	str r4, [sp, #8]
	ldr r0, [r4]
	str r0, [r1]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	movs r4, #0xae
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0xc]
	ldr r0, [r4]
	str r0, [r1]
	adds r5, #0xec
	adds r1, r7, r5
	adds r2, #0xec
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0x10]
	ldr r0, [r4]
	str r0, [r1]
	adds r5, #0xec
	adds r1, r7, r5
	adds r2, #0xec
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0xb0
	adds r0, r7, r3
	ldr r4, _0200489C @ =0x00000524
	adds r1, r7, r4
	ldrb r1, [r1]
	bl sub_0200547C
	adds r0, r7, #0
	bl sub_020051E4
	movs r5, #0x20
	adds r5, r5, r7
	mov sl, r5
	mov r0, sl
	bl sub_020054EC
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	bl sub_020054EC
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	adds r0, r6, #0
	bl sub_020054EC
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl sub_020054EC
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	mov r0, sl
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _020048A0 @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	ldr r3, _020048A4 @ =0x000002AA
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _020048A8 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	ldr r3, _020048AC @ =0x00000396
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _020048B0 @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	strb r0, [r4]
	mov r0, sl
	bl sub_0200559C
	mov r0, r8
	bl sub_0200559C
	adds r0, r6, #0
	bl sub_0200559C
	adds r0, r5, #0
	bl sub_0200559C
	mov r0, sl
	bl sub_02005718
	mov r0, r8
	bl sub_02005718
	adds r0, r6, #0
	bl sub_02005718
	adds r0, r5, #0
	bl sub_02005718
	mov r0, sl
	bl sub_02005780
	mov r0, r8
	bl sub_02005780
	adds r0, r6, #0
	bl sub_02005780
	adds r0, r5, #0
	bl sub_02005780
	mov r0, sl
	bl sub_02005848
	mov r0, r8
	bl sub_02005848
	adds r0, r6, #0
	bl sub_02005848
	adds r0, r5, #0
	bl sub_02005848
	mov r0, sl
	bl sub_02005870
	mov r0, r8
	bl sub_02005870
	adds r0, r6, #0
	bl sub_02005870
	adds r0, r5, #0
	bl sub_02005870
	ldr r3, _020048B4 @ =0x0000056C
	adds r2, r7, r3
	ldr r4, [sp]
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble _0200478E
	adds r0, r7, #0
	adds r0, #0xc8
	mov r1, sb
	strh r1, [r0]
_0200478E:
	ldr r3, [sp, #8]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _020047A2
	movs r4, #0xda
	lsls r4, r4, #1
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_020047A2:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _020047B6
	movs r4, #0xa8
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_020047B6:
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _020047CA
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r1, sb
	strh r1, [r0]
_020047CA:
	mov r0, sl
	bl sub_020058B0
	mov r0, r8
	bl sub_020058B0
	adds r0, r6, #0
	bl sub_020058B0
	adds r0, r5, #0
	bl sub_020058B0
	ldr r2, _020048B8 @ =0x00000579
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _02004814
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _02004814
	bl sub_02007BF0
	str r0, [r7]
	movs r0, #0x1f
	bl m4aSongNumStart
_02004814:
	ldr r5, _020048BC @ =0x0000057A
	adds r4, r7, r5
	ldrh r1, [r4]
	mov r0, sl
	bl sub_02005AC4
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldrh r1, [r4]
	bl sub_02005AC4
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	ldrh r1, [r4]
	adds r0, r6, #0
	bl sub_02005AC4
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_02005AC4
	mov r0, sl
	bl sub_02005AE8
	mov r0, r8
	bl sub_02005AE8
	adds r0, r6, #0
	bl sub_02005AE8
	adds r0, r5, #0
	bl sub_02005AE8
	ldr r3, _020048B8 @ =0x00000579
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	adds r4, r7, #0
	adds r4, #8
	str r4, [sp, #0x18]
	cmp r0, #0
	beq _020048C4
	ldr r5, _020048C0 @ =0x0000045C
	adds r1, r7, r5
	ldr r2, _0200489C @ =0x00000524
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sl
	bl sub_02005CB0
	b _020048D4
	.align 2, 0
_02004894: .4byte 0x00196225
_02004898: .4byte 0x3C6EF35F
_0200489C: .4byte 0x00000524
_020048A0: .4byte 0x000001BF
_020048A4: .4byte 0x000002AA
_020048A8: .4byte 0x000002AB
_020048AC: .4byte 0x00000396
_020048B0: .4byte 0x00000397
_020048B4: .4byte 0x0000056C
_020048B8: .4byte 0x00000579
_020048BC: .4byte 0x0000057A
_020048C0: .4byte 0x0000045C
_020048C4:
	ldr r3, _02004A24 @ =0x0000045C
	adds r1, r7, r3
	ldr r4, _02004A28 @ =0x00000524
	adds r0, r7, r4
	ldrb r2, [r0]
	mov r0, sl
	bl sub_02005B94
_020048D4:
	ldr r0, _02004A24 @ =0x0000045C
	adds r5, r7, r0
	ldr r1, _02004A28 @ =0x00000524
	adds r4, r7, r1
	ldrb r2, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_02005DBC
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldrb r2, [r4]
	mov r0, sb
	adds r1, r5, #0
	bl sub_02005DBC
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r4]
	mov r0, r8
	adds r1, r5, #0
	bl sub_02005DBC
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_02005DBC
	mov r0, sl
	bl sub_02005E8C
	mov r0, sb
	bl sub_02005E8C
	mov r0, r8
	bl sub_02005E8C
	adds r0, r6, #0
	bl sub_02005E8C
	mov r0, sl
	bl sub_02005FB8
	mov r0, sb
	bl sub_02005FB8
	mov r0, r8
	bl sub_02005FB8
	adds r0, r6, #0
	bl sub_02005FB8
	mov r0, sl
	bl sub_02006028
	mov r0, sb
	bl sub_02006028
	mov r0, r8
	bl sub_02006028
	adds r0, r6, #0
	bl sub_02006028
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl sub_0200608C
	mov r0, sb
	ldr r1, [sp, #0x18]
	bl sub_0200608C
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_0200608C
	adds r0, r6, #0
	ldr r1, [sp, #0x18]
	bl sub_0200608C
	ldr r1, _02004A2C @ =0x00000579
	adds r4, r7, r1
	ldrb r0, [r4]
	movs r5, #0xec
	adds r3, r0, #0
	muls r3, r5, r3
	adds r2, r7, r3
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0xe0
	str r1, [sp, #0x14]
	movs r1, #0xf8
	adds r1, r1, r7
	mov ip, r1
	adds r1, r7, #0
	adds r1, #0xfc
	str r1, [sp, #0x1c]
	ldr r6, _02004A30 @ =gUnk_03003E60
	ldr r1, _02004A34 @ =gUnk_03006850
	mov sb, r1
	cmp r0, #0
	bne _020049BA
	b _02004B2C
_020049BA:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _020049F6
	ldr r2, _02004A38 @ =0x0000057D
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _020049E0
	movs r0, #0
	strb r0, [r1]
_020049E0:
	ldrb r0, [r1]
	muls r0, r5, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _02004A6C
	ldr r0, _02004A3C @ =0xFFFFFE80
	str r0, [r7, #0xc]
_020049F6:
	ldr r3, _02004A38 @ =0x0000057D
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _02004A6C
	ldr r4, _02004A40 @ =0x0000057C
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq _02004A54
	cmp r0, #1
	bgt _02004A44
	cmp r0, #0
	beq _02004A4A
	b _02004AA4
	.align 2, 0
_02004A24: .4byte 0x0000045C
_02004A28: .4byte 0x00000524
_02004A2C: .4byte 0x00000579
_02004A30: .4byte gUnk_03003E60
_02004A34: .4byte gUnk_03006850
_02004A38: .4byte 0x0000057D
_02004A3C: .4byte 0xFFFFFE80
_02004A40: .4byte 0x0000057C
_02004A44:
	cmp r0, #2
	beq _02004A60
	b _02004AA4
_02004A4A:
	ldr r0, _02004A50 @ =0xFFFF738B
	str r0, [r7, #8]
	b _02004AA4
	.align 2, 0
_02004A50: .4byte 0xFFFF738B
_02004A54:
	ldr r0, _02004A5C @ =0xFFFF4B90
	str r0, [r7, #8]
	b _02004AA4
	.align 2, 0
_02004A5C: .4byte 0xFFFF4B90
_02004A60:
	ldr r0, _02004A68 @ =0xFFFF238C
	str r0, [r7, #8]
	b _02004AA4
	.align 2, 0
_02004A68: .4byte 0xFFFF238C
_02004A6C:
	ldr r5, _02004B1C @ =0x0000057D
	adds r2, r7, r5
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	ldr r3, [sp]
	adds r0, r3, r0
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r7, #8]
	ldrb r0, [r2]
	muls r1, r0, r1
	ldr r5, [sp, #4]
	adds r0, r5, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
	adds r1, r7, r1
	adds r1, #0xf0
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0xc]
_02004AA4:
	ldr r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _02004AB4
	ldr r1, _02004B20 @ =0xFFFFFE80
	cmp r0, r1
	bge _02004AB6
_02004AB4:
	str r1, [r7, #0xc]
_02004AB6:
	movs r4, #0xae
	lsls r4, r4, #3
	adds r4, r4, r7
	mov r8, r4
	ldr r5, _02004B1C @ =0x0000057D
	adds r2, r7, r5
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _02004B24 @ =0x00000574
	adds r4, r7, r0
	ldrb r0, [r2]
	muls r0, r1, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r3, r7, r5
	strb r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _02004B16
	ldr r1, _02004B28 @ =gUnk_020183F4
	ldr r0, [r1, #0x2c]
	mov r2, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r4]
	movs r0, #0x24
	strb r0, [r3]
_02004B16:
	ldrb r1, [r3]
	b _02004BA4
	.align 2, 0
_02004B1C: .4byte 0x0000057D
_02004B20: .4byte 0xFFFFFE80
_02004B24: .4byte 0x00000574
_02004B28: .4byte gUnk_020183F4
_02004B2C:
	ldr r1, [sp]
	adds r0, r1, r3
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrb r0, [r4]
	muls r0, r5, r0
	ldr r3, [sp, #4]
	adds r1, r3, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	adds r0, r7, r0
	adds r0, #0xf0
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r1, r5
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _02004B68
	ldr r1, _02004D04 @ =0xFFFFFE80
	cmp r0, r1
	bge _02004B6A
_02004B68:
	str r1, [r7, #0xc]
_02004B6A:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r7, r0
	ldr r1, _02004D08 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	add r0, ip
	ldr r0, [r0]
	str r0, [r3]
	ldr r4, _02004D0C @ =0x00000574
	adds r3, r7, r4
	ldrb r0, [r2]
	muls r0, r1, r0
	ldr r5, [sp, #0x1c]
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	adds r1, #0x14
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
_02004BA4:
	movs r0, #7
	ands r0, r1
	strh r0, [r6]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r6, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r6, #6]
	ldr r3, _02004D10 @ =gUnk_03000D70
	str r7, [r3]
	mov r4, sb
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r5, _02004D14 @ =gUnk_03002C50
	adds r0, r0, r5
	ldr r1, _02004D18 @ =sub_0200665C
	str r1, [r0]
	ldr r2, _02004D1C @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_02006268
	mov r0, sl
	bl sub_0200611C
	movs r3, #0x86
	lsls r3, r3, #1
	adds r6, r7, r3
	adds r0, r6, #0
	bl sub_0200611C
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r5, r7, r4
	adds r0, r5, #0
	bl sub_0200611C
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_0200611C
	adds r0, r7, #0
	bl sub_020064E4
	mov r0, sl
	bl sub_020060E4
	adds r0, r6, #0
	bl sub_020060E4
	adds r0, r5, #0
	bl sub_020060E4
	adds r0, r4, #0
	bl sub_020060E4
	adds r0, r7, #0
	bl sub_02006158
	ldr r1, _02004D20 @ =0x0000056C
	adds r0, r7, r1
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _02004CEA
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, r2
	ble _02004CEA
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, r2
	ble _02004CEA
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _02004CEA
	ldr r0, [r7]
	bl sub_0200AF60
	movs r0, #0
	mov sl, r0
	str r0, [r7]
	ldr r1, _02004D08 @ =0x00000579
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	movs r6, #0xec
	muls r0, r6, r0
	movs r2, #0xa8
	adds r2, r2, r7
	mov r8, r2
	add r0, r8
	ldr r0, [r0]
	bl sub_0200AF60
	mov r3, sb
	ldrb r0, [r3]
	muls r0, r6, r0
	adds r5, r7, #0
	adds r5, #0xac
	adds r0, r5, r0
	ldr r0, [r0]
	bl sub_0200AF60
	mov r4, sb
	ldrb r0, [r4]
	muls r0, r6, r0
	adds r4, r7, #0
	adds r4, #0xb0
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_0200AF60
	mov r1, sb
	ldrb r0, [r1]
	muls r0, r6, r0
	add r8, r0
	mov r2, sl
	mov r3, r8
	str r2, [r3]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r5, r5, r0
	str r2, [r5]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r4, r4, r0
	str r2, [r4]
	movs r0, #0x10
	movs r1, #1
	bl sub_02001CE0
	ldr r0, _02004D24 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _02004D28 @ =sub_02004D30
	str r0, [r1, #8]
	bl m4aMPlayAllStop
_02004CEA:
	ldr r4, _02004D2C @ =0x0000057A
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004D04: .4byte 0xFFFFFE80
_02004D08: .4byte 0x00000579
_02004D0C: .4byte 0x00000574
_02004D10: .4byte gUnk_03000D70
_02004D14: .4byte gUnk_03002C50
_02004D18: .4byte sub_0200665C
_02004D1C: .4byte gUnk_03002C20
_02004D20: .4byte 0x0000056C
_02004D24: .4byte gUnk_03003DB0
_02004D28: .4byte sub_02004D30
_02004D2C: .4byte 0x0000057A

	thumb_func_start sub_02004D30
sub_02004D30: @ 0x02004D30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _02004D50 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004D54
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004D58
	.align 2, 0
_02004D50: .4byte gUnk_03003DB0
_02004D54:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004D58:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_02001FE0
	adds r6, r0, #0
	cmp r6, #0
	beq _02004D68
	b _02004EC6
_02004D68:
	ldr r1, _02004E60 @ =gUnk_03003E60
	movs r4, #0
	strh r6, [r1, #4]
	movs r0, #0x50
	strh r0, [r1, #6]
	subs r0, #0x60
	movs r1, #1
	bl sub_02001CE0
	ldr r0, _02004E64 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _02004E68 @ =sub_02004ED4
	str r0, [r1, #8]
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r0, _02004E6C @ =gUnk_020183F4
	ldr r2, [r0, #0x30]
	str r2, [r3]
	movs r1, #0xfc
	adds r1, r1, r7
	mov ip, r1
	ldr r1, [r0]
	mov r5, ip
	str r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r7, r0
	strb r4, [r0]
	movs r5, #0xf2
	lsls r5, r5, #1
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	adds r5, #8
	adds r0, r7, r5
	strb r4, [r0]
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _02004E70 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r4]
	ldr r4, _02004E74 @ =0x00000574
	adds r3, r7, r4
	ldrb r0, [r2]
	muls r0, r1, r0
	mov r4, ip
	adds r5, r4, r0
	ldr r0, [r5]
	str r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	add r0, r8
	ldrb r1, [r0]
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r0, r7, r5
	strb r1, [r0]
	ldr r0, _02004E78 @ =gUnk_03000D70
	str r7, [r0]
	ldr r3, _02004E7C @ =gUnk_03002C50
	ldr r2, _02004E80 @ =gUnk_03006850
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _02004E84 @ =sub_0200665C
	str r1, [r0]
	ldr r1, _02004E88 @ =gUnk_03002C20
	ldr r0, [r1]
	movs r4, #0x10
	orrs r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_020062F4
	ldr r0, _02004E8C @ =sub_02006718
	movs r1, #0x84
	lsls r1, r1, #4
	str r6, [sp]
	mov r2, r8
	movs r3, #0
	bl sub_0200AE44
	str r0, [r7]
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _02004E90
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004E94
	.align 2, 0
_02004E60: .4byte gUnk_03003E60
_02004E64: .4byte gUnk_03003DB0
_02004E68: .4byte sub_02004ED4
_02004E6C: .4byte gUnk_020183F4
_02004E70: .4byte 0x00000579
_02004E74: .4byte 0x00000574
_02004E78: .4byte gUnk_03000D70
_02004E7C: .4byte gUnk_03002C50
_02004E80: .4byte gUnk_03006850
_02004E84: .4byte sub_0200665C
_02004E88: .4byte gUnk_03002C20
_02004E8C: .4byte sub_02006718
_02004E90:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004E94:
	adds r1, r1, r0
	str r7, [r1]
	ldr r1, _02004EB8 @ =0x00000579
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	ldr r2, _02004EBC @ =0x00000105
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _02004EC0
	movs r0, #0x21
	bl m4aSongNumStart
	b _02004EC6
	.align 2, 0
_02004EB8: .4byte 0x00000579
_02004EBC: .4byte 0x00000105
_02004EC0:
	movs r0, #0x20
	bl m4aSongNumStart
_02004EC6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004ED4
sub_02004ED4: @ 0x02004ED4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _02004EF0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004EF4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004EF8
	.align 2, 0
_02004EF0: .4byte gUnk_03003DB0
_02004EF4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004EF8:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_02001FE0
	cmp r0, #0
	bne _02004FEE
	ldr r3, [r5, #4]
	cmp r3, #0
	bne _02004F88
	ldr r0, _02004F30 @ =gUnk_03000AB0
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _02004F52
	ldr r0, _02004F34 @ =gUnk_03000A68
	ldrb r0, [r0]
	ldr r1, _02004F38 @ =gUnk_0200EEF8
	cmp r0, #0
	beq _02004F3C
	movs r0, #0x50
	str r0, [sp]
	str r6, [sp, #4]
	b _02004F42
	.align 2, 0
_02004F30: .4byte gUnk_03000AB0
_02004F34: .4byte gUnk_03000A68
_02004F38: .4byte gUnk_0200EEF8
_02004F3C:
	movs r0, #0x50
	str r0, [sp]
	str r3, [sp, #4]
_02004F42:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_020021DC
	str r0, [r5, #4]
	b _02004FEE
_02004F52:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _02004FEE
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _02004F6C
	movs r0, #0xa5
	lsls r0, r0, #3
	adds r1, r5, r0
	b _02004F7A
_02004F6C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _02004FEE
	ldr r2, _02004F84 @ =0x00000529
	adds r1, r5, r2
_02004F7A:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _02004FEE
	.align 2, 0
_02004F84: .4byte 0x00000529
_02004F88:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _02004F9C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004FA0
_02004F9C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004FA0:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_020033E4
	cmp r0, #0
	beq _02004FEE
	movs r0, #0x10
	movs r1, #1
	bl sub_02001CE0
	ldr r1, _02004FD8 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _02004FDC @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _02004FE0 @ =gUnk_03003DB0
	cmp r0, #0
	beq _02004FE8
	ldr r1, [r1]
	ldr r0, _02004FE4 @ =sub_02004FFC
	b _02004FEC
	.align 2, 0
_02004FD8: .4byte 0x000002AD
_02004FDC: .4byte 0x0000057C
_02004FE0: .4byte gUnk_03003DB0
_02004FE4: .4byte sub_02004FFC
_02004FE8:
	ldr r1, [r1]
	ldr r0, _02004FF8 @ =sub_02005058
_02004FEC:
	str r0, [r1, #8]
_02004FEE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02004FF8: .4byte sub_02005058

	thumb_func_start sub_02004FFC
sub_02004FFC: @ 0x02004FFC
	push {r4, r5, lr}
	ldr r0, _02005018 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200501C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005020
	.align 2, 0
_02005018: .4byte gUnk_03003DB0
_0200501C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005020:
	adds r4, r1, r0
	bl sub_02001FE0
	adds r5, r0, #0
	cmp r5, #0
	bne _02005048
	bl m4aMPlayAllStop
	ldr r0, _02005050 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _02005054 @ =sub_02003CDC
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_0200AF60
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_0200AF60
	str r5, [r4, #4]
_02005048:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02005050: .4byte gUnk_03003DB0
_02005054: .4byte sub_02003CDC

	thumb_func_start sub_02005058
sub_02005058: @ 0x02005058
	push {r4, r5, lr}
	ldr r0, _02005074 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005078
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200507C
	.align 2, 0
_02005074: .4byte gUnk_03003DB0
_02005078:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200507C:
	adds r4, r1, r0
	bl sub_02001FE0
	adds r5, r0, #0
	cmp r5, #0
	bne _020050D8
	ldr r0, [r4]
	bl sub_0200AF60
	str r5, [r4]
	ldr r0, [r4, #4]
	bl sub_0200AF60
	str r5, [r4, #4]
	ldr r0, _020050E0 @ =gUnk_03000A40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _020050AE
	ldr r2, _020050E4 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _020050E8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_020050AE:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CE0
	ldr r2, _020050E4 @ =gUnk_03000AB0
	ldrh r1, [r2, #4]
	ldr r0, _020050E8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _020050EC @ =gUnk_03003E70
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _020050F0 @ =gUnk_03003DB0
	ldr r1, [r0]
	ldr r0, _020050F4 @ =sub_020050F8
	str r0, [r1, #8]
_020050D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020050E0: .4byte gUnk_03000A40
_020050E4: .4byte gUnk_03000AB0
_020050E8: .4byte 0x0000FFFD
_020050EC: .4byte gUnk_03003E70
_020050F0: .4byte gUnk_03003DB0
_020050F4: .4byte sub_020050F8

	thumb_func_start sub_020050F8
sub_020050F8: @ 0x020050F8
	push {lr}
	bl sub_02001FE0
	cmp r0, #0
	bne _02005106
	bl sub_0200036C
_02005106:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200510C
sub_0200510C: @ 0x0200510C
	push {lr}
	ldr r3, _02005128 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200512C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005130
	.align 2, 0
_02005128: .4byte gUnk_03003DB0
_0200512C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005130:
	adds r0, r1, r0
	ldr r1, _02005150 @ =0x0000057E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _0200514A
	ldr r0, [r3]
	bl sub_0200AF60
_0200514A:
	pop {r0}
	bx r0
	.align 2, 0
_02005150: .4byte 0x0000057E

	thumb_func_start sub_02005154
sub_02005154: @ 0x02005154
	push {r4, r5, lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _0200516C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _02005172
_0200516C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
_02005172:
	ldr r0, [r5, #0x10]
	bl sub_0200AF60
	movs r4, #0
	str r4, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl sub_0200AF60
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl sub_0200AF60
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl sub_0200AF60
	str r4, [r5, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200519C
sub_0200519C: @ 0x0200519C
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	movs r5, #0
	ldr r4, _020051D4 @ =gUnk_030070B8
	ldr r3, [r4]
	ldr r2, _020051D8 @ =0x00196225
	muls r2, r3, r2
	ldr r3, _020051DC @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r4]
	lsrs r2, r2, #0x10
	movs r3, #0xf
	ands r2, r3
	ldr r3, _020051E0 @ =gUnk_0200F25C
	adds r0, #0xb2
	lsrs r1, r1, #0x14
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _020051CA
	movs r5, #1
_020051CA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_020051D4: .4byte gUnk_030070B8
_020051D8: .4byte 0x00196225
_020051DC: .4byte 0x3C6EF35F
_020051E0: .4byte gUnk_0200F25C

	thumb_func_start sub_020051E4
sub_020051E4: @ 0x020051E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r3, #0
_020051F4:
	movs r0, #0xec
	adds r7, r3, #0
	muls r7, r0, r7
	adds r2, r4, r7
	adds r0, r2, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	adds r6, #0xba
	adds r5, r2, #0
	adds r5, #0xbc
	movs r1, #0xb8
	adds r1, r1, r2
	mov r8, r1
	adds r2, #0xbe
	mov sb, r2
	adds r2, r3, #1
	str r2, [sp]
	cmp r0, #0
	beq _02005250
	ldrh r0, [r6]
	movs r3, #0
	mov sl, r3
	strh r0, [r5]
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r4, r0
	ldr r2, _0200524C @ =0x0000057C
	adds r1, r4, r2
	ldrb r1, [r1]
	bl sub_0200519C
	strh r0, [r6]
	ldrh r1, [r5]
	eors r1, r0
	ands r1, r0
	mov r3, r8
	strh r1, [r3]
	mov r1, sl
	mov r0, sb
	strh r1, [r0]
	b _0200527A
	.align 2, 0
_0200524C: .4byte 0x0000057C
_02005250:
	ldrh r0, [r6]
	strh r0, [r5]
	ldr r2, _02005294 @ =gUnk_03000AB0
	lsls r1, r3, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r6]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x18
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, sb
	strh r0, [r1]
_0200527A:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _020051F4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005294: .4byte gUnk_03000AB0

	thumb_func_start sub_02005298
sub_02005298: @ 0x02005298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _020052C8 @ =0x0000052C
	adds r1, r6, r0
	ldr r2, _020052CC @ =0x0500000F
	mov r0, sp
	bl CpuSet
	movs r7, #0xa
	ldr r1, _020052D0 @ =0x0000057C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _020052DE
	cmp r0, #1
	bgt _020052D4
	cmp r0, #0
	beq _020052DA
	b _020052E4
	.align 2, 0
_020052C8: .4byte 0x0000052C
_020052CC: .4byte 0x0500000F
_020052D0: .4byte 0x0000057C
_020052D4:
	cmp r0, #2
	beq _020052E2
	b _020052E4
_020052DA:
	movs r7, #0x24
	b _020052E4
_020052DE:
	movs r7, #0x2e
	b _020052E4
_020052E2:
	movs r7, #0x38
_020052E4:
	movs r0, #9
	mov r8, r0
	movs r5, #0
	cmp r5, r7
	bhs _02005316
_020052EE:
	ldr r2, _02005374 @ =gUnk_030070B8
	ldr r1, [r2]
	ldr r0, _02005378 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0200537C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ldr r1, _02005380 @ =0x0000052C
	adds r4, r6, r1
	adds r4, r4, r5
	mov r1, r8
	bl __umodsi3
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _020052EE
_02005316:
	movs r5, #0
	cmp r5, r7
	bhs _02005330
_0200531C:
	ldr r1, _02005380 @ =0x0000052C
	adds r0, r6, r1
	adds r0, r0, r5
	movs r1, #9
	strb r1, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _0200531C
_02005330:
	ldr r0, _02005380 @ =0x0000052C
	adds r2, r6, r0
	movs r3, #0
	movs r0, #0xa
	strb r0, [r2]
	ldr r1, _02005384 @ =0x0000052D
	adds r0, r6, r1
	strb r3, [r0]
	subs r0, r7, #2
	adds r0, r2, r0
	strb r3, [r0]
	subs r0, r7, #1
	adds r0, r2, r0
	movs r1, #0xb
	strb r1, [r0]
	adds r2, r2, r7
	strb r3, [r2]
	movs r0, #0xad
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
	ldr r0, _02005388 @ =0x0000056C
	adds r1, r6, r0
	adds r0, r7, #1
	lsls r0, r0, #0xa
	str r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005374: .4byte gUnk_030070B8
_02005378: .4byte 0x00196225
_0200537C: .4byte 0x3C6EF35F
_02005380: .4byte 0x0000052C
_02005384: .4byte 0x0000052D
_02005388: .4byte 0x0000056C

	thumb_func_start sub_0200538C
sub_0200538C: @ 0x0200538C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sl, r0
	movs r1, #8
	mov r8, r1
	ldr r1, _020053B4 @ =0x0000057C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _020053C2
	cmp r0, #1
	bgt _020053B8
	cmp r0, #0
	beq _020053BE
	b _020053CC
	.align 2, 0
_020053B4: .4byte 0x0000057C
_020053B8:
	cmp r0, #2
	beq _020053C8
	b _020053CC
_020053BE:
	movs r0, #0x24
	b _020053CA
_020053C2:
	movs r1, #0x2e
	mov r8, r1
	b _020053CC
_020053C8:
	movs r0, #0x38
_020053CA:
	mov r8, r0
_020053CC:
	ldr r0, _02005464 @ =0x00000524
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	cmp r6, r8
	bhs _0200543A
_020053DA:
	ldr r1, _02005468 @ =0x0000052C
	adds r0, r4, r1
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r0, _0200546C @ =gUnk_0201845C
	adds r0, r1, r0
	ldrb r7, [r0]
	ldr r0, _02005470 @ =gUnk_02018469
	adds r1, r1, r0
	ldrb r1, [r1]
	mov sb, r1
	movs r5, #0
	cmp r5, r7
	bhs _02005430
_020053F6:
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _02005474 @ =0x0000045C
	adds r0, r0, r1
	adds r0, r4, r0
	mov r1, sb
	adds r2, r1, r5
	lsls r2, r2, #2
	ldr r1, _02005478 @ =gUnk_02018478
	adds r2, r2, r1
	adds r1, r4, #0
	adds r1, #8
	adds r3, r6, #0
	bl sub_020037C4
	mov r0, sl
	cmp r0, #9
	bhi _0200543A
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _020053F6
_02005430:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _020053DA
_0200543A:
	ldr r1, _02005464 @ =0x00000524
	adds r2, r4, r1
	movs r0, #0
	strb r0, [r2]
	adds r1, #6
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005454
	mov r0, sl
	strb r0, [r2]
_02005454:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005464: .4byte 0x00000524
_02005468: .4byte 0x0000052C
_0200546C: .4byte gUnk_0201845C
_02005470: .4byte gUnk_02018469
_02005474: .4byte 0x0000045C
_02005478: .4byte gUnk_02018478

	thumb_func_start sub_0200547C
sub_0200547C: @ 0x0200547C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r3, #0
	cmp r3, r7
	bhs _020054E6
_0200548A:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, ip
	adds r2, r0, r1
	ldrh r4, [r2, #0x12]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r4
	ldr r5, [r2, #4]
	adds r3, #1
	cmp r0, #0
	beq _020054C4
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _020054B0
	rsbs r1, r1, #0
_020054B0:
	subs r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	bge _020054DE
	ldr r0, _020054C0 @ =0x0000FEFF
	ands r0, r4
	b _020054DC
	.align 2, 0
_020054C0: .4byte 0x0000FEFF
_020054C4:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _020054CE
	rsbs r1, r1, #0
_020054CE:
	adds r1, r5, r1
	str r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _020054DE
	adds r0, r6, #0
	orrs r0, r4
_020054DC:
	strh r0, [r2, #0x12]
_020054DE:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _0200548A
_020054E6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_020054EC
sub_020054EC: @ 0x020054EC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x94
	ldrh r1, [r3]
	movs r0, #0x20
	movs r7, #0
	orrs r1, r0
	strh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0200550C
	ldr r0, _02005594 @ =0x0000FFDF
	ands r1, r0
	strh r1, [r3]
_0200550C:
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _02005524
	ldrh r1, [r3]
	ldr r0, _02005594 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
_02005524:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0200558E
	adds r0, r2, #0
	adds r0, #0x98
	ldrh r1, [r0]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200558E
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0200558E
	adds r0, #1
	strb r0, [r1]
	adds r5, r2, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0200558E
	adds r0, r1, #0
	orrs r0, r6
	movs r1, #2
	orrs r0, r1
	strh r0, [r5]
	adds r0, r2, #0
	adds r0, #0xa2
	strh r4, [r0]
	adds r1, r2, #0
	adds r1, #0xa0
	movs r0, #6
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xbf
	strb r6, [r0]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0200558E
	ldr r0, _02005598 @ =0x0000022D
	bl m4aSongNumStart
_0200558E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005594: .4byte 0x0000FFDF
_02005598: .4byte 0x0000022D

	thumb_func_start sub_0200559C
sub_0200559C: @ 0x0200559C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xb8
	adds r0, r0, r4
	mov r8, r0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xa4
	cmp r0, #0
	bne _020055C8
	ldrh r1, [r2]
	ldr r0, _020055C4 @ =0x0000EFFF
	ands r0, r1
	b _020055D8
	.align 2, 0
_020055C4: .4byte 0x0000EFFF
_020055C8:
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
_020055D8:
	strh r0, [r2]
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r2, [r6]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _020055EC
	b _02005706
_020055EC:
	ldr r1, _02005644 @ =0x0000FFFD
	ands r1, r2
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _020055FE
	b _02005706
_020055FE:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0200560C
	cmp r0, #0xb
	bne _02005648
_0200560C:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0200750C
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _020056F4
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	b _020056DA
	.align 2, 0
_02005644: .4byte 0x0000FFFD
_02005648:
	cmp r0, #9
	beq _02005650
	cmp r0, #0xc
	bne _02005688
_02005650:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0200750C
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _020056F4
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	b _020056DA
_02005688:
	cmp r0, #0xa
	beq _02005690
	cmp r0, #0xd
	bne _02005706
_02005690:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #6
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0200750C
	ldr r0, _02005710 @ =gUnk_0200EF70
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	adds r0, #0x4a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _020056F4
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #2
_020056DA:
	bl sub_02007690
	adds r0, r4, #0
	bl sub_02006A30
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _020056F4
	ldr r0, _02005714 @ =0x00000232
	bl m4aSongNumStart
_020056F4:
	ldrh r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r6]
	movs r0, #0xa
	mov r3, r8
	strb r0, [r3]
_02005706:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005710: .4byte gUnk_0200EF70
_02005714: .4byte 0x00000232

	thumb_func_start sub_02005718
sub_02005718: @ 0x02005718
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r3, [r6]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _02005776
	ldr r5, _0200577C @ =gUnk_0200F1FC
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r1, r1, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _02005776
	movs r0, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xa8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xa0
	strb r1, [r0]
_02005776:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200577C: .4byte gUnk_0200F1FC

	thumb_func_start sub_02005780
sub_02005780: @ 0x02005780
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r0, #0xa4
	adds r0, r0, r3
	mov r8, r0
	ldrh r6, [r0]
	movs r0, #1
	ands r0, r6
	adds r4, r3, #0
	adds r4, #0xa2
	movs r1, #0xa1
	adds r1, r1, r3
	mov ip, r1
	cmp r0, #0
	beq _02005810
	adds r0, r3, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r4, #0
	ldrh r0, [r4]
	muls r1, r0, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r2, r0, #0
	muls r2, r0, r2
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r2, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _020057F4
	ldr r0, _020057EC @ =0x0000FFFE
	ands r0, r6
	movs r2, #0
	ldr r1, _020057F0 @ =0x0000FFEF
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	strh r2, [r4]
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r0, [r0]
	str r0, [r1]
	b _0200583C
	.align 2, 0
_020057EC: .4byte 0x0000FFFE
_020057F0: .4byte 0x0000FFEF
_020057F4:
	adds r1, r3, #0
	adds r1, #0xaa
	cmp r0, #0x1f
	ble _02005804
	ldr r0, _02005800 @ =0x0000FFE0
	b _02005806
	.align 2, 0
_02005800: .4byte 0x0000FFE0
_02005804:
	rsbs r0, r0, #0
_02005806:
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _0200583C
_02005810:
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r1, r0, #0
	muls r1, r0, r1
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r1, r0
	lsls r0, r0, #0xf
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	adds r1, #0xaa
	cmp r0, #0xf
	ble _02005834
	movs r0, #0x10
	strh r0, [r1]
	b _0200583C
_02005834:
	strh r2, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0200583C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005848
sub_02005848: @ 0x02005848
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc0
	adds r0, #0xa8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r0, r3, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_02005870
sub_02005870: @ 0x02005870
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa8
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _020058AC @ =0x000002FF
	cmp r1, r0
	bgt _02005886
	adds r0, r3, #4
	strh r0, [r2]
_02005886:
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _02005898
	subs r0, r3, #3
	strh r0, [r2]
_02005898:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _020058A6
	strh r1, [r2]
_020058A6:
	pop {r0}
	bx r0
	.align 2, 0
_020058AC: .4byte 0x000002FF

	thumb_func_start sub_020058B0
sub_020058B0: @ 0x020058B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldrh r0, [r4]
	ldr r1, _02005A38 @ =0x0000FFE0
	ands r1, r0
	strh r1, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _02005904
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _020058F4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _020058FC
_020058F4:
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_020058FC:
	ldrh r1, [r4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4]
_02005904:
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _02005924
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_02005924:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _02005970
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _02005958
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _02005964
_02005958:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_02005964:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_02005970:
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	adds r6, r5, #0
	adds r6, #0x94
	cmp r0, #0
	beq _02005990
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
_02005990:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _02005A9C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _020059C4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _020059D0
_020059C4:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
_020059D0:
	adds r2, r5, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #0x10
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r3, r5, #0
	adds r3, #0xac
	ldr r0, [r3]
	cmp r0, #0
	beq _02005A46
	subs r2, #0xc
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02005A44
	ldr r0, _02005A3C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r0, [r3]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r3]
	movs r1, #0x60
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _02005A46
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [r3]
	adds r0, r5, #0
	adds r0, #0xe4
	strb r4, [r0]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005ABC
	ldr r0, _02005A40 @ =0x0000022E
	bl m4aSongNumStart
	b _02005A46
	.align 2, 0
_02005A38: .4byte 0x0000FFE0
_02005A3C: .4byte 0x0000FFBF
_02005A40: .4byte 0x0000022E
_02005A44:
	str r0, [r3]
_02005A46:
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005ABC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x90
	cmp r0, #1
	bne _02005A8C
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005A84
	ldr r0, [r4]
	bl sub_02006D24
	ldr r0, [r4]
	movs r1, #1
	bl sub_02006D84
	b _02005ABC
_02005A84:
	ldr r0, [r4]
	bl sub_02006D54
	b _02005ABC
_02005A8C:
	ldr r0, [r4]
	bl sub_02006D24
	ldr r0, [r4]
	movs r1, #0
	bl sub_02006D84
	b _02005ABC
_02005A9C:
	adds r2, r5, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005ABC
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_02006D54
_02005ABC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005AC4
sub_02005AC4: @ 0x02005AC4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _02005AE4
	adds r1, r2, #0
	adds r1, #0xe6
	ldrh r0, [r1]
	cmp r0, #0
	bne _02005AE4
	strh r3, [r1]
_02005AE4:
	pop {r0}
	bx r0

	thumb_func_start sub_02005AE8
sub_02005AE8: @ 0x02005AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0xc4
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #0xb
	lsrs r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _02005B22
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _02005B7E
	b _02005B22
_02005B16:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _02005B22
	movs r1, #0
_02005B22:
	ldr r0, _02005B8C @ =gUnk_0200F20C
	mov sb, r0
	adds r7, r4, #0
	adds r7, #0xc0
	ldr r0, [r7]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r5, r6, #5
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r2, [r1]
	adds r1, r5, #0
	bl sub_02006220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _02005B16
	mov r1, r8
	str r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_020061F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r2, [r0]
	ldr r3, _02005B90 @ =gUnk_0200F21C
	ldr r0, [r7]
	asrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xd0
	strh r0, [r1]
_02005B7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005B8C: .4byte gUnk_0200F20C
_02005B90: .4byte gUnk_0200F21C

	thumb_func_start sub_02005B94
sub_02005B94: @ 0x02005B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	b _02005C92
_02005BAE:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r4, [sp]
	adds r2, r0, r4
	ldrh r0, [r2, #0x12]
	ldr r6, _02005CA8 @ =0x0000FF0E
	ands r6, r0
	strh r6, [r2, #0x12]
	movs r1, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r3, [r0]
	ldr r5, _02005CAC @ =0xFFFFFF00
	mov r8, r5
	adds r0, r3, r5
	ldr r4, [r2]
	cmp r0, r4
	bgt _02005BD8
	movs r1, #1
_02005BD8:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r3, r7
	cmp r4, r0
	bgt _02005BE6
	movs r5, #1
_02005BE6:
	ands r1, r5
	cmp r1, #0
	beq _02005BF8
	movs r0, #1
	adds r1, r6, #0
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r2, #0x12]
_02005BF8:
	movs r3, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _02005C0C
	movs r3, #1
_02005C0C:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _02005C16
	movs r5, #1
_02005C16:
	ands r3, r5
	cmp r3, #0
	beq _02005C28
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x12]
_02005C28:
	movs r3, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _02005C3C
	movs r3, #1
_02005C3C:
	movs r5, #0
	adds r0, r1, r7
	cmp r4, r0
	bgt _02005C46
	movs r5, #1
_02005C46:
	ands r3, r5
	cmp r3, #0
	beq _02005C58
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2, #0x12]
_02005C58:
	movs r3, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r4
	bgt _02005C6C
	movs r3, #1
_02005C6C:
	movs r4, #0
	adds r1, r1, r7
	ldr r0, [r2]
	cmp r0, r1
	bgt _02005C78
	movs r4, #1
_02005C78:
	ands r3, r4
	cmp r3, #0
	beq _02005C8A
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r2, #0x12]
_02005C8A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_02005C92:
	mov sb, r0
	cmp sb, sl
	blo _02005BAE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005CA8: .4byte 0x0000FF0E
_02005CAC: .4byte 0xFFFFFF00

	thumb_func_start sub_02005CB0
sub_02005CB0: @ 0x02005CB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	movs r0, #0
	b _02005D9E
_02005CCA:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r3, r0, r2
	ldrh r0, [r3, #0x12]
	ldr r6, _02005DB4 @ =0x0000FF0E
	ands r6, r0
	strh r6, [r3, #0x12]
	movs r4, #0
	mov r0, ip
	adds r0, #0xc0
	ldr r1, [r0]
	ldr r5, _02005DB8 @ =0xFFFFFF00
	mov r8, r5
	adds r0, r1, r5
	ldr r2, [r3]
	cmp r0, r2
	bgt _02005CF4
	movs r4, #1
_02005CF4:
	movs r5, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r1, r7
	cmp r2, r0
	bgt _02005D02
	movs r5, #1
_02005D02:
	ands r4, r5
	cmp r4, #0
	beq _02005D10
	movs r1, #0xf1
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #0x12]
_02005D10:
	movs r4, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _02005D24
	movs r4, #1
_02005D24:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _02005D2E
	movs r5, #1
_02005D2E:
	ands r4, r5
	cmp r4, #0
	beq _02005D3C
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_02005D3C:
	movs r4, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _02005D50
	movs r4, #1
_02005D50:
	movs r5, #0
	adds r0, r1, r7
	cmp r2, r0
	bgt _02005D5A
	movs r5, #1
_02005D5A:
	ands r4, r5
	cmp r4, #0
	beq _02005D68
	ldrh r0, [r3, #0x12]
	movs r1, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_02005D68:
	movs r4, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r5, r8
	adds r0, r1, r5
	cmp r0, r2
	bgt _02005D7C
	movs r4, #1
_02005D7C:
	movs r5, #0
	adds r1, r1, r7
	ldr r0, [r3]
	cmp r0, r1
	bgt _02005D88
	movs r5, #1
_02005D88:
	ands r4, r5
	cmp r4, #0
	beq _02005D96
	ldrh r1, [r3, #0x12]
	movs r0, #0xf1
	orrs r0, r1
	strh r0, [r3, #0x12]
_02005D96:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_02005D9E:
	mov sb, r0
	cmp sb, sl
	blo _02005CCA
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005DB4: .4byte 0x0000FF0E
_02005DB8: .4byte 0xFFFFFF00

	thumb_func_start sub_02005DBC
sub_02005DBC: @ 0x02005DBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	movs r7, #0
	cmp r7, r8
	bhs _02005E7A
_02005DD4:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r3, r0, r1
	ldrh r1, [r3, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005E70
	movs r5, #0
	ldr r0, [r3]
	asrs r4, r0, #2
	adds r1, r4, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	asrs r2, r0, #2
	cmp r1, r2
	bgt _02005E00
	movs r5, #1
_02005E00:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe
	cmp r2, r0
	bgt _02005E0C
	movs r1, #1
_02005E0C:
	adds r2, r5, #0
	ands r2, r1
	movs r4, #0
	ldr r0, [r3, #4]
	asrs r5, r0, #2
	adds r1, r5, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r3, r0, #2
	cmp r1, r3
	bgt _02005E28
	movs r4, #1
_02005E28:
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0xe
	cmp r3, r0
	bgt _02005E34
	movs r1, #1
_02005E34:
	ands r4, r1
	ands r2, r4
	cmp r2, #0
	beq _02005E70
	adds r4, r6, #0
	adds r4, #0xa4
	ldrh r1, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _02005E70
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005E62
	ldr r0, _02005E88 @ =0x00000235
	bl m4aSongNumStart
_02005E62:
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
_02005E70:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, r8
	blo _02005DD4
_02005E7A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005E88: .4byte 0x00000235

	thumb_func_start sub_02005E8C
sub_02005E8C: @ 0x02005E8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _02005F14
	adds r6, r4, #0
	adds r6, #0xb2
	ldrb r2, [r6]
	cmp r2, #0
	beq _02005EFA
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _02005ED8
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005EC8
	cmp r2, #1
	bne _02005EC8
	adds r0, r4, #0
	bl sub_02006E08
_02005EC8:
	ldrh r0, [r5]
	ldr r1, _02005F78 @ =0x0000FF7F
	ands r1, r0
	strh r1, [r5]
	adds r1, r4, #0
	adds r1, #0xbf
	movs r0, #5
	strb r0, [r1]
_02005ED8:
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _02005EFA
	cmp r1, #4
	beq _02005EEE
	adds r0, #1
	strb r0, [r2]
_02005EEE:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xa
	ble _02005EFA
	movs r0, #0
	strb r0, [r2]
_02005EFA:
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _02005F14
	ldrb r1, [r6]
	cmp r1, #0
	beq _02005F14
	adds r0, r4, #0
	adds r0, #0xbc
	strb r1, [r0]
_02005F14:
	movs r0, #0xbd
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0xbe
	strb r0, [r5]
	ldr r3, _02005F7C @ =gUnk_0200F070
	adds r0, r4, #0
	adds r0, #0xbf
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _02005F80 @ =gUnk_0200F060
	subs r0, #3
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0xb
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r2, [r1]
	mov r1, ip
	strb r2, [r1]
	adds r3, r4, #0
	adds r3, #0xa4
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02005F88
	adds r2, r4, #0
	adds r2, #0xb4
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _02005FAC
	ldrh r1, [r3]
	ldr r0, _02005F84 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	strh r0, [r2]
	b _02005F8E
	.align 2, 0
_02005F78: .4byte 0x0000FF7F
_02005F7C: .4byte gUnk_0200F070
_02005F80: .4byte gUnk_0200F060
_02005F84: .4byte 0x0000FBFF
_02005F88:
	ldrb r0, [r5]
	cmp r0, r2
	beq _02005FAC
_02005F8E:
	ldr r1, _02005FB4 @ =gUnk_0200EF70
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0x28]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_02005FAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02005FB4: .4byte gUnk_0200EF70

	thumb_func_start sub_02005FB8
sub_02005FB8: @ 0x02005FB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02006020
	ldr r0, _02005FF4 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r5]
	movs r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0xb
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005FF8
	adds r0, r4, #0
	bl sub_02007768
	b _02005FFC
	.align 2, 0
_02005FF4: .4byte 0x0000FEFF
_02005FF8:
	bl sub_02007834
_02005FFC:
	ldrh r1, [r5]
	movs r0, #1
	movs r3, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	strb r3, [r0]
	subs r0, #0x3c
	strh r2, [r0]
_02006020:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006028
sub_02006028: @ 0x02006028
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r5, ip
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r6, _02006084 @ =0xFFFFFF00
	adds r0, r0, r6
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _02006042
	movs r1, #0
_02006042:
	mov r3, ip
	adds r3, #0xd8
	ldr r4, _02006088 @ =gUnk_020183F4
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, ip
	adds r2, #0xd4
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldr r0, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, [r5]
	adds r0, r0, r6
	asrs r1, r0, #2
	movs r0, #0xff
	ands r1, r0
	mov r0, ip
	adds r0, #0xe0
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02006084: .4byte 0xFFFFFF00
_02006088: .4byte gUnk_020183F4

	thumb_func_start sub_0200608C
sub_0200608C: @ 0x0200608C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x94
	ldrh r0, [r4]
	ldr r6, _020060E0 @ =0x0000FFFB
	ands r6, r0
	strh r6, [r4]
	movs r5, #0
	ldr r1, [r1]
	adds r2, r1, #0
	cmp r1, #0
	bge _020060A8
	rsbs r2, r1, #0
_020060A8:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r3, [r0]
	cmp r2, r3
	bgt _020060B4
	movs r5, #1
_020060B4:
	movs r2, #0
	adds r0, r1, #0
	cmp r0, #0
	bge _020060BE
	rsbs r0, r0, #0
_020060BE:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	cmp r3, r0
	bgt _020060CA
	movs r2, #1
_020060CA:
	ands r5, r2
	cmp r5, #0
	beq _020060D8
	movs r1, #4
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4]
_020060D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020060E0: .4byte 0x0000FFFB

	thumb_func_start sub_020060E4
sub_020060E4: @ 0x020060E4
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0xc4
	adds r0, r3, #0
	adds r0, #0xd0
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02006114
	adds r0, r3, #0
	bl sub_02001ACC
_02006114:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200611C
sub_0200611C: @ 0x0200611C
	adds r3, r0, #0
	ldr r2, _02006154 @ =gUnk_0200F0F4
	movs r0, #0xe5
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x2c]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_02006154: .4byte gUnk_0200F0F4

	thumb_func_start sub_02006158
sub_02006158: @ 0x02006158
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0200616C @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _02006170 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r5, #0
	b _020061D0
	.align 2, 0
_0200616C: .4byte 0x0000044C
_02006170: .4byte 0x0000FEFF
_02006174:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r2, _020061E0 @ =0x0000046E
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _020061E4 @ =0x00000579
	adds r2, r4, r0
	movs r0, #0x10
	ldrb r2, [r2]
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _020061CA
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r4, r2
	adds r2, #0x1c
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _020061E8 @ =0x00000444
	adds r1, r4, r0
	adds r2, #4
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	bl sub_02001ACC
	ldr r0, _020061EC @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_020061CA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_020061D0:
	ldr r1, _020061F0 @ =0x00000524
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _02006174
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020061E0: .4byte 0x0000046E
_020061E4: .4byte 0x00000579
_020061E8: .4byte 0x00000444
_020061EC: .4byte 0x0000044C
_020061F0: .4byte 0x00000524

	thumb_func_start sub_020061F4
sub_020061F4: @ 0x020061F4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0xc4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xd4
	ldr r2, [r2]
	bl sub_02006220
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_02006220
sub_02006220: @ 0x02006220
	push {r4, lr}
	ldr r3, _02006258 @ =0x000003FF
	adds r4, r3, #0
	adds r3, r0, #0
	ands r3, r4
	ands r1, r4
	ldr r4, _0200625C @ =gUnk_02018428
	asrs r0, r0, #0xa
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsrs r1, r1, #5
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x16
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	asrs r3, r3, #0x15
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _02006260
	movs r0, #0xf
	ands r0, r1
	b _02006262
	.align 2, 0
_02006258: .4byte 0x000003FF
_0200625C: .4byte gUnk_02018428
_02006260:
	lsrs r0, r1, #4
_02006262:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_02006268
sub_02006268: @ 0x02006268
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0xe0
	ldr r0, [r7]
	str r0, [sp]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r1, #0xec
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r1, #0xec
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	movs r5, #0
_02006292:
	movs r6, #0
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r2, r0
	bge _0200629E
	adds r2, r0, #0
_0200629E:
	ldr r0, [sp, #4]
	cmp r2, r0
	bge _020062A6
	adds r2, r0, #0
_020062A6:
	ldr r0, [sp]
	cmp r2, r0
	bge _020062AE
	adds r2, r0, #0
_020062AE:
	movs r3, #0
_020062B0:
	movs r0, #0xec
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r2, r0
	bne _020062D4
	adds r0, r4, r1
	ldr r1, _020062F0 @ =0x00000105
	adds r0, r0, r1
	movs r1, #0
	strb r5, [r0]
	lsls r0, r3, #2
	add r0, sp
	str r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_020062D4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _020062B0
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02006292
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020062F0: .4byte 0x00000105

	thumb_func_start sub_020062F4
sub_020062F4: @ 0x020062F4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r1, sp
	movs r2, #0x83
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r7, #0xf9
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r2, _02006340 @ =0x000002DE
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r7, _02006344 @ =0x000003CA
	adds r0, r4, r7
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r5, #0
_02006322:
	movs r6, #0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _02006348
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r3, r0
	blt _02006350
	b _02006356
	.align 2, 0
_02006340: .4byte 0x000002DE
_02006344: .4byte 0x000003CA
_02006348:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	bge _02006356
_02006350:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _02006366
_02006356:
	mov r0, sp
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _0200636C
	mov r0, sp
	ldrh r0, [r0, #4]
_02006366:
	cmp r2, r0
	blt _02006374
	b _0200637A
_0200636C:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _0200637A
_02006374:
	mov r0, sp
	ldrh r0, [r0]
	b _020063AE
_0200637A:
	mov r0, sp
	ldrh r2, [r0, #2]
	mov r1, sp
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	cmp r0, r1
	bhs _02006392
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _0200639A
	b _020063A0
_02006392:
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	bge _020063A0
_0200639A:
	mov r0, sp
	ldrh r0, [r0, #2]
	b _020063AE
_020063A0:
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #6]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bls _020063AE
	adds r0, r1, #0
_020063AE:
	adds r3, r0, #0
	movs r2, #0
_020063B2:
	movs r0, #0xec
	muls r0, r2, r0
	adds r1, r4, r0
	movs r7, #0x83
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r3, r0
	bne _020063E6
	subs r7, #1
	adds r0, r1, r7
	strb r5, [r0]
	adds r1, r5, r6
	movs r7, #0xf4
	lsls r7, r7, #2
	adds r0, r4, r7
	adds r0, r0, r1
	strb r2, [r0]
	lsls r0, r2, #1
	mov r7, sp
	adds r1, r7, r0
	ldr r0, _02006404 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_020063E6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _020063B2
	adds r0, r5, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02006322
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006404: .4byte 0x0000FFFF

	thumb_func_start sub_02006408
sub_02006408: @ 0x02006408
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0200646C @ =0x0000176F
	cmp r4, r0
	bls _02006418
	adds r4, r0, #0
_02006418:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200646C: .4byte 0x0000176F

	thumb_func_start sub_02006470
sub_02006470: @ 0x02006470
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r2, _020064D8 @ =0x05000011
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _020064DC @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r0, _020064E0 @ =gUnk_0200F0F4
	ldrh r1, [r0, #0x2c]
	strh r1, [r4, #0xc]
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	movs r0, #0x40
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020064D8: .4byte 0x05000011
_020064DC: .4byte 0x06010000
_020064E0: .4byte gUnk_0200F0F4

	thumb_func_start sub_020064E4
sub_020064E4: @ 0x020064E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _02006538 @ =0x0000052A
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02006502
	b _02006636
_02006502:
	ldr r0, _0200653C @ =gUnk_03000A68
	ldrb r0, [r0]
	movs r2, #0xec
	muls r0, r2, r0
	adds r0, r5, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _02006558
	ldr r1, _02006540 @ =0x0000057D
	adds r0, r5, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _02006544
	adds r3, #0xe6
	adds r0, r2, r3
	b _02006548
	.align 2, 0
_02006538: .4byte 0x0000052A
_0200653C: .4byte gUnk_03000A68
_02006540: .4byte 0x0000057D
_02006544:
	ldr r1, _02006554 @ =0x0000057A
	adds r0, r5, r1
_02006548:
	ldrh r1, [r0]
	mov r0, sp
	bl sub_02006408
	b _02006564
	.align 2, 0
_02006554: .4byte 0x0000057A
_02006558:
	ldr r2, _02006648 @ =0x0000057A
	adds r0, r5, r2
	ldrh r1, [r0]
	mov r0, sp
	bl sub_02006408
_02006564:
	movs r4, #0
_02006566:
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r6, _0200664C @ =gUnk_0200F0F4
	movs r1, #3
	subs r1, r1, r4
	mov r3, sp
	adds r2, r3, r1
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1, #0x2c]
	strh r1, [r0, #0xc]
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r6
	adds r1, #0x2e
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r5, r3
	ldr r1, _02006650 @ =gUnk_0200F28C
	mov sb, r1
	lsls r1, r4, #1
	add r1, sb
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	str r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r3, #0x40
	mov r8, r3
	str r3, [r1]
	bl sub_02001ACC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _02006566
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r6, r5, r2
	mov r3, sb
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	str r0, [r6]
	adds r2, #4
	adds r5, r5, r2
	mov r3, r8
	str r3, [r5]
	adds r0, r4, #0
	bl sub_02001ACC
	ldr r0, _02006654 @ =0xFFFF0000
	ands r7, r0
	movs r0, #4
	orrs r7, r0
	ldr r0, _02006658 @ =0xFF00FFFF
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r7, r0
	strh r7, [r4, #0xc]
	lsrs r0, r7, #0x10
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r4, #0x1b]
	mov r2, sb
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	lsls r0, r0, #2
	str r0, [r6]
	mov r0, r8
	str r0, [r5]
	adds r0, r4, #0
	bl sub_02001ACC
_02006636:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006648: .4byte 0x0000057A
_0200664C: .4byte gUnk_0200F0F4
_02006650: .4byte gUnk_0200F28C
_02006654: .4byte 0xFFFF0000
_02006658: .4byte 0xFF00FFFF

	thumb_func_start sub_0200665C
sub_0200665C: @ 0x0200665C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02006704 @ =gUnk_03000D70
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	str r0, [sp]
	ldr r4, _02006708 @ =0x0600E000
	ldr r2, _0200670C @ =0x05000200
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r3, #0xae
	lsls r3, r3, #3
	add r3, r8
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, r8
	ldrb r1, [r0]
	lsrs r1, r1, #3
	lsls r2, r1, #1
	ldr r0, [r3]
	adds r7, r0, r2
	ldr r0, _02006710 @ =0x00000574
	add r0, r8
	ldr r6, [r0]
	mov sb, r4
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, r4
	movs r0, #0
	mov sl, r0
_020066A8:
	movs r4, #0xaf
	lsls r4, r4, #3
	add r4, r8
	ldrb r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	movs r2, #0x40
	subs r2, r2, r0
	asrs r2, r2, #1
	ldr r1, _02006714 @ =0x001FFFFF
	ands r2, r1
	adds r0, r7, #0
	mov r1, sb
	bl CpuSet
	ldrb r0, [r4]
	lsrs r2, r0, #3
	cmp r2, #0
	beq _020066DA
	ldr r0, _02006714 @ =0x001FFFFF
	ands r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuSet
_020066DA:
	movs r1, #0x40
	add sb, r1
	adds r5, #0x40
	adds r7, #0x40
	adds r6, #0x40
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x1f
	bls _020066A8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006704: .4byte gUnk_03000D70
_02006708: .4byte 0x0600E000
_0200670C: .4byte 0x05000200
_02006710: .4byte 0x00000574
_02006714: .4byte 0x001FFFFF

	thumb_func_start sub_02006718
sub_02006718: @ 0x02006718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r3, _02006744 @ =gUnk_03003DB0
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02006748 @ =sub_020069C4
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x18]
	cmp r0, #0
	beq _0200674C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006750
	.align 2, 0
_02006744: .4byte gUnk_03003DB0
_02006748: .4byte sub_020069C4
_0200674C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006750:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r0, [r3]
	str r2, [r0, #8]
	adds r1, r7, #0
	ldm r1!, {r0}
	str r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r2, _020068F0 @ =0xFFFF0000
	ands r6, r2
	movs r3, #4
	mov sl, r3
	orrs r6, r3
	ldr r4, _020068F4 @ =0xFF00FFFF
	mov r8, r4
	ands r6, r4
	movs r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r2, _020068F8 @ =0x05000011
	bl CpuSet
	ldr r0, _020068FC @ =0x06010000
	mov sb, r0
	str r0, [r7, #4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x18]
	strh r6, [r7, #0x10]
	movs r0, #0
	strb r0, [r7, #0x1e]
	strh r4, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r5, #0x10
	strb r5, [r0]
	adds r0, #3
	mov r2, sl
	strb r2, [r0]
	movs r0, #0x3b
	strh r0, [r7, #0x14]
	strh r5, [r7, #0x16]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	str r3, [r7, #0xc]
	movs r0, #0xec
	str r0, [r7, #0x2c]
	movs r0, #0x40
	str r0, [r7, #0x30]
	strh r4, [r7, #0x34]
	strh r4, [r7, #0x36]
	strh r5, [r7, #0x38]
	strh r4, [r7, #0x3a]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	ldr r1, _020068F0 @ =0xFFFF0000
	ands r6, r1
	mov r2, sl
	orrs r6, r2
	mov r3, r8
	ands r6, r3
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	str r4, [sp, #8]
	adds r1, r7, #0
	adds r1, #0x48
	ldr r0, [sp, #0x18]
	ldr r2, _020068F8 @ =0x05000011
	bl CpuSet
	mov r0, sb
	str r0, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	subs r0, #8
	strh r6, [r0]
	lsrs r0, r6, #0x10
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r4, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r2, #0x10
	strb r2, [r0]
	adds r0, #3
	mov r3, sl
	strb r3, [r0]
	subs r1, #0xb
	movs r0, #0xb5
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	movs r0, #0xb5
	lsls r0, r0, #2
	str r0, [r7, #0x70]
	movs r1, #0x40
	str r1, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	movs r2, #0
	mov r8, r2
_0200685A:
	mov r3, r8
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	adds r0, r5, #0
	adds r0, #0xd0
	adds r0, r7, r0
	ldr r1, [sp, #0x10]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r4, r1, r2
	add r4, r8
	ldrb r1, [r4]
	movs r2, #0xec
	muls r2, r1, r2
	ldr r3, [sp, #0x14]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0xe5
	ldrb r3, [r3]
	adds r2, #0xe6
	ldrh r2, [r2]
	str r2, [sp]
	mov r2, r8
	bl sub_020037FC
	ldr r0, [sp, #0x10]
	ldr r2, _02006900 @ =0x00000579
	adds r1, r0, r2
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _02006992
	adds r2, r7, r5
	movs r4, #0x94
	lsls r4, r4, #1
	adds r3, r2, r4
	ldrh r0, [r3]
	ldr r4, _02006904 @ =0x0000F83F
	adds r1, r4, #0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _02006908 @ =0x00000177
	adds r0, r2, r1
	movs r1, #5
	strb r1, [r0]
	ldr r3, _0200690C @ =0x000001BB
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _02006910 @ =0x000001FF
	adds r0, r2, r4
	strb r1, [r0]
	adds r3, #0x88
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #0x88
	adds r2, r2, r4
	strb r1, [r2]
	movs r3, #0x98
	mov r0, r8
	cmp r0, #1
	beq _02006914
	cmp r0, #1
	ble _02006924
	cmp r0, #2
	beq _0200691A
	cmp r0, #3
	beq _02006920
	b _02006924
	.align 2, 0
_020068F0: .4byte 0xFFFF0000
_020068F4: .4byte 0xFF00FFFF
_020068F8: .4byte 0x05000011
_020068FC: .4byte 0x06010000
_02006900: .4byte 0x00000579
_02006904: .4byte 0x0000F83F
_02006908: .4byte 0x00000177
_0200690C: .4byte 0x000001BB
_02006910: .4byte 0x000001FF
_02006914:
	movs r3, #0x8c
	lsls r3, r3, #1
	b _02006924
_0200691A:
	movs r3, #0xcc
	lsls r3, r3, #1
	b _02006924
_02006920:
	movs r3, #0x86
	lsls r3, r3, #2
_02006924:
	ldr r0, _020069B4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _020069B8 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r5, #0
	str r5, [sp, #0xc]
	adds r4, r7, #0
	adds r4, #0x8c
	add r0, sp, #0xc
	adds r1, r4, #0
	ldr r2, _020069BC @ =0x05000011
	str r3, [sp, #0x1c]
	bl CpuSet
	ldr r0, _020069C0 @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	lsrs r0, r6, #0x10
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0x76
	strh r0, [r4, #0x10]
	ldr r3, [sp, #0x1c]
	lsrs r0, r3, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xec
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	str r3, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
_02006992:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _020069A2
	b _0200685A
_020069A2:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020069B4: .4byte 0xFFFF0000
_020069B8: .4byte 0xFF00FFFF
_020069BC: .4byte 0x05000011
_020069C0: .4byte 0x06010000

	thumb_func_start sub_020069C4
sub_020069C4: @ 0x020069C4
	push {r4, lr}
	ldr r0, _020069E0 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020069E4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020069E8
	.align 2, 0
_020069E0: .4byte gUnk_03003DB0
_020069E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020069E8:
	adds r4, r1, r0
	adds r0, r4, #4
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x48
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_02001ACC
	adds r0, r4, #0
	adds r0, #0xd0
	bl sub_02003B60
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02003B60
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_02003B60
	ldr r1, _02006A2C @ =0x00000664
	adds r0, r4, r1
	bl sub_02003B60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006A2C: .4byte 0x00000664

	thumb_func_start sub_02006A30
sub_02006A30: @ 0x02006A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02006A68 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006A6C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02006A72
	.align 2, 0
_02006A68: .4byte sub_02001C68
_02006A6C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02006A72:
	adds r5, r0, #0
	ldr r0, _02006B24 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _02006B28 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #0x20
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
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
	beq _02006B34
	str r7, [sp, #4]
	ldr r2, _02006B2C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006B30 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
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
	movs r0, #4
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
	b _02006B86
	.align 2, 0
_02006B24: .4byte 0xFFFF0000
_02006B28: .4byte 0xFF00FFFF
_02006B2C: .4byte 0x05000011
_02006B30: .4byte 0x06010000
_02006B34:
	str r4, [sp, #4]
	ldr r2, _02006B9C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006BA0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
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
	mov r0, sb
	strb r3, [r0]
	movs r0, #4
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
_02006B86:
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
_02006B9C: .4byte 0x05000011
_02006BA0: .4byte 0x06010000

	thumb_func_start sub_02006BA4
sub_02006BA4: @ 0x02006BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _02006BDC @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02006BE0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006BE4
	.align 2, 0
_02006BDC: .4byte sub_02001C68
_02006BE0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006BE4:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _02006C9C @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _02006CA0 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r4, #0x48]
	movs r1, #8
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _02006CAC
	str r7, [sp, #4]
	ldr r2, _02006CA4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006CA8 @ =0x06010000
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
	mov r2, sb
	strb r0, [r2]
	movs r0, #6
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
	b _02006D02
	.align 2, 0
_02006C9C: .4byte 0xFFFF0000
_02006CA0: .4byte 0xFF00FFFF
_02006CA4: .4byte 0x05000011
_02006CA8: .4byte 0x06010000
_02006CAC:
	str r5, [sp, #4]
	ldr r2, _02006D1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006D20 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #6
	mov r2, sl
	strb r0, [r2]
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
_02006D02:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02006D1C: .4byte 0x05000011
_02006D20: .4byte 0x06010000

	thumb_func_start sub_02006D24
sub_02006D24: @ 0x02006D24
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006D3C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _02006D42
_02006D3C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_02006D42:
	ldrh r1, [r2, #0x38]
	ldr r0, _02006D50 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_02006D50: .4byte 0x0000EFFF

	thumb_func_start sub_02006D54
sub_02006D54: @ 0x02006D54
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006D6C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _02006D72
_02006D6C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_02006D72:
	ldrh r1, [r2, #0x38]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006D84
sub_02006D84: @ 0x02006D84
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006DA0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02006DA6
_02006DA0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02006DA6:
	adds r2, r1, #0
	cmp r4, #0
	beq _02006DC8
	ldr r0, _02006DC0 @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _02006DC4 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _02006DD8
	.align 2, 0
_02006DC0: .4byte 0xFFFF0000
_02006DC4: .4byte 0xFF00FFFF
_02006DC8:
	ldr r0, _02006E00 @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	ldr r0, _02006E04 @ =0xFF00FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_02006DD8:
	orrs r3, r0
	ldrh r1, [r2, #0x10]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _02006DF0
	lsrs r0, r3, #0x10
	ldrb r1, [r2, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _02006DFA
_02006DF0:
	strh r3, [r2, #0x10]
	lsrs r0, r3, #0x10
	strb r0, [r2, #0x1e]
	movs r0, #0xff
	strb r0, [r2, #0x1f]
_02006DFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006E00: .4byte 0xFFFF0000
_02006E04: .4byte 0xFF00FFFF

	thumb_func_start sub_02006E08
sub_02006E08: @ 0x02006E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02006E40 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006E44
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02006E4A
	.align 2, 0
_02006E40: .4byte sub_02001C68
_02006E44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02006E4A:
	adds r5, r0, #0
	ldr r0, _02006EFC @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _02006F00 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
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
	beq _02006F0C
	str r7, [sp, #4]
	ldr r2, _02006F04 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006F08 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
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
	movs r0, #6
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
	b _02006F5E
	.align 2, 0
_02006EFC: .4byte 0xFFFF0000
_02006F00: .4byte 0xFF00FFFF
_02006F04: .4byte 0x05000011
_02006F08: .4byte 0x06010000
_02006F0C:
	str r4, [sp, #4]
	ldr r2, _02006F74 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006F78 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
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
	mov r0, sb
	strb r3, [r0]
	movs r0, #6
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
_02006F5E:
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
_02006F74: .4byte 0x05000011
_02006F78: .4byte 0x06010000

	thumb_func_start sub_02006F7C
sub_02006F7C: @ 0x02006F7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02006FB8 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r0, _02006FBC @ =gUnk_0200F298
	mov r8, r0
	ldr r5, _02006FC0 @ =gUnk_030070B8
	cmp r1, #0
	beq _02006FC4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02006FCA
	.align 2, 0
_02006FB8: .4byte sub_02001C68
_02006FBC: .4byte gUnk_0200F298
_02006FC0: .4byte gUnk_030070B8
_02006FC4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02006FCA:
	adds r4, r1, #0
	ldr r0, _020070A0 @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _020070A4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r1, [sp, #8]
	str r1, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0xf
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x52
	strh r2, [r3]
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x28]
	subs r0, #0x20
	str r0, [r4, #0x48]
	ldr r1, [r5]
	ldr r0, _020070A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _020070AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	movs r1, #7
	ands r0, r1
	add r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _020070B8
	str r7, [sp, #4]
	ldr r2, _020070B0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _020070B4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
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
	b _0200710E
	.align 2, 0
_020070A0: .4byte 0xFFFF0000
_020070A4: .4byte 0xFF00FFFF
_020070A8: .4byte 0x00196225
_020070AC: .4byte 0x3C6EF35F
_020070B0: .4byte 0x05000011
_020070B4: .4byte 0x06010000
_020070B8:
	str r5, [sp, #4]
	ldr r2, _02007124 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007128 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
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
_0200710E:
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
_02007124: .4byte 0x05000011
_02007128: .4byte 0x06010000

	thumb_func_start sub_0200712C
sub_0200712C: @ 0x0200712C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	str r3, [sp, #8]
	ldr r0, _0200716C @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #2
	lsls r5, r5, #2
	cmp r1, #0
	beq _02007170
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02007176
	.align 2, 0
_0200716C: .4byte sub_02001C68
_02007170:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02007176:
	adds r4, r1, #0
	ldr r0, _02007234 @ =0xFFFF0000
	ands r6, r0
	movs r2, #1
	orrs r6, r2
	ldr r0, _02007238 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	mov r0, sl
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x19
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	mov r2, sl
	ldr r0, [r2, #0x28]
	adds r0, r0, r3
	str r0, [r4, #0x48]
	ldr r0, [r2, #0x2c]
	adds r0, r0, r5
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r4
	mov sb, r2
	adds r0, r4, #0
	adds r0, #0x23
	str r0, [sp, #0xc]
	cmp r5, #0
	beq _02007244
	str r7, [sp, #4]
	ldr r2, _0200723C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007240 @ =0x06010000
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
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
	ldr r1, [sp, #0xc]
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
	b _0200729A
	.align 2, 0
_02007234: .4byte 0xFFFF0000
_02007238: .4byte 0xFF00FFFF
_0200723C: .4byte 0x05000011
_02007240: .4byte 0x06010000
_02007244:
	str r5, [sp, #4]
	ldr r2, _020072C0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _020072C4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	ldr r2, [sp, #0xc]
	strb r0, [r2]
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
_0200729A:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	movs r0, #4
	strh r0, [r4, #0x34]
	ldr r0, _020072C8 @ =gUnk_0200F298
	ldr r2, [sp, #8]
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4, #0x36]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020072C0: .4byte 0x05000011
_020072C4: .4byte 0x06010000
_020072C8: .4byte gUnk_0200F298

	thumb_func_start sub_020072CC
sub_020072CC: @ 0x020072CC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _020072FC @ =sub_02007318
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_0200AE44
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, [r4, #0x28]
	cmp r0, #0
	beq _02007300
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007304
	.align 2, 0
_020072FC: .4byte sub_02007318
_02007300:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007304:
	adds r1, r1, r0
	str r4, [r1]
	movs r0, #0
	strh r3, [r1, #4]
	strb r0, [r1, #6]
	adds r0, r2, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_02007318
sub_02007318: @ 0x02007318
	push {r4, lr}
	ldr r0, _02007334 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007338
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200733C
	.align 2, 0
_02007334: .4byte gUnk_03003DB0
_02007338:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200733C:
	adds r4, r1, r0
	ldrb r0, [r4, #6]
	adds r1, r0, #1
	strb r1, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _02007356
	ldr r0, [r4]
	bl sub_02006F7C
	movs r0, #0
	strb r0, [r4, #6]
_02007356:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0200735C
sub_0200735C: @ 0x0200735C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	ldr r0, _02007394 @ =sub_020074DC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007398
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200739C
	.align 2, 0
_02007394: .4byte sub_020074DC
_02007398:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200739C:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _02007454 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _02007458 @ =0xFF00FFFF
	ands r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	movs r1, #0x30
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	movs r1, #0x30
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r2, r6, #8
	mov r8, r2
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r2, #0x23
	adds r2, r2, r4
	mov sl, r2
	cmp r5, #0
	beq _02007464
	str r7, [sp, #4]
	ldr r2, _0200745C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007460 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
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
	b _020074BA
	.align 2, 0
_02007454: .4byte 0xFFFF0000
_02007458: .4byte 0xFF00FFFF
_0200745C: .4byte 0x05000011
_02007460: .4byte 0x06010000
_02007464:
	str r5, [sp, #4]
	ldr r2, _020074D4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _020074D8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
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
_020074BA:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_020074D4: .4byte 0x05000011
_020074D8: .4byte 0x06010000

	thumb_func_start sub_020074DC
sub_020074DC: @ 0x020074DC
	push {lr}
	ldr r0, _020074F8 @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020074FC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007500
	.align 2, 0
_020074F8: .4byte gUnk_03003DB0
_020074FC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007500:
	adds r0, r1, r0
	bl sub_02001C24
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200750C
sub_0200750C: @ 0x0200750C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _02007548 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _0200754C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02007552
	.align 2, 0
_02007548: .4byte sub_02001C68
_0200754C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02007552:
	adds r4, r1, #0
	mov r0, sl
	str r0, [r4]
	adds r1, #0x50
	movs r6, #0
	movs r0, #0x1e
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	subs r0, #0x23
	str r0, [r4, #0x48]
	movs r0, #0x40
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r7, r7, #2
	movs r0, #0x20
	adds r0, r0, r4
	mov r8, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _02007608
	str r6, [sp, #4]
	ldr r2, _020075FC @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007600 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _02007604 @ =gUnk_0200F2AC
	adds r0, r7, r0
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
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
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _02007662
	.align 2, 0
_020075FC: .4byte 0x05000011
_02007600: .4byte 0x06010000
_02007604: .4byte gUnk_0200F2AC
_02007608:
	str r5, [sp, #4]
	ldr r2, _02007680 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007684 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _02007688 @ =gUnk_0200F2AC
	adds r0, r7, r0
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
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
_02007662:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r0, _0200768C @ =0x0000FFFE
	strh r0, [r4, #0x34]
	subs r0, #2
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007680: .4byte 0x05000011
_02007684: .4byte 0x06010000
_02007688: .4byte gUnk_0200F2AC
_0200768C: .4byte 0x0000FFFE

	thumb_func_start sub_02007690
sub_02007690: @ 0x02007690
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _020076C8 @ =sub_020076F0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, [r4, #0x28]
	ldr r5, _020076CC @ =gUnk_0200F29F
	cmp r1, #0
	beq _020076D0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _020076D6
	.align 2, 0
_020076C8: .4byte sub_020076F0
_020076CC: .4byte gUnk_0200F29F
_020076D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_020076D6:
	str r4, [r1]
	movs r0, #0
	strh r3, [r1, #4]
	strb r0, [r1, #6]
	adds r0, r6, r5
	ldrb r0, [r0]
	strb r0, [r1, #7]
	str r7, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020076F0
sub_020076F0: @ 0x020076F0
	push {r4, lr}
	ldr r0, _0200770C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007710
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007714
	.align 2, 0
_0200770C: .4byte gUnk_03003DB0
_02007710:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007714:
	adds r4, r1, r0
	ldr r0, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0x1a
	movs r3, #0
	bl sub_0200712C
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #0
	movs r3, #1
	bl sub_0200712C
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #8
	movs r3, #2
	bl sub_0200712C
	ldr r0, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	movs r1, #0x1e
	movs r3, #3
	bl sub_0200712C
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #4
	movs r3, #4
	bl sub_0200712C
	ldr r0, _02007764 @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02007764: .4byte gUnk_03003DB0

	thumb_func_start sub_02007768
sub_02007768: @ 0x02007768
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldr r0, _02007828 @ =gUnk_030070B8
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _0200782C @ =0x00196225
	muls r0, r6, r0
	ldr r4, _02007830 @ =0x3C6EF35F
	adds r0, r0, r4
	movs r5, #7
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0200786C
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0200786C
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0200786C
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0200786C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02007828: .4byte gUnk_030070B8
_0200782C: .4byte 0x00196225
_02007830: .4byte 0x3C6EF35F

	thumb_func_start sub_02007834
sub_02007834: @ 0x02007834
	ldr r3, _02007860 @ =gUnk_030070B8
	ldr r0, [r3]
	ldr r2, _02007864 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _02007868 @ =0x3C6EF35F
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_02007860: .4byte gUnk_030070B8
_02007864: .4byte 0x00196225
_02007868: .4byte 0x3C6EF35F

	thumb_func_start sub_0200786C
sub_0200786C: @ 0x0200786C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r0, _020078B0 @ =sub_02007A00
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _020078B4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _020078BA
	.align 2, 0
_020078B0: .4byte sub_02007A00
_020078B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_020078BA:
	adds r4, r1, #0
	ldr r0, _02007970 @ =0xFFFF0000
	ands r6, r0
	movs r0, #1
	orrs r6, r0
	ldr r0, _02007974 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	str r7, [r4, #0x4c]
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
	beq _02007980
	str r7, [sp, #4]
	ldr r2, _02007978 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0200797C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
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
	movs r0, #4
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
	b _020079D6
	.align 2, 0
_02007970: .4byte 0xFFFF0000
_02007974: .4byte 0xFF00FFFF
_02007978: .4byte 0x05000011
_0200797C: .4byte 0x06010000
_02007980:
	str r5, [sp, #4]
	ldr r2, _020079F8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _020079FC @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
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
	movs r0, #4
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
_020079D6:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r4, #0x36]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020079F8: .4byte 0x05000011
_020079FC: .4byte 0x06010000

	thumb_func_start sub_02007A00
sub_02007A00: @ 0x02007A00
	push {r4, lr}
	ldr r0, _02007A1C @ =gUnk_03003DB0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007A20
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007A24
	.align 2, 0
_02007A1C: .4byte gUnk_03003DB0
_02007A20:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007A24:
	adds r4, r1, r0
	ldrh r0, [r4, #0x36]
	adds r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_02001C24
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02007A60
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02007A50
	subs r0, #1
	strh r0, [r1]
	b _02007A74
_02007A50:
	ldr r0, _02007A5C @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
	b _02007A74
	.align 2, 0
_02007A5C: .4byte gUnk_03003DB0
_02007A60:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02007A74
	ldr r0, _02007A7C @ =gUnk_03003DB0
	ldr r0, [r0]
	bl sub_0200AF60
_02007A74:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02007A7C: .4byte gUnk_03003DB0

	thumb_func_start sub_02007A80
sub_02007A80: @ 0x02007A80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _02007AB4 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _02007AB8
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _02007ABE
	.align 2, 0
_02007AB4: .4byte sub_02001C68
_02007AB8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_02007ABE:
	ldr r0, _02007B70 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _02007B74 @ =0xFF00FFFF
	ands r6, r0
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
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
	beq _02007B80
	str r7, [sp, #4]
	ldr r2, _02007B78 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007B7C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
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
	movs r0, #4
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
	b _02007BD6
	.align 2, 0
_02007B70: .4byte 0xFFFF0000
_02007B74: .4byte 0xFF00FFFF
_02007B78: .4byte 0x05000011
_02007B7C: .4byte 0x06010000
_02007B80:
	str r5, [sp, #4]
	ldr r2, _02007BE8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007BEC @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
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
	movs r0, #4
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
_02007BD6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007BE8: .4byte 0x05000011
_02007BEC: .4byte 0x06010000

	thumb_func_start sub_02007BF0
sub_02007BF0: @ 0x02007BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _02007C28 @ =sub_02001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200AE44
	str r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #8]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007C2C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007C30
	.align 2, 0
_02007C28: .4byte sub_02001C68
_02007C2C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007C30:
	adds r4, r1, r0
	ldr r0, _02007CE8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _02007CEC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	movs r7, #0
	str r7, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r7, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r4
	mov sb, r2
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _02007CF8
	str r7, [sp, #4]
	ldr r2, _02007CF0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007CF4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r2, sb
	strb r0, [r2]
	movs r0, #4
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
	b _02007D4E
	.align 2, 0
_02007CE8: .4byte 0xFFFF0000
_02007CEC: .4byte 0xFF00FFFF
_02007CF0: .4byte 0x05000011
_02007CF4: .4byte 0x06010000
_02007CF8:
	str r5, [sp, #4]
	ldr r2, _02007D60 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02007D64 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r2, r8
	lsrs r0, r2, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #4
	mov r2, sl
	strb r0, [r2]
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
_02007D4E:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007D60: .4byte 0x05000011
_02007D64: .4byte 0x06010000

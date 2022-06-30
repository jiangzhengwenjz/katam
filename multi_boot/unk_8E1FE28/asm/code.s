	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_020001CC
sub_020001CC: @ 0x020001CC
	push {lr}
	ldr r1, _020001E0 @ =gUnk_03002604
	ldr r0, _020001E4 @ =gUnk_0201298C
	str r0, [r1]
	bl sub_020001E8
	bl sub_02001420
	pop {r0}
	bx r0
	.align 2, 0
_020001E0: .4byte gUnk_03002604
_020001E4: .4byte gUnk_0201298C

	thumb_func_start sub_020001E8
sub_020001E8: @ 0x020001E8
	push {r4, lr}
	sub sp, #4
	ldr r0, _02000214 @ =gUnk_03000720
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _02000218 @ =gUnk_03000470
	ldr r2, _0200021C @ =0x01000158
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _02000220 @ =gUnk_03000440
	ldr r2, _02000224 @ =0x01000016
	bl CpuSet
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000214: .4byte gUnk_03000720
_02000218: .4byte gUnk_03000470
_0200021C: .4byte 0x01000158
_02000220: .4byte gUnk_03000440
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
	ldr r1, _0200028C @ =gUnk_03001420
	ldr r2, _02000290 @ =0x05000014
	add r0, sp, #4
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _02000294 @ =gUnk_03002640
	ldr r2, _02000298 @ =0x05000005
	bl CpuSet
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _0200029C @ =gUnk_03000440
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
	bl sub_0200A79C
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
_0200028C: .4byte gUnk_03001420
_02000290: .4byte 0x05000014
_02000294: .4byte gUnk_03002640
_02000298: .4byte 0x05000005
_0200029C: .4byte gUnk_03000440
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
	ldr r4, _020002F4 @ =gUnk_03000440
	ldr r0, [r4]
	bl sub_0200A8B8
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020002F4: .4byte gUnk_03000440

	thumb_func_start sub_020002F8
sub_020002F8: @ 0x020002F8
	ldr r2, _02000304 @ =gUnk_03000440
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_02000304: .4byte gUnk_03000440

	thumb_func_start sub_02000308
sub_02000308: @ 0x02000308
	ldr r0, _02000310 @ =gUnk_03000440
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02000310: .4byte gUnk_03000440

	thumb_func_start sub_02000314
sub_02000314: @ 0x02000314
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _02000354 @ =gUnk_03001420
	ldr r2, _02000358 @ =0x05000014
	mov r0, sp
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _0200035C @ =gUnk_03002640
	ldr r2, _02000360 @ =0x05000005
	bl CpuSet
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _02000364 @ =gUnk_03000470
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
_02000354: .4byte gUnk_03001420
_02000358: .4byte 0x05000014
_0200035C: .4byte gUnk_03002640
_02000360: .4byte 0x05000005
_02000364: .4byte gUnk_03000470
_02000368: .4byte 0x01000158

	thumb_func_start sub_0200036C
sub_0200036C: @ 0x0200036C
	ldr r1, _02000374 @ =gUnk_03000470
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_02000374: .4byte gUnk_03000470

	thumb_func_start sub_02000378
sub_02000378: @ 0x02000378
	ldr r2, _02000384 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_02000384: .4byte gUnk_03000470

	thumb_func_start sub_02000388
sub_02000388: @ 0x02000388
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _02000414 @ =gUnk_03000470
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _02000418 @ =gUnk_0300041C
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
	ldr r1, _0200041C @ =gUnk_03000720
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _02000448
	.align 2, 0
_02000414: .4byte gUnk_03000470
_02000418: .4byte gUnk_0300041C
_0200041C: .4byte gUnk_03000720
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
	ldr r2, _02000468 @ =gUnk_03000470
	ldr r1, _0200046C @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_02000468: .4byte gUnk_03000470
_0200046C: .4byte 0x000002AD

	thumb_func_start sub_02000470
sub_02000470: @ 0x02000470
	push {r4, r5, r6, r7, lr}
	ldr r7, _02000590 @ =gUnk_03000470
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
	ldr r0, _02000594 @ =gUnk_03001E20
	ldrh r1, [r0]
	ldr r0, _02000598 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _0200059C @ =gUnk_03002640
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
_02000590: .4byte gUnk_03000470
_02000594: .4byte gUnk_03001E20
_02000598: .4byte 0x000003FF
_0200059C: .4byte gUnk_03002640

	thumb_func_start sub_020005A0
sub_020005A0: @ 0x020005A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02000628 @ =gUnk_03000470
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
	ldr r2, _0200062C @ =gUnk_0300041C
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
_02000628: .4byte gUnk_03000470
_0200062C: .4byte gUnk_0300041C
_02000630: .4byte 0x04000128
_02000634:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _020007F0 @ =gUnk_03001420
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
	ldr r0, _020007F8 @ =gUnk_0300041C
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
	ldr r4, _020007F8 @ =gUnk_0300041C
	b _0200086E
	.align 2, 0
_020007F0: .4byte gUnk_03001420
_020007F4: .4byte 0x0000FFFF
_020007F8: .4byte gUnk_0300041C
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
	ldr r0, _02000960 @ =gUnk_0300041C
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
	ldr r1, _0200096C @ =gUnk_03000720
	movs r0, #7
	b _020009E4
	.align 2, 0
_02000960: .4byte gUnk_0300041C
_02000964: .4byte 0x000003FF
_02000968: .4byte 0x000002AD
_0200096C: .4byte gUnk_03000720
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
	ldr r1, _020009A0 @ =gUnk_03000720
	movs r0, #5
	b _020009E4
	.align 2, 0
_020009A0: .4byte gUnk_03000720
_020009A4:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009B8 @ =gUnk_03000720
	movs r0, #3
	b _020009E4
	.align 2, 0
_020009B8: .4byte gUnk_03000720
_020009BC:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009D0 @ =gUnk_03000720
	movs r0, #4
	b _020009E4
	.align 2, 0
_020009D0: .4byte gUnk_03000720
_020009D4:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _020009EC @ =gUnk_03000720
	movs r0, #6
_020009E4:
	str r0, [r1]
	movs r0, #0
	b _02000A04
	.align 2, 0
_020009EC: .4byte gUnk_03000720
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
	ldr r0, _02000A30 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02000A34 @ =gUnk_03000440
	cmp r0, #0
	beq _02000A38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02000A3C
	.align 2, 0
_02000A30: .4byte gUnk_03002560
_02000A34: .4byte gUnk_03000440
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
	ldr r0, _02000A64 @ =gUnk_030014E4
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
_02000A64: .4byte gUnk_030014E4
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
	ldr r0, _02000B60 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _02000B64 @ =gUnk_03002640
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
_02000B60: .4byte gUnk_03000440
_02000B64: .4byte gUnk_03002640
_02000B68: .4byte 0x04000128
_02000B6C:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _02000BA0 @ =gUnk_030014E4
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
	ldr r1, _02000BA4 @ =gUnk_03001420
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
_02000BA0: .4byte gUnk_030014E4
_02000BA4: .4byte gUnk_03001420
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
	ldr r6, _02000C64 @ =gUnk_03000440
	ldr r1, _02000C68 @ =gUnk_03002640
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
	ldr r0, _02000C78 @ =gUnk_030014E4
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
_02000C64: .4byte gUnk_03000440
_02000C68: .4byte gUnk_03002640
_02000C6C: .4byte 0x00000123
_02000C70: .4byte 0x0000FFFC
_02000C74: .4byte 0x04000128
_02000C78: .4byte gUnk_030014E4
_02000C7C: .4byte sub_02000CC8
_02000C80:
	ldr r3, _02000CBC @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _02000CB4
	ldr r0, _02000CC0 @ =gUnk_030014E4
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
_02000CC0: .4byte gUnk_030014E4
_02000CC4: .4byte sub_02000F68

	thumb_func_start sub_02000CC8
sub_02000CC8: @ 0x02000CC8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _02000D20 @ =gUnk_03000440
	ldr r6, _02000D24 @ =gUnk_03002640
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
	ldr r0, _02000D30 @ =gUnk_030014E4
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
_02000D20: .4byte gUnk_03000440
_02000D24: .4byte gUnk_03002640
_02000D28: .4byte 0x00000123
_02000D2C: .4byte 0x04000128
_02000D30: .4byte gUnk_030014E4
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
	ldr r3, _02000D8C @ =gUnk_03000448
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
_02000D8C: .4byte gUnk_03000448
_02000D90:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _02000DB4 @ =gUnk_03001420
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
_02000DB4: .4byte gUnk_03001420
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
	ldr r0, _02000E2C @ =gUnk_03000440
	mov ip, r0
	ldr r4, _02000E30 @ =gUnk_03002640
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
	ldr r1, _02000E3C @ =gUnk_030014E4
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
_02000E2C: .4byte gUnk_03000440
_02000E30: .4byte gUnk_03002640
_02000E34: .4byte 0x00000123
_02000E38: .4byte 0x04000128
_02000E3C: .4byte gUnk_030014E4
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
	ldr r2, _02000E98 @ =gUnk_03001420
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
_02000E98: .4byte gUnk_03001420
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
	ldr r2, _02000F60 @ =gUnk_03002640
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
_02000F60: .4byte gUnk_03002640
_02000F64: .4byte 0x00000123

	thumb_func_start sub_02000F68
sub_02000F68: @ 0x02000F68
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _02000FC4 @ =gUnk_03000440
	ldr r1, _02000FC8 @ =gUnk_03002640
	ldr r6, _02000FCC @ =gUnk_03001420
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
	ldr r0, _02000FD8 @ =gUnk_030014E4
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
_02000FC4: .4byte gUnk_03000440
_02000FC8: .4byte gUnk_03002640
_02000FCC: .4byte gUnk_03001420
_02000FD0: .4byte 0x00000123
_02000FD4: .4byte 0x04000128
_02000FD8: .4byte gUnk_030014E4
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
	ldr r7, _02001078 @ =gUnk_03000440
	ldr r4, _0200107C @ =gUnk_03002640
	ldr r6, _02001080 @ =gUnk_03001420
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
	ldr r0, _0200108C @ =gUnk_030014E4
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
_02001078: .4byte gUnk_03000440
_0200107C: .4byte gUnk_03002640
_02001080: .4byte gUnk_03001420
_02001084: .4byte 0x00000123
_02001088: .4byte 0x04000128
_0200108C: .4byte gUnk_030014E4
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
	ldr r3, _020010DC @ =gUnk_03000448
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
_020010DC: .4byte gUnk_03000448
_020010E0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _02001110 @ =gUnk_03001420
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
_02001110: .4byte gUnk_03001420
_02001114: .4byte sub_02001118

	thumb_func_start sub_02001118
sub_02001118: @ 0x02001118
	push {lr}
	adds r1, r0, #0
	ldr r2, _0200113C @ =gUnk_03002640
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
_0200113C: .4byte gUnk_03002640
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
	bl sub_0200A840
	ldr r1, _020011C4 @ =gUnk_03002994
	ldr r0, _020011C8 @ =gUnk_03002720
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _020011CC @ =gUnk_03005840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _020011D0 @ =gUnk_03005008
	ldr r0, _020011D4 @ =gUnk_03002934
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_01
	ldr r1, _020011D8 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _020011DC @ =gUnk_030014D0
	ldr r0, _020011E0 @ =0x06010000
	str r0, [r1]
	ldr r0, _020011E4 @ =sub_020012AC
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _020011E8 @ =sub_020012DC
	ldr r5, _020011EC @ =gUnk_03000720
	cmp r1, #0
	beq _020011F0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _020011F6
	.align 2, 0
_020011C0: .4byte 0x0000FFFF
_020011C4: .4byte gUnk_03002994
_020011C8: .4byte gUnk_03002720
_020011CC: .4byte gUnk_03005840
_020011D0: .4byte gUnk_03005008
_020011D4: .4byte gUnk_03002934
_020011D8: .4byte gUnk_03001418
_020011DC: .4byte gUnk_030014D0
_020011E0: .4byte 0x06010000
_020011E4: .4byte sub_020012AC
_020011E8: .4byte sub_020012DC
_020011EC: .4byte gUnk_03000720
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
	bl sub_0200C814
	str r4, [sp, #4]
	ldr r1, _02001284 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _02001288 @ =gUnk_03002640
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
	ldr r0, _02001290 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _02001294 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200123A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200123A
	ldr r0, _02001298 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _0200129C @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl MultiSioInit
	bl sub_020001E8
	bl m4aMPlayAllStop
	ldr r0, _020012A0 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_0200125E:
	ldr r2, _020012A4 @ =gUnk_03000740
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _020012A8 @ =gUnk_02021D50
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
_02001288: .4byte gUnk_03002640
_0200128C: .4byte 0x85000005
_02001290: .4byte gUnk_03001420
_02001294: .4byte 0x85000014
_02001298: .4byte gUnk_030014E4
_0200129C: .4byte gUnk_030014E8
_020012A0: .4byte 0x04000208
_020012A4: .4byte gUnk_03000740
_020012A8: .4byte gUnk_02021D50

	thumb_func_start sub_020012AC
sub_020012AC: @ 0x020012AC
	push {lr}
	ldr r0, _020012C8 @ =gUnk_03002560
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
_020012C8: .4byte gUnk_03002560
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
	bl sub_0200C814
	bl m4aMPlayAllStop
	ldr r0, _02001348 @ =gUnk_03000400
	movs r3, #0
	str r3, [r0]
	ldr r2, _0200134C @ =gUnk_030013D0
	ldr r0, [r2]
	ldr r1, _02001350 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _02001354 @ =gUnk_03001478
	strh r3, [r0]
	ldr r1, _02001358 @ =gUnk_03002620
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0200135C @ =gUnk_03001E40
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
	ldr r0, _02001370 @ =gUnk_03002610
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _02001374 @ =sub_02001378
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001348: .4byte gUnk_03000400
_0200134C: .4byte gUnk_030013D0
_02001350: .4byte 0xFFFFFBFF
_02001354: .4byte gUnk_03001478
_02001358: .4byte gUnk_03002620
_0200135C: .4byte gUnk_03001E40
_02001360: .4byte 0x00001F03
_02001364: .4byte 0x040000D4
_02001368: .4byte 0x8100C000
_0200136C: .4byte 0x81000200
_02001370: .4byte gUnk_03002610
_02001374: .4byte sub_02001378

	thumb_func_start sub_02001378
sub_02001378: @ 0x02001378
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _020013EC @ =gUnk_03002620
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _020013F0 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _020013F4 @ =0x00001F03
	strh r0, [r1]
	ldr r0, _020013F8 @ =gUnk_03002610
	strh r2, [r0]
	strh r2, [r0, #2]
_02001394:
	ldr r4, _020013FC @ =gUnk_0200D34C
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
	ldr r0, _0200140C @ =gUnk_03002730
	str r0, [r5, #4]
	ldr r0, _02001410 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _02001414 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _02001418 @ =nullsub_06
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020013EC: .4byte gUnk_03002620
_020013F0: .4byte gUnk_03001E40
_020013F4: .4byte 0x00001F03
_020013F8: .4byte gUnk_03002610
_020013FC: .4byte gUnk_0200D34C
_02001400: .4byte 0x040000D4
_02001404: .4byte 0x0600F800
_02001408: .4byte 0x8000001E
_0200140C: .4byte gUnk_03002730
_02001410: .4byte 0x80000010
_02001414: .4byte gUnk_030013D0
_02001418: .4byte nullsub_06

	thumb_func_start nullsub_06
nullsub_06: @ 0x0200141C
	bx lr
	.align 2, 0

	thumb_func_start sub_02001420
sub_02001420: @ 0x02001420
	push {r4, lr}
	sub sp, #8
	ldr r0, _0200144C @ =sub_02001490
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _02001450 @ =nullsub_07
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_0200A79C
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
_02001450: .4byte nullsub_07
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
	ldr r0, _020014AC @ =gUnk_03002560
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
_020014AC: .4byte gUnk_03002560
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
	ldr r3, _0200151C @ =gUnk_03000470
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
	bl sub_02001A68
_0200150E:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200151C: .4byte gUnk_03000470

	thumb_func_start nullsub_07
nullsub_07: @ 0x02001520
	bx lr
	.align 2, 0

	thumb_func_start sub_02001524
sub_02001524: @ 0x02001524
	push {r4, lr}
	ldr r3, _0200154C @ =gUnk_03002620
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _02001550 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _02001554 @ =gUnk_03002610
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _02001558 @ =sub_0200155C
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200154C: .4byte gUnk_03002620
_02001550: .4byte 0x0000F9FF
_02001554: .4byte gUnk_03002610
_02001558: .4byte sub_0200155C

	thumb_func_start sub_0200155C
sub_0200155C: @ 0x0200155C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _020015E0 @ =gUnk_0200D730
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
	ldr r1, _020015F4 @ =gUnk_03005030
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _020015F8 @ =gUnk_03001E10
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
	ldr r2, _02001604 @ =gUnk_03002620
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
_020015E0: .4byte gUnk_0200D730
_020015E4: .4byte 0x0600C000
_020015E8: .4byte 0x040000D4
_020015EC: .4byte 0x0600CC60
_020015F0: .4byte 0x85000008
_020015F4: .4byte gUnk_03005030
_020015F8: .4byte gUnk_03001E10
_020015FC: .4byte 0x0600E480
_02001600: .4byte 0x0600E4C0
_02001604: .4byte gUnk_03002620
_02001608: .4byte sub_0200160C

	thumb_func_start sub_0200160C
sub_0200160C: @ 0x0200160C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0200C760
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
	bl sub_0200C7B8
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
	ldr r0, _020016B0 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	ldr r0, _020016B4 @ =gUnk_03000720
	str r5, [r0]
	bl sub_02001160
	b _02001742
	.align 2, 0
_020016AC: .4byte 0xFFFF0000
_020016B0: .4byte gUnk_03002560
_020016B4: .4byte gUnk_03000720
_020016B8:
	bl sub_02000308
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0200170C
	bl sub_020002E0
	ldr r1, _020016F0 @ =gUnk_0300041C
	ldr r0, _020016F4 @ =gUnk_03000440
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _020016F8 @ =gUnk_03000428
	ldr r0, _020016FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _02001700 @ =gUnk_03000434
	movs r0, #4
	strb r0, [r1]
	ldr r1, _02001704 @ =gUnk_03000410
	movs r0, #0
	strb r0, [r1]
	ldr r0, _02001708 @ =sub_02001748
	str r0, [r4, #0x7c]
	b _02001742
	.align 2, 0
_020016F0: .4byte gUnk_0300041C
_020016F4: .4byte gUnk_03000440
_020016F8: .4byte gUnk_03000428
_020016FC: .4byte 0x04000128
_02001700: .4byte gUnk_03000434
_02001704: .4byte gUnk_03000410
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
	bl sub_02001A18
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
	bl sub_02001A18
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
	ldr r2, _020018BC @ =gUnk_03001478
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
_020018BC: .4byte gUnk_03001478
_020018C0: .4byte sub_020018C4

	thumb_func_start sub_020018C4
sub_020018C4: @ 0x020018C4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _020018F0 @ =gUnk_03001478
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
_020018F0: .4byte gUnk_03001478
_020018F4: .4byte sub_020018F8

	thumb_func_start sub_020018F8
sub_020018F8: @ 0x020018F8
	push {lr}
	sub sp, #4
	ldr r1, _02001944 @ =gUnk_03000404
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
	ldr r1, _02001950 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _02001954 @ =gUnk_02030000
	ldr r1, _02001958 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl CpuSet
	ldr r0, _0200195C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	bl sub_020036C0
	bl sub_020036F0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02001944: .4byte gUnk_03000404
_02001948: .4byte 0x00007FFF
_0200194C: .4byte 0x01000200
_02001950: .4byte gUnk_03001478
_02001954: .4byte gUnk_02030000
_02001958: .4byte 0x06008000
_0200195C: .4byte gUnk_03002560

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
	bl sub_02001A18
	ldr r0, _02001A14 @ =0x06010000
	mov sl, r0
	str r0, [r7]
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xc]
	movs r0, #9
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_0200B010
	adds r1, r7, #0
	adds r1, #0x28
	mov r0, sl
	str r0, [r7, #0x28]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xc]
	movs r0, #0xa
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #0xb
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_0200B010
	adds r1, r7, #0
	adds r1, #0x50
	mov r0, sl
	str r0, [r7, #0x50]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xc]
	movs r0, #0xb
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #0xc
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_0200B010
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02001A14: .4byte 0x06010000

	thumb_func_start sub_02001A18
sub_02001A18: @ 0x02001A18
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _02001A30 @ =gUnk_0200D350
	ldr r4, _02001A34 @ =gUnk_03001DD0
	ldr r2, _02001A38 @ =gUnk_030013D0
	cmp r1, #0
	beq _02001A40
	ldr r1, _02001A3C @ =0x040000D4
	adds r0, #1
	b _02001A44
	.align 2, 0
_02001A30: .4byte gUnk_0200D350
_02001A34: .4byte gUnk_03001DD0
_02001A38: .4byte gUnk_030013D0
_02001A3C: .4byte 0x040000D4
_02001A40:
	ldr r1, _02001A60 @ =0x040000D4
	adds r0, #2
_02001A44:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _02001A64 @ =0x80000010
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
_02001A60: .4byte 0x040000D4
_02001A64: .4byte 0x80000010

	thumb_func_start sub_02001A68
sub_02001A68: @ 0x02001A68
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
	bl sub_0200B818
	pop {r0}
	bx r0

	thumb_func_start sub_02001A88
sub_02001A88: @ 0x02001A88
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
	bl sub_02001BE4
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001AC4
sub_02001AC4: @ 0x02001AC4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _02001ADC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_02001ADC:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _02001AEE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_02001AEE:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _02001B56
	adds r0, r4, #0
	bl sub_02001B60
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02001B50
	adds r0, r4, #0
	bl sub_0200B010
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _02001B28
	ldr r0, _02001B24 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _02001B40
	.align 2, 0
_02001B24: .4byte 0x0000FDFF
_02001B28:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02001B38
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _02001B46
_02001B38:
	ldr r0, _02001B5C @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_02001B40:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_02001B46:
	cmp r2, #0
	beq _02001B50
	adds r0, r2, #0
	bl sub_02001AC4
_02001B50:
	adds r0, r4, #0
	bl sub_0200B818
_02001B56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001B5C: .4byte 0x0000FBFF

	thumb_func_start sub_02001B60
sub_02001B60: @ 0x02001B60
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
	bne _02001BA0
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
	bl sub_02001BA8
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_02001BA0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02001BA8
sub_02001BA8: @ 0x02001BA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02001BB8
	bl sub_02001BA8
_02001BB8:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _02001BD6
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _02001BDC
_02001BD6:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_02001BDC:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02001BE4
sub_02001BE4: @ 0x02001BE4
	push {lr}
_02001BE6:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _02001BF0
	adds r0, r1, #0
	b _02001BE6
_02001BF0:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02001BF8
sub_02001BF8: @ 0x02001BF8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _02001C18 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02001C12
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_02001C12:
	pop {r0}
	bx r0
	.align 2, 0
_02001C18: .4byte 0x0000FEFF

	thumb_func_start sub_02001C1C
sub_02001C1C: @ 0x02001C1C
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
	beq _02001C54
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_02001C54:
	adds r0, r2, #4
	bl sub_02001AC4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02001C60
sub_02001C60: @ 0x02001C60
	push {r4, lr}
	ldr r0, _02001C7C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02001C80
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001C84
	.align 2, 0
_02001C7C: .4byte gUnk_03002560
_02001C80:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001C84:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_02001C1C
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001CB8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02001CAA
	subs r0, #1
	strh r0, [r1]
	b _02001CCC
_02001CAA:
	ldr r0, _02001CB4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	b _02001CCC
	.align 2, 0
_02001CB4: .4byte gUnk_03002560
_02001CB8:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02001CCC
	ldr r0, _02001CD4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
_02001CCC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001CD4: .4byte gUnk_03002560

	thumb_func_start sub_02001CD8
sub_02001CD8: @ 0x02001CD8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _02001D0C @ =sub_02001DF8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _02001D10
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02001D16
	.align 2, 0
_02001D0C: .4byte sub_02001DF8
_02001D10:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02001D16:
	adds r2, r0, #0
	cmp r3, #0
	ble _02001D22
	movs r0, #0
	strb r0, [r2, #3]
	b _02001D2A
_02001D22:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_02001D2A:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _02001D40 @ =gUnk_03001478
	cmp r5, #0
	beq _02001D44
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _02001D4C
	.align 2, 0
_02001D40: .4byte gUnk_03001478
_02001D44:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_02001D4C:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _02001D64 @ =gUnk_03001478
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
_02001D64: .4byte gUnk_03001478

	thumb_func_start sub_02001D68
sub_02001D68: @ 0x02001D68
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _02001D9C @ =sub_02001DF8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _02001DA0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02001DA6
	.align 2, 0
_02001D9C: .4byte sub_02001DF8
_02001DA0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02001DA6:
	adds r2, r0, #0
	cmp r3, #0
	ble _02001DB2
	movs r0, #0
	strb r0, [r2, #3]
	b _02001DBA
_02001DB2:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_02001DBA:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _02001DD0 @ =gUnk_03001478
	cmp r5, #0
	beq _02001DD4
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _02001DDC
	.align 2, 0
_02001DD0: .4byte gUnk_03001478
_02001DD4:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_02001DDC:
	strb r6, [r2, #2]
	ldr r1, _02001DF4 @ =gUnk_03001478
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
_02001DF4: .4byte gUnk_03001478

	thumb_func_start sub_02001DF8
sub_02001DF8: @ 0x02001DF8
	push {r4, lr}
	ldr r4, _02001E14 @ =gUnk_03002560
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _02001E18 @ =gUnk_03001478
	cmp r0, #0
	beq _02001E1C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001E20
	.align 2, 0
_02001E14: .4byte gUnk_03002560
_02001E18: .4byte gUnk_03001478
_02001E1C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001E20:
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
	beq _02001E78
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _02001E5E
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _02001E66
	movs r0, #0x1e
	b _02001E6C
_02001E5E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001E6A
_02001E66:
	strh r2, [r3, #4]
	b _02001E6E
_02001E6A:
	movs r0, #0x1f
_02001E6C:
	strh r0, [r3, #4]
_02001E6E:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_0200A8B8
_02001E78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001E80
sub_02001E80: @ 0x02001E80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _02001EBC @ =sub_02001EF0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _02001EC0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02001EC6
	.align 2, 0
_02001EBC: .4byte sub_02001EF0
_02001EC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02001EC6:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _02001ED2
	rsbs r4, r4, #0
_02001ED2:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _02001EDC
	movs r0, #0x10
	b _02001EDE
_02001EDC:
	movs r0, #0x20
_02001EDE:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02001EF0
sub_02001EF0: @ 0x02001EF0
	push {r4, lr}
	ldr r0, _02001F0C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02001F10
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001F14
	.align 2, 0
_02001F0C: .4byte gUnk_03002560
_02001F10:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001F14:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _02001F46
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _02001F3E
	adds r0, r1, #0
	movs r1, #1
	bl sub_02001CD8
	b _02001F46
_02001F3E:
	adds r0, r1, #0
	movs r1, #0
	bl sub_02001CD8
_02001F46:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02001F7E
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _02001F72
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_02001CD8
	b _02001F7E
_02001F72:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_02001CD8
_02001F7E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _02001FB6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02001FAC
	ldr r1, _02001FA4 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _02001FA8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	b _02001FB6
	.align 2, 0
_02001FA4: .4byte gUnk_03001478
_02001FA8: .4byte gUnk_03002560
_02001FAC:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_02001FB6:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _02001FD4 @ =gUnk_03001478
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02001FCE
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_02001FCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001FD4: .4byte gUnk_03001478

	thumb_func_start sub_02001FD8
sub_02001FD8: @ 0x02001FD8
	push {lr}
	ldr r1, _02001FF0 @ =gUnk_03001478
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02001FE6
	cmp r0, #0x1f
	bne _02001FF4
_02001FE6:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _02001FF4
	movs r0, #0
	b _02001FF6
	.align 2, 0
_02001FF0: .4byte gUnk_03001478
_02001FF4:
	movs r0, #1
_02001FF6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02001FFC
sub_02001FFC: @ 0x02001FFC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0200202C @ =sub_02002060
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_0200A79C
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _02002030
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002034
	.align 2, 0
_0200202C: .4byte sub_02002060
_02002030:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002034:
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

	thumb_func_start sub_02002060
sub_02002060: @ 0x02002060
	push {lr}
	ldr r0, _0200207C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002080
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002084
	.align 2, 0
_0200207C: .4byte gUnk_03002560
_02002080:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002084:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _0200209C
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _020020D0
_0200209C:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _020020B0
	strb r1, [r2, #0xc]
_020020B0:
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
_020020D0:
	pop {r0}
	bx r0

	thumb_func_start sub_020020D4
sub_020020D4: @ 0x020020D4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _02002104 @ =sub_02002134
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_0200A79C
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _02002108
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200210C
	.align 2, 0
_02002104: .4byte sub_02002134
_02002108:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200210C:
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

	thumb_func_start sub_02002134
sub_02002134: @ 0x02002134
	push {r4, lr}
	ldr r0, _02002150 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002154
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002158
	.align 2, 0
_02002150: .4byte gUnk_03002560
_02002154:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002158:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _02002170
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _020021C2
_02002170:
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
	blo _02002194
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_02002194:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _020021C8 @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _020021CC @ =gUnk_03002730
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _020021D0 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_020021C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020021C8: .4byte 0x040000D4
_020021CC: .4byte gUnk_03002730
_020021D0: .4byte gUnk_030013D0

	thumb_func_start sub_020021D4
sub_020021D4: @ 0x020021D4
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
	ldr r0, _0200225C @ =sub_020027E4
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_0200A79C
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _02002260 @ =gUnk_0200D350
	mov ip, r0
	ldr r4, _02002264 @ =gUnk_030013D0
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
	beq _02002268
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _0200226E
	.align 2, 0
_0200225C: .4byte sub_020027E4
_02002260: .4byte gUnk_0200D350
_02002264: .4byte gUnk_030013D0
_02002268:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_0200226E:
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
	ldr r5, _0200266C @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _02002670 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _02002674 @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _02002678 @ =0x000002B3
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
	ldr r0, _0200267C @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _020022DA
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_020022DA:
	ldr r1, _02002680 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _02002684 @ =gUnk_03001BF0
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _02002688 @ =0x80000010
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
	ldr r5, _02002684 @ =gUnk_03001BF0
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
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r0, _02002690 @ =0x06010000
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
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r1, _02002690 @ =0x06010000
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
	ldr r0, _02002694 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r2, _02002690 @ =0x06010000
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
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r1, _02002690 @ =0x06010000
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
	ldr r0, _02002694 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r2, _02002690 @ =0x06010000
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
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r2, _02002690 @ =0x06010000
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
	ldr r0, _02002694 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r0, _02002690 @ =0x06010000
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
	ldr r2, _0200268C @ =0x05000011
	bl CpuSet
	ldr r2, _02002690 @ =0x06010000
	str r2, [r4]
	b _02002698
	.align 2, 0
_0200266C: .4byte 0x000002AE
_02002670: .4byte 0x000002B1
_02002674: .4byte 0x000002B2
_02002678: .4byte 0x000002B3
_0200267C: .4byte 0x000002B6
_02002680: .4byte 0x040000D4
_02002684: .4byte gUnk_03001BF0
_02002688: .4byte 0x80000010
_0200268C: .4byte 0x05000011
_02002690: .4byte 0x06010000
_02002694: .4byte 0x0000FFEF
_02002698:
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
	ldr r0, _020027D8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _020027DC @ =0x05000011
	bl CpuSet
	ldr r0, _020027E0 @ =0x06010000
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
	ldr r2, _020027DC @ =0x05000011
	bl CpuSet
	ldr r2, _020027E0 @ =0x06010000
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
	ldr r2, _020027D8 @ =0x0000FFEF
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
_020027D8: .4byte 0x0000FFEF
_020027DC: .4byte 0x05000011
_020027E0: .4byte 0x06010000

	thumb_func_start sub_020027E4
sub_020027E4: @ 0x020027E4
	ldr r0, _020027F0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020027F4 @ =sub_020027F8
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_020027F0: .4byte gUnk_03002560
_020027F4: .4byte sub_020027F8

	thumb_func_start sub_020027F8
sub_020027F8: @ 0x020027F8
	push {r4, r5, r6, lr}
	ldr r6, _02002814 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002818
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200281C
	.align 2, 0
_02002814: .4byte gUnk_03002560
_02002818:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200281C:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02002834
	movs r1, #0
	b _02002838
_02002834:
	ldr r0, _02002858 @ =gUnk_03000470
	ldrh r1, [r0, #0x10]
_02002838:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _020028B0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200285C
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _0200294C
	.align 2, 0
_02002858: .4byte gUnk_03000470
_0200285C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _02002874
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _0200294C
_02002874:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _02002894
	ldr r1, _0200288C @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _02002890 @ =sub_020030F0
	b _0200294A
	.align 2, 0
_0200288C: .4byte 0x000002AE
_02002890: .4byte sub_020030F0
_02002894:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0200294C
	ldr r1, _020028A8 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _020028AC @ =sub_02002E00
	b _0200294A
	.align 2, 0
_020028A8: .4byte 0x000002AE
_020028AC: .4byte sub_02002E00
_020028B0:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _02002918
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _020028F4
	ldr r1, _020028D4 @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _020028DC
	ldr r0, _020028D8 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _020028F2
	.align 2, 0
_020028D4: .4byte 0x000002AD
_020028D8: .4byte 0x000002B2
_020028DC:
	cmp r0, #1
	bne _020028EC
	ldr r0, _020028E8 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _020028F2
	.align 2, 0
_020028E8: .4byte 0x000002B2
_020028EC:
	ldr r0, _0200290C @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_020028F2:
	strb r0, [r1]
_020028F4:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02002910
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _02002912
	.align 2, 0
_0200290C: .4byte 0x000002B2
_02002910:
	movs r0, #1
_02002912:
	orrs r0, r1
	strb r0, [r2]
	b _0200294C
_02002918:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _02002938
	ldr r1, _02002930 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _02002934 @ =sub_02002A40
	b _0200294A
	.align 2, 0
_02002930: .4byte 0x000002AE
_02002934: .4byte sub_02002A40
_02002938:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0200294C
	ldr r1, _0200298C @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _02002990 @ =sub_02002C20
_0200294A:
	str r0, [r1, #8]
_0200294C:
	adds r0, r4, #0
	bl sub_020029A8
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _020029A2
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _02002994
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	b _020029A2
	.align 2, 0
_0200298C: .4byte 0x000002AE
_02002990: .4byte sub_02002C20
_02002994:
	adds r0, r4, #4
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_02001AC4
_020029A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_020029A8
sub_020029A8: @ 0x020029A8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _020029E0 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _02002A2E
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _020029E4 @ =gUnk_0200D350
	ldr r6, _020029E8 @ =gUnk_03001BF0
	ldr r5, _020029EC @ =gUnk_030013D0
	cmp r0, #0
	beq _020029F4
	ldr r2, _020029F0 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _020029FC
	.align 2, 0
_020029E0: .4byte 0x000002B3
_020029E4: .4byte gUnk_0200D350
_020029E8: .4byte gUnk_03001BF0
_020029EC: .4byte gUnk_030013D0
_020029F0: .4byte 0x000002B2
_020029F4:
	ldr r2, _02002A34 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_020029FC:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _02002A38 @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _02002A3C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_02002A2E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02002A34: .4byte 0x000002B2
_02002A38: .4byte 0x040000D4
_02002A3C: .4byte 0x80000010

	thumb_func_start sub_02002A40
sub_02002A40: @ 0x02002A40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _02002A64 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002A68
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002A6C
	.align 2, 0
_02002A64: .4byte gUnk_03002560
_02002A68:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002A6C:
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
	beq _02002B18
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _02002B10 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _02002B14 @ =0x000002B1
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
	b _02002B6E
	.align 2, 0
_02002B10: .4byte 0x0000F83F
_02002B14: .4byte 0x000002B1
_02002B18:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _02002BA0 @ =0x0000F83F
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
	ldr r4, _02002BA4 @ =0x000002B1
_02002B6E:
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
	beq _02002BAC
	ldr r0, _02002BA8 @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _02002BB2
	.align 2, 0
_02002BA0: .4byte 0x0000F83F
_02002BA4: .4byte 0x000002B1
_02002BA8: .4byte 0x000002B2
_02002BAC:
	ldr r4, _02002C10 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_02002BB2:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_020029A8
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002BD8
	adds r0, r5, #4
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_02001AC4
_02002BD8:
	ldr r0, _02002C14 @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _02002BFE
	ldr r0, _02002C18 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02002C1C @ =sub_020027F8
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_02002BFE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002C10: .4byte 0x000002B2
_02002C14: .4byte 0x000002AE
_02002C18: .4byte gUnk_03002560
_02002C1C: .4byte sub_020027F8

	thumb_func_start sub_02002C20
sub_02002C20: @ 0x02002C20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _02002C40 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02002C44
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002C48
	.align 2, 0
_02002C40: .4byte gUnk_03002560
_02002C44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002C48:
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
	beq _02002CB4
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _02002CB0 @ =0x000002B1
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
	b _02002CE6
	.align 2, 0
_02002CB0: .4byte 0x000002B1
_02002CB4:
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
	ldr r2, _02002D00 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_02002CE6:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02002D08
	ldr r2, _02002D04 @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _02002D0E
	.align 2, 0
_02002D00: .4byte 0x000002B1
_02002D04: .4byte 0x000002B2
_02002D08:
	ldr r3, _02002D90 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_02002D0E:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_020029A8
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002D34
	adds r0, r4, #4
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_02001AC4
_02002D34:
	ldr r0, _02002D94 @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _02002DF0
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _02002D98 @ =gUnk_03002560
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _02002D9C @ =sub_020027F8
	mov r8, r0
	cmp r1, #0
	beq _02002DA4
	ldr r1, _02002DA0 @ =0x0000F83F
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
	b _02002DC8
	.align 2, 0
_02002D90: .4byte 0x000002B2
_02002D94: .4byte 0x000002AE
_02002D98: .4byte gUnk_03002560
_02002D9C: .4byte sub_020027F8
_02002DA0: .4byte 0x0000F83F
_02002DA4:
	ldr r1, _02002DFC @ =0x0000F83F
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
_02002DC8:
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
_02002DF0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002DFC: .4byte 0x0000F83F

	thumb_func_start sub_02002E00
sub_02002E00: @ 0x02002E00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02002E28 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02002E2C @ =gUnk_0200D74C
	cmp r0, #0
	beq _02002E30
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002E34
	.align 2, 0
_02002E28: .4byte gUnk_03002560
_02002E2C: .4byte gUnk_0200D74C
_02002E30:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02002E34:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _02003048 @ =0x000002AD
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
	ldr r0, _0200304C @ =0x0000F83F
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
	ldr r1, _02003050 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _02003054 @ =0x00000133
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
	ldr r1, _0200304C @ =0x0000F83F
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
	ldr r1, _0200304C @ =0x0000F83F
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
	ldr r1, _0200304C @ =0x0000F83F
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
	ldr r1, _0200304C @ =0x0000F83F
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
	ldr r3, _0200304C @ =0x0000F83F
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
	bne _0200305C
	ldr r3, _02003058 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _02003072
	.align 2, 0
_02003048: .4byte 0x000002AD
_0200304C: .4byte 0x0000F83F
_02003050: .4byte 0x000002B1
_02003054: .4byte 0x00000133
_02003058: .4byte 0x000002B2
_0200305C:
	cmp r0, #1
	bne _0200306C
	ldr r0, _02003068 @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _02003072
	.align 2, 0
_02003068: .4byte 0x000002B2
_0200306C:
	ldr r2, _020030DC @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_02003072:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_020029A8
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _020030A8
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_02001AC4
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_02001AC4
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_02001AC4
_020030A8:
	ldr r0, _020030E0 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _020030CA
	ldr r0, _020030E4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020030E8 @ =sub_020027F8
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _020030EC @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_020030CA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020030DC: .4byte 0x000002B2
_020030E0: .4byte 0x000002AE
_020030E4: .4byte gUnk_03002560
_020030E8: .4byte sub_020027F8
_020030EC: .4byte 0x000002AD

	thumb_func_start sub_020030F0
sub_020030F0: @ 0x020030F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02003118 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _0200311C @ =gUnk_0200D74C
	cmp r0, #0
	beq _02003120
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003124
	.align 2, 0
_02003118: .4byte gUnk_03002560
_0200311C: .4byte gUnk_0200D74C
_02003120:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003124:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _02003334 @ =0x000002AD
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
	ldr r5, _02003338 @ =0x0000F83F
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
	ldr r1, _0200333C @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _02003340 @ =0x00000133
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
	bne _02003348
	ldr r2, _02003344 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _0200335E
	.align 2, 0
_02003334: .4byte 0x000002AD
_02003338: .4byte 0x0000F83F
_0200333C: .4byte 0x000002B1
_02003340: .4byte 0x00000133
_02003344: .4byte 0x000002B2
_02003348:
	cmp r0, #1
	bne _02003358
	ldr r3, _02003354 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _0200335E
	.align 2, 0
_02003354: .4byte 0x000002B2
_02003358:
	ldr r5, _020033C8 @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_0200335E:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_020029A8
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02003394
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_02001AC4
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_02001AC4
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_02001AC4
_02003394:
	ldr r0, _020033CC @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _020033B6
	ldr r0, _020033D0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020033D4 @ =sub_020027F8
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _020033D8 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_020033B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020033C8: .4byte 0x000002B2
_020033CC: .4byte 0x000002AE
_020033D0: .4byte gUnk_03002560
_020033D4: .4byte sub_020027F8
_020033D8: .4byte 0x000002AD

	thumb_func_start sub_020033DC
sub_020033DC: @ 0x020033DC
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020033F2
	movs r0, #0
	b _020033F4
_020033F2:
	movs r0, #1
_020033F4:
	pop {r1}
	bx r1

	thumb_func_start sub_020033F8
sub_020033F8: @ 0x020033F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r7, r0, #0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _020034BC @ =gUnk_0300041C
	adds r1, r7, #0
	adds r1, #0x90
	adds r2, r7, #0
	adds r2, #0x88
	adds r6, r7, #0
	adds r6, #0x8c
	movs r4, #0x92
	adds r4, r4, r7
	mov r8, r4
	movs r4, #0x96
	adds r4, r4, r7
	mov sb, r4
	movs r4, #0x94
	adds r4, r4, r7
	mov sl, r4
	movs r4, #0x98
	adds r4, r4, r7
	mov ip, r4
	adds r4, r7, #0
	adds r4, #0x9a
	str r4, [sp, #0xc]
	adds r4, #2
	str r4, [sp, #0x10]
	adds r4, #2
	str r4, [sp, #0x14]
	adds r4, #2
	str r4, [sp, #0x18]
	adds r4, #0xc
	str r4, [sp, #0x1c]
	subs r4, #6
	str r4, [sp, #0x20]
	adds r4, #2
	str r4, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	adds r4, #3
	str r4, [sp, #0x2c]
	adds r4, #1
	str r4, [sp, #0x30]
	lsls r4, r5, #1
	str r4, [sp, #0x34]
	mov r4, sp
	adds r4, #4
	str r4, [sp, #0x38]
	adds r4, r7, #0
	adds r4, #0x44
	str r4, [sp, #0x3c]
	adds r4, #0x14
	str r4, [sp, #0x40]
	subs r4, #8
	str r4, [sp, #0x44]
	adds r4, #0xe
	str r4, [sp, #0x48]
	subs r4, #4
	str r4, [sp, #0x4c]
	adds r4, #5
	str r4, [sp, #0x50]
	adds r4, #1
	str r4, [sp, #0x54]
	adds r4, #3
	str r4, [sp, #0x58]
	subs r4, #0xf
	str r4, [sp, #0x5c]
	adds r4, #2
	str r4, [sp, #0x60]
	adds r4, #0x1e
	str r4, [sp, #0x64]
	adds r4, #2
	str r4, [sp, #0x68]
	adds r4, #2
	str r4, [sp, #0x6c]
	adds r4, #2
	str r4, [sp, #0x70]
	adds r4, #6
	str r4, [sp, #0x74]
	adds r4, #4
	str r4, [sp, #0x78]
	subs r4, r5, #2
	str r4, [sp, #0x7c]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _020034C0
	movs r0, #0
	b _020034C2
	.align 2, 0
_020034BC: .4byte gUnk_0300041C
_020034C0:
	movs r0, #1
_020034C2:
	strh r0, [r1]
	movs r4, #0
	str r4, [r2]
	str r4, [r6]
	mov r0, r8
	strb r4, [r0]
	mov r1, sb
	strh r4, [r1]
	mov r2, sl
	strh r4, [r2]
	mov r3, ip
	strh r4, [r3]
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	movs r0, #0x5a
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	movs r0, #1
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	ldr r3, [sp, #0x18]
	strh r0, [r3]
	movs r0, #3
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	strh r4, [r2]
	ldr r3, [sp, #0x24]
	strh r4, [r3]
	ldr r0, [sp, #0x28]
	strh r4, [r0]
	movs r2, #0
	ldr r1, [sp, #0x2c]
	strb r2, [r1]
	ldr r3, [sp, #0x30]
	strh r4, [r3]
	str r4, [sp]
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _02003638 @ =0x05000011
	bl CpuSet
	ldr r0, _0200363C @ =0x06010000
	mov sl, r0
	str r0, [r7]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r0, _02003640 @ =gUnk_0200E990
	ldrh r1, [r0, #0x34]
	strh r1, [r7, #0xc]
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	ldr r6, _02003644 @ =gUnk_0200E946
	ldr r3, [sp, #0x34]
	adds r5, r3, r5
	lsls r5, r5, #2
	adds r2, r5, r6
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r7, #0x10]
	adds r1, r6, #2
	adds r1, r5, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [r7, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	str r0, [r7, #0x28]
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r3, [sp, #8]
	str r3, [r7, #0x38]
	str r4, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, _02003638 @ =0x05000011
	bl CpuSet
	mov r0, sl
	str r0, [r7, #0x44]
	movs r0, #0x88
	lsls r0, r0, #3
	ldr r1, [sp, #0x40]
	strh r0, [r1]
	ldr r1, _02003648 @ =gUnk_0200EC48
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0x44]
	strh r0, [r2]
	ldrb r0, [r1, #0xa]
	ldr r3, [sp, #0x48]
	strb r0, [r3]
	ldr r0, [sp, #0x4c]
	strh r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x50]
	strb r0, [r1]
	mov r3, r8
	ldr r2, [sp, #0x54]
	strb r3, [r2]
	movs r0, #4
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #8
	adds r1, r5, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	ldr r2, [sp, #0x5c]
	strh r0, [r2]
	adds r6, #0xa
	adds r5, r5, r6
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	ldr r3, [sp, #0x60]
	strh r0, [r3]
	mov r0, sb
	str r0, [r7, #0x4c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x6c]
	movs r3, #0
	ldrsh r0, [r5, r3]
	str r0, [r7, #0x70]
	ldr r0, [sp, #0x64]
	strh r4, [r0]
	ldr r1, [sp, #0x68]
	strh r4, [r1]
	mov r3, r8
	ldr r2, [sp, #0x6c]
	strh r3, [r2]
	ldr r0, [sp, #0x70]
	strh r4, [r0]
	ldr r1, [sp, #0x74]
	str r4, [r1]
	ldr r2, [sp, #0x78]
	str r4, [r2]
	ldr r3, [sp, #8]
	str r3, [r7, #0x7c]
	ldr r4, [sp, #0x7c]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _02003628
	ldrh r0, [r7, #0x34]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
	ldr r2, [sp, #0x6c]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
_02003628:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003638: .4byte 0x05000011
_0200363C: .4byte 0x06010000
_02003640: .4byte gUnk_0200E990
_02003644: .4byte gUnk_0200E946
_02003648: .4byte gUnk_0200EC48

	thumb_func_start sub_0200364C
sub_0200364C: @ 0x0200364C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020036A6
	ldr r3, _020036AC @ =gUnk_03005868
	ldr r0, [r3]
	ldr r5, _020036B0 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r4, _020036B4 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r3]
	lsrs r6, r1, #0x10
	movs r0, #0xf
	ands r6, r0
	ldr r2, _020036B8 @ =gUnk_0200EDC0
	lsls r0, r7, #4
	adds r0, r6, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r2, ip
	adds r2, #0xad
	strb r0, [r2]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r6, r0, #0x10
	movs r0, #3
	ands r6, r0
	ldr r2, _020036BC @ =gUnk_0200EDF0
	lsls r0, r6, #1
	lsls r1, r7, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0xae
	strh r1, [r0]
_020036A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020036AC: .4byte gUnk_03005868
_020036B0: .4byte 0x00196225
_020036B4: .4byte 0x3C6EF35F
_020036B8: .4byte gUnk_0200EDC0
_020036BC: .4byte gUnk_0200EDF0

	thumb_func_start sub_020036C0
sub_020036C0: @ 0x020036C0
	ldr r1, _020036DC @ =0x040000D4
	ldr r0, _020036E0 @ =gUnk_0200EFF0
	str r0, [r1]
	ldr r0, _020036E4 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _020036E8 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _020036EC @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_020036DC: .4byte 0x040000D4
_020036E0: .4byte gUnk_0200EFF0
_020036E4: .4byte gUnk_03002730
_020036E8: .4byte 0x80000100
_020036EC: .4byte gUnk_030013D0

	thumb_func_start sub_020036F0
sub_020036F0: @ 0x020036F0
	push {r4, lr}
	sub sp, #8
	ldr r0, _02003754 @ =gUnk_03005868
	movs r3, #0
	str r3, [r0]
	ldr r1, _02003758 @ =gUnk_03002620
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0200375C @ =gUnk_03001E40
	ldr r0, _02003760 @ =0x00001C02
	strh r0, [r1]
	ldr r0, _02003764 @ =0x00001D02
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _02003768 @ =gUnk_03001478
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _0200376C @ =gUnk_03002610
	movs r2, #8
	strh r2, [r0]
	movs r1, #0x58
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r0, _02003770 @ =sub_02003860
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r2, #0xf8
	ldr r3, _02003774 @ =sub_020056C8
	str r3, [sp]
	movs r3, #0
	bl sub_0200A79C
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _02003778
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200377C
	.align 2, 0
_02003754: .4byte gUnk_03005868
_02003758: .4byte gUnk_03002620
_0200375C: .4byte gUnk_03001E40
_02003760: .4byte 0x00001C02
_02003764: .4byte 0x00001D02
_02003768: .4byte gUnk_03001478
_0200376C: .4byte gUnk_03002610
_02003770: .4byte sub_02003860
_02003774: .4byte sub_020056C8
_02003778:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200377C:
	adds r4, r1, r0
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _02003824 @ =0x010002FC
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _02003828 @ =gUnk_02012914
	bl sub_02001FFC
	str r0, [r4, #0x14]
	ldr r0, _0200382C @ =gUnk_02012920
	bl sub_02001FFC
	str r0, [r4, #0x18]
	ldr r0, _02003830 @ =gUnk_0201292C
	bl sub_02001FFC
	str r0, [r4, #0x1c]
	ldr r0, _02003834 @ =gUnk_02012938
	bl sub_02001FFC
	str r0, [r4, #0x20]
	ldr r0, _02003838 @ =gUnk_02012944
	bl sub_02001FFC
	str r0, [r4, #0x24]
	ldr r0, _0200383C @ =gUnk_02012950
	bl sub_02001FFC
	str r0, [r4, #0x28]
	ldr r0, _02003840 @ =gUnk_0201295C
	bl sub_02001FFC
	str r0, [r4, #0x2c]
	ldr r0, _02003844 @ =gUnk_02012968
	bl sub_02001FFC
	str r0, [r4, #0x30]
	ldr r0, _02003848 @ =gUnk_02012974
	bl sub_02001FFC
	str r0, [r4, #0x34]
	ldr r0, _0200384C @ =gUnk_02012980
	bl sub_02001FFC
	str r0, [r4, #0x38]
	ldr r0, _02003850 @ =gUnk_03000404
	ldrb r1, [r0]
	ldr r2, _02003854 @ =0x000005F4
	adds r0, r4, r2
	strb r1, [r0]
	ldr r2, _02003858 @ =gUnk_0200E97E
	ldr r3, _0200385C @ =gUnk_03000428
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x13]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003824: .4byte 0x010002FC
_02003828: .4byte gUnk_02012914
_0200382C: .4byte gUnk_02012920
_02003830: .4byte gUnk_0201292C
_02003834: .4byte gUnk_02012938
_02003838: .4byte gUnk_02012944
_0200383C: .4byte gUnk_02012950
_02003840: .4byte gUnk_0201295C
_02003844: .4byte gUnk_02012968
_02003848: .4byte gUnk_02012974
_0200384C: .4byte gUnk_02012980
_02003850: .4byte gUnk_03000404
_02003854: .4byte 0x000005F4
_02003858: .4byte gUnk_0200E97E
_0200385C: .4byte gUnk_03000428

	thumb_func_start sub_02003860
sub_02003860: @ 0x02003860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CD8
	ldr r3, _02003898 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _0200389C @ =sub_02003BF0
	mov r4, sp
	adds r4, #4
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _020038A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020038A4
	.align 2, 0
_02003898: .4byte gUnk_03002560
_0200389C: .4byte sub_02003BF0
_020038A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020038A4:
	adds r7, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r5, #0
	str r5, [r7]
	str r5, [r7, #4]
	str r5, [r7, #8]
	str r5, [r7, #0xc]
	ldr r1, _02003A08 @ =0x000005EC
	adds r0, r7, r1
	strh r5, [r0]
	ldr r4, _02003A0C @ =0x000005F6
	adds r0, r7, r4
	strh r5, [r0]
	adds r0, r7, #0
	bl sub_02003A28
	adds r0, r7, #0
	adds r0, #0x40
	str r0, [sp, #8]
	adds r4, r7, #0
	adds r4, #8
	ldrb r3, [r7, #0x10]
	adds r1, r4, #0
	movs r2, #0
	bl sub_020033F8
	movs r1, #0xf0
	adds r1, r1, r7
	mov sb, r1
	ldrb r3, [r7, #0x11]
	mov r0, sb
	adds r1, r4, #0
	movs r2, #1
	bl sub_020033F8
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldrb r3, [r7, #0x12]
	adds r1, r4, #0
	movs r2, #2
	bl sub_020033F8
	movs r1, #0x94
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [sp, #0xc]
	ldrb r3, [r7, #0x13]
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #3
	bl sub_020033F8
	ldr r0, _02003A10 @ =0x000005F4
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	bl sub_0200364C
	ldrb r1, [r4]
	mov r0, sb
	bl sub_0200364C
	ldrb r1, [r4]
	mov r0, r8
	bl sub_0200364C
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	bl sub_0200364C
	str r5, [sp]
	ldr r1, _02003A14 @ =0x00000564
	adds r4, r7, r1
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _02003A18 @ =0x05000011
	bl CpuSet
	ldr r0, _02003A1C @ =0x06010000
	str r0, [r4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, _02003A20 @ =gUnk_0200ED00
	ldrh r6, [r0, #0x10]
	strh r6, [r4, #0xc]
	ldrb r0, [r0, #0x12]
	mov sl, r0
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	mov sb, r1
	mov r1, sb
	strb r1, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x81
	lsls r1, r1, #4
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #4]
	movs r0, #0xb5
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r2, _02003A18 @ =0x05000011
	bl CpuSet
	ldr r1, _02003A1C @ =0x06010000
	str r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	mov r0, sl
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	ldr r0, _02003A24 @ =0x0000FFD8
	strh r0, [r4, #0x12]
	mov r1, r8
	str r1, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0xa0
	rsbs r0, r0, #0
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
	bl sub_02006D24
	ldr r0, [sp, #8]
	bl sub_02006E64
	movs r0, #0x1c
	bl m4aSongNumStart
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003A08: .4byte 0x000005EC
_02003A0C: .4byte 0x000005F6
_02003A10: .4byte 0x000005F4
_02003A14: .4byte 0x00000564
_02003A18: .4byte 0x05000011
_02003A1C: .4byte 0x06010000
_02003A20: .4byte gUnk_0200ED00
_02003A24: .4byte 0x0000FFD8

	thumb_func_start sub_02003A28
sub_02003A28: @ 0x02003A28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	adds r5, r0, #0
	movs r4, #0
_02003A38:
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r0, _02003BD4 @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r7, #0
	movs r2, #0x90
	lsls r2, r2, #3
	mov sl, r2
	mov r2, sl
	strh r2, [r0, #0x14]
	mov r2, sp
	ldr r0, _02003BD8 @ =gUnk_0200ED60
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r7, [r0, #0x16]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp, #8]
	mov r0, sp
	bl sub_0200B010
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _02003A38
	ldr r1, _02003BD4 @ =0x06010000
	str r1, [sp]
	mov r0, sp
	movs r4, #0
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	mov r1, sp
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	mov r0, sp
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r0, #4
	strb r0, [r1, #0x1f]
	mov r0, sp
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r0, r8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_0200B010
	add r0, sp, #0x28
	ldr r1, _02003BD4 @ =0x06010000
	str r1, [sp, #0x28]
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #1
	strh r1, [r0, #0xc]
	movs r5, #7
	strb r5, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r2, r8
	str r2, [r0, #8]
	bl sub_0200B010
	add r0, sp, #0x50
	ldr r1, _02003BD4 @ =0x06010000
	str r1, [sp, #0x50]
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	movs r1, #0x12
	strb r1, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_0200B010
	add r0, sp, #0x78
	ldr r2, _02003BD4 @ =0x06010000
	str r2, [sp, #0x78]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	movs r1, #0x11
	strb r1, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_0200B010
	add r0, sp, #0xa0
	ldr r2, _02003BD4 @ =0x06010000
	str r2, [r0]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0xb
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_0200B010
	add r0, sp, #0xc8
	ldr r2, _02003BD4 @ =0x06010000
	str r2, [r0]
	mov r1, sl
	strh r1, [r0, #0x14]
	movs r1, #3
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0xc
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_0200B010
	ldr r0, _02003BDC @ =gUnk_0200F414
	ldr r1, _02003BE0 @ =0x0600E000
	ldr r4, _02003BE4 @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _02003BE8 @ =gUnk_0200FC14
	ldr r1, _02003BEC @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003BD4: .4byte 0x06010000
_02003BD8: .4byte gUnk_0200ED60
_02003BDC: .4byte gUnk_0200F414
_02003BE0: .4byte 0x0600E000
_02003BE4: .4byte 0x04000200
_02003BE8: .4byte gUnk_0200FC14
_02003BEC: .4byte 0x0600E800

	thumb_func_start sub_02003BF0
sub_02003BF0: @ 0x02003BF0
	push {r4, lr}
	ldr r3, _02003C0C @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003C10
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003C14
	.align 2, 0
_02003C0C: .4byte gUnk_03002560
_02003C10:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003C14:
	adds r4, r1, r0
	ldr r0, _02003CD8 @ =0x000005F2
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _02003C88
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r3]
	ldr r0, _02003CDC @ =sub_02003CE0
	str r0, [r1, #8]
	ldr r0, [r4, #0x6c]
	adds r0, #0x18
	str r0, [r4, #0x6c]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_02006D08
	adds r0, r4, #0
	adds r0, #0xf0
	movs r1, #0
	bl sub_02006D08
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	bl sub_02006D08
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	bl sub_02006D08
_02003C88:
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_02001AC4
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02001AC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003CD8: .4byte 0x000005F2
_02003CDC: .4byte sub_02003CE0

	thumb_func_start sub_02003CE0
sub_02003CE0: @ 0x02003CE0
	push {r4, lr}
	ldr r3, _02003CFC @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003D00
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003D04
	.align 2, 0
_02003CFC: .4byte gUnk_03002560
_02003D00:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003D04:
	adds r4, r1, r0
	ldr r0, _02003DF8 @ =0x000005F2
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _02003DA6
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r3]
	ldr r0, _02003DFC @ =sub_02003E00
	str r0, [r1, #8]
	bl sub_02005EA0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_02005BEC
	adds r1, r4, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xf0
	movs r1, #1
	bl sub_02005BEC
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_02005BEC
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #3
	bl sub_02005BEC
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0xd0
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	bl sub_02005A18
_02003DA6:
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_02001AC4
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_02001AC4
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02001AC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003DF8: .4byte 0x000005F2
_02003DFC: .4byte sub_02003E00

	thumb_func_start sub_02003E00
sub_02003E00: @ 0x02003E00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _02003E24 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003E28
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003E2C
	.align 2, 0
_02003E24: .4byte gUnk_03002560
_02003E28:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003E2C:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_020057B8
	ldr r0, [r7]
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	adds r6, r7, #0
	adds r6, #0x40
	adds r5, r7, #0
	adds r5, #0x84
	movs r0, #0xf0
	adds r0, r0, r7
	mov r8, r0
	adds r3, r7, #0
	adds r3, #0xdc
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0xde
	str r0, [sp, #4]
	cmp r2, #0
	beq _02003E64
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003E68
_02003E64:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003E68:
	adds r0, r1, r0
	bl sub_0200649C
	cmp r0, #0
	bne _02003E74
	b _02003F82
_02003E74:
	ldr r0, [r7]
	cmp r0, #0
	bne _02003E7C
	b _02003F82
_02003E7C:
	bl sub_0200A8B8
	movs r1, #0
	mov sb, r1
	str r1, [r7]
	adds r0, r7, #0
	adds r0, #0x80
	ldr r2, _02004018 @ =0x00000564
	adds r1, r7, r2
	str r1, [r0]
	str r6, [r1, #0x3c]
	ldrh r2, [r1, #0x34]
	ldr r4, _0200401C @ =0x0000FFEF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0x34]
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r1, r7, r3
	str r1, [r5, #0x40]
	str r5, [r1, #0x3c]
	ldrh r2, [r1, #0x34]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0x34]
	adds r0, r6, #0
	movs r1, #1
	bl sub_02006D08
	mov r0, r8
	movs r1, #1
	bl sub_02006D08
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #1
	bl sub_02006D08
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #1
	bl sub_02006D08
	ldr r0, _02004020 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004024 @ =sub_02004028
	str r0, [r1, #8]
	movs r3, #0xc8
	adds r3, r3, r7
	mov sl, r3
	ldr r0, [r3]
	bl sub_0200A8B8
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0]
	bl sub_0200A8B8
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r6, r7, r1
	ldr r0, [r6]
	bl sub_0200A8B8
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r5, r7, r2
	ldr r0, [r5]
	bl sub_0200A8B8
	mov r3, sb
	mov r0, sl
	str r3, [r0]
	mov r1, r8
	str r3, [r1]
	str r3, [r6]
	str r3, [r5]
	adds r6, r7, #0
	adds r6, #0xd0
	ldrh r1, [r6]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r6]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r7, r2
	ldrh r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r7, r1
	ldrh r0, [r2]
	ands r4, r0
	strh r4, [r2]
	ldrh r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r6]
	ldrh r0, [r5]
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3c
	movs r3, #0
	strb r3, [r0]
	bl sub_02005ADC
_02003F82:
	adds r4, r7, #0
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #0
	bl sub_0200587C
	movs r0, #0xf0
	adds r0, r0, r7
	mov r8, r0
	movs r1, #1
	bl sub_0200587C
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r6, r7, r1
	adds r0, r6, #0
	movs r1, #2
	bl sub_0200587C
	movs r2, #0x94
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	movs r1, #3
	bl sub_0200587C
	ldr r3, [sp]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r4, #0
	bl sub_02005B44
	adds r0, r4, #0
	bl sub_02001AC4
	mov r0, r8
	bl sub_02001AC4
	adds r0, r6, #0
	bl sub_02001AC4
	adds r0, r5, #0
	bl sub_02001AC4
	adds r0, r7, #0
	adds r0, #0x84
	bl sub_02001AC4
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_02001AC4
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_02001AC4
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r7, r3
	bl sub_02001AC4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004018: .4byte 0x00000564
_0200401C: .4byte 0x0000FFEF
_02004020: .4byte gUnk_03002560
_02004024: .4byte sub_02004028

	thumb_func_start sub_02004028
sub_02004028: @ 0x02004028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0200404C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004050
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004054
	.align 2, 0
_0200404C: .4byte gUnk_03002560
_02004050:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004054:
	adds r0, r1, r0
	adds r6, r0, #0
	bl sub_020057B8
	movs r0, #0xe6
	adds r0, r0, r6
	mov sb, r0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0200409C
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r3, r6, r1
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0200409C
	ldr r2, _02004248 @ =0x00000564
	adds r1, r6, r2
	ldr r2, _0200424C @ =gUnk_0200ED00
	ldrh r0, [r2, #0x14]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x16]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
_0200409C:
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r7, r6, r0
	ldrh r1, [r7]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _020040D4
	adds r0, r6, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_02005928
	adds r0, r6, #0
	adds r0, #0xf0
	bl sub_020059DC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_020059DC
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	bl sub_020059DC
_020040D4:
	ldrh r1, [r7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _020040E4
	b _02004268
_020040E4:
	ldr r2, _02004250 @ =gUnk_0200E808
	adds r5, r6, #0
	adds r5, #0x3c
	ldrb r0, [r5]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0x6c]
	subs r0, r0, r1
	str r0, [r6, #0x6c]
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r3, r6, r4
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	adds r4, #0xb0
	adds r3, r6, r4
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	adds r4, #0xb0
	adds r3, r6, r4
	adds r2, #0xb4
	ldrb r0, [r5]
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	ldr r1, _02004254 @ =gUnk_0200E8F8
	ldrb r0, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _02004168
	b _020046BA
_02004168:
	ldrh r1, [r7]
	ldr r0, _02004258 @ =0x0000FFEF
	ands r0, r1
	movs r4, #0
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #5
	bl sub_02006D08
	adds r0, r6, #0
	adds r0, #0xf0
	movs r1, #5
	bl sub_02006D08
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r1, #5
	bl sub_02006D08
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #5
	bl sub_02006D08
	strb r4, [r5]
	ldr r4, _02004248 @ =0x00000564
	adds r0, r6, r4
	bl sub_02001A88
	movs r7, #0xbb
	lsls r7, r7, #3
	adds r5, r6, r7
	mov r0, r8
	strh r0, [r5]
	ldr r1, _0200425C @ =0x000005DA
	adds r4, r6, r1
	strh r0, [r4]
	movs r2, #0xb5
	lsls r2, r2, #3
	adds r0, r6, r2
	bl sub_02001A88
	mov r3, r8
	strh r3, [r5]
	strh r3, [r4]
	movs r4, #0xb2
	lsls r4, r4, #3
	adds r1, r6, r4
	ldr r2, [r1]
	adds r0, r6, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r2, [r1]
	movs r7, #0xcc
	lsls r7, r7, #1
	adds r0, r6, r7
	strh r2, [r0]
	ldr r2, [r1]
	movs r3, #0x92
	lsls r3, r3, #2
	adds r0, r6, r3
	strh r2, [r0]
	ldr r1, [r1]
	movs r4, #0xbe
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r1, [r0]
	ldr r7, _02004260 @ =0x000005D4
	adds r1, r6, r7
	ldr r0, [r1]
	adds r2, r6, #0
	adds r2, #0xea
	strh r0, [r2]
	ldr r0, [r1]
	subs r3, #0xae
	adds r2, r6, r3
	strh r0, [r2]
	ldr r2, [r1]
	subs r4, #0xae
	adds r0, r6, r4
	strh r2, [r0]
	ldr r1, [r1]
	ldr r7, _02004264 @ =0x000002FA
	adds r0, r6, r7
	strh r1, [r0]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	subs r3, #4
	adds r1, r6, r3
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	subs r4, #4
	adds r1, r6, r4
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	subs r7, #4
	adds r1, r6, r7
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	b _020046BA
	.align 2, 0
_02004248: .4byte 0x00000564
_0200424C: .4byte gUnk_0200ED00
_02004250: .4byte gUnk_0200E808
_02004254: .4byte gUnk_0200E8F8
_02004258: .4byte 0x0000FFEF
_0200425C: .4byte 0x000005DA
_02004260: .4byte 0x000005D4
_02004264: .4byte 0x000002FA
_02004268:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _02004272
	b _02004438
_02004272:
	ldr r0, _020042F0 @ =0x000005EC
	adds r1, r6, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x29
	ble _02004300
	ldr r4, _020042F4 @ =0x00000596
	adds r0, r6, r4
	strh r2, [r0]
	mov r7, sb
	ldrh r1, [r7]
	ldr r0, _020042F8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r7]
	ldr r4, _020042FC @ =gUnk_0200E934
	adds r3, r6, #0
	adds r3, #0x3c
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0x6c]
	adds r0, r0, r1
	str r0, [r6, #0x6c]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r2, r6, r1
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r7, #0x9f
	lsls r7, r7, #2
	adds r2, r6, r7
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _02004310
	.align 2, 0
_020042F0: .4byte 0x000005EC
_020042F4: .4byte 0x00000596
_020042F8: .4byte 0x0000FFFD
_020042FC: .4byte gUnk_0200E934
_02004300:
	cmp r0, #0xe
	bgt _0200430A
	ldr r0, [r6, #0xc]
	subs r0, #0x20
	str r0, [r6, #0xc]
_0200430A:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_02004310:
	adds r0, r6, #0
	adds r0, #0xe6
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200432A
	adds r1, r6, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_0200432A:
	movs r1, #0xcb
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _02004346
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_02004346:
	ldr r4, _02004420 @ =0x00000246
	adds r0, r6, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _02004360
	movs r7, #0x92
	lsls r7, r7, #2
	adds r1, r6, r7
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_02004360:
	ldr r1, _02004424 @ =0x000002F6
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200437A
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_0200437A:
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r6, r3
	adds r0, r6, #0
	adds r0, #0xe8
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [r1]
	ldr r7, _02004428 @ =0x000005D4
	adds r1, r6, r7
	adds r0, r6, #0
	adds r0, #0xea
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	adds r4, r6, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	cmp r0, #8
	bls _020043CE
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #2
	bl sub_02006D08
	adds r0, r6, #0
	adds r0, #0xf0
	movs r1, #2
	bl sub_02006D08
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r0, r6, r3
	movs r1, #2
	bl sub_02006D08
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #2
	bl sub_02006D08
_020043CE:
	ldrb r0, [r4]
	cmp r0, #0x11
	bhi _020043D6
	b _020046BA
_020043D6:
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _0200442C @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r3, #0
_020043EA:
	movs r0, #0xb0
	muls r0, r3, r0
	adds r0, r0, r6
	adds r0, #0x84
	ldr r2, _02004430 @ =gUnk_0200EC48
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _020043EA
	ldr r0, _02004434 @ =0x0000022A
	bl m4aSongNumStart
	bl sub_02007068
	str r0, [r6]
	movs r0, #4
	movs r1, #1
	bl sub_02001CD8
	b _020046BA
	.align 2, 0
_02004420: .4byte 0x00000246
_02004424: .4byte 0x000002F6
_02004428: .4byte 0x000005D4
_0200442C: .4byte 0x0000FFDF
_02004430: .4byte gUnk_0200EC48
_02004434: .4byte 0x0000022A
_02004438:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _02004442
	b _020046BA
_02004442:
	bl sub_02001FD8
	cmp r0, #0
	beq _0200444C
	b _020046BA
_0200444C:
	adds r7, r6, #0
	adds r7, #0xdc
	ldrh r0, [r7]
	adds r3, r6, #0
	adds r3, #0xe4
	strh r0, [r3]
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sl, r1
	ldrh r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r2, r6, r2
	str r2, [sp, #0x14]
	strh r0, [r2]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r4, r4, r6
	mov sb, r4
	ldrh r0, [r4]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x18]
	strh r0, [r1]
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x1c]
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020044AE
	adds r0, r6, #0
	adds r0, #0xee
	ldrh r1, [r0]
	subs r0, #0xe
	strh r1, [r0]
_020044AE:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020044CC
	movs r4, #0xcf
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r1, [r0]
	subs r4, #0xe
	adds r0, r6, r4
	strh r1, [r0]
_020044CC:
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020044E8
	ldr r4, _020047C0 @ =0x0000024E
	adds r0, r6, r4
	ldrh r1, [r0]
	subs r4, #0xe
	adds r0, r6, r4
	strh r1, [r0]
_020044E8:
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _02004506
	ldr r2, _020047C4 @ =0x000002FE
	adds r0, r6, r2
	ldrh r1, [r0]
	movs r4, #0xbc
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r1, [r0]
_02004506:
	movs r0, #0
	ldrsh r4, [r3, r0]
	adds r0, r6, #0
	adds r0, #0xe0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	cmp r4, #0
	bge _02004522
	adds r4, #7
_02004522:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	movs r5, #0
	strh r0, [r7]
	ldr r2, [sp, #0x14]
	movs r3, #0
	ldrsh r4, [r2, r3]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	cmp r4, #0
	bge _0200454C
	adds r4, #7
_0200454C:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3]
	ldr r0, [sp, #0x18]
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	cmp r4, #0
	bge _02004576
	adds r4, #7
_02004576:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r4, sb
	strh r0, [r4]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	movs r1, #0xa
	bl __divsi3
	adds r1, r0, #0
	cmp r4, #0
	bge _020045A0
	adds r4, #7
_020045A0:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r4, r8
	strh r0, [r4]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, _020047C8 @ =0x00001F3F
	cmp r1, r0
	ble _020045BC
	movs r3, #1
	str r3, [sp, #0x10]
_020045BC:
	adds r0, r6, #0
	bl sub_02006D9C
	ldr r0, _020047CC @ =gUnk_02010414
	ldr r1, _020047D0 @ =0x0600E000
	ldr r4, _020047D4 @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _020047D8 @ =gUnk_02010C14
	ldr r1, _020047DC @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	ldr r4, _020047E0 @ =gUnk_03002620
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _020047E4 @ =0x0600F000
	ldr r2, _020047E8 @ =0x05000100
	bl CpuSet
	ldrh r1, [r4]
	ldr r0, _020047EC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r4]
	ldr r4, _020047F0 @ =gUnk_03002610
	strh r5, [r4, #0xa]
	ldr r0, _020047F4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020047F8 @ =sub_02004880
	str r0, [r1, #8]
	ldr r0, [r6]
	bl sub_0200A8B8
	str r5, [r6]
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CD8
	add r1, sp, #4
	ldrh r0, [r7]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r1, #2]
	mov r7, sb
	ldrh r0, [r7]
	strh r0, [r1, #4]
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1, #6]
	adds r0, r6, #0
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #0
	beq _02004642
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #0x78
	strh r0, [r1]
_02004642:
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _02004658
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	subs r0, #0x78
	strh r0, [r1, #2]
_02004658:
	movs r7, #0x93
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200466E
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #4]
	subs r0, #0x78
	strh r0, [r1, #4]
_0200466E:
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _02004684
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #6]
	subs r0, #0x78
	strh r0, [r1, #6]
_02004684:
	add r0, sp, #4
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, sp, #4
	movs r3, #2
	ldrsh r1, [r1, r3]
	add r2, sp, #4
	movs r7, #4
	ldrsh r2, [r2, r7]
	add r3, sp, #4
	movs r7, #6
	ldrsh r3, [r3, r7]
	ldr r7, [sp, #0x10]
	str r7, [sp]
	bl sub_020064BC
	str r0, [r6]
	movs r1, #8
	strh r1, [r4]
	movs r0, #0x58
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	strh r0, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
_020046BA:
	ldr r7, _020047F0 @ =gUnk_03002610
	ldr r0, [r6, #8]
	asrs r0, r0, #3
	movs r2, #8
	subs r0, r2, r0
	mov sl, r0
	mov r0, sl
	strh r0, [r7]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #3
	movs r3, #0x58
	subs r0, r3, r0
	mov sb, r0
	mov r1, sb
	strh r1, [r7, #2]
	ldr r0, [r6, #8]
	asrs r1, r0, #6
	subs r2, r2, r1
	asrs r0, r0, #3
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #4]
	ldr r0, [r6, #0xc]
	asrs r1, r0, #6
	subs r3, r3, r1
	asrs r0, r0, #3
	subs r3, r3, r0
	mov r8, r3
	mov r3, r8
	strh r3, [r7, #6]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _02004746
	ldr r5, _020047FC @ =gUnk_03005868
	ldr r0, [r5]
	ldr r4, _02004800 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _02004804 @ =0x3C6EF35F
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	movs r3, #7
	ands r1, r3
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r3
	ldr r3, _02004808 @ =gUnk_0200E976
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov r4, sl
	adds r1, r4, r2
	strh r1, [r7]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r3, sb
	adds r0, r3, r1
	strh r0, [r7, #2]
	add r2, ip
	strh r2, [r7, #4]
	add r1, r8
	strh r1, [r7, #6]
_02004746:
	adds r0, r6, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r6, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r4, #0xd0
	lsls r4, r4, #1
	adds r0, r6, r4
	bl sub_02001AC4
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	bl sub_02001AC4
	adds r0, r6, #0
	adds r0, #0x84
	bl sub_02001AC4
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_02001AC4
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r6, r2
	bl sub_02001AC4
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_02001AC4
	ldr r4, _0200480C @ =0x000005DC
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _020047B0
	movs r7, #0xb5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_02001AC4
	ldr r1, _02004810 @ =0x00000564
	adds r0, r6, r1
	bl sub_02001AC4
_020047B0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020047C0: .4byte 0x0000024E
_020047C4: .4byte 0x000002FE
_020047C8: .4byte 0x00001F3F
_020047CC: .4byte gUnk_02010414
_020047D0: .4byte 0x0600E000
_020047D4: .4byte 0x04000200
_020047D8: .4byte gUnk_02010C14
_020047DC: .4byte 0x0600E800
_020047E0: .4byte gUnk_03002620
_020047E4: .4byte 0x0600F000
_020047E8: .4byte 0x05000100
_020047EC: .4byte 0x0000DFFF
_020047F0: .4byte gUnk_03002610
_020047F4: .4byte gUnk_03002560
_020047F8: .4byte sub_02004880
_020047FC: .4byte gUnk_03005868
_02004800: .4byte 0x00196225
_02004804: .4byte 0x3C6EF35F
_02004808: .4byte gUnk_0200E976
_0200480C: .4byte 0x000005DC
_02004810: .4byte 0x00000564

	thumb_func_start sub_02004814
sub_02004814: @ 0x02004814
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0xa8
	movs r1, #0
	ldrsh r3, [r4, r1]
	movs r2, #0xaa
	adds r2, r2, r0
	mov ip, r2
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r2, r3, r1
	cmp r2, #0
	bge _02004830
	subs r2, r1, r3
_02004830:
	adds r3, r0, #0
	adds r3, #0xa0
	movs r5, #1
	strh r5, [r3]
	movs r6, #0
	ldrsh r1, [r4, r6]
	mov r4, ip
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r1, r0
	ble _02004850
	cmp r2, #0x30
	bgt _0200487A
	cmp r2, #0x20
	bgt _02004872
	b _02004868
_02004850:
	cmp r2, #0
	bne _0200485A
	movs r0, #5
	strh r0, [r3]
	b _0200487A
_0200485A:
	cmp r2, #0x10
	bgt _02004864
	movs r0, #4
	strh r0, [r3]
	b _0200487A
_02004864:
	cmp r2, #0x20
	bgt _0200486E
_02004868:
	movs r0, #3
	strh r0, [r3]
	b _0200487A
_0200486E:
	cmp r2, #0x30
	bgt _02004878
_02004872:
	movs r0, #2
	strh r0, [r3]
	b _0200487A
_02004878:
	strh r5, [r3]
_0200487A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02004880
sub_02004880: @ 0x02004880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _020048A4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020048A8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020048AC
	.align 2, 0
_020048A4: .4byte gUnk_03002560
_020048A8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020048AC:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	adds r5, r4, #0
	adds r5, #0xdc
	cmp r0, #0
	beq _020048CA
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020048CE
_020048CA:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020048CE:
	adds r0, r1, r0
	bl sub_020068C4
	cmp r0, #0
	bne _020048DA
	b _02004AC6
_020048DA:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0200494E
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, _02004900 @ =0x00001F3F
	cmp r0, r1
	ble _02004904
	movs r0, #0x10
	movs r1, #1
	bl sub_02001CD8
	b _02004940
	.align 2, 0
_02004900: .4byte 0x00001F3F
_02004904:
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r1
	bgt _0200492E
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	bgt _0200492E
	movs r7, #0xbb
	lsls r7, r7, #2
	adds r0, r4, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r1
	ble _02004938
_0200492E:
	movs r0, #0x10
	movs r1, #1
	bl sub_02001D68
	b _02004940
_02004938:
	movs r0, #0x10
	movs r1, #1
	bl sub_02001CD8
_02004940:
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_0200494E:
	bl sub_02001FD8
	str r0, [sp]
	cmp r0, #0
	beq _0200495A
	b _02004AC6
_0200495A:
	ldr r0, [r4]
	bl sub_0200A8B8
	ldr r7, [sp]
	str r7, [r4]
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _02004A38 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	movs r2, #0
	adds r6, r4, #0
	adds r6, #0xdc
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r5, _02004A3C @ =0x00001F3F
	cmp r0, r5
	ble _02004984
	movs r2, #1
_02004984:
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r3, r3, r4
	mov r8, r3
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, r5
	ble _02004996
	adds r2, #1
_02004996:
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r5
	ble _020049A8
	adds r2, #1
_020049A8:
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r3, r3, r4
	mov sl, r3
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, r5
	ble _020049BA
	adds r2, #1
_020049BA:
	ldr r3, _02004A40 @ =gUnk_03002620
	ldrh r1, [r3]
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r0, r7, #0
	orrs r1, r0
	strh r1, [r3]
	cmp r2, #0
	beq _02004AB8
	ldr r2, _02004A44 @ =0x000005F2
	adds r0, r4, r2
	mov r7, sp
	ldrh r7, [r7]
	strh r7, [r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, r5
	ble _02004A5E
	ldr r0, _02004A48 @ =0x0000FBFF
	ands r1, r0
	strh r1, [r3]
	adds r0, r4, #0
	bl sub_02004AF8
	ldr r0, _02004A4C @ =gUnk_03000400
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	ldr r0, _02004A50 @ =gUnk_03002560
	ldr r2, _02004A54 @ =sub_02004C04
	cmp r1, #0
	beq _02004A58
	ldr r0, [r0]
	str r2, [r0, #8]
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	mov r3, r8
	ldrh r2, [r3]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	mov r7, sb
	ldrh r2, [r7]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	mov r0, sl
	ldrh r2, [r0]
	b _02004A9E
	.align 2, 0
_02004A38: .4byte 0x0000FFFD
_02004A3C: .4byte 0x00001F3F
_02004A40: .4byte gUnk_03002620
_02004A44: .4byte 0x000005F2
_02004A48: .4byte 0x0000FBFF
_02004A4C: .4byte gUnk_03000400
_02004A50: .4byte gUnk_03002560
_02004A54: .4byte sub_02004C04
_02004A58:
	ldr r0, [r0]
	str r2, [r0, #8]
	b _02004AC6
_02004A5E:
	ldr r0, _02004AB0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004AB4 @ =sub_02004C04
	str r0, [r1, #8]
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	mov r1, r8
	ldrh r2, [r1]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	mov r3, sb
	ldrh r2, [r3]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	mov r7, sl
	ldrh r2, [r7]
_02004A9E:
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	b _02004AC6
	.align 2, 0
_02004AB0: .4byte gUnk_03002560
_02004AB4: .4byte sub_02004C04
_02004AB8:
	adds r0, r4, #0
	bl sub_02004DF8
	ldr r0, _02004AEC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004AF0 @ =sub_02004F6C
	str r0, [r1, #8]
_02004AC6:
	adds r0, r4, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _02004AF4 @ =0x00001F3F
	cmp r1, r0
	bgt _02004ADA
	movs r0, #0
	bl sub_020068E0
_02004ADA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004AEC: .4byte gUnk_03002560
_02004AF0: .4byte sub_02004F6C
_02004AF4: .4byte 0x00001F3F

	thumb_func_start sub_02004AF8
sub_02004AF8: @ 0x02004AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _02004BC4 @ =gUnk_02011414
	ldr r1, _02004BC8 @ =0x0600E000
	ldr r4, _02004BCC @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _02004BD0 @ =gUnk_02011C14
	ldr r1, _02004BD4 @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	ldr r2, _02004BD8 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _02004BDC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _02004BE0 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _02004BE4 @ =0x00001C06
	strh r0, [r1]
	ldr r0, _02004BE8 @ =0x00001D06
	strh r0, [r1, #2]
	ldr r0, _02004BEC @ =gUnk_03002610
	movs r1, #8
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _02004BF0 @ =0x000005F2
	add r0, r8
	strh r2, [r0]
	movs r7, #0
_02004B46:
	movs r5, #0
	str r5, [sp]
	lsls r4, r7, #4
	adds r4, r4, r7
	lsls r4, r4, #2
	movs r6, #0x82
	lsls r6, r6, #3
	adds r1, r4, r6
	add r1, r8
	mov r0, sp
	ldr r2, _02004BF4 @ =0x05000011
	bl CpuSet
	add r4, r8
	adds r4, r4, r6
	ldr r0, _02004BF8 @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _02004BFC @ =gUnk_0200EC78
	ldrh r0, [r1, #4]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #6]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r1, _02004C00 @ =gUnk_0200EC90
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r1, [r4, #0x28]
	str r5, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	strh r2, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _02004B46
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004BC4: .4byte gUnk_02011414
_02004BC8: .4byte 0x0600E000
_02004BCC: .4byte 0x04000200
_02004BD0: .4byte gUnk_02011C14
_02004BD4: .4byte 0x0600E800
_02004BD8: .4byte gUnk_03002620
_02004BDC: .4byte 0x0000FBFF
_02004BE0: .4byte gUnk_03001E40
_02004BE4: .4byte 0x00001C06
_02004BE8: .4byte 0x00001D06
_02004BEC: .4byte gUnk_03002610
_02004BF0: .4byte 0x000005F2
_02004BF4: .4byte 0x05000011
_02004BF8: .4byte 0x06010000
_02004BFC: .4byte gUnk_0200EC78
_02004C00: .4byte gUnk_0200EC90

	thumb_func_start sub_02004C04
sub_02004C04: @ 0x02004C04
	push {r4, r5, r6, lr}
	ldr r0, _02004C20 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004C24
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004C28
	.align 2, 0
_02004C20: .4byte gUnk_03002560
_02004C24:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004C28:
	adds r0, r1, r0
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xdc
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02004CD8
	bl sub_02001FD8
	cmp r0, #0
	bne _02004CD8
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, _02004CB8 @ =0x00001F3F
	cmp r1, r0
	ble _02004CC0
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CD8
	ldr r0, _02004CBC @ =0x00000231
	bl m4aSongNumStart
	b _02004CCA
	.align 2, 0
_02004CB8: .4byte 0x00001F3F
_02004CBC: .4byte 0x00000231
_02004CC0:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001D68
_02004CCA:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_02004CD8:
	ldr r2, _02004D20 @ =0x000005F2
	adds r4, r5, r2
	ldrh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0x78
	ble _02004D44
	bl sub_02001FD8
	cmp r0, #0
	bne _02004D56
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	ldr r0, _02004D24 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _02004D28 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _02004D2C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _02004D30 @ =gUnk_03001E40
	ldr r0, _02004D34 @ =0x00001C02
	strh r0, [r1]
	ldr r0, _02004D38 @ =0x00001D02
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_02004DF8
	ldr r0, _02004D3C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004D40 @ =sub_02004F6C
	str r0, [r1, #8]
	b _02004D56
	.align 2, 0
_02004D20: .4byte 0x000005F2
_02004D24: .4byte 0x0000FFFD
_02004D28: .4byte gUnk_03002620
_02004D2C: .4byte 0x0000FBFF
_02004D30: .4byte gUnk_03001E40
_02004D34: .4byte 0x00001C02
_02004D38: .4byte 0x00001D02
_02004D3C: .4byte gUnk_03002560
_02004D40: .4byte sub_02004F6C
_02004D44:
	cmp r1, #0x78
	bne _02004D52
	movs r0, #0x10
	movs r1, #1
	bl sub_02001CD8
	ldrh r0, [r4]
_02004D52:
	adds r0, #1
	strh r0, [r4]
_02004D56:
	ldr r1, _02004DE4 @ =0x000005F2
	adds r4, r5, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x1e
	bne _02004D68
	ldr r0, _02004DE8 @ =0x00000231
	bl m4aSongNumStart
_02004D68:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	ble _02004DC8
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r4, _02004DEC @ =0x00001F3F
	cmp r0, r4
	ble _02004DD6
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_02001AC4
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	ble _02004D9A
	ldr r2, _02004DF0 @ =0x00000454
	adds r0, r5, r2
	bl sub_02001AC4
_02004D9A:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r4
	ble _02004DB2
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_02001AC4
_02004DB2:
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	ble _02004DC8
	ldr r2, _02004DF4 @ =0x000004DC
	adds r0, r5, r2
	bl sub_02001AC4
_02004DC8:
	adds r0, r5, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _02004DEC @ =0x00001F3F
	cmp r1, r0
	bgt _02004DDC
_02004DD6:
	movs r0, #0
	bl sub_020068E0
_02004DDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02004DE4: .4byte 0x000005F2
_02004DE8: .4byte 0x00000231
_02004DEC: .4byte 0x00001F3F
_02004DF0: .4byte 0x00000454
_02004DF4: .4byte 0x000004DC

	thumb_func_start sub_02004DF8
sub_02004DF8: @ 0x02004DF8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02004E6C @ =gUnk_0200F414
	ldr r1, _02004E70 @ =0x0600E000
	ldr r4, _02004E74 @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _02004E78 @ =gUnk_0200FC14
	ldr r1, _02004E7C @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	ldr r2, _02004E80 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _02004E84 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_02004E90
	adds r0, r5, #0
	adds r0, #0xf0
	movs r1, #1
	bl sub_02004E90
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #2
	bl sub_02004E90
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #3
	bl sub_02004E90
	ldr r0, _02004E88 @ =gUnk_03002610
	movs r3, #0
	movs r2, #8
	strh r2, [r0]
	movs r1, #0x58
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r0, _02004E8C @ =0x000005F2
	adds r1, r5, r0
	movs r0, #0x1e
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02004E6C: .4byte gUnk_0200F414
_02004E70: .4byte 0x0600E000
_02004E74: .4byte 0x04000200
_02004E78: .4byte gUnk_0200FC14
_02004E7C: .4byte 0x0600E800
_02004E80: .4byte gUnk_03002620
_02004E84: .4byte 0x0000FBFF
_02004E88: .4byte gUnk_03002610
_02004E8C: .4byte 0x000005F2

	thumb_func_start sub_02004E90
sub_02004E90: @ 0x02004E90
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _02004EEA
	adds r0, r4, #0
	movs r1, #4
	bl sub_02006D08
	cmp r5, #1
	beq _02004ECA
	cmp r5, #1
	bgt _02004EB6
	cmp r5, #0
	beq _02004EC0
	b _02004F2E
_02004EB6:
	cmp r5, #2
	beq _02004ED4
	cmp r5, #3
	beq _02004EDE
	b _02004F2E
_02004EC0:
	movs r0, #0x78
	str r0, [r4, #0x28]
	movs r0, #0x8a
	lsls r0, r0, #2
	b _02004F2C
_02004ECA:
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0xc0
	b _02004F2C
_02004ED4:
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	subs r0, #0x30
	b _02004F2C
_02004EDE:
	movs r0, #0xd2
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	movs r0, #0x8a
	lsls r0, r0, #2
	b _02004F2C
_02004EEA:
	adds r0, r4, #0
	movs r1, #3
	bl sub_02006D08
	cmp r5, #1
	beq _02004F0E
	cmp r5, #1
	bgt _02004F00
	cmp r5, #0
	beq _02004F0A
	b _02004F2E
_02004F00:
	cmp r5, #2
	beq _02004F18
	cmp r5, #3
	beq _02004F22
	b _02004F2E
_02004F0A:
	movs r0, #0x78
	b _02004F26
_02004F0E:
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x40
	b _02004F2C
_02004F18:
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	subs r0, #0xb0
	b _02004F2C
_02004F22:
	movs r0, #0xd2
	lsls r0, r0, #2
_02004F26:
	str r0, [r4, #0x28]
	movs r0, #0xd4
	lsls r0, r0, #1
_02004F2C:
	str r0, [r4, #0x2c]
_02004F2E:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #6
	strb r0, [r1]
	subs r1, #0x13
	movs r0, #2
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #0x12
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	cmp r5, #1
	beq _02004F5E
	cmp r5, #1
	bgt _02004F56
	cmp r5, #0
	beq _02004F5E
	b _02004F64
_02004F56:
	cmp r5, #2
	beq _02004F5E
	cmp r5, #3
	bne _02004F64
_02004F5E:
	movs r0, #0x92
	lsls r0, r0, #2
	str r0, [r4, #0x70]
_02004F64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004F6C
sub_02004F6C: @ 0x02004F6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _02004F8C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004F90
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004F94
	.align 2, 0
_02004F8C: .4byte gUnk_03002560
_02004F90:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004F94:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_02001FD8
	cmp r0, #0
	bne _02005004
	movs r0, #8
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CD8
	ldr r0, _02005024 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02005028 @ =sub_02005140
	str r0, [r1, #8]
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x78
	movs r1, #4
	bl sub_02007394
	adds r1, r4, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r1, #4
	bl sub_02007394
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #4
	bl sub_02007394
	movs r2, #0x8b
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #2
	movs r1, #4
	bl sub_02007394
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
_02005004:
	adds r5, r4, #0
	adds r5, #0xec
	ldrb r0, [r5]
	cmp r0, #0
	bne _02005038
	adds r0, r4, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0200502C @ =0x00001F3F
	cmp r1, r0
	ble _02005030
	movs r0, #0x22
	bl m4aSongNumStart
	b _0200503E
	.align 2, 0
_02005024: .4byte gUnk_03002560
_02005028: .4byte sub_02005140
_0200502C: .4byte 0x00001F3F
_02005030:
	movs r0, #0x13
	bl m4aSongNumStart
	b _0200503E
_02005038:
	movs r0, #0x20
	bl m4aSongNumStart
_0200503E:
	adds r0, r4, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	ldrb r2, [r5]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_020069EC
	movs r2, #0xce
	lsls r2, r2, #1
	adds r6, r4, r2
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_020069EC
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r4, r0
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_020069EC
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r1, r1, r4
	mov r8, r1
	ldrb r2, [r1]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_020069EC
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_02001AC4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02001AC4
	ldrb r0, [r5]
	cmp r0, #0
	bne _02005102
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_02001AC4
_02005102:
	ldrb r0, [r6]
	cmp r0, #0
	bne _02005112
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_02001AC4
_02005112:
	ldrb r0, [r7]
	cmp r0, #0
	bne _02005122
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
_02005122:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _02005134
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_02001AC4
_02005134:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005140
sub_02005140: @ 0x02005140
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _02005160 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005164
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005168
	.align 2, 0
_02005160: .4byte gUnk_03002560
_02005164:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005168:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_02001FD8
	cmp r0, #0
	bne _0200524E
	ldr r2, [r5, #4]
	cmp r2, #0
	bne _020051BA
	ldr r0, _02005198 @ =gUnk_03000470
	ldrh r0, [r0, #0x10]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0200524E
	ldr r0, _0200519C @ =gUnk_03000428
	ldrb r0, [r0]
	ldr r1, _020051A0 @ =gUnk_0200E790
	cmp r0, #0
	beq _020051A4
	movs r0, #0x32
	str r0, [sp]
	str r3, [sp, #4]
	b _020051AA
	.align 2, 0
_02005198: .4byte gUnk_03000470
_0200519C: .4byte gUnk_03000428
_020051A0: .4byte gUnk_0200E790
_020051A4:
	movs r0, #0x32
	str r0, [sp]
	str r2, [sp, #4]
_020051AA:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_020021D4
	str r0, [r5, #4]
	b _0200524E
_020051BA:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020051CE
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020051D2
_020051CE:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020051D2:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_020033DC
	cmp r0, #0
	beq _0200524E
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl sub_0200A8B8
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_0200A8B8
	movs r2, #0x8b
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_0200A8B8
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_0200A8B8
	movs r0, #4
	movs r1, #1
	bl sub_02001CD8
	ldr r2, _02005238 @ =0x000002AD
	adds r0, r4, r2
	ldrb r1, [r0]
	ldr r2, _0200523C @ =0x000005F4
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _02005240 @ =gUnk_03002560
	cmp r0, #0
	beq _02005248
	ldr r1, [r1]
	ldr r0, _02005244 @ =sub_02005358
	b _0200524C
	.align 2, 0
_02005238: .4byte 0x000002AD
_0200523C: .4byte 0x000005F4
_02005240: .4byte gUnk_03002560
_02005244: .4byte sub_02005358
_02005248:
	ldr r1, [r1]
	ldr r0, _02005354 @ =sub_020054AC
_0200524C:
	str r0, [r1, #8]
_0200524E:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_020069EC
	movs r0, #0xce
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_020069EC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r7, r5, r1
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_020069EC
	movs r2, #0xbf
	lsls r2, r2, #2
	adds r2, r2, r5
	mov r8, r2
	ldrb r2, [r2]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_020069EC
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_02001AC4
	ldrb r0, [r4]
	cmp r0, #0
	bne _02005316
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_02001AC4
_02005316:
	ldrb r0, [r6]
	cmp r0, #0
	bne _02005326
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
_02005326:
	ldrb r0, [r7]
	cmp r0, #0
	bne _02005336
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_02001AC4
_02005336:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _02005348
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_02001AC4
_02005348:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005354: .4byte sub_020054AC

	thumb_func_start sub_02005358
sub_02005358: @ 0x02005358
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _02005378 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200537C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005380
	.align 2, 0
_02005378: .4byte gUnk_03002560
_0200537C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005380:
	adds r5, r1, r0
	bl sub_02001FD8
	adds r4, r0, #0
	cmp r4, #0
	bne _020053A0
	bl m4aMPlayAllStop
	ldr r0, _020054A4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020054A8 @ =sub_02003860
	str r0, [r1, #8]
	ldr r0, [r5, #4]
	bl sub_0200A8B8
	str r4, [r5, #4]
_020053A0:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_020069EC
	movs r0, #0xce
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_020069EC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r7, r5, r1
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_020069EC
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	ldrb r2, [r0]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_020069EC
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_02001AC4
	ldrb r0, [r4]
	cmp r0, #0
	bne _02005468
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_02001AC4
_02005468:
	ldrb r0, [r6]
	cmp r0, #0
	bne _02005478
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
_02005478:
	ldrb r0, [r7]
	cmp r0, #0
	bne _02005488
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
_02005488:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0200549A
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_02001AC4
_0200549A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020054A4: .4byte gUnk_03002560
_020054A8: .4byte sub_02003860

	thumb_func_start sub_020054AC
sub_020054AC: @ 0x020054AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _020054CC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020054D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020054D4
	.align 2, 0
_020054CC: .4byte gUnk_03002560
_020054D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020054D4:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_02001FD8
	adds r4, r0, #0
	cmp r4, #0
	bne _02005536
	ldr r0, [r5, #4]
	bl sub_0200A8B8
	str r4, [r5, #4]
	ldr r0, _0200563C @ =gUnk_03000400
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _02005500
	ldr r2, _02005640 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _02005644 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_02005500:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_02001CD8
	ldr r2, _02005648 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0200564C @ =gUnk_03002610
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r1, _02005650 @ =gUnk_03001E40
	ldr r0, _02005654 @ =0x00001E01
	strh r0, [r1, #4]
	ldr r0, _02005658 @ =gUnk_02012414
	ldr r1, _0200565C @ =0x0600F000
	ldr r2, _02005660 @ =0x04000140
	bl CpuSet
	ldr r0, _02005664 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02005668 @ =sub_0200566C
	str r0, [r1, #8]
_02005536:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_020069EC
	movs r3, #0xce
	lsls r3, r3, #1
	adds r6, r5, r3
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_020069EC
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r5, r0
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_020069EC
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r1, r1, r5
	mov r8, r1
	ldrb r2, [r1]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_020069EC
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_02001AC4
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r0, r5, r3
	bl sub_02001AC4
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_02001AC4
	ldrb r0, [r4]
	cmp r0, #0
	bne _020055FE
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_02001AC4
_020055FE:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0200560E
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r5, r3
	bl sub_02001AC4
_0200560E:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0200561E
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
_0200561E:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _02005630
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_02001AC4
_02005630:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200563C: .4byte gUnk_03000400
_02005640: .4byte gUnk_03000470
_02005644: .4byte 0x0000FFFD
_02005648: .4byte gUnk_03002620
_0200564C: .4byte gUnk_03002610
_02005650: .4byte gUnk_03001E40
_02005654: .4byte 0x00001E01
_02005658: .4byte gUnk_02012414
_0200565C: .4byte 0x0600F000
_02005660: .4byte 0x04000140
_02005664: .4byte gUnk_03002560
_02005668: .4byte sub_0200566C

	thumb_func_start sub_0200566C
sub_0200566C: @ 0x0200566C
	push {lr}
	bl sub_02001FD8
	cmp r0, #0
	bne _0200567A
	bl sub_0200036C
_0200567A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005680
sub_02005680: @ 0x02005680
	push {lr}
	ldr r3, _0200569C @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020056A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020056A4
	.align 2, 0
_0200569C: .4byte gUnk_03002560
_020056A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020056A4:
	adds r0, r1, r0
	ldr r1, _020056C4 @ =0x000005F6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _020056BE
	ldr r0, [r3]
	bl sub_0200A8B8
_020056BE:
	pop {r0}
	bx r0
	.align 2, 0
_020056C4: .4byte 0x000005F6

	thumb_func_start sub_020056C8
sub_020056C8: @ 0x020056C8
	push {r4, r5, lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _020056E0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _020056E6
_020056E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
_020056E6:
	ldr r0, [r5, #0x14]
	bl sub_0200A8B8
	movs r4, #0
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl sub_0200A8B8
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl sub_0200A8B8
	str r4, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	bl sub_0200A8B8
	str r4, [r5, #0x20]
	ldr r0, [r5, #0x24]
	bl sub_0200A8B8
	str r4, [r5, #0x24]
	ldr r0, [r5, #0x28]
	bl sub_0200A8B8
	str r4, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	bl sub_0200A8B8
	str r4, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	bl sub_0200A8B8
	str r4, [r5, #0x30]
	ldr r0, [r5, #0x34]
	bl sub_0200A8B8
	str r4, [r5, #0x34]
	ldr r0, [r5, #0x38]
	bl sub_0200A8B8
	str r4, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005740
sub_02005740: @ 0x02005740
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	ldr r2, _0200578C @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _02005790 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02005794 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #0xf
	ands r2, r0
	adds r4, r3, #0
	adds r4, #0x90
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0200579C
	adds r0, r3, #0
	adds r0, #0x9e
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, #0xad
	ldrb r1, [r3]
	cmp r0, r1
	bne _020057AA
	ldr r0, _02005798 @ =gUnk_0200EDC0
	lsls r1, r5, #4
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r3]
	movs r6, #1
	b _020057AA
	.align 2, 0
_0200578C: .4byte gUnk_03005868
_02005790: .4byte 0x00196225
_02005794: .4byte 0x3C6EF35F
_02005798: .4byte gUnk_0200EDC0
_0200579C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _020057AA
	ldr r0, _020057B4 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r4]
_020057AA:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_020057B4: .4byte 0x0000FFDF

	thumb_func_start sub_020057B8
sub_020057B8: @ 0x020057B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r3, #0
_020057C8:
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r3
	ldrb r0, [r0]
	mov ip, r0
	movs r0, #0xb0
	adds r4, r3, #0
	muls r4, r0, r4
	adds r2, r7, r4
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	adds r6, #0xd6
	adds r5, r2, #0
	adds r5, #0xd8
	movs r1, #0xd4
	adds r1, r1, r2
	mov r8, r1
	adds r2, #0xda
	mov sb, r2
	adds r3, #1
	str r3, [sp]
	cmp r0, #0
	beq _02005830
	ldrh r0, [r6]
	movs r2, #0
	mov sl, r2
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r7, r0
	ldr r3, _0200582C @ =0x000005F4
	adds r1, r7, r3
	ldrb r1, [r1]
	bl sub_02005740
	strh r0, [r6]
	ldrh r1, [r5]
	eors r1, r0
	ands r1, r0
	mov r0, r8
	strh r1, [r0]
	mov r2, sl
	mov r1, sb
	strh r2, [r1]
	b _0200585C
	.align 2, 0
_0200582C: .4byte 0x000005F4
_02005830:
	ldrh r0, [r6]
	strh r0, [r5]
	ldr r2, _02005878 @ =gUnk_03000470
	mov r3, ip
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
_0200585C:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _020057C8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005878: .4byte gUnk_03000470

	thumb_func_start sub_0200587C
sub_0200587C: @ 0x0200587C
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x92
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _020058A4
	subs r0, #1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _02005920
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _02005920
_020058A4:
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020058EA
	adds r2, r3, #0
	adds r2, #0x9c
	adds r0, r3, #0
	adds r0, #0x9e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc8
	lsls r1, r1, #3
	cmp r0, r1
	ble _020058D8
	strh r1, [r2]
_020058D8:
	movs r0, #0x2d
	mov r4, ip
	strb r0, [r4]
	adds r2, r3, #0
	adds r2, #0xa6
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
_020058EA:
	adds r2, r3, #0
	adds r2, #0xa6
	ldrh r1, [r2]
	movs r4, #1
	movs r0, #1
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x9e
	cmp r0, #0
	beq _0200590C
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _02005920
	b _0200591A
_0200590C:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _02005920
_0200591A:
	ldrh r0, [r2]
	eors r0, r4
	strh r0, [r2]
_02005920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005928
sub_02005928: @ 0x02005928
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0xa6
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _020059D0
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020059D0
	adds r0, r4, #0
	bl sub_02004814
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _02005968
	ldr r0, _02005964 @ =0x00000229
	bl m4aSongNumStart
	b _02005970
	.align 2, 0
_02005964: .4byte 0x00000229
_02005968:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl m4aSongNumStart
_02005970:
	movs r0, #0xb3
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	ldr r0, _020059AC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	movs r0, #4
	orrs r0, r1
	ldr r1, _020059B0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6]
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, _020059B4 @ =0x000005D4
	adds r1, r5, r2
	ldr r2, [r0]
	ldr r0, [r1]
	ldr r3, _020059B8 @ =gUnk_0200ED00
	cmp r2, r0
	beq _020059C0
	ldr r0, _020059BC @ =0x00000564
	adds r1, r5, r0
	ldrh r0, [r3, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1a]
	b _020059CA
	.align 2, 0
_020059AC: .4byte 0x0000F7FF
_020059B0: .4byte 0x0000FFFD
_020059B4: .4byte 0x000005D4
_020059B8: .4byte gUnk_0200ED00
_020059BC: .4byte 0x00000564
_020059C0:
	ldr r2, _020059D8 @ =0x00000564
	adds r1, r5, r2
	ldrh r0, [r3, #0x1c]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1e]
_020059CA:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_020059D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020059D8: .4byte 0x00000564

	thumb_func_start sub_020059DC
sub_020059DC: @ 0x020059DC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xa6
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005A0E
	adds r0, r2, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005A0E
	adds r0, r2, #0
	bl sub_02004814
	ldrh r0, [r4]
	movs r1, #4
	orrs r1, r0
	ldr r0, _02005A14 @ =0x0000FFFD
	ands r1, r0
	strh r1, [r4]
_02005A0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005A14: .4byte 0x0000FFFD

	thumb_func_start sub_02005A18
sub_02005A18: @ 0x02005A18
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _02005A94 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _02005A98 @ =0x00001E0D
	strh r0, [r1, #4]
	ldr r1, _02005A9C @ =gUnk_03002610
	strh r2, [r1, #8]
	ldr r0, _02005AA0 @ =0x0000FFBA
	strh r0, [r1, #0xa]
	ldr r2, _02005AA4 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x90
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _02005AA8 @ =gUnk_03001E00
	ldr r0, _02005AAC @ =0x00001018
	strh r0, [r1]
	adds r0, #0x20
	strh r0, [r1, #4]
	movs r0, #4
	strh r0, [r1, #8]
	movs r0, #0x3b
	strh r0, [r1, #0xa]
	ldr r0, _02005AB0 @ =0x22222222
	str r0, [sp]
	ldr r1, _02005AB4 @ =0x0600C000
	ldr r4, _02005AB8 @ =0x05000008
	mov r0, sp
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _02005ABC @ =0x11111111
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _02005AC0 @ =0x0600C020
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _02005AC4 @ =0xF001F001
	str r0, [sp, #8]
	ldr r1, _02005AC8 @ =0x040000D4
	add r3, sp, #8
	str r3, [r1]
	ldr r0, _02005ACC @ =0x0600F000
	str r0, [r1, #4]
	ldr r2, _02005AD0 @ =0x85000100
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _02005AD4 @ =0xF000F000
	str r0, [sp, #8]
	str r3, [r1]
	ldr r0, _02005AD8 @ =0x0600F400
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005A94: .4byte gUnk_03001E40
_02005A98: .4byte 0x00001E0D
_02005A9C: .4byte gUnk_03002610
_02005AA0: .4byte 0x0000FFBA
_02005AA4: .4byte gUnk_03002620
_02005AA8: .4byte gUnk_03001E00
_02005AAC: .4byte 0x00001018
_02005AB0: .4byte 0x22222222
_02005AB4: .4byte 0x0600C000
_02005AB8: .4byte 0x05000008
_02005ABC: .4byte 0x11111111
_02005AC0: .4byte 0x0600C020
_02005AC4: .4byte 0xF001F001
_02005AC8: .4byte 0x040000D4
_02005ACC: .4byte 0x0600F000
_02005AD0: .4byte 0x85000100
_02005AD4: .4byte 0xF000F000
_02005AD8: .4byte 0x0600F400

	thumb_func_start sub_02005ADC
sub_02005ADC: @ 0x02005ADC
	push {lr}
	sub sp, #4
	ldr r2, _02005B1C @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _02005B20 @ =0x0000DBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _02005B24 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _02005B28 @ =0x00001E01
	strh r0, [r1, #4]
	ldr r0, _02005B2C @ =gUnk_03002610
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	str r2, [sp]
	ldr r1, _02005B30 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02005B34 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _02005B38 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	ldr r1, _02005B3C @ =gUnk_03001E00
	ldr r2, _02005B40 @ =0x05000001
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02005B1C: .4byte gUnk_03002620
_02005B20: .4byte 0x0000DBFF
_02005B24: .4byte gUnk_03001E40
_02005B28: .4byte 0x00001E01
_02005B2C: .4byte gUnk_03002610
_02005B30: .4byte 0x040000D4
_02005B34: .4byte 0x0600F000
_02005B38: .4byte 0x85000200
_02005B3C: .4byte gUnk_03001E00
_02005B40: .4byte 0x05000001

	thumb_func_start sub_02005B44
sub_02005B44: @ 0x02005B44
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x10
	bls _02005B60
	movs r4, #0x10
_02005B60:
	ldr r0, _02005BA0 @ =gUnk_03002610
	lsls r1, r5, #0x10
	asrs r3, r1, #0x10
	adds r1, r3, #0
	subs r1, #0x38
	strh r1, [r0, #0xa]
	cmp r3, #0x27
	ble _02005B72
	movs r4, #0x11
_02005B72:
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005BB4
	adds r2, r6, #0
	adds r2, #0xa6
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02005BB4
	ldr r0, _02005BA4 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0x27
	ble _02005BAC
	ldr r0, _02005BA8 @ =0x00000229
	bl m4aSongNumStart
	b _02005BB4
	.align 2, 0
_02005BA0: .4byte gUnk_03002610
_02005BA4: .4byte 0x0000FFEF
_02005BA8: .4byte 0x00000229
_02005BAC:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl m4aSongNumStart
_02005BB4:
	ldr r2, _02005BD8 @ =0x040000D4
	lsls r0, r4, #1
	ldr r1, _02005BDC @ =gUnk_0200F1F0
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _02005BE0 @ =gUnk_03002912
	str r0, [r2, #4]
	ldr r0, _02005BE4 @ =0x80000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _02005BE8 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02005BD8: .4byte 0x040000D4
_02005BDC: .4byte gUnk_0200F1F0
_02005BE0: .4byte gUnk_03002912
_02005BE4: .4byte 0x80000001
_02005BE8: .4byte gUnk_030013D0

	thumb_func_start sub_02005BEC
sub_02005BEC: @ 0x02005BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	ldr r0, _02005C2C @ =sub_02005D8C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl sub_0200A79C
	mov sb, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov r2, sb
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005C30
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005C34
	.align 2, 0
_02005C2C: .4byte sub_02005D8C
_02005C30:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005C34:
	adds r0, r1, r0
	adds r4, r0, #0
	mov r0, sl
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r6, #0
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r4, #0x48]
	str r6, [r4, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	adds r7, r4, #0
	adds r7, #0x20
	movs r2, #0x23
	adds r2, r2, r4
	mov r8, r2
	ldr r0, [sp, #8]
	subs r0, #2
	str r0, [sp, #0xc]
	adds r2, r4, #0
	adds r2, #0x58
	str r2, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _02005CF0
	str r6, [sp, #4]
	ldr r2, _02005CE4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005CE8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r1, _02005CEC @ =gUnk_0200EA38
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x10]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #5
	mov r1, r8
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
	b _02005D46
	.align 2, 0
_02005CE4: .4byte 0x05000011
_02005CE8: .4byte 0x06010000
_02005CEC: .4byte gUnk_0200EA38
_02005CF0:
	str r5, [sp, #4]
	ldr r2, _02005D80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005D84 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r1, _02005D88 @ =gUnk_0200EA38
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x10]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #5
	mov r2, r8
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
_02005D46:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _02005D5E
	ldrh r1, [r4, #0x38]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x38]
_02005D5E:
	mov r0, sl
	str r0, [r4, #0x54]
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02005D80: .4byte 0x05000011
_02005D84: .4byte 0x06010000
_02005D88: .4byte gUnk_0200EA38

	thumb_func_start sub_02005D8C
sub_02005D8C: @ 0x02005D8C
	push {r4, lr}
	ldr r0, _02005DA8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005DAC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005DB0
	.align 2, 0
_02005DA8: .4byte gUnk_03002560
_02005DAC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005DB0:
	adds r0, r1, r0
	adds r3, r0, #0
	ldr r0, [r3, #0x54]
	adds r0, #0x9c
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _02005DD4 @ =0x000005DB
	cmp r1, r0
	ble _02005DD8
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r4, #2
	b _02005DF2
	.align 2, 0
_02005DD4: .4byte 0x000005DB
_02005DD8:
	ldr r0, _02005DE4 @ =0x000003E7
	cmp r1, r0
	ble _02005DE8
	movs r4, #2
	b _02005DF2
	.align 2, 0
_02005DE4: .4byte 0x000003E7
_02005DE8:
	ldr r0, _02005E4C @ =0x000001F3
	movs r4, #0
	cmp r1, r0
	ble _02005DF2
	movs r4, #1
_02005DF2:
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005E54
	ldrh r1, [r3, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02005E8A
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x38]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xfe
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r2, _02005E50 @ =gUnk_0200EA38
	adds r1, r3, #0
	adds r1, #0x58
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	strh r0, [r3, #0x10]
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	strb r0, [r3, #0x1e]
	movs r0, #0xff
	strb r0, [r3, #0x1f]
	b _02005E8A
	.align 2, 0
_02005E4C: .4byte 0x000001F3
_02005E50: .4byte gUnk_0200EA38
_02005E54:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r0, [r2]
	cmp r0, r4
	bhs _02005E8A
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r4, [r2]
	ldr r1, _02005E98 @ =gUnk_0200EA38
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	strh r0, [r3, #0x10]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	strb r0, [r3, #0x1e]
	movs r0, #0xff
	strb r0, [r3, #0x1f]
	ldrh r1, [r3, #0x38]
	ldr r0, _02005E9C @ =0x0000F7FF
	ands r0, r1
	strh r0, [r3, #0x38]
_02005E8A:
	adds r0, r3, #0
	bl sub_02001C1C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005E98: .4byte gUnk_0200EA38
_02005E9C: .4byte 0x0000F7FF

	thumb_func_start sub_02005EA0
sub_02005EA0: @ 0x02005EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r0, _02005EF8 @ =sub_020062A4
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _02005EFC @ =nullsub_04
	str r3, [sp]
	movs r3, #0
	bl sub_0200A79C
	str r0, [sp, #0x24]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x24]
	ldrh r4, [r0, #6]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x2c]
	adds r0, #4
	str r0, [sp, #0x30]
	adds r0, #4
	str r0, [sp, #0x34]
	adds r0, #4
	str r0, [sp, #0x38]
	adds r0, #4
	str r0, [sp, #0x3c]
	adds r0, #4
	str r0, [sp, #0x40]
	adds r0, #4
	str r0, [sp, #0x44]
	cmp r1, #0
	beq _02005F00
	lsls r1, r4, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _02005F06
	.align 2, 0
_02005EF8: .4byte sub_020062A4
_02005EFC: .4byte nullsub_04
_02005F00:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
_02005F06:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r7, r1
	movs r5, #0
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0200628C @ =0x00000111
	adds r0, r0, r7
	mov sl, r0
	strb r5, [r0]
	adds r1, #2
	adds r1, r7, r1
	str r1, [sp, #0x28]
	strb r5, [r1]
	ldr r1, _02006290 @ =0x00000113
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r0, _02006298 @ =0x06010000
	str r0, [r7]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r7, #0x14]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	ldr r1, _0200629C @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r0, [r0, #0x30]
	strh r0, [r7, #0xc]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0xc
	strb r1, [r7, #0x1f]
	movs r0, #0x68
	strh r0, [r7, #0x10]
	movs r0, #0x10
	strh r0, [r7, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r7, #8]
	movs r6, #0xd0
	lsls r6, r6, #1
	str r6, [r7, #0x28]
	movs r0, #0x40
	str r0, [r7, #0x2c]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	movs r1, #0x10
	strh r1, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r5, [sp, #8]
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [sp, #0x2c]
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r0, _02006298 @ =0x06010000
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _0200629C @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _0200629C @ =gUnk_0200EAC8
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x5e
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
	movs r1, #0xc
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0x74
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x56
	movs r1, #0x10
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x4c]
	movs r0, #0xe8
	lsls r0, r0, #1
	str r0, [r7, #0x6c]
	movs r1, #0x40
	str r1, [r7, #0x70]
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
	str r5, [sp, #0xc]
	adds r4, r7, #0
	adds r4, #0x88
	ldr r0, [sp, #0x30]
	adds r1, r4, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r0, _02006298 @ =0x06010000
	str r0, [r4]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	ldr r0, _0200629C @ =gUnk_0200EAC8
	adds r0, #0x58
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, _0200629C @ =gUnk_0200EAC8
	adds r0, #0x5a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xc
	strb r1, [r4, #0x1f]
	movs r0, #0x7e
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x10]
	adds r4, #0x44
	ldr r0, [sp, #0x34]
	adds r1, r4, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r0, _02006298 @ =0x06010000
	str r0, [r4]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _0200629C @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _0200629C @ =gUnk_0200EAC8
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xc
	strb r1, [r4, #0x1f]
	movs r0, #0x8c
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0x8c
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x14]
	adds r0, #0xd8
	adds r4, r7, r0
	ldr r0, [sp, #0x38]
	adds r1, r4, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r1, _02006298 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _020062A0 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x1c]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x1e]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x7a
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xf4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	movs r0, #0x40
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
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [sp, #0x3c]
	adds r1, r4, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r1, _02006298 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _020062A0 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x10
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0x40
	str r0, [r4, #0x28]
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
	movs r0, #0xae
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [sp, #0x40]
	adds r1, r4, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r1, _02006298 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _020062A0 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x30
	strh r0, [r4, #0x10]
	movs r0, #0x12
	mov r8, r0
	mov r1, r8
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xc0
	str r0, [r4, #0x28]
	movs r1, #0x48
	mov sb, r1
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x20]
	adds r6, r7, r6
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	ldr r2, _02006294 @ =0x05000011
	bl CpuSet
	ldr r0, _02006298 @ =0x06010000
	str r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	ldr r1, _020062A0 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #0xb
	strb r1, [r6, #0x1f]
	movs r0, #0x20
	strh r0, [r6, #0x10]
	mov r0, r8
	strh r0, [r6, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r6, #8]
	movs r0, #0x80
	str r0, [r6, #0x28]
	mov r0, sb
	str r0, [r6, #0x2c]
	strh r5, [r6, #0x30]
	strh r5, [r6, #0x32]
	movs r1, #0x10
	strh r1, [r6, #0x34]
	strh r5, [r6, #0x36]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	ldr r0, [sp, #0x24]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200628C: .4byte 0x00000111
_02006290: .4byte 0x00000113
_02006294: .4byte 0x05000011
_02006298: .4byte 0x06010000
_0200629C: .4byte gUnk_0200EAC8
_020062A0: .4byte gUnk_0200EBE8

	thumb_func_start sub_020062A4
sub_020062A4: @ 0x020062A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _020062C8 @ =gUnk_03002560
	mov r8, r0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r7, _020062CC @ =gUnk_0200EAC8
	cmp r0, #0
	beq _020062D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020062D4
	.align 2, 0
_020062C8: .4byte gUnk_03002560
_020062CC: .4byte gUnk_0200EAC8
_020062D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020062D4:
	adds r0, r1, r0
	adds r5, r0, #0
	ldr r1, _0200640C @ =0x00000113
	adds r1, r1, r5
	mov ip, r1
	ldrb r0, [r1]
	adds r1, r0, #1
	mov r2, ip
	strb r1, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _02006340
	movs r6, #0
	strb r6, [r2]
	movs r0, #0x89
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _02006340
	movs r2, #9
	strb r2, [r4]
	ldr r1, _02006410 @ =0x00000111
	adds r3, r5, r1
	ldrb r0, [r3]
	subs r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _02006340
	strb r2, [r3]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _02006340
	strb r6, [r2]
	strb r6, [r3]
	strb r6, [r4]
	movs r0, #0xa
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _02006414 @ =sub_02006418
	str r0, [r1, #8]
_02006340:
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	strh r0, [r5, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, _02006410 @ =0x00000111
	adds r2, r5, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0, #0x30]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xcc
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0x44
	bl sub_02001AC4
	adds r0, r5, #0
	adds r0, #0x88
	bl sub_02001AC4
	adds r0, r4, #0
	bl sub_02001AC4
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_02001AC4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_02001AC4
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_02001AC4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200640C: .4byte 0x00000113
_02006410: .4byte 0x00000111
_02006414: .4byte sub_02006418

	thumb_func_start sub_02006418
sub_02006418: @ 0x02006418
	push {r4, lr}
	ldr r0, _02006434 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02006438
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200643C
	.align 2, 0
_02006434: .4byte gUnk_03002560
_02006438:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200643C:
	adds r4, r1, r0
	ldr r0, _02006498 @ =0x00000113
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bne _02006460
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_02006460:
	adds r0, r4, #0
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_02001AC4
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_02001AC4
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_02001AC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006498: .4byte 0x00000113

	thumb_func_start sub_0200649C
sub_0200649C: @ 0x0200649C
	push {lr}
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _020064B2
	movs r0, #0
	b _020064B4
_020064B2:
	movs r0, #1
_020064B4:
	pop {r1}
	bx r1

	thumb_func_start nullsub_04
nullsub_04: @ 0x020064B8
	bx lr
	.align 2, 0

	thumb_func_start sub_020064BC
sub_020064BC: @ 0x020064BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	ldr r0, _0200651C @ =sub_02006594
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _02006520 @ =nullsub_05
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl sub_0200A79C
	adds r7, r0, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r7, #6]
	mov r2, sb
	lsls r3, r2, #0x10
	mov r2, r8
	lsls r4, r2, #0x10
	lsls r2, r6, #0x10
	mov ip, r2
	lsls r2, r5, #0x10
	mov sl, r2
	cmp r0, #0
	beq _02006524
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006528
	.align 2, 0
_0200651C: .4byte sub_02006594
_02006520: .4byte nullsub_05
_02006524:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006528:
	adds r2, r1, r0
	mov r1, sb
	cmp r3, r4
	bge _02006532
	mov r1, r8
_02006532:
	lsls r0, r1, #0x10
	cmp r0, ip
	bge _0200653A
	adds r1, r6, #0
_0200653A:
	lsls r0, r1, #0x10
	cmp r0, sl
	bge _02006542
	adds r1, r5, #0
_02006542:
	movs r4, #0
	movs r0, #0
	subs r1, #0x78
	strh r1, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	adds r3, r2, #0
	adds r3, #0x26
	movs r1, #1
	strb r1, [r3]
	strh r0, [r2, #0x28]
	strh r5, [r2]
	strh r0, [r2, #2]
	strb r4, [r2, #4]
	strh r6, [r2, #8]
	strh r0, [r2, #0xa]
	strb r4, [r2, #0xc]
	mov r1, r8
	strh r1, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r4, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0x18]
	strh r0, [r2, #0x1a]
	strb r4, [r2, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02006582
	ldrh r0, [r2, #0x24]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x24]
_02006582:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02006594
sub_02006594: @ 0x02006594
	push {r4, r5, r6, lr}
	ldr r0, _020065B0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020065B4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020065B8
	.align 2, 0
_020065B0: .4byte gUnk_03002560
_020065B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020065B8:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r2, #0x22
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	asrs r0, r0, #6
	adds r5, r4, #0
	adds r5, #0x26
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _020065E8 @ =gUnk_03002620
	ldr r3, _020065EC @ =gUnk_03002610
	cmp r0, #0x10
	ble _020065F4
	movs r0, #0x10
	strb r0, [r5]
	ldrh r1, [r2]
	ldr r0, _020065F0 @ =0x0000FEFF
	ands r0, r1
	b _020065FE
	.align 2, 0
_020065E8: .4byte gUnk_03002620
_020065EC: .4byte gUnk_03002610
_020065F0: .4byte 0x0000FEFF
_020065F4:
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	orrs r0, r1
_020065FE:
	strh r0, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _02006622
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _0200661A
	movs r0, #1
	strb r0, [r5]
	b _02006622
_0200661A:
	ldrh r1, [r4, #0x24]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x24]
_02006622:
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r6, [r3, #2]
	adds r0, r0, r6
	strh r0, [r3, #2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	strh r0, [r3, #6]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r2, [r4, #0x22]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r6, [r3, #0xa]
	adds r0, r0, r6
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _020066F4
	movs r0, #0
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _02006684
	ldr r0, _02006674 @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200667C
	ldr r0, _02006678 @ =0x00000231
	bl m4aSongNumStart
	b _02006684
	.align 2, 0
_02006674: .4byte gUnk_03002620
_02006678: .4byte 0x00000231
_0200667C:
	movs r0, #0x8c
	lsls r0, r0, #2
	bl m4aSongNumStart
_02006684:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0200669E
	movs r0, #0x14
	strb r0, [r4, #4]
	b _020066A0
_0200669E:
	strb r1, [r4, #4]
_020066A0:
	movs r6, #8
	ldrsh r0, [r4, r6]
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _020066BA
	movs r0, #0x14
	strb r0, [r4, #0xc]
	b _020066BC
_020066BA:
	strb r1, [r4, #0xc]
_020066BC:
	movs r6, #0x10
	ldrsh r0, [r4, r6]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _020066D6
	movs r0, #0x14
	strb r0, [r4, #0x14]
	b _020066D8
_020066D6:
	strb r1, [r4, #0x14]
_020066D8:
	movs r6, #0x18
	ldrsh r0, [r4, r6]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _020066F2
	movs r0, #0x14
	strb r0, [r4, #0x1c]
	b _020066F4
_020066F2:
	strb r1, [r4, #0x1c]
_020066F4:
	ldrb r0, [r5]
	bl sub_020068E0
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _02006714
	movs r0, #0
	strb r0, [r4, #4]
	ldrh r0, [r4]
	b _02006718
_02006714:
	ldrh r0, [r4, #2]
	adds r0, r0, r2
_02006718:
	strh r0, [r4, #2]
	movs r6, #8
	ldrsh r1, [r4, r6]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _02006734
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	b _02006738
_02006734:
	ldrh r0, [r4, #0xa]
	adds r0, r0, r2
_02006738:
	strh r0, [r4, #0xa]
	movs r6, #0x10
	ldrsh r1, [r4, r6]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _02006754
	movs r0, #0
	strb r0, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	b _02006758
_02006754:
	ldrh r0, [r4, #0x12]
	adds r0, r0, r2
_02006758:
	strh r0, [r4, #0x12]
	movs r6, #0x18
	ldrsh r1, [r4, r6]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _02006774
	movs r0, #0
	strb r0, [r4, #0x1c]
	ldrh r0, [r4, #0x18]
	b _02006778
_02006774:
	ldrh r0, [r4, #0x1a]
	adds r0, r0, r2
_02006778:
	strh r0, [r4, #0x1a]
	ldr r0, _020067EC @ =gUnk_03000730
	str r4, [r0]
	ldr r3, _020067F0 @ =gUnk_03001400
	ldr r2, _020067F4 @ =gUnk_03005000
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _020067F8 @ =sub_020069B4
	str r1, [r0]
	ldr r2, _020067FC @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r6, #2
	ldrsh r2, [r4, r6]
	movs r0, #0xa
	bl sub_02006A98
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r6, #0x1a
	ldrsh r2, [r4, r6]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	ldrh r1, [r4, #0x24]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020067E4
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _020067E4
	ldr r0, _02006800 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02006804 @ =sub_02006808
	str r0, [r1, #8]
_020067E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020067EC: .4byte gUnk_03000730
_020067F0: .4byte gUnk_03001400
_020067F4: .4byte gUnk_03005000
_020067F8: .4byte sub_020069B4
_020067FC: .4byte gUnk_030013D0
_02006800: .4byte gUnk_03002560
_02006804: .4byte sub_02006808

	thumb_func_start sub_02006808
sub_02006808: @ 0x02006808
	push {r4, lr}
	ldr r0, _02006824 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02006828 @ =gUnk_03002610
	cmp r0, #0
	beq _0200682C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006830
	.align 2, 0
_02006824: .4byte gUnk_03002560
_02006828: .4byte gUnk_03002610
_0200682C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006830:
	adds r4, r1, r0
	ldrh r1, [r4, #0x24]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r2, #6]
	ldrb r0, [r1]
	bl sub_020068E0
	ldr r0, _020068B0 @ =gUnk_03000730
	str r4, [r0]
	ldr r3, _020068B4 @ =gUnk_03001400
	ldr r2, _020068B8 @ =gUnk_03005000
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _020068BC @ =sub_020069B4
	str r1, [r0]
	ldr r2, _020068C0 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xa
	bl sub_02006A98
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_02006A98
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_02006A98
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_02006A98
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020068B0: .4byte gUnk_03000730
_020068B4: .4byte gUnk_03001400
_020068B8: .4byte gUnk_03005000
_020068BC: .4byte sub_020069B4
_020068C0: .4byte gUnk_030013D0

	thumb_func_start sub_020068C4
sub_020068C4: @ 0x020068C4
	push {lr}
	ldrh r1, [r0, #0x24]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _020068D4
	movs r0, #0
	b _020068D6
_020068D4:
	movs r0, #1
_020068D6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_05
nullsub_05: @ 0x020068DC
	bx lr
	.align 2, 0

	thumb_func_start sub_020068E0
sub_020068E0: @ 0x020068E0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r0, #1
	movs r4, #0xa0
	subs r4, r4, r0
	lsls r4, r4, #1
	ldr r2, _02006944 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _02006948 @ =gUnk_03002658
	ldr r0, _0200694C @ =0x04000018
	str r0, [r1]
	ldr r1, _02006950 @ =gUnk_03002930
	movs r0, #2
	strb r0, [r1]
	ldr r0, _02006954 @ =gUnk_03001414
	mov sb, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldr r6, _02006958 @ =gUnk_03001E3C
	ldr r1, [r6]
	lsrs r2, r4, #1
	ldr r3, _0200695C @ =0x001FFFFF
	mov r8, r3
	ands r2, r3
	bl CpuSet
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r6]
	adds r1, r1, r4
	lsrs r5, r5, #1
	mov r2, r8
	ands r5, r2
	adds r2, r5, #0
	bl CpuSet
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02006944: .4byte gUnk_030013D0
_02006948: .4byte gUnk_03002658
_0200694C: .4byte 0x04000018
_02006950: .4byte gUnk_03002930
_02006954: .4byte gUnk_03001414
_02006958: .4byte gUnk_03001E3C
_0200695C: .4byte 0x001FFFFF

	thumb_func_start sub_02006960
sub_02006960: @ 0x02006960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	lsls r0, r0, #0xb
	ldr r1, _020069AC @ =0x06000004
	adds r0, r0, r1
	mov r3, r8
	lsls r1, r3, #4
	adds r5, r0, r1
	movs r6, #0
	adds r7, r2, #5
	cmp r6, r7
	bhs _020069A0
	rsbs r0, r2, #0
	adds r4, r0, #0
	adds r4, #0x17
_02006982:
	mov r1, r8
	lsls r0, r1, #7
	lsls r1, r4, #2
	ldr r2, _020069B0 @ =gUnk_0200F214
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #2
	bl CpuSet
	adds r5, #0x40
	adds r4, #1
	adds r6, #1
	cmp r6, r7
	blo _02006982
_020069A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020069AC: .4byte 0x06000004
_020069B0: .4byte gUnk_0200F214

	thumb_func_start sub_020069B4
sub_020069B4: @ 0x020069B4
	push {r4, lr}
	ldr r0, _020069E8 @ =gUnk_03000730
	ldr r4, [r0]
	ldrb r2, [r4, #4]
	movs r0, #0x1e
	movs r1, #0
	bl sub_02006960
	ldrb r2, [r4, #0xc]
	movs r0, #0x1e
	movs r1, #1
	bl sub_02006960
	ldrb r2, [r4, #0x14]
	movs r0, #0x1e
	movs r1, #2
	bl sub_02006960
	ldrb r2, [r4, #0x1c]
	movs r0, #0x1e
	movs r1, #3
	bl sub_02006960
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020069E8: .4byte gUnk_03000730

	thumb_func_start sub_020069EC
sub_020069EC: @ 0x020069EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x48
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	adds r5, r0, #0
	movs r1, #0
	mov r8, r1
	cmp r0, #0
	beq _02006A16
	lsls r0, r0, #0x15
	movs r1, #0xe0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
_02006A16:
	movs r4, #0
	str r4, [sp, #0x44]
	add r0, sp, #0x44
	ldr r2, _02006A8C @ =0x05000011
	mov r1, sp
	bl CpuSet
	ldr r0, _02006A90 @ =0x06010000
	str r0, [sp]
	mov r1, sp
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r2, sp
	ldr r1, _02006A94 @ =gUnk_0200ECA0
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r4, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r0, #0xc
	strb r0, [r1, #0x1f]
	mov r0, sp
	lsls r3, r6, #2
	strh r6, [r0, #0x10]
	lsls r1, r7, #2
	add r1, r8
	asrs r0, r1, #2
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	strh r5, [r0, #0x34]
	strh r4, [r0, #0x36]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r4, [sp, #0x40]
	bl sub_02001AC4
	add sp, #0x48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006A8C: .4byte 0x05000011
_02006A90: .4byte 0x06010000
_02006A94: .4byte gUnk_0200ECA0

	thumb_func_start sub_02006A98
sub_02006A98: @ 0x02006A98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x124
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _02006CF4 @ =0x000003E7
	cmp r7, r0
	bls _02006AC6
	adds r7, r0, #0
_02006AC6:
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r7, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r5, #0x64
	adds r0, r7, #0
	movs r1, #0x64
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r5, r0
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	mov r8, r1
	add r0, r8
	lsls r0, r0, #1
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r0, sp, #0x110
	movs r5, #0
	str r5, [r0]
	add r6, sp, #0xcc
	adds r1, r6, #0
	ldr r2, _02006CF8 @ =0x05000011
	bl CpuSet
	ldr r2, _02006CFC @ =0x06010000
	str r2, [r6]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	lsls r4, r4, #2
	ldr r1, _02006D00 @ =gUnk_0200EAC8
	adds r4, r4, r1
	ldrh r0, [r4, #0x30]
	strh r0, [r6, #0xc]
	adds r4, #0x32
	ldrb r0, [r4]
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r2, #0x10
	strb r2, [r6, #0x1c]
	movs r0, #0xc
	strb r0, [r6, #0x1f]
	ldr r1, [sp, #0x120]
	lsls r0, r1, #2
	strh r1, [r6, #0x10]
	mov r1, sl
	lsls r1, r1, #2
	mov sl, r1
	asrs r1, r1, #2
	mov sb, r1
	strh r1, [r6, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r6, #8]
	str r0, [r6, #0x28]
	mov r0, sl
	str r0, [r6, #0x2c]
	strh r5, [r6, #0x30]
	strh r5, [r6, #0x32]
	movs r1, #0x10
	strh r1, [r6, #0x34]
	strh r5, [r6, #0x36]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	add r0, sp, #0x114
	str r5, [r0]
	add r4, sp, #0x88
	adds r1, r4, #0
	ldr r2, _02006CF8 @ =0x05000011
	bl CpuSet
	ldr r2, _02006CFC @ =0x06010000
	str r2, [r4]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, _02006D00 @ =gUnk_0200EAC8
	add r8, r1
	mov r2, r8
	ldrh r0, [r2, #0x30]
	strh r0, [r4, #0xc]
	movs r0, #0x32
	add r8, r0
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #0xc
	strb r0, [r4, #0x1f]
	ldr r0, [sp, #0x120]
	adds r0, #0xa
	lsls r1, r0, #2
	strh r0, [r4, #0x10]
	mov r2, sb
	strh r2, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r1, [r4, #0x28]
	mov r1, sl
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r2, #0x10
	strh r2, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add r0, sp, #0x118
	str r5, [r0]
	add r1, sp, #0x44
	mov r8, r1
	ldr r2, _02006CF8 @ =0x05000011
	bl CpuSet
	ldr r2, _02006CFC @ =0x06010000
	str r2, [sp, #0x44]
	add r0, sp, #0x58
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0]
	lsls r0, r7, #2
	ldr r2, _02006D00 @ =gUnk_0200EAC8
	adds r0, r0, r2
	ldrh r2, [r0, #0x30]
	add r1, sp, #0x50
	strh r2, [r1]
	adds r0, #0x32
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x5e
	strb r1, [r0]
	subs r0, #4
	strh r5, [r0]
	mov r1, sp
	adds r1, #0x5f
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	add r0, sp, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r2, #0xc
	strb r2, [r0]
	ldr r1, [sp, #0x120]
	adds r1, #0x14
	lsls r2, r1, #2
	add r0, sp, #0x54
	strh r1, [r0]
	adds r0, #2
	mov r1, sb
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #0x4c]
	str r2, [sp, #0x6c]
	mov r1, sl
	str r1, [sp, #0x70]
	add r0, sp, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	add r0, sp, #0x78
	movs r2, #0x10
	strh r2, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [sp, #0x7c]
	add r0, sp, #0x80
	str r5, [r0]
	add r0, sp, #0x84
	str r5, [r0]
	add r0, sp, #0x11c
	str r5, [r0]
	mov r1, sp
	ldr r2, _02006CF8 @ =0x05000011
	bl CpuSet
	ldr r0, _02006CFC @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	mov r1, sp
	ldr r0, _02006D00 @ =gUnk_0200EAC8
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r2, _02006D04 @ =gUnk_0200EB26
	ldrb r0, [r2]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r5, [r0, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0xc
	strb r2, [r0, #0x1f]
	mov r1, sp
	ldr r0, [sp, #0x120]
	adds r0, #0x22
	lsls r2, r0, #2
	strh r0, [r1, #0x10]
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0x28]
	mov r1, sl
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r5, [r0, #0x30]
	strh r5, [r0, #0x32]
	movs r2, #0x10
	strh r2, [r0, #0x34]
	strh r5, [r0, #0x36]
	str r5, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x40]
	bl sub_02001AC4
	mov r0, r8
	bl sub_02001AC4
	adds r0, r4, #0
	bl sub_02001AC4
	adds r0, r6, #0
	bl sub_02001AC4
	add sp, #0x124
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006CF4: .4byte 0x000003E7
_02006CF8: .4byte 0x05000011
_02006CFC: .4byte 0x06010000
_02006D00: .4byte gUnk_0200EAC8
_02006D04: .4byte gUnk_0200EB26

	thumb_func_start sub_02006D08
sub_02006D08: @ 0x02006D08
	lsls r1, r1, #0x18
	ldr r2, _02006D20 @ =gUnk_0200E990
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	ldrh r2, [r1, #0x1c]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #0x1e]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_02006D20: .4byte gUnk_0200E990

	thumb_func_start sub_02006D24
sub_02006D24: @ 0x02006D24
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	ldr r1, _02006D58 @ =gUnk_03002658
	ldr r0, _02006D5C @ =0x04000018
	str r0, [r1]
	ldr r1, _02006D60 @ =gUnk_03002930
	movs r0, #2
	strb r0, [r1]
	ldr r0, _02006D64 @ =gUnk_03001414
	ldr r4, [r0]
	ldr r0, _02006D68 @ =gUnk_03001E3C
	ldr r1, [r0]
_02006D3E:
	lsrs r0, r2, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r1]
	adds r1, #2
	cmp r3, #9
	bls _02006D88
	cmp r3, #0x13
	bls _02006D8C
	cmp r3, #0x27
	bhi _02006D6C
	adds r2, #2
	b _02006D8E
	.align 2, 0
_02006D58: .4byte gUnk_03002658
_02006D5C: .4byte 0x04000018
_02006D60: .4byte gUnk_03002930
_02006D64: .4byte gUnk_03001414
_02006D68: .4byte gUnk_03001E3C
_02006D6C:
	cmp r3, #0x3b
	bhi _02006D74
	subs r2, #2
	b _02006D8E
_02006D74:
	cmp r3, #0x59
	bhi _02006D7C
	adds r2, #1
	b _02006D8E
_02006D7C:
	cmp r3, #0x77
	bhi _02006D84
	subs r2, #1
	b _02006D8E
_02006D84:
	cmp r3, #0x8b
	bhi _02006D8C
_02006D88:
	adds r2, #3
	b _02006D8E
_02006D8C:
	subs r2, #3
_02006D8E:
	adds r3, #1
	cmp r3, #0x9f
	bls _02006D3E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006D9C
sub_02006D9C: @ 0x02006D9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r1, sp
	adds r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r1]
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	movs r4, #0xbb
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r5, #0
	mov ip, r5
_02006DD2:
	movs r7, #0
	mov r8, r7
	mov r7, sp
	mov sb, sp
	mov r2, sp
	mov r0, sp
	ldrh r3, [r0, #6]
	movs r4, #6
	ldrsh r1, [r0, r4]
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _02006DF0
	adds r3, r4, #0
_02006DF0:
	mov r0, sb
	ldrh r2, [r0, #2]
	lsls r1, r3, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	bge _02006DFE
	adds r3, r2, #0
_02006DFE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r7]
	movs r4, #0
	ldrsh r1, [r7, r4]
	cmp r0, r1
	bge _02006E0E
	adds r3, r2, #0
_02006E0E:
	adds r5, r3, #0
	movs r4, #0
	mov r2, sp
_02006E14:
	movs r0, #0xb0
	muls r0, r4, r0
	adds r3, r6, r0
	adds r1, r3, #0
	adds r1, #0xdc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r1, r7]
	cmp r0, r1
	bne _02006E40
	adds r0, r3, #0
	adds r0, #0xec
	movs r1, #0
	mov r3, ip
	strb r3, [r0]
	strh r1, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_02006E40:
	adds r2, #2
	adds r4, #1
	cmp r4, #3
	bls _02006E14
	mov r0, ip
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _02006DD2
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02006E64
sub_02006E64: @ 0x02006E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02006E9C @ =sub_02006FEC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006EA0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02006EA6
	.align 2, 0
_02006E9C: .4byte sub_02006FEC
_02006EA0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02006EA6:
	adds r4, r0, #0
	adds r0, #0x54
	movs r7, #0
	strh r7, [r0]
	ldr r0, _02006F60 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _02006F64 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xc
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
	ldr r0, _02006F68 @ =0xFFFFFF00
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
	beq _02006F74
	str r7, [sp, #4]
	ldr r2, _02006F6C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006F70 @ =0x06010000
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
	movs r0, #0xb
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
	b _02006FCA
	.align 2, 0
_02006F60: .4byte 0xFFFF0000
_02006F64: .4byte 0xFF00FFFF
_02006F68: .4byte 0xFFFFFF00
_02006F6C: .4byte 0x05000011
_02006F70: .4byte 0x06010000
_02006F74:
	str r5, [sp, #4]
	ldr r2, _02006FE4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006FE8 @ =0x06010000
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
	movs r0, #0xb
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
_02006FCA:
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
_02006FE4: .4byte 0x05000011
_02006FE8: .4byte 0x06010000

	thumb_func_start sub_02006FEC
sub_02006FEC: @ 0x02006FEC
	push {r4, lr}
	ldr r0, _02007008 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200700C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007010
	.align 2, 0
_02007008: .4byte gUnk_03002560
_0200700C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007010:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_02001C1C
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _02007032
	movs r0, #0
	strh r0, [r2]
	ldr r0, _02007050 @ =0xFFFFFF00
	str r0, [r4, #0x4c]
_02007032:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200705C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02007054
	subs r0, #1
	strh r0, [r1]
	b _0200705C
	.align 2, 0
_02007050: .4byte 0xFFFFFF00
_02007054:
	ldr r0, _02007064 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
_0200705C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02007064: .4byte gUnk_03002560

	thumb_func_start sub_02007068
sub_02007068: @ 0x02007068
	push {lr}
	sub sp, #4
	ldr r0, _02007094 @ =sub_020070AC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_0200A79C
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007098
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200709C
	.align 2, 0
_02007094: .4byte sub_020070AC
_02007098:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200709C:
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020070AC
sub_020070AC: @ 0x020070AC
	push {r4, r5, lr}
	ldr r0, _020070C8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020070CC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020070D0
	.align 2, 0
_020070C8: .4byte gUnk_03002560
_020070CC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020070D0:
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _02007112
	movs r0, #0
	strh r0, [r2]
	movs r5, #0x92
	lsls r5, r5, #2
	movs r0, #0x78
	adds r1, r5, #0
	bl sub_02007118
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r4, #0x8a
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_02007118
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_02007118
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_02007118
_02007112:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02007118
sub_02007118: @ 0x02007118
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _02007150 @ =sub_02007308
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _02007154 @ =gUnk_03005868
	cmp r1, #0
	beq _02007158
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _0200715E
	.align 2, 0
_02007150: .4byte sub_02007308
_02007154: .4byte gUnk_03005868
_02007158:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_0200715E:
	adds r4, r1, #0
	ldr r1, [r3]
	ldr r0, _0200721C @ =0x00196225
	muls r1, r0, r1
	ldr r0, _02007220 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	movs r6, #0
	str r6, [r4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x14
	strh r0, [r2]
	adds r2, #2
	movs r0, #1
	strh r0, [r2]
	str r5, [r4, #0x48]
	str r7, [r4, #0x4c]
	ldrh r2, [r2]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, r4, #4
	lsls r7, r1, #2
	movs r1, #0x20
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _02007230
	str r6, [sp, #4]
	ldr r2, _02007224 @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl CpuSet
	ldr r0, _02007228 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _0200722C @ =gUnk_0200EE08
	adds r0, r7, r0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x10]
	adds r0, #0x42
	ldrb r0, [r0]
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
	b _02007292
	.align 2, 0
_0200721C: .4byte 0x00196225
_02007220: .4byte 0x3C6EF35F
_02007224: .4byte 0x05000011
_02007228: .4byte 0x06010000
_0200722C: .4byte gUnk_0200EE08
_02007230:
	str r5, [sp, #4]
	ldr r2, _020072BC @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl CpuSet
	ldr r0, _020072C0 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _020072C4 @ =gUnk_0200EE08
	adds r0, r7, r0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x10]
	adds r0, #0x42
	ldrb r0, [r0]
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
_02007292:
	ldr r6, _020072C8 @ =gUnk_03005868
	ldr r0, [r6]
	ldr r3, _020072CC @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _020072D0 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	movs r0, #0xf
	ands r5, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _020072D4
	strh r5, [r4, #0x34]
	b _020072D8
	.align 2, 0
_020072BC: .4byte 0x05000011
_020072C0: .4byte 0x06010000
_020072C4: .4byte gUnk_0200EE08
_020072C8: .4byte gUnk_03005868
_020072CC: .4byte 0x00196225
_020072D0: .4byte 0x3C6EF35F
_020072D4:
	rsbs r0, r5, #0
	strh r0, [r4, #0x34]
_020072D8:
	ldr r1, [r6]
	ldr r0, _02007300 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02007304 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007300: .4byte 0x00196225
_02007304: .4byte 0x3C6EF35F

	thumb_func_start sub_02007308
sub_02007308: @ 0x02007308
	push {r4, r5, lr}
	ldr r0, _02007324 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007328
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200732C
	.align 2, 0
_02007324: .4byte gUnk_03002560
_02007328:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200732C:
	adds r5, r1, r0
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_02001C1C
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02007354
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02007368
	subs r0, #1
	strh r0, [r1]
	b _02007388
_02007354:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	bgt _02007368
	ldr r1, [r5, #0x48]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	bge _02007378
_02007368:
	ldr r0, _02007374 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	b _02007388
	.align 2, 0
_02007374: .4byte gUnk_03002560
_02007378:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	ble _02007388
	ldr r0, _02007390 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
_02007388:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02007390: .4byte gUnk_03002560

	thumb_func_start sub_02007394
sub_02007394: @ 0x02007394
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _020073C8 @ =sub_02007404
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_0200A79C
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	ldr r4, _020073CC @ =gUnk_03005868
	cmp r0, #0
	beq _020073D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020073D4
	.align 2, 0
_020073C8: .4byte sub_02007404
_020073CC: .4byte gUnk_03005868
_020073D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020073D4:
	adds r2, r1, r0
	ldr r1, [r4]
	ldr r0, _020073FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02007400 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r2, #2]
	strb r5, [r2, #3]
	str r6, [r2, #4]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_020073FC: .4byte 0x00196225
_02007400: .4byte 0x3C6EF35F

	thumb_func_start sub_02007404
sub_02007404: @ 0x02007404
	push {r4, r5, r6, r7, lr}
	ldr r0, _02007420 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02007424
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007428
	.align 2, 0
_02007420: .4byte gUnk_03002560
_02007424:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007428:
	adds r7, r1, r0
	ldrh r0, [r7]
	subs r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _02007484
	ldr r6, _0200748C @ =gUnk_03005868
	ldr r0, [r6]
	ldr r5, _02007490 @ =0x00196225
	adds r3, r0, #0
	muls r3, r5, r3
	ldr r4, _02007494 @ =0x3C6EF35F
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	ands r1, r0
	ldr r2, _02007498 @ =gUnk_0200EFE8
	ldrb r0, [r7, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r7]
	adds r2, r3, #0
	muls r2, r5, r2
	adds r2, r2, r4
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	lsls r3, r0, #2
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0200747C
	rsbs r3, r3, #0
_0200747C:
	ldr r0, [r7, #4]
	adds r0, r0, r3
	bl sub_0200749C
_02007484:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200748C: .4byte gUnk_03005868
_02007490: .4byte 0x00196225
_02007494: .4byte 0x3C6EF35F
_02007498: .4byte gUnk_0200EFE8

	thumb_func_start sub_0200749C
sub_0200749C: @ 0x0200749C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _020074D4 @ =sub_0200764C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_0200A79C
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _020074D8 @ =gUnk_03005868
	cmp r1, #0
	beq _020074DC
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _020074E2
	.align 2, 0
_020074D4: .4byte sub_0200764C
_020074D8: .4byte gUnk_03005868
_020074DC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_020074E2:
	adds r4, r1, #0
	ldr r1, [r3]
	ldr r0, _0200759C @ =0x00196225
	muls r1, r0, r1
	ldr r0, _020075A0 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	movs r6, #0
	str r6, [r4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x96
	strh r0, [r2]
	adds r2, #2
	movs r0, #1
	strh r0, [r2]
	str r5, [r4, #0x48]
	str r6, [r4, #0x4c]
	ldrh r2, [r2]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, r4, #4
	lsls r7, r1, #2
	movs r1, #0x20
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _020075B0
	str r6, [sp, #4]
	ldr r2, _020075A4 @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl CpuSet
	ldr r0, _020075A8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _020075AC @ =gUnk_0200EF88
	adds r0, r7, r0
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #7
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
	b _0200760C
	.align 2, 0
_0200759C: .4byte 0x00196225
_020075A0: .4byte 0x3C6EF35F
_020075A4: .4byte 0x05000011
_020075A8: .4byte 0x06010000
_020075AC: .4byte gUnk_0200EF88
_020075B0:
	str r5, [sp, #4]
	ldr r2, _02007634 @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl CpuSet
	ldr r0, _02007638 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _0200763C @ =gUnk_0200EF88
	adds r0, r7, r0
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #7
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
_0200760C:
	ldr r2, _02007640 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _02007644 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02007648 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007634: .4byte 0x05000011
_02007638: .4byte 0x06010000
_0200763C: .4byte gUnk_0200EF88
_02007640: .4byte gUnk_03005868
_02007644: .4byte 0x00196225
_02007648: .4byte 0x3C6EF35F

	thumb_func_start sub_0200764C
sub_0200764C: @ 0x0200764C
	push {r4, lr}
	ldr r0, _02007668 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200766C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02007670
	.align 2, 0
_02007668: .4byte gUnk_03002560
_0200766C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02007670:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_02001C1C
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020076A4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02007696
	subs r0, #1
	strh r0, [r1]
	b _020076B6
_02007696:
	ldr r0, _020076A0 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
	b _020076B6
	.align 2, 0
_020076A0: .4byte gUnk_03002560
_020076A4:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	ble _020076B6
	ldr r0, _020076BC @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_0200A8B8
_020076B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020076BC: .4byte gUnk_03002560

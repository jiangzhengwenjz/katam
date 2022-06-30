	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_20001CC
sub_20001CC: @ 0x020001CC
	push {lr}
	ldr r1, _020001E0 @ =gUnk_03002604
	ldr r0, _020001E4 @ =gUnk_0200EC1C
	str r0, [r1]
	bl sub_20001E8
	bl sub_2001420
	pop {r0}
	bx r0
	.align 2, 0
_020001E0: .4byte gUnk_03002604
_020001E4: .4byte gUnk_0200EC1C

	thumb_func_start sub_20001E8
sub_20001E8: @ 0x020001E8
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

	thumb_func_start sub_2000228
sub_2000228: @ 0x02000228
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
	ldr r0, _020002A4 @ =sub_2000A14
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_20096C4
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
_020002A4: .4byte sub_2000A14
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
	ldr r0, _020002DC @ =sub_2000C00
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
_020002DC: .4byte sub_2000C00

	thumb_func_start sub_20002E0
sub_20002E0: @ 0x020002E0
	push {r4, lr}
	ldr r4, _020002F4 @ =gUnk_03000440
	ldr r0, [r4]
	bl sub_20097E0
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020002F4: .4byte gUnk_03000440

	thumb_func_start sub_20002F8
sub_20002F8: @ 0x020002F8
	ldr r2, _02000304 @ =gUnk_03000440
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_02000304: .4byte gUnk_03000440

	thumb_func_start sub_2000308
sub_2000308: @ 0x02000308
	ldr r0, _02000310 @ =gUnk_03000440
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02000310: .4byte gUnk_03000440

	thumb_func_start sub_2000314
sub_2000314: @ 0x02000314
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

	thumb_func_start sub_200036C
sub_200036C: @ 0x0200036C
	ldr r1, _02000374 @ =gUnk_03000470
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_02000374: .4byte gUnk_03000470

	thumb_func_start sub_2000378
sub_2000378: @ 0x02000378
	ldr r2, _02000384 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_02000384: .4byte gUnk_03000470

	thumb_func_start sub_2000388
sub_2000388: @ 0x02000388
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

	thumb_func_start sub_2000454
sub_2000454: @ 0x02000454
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

	thumb_func_start sub_2000470
sub_2000470: @ 0x02000470
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

	thumb_func_start sub_20005A0
sub_20005A0: @ 0x020005A0
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

	thumb_func_start sub_2000A14
sub_2000A14: @ 0x02000A14
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

	thumb_func_start sub_2000B30
sub_2000B30: @ 0x02000B30
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

	thumb_func_start sub_2000C00
sub_2000C00: @ 0x02000C00
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
	ldr r0, _02000C7C @ =sub_2000CC8
	b _02000CB2
	.align 2, 0
_02000C64: .4byte gUnk_03000440
_02000C68: .4byte gUnk_03002640
_02000C6C: .4byte 0x00000123
_02000C70: .4byte 0x0000FFFC
_02000C74: .4byte 0x04000128
_02000C78: .4byte gUnk_030014E4
_02000C7C: .4byte sub_2000CC8
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
	ldr r0, _02000CC4 @ =sub_2000F68
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
_02000CC4: .4byte sub_2000F68

	thumb_func_start sub_2000CC8
sub_2000CC8: @ 0x02000CC8
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
	ldr r0, _02000D38 @ =sub_2000C00
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
_02000D38: .4byte sub_2000C00
_02000D3C:
	adds r0, r5, #0
	bl sub_2000B30
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
	ldr r0, _02000DB8 @ =sub_2000DC4
	str r0, [r5]
_02000DB0:
	movs r0, #1
	b _02000DBE
	.align 2, 0
_02000DB4: .4byte gUnk_03001420
_02000DB8: .4byte sub_2000DC4
_02000DBC:
	movs r0, #0
_02000DBE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_2000DC4
sub_2000DC4: @ 0x02000DC4
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
	ldr r0, _02000E44 @ =sub_2000C00
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
_02000E44: .4byte sub_2000C00
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
	ldr r0, _02000F30 @ =sub_2000F44
	str r0, [r5]
	movs r0, #2
	b _02000F36
	.align 2, 0
_02000F30: .4byte sub_2000F44
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

	thumb_func_start sub_2000F44
sub_2000F44: @ 0x02000F44
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

	thumb_func_start sub_2000F68
sub_2000F68: @ 0x02000F68
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
	ldr r0, _02000FE0 @ =sub_2000C00
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
_02000FE0: .4byte sub_2000C00
_02000FE4:
	ldrb r0, [r6]
	cmp r0, #2
	bne _02001012
	adds r0, r4, #0
	bl sub_2000B30
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
	ldr r0, _0200101C @ =sub_2001020
	str r0, [r4]
_02001012:
	movs r0, #0
_02001014:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200101C: .4byte sub_2001020

	thumb_func_start sub_2001020
sub_2001020: @ 0x02001020
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
	ldr r0, _02001094 @ =sub_2000C00
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
_02001094: .4byte sub_2000C00
_02001098:
	ldrb r0, [r6]
	cmp r0, #2
	beq _020010A4
	movs r0, #1
	rsbs r0, r0, #0
	b _0200110A
_020010A4:
	adds r0, r5, #0
	bl sub_2000B30
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
	ldr r0, _02001114 @ =sub_2001118
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
_02001114: .4byte sub_2001118

	thumb_func_start sub_2001118
sub_2001118: @ 0x02001118
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

	thumb_func_start sub_2001160
sub_2001160: @ 0x02001160
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _020011C0 @ =0x0000FFFF
	movs r0, #0
	bl sub_2009768
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
	bl nullsub_1
	ldr r1, _020011D8 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _020011DC @ =gUnk_030014D0
	ldr r0, _020011E0 @ =0x06010000
	str r0, [r1]
	ldr r0, _020011E4 @ =sub_20012AC
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _020011E8 @ =sub_20012DC
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
_020011E4: .4byte sub_20012AC
_020011E8: .4byte sub_20012DC
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
	bl sub_200036C
	bl sub_200B73C
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
	bl sub_20001E8
	bl m4aMPlayAllStop
	ldr r0, _020012A0 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_0200125E:
	ldr r2, _020012A4 @ =gUnk_03000740
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _020012A8 @ =gUnk_0201DE94
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
_020012A8: .4byte gUnk_0201DE94

	thumb_func_start sub_20012AC
sub_20012AC: @ 0x020012AC
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

	thumb_func_start sub_20012DC
sub_20012DC: @ 0x020012DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_200036C
	bl sub_200B73C
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
	ldr r0, _02001374 @ =sub_2001378
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
_02001374: .4byte sub_2001378

	thumb_func_start sub_2001378
sub_2001378: @ 0x02001378
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
	ldr r4, _020013FC @ =gUnk_0200C2C0
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
	ldr r0, _02001418 @ =nullsub_4
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020013EC: .4byte gUnk_03002620
_020013F0: .4byte gUnk_03001E40
_020013F4: .4byte 0x00001F03
_020013F8: .4byte gUnk_03002610
_020013FC: .4byte gUnk_0200C2C0
_02001400: .4byte 0x040000D4
_02001404: .4byte 0x0600F800
_02001408: .4byte 0x8000001E
_0200140C: .4byte gUnk_03002730
_02001410: .4byte 0x80000010
_02001414: .4byte gUnk_030013D0
_02001418: .4byte nullsub_4

	thumb_func_start nullsub_4
nullsub_4: @ 0x0200141C
	bx lr
	.align 2, 0

	thumb_func_start sub_2001420
sub_2001420: @ 0x02001420
	push {r4, lr}
	sub sp, #8
	ldr r0, _0200144C @ =sub_2001490
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _02001450 @ =nullsub_5
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_20096C4
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
_0200144C: .4byte sub_2001490
_02001450: .4byte nullsub_5
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
	ldr r0, _0200148C @ =sub_2001524
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_2001960
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001488: .4byte 0x01000052
_0200148C: .4byte sub_2001524

	thumb_func_start sub_2001490
sub_2001490: @ 0x02001490
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
	bl sub_2001A70
_0200150E:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200151C: .4byte gUnk_03000470

	thumb_func_start nullsub_5
nullsub_5: @ 0x02001520
	bx lr
	.align 2, 0

	thumb_func_start sub_2001524
sub_2001524: @ 0x02001524
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
	ldr r1, _02001558 @ =sub_200155C
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200154C: .4byte gUnk_03002620
_02001550: .4byte 0x0000F9FF
_02001554: .4byte gUnk_03002610
_02001558: .4byte sub_200155C

	thumb_func_start sub_200155C
sub_200155C: @ 0x0200155C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _020015E0 @ =gUnk_0200C6A4
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
	ldr r0, _02001608 @ =sub_200160C
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020015E0: .4byte gUnk_0200C6A4
_020015E4: .4byte 0x0600C000
_020015E8: .4byte 0x040000D4
_020015EC: .4byte 0x0600CC60
_020015F0: .4byte 0x85000008
_020015F4: .4byte gUnk_03005030
_020015F8: .4byte gUnk_03001E10
_020015FC: .4byte 0x0600E480
_02001600: .4byte 0x0600E4C0
_02001604: .4byte gUnk_03002620
_02001608: .4byte sub_200160C

	thumb_func_start sub_200160C
sub_200160C: @ 0x0200160C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_200B688
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _0200162C @ =sub_2001630
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200162C: .4byte sub_2001630

	thumb_func_start sub_2001630
sub_2001630: @ 0x02001630
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
	bl sub_200B6E0
	ldr r0, _02001658 @ =sub_200165C
	str r0, [r4, #0x7c]
_0200164C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001654: .4byte 0xFFFF0000
_02001658: .4byte sub_200165C

	thumb_func_start sub_200165C
sub_200165C: @ 0x0200165C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_2000228
	ldr r0, _0200167C @ =sub_2001680
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200167C: .4byte sub_2001680

	thumb_func_start sub_2001680
sub_2001680: @ 0x02001680
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
	bl sub_20097E0
	ldr r0, _020016B4 @ =gUnk_03000720
	str r5, [r0]
	bl sub_2001160
	b _02001742
	.align 2, 0
_020016AC: .4byte 0xFFFF0000
_020016B0: .4byte gUnk_03002560
_020016B4: .4byte gUnk_03000720
_020016B8:
	bl sub_2000308
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0200170C
	bl sub_20002E0
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
	ldr r0, _02001708 @ =sub_2001748
	str r0, [r4, #0x7c]
	b _02001742
	.align 2, 0
_020016F0: .4byte gUnk_0300041C
_020016F4: .4byte gUnk_03000440
_020016F8: .4byte gUnk_03000428
_020016FC: .4byte 0x04000128
_02001700: .4byte gUnk_03000434
_02001704: .4byte gUnk_03000410
_02001708: .4byte sub_2001748
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
	bl sub_20002F8
	b _02001742
_02001728:
	cmp r0, #0
	bge _0200173C
	bl sub_20002E0
	ldr r0, _02001738 @ =sub_200165C
	str r0, [r4, #0x7c]
	b _02001742
	.align 2, 0
_02001738: .4byte sub_200165C
_0200173C:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_02001742:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_2001748
sub_2001748: @ 0x02001748
	ldr r1, _02001750 @ =sub_2001754
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_02001750: .4byte sub_2001754

	thumb_func_start sub_2001754
sub_2001754: @ 0x02001754
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
	bl sub_2000314
	bl sub_2000378
	ldr r0, _0200179C @ =sub_20017A0
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200179C: .4byte sub_20017A0

	thumb_func_start sub_20017A0
sub_20017A0: @ 0x020017A0
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
	bl sub_2000388
	cmp r0, #0
	bne _020017D2
	bl sub_2001160
	b _020017D6
_020017D2:
	ldr r0, _020017DC @ =sub_20017E0
	str r0, [r4, #0x7c]
_020017D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020017DC: .4byte sub_20017E0

	thumb_func_start sub_20017E0
sub_20017E0: @ 0x020017E0
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _020017EC @ =sub_20017F0
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_020017EC: .4byte sub_20017F0

	thumb_func_start sub_20017F0
sub_20017F0: @ 0x020017F0
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
	bl sub_2001A20
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0200184C
	ldr r0, _02001854 @ =sub_2001858
	str r0, [r4, #0x7c]
_0200184C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02001854: .4byte sub_2001858

	thumb_func_start sub_2001858
sub_2001858: @ 0x02001858
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _02001868 @ =sub_200186C
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_02001868: .4byte sub_200186C

	thumb_func_start sub_200186C
sub_200186C: @ 0x0200186C
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
	bl sub_2001A20
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0200189A
	ldr r0, _020018A0 @ =sub_20018A4
	str r0, [r4, #0x7c]
_0200189A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020018A0: .4byte sub_20018A4

	thumb_func_start sub_20018A4
sub_20018A4: @ 0x020018A4
	ldr r2, _020018BC @ =gUnk_03001478
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _020018C0 @ =sub_20018C4
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_020018BC: .4byte gUnk_03001478
_020018C0: .4byte sub_20018C4

	thumb_func_start sub_20018C4
sub_20018C4: @ 0x020018C4
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
	ldr r0, _020018F4 @ =sub_20018F8
	str r0, [r3, #0x7c]
_020018EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020018F0: .4byte gUnk_03001478
_020018F4: .4byte sub_20018F8

	thumb_func_start sub_20018F8
sub_20018F8: @ 0x020018F8
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
	ldr r0, _02001954 @ =0x02030000
	ldr r1, _02001958 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl CpuSet
	ldr r0, _0200195C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
	bl sub_2003768
	bl sub_2003798
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02001944: .4byte gUnk_03000404
_02001948: .4byte 0x00007FFF
_0200194C: .4byte 0x01000200
_02001950: .4byte gUnk_03001478
_02001954: .4byte 0x02030000
_02001958: .4byte 0x06008000
_0200195C: .4byte gUnk_03002560

	thumb_func_start sub_2001960
sub_2001960: @ 0x02001960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_2001A20
	ldr r0, _02001A1C @ =0x06010000
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
	bl sub_2009F38
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _02001A1C @ =0x06010000
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
	bl sub_2009F38
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _02001A1C @ =0x06010000
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
	bl sub_2009F38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02001A1C: .4byte 0x06010000

	thumb_func_start sub_2001A20
sub_2001A20: @ 0x02001A20
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _02001A38 @ =gUnk_0200C2C4
	ldr r4, _02001A3C @ =gUnk_03001DD0
	ldr r2, _02001A40 @ =gUnk_030013D0
	cmp r1, #0
	beq _02001A48
	ldr r1, _02001A44 @ =0x040000D4
	adds r0, #1
	b _02001A4C
	.align 2, 0
_02001A38: .4byte gUnk_0200C2C4
_02001A3C: .4byte gUnk_03001DD0
_02001A40: .4byte gUnk_030013D0
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

	thumb_func_start sub_2001A70
sub_2001A70: @ 0x02001A70
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
	bl sub_200A740
	pop {r0}
	bx r0

	thumb_func_start sub_2001A90
sub_2001A90: @ 0x02001A90
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
	bl sub_2001BEC
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_2001ACC
sub_2001ACC: @ 0x02001ACC
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
	bl sub_2001B68
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02001B58
	adds r0, r4, #0
	bl sub_2009F38
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
	bl sub_2001ACC
_02001B58:
	adds r0, r4, #0
	bl sub_200A740
_02001B5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001B64: .4byte 0x0000FBFF

	thumb_func_start sub_2001B68
sub_2001B68: @ 0x02001B68
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
	bl sub_2001BB0
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

	thumb_func_start sub_2001BB0
sub_2001BB0: @ 0x02001BB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02001BC0
	bl sub_2001BB0
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

	thumb_func_start sub_2001BEC
sub_2001BEC: @ 0x02001BEC
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

	thumb_func_start sub_2001C00
sub_2001C00: @ 0x02001C00
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

	thumb_func_start sub_2001C24
sub_2001C24: @ 0x02001C24
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
	bl sub_2001ACC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_2001C68
sub_2001C68: @ 0x02001C68
	push {r4, lr}
	ldr r0, _02001C84 @ =gUnk_03002560
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
_02001C84: .4byte gUnk_03002560
_02001C88:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02001C8C:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_2001C24
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
	ldr r0, _02001CBC @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
	b _02001CD4
	.align 2, 0
_02001CBC: .4byte gUnk_03002560
_02001CC0:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02001CD4
	ldr r0, _02001CDC @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
_02001CD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001CDC: .4byte gUnk_03002560

	thumb_func_start sub_2001CE0
sub_2001CE0: @ 0x02001CE0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _02001D14 @ =sub_2001E00
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_20096C4
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
_02001D14: .4byte sub_2001E00
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
	ldr r3, _02001D48 @ =gUnk_03001478
	cmp r5, #0
	beq _02001D4C
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _02001D54
	.align 2, 0
_02001D48: .4byte gUnk_03001478
_02001D4C:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_02001D54:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _02001D6C @ =gUnk_03001478
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
_02001D6C: .4byte gUnk_03001478

	thumb_func_start sub_2001D70
sub_2001D70: @ 0x02001D70
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _02001DA4 @ =sub_2001E00
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_20096C4
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
_02001DA4: .4byte sub_2001E00
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
	ldr r4, _02001DD8 @ =gUnk_03001478
	cmp r5, #0
	beq _02001DDC
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _02001DE4
	.align 2, 0
_02001DD8: .4byte gUnk_03001478
_02001DDC:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_02001DE4:
	strb r6, [r2, #2]
	ldr r1, _02001DFC @ =gUnk_03001478
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
_02001DFC: .4byte gUnk_03001478

	thumb_func_start sub_2001E00
sub_2001E00: @ 0x02001E00
	push {r4, lr}
	ldr r4, _02001E1C @ =gUnk_03002560
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _02001E20 @ =gUnk_03001478
	cmp r0, #0
	beq _02001E24
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02001E28
	.align 2, 0
_02001E1C: .4byte gUnk_03002560
_02001E20: .4byte gUnk_03001478
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
	bl sub_20097E0
_02001E80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_2001E88
sub_2001E88: @ 0x02001E88
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _02001EC4 @ =sub_2001EF8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_20096C4
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
_02001EC4: .4byte sub_2001EF8
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

	thumb_func_start sub_2001EF8
sub_2001EF8: @ 0x02001EF8
	push {r4, lr}
	ldr r0, _02001F14 @ =gUnk_03002560
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
_02001F14: .4byte gUnk_03002560
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
	bl sub_2001CE0
	b _02001F4E
_02001F46:
	adds r0, r1, #0
	movs r1, #0
	bl sub_2001CE0
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
	bl sub_2001CE0
	b _02001F86
_02001F7A:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_2001CE0
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
	ldr r1, _02001FAC @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _02001FB0 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
	b _02001FBE
	.align 2, 0
_02001FAC: .4byte gUnk_03001478
_02001FB0: .4byte gUnk_03002560
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
	ldr r0, _02001FDC @ =gUnk_03001478
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
_02001FDC: .4byte gUnk_03001478

	thumb_func_start sub_2001FE0
sub_2001FE0: @ 0x02001FE0
	push {lr}
	ldr r1, _02001FF8 @ =gUnk_03001478
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
_02001FF8: .4byte gUnk_03001478
_02001FFC:
	movs r0, #1
_02001FFE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_2002004
sub_2002004: @ 0x02002004
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _02002034 @ =sub_2002068
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_20096C4
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
_02002034: .4byte sub_2002068
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

	thumb_func_start sub_2002068
sub_2002068: @ 0x02002068
	push {lr}
	ldr r0, _02002084 @ =gUnk_03002560
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
_02002084: .4byte gUnk_03002560
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

	thumb_func_start sub_20020DC
sub_20020DC: @ 0x020020DC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0200210C @ =sub_200213C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_20096C4
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
_0200210C: .4byte sub_200213C
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

	thumb_func_start sub_200213C
sub_200213C: @ 0x0200213C
	push {r4, lr}
	ldr r0, _02002158 @ =gUnk_03002560
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
_02002158: .4byte gUnk_03002560
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
	ldr r1, _020021D4 @ =gUnk_03002730
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _020021D8 @ =gUnk_030013D0
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
_020021D4: .4byte gUnk_03002730
_020021D8: .4byte gUnk_030013D0

	thumb_func_start sub_20021DC
sub_20021DC: @ 0x020021DC
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
	ldr r0, _02002264 @ =sub_20027EC
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_20096C4
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _02002268 @ =gUnk_0200C2C4
	mov ip, r0
	ldr r4, _0200226C @ =gUnk_030013D0
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
_02002264: .4byte sub_20027EC
_02002268: .4byte gUnk_0200C2C4
_0200226C: .4byte gUnk_030013D0
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
	ldr r2, _0200268C @ =gUnk_03001BF0
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
	ldr r5, _0200268C @ =gUnk_03001BF0
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
_0200268C: .4byte gUnk_03001BF0
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

	thumb_func_start sub_20027EC
sub_20027EC: @ 0x020027EC
	ldr r0, _020027F8 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020027FC @ =sub_2002800
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_020027F8: .4byte gUnk_03002560
_020027FC: .4byte sub_2002800

	thumb_func_start sub_2002800
sub_2002800: @ 0x02002800
	push {r4, r5, r6, lr}
	ldr r6, _0200281C @ =gUnk_03002560
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
_0200281C: .4byte gUnk_03002560
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
	ldr r0, _02002860 @ =gUnk_03000470
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
_02002860: .4byte gUnk_03000470
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
	ldr r0, _02002898 @ =sub_20030F8
	b _02002952
	.align 2, 0
_02002894: .4byte 0x000002AE
_02002898: .4byte sub_20030F8
_0200289C:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _02002954
	ldr r1, _020028B0 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _020028B4 @ =sub_2002E08
	b _02002952
	.align 2, 0
_020028B0: .4byte 0x000002AE
_020028B4: .4byte sub_2002E08
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
	ldr r0, _0200293C @ =sub_2002A48
	b _02002952
	.align 2, 0
_02002938: .4byte 0x000002AE
_0200293C: .4byte sub_2002A48
_02002940:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _02002954
	ldr r1, _02002994 @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _02002998 @ =sub_2002C28
_02002952:
	str r0, [r1, #8]
_02002954:
	adds r0, r4, #0
	bl sub_20029B0
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
	bl sub_2001ACC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_2001ACC
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_2001ACC
	b _020029AA
	.align 2, 0
_02002994: .4byte 0x000002AE
_02002998: .4byte sub_2002C28
_0200299C:
	adds r0, r4, #4
	bl sub_2001ACC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_2001ACC
_020029AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_20029B0
sub_20029B0: @ 0x020029B0
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
	ldr r1, _020029EC @ =gUnk_0200C2C4
	ldr r6, _020029F0 @ =gUnk_03001BF0
	ldr r5, _020029F4 @ =gUnk_030013D0
	cmp r0, #0
	beq _020029FC
	ldr r2, _020029F8 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _02002A04
	.align 2, 0
_020029E8: .4byte 0x000002B3
_020029EC: .4byte gUnk_0200C2C4
_020029F0: .4byte gUnk_03001BF0
_020029F4: .4byte gUnk_030013D0
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

	thumb_func_start sub_2002A48
sub_2002A48: @ 0x02002A48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _02002A6C @ =gUnk_03002560
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
_02002A6C: .4byte gUnk_03002560
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
	bl sub_20029B0
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002BE0
	adds r0, r5, #4
	bl sub_2001ACC
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_2001ACC
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
	ldr r0, _02002C20 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02002C24 @ =sub_2002800
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
_02002C20: .4byte gUnk_03002560
_02002C24: .4byte sub_2002800

	thumb_func_start sub_2002C28
sub_2002C28: @ 0x02002C28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _02002C48 @ =gUnk_03002560
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
_02002C48: .4byte gUnk_03002560
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
	bl sub_20029B0
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _02002D3C
	adds r0, r4, #4
	bl sub_2001ACC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_2001ACC
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
	ldr r2, _02002DA0 @ =gUnk_03002560
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _02002DA4 @ =sub_2002800
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
_02002DA0: .4byte gUnk_03002560
_02002DA4: .4byte sub_2002800
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

	thumb_func_start sub_2002E08
sub_2002E08: @ 0x02002E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02002E30 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02002E34 @ =gUnk_0200C6C0
	cmp r0, #0
	beq _02002E38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02002E3C
	.align 2, 0
_02002E30: .4byte gUnk_03002560
_02002E34: .4byte gUnk_0200C6C0
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
	bl sub_20029B0
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
	bl sub_2001ACC
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_2001ACC
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_2001ACC
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
	ldr r0, _020030EC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020030F0 @ =sub_2002800
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
_020030EC: .4byte gUnk_03002560
_020030F0: .4byte sub_2002800
_020030F4: .4byte 0x000002AD

	thumb_func_start sub_20030F8
sub_20030F8: @ 0x020030F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02003120 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02003124 @ =gUnk_0200C6C0
	cmp r0, #0
	beq _02003128
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200312C
	.align 2, 0
_02003120: .4byte gUnk_03002560
_02003124: .4byte gUnk_0200C6C0
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
	bl sub_20029B0
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
	bl sub_2001ACC
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_2001ACC
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_2001ACC
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
	ldr r0, _020033D8 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020033DC @ =sub_2002800
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
_020033D8: .4byte gUnk_03002560
_020033DC: .4byte sub_2002800
_020033E0: .4byte 0x000002AD

	thumb_func_start sub_20033E4
sub_20033E4: @ 0x020033E4
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

	thumb_func_start sub_2003400
sub_2003400: @ 0x02003400
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
	ldr r0, _020034B8 @ =gUnk_0300041C
	adds r1, r7, #0
	adds r1, #0xd0
	ldr r2, _020034BC @ =gUnk_03000428
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
	bhs _020034C0
	movs r0, #0
	b _020034C2
	.align 2, 0
_020034B8: .4byte gUnk_0300041C
_020034BC: .4byte gUnk_03000428
_020034C0:
	movs r0, #1
_020034C2:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r8, r2
	bne _020034D6
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_020034D6:
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
	ldr r2, _020036CC @ =0x05000011
	mov r0, sp
	adds r1, r7, #0
	str r3, [sp, #0x7c]
	bl CpuSet
	ldr r0, _020036D0 @ =0x06010000
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _020036D4 @ =gUnk_0200D77C
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
	ldr r1, _020036D8 @ =gUnk_0200D80C
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
	bhi _0200358A
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
_0200358A:
	mov r2, r8
	cmp r2, #0
	beq _02003594
	cmp r2, #3
	bne _020035A4
_02003594:
	ldrh r0, [r7, #0x14]
	ldr r1, _020036DC @ =0x0000F83F
	ands r1, r0
	movs r5, #0x98
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r7, #0x14]
_020035A4:
	ldr r0, [r7, #8]
	ldr r1, _020036E0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, _020036CC @ =0x05000011
	str r3, [sp, #0x7c]
	bl CpuSet
	ldr r0, _020036D0 @ =0x06010000
	str r0, [r7, #0x44]
	movs r2, #0xf0
	lsls r2, r2, #2
	ldr r1, [sp, #0x3c]
	strh r2, [r1]
	ldr r1, _020036E4 @ =gUnk_0200D82C
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
	ldr r1, _020036E8 @ =gUnk_0200D904
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
	ldr r2, _020036CC @ =0x05000011
	bl CpuSet
	ldr r3, [sp, #0x7c]
	ldr r0, _020036D0 @ =0x06010000
	str r0, [r3]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	ldr r1, _020036EC @ =gUnk_0200D924
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
	ldr r1, _020036F0 @ =gUnk_0200D984
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
_020036CC: .4byte 0x05000011
_020036D0: .4byte 0x06010000
_020036D4: .4byte gUnk_0200D77C
_020036D8: .4byte gUnk_0200D80C
_020036DC: .4byte 0x0000F83F
_020036E0: .4byte 0xFFFFCFFF
_020036E4: .4byte gUnk_0200D82C
_020036E8: .4byte gUnk_0200D904
_020036EC: .4byte gUnk_0200D924
_020036F0: .4byte gUnk_0200D984

	thumb_func_start sub_20036F4
sub_20036F4: @ 0x020036F4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xd0
	ldrh r0, [r3]
	ldr r2, _0200375C @ =0x0000FEFF
	ands r2, r0
	movs r7, #0
	movs r6, #0
	ldr r0, _02003760 @ =0x0000FDFF
	ands r2, r0
	strh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _02003722
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_02003722:
	ldrh r1, [r3]
	ldr r0, _02003764 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
	adds r5, r4, #0
	adds r5, #0xcc
	ldr r0, [r5]
	cmp r0, #0
	beq _0200373A
	bl sub_20097E0
	str r6, [r5]
_0200373A:
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
_0200375C: .4byte 0x0000FEFF
_02003760: .4byte 0x0000FDFF
_02003764: .4byte 0x0000FFDF

	thumb_func_start sub_2003768
sub_2003768: @ 0x02003768
	ldr r1, _02003784 @ =0x040000D4
	ldr r0, _02003788 @ =gUnk_0200DC98
	str r0, [r1]
	ldr r0, _0200378C @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _02003790 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _02003794 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_02003784: .4byte 0x040000D4
_02003788: .4byte gUnk_0200DC98
_0200378C: .4byte gUnk_03002730
_02003790: .4byte 0x80000100
_02003794: .4byte gUnk_030013D0

	thumb_func_start sub_2003798
sub_2003798: @ 0x02003798
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _020037FC @ =gUnk_03005868
	movs r2, #0
	str r2, [r0]
	ldr r1, _02003800 @ =gUnk_03002620
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _02003804 @ =gUnk_03001E40
	ldr r0, _02003808 @ =0x00001C02
	strh r0, [r1]
	adds r0, #0xff
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _0200380C @ =gUnk_03001478
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r1, _02003810 @ =gUnk_03002610
	movs r0, #8
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _02003814 @ =sub_2003884
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _02003818 @ =nullsub_6
	str r3, [sp]
	movs r3, #0
	bl sub_20096C4
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _0200381C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003820
	.align 2, 0
_020037FC: .4byte gUnk_03005868
_02003800: .4byte gUnk_03002620
_02003804: .4byte gUnk_03001E40
_02003808: .4byte 0x00001C02
_0200380C: .4byte gUnk_03001478
_02003810: .4byte gUnk_03002610
_02003814: .4byte sub_2003884
_02003818: .4byte nullsub_6
_0200381C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003820:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _02003868 @ =0x01000210
	adds r1, r5, #0
	bl CpuSet
	bl sub_200649C
	str r0, [r5, #0xc]
	ldr r0, _0200386C @ =gUnk_03000404
	ldrb r1, [r0]
	ldr r2, _02003870 @ =0x0000041C
	adds r0, r5, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, _02003874 @ =gUnk_03000428
	ldrb r1, [r0]
	ldr r3, _02003878 @ =0x0000041D
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, _0200387C @ =0x0000040E
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _02003880 @ =0x00000416
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
_02003868: .4byte 0x01000210
_0200386C: .4byte gUnk_03000404
_02003870: .4byte 0x0000041C
_02003874: .4byte gUnk_03000428
_02003878: .4byte 0x0000041D
_0200387C: .4byte 0x0000040E
_02003880: .4byte 0x00000416

	thumb_func_start sub_2003884
sub_2003884: @ 0x02003884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x150
	ldr r4, _020038BC @ =gUnk_03002560
	ldr r0, [r4]
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r0, _020038C0 @ =sub_2003C14
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
	beq _020038C4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020038C8
	.align 2, 0
_020038BC: .4byte gUnk_03002560
_020038C0: .4byte sub_2003C14
_020038C4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020038C8:
	adds r1, r1, r0
	str r1, [sp, #0x148]
	ldr r1, [sp, #0x148]
	str r1, [sp, #0x144]
	ldr r0, [r4]
	mov r2, sl
	str r2, [r0, #8]
	ldr r0, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r0, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r1, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r2, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r2, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r1, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r1, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	add r0, sp, #0x118
	ldr r2, _02003BCC @ =0x06010000
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
	bl sub_2009F38
	ldr r0, _02003BD0 @ =gUnk_0200DE98
	ldr r1, _02003BD4 @ =0x0600E000
	bl RLUnCompVram
	ldr r0, _02003BD8 @ =gUnk_0200E304
	ldr r1, _02003BDC @ =0x0600E800
	bl RLUnCompVram
	ldr r0, _02003BE0 @ =gUnk_0200E864
	ldr r1, _02003BE4 @ =0x0600F000
	bl RLUnCompVram
	mov r0, sl
	ldr r1, [sp, #0x144]
	str r0, [r1]
	adds r0, r1, #0
	adds r0, #0x10
	movs r1, #0
	bl sub_2003400
	ldr r0, [sp, #0x144]
	adds r0, #0xfc
	movs r1, #1
	bl sub_2003400
	ldr r2, [sp, #0x144]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #2
	bl sub_2003400
	ldr r2, [sp, #0x144]
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #3
	bl sub_2003400
	add r0, sp, #0x140
	mov r2, sl
	str r2, [r0]
	ldr r1, [sp, #0x144]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r4, r1, r2
	ldr r2, _02003BE8 @ =0x05000011
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _02003BCC @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r0, _02003BEC @ =gUnk_0200D9DC
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
	ldr r1, _02003BF0 @ =0xFFFFCFFF
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
	ldr r2, _02003BF4 @ =0x00000409
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _02003BF8 @ =0x0000040A
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, [sp, #0x144]
	ldr r2, _02003BFC @ =0x0000040B
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _02003C00 @ =0x0000041A
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
	ldr r0, _02003C04 @ =0x0000050A
	cmp r1, r0
	bne _02003B9C
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, [sp, #0x144]
	ldr r2, _02003C08 @ =0x0000041C
	adds r0, r1, r2
	movs r1, #3
	strb r1, [r0]
_02003B9C:
	mov r2, sl
	strb r2, [r5]
	ldr r1, [sp, #0x148]
	ldr r2, _02003C0C @ =0x00000417
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x148]
	ldr r1, _02003C10 @ =0x0000041E
	adds r0, r2, r1
	mov r2, sl
	strh r2, [r0]
	movs r0, #0x23
	bl m4aSongNumStart
	add sp, #0x150
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003BCC: .4byte 0x06010000
_02003BD0: .4byte gUnk_0200DE98
_02003BD4: .4byte 0x0600E000
_02003BD8: .4byte gUnk_0200E304
_02003BDC: .4byte 0x0600E800
_02003BE0: .4byte gUnk_0200E864
_02003BE4: .4byte 0x0600F000
_02003BE8: .4byte 0x05000011
_02003BEC: .4byte gUnk_0200D9DC
_02003BF0: .4byte 0xFFFFCFFF
_02003BF4: .4byte 0x00000409
_02003BF8: .4byte 0x0000040A
_02003BFC: .4byte 0x0000040B
_02003C00: .4byte 0x0000041A
_02003C04: .4byte 0x0000050A
_02003C08: .4byte 0x0000041C
_02003C0C: .4byte 0x00000417
_02003C10: .4byte 0x0000041E

	thumb_func_start sub_2003C14
sub_2003C14: @ 0x02003C14
	push {r4, r5, lr}
	ldr r3, _02003C30 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003C34
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003C38
	.align 2, 0
_02003C30: .4byte gUnk_03002560
_02003C34:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003C38:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _02003C58 @ =0x0000040E
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _02003C60
	cmp r0, #0xb3
	ble _02003CD6
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _02003C5C @ =sub_2003D10
	str r0, [r1, #8]
	b _02003CD6
	.align 2, 0
_02003C58: .4byte 0x0000040E
_02003C5C: .4byte sub_2003D10
_02003C60:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_2001CE0
	ldr r2, _02003CF8 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _02003CFC @ =gUnk_0200E864
	ldr r1, _02003D00 @ =0x0600F000
	bl RLUnCompVram
	bl sub_2005C88
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02003CD6
	ldr r0, _02003D04 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _02003D08 @ =0x0000041D
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_200590C
	movs r5, #0
_02003CAE:
	movs r0, #0xec
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r4, r2
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02003CCC
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_2005B0C
_02003CCC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02003CAE
_02003CD6:
	ldr r2, _02003D0C @ =0x0000040E
	adds r0, r4, r2
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r4, r3
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003CF8: .4byte gUnk_03002620
_02003CFC: .4byte gUnk_0200E864
_02003D00: .4byte 0x0600F000
_02003D04: .4byte 0x0000FFEF
_02003D08: .4byte 0x0000041D
_02003D0C: .4byte 0x0000040E

	thumb_func_start sub_2003D10
sub_2003D10: @ 0x02003D10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _02003D34 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02003D38 @ =sub_2003E58
	cmp r0, #0
	beq _02003D3C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003D40
	.align 2, 0
_02003D34: .4byte gUnk_03002560
_02003D38: .4byte sub_2003E58
_02003D3C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003D40:
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
	ldr r3, _02003E4C @ =0x0000040C
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
	beq _02003D84
	strh r5, [r4]
_02003D84:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _02003D94
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_02003D94:
	adds r7, r6, #0
	adds r7, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_20036F4
	movs r0, #0xfc
	adds r0, r0, r6
	mov r8, r0
	movs r1, #1
	bl sub_20036F4
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	movs r1, #2
	bl sub_20036F4
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r3, r3, r6
	mov sl, r3
	mov r0, sl
	movs r1, #3
	bl sub_20036F4
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	ldr r3, _02003E50 @ =0x0000EFFF
	ands r3, r0
	strh r3, [r2]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _02003DF0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_02003DF0:
	adds r0, r6, #0
	bl sub_2004FEC
	adds r0, r6, #0
	bl sub_20050A0
	ldr r1, _02003E54 @ =0x0000041C
	adds r5, r6, r1
	ldrb r1, [r5]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r4, r6, r3
	ldrh r2, [r4]
	adds r0, r7, #0
	bl sub_20050F4
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, r8
	bl sub_20050F4
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sb
	bl sub_20050F4
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sl
	bl sub_20050F4
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_2001ACC
	adds r0, r6, #0
	bl sub_20055BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003E4C: .4byte 0x0000040C
_02003E50: .4byte 0x0000EFFF
_02003E54: .4byte 0x0000041C

	thumb_func_start sub_2003E58
sub_2003E58: @ 0x02003E58
	push {r4, lr}
	ldr r0, _02003E74 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003E78
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003E7C
	.align 2, 0
_02003E74: .4byte gUnk_03002560
_02003E78:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003E7C:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_200658C
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _02003EA0 @ =gUnk_03002560
	cmp r0, #0
	beq _02003EA8
	ldr r1, [r1]
	ldr r0, _02003EA4 @ =sub_2003EC8
	b _02003EAC
	.align 2, 0
_02003EA0: .4byte gUnk_03002560
_02003EA4: .4byte sub_2003EC8
_02003EA8:
	ldr r1, [r1]
	ldr r0, _02003EC4 @ =sub_20044A8
_02003EAC:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003EC4: .4byte sub_20044A8

	thumb_func_start sub_2003EC8
sub_2003EC8: @ 0x02003EC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _02003EEC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02003EF0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02003EF4
	.align 2, 0
_02003EEC: .4byte gUnk_03002560
_02003EF0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02003EF4:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_2004F50
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _02004000 @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _02003F2E
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_200514C
	ldr r0, [r4, #0xc]
	bl sub_20065BC
_02003F2E:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02003F5C
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _02003F5C
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _02003F5C
	bl sub_2005844
_02003F5C:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_02003F62:
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
	bne _02004036
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _02004036
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02004036
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _02003FB4
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_02003FB4:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _02004036
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _02004000 @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _02004004 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _02004008
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
	b _02004036
	.align 2, 0
_02004000: .4byte 0x00000412
_02004004: .4byte 0x0000040D
_02004008:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _020040A0 @ =gUnk_0200D9A4
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_2006020
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_02004036:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02003F62
	mov r0, sb
	cmp r0, #0
	beq _02004050
	ldr r2, _020040A4 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_02004050:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _02004126
	ldr r5, _020040A8 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _02004126
	movs r5, #0
_02004074:
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
	beq _020040B0
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _020040B0
	ldr r6, _020040AC @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _020040BA
	.align 2, 0
_020040A0: .4byte gUnk_0200D9A4
_020040A4: .4byte 0x0000040D
_020040A8: .4byte 0x00000414
_020040AC: .4byte 0x0000040C
_020040B0:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_020040BA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02004074
	movs r5, #0
_020040C6:
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
	beq _02004102
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02004102
	ldr r1, _020041EC @ =gUnk_0201EA58
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _020041F0 @ =0x0000040C
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
_02004102:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _020040C6
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _020041F4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020041F8 @ =sub_2004204
	str r0, [r1, #8]
_02004126:
	ldr r5, _020041FC @ =0x00000412
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
	beq _0200416A
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r0, r5
	cmp r1, r0
	blt _0200416A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _020041F4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004200 @ =sub_20049A4
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
_0200416A:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020041CA
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020041CA
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020041CA
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020041CA
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _020041F4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004200 @ =sub_20049A4
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
_020041CA:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020041EC: .4byte gUnk_0201EA58
_020041F0: .4byte 0x0000040C
_020041F4: .4byte gUnk_03002560
_020041F8: .4byte sub_2004204
_020041FC: .4byte 0x00000412
_02004200: .4byte sub_20049A4

	thumb_func_start sub_2004204
sub_2004204: @ 0x02004204
	push {r4, r5, r6, r7, lr}
	ldr r0, _02004220 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004224
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004228
	.align 2, 0
_02004220: .4byte gUnk_03002560
_02004224:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004228:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r7, #0
_0200422E:
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
	beq _02004272
	ldr r6, _02004370 @ =0x0000FFFE
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
	beq _02004272
	ldr r0, _02004374 @ =0x00000239
	bl m4aSongNumStart
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #0
	bl sub_2005334
_02004272:
	movs r0, #0xec
	muls r0, r7, r0
	adds r6, r4, r0
	adds r5, r6, #0
	adds r5, #0xec
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _020042C0
	ldr r0, _02004374 @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _02004378 @ =0x0000023A
	bl m4aSongNumStart
	ldrh r0, [r5]
	ldr r2, _0200437C @ =0x0000FFEF
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	adds r2, r6, #0
	adds r2, #0x10
	ldr r0, _02004380 @ =gUnk_0200D77C
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r2, #0x34
	ldrh r0, [r2]
	ldr r3, _02004384 @ =0x0000F7FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
_020042C0:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _02004308
	adds r3, r6, #0
	adds r3, #0x44
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _02004308
	ldr r1, _02004388 @ =0x0000FFDF
	adds r0, r1, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r5]
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _02004380 @ =gUnk_0200D77C
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
_02004308:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0200422E
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200435A
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200435A
	movs r6, #0xb1
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200435A
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200435A
	ldr r0, _0200438C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004390 @ =sub_2004394
	str r0, [r1, #8]
_0200435A:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004370: .4byte 0x0000FFFE
_02004374: .4byte 0x00000239
_02004378: .4byte 0x0000023A
_0200437C: .4byte 0x0000FFEF
_02004380: .4byte gUnk_0200D77C
_02004384: .4byte 0x0000F7FF
_02004388: .4byte 0x0000FFDF
_0200438C: .4byte gUnk_03002560
_02004390: .4byte sub_2004394

	thumb_func_start sub_2004394
sub_2004394: @ 0x02004394
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _020043B4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020043B8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020043BC
	.align 2, 0
_020043B4: .4byte gUnk_03002560
_020043B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020043BC:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_2004F50
	movs r0, #0
	mov r8, r0
_020043C8:
	movs r0, #0xec
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r6, r7, r0
	adds r5, r6, #0
	adds r5, #0xef
	ldrb r0, [r5]
	cmp r0, #0
	beq _02004434
	adds r4, r6, #0
	adds r4, #0xf7
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _02004434
	ldr r0, _02004494 @ =0x0000023B
	bl m4aSongNumStart
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
	bls _02004414
	movs r0, #8
	strb r0, [r3]
_02004414:
	adds r1, r6, #0
	adds r1, #0x54
	ldr r2, _02004498 @ =gUnk_0200D82C
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
_02004434:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _020043C8
	adds r0, r7, #0
	adds r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _0200447A
	ldr r1, _0200449C @ =0x000001DB
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0200447A
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0200447A
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0200447A
	ldr r0, _020044A0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020044A4 @ =sub_20049A4
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
_0200447A:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_2001ACC
	adds r0, r7, #0
	bl sub_20055BC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004494: .4byte 0x0000023B
_02004498: .4byte gUnk_0200D82C
_0200449C: .4byte 0x000001DB
_020044A0: .4byte gUnk_03002560
_020044A4: .4byte sub_20049A4

	thumb_func_start sub_20044A8
sub_20044A8: @ 0x020044A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _020044CC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020044D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020044D4
	.align 2, 0
_020044CC: .4byte gUnk_03002560
_020044D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020044D4:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_2004F50
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _020045E0 @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _0200450E
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_200514C
	ldr r0, [r4, #0xc]
	bl sub_20065BC
_0200450E:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0200453C
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _0200453C
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0200453C
	bl sub_2005844
_0200453C:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_02004542:
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
	bne _02004616
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _02004616
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02004616
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _02004594
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_02004594:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _02004616
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _020045E0 @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _020045E4 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _020045E8
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
	b _02004616
	.align 2, 0
_020045E0: .4byte 0x00000412
_020045E4: .4byte 0x0000040D
_020045E8:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _02004680 @ =gUnk_0200D9A4
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_2006020
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_02004616:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02004542
	mov r0, sb
	cmp r0, #0
	beq _02004630
	ldr r2, _02004684 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_02004630:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _02004706
	ldr r5, _02004688 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _02004706
	movs r5, #0
_02004654:
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
	beq _02004690
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02004690
	ldr r6, _0200468C @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0200469A
	.align 2, 0
_02004680: .4byte gUnk_0200D9A4
_02004684: .4byte 0x0000040D
_02004688: .4byte 0x00000414
_0200468C: .4byte 0x0000040C
_02004690:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_0200469A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _02004654
	movs r5, #0
_020046A6:
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
	beq _020046E2
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _020046E2
	ldr r1, _020047CC @ =gUnk_0201EA58
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _020047D0 @ =0x0000040C
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
_020046E2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _020046A6
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _020047D4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020047D8 @ =sub_20047E4
	str r0, [r1, #8]
_02004706:
	ldr r5, _020047DC @ =0x00000412
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
	beq _0200474A
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r0, r5
	cmp r1, r0
	blt _0200474A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _020047D4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020047E0 @ =sub_20049A4
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
_0200474A:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020047AA
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020047AA
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020047AA
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _020047AA
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _020047D4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020047E0 @ =sub_20049A4
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
_020047AA:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020047CC: .4byte gUnk_0201EA58
_020047D0: .4byte 0x0000040C
_020047D4: .4byte gUnk_03002560
_020047D8: .4byte sub_20047E4
_020047DC: .4byte 0x00000412
_020047E0: .4byte sub_20049A4

	thumb_func_start sub_20047E4
sub_20047E4: @ 0x020047E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _02004804 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004808
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200480C
	.align 2, 0
_02004804: .4byte gUnk_03002560
_02004808:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200480C:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
_02004816:
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
	beq _0200485A
	ldr r6, _02004938 @ =0x0000FFFE
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
	bne _0200485A
	ldr r0, _0200493C @ =0x00000239
	bl m4aSongNumStart
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #1
	bl sub_2005334
_0200485A:
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
	beq _0200489E
	ldr r2, _02004940 @ =0x0000FFEF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	ldr r0, _0200493C @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _02004944 @ =0x0000023A
	bl m4aSongNumStart
	adds r2, r6, #0
	adds r2, #0x10
	ldr r0, _02004948 @ =gUnk_0200D77C
	ldrh r1, [r0, #0x24]
	strh r1, [r2, #0xc]
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_0200489E:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _020048C8
	ldr r6, _0200494C @ =0x0000FFDF
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r5]
	mov r0, r8
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_2005214
	mov r0, sb
	cmp r0, #0
	bne _020048C8
	movs r1, #1
	mov sb, r1
	bl sub_2005714
_020048C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _02004816
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200491A
	movs r6, #0xec
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200491A
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200491A
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200491A
	ldr r0, _02004950 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004954 @ =sub_2004958
	str r0, [r1, #8]
_0200491A:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004938: .4byte 0x0000FFFE
_0200493C: .4byte 0x00000239
_02004940: .4byte 0x0000FFEF
_02004944: .4byte 0x0000023A
_02004948: .4byte gUnk_0200D77C
_0200494C: .4byte 0x0000FFDF
_02004950: .4byte gUnk_03002560
_02004954: .4byte sub_2004958

	thumb_func_start sub_2004958
sub_2004958: @ 0x02004958
	push {r4, lr}
	ldr r3, _02004974 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _02004978 @ =sub_20049A4
	cmp r0, #0
	beq _0200497C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004980
	.align 2, 0
_02004974: .4byte gUnk_03002560
_02004978: .4byte sub_20049A4
_0200497C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004980:
	adds r4, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_20049A4
sub_20049A4: @ 0x020049A4
	push {r4, r5, r6, r7, lr}
	ldr r0, _020049C0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020049C4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020049C8
	.align 2, 0
_020049C0: .4byte gUnk_03002560
_020049C4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020049C8:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_2001FE0
	cmp r0, #0
	bne _02004AC8
	movs r6, #0
_020049D6:
	movs r0, #0xec
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xdc
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _020049F0
	bl sub_20097E0
	movs r0, #0
	str r0, [r4]
_020049F0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _020049D6
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	ldr r1, _02004A30 @ =gUnk_03002560
	cmp r0, #7
	bhi _02004A26
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _02004A26
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _02004A26
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bls _02004A38
_02004A26:
	ldr r1, [r1]
	ldr r0, _02004A34 @ =sub_2004AF0
	str r0, [r1, #8]
	b _02004AC8
	.align 2, 0
_02004A30: .4byte gUnk_03002560
_02004A34: .4byte sub_2004AF0
_02004A38:
	ldr r0, _02004AE0 @ =0x0000041A
	adds r2, r5, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _02004A4E
	movs r0, #7
	strb r0, [r2]
_02004A4E:
	ldr r1, [r1]
	ldr r0, _02004AE4 @ =sub_2003C14
	str r0, [r1, #8]
	movs r6, #0
	ldr r7, _02004AE8 @ =gUnk_0200D77C
_02004A58:
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
	beq _02004A8C
	ldr r0, _02004AEC @ =0x0000FBFF
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
_02004A8C:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _02004ABE
	ldr r2, _02004AE0 @ =0x0000041A
	adds r0, r5, r2
	strb r1, [r0]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02004ABE
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02004ABE
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
_02004ABE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _02004A58
_02004AC8:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_2001ACC
	adds r0, r5, #0
	bl sub_20055BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004AE0: .4byte 0x0000041A
_02004AE4: .4byte sub_2003C14
_02004AE8: .4byte gUnk_0200D77C
_02004AEC: .4byte 0x0000FBFF

	thumb_func_start sub_2004AF0
sub_2004AF0: @ 0x02004AF0
	push {r4, r5, r6, r7, lr}
	ldr r0, _02004B0C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004B10
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004B14
	.align 2, 0
_02004B0C: .4byte gUnk_03002560
_02004B10:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004B14:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_2001FE0
	cmp r0, #0
	beq _02004B22
	b _02004C66
_02004B22:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_2001CE0
	adds r0, r5, #0
	bl sub_2005608
	movs r7, #0
_02004B34:
	movs r0, #0xec
	adds r1, r7, #0
	muls r1, r0, r1
	mov ip, r1
	adds r4, r1, r5
	adds r1, r4, #0
	adds r1, #0x98
	ldr r2, _02004BA8 @ =gUnk_0200D924
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
	ldr r2, _02004BAC @ =gUnk_0200D77C
	adds r7, #1
	cmp r0, #0
	bne _02004BB0
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
	b _02004BF0
	.align 2, 0
_02004BA8: .4byte gUnk_0200D924
_02004BAC: .4byte gUnk_0200D77C
_02004BB0:
	cmp r0, #3
	bne _02004BC8
	ldrh r0, [r2, #0x28]
	strh r0, [r1, #0xc]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	b _02004BF0
_02004BC8:
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
	bl sub_2009F38
	adds r2, r4, #0
	adds r2, #0x44
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_02004BF0:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _02004B34
	ldr r1, _02004C44 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _02004C58
	adds r0, r1, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #8
	bne _02004C50
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r3, _02004C48 @ =0x000002C6
	adds r2, r5, r3
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r2, _02004C4C @ =0x000003B2
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #8
	bne _02004C50
	movs r0, #0x22
	bl m4aSongNumStart
	b _02004C5E
	.align 2, 0
_02004C44: .4byte 0x0000041D
_02004C48: .4byte 0x000002C6
_02004C4C: .4byte 0x000003B2
_02004C50:
	movs r0, #0x21
	bl m4aSongNumStart
	b _02004C5E
_02004C58:
	movs r0, #0x24
	bl m4aSongNumStart
_02004C5E:
	ldr r0, _02004C7C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004C80 @ =sub_2004C84
	str r0, [r1, #8]
_02004C66:
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r5, r3
	bl sub_2001ACC
	adds r0, r5, #0
	bl sub_20055BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004C7C: .4byte gUnk_03002560
_02004C80: .4byte sub_2004C84

	thumb_func_start sub_2004C84
sub_2004C84: @ 0x02004C84
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _02004CA0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004CA4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004CA8
	.align 2, 0
_02004CA0: .4byte gUnk_03002560
_02004CA4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004CA8:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_2001FE0
	cmp r0, #0
	beq _02004CB6
	b _02004DAE
_02004CB6:
	ldr r3, [r5]
	cmp r3, #0
	bne _02004D3C
	ldr r0, _02004CE0 @ =gUnk_03000470
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _02004D02
	ldr r0, _02004CE4 @ =gUnk_03000428
	ldrb r0, [r0]
	ldr r1, _02004CE8 @ =gUnk_0200D704
	cmp r0, #0
	beq _02004CEC
	movs r0, #0x82
	str r0, [sp]
	str r6, [sp, #4]
	b _02004CF2
	.align 2, 0
_02004CE0: .4byte gUnk_03000470
_02004CE4: .4byte gUnk_03000428
_02004CE8: .4byte gUnk_0200D704
_02004CEC:
	movs r0, #0x82
	str r0, [sp]
	str r3, [sp, #4]
_02004CF2:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_20021DC
	str r0, [r5]
	b _02004DAE
_02004D02:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _02004DAE
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _02004D20
	ldr r0, _02004D1C @ =0x00000416
	adds r1, r5, r0
	b _02004D2E
	.align 2, 0
_02004D1C: .4byte 0x00000416
_02004D20:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _02004DAE
	ldr r2, _02004D38 @ =0x00000417
	adds r1, r5, r2
_02004D2E:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _02004DAE
	.align 2, 0
_02004D38: .4byte 0x00000417
_02004D3C:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _02004D50
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004D54
_02004D50:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004D54:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_20033E4
	cmp r0, #0
	beq _02004DAE
	movs r0, #0x10
	movs r1, #1
	bl sub_2001CE0
	ldr r1, _02004D90 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _02004D94 @ =0x0000041C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _02004D98 @ =gUnk_03002560
	cmp r0, #0
	beq _02004DA0
	ldr r1, [r1]
	ldr r0, _02004D9C @ =sub_2004DD4
	str r0, [r1, #8]
	b _02004DAE
	.align 2, 0
_02004D90: .4byte 0x000002AD
_02004D94: .4byte 0x0000041C
_02004D98: .4byte gUnk_03002560
_02004D9C: .4byte sub_2004DD4
_02004DA0:
	ldr r1, [r1]
	ldr r0, _02004DC8 @ =sub_2004E38
	str r0, [r1, #8]
	ldr r0, _02004DCC @ =gUnk_0200EAD8
	ldr r1, _02004DD0 @ =0x0600F000
	bl RLUnCompVram
_02004DAE:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_2001ACC
	adds r0, r5, #0
	bl sub_20055BC
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02004DC8: .4byte sub_2004E38
_02004DCC: .4byte gUnk_0200EAD8
_02004DD0: .4byte 0x0600F000

	thumb_func_start sub_2004DD4
sub_2004DD4: @ 0x02004DD4
	push {r4, r5, lr}
	ldr r0, _02004DF0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004DF4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004DF8
	.align 2, 0
_02004DF0: .4byte gUnk_03002560
_02004DF4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004DF8:
	adds r4, r1, r0
	bl sub_2001FE0
	adds r5, r0, #0
	cmp r5, #0
	bne _02004E18
	bl m4aMPlayAllStop
	ldr r0, _02004E30 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004E34 @ =sub_2003884
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_20097E0
	str r5, [r4]
_02004E18:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_2001ACC
	adds r0, r4, #0
	bl sub_20055BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02004E30: .4byte gUnk_03002560
_02004E34: .4byte sub_2003884

	thumb_func_start sub_2004E38
sub_2004E38: @ 0x02004E38
	push {r4, r5, lr}
	ldr r0, _02004E54 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004E58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004E5C
	.align 2, 0
_02004E54: .4byte gUnk_03002560
_02004E58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004E5C:
	adds r4, r1, r0
	bl sub_2001FE0
	adds r5, r0, #0
	cmp r5, #0
	bne _02004EB8
	ldr r0, [r4]
	bl sub_20097E0
	str r5, [r4]
	ldr r0, [r4, #0xc]
	bl sub_20097E0
	str r5, [r4, #0xc]
	ldr r0, _02004EC0 @ =gUnk_03000400
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _02004E8E
	ldr r2, _02004EC4 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _02004EC8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_02004E8E:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_2001CE0
	ldr r2, _02004EC4 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _02004EC8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _02004ECC @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _02004ED0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _02004ED4 @ =sub_2004ED8
	str r0, [r1, #8]
_02004EB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02004EC0: .4byte gUnk_03000400
_02004EC4: .4byte gUnk_03000470
_02004EC8: .4byte 0x0000FFFD
_02004ECC: .4byte gUnk_03002620
_02004ED0: .4byte gUnk_03002560
_02004ED4: .4byte sub_2004ED8

	thumb_func_start sub_2004ED8
sub_2004ED8: @ 0x02004ED8
	push {lr}
	bl sub_2001FE0
	cmp r0, #0
	bne _02004EE6
	bl sub_200036C
_02004EE6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_2004EEC
sub_2004EEC: @ 0x02004EEC
	push {lr}
	ldr r3, _02004F08 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02004F0C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02004F10
	.align 2, 0
_02004F08: .4byte gUnk_03002560
_02004F0C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02004F10:
	adds r0, r1, r0
	ldr r1, _02004F30 @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _02004F2A
	ldr r0, [r3]
	bl sub_20097E0
_02004F2A:
	pop {r0}
	bx r0
	.align 2, 0
_02004F30: .4byte 0x0000041E

	thumb_func_start nullsub_6
nullsub_6: @ 0x02004F34
	bx lr
	.align 2, 0

	thumb_func_start sub_2004F38
sub_2004F38: @ 0x02004F38
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r0, #0xe4
	ldrh r0, [r0]
	cmp r0, r1
	bne _02004F4A
	movs r2, #1
_02004F4A:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_2004F50
sub_2004F50: @ 0x02004F50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
_02004F5C:
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
	beq _02004FA8
	movs r4, #0
	strh r4, [r1]
	strh r4, [r3]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r6, r0
	ldr r2, _02004FA4 @ =0x00000412
	adds r1, r6, r2
	ldrh r1, [r1]
	bl sub_2004F38
	strh r0, [r7]
	mov r0, r8
	strh r4, [r0]
	b _02004FD0
	.align 2, 0
_02004FA4: .4byte 0x00000412
_02004FA8:
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r2, _02004FE8 @ =gUnk_03000470
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
_02004FD0:
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _02004F5C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02004FE8: .4byte gUnk_03000470

	thumb_func_start sub_2004FEC
sub_2004FEC: @ 0x02004FEC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _02005048 @ =gUnk_03005868
	ldr r0, [r5]
	ldr r1, _0200504C @ =0x00196225
	muls r0, r1, r0
	ldr r4, _02005050 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r3, r0, #0x10
	movs r2, #0xf
	ands r3, r2
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r2
	ldr r2, _02005054 @ =gUnk_0200DBBC
	ldr r4, _02005058 @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r4, _0200505C @ =gUnk_0200D9DC
	ldrb r1, [r1]
	cmp r3, r1
	bhs _02005068
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _02005060 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r0, _02005064 @ =0x000003DF
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
	b _0200508C
	.align 2, 0
_02005048: .4byte gUnk_03005868
_0200504C: .4byte 0x00196225
_02005050: .4byte 0x3C6EF35F
_02005054: .4byte gUnk_0200DBBC
_02005058: .4byte 0x0000041A
_0200505C: .4byte gUnk_0200D9DC
_02005060: .4byte 0x0000FFFE
_02005064: .4byte 0x000003DF
_02005068:
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0200509C @ =0x000003DF
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
_0200508C:
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200509C: .4byte 0x000003DF

	thumb_func_start sub_20050A0
sub_20050A0: @ 0x020050A0
	push {r4, r5, lr}
	ldr r4, _020050E0 @ =gUnk_03005868
	ldr r2, [r4]
	ldr r1, _020050E4 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _020050E8 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _020050EC @ =gUnk_0200DB3C
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _020050F0 @ =0x0000041C
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
_020050E0: .4byte gUnk_03005868
_020050E4: .4byte 0x00196225
_020050E8: .4byte 0x3C6EF35F
_020050EC: .4byte gUnk_0200DB3C
_020050F0: .4byte 0x0000041C

	thumb_func_start sub_20050F4
sub_20050F4: @ 0x020050F4
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
	beq _02005136
	ldr r2, _0200513C @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _02005140 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02005144 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _02005148 @ =gUnk_0200DAFC
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
_02005136:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200513C: .4byte gUnk_03005868
_02005140: .4byte 0x00196225
_02005144: .4byte 0x3C6EF35F
_02005148: .4byte gUnk_0200DAFC

	thumb_func_start sub_200514C
sub_200514C: @ 0x0200514C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _02005180 @ =sub_20051C4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_20096C4
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r4, _02005184 @ =gUnk_03000730
	ldr r7, _02005188 @ =gUnk_03001400
	ldr r3, _0200518C @ =gUnk_03005000
	ldr r6, _02005190 @ =sub_20058F4
	ldr r5, _02005194 @ =gUnk_030013D0
	cmp r2, #0
	beq _02005198
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200519C
	.align 2, 0
_02005180: .4byte sub_20051C4
_02005184: .4byte gUnk_03000730
_02005188: .4byte gUnk_03001400
_0200518C: .4byte gUnk_03005000
_02005190: .4byte sub_20058F4
_02005194: .4byte gUnk_030013D0
_02005198:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200519C:
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

	thumb_func_start sub_20051C4
sub_20051C4: @ 0x020051C4
	push {lr}
	ldr r3, _020051E0 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020051E4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020051E8
	.align 2, 0
_020051E0: .4byte gUnk_03002560
_020051E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020051E8:
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _02005208
	ldr r2, _0200520C @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _02005210 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_20097E0
_02005208:
	pop {r0}
	bx r0
	.align 2, 0
_0200520C: .4byte gUnk_03002620
_02005210: .4byte 0x0000FBFF

	thumb_func_start sub_2005214
sub_2005214: @ 0x02005214
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _02005244 @ =sub_200525C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005248
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _0200524E
	.align 2, 0
_02005244: .4byte sub_200525C
_02005248:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_0200524E:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_200525C
sub_200525C: @ 0x0200525C
	push {r4, r5, lr}
	ldr r5, _02005278 @ =gUnk_03002560
	ldr r2, [r5]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _0200527C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005280
	.align 2, 0
_02005278: .4byte gUnk_03002560
_0200527C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005280:
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _0200529C
	cmp r0, #0x37
	bne _020052C2
	ldr r0, [r4]
	bl sub_2005DF8
	b _020052C2
_0200529C:
	ldr r2, [r4]
	ldr r0, _020052C8 @ =gUnk_0200D77C
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
	ldr r0, _020052CC @ =sub_20052D0
	str r0, [r1, #8]
_020052C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020052C8: .4byte gUnk_0200D77C
_020052CC: .4byte sub_20052D0

	thumb_func_start sub_20052D0
sub_20052D0: @ 0x020052D0
	push {r4, lr}
	ldr r3, _020052EC @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020052F0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020052F4
	.align 2, 0
_020052EC: .4byte gUnk_03002560
_020052F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020052F4:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #4]
	ldr r2, [r4]
	cmp r0, #0x15
	bhi _02005318
	ldr r1, _02005314 @ =gUnk_0200D9C4
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _02005328
	.align 2, 0
_02005314: .4byte gUnk_0200D9C4
_02005318:
	adds r2, #0xdc
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_20097E0
_02005328:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_2005334
sub_2005334: @ 0x02005334
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
	ldr r0, _02005378 @ =sub_2005548
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	adds r3, r5, #0
	adds r3, #0xdf
	cmp r1, #0
	beq _0200537C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02005382
	.align 2, 0
_02005378: .4byte sub_2005548
_0200537C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02005382:
	adds r4, r1, #0
	str r5, [r4, #0x54]
	ldrb r2, [r3]
	ldr r0, _0200547C @ =gUnk_0200D77C
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
	beq _020053BE
	adds r0, r2, #5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_020053BE:
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
	ldr r0, _02005480 @ =gUnk_0200DACC
	add r0, ip
	ldr r0, [r0]
	str r0, [r4, #0x48]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #2
	ldr r7, _02005480 @ =gUnk_0200DACC
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r4, #0x4c]
	ldrh r0, [r3]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r7, r2, #2
	cmp r5, #0
	beq _02005490
	str r6, [sp, #4]
	ldr r2, _02005484 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl CpuSet
	ldr r0, _02005488 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _0200548C @ =gUnk_0200D9DC
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
	b _020054F2
	.align 2, 0
_0200547C: .4byte gUnk_0200D77C
_02005480: .4byte gUnk_0200DACC
_02005484: .4byte 0x05000011
_02005488: .4byte 0x06010000
_0200548C: .4byte gUnk_0200D9DC
_02005490:
	str r5, [sp, #4]
	ldr r2, _02005534 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl CpuSet
	ldr r0, _02005538 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _0200553C @ =gUnk_0200D9DC
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
_020054F2:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _02005500
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
_02005500:
	ldr r0, [r4, #0xc]
	ldr r1, _02005540 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _02005544 @ =gUnk_0200DAEC
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
_02005534: .4byte 0x05000011
_02005538: .4byte 0x06010000
_0200553C: .4byte gUnk_0200D9DC
_02005540: .4byte 0xFFFFCFFF
_02005544: .4byte gUnk_0200DAEC

	thumb_func_start sub_2005548
sub_2005548: @ 0x02005548
	push {r4, lr}
	ldr r0, _02005564 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005568
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _0200556C
	.align 2, 0
_02005564: .4byte gUnk_03002560
_02005568:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_0200556C:
	adds r4, r1, r0
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _0200557C
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_0200557C:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _02005588
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_02005588:
	adds r0, r4, #0
	bl sub_2001C24
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _020055AE
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _020055AE
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _020055B4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
_020055AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020055B4: .4byte gUnk_03002560

	thumb_func_start nullsub_7
nullsub_7: @ 0x020055B8
	bx lr
	.align 2, 0

	thumb_func_start sub_20055BC
sub_20055BC: @ 0x020055BC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_020055C2:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_2001ACC
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _020055E6
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_2001ACC
_020055E6:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _020055F8
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_2001ACC
_020055F8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _020055C2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_2005608
sub_2005608: @ 0x02005608
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
	ldr r4, _02005650 @ =0x000002C6
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r2, _02005654 @ =0x000003B2
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r6, #0
_02005632:
	movs r7, #0
	mov r0, sp
	ldrb r3, [r0]
	ldrb r4, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _02005658
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r4, r0
	bgt _02005660
	b _02005666
	.align 2, 0
_02005650: .4byte 0x000002C6
_02005654: .4byte 0x000003B2
_02005658:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r4, r0
	ble _02005666
_02005660:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _02005676
_02005666:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _0200567C
	mov r0, sp
	ldrb r0, [r0, #2]
_02005676:
	cmp r3, r0
	bgt _02005684
	b _0200568A
_0200567C:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _0200568A
_02005684:
	mov r0, sp
	ldrb r0, [r0]
	b _020056C6
_0200568A:
	mov r0, sp
	ldrb r3, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _020056A2
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r3, r0
	bgt _020056AA
	b _020056B0
_020056A2:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _020056B0
_020056AA:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _020056C6
_020056B0:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _020056C2
	mov r0, sp
	ldrb r0, [r0, #2]
	b _020056C6
_020056C2:
	mov r0, sp
	ldrb r0, [r0, #3]
_020056C6:
	mov ip, r0
	movs r3, #0
_020056CA:
	movs r0, #0xec
	muls r0, r3, r0
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp ip, r1
	bne _020056F8
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
_020056F8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _020056CA
	adds r0, r6, r7
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _02005632
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_2005714
sub_2005714: @ 0x02005714
	push {lr}
	sub sp, #4
	ldr r0, _02005740 @ =sub_2005754
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005744
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _0200574A
	.align 2, 0
_02005740: .4byte sub_2005754
_02005744:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_0200574A:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_2005754
sub_2005754: @ 0x02005754
	push {r4, lr}
	ldr r0, _02005770 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005774
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005778
	.align 2, 0
_02005770: .4byte gUnk_03002560
_02005774:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005778:
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _02005794
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _020057A0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _020057A4 @ =sub_20057A8
	str r0, [r1, #8]
_02005794:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020057A0: .4byte gUnk_03002560
_020057A4: .4byte sub_20057A8

	thumb_func_start sub_20057A8
sub_20057A8: @ 0x020057A8
	push {r4, r5, r6, lr}
	ldr r6, _020057C8 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _020057CC @ =gUnk_03002610
	ldr r4, _020057D0 @ =gUnk_0200DC3C
	ldr r5, _020057D4 @ =gUnk_0200DC4B
	cmp r0, #0
	beq _020057D8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020057DC
	.align 2, 0
_020057C8: .4byte gUnk_03002560
_020057CC: .4byte gUnk_03002610
_020057D0: .4byte gUnk_0200DC3C
_020057D4: .4byte gUnk_0200DC4B
_020057D8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020057DC:
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
	bls _0200583C
	movs r0, #8
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6]
	bl sub_20097E0
_0200583C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_2005844
sub_2005844: @ 0x02005844
	push {lr}
	sub sp, #4
	ldr r0, _02005870 @ =sub_2005884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005874
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _0200587A
	.align 2, 0
_02005870: .4byte sub_2005884
_02005874:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_0200587A:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_2005884
sub_2005884: @ 0x02005884
	push {r4, r5, r6, lr}
	ldr r6, _020058A4 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _020058A8 @ =gUnk_03002610
	ldr r4, _020058AC @ =gUnk_0200DC5A
	ldr r5, _020058B0 @ =gUnk_0200DC69
	cmp r0, #0
	beq _020058B4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020058B8
	.align 2, 0
_020058A4: .4byte gUnk_03002560
_020058A8: .4byte gUnk_03002610
_020058AC: .4byte gUnk_0200DC5A
_020058B0: .4byte gUnk_0200DC69
_020058B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020058B8:
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
	bls _020058EC
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r6]
	bl sub_20097E0
_020058EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_20058F4
sub_20058F4: @ 0x020058F4
	push {lr}
	ldr r0, _02005904 @ =gUnk_0200E9F0
	ldr r1, _02005908 @ =0x0600F000
	bl RLUnCompVram
	pop {r0}
	bx r0
	.align 2, 0
_02005904: .4byte gUnk_0200E9F0
_02005908: .4byte 0x0600F000

	thumb_func_start sub_200590C
sub_200590C: @ 0x0200590C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02005944 @ =sub_2005A94
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005948
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _0200594E
	.align 2, 0
_02005944: .4byte sub_2005A94
_02005948:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_0200594E:
	adds r4, r0, #0
	adds r0, #0x54
	movs r7, #0
	strh r7, [r0]
	ldr r0, _02005A0C @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _02005A10 @ =0xFF00FFFF
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
	beq _02005A1C
	str r7, [sp, #4]
	ldr r2, _02005A14 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005A18 @ =0x06010000
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
	b _02005A72
	.align 2, 0
_02005A0C: .4byte 0xFFFF0000
_02005A10: .4byte 0xFF00FFFF
_02005A14: .4byte 0x05000011
_02005A18: .4byte 0x06010000
_02005A1C:
	str r5, [sp, #4]
	ldr r2, _02005A8C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005A90 @ =0x06010000
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
_02005A72:
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
_02005A8C: .4byte 0x05000011
_02005A90: .4byte 0x06010000

	thumb_func_start sub_2005A94
sub_2005A94: @ 0x02005A94
	push {r4, lr}
	ldr r0, _02005AB0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005AB4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005AB8
	.align 2, 0
_02005AB0: .4byte gUnk_03002560
_02005AB4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005AB8:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_2001C24
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _02005ADA
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_02005ADA:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02005B00
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _02005AF8
	subs r0, #1
	strh r0, [r1]
	b _02005B00
_02005AF8:
	ldr r0, _02005B08 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
_02005B00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005B08: .4byte gUnk_03002560

	thumb_func_start sub_2005B0C
sub_2005B0C: @ 0x02005B0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02005B44 @ =sub_2001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005B48
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _02005B4E
	.align 2, 0
_02005B44: .4byte sub_2001C68
_02005B48:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_02005B4E:
	adds r4, r1, #0
	ldr r0, _02005C04 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _02005C08 @ =0xFF00FFFF
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
	beq _02005C14
	str r7, [sp, #4]
	ldr r2, _02005C0C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005C10 @ =0x06010000
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
	b _02005C6A
	.align 2, 0
_02005C04: .4byte 0xFFFF0000
_02005C08: .4byte 0xFF00FFFF
_02005C0C: .4byte 0x05000011
_02005C10: .4byte 0x06010000
_02005C14:
	str r5, [sp, #4]
	ldr r2, _02005C80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005C84 @ =0x06010000
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
_02005C6A:
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
_02005C80: .4byte 0x05000011
_02005C84: .4byte 0x06010000

	thumb_func_start sub_2005C88
sub_2005C88: @ 0x02005C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _02005CBC @ =sub_2001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _02005CC0
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _02005CC6
	.align 2, 0
_02005CBC: .4byte sub_2001C68
_02005CC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_02005CC6:
	ldr r0, _02005D78 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _02005D7C @ =0xFF00FFFF
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
	beq _02005D88
	str r7, [sp, #4]
	ldr r2, _02005D80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005D84 @ =0x06010000
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
	b _02005DDE
	.align 2, 0
_02005D78: .4byte 0xFFFF0000
_02005D7C: .4byte 0xFF00FFFF
_02005D80: .4byte 0x05000011
_02005D84: .4byte 0x06010000
_02005D88:
	str r5, [sp, #4]
	ldr r2, _02005DF0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005DF4 @ =0x06010000
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
_02005DDE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005DF0: .4byte 0x05000011
_02005DF4: .4byte 0x06010000

	thumb_func_start sub_2005DF8
sub_2005DF8: @ 0x02005DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _02005E30 @ =sub_2005F70
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02005E34
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _02005E3A
	.align 2, 0
_02005E30: .4byte sub_2005F70
_02005E34:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_02005E3A:
	adds r5, r0, #0
	ldr r0, [sp, #8]
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, _02005EF0 @ =0xFFFF0000
	ands r7, r0
	ldr r0, _02005EF4 @ =0xFF00FFFF
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
	beq _02005F00
	str r6, [sp, #4]
	ldr r2, _02005EF8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005EFC @ =0x06010000
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
	b _02005F52
	.align 2, 0
_02005EF0: .4byte 0xFFFF0000
_02005EF4: .4byte 0xFF00FFFF
_02005EF8: .4byte 0x05000011
_02005EFC: .4byte 0x06010000
_02005F00:
	str r4, [sp, #4]
	ldr r2, _02005F68 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02005F6C @ =0x06010000
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
_02005F52:
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
_02005F68: .4byte 0x05000011
_02005F6C: .4byte 0x06010000

	thumb_func_start sub_2005F70
sub_2005F70: @ 0x02005F70
	push {r4, r5, r6, lr}
	ldr r0, _02005F8C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02005F90
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02005F94
	.align 2, 0
_02005F8C: .4byte gUnk_03002560
_02005F90:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02005F94:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_2001C24
	adds r3, r4, #0
	adds r3, #0x59
	movs r5, #0
	ldrsb r5, [r3, r5]
	cmp r5, #0
	bne _02005FCC
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _02006016
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strb r5, [r2]
	b _02006016
_02005FCC:
	cmp r5, #1
	bne _02005FFE
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _02006016
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
	b _02006016
_02005FFE:
	cmp r5, #2
	bne _02006016
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02006016
	ldr r0, _0200601C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
_02006016:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200601C: .4byte gUnk_03002560

	thumb_func_start sub_2006020
sub_2006020: @ 0x02006020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	adds r4, r1, #0
	mov r8, r2
	ldr r0, _0200605C @ =sub_20061D0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_20096C4
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02006060
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006064
	.align 2, 0
_0200605C: .4byte sub_20061D0
_02006060:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006064:
	adds r0, r1, r0
	adds r5, r0, #0
	ldr r0, _02006118 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _0200611C @ =0xFF00FFFF
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
	beq _02006128
	str r7, [sp, #4]
	ldr r2, _02006120 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006124 @ =0x06010000
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
	b _0200617A
	.align 2, 0
_02006118: .4byte 0xFFFF0000
_0200611C: .4byte 0xFF00FFFF
_02006120: .4byte 0x05000011
_02006124: .4byte 0x06010000
_02006128:
	str r4, [sp, #4]
	ldr r2, _020061C0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _020061C4 @ =0x06010000
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
_0200617A:
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _020061C8 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _020061CC @ =0x0000F83F
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
_020061C0: .4byte 0x05000011
_020061C4: .4byte 0x06010000
_020061C8: .4byte 0xFFFFCFFF
_020061CC: .4byte 0x0000F83F

	thumb_func_start sub_20061D0
sub_20061D0: @ 0x020061D0
	push {lr}
	ldr r0, _020061EC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020061F0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020061F4
	.align 2, 0
_020061EC: .4byte gUnk_03002560
_020061F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020061F4:
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0200620C
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0200620C:
	adds r0, r1, #0
	bl sub_2001C24
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_2006218
sub_2006218: @ 0x02006218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _02006250 @ =sub_2001C68
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _02006254
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _0200625A
	.align 2, 0
_02006250: .4byte sub_2001C68
_02006254:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
_0200625A:
	ldr r0, _02006304 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _02006308 @ =0xFF00FFFF
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
	beq _02006314
	str r7, [sp, #4]
	ldr r2, _0200630C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _02006310 @ =0x06010000
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
	b _02006366
	.align 2, 0
_02006304: .4byte 0xFFFF0000
_02006308: .4byte 0xFF00FFFF
_0200630C: .4byte 0x05000011
_02006310: .4byte 0x06010000
_02006314:
	str r4, [sp, #4]
	ldr r2, _02006378 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0200637C @ =0x06010000
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
_02006366:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006378: .4byte 0x05000011
_0200637C: .4byte 0x06010000

	thumb_func_start sub_2006380
sub_2006380: @ 0x02006380
	push {lr}
	sub sp, #4
	ldr r0, _020063AC @ =sub_20063C8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_20096C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _020063B0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _020063B6
	.align 2, 0
_020063AC: .4byte sub_20063C8
_020063B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_020063B6:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_20063C8
sub_20063C8: @ 0x020063C8
	push {r4, r5, r6, lr}
	ldr r0, _020063E4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020063E8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020063EC
	.align 2, 0
_020063E4: .4byte gUnk_03002560
_020063E8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020063EC:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _02006490
	ldr r2, _02006430 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _02006434 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _02006438 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _0200643C @ =gUnk_0200DC78
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
	beq _02006440
	movs r0, #3
	ands r2, r0
	adds r0, r6, r2
	b _02006446
	.align 2, 0
_02006430: .4byte gUnk_03005868
_02006434: .4byte 0x00196225
_02006438: .4byte 0x3C6EF35F
_0200643C: .4byte gUnk_0200DC78
_02006440:
	movs r0, #3
	ands r2, r0
	subs r0, r6, r2
_02006446:
	strb r0, [r4]
	movs r0, #1
	ands r5, r0
	lsrs r1, r3, #4
	ldrb r2, [r4, #1]
	ldrb r6, [r4]
	cmp r5, #0
	beq _0200645E
	movs r0, #3
	ands r1, r0
	adds r0, r2, r1
	b _02006464
_0200645E:
	movs r0, #3
	ands r1, r0
	subs r0, r2, r1
_02006464:
	strb r0, [r4, #1]
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	lsls r0, r6, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_2006218
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _02006490
	ldr r0, _0200648C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_20097E0
	b _02006496
	.align 2, 0
_0200648C: .4byte gUnk_03002560
_02006490:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_02006496:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_200649C
sub_200649C: @ 0x0200649C
	push {lr}
	sub sp, #4
	ldr r0, _020064C8 @ =sub_20064E4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_20096C4
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _020064CC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _020064D0
	.align 2, 0
_020064C8: .4byte sub_20064E4
_020064CC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_020064D0:
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

	thumb_func_start sub_20064E4
sub_20064E4: @ 0x020064E4
	push {r4, lr}
	ldr r3, _02006500 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _02006504
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _02006508
	.align 2, 0
_02006500: .4byte gUnk_03002560
_02006504:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_02006508:
	adds r4, r1, r0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200651C
	ldr r0, [r3]
	bl sub_20097E0
	b _0200654C
_0200651C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0200654C
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0200654C
	bl sub_2006380
	ldr r2, _02006554 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _02006558 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0200655C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_0200654C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006554: .4byte gUnk_03005868
_02006558: .4byte 0x00196225
_0200655C: .4byte 0x3C6EF35F

	thumb_func_start sub_2006560
sub_2006560: @ 0x02006560
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _02006578
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _0200657E
_02006578:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_0200657E:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_200658C
sub_200658C: @ 0x0200658C
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _020065A4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _020065AA
_020065A4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_020065AA:
	ldrh r1, [r2]
	ldr r0, _020065B8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_020065B8: .4byte 0x0000FFFD

	thumb_func_start sub_20065BC
sub_20065BC: @ 0x020065BC
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _020065D4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _020065DA
_020065D4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_020065DA:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

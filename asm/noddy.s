	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateNoddy
CreateNoddy: @ 0x080C2200
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C2234 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C2238 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C223C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C2244
	.align 2, 0
_080C2234: .4byte ObjectMain
_080C2238: .4byte ObjectDestroy
_080C223C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C2244:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C2264
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C226C
_080C2264:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C226C:
	str r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _080C22A8
	cmp r0, #1
	beq _080C22C8
	b _080C22CE
_080C22A8:
	ldr r2, _080C22C4 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	b _080C22CE
	.align 2, 0
_080C22C4: .4byte gUnk_08351648
_080C22C8:
	adds r0, r5, #0
	bl sub_080C2978
_080C22CE:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C22E4
sub_080C22E4: @ 0x080C22E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080C22FA
	adds r0, r4, #0
	bl sub_080C2978
	b _080C2332
_080C22FA:
	ldr r2, _080C2338 @ =sub_080C233C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x87
	ldrb r3, [r1]
	lsls r0, r3
	strh r0, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C2322
	subs r1, #4
	movs r0, #1
	strb r0, [r1]
_080C2322:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2332
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C2332:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2338: .4byte sub_080C233C

	thumb_func_start sub_080C233C
sub_080C233C: @ 0x080C233C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C2366
	eors r2, r5
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C2366:
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C238C
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C238C
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C238C:
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x87
	movs r0, #0x78
	ldrb r2, [r2]
	lsls r0, r2
	cmp r1, r0
	ble _080C23A4
	adds r0, r4, #0
	bl sub_080C2900
_080C23A4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C23B0
sub_080C23B0: @ 0x080C23B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C23D0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080C23D0:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xe2
	ble _080C23DE
	adds r0, r4, #0
	bl sub_080C293C
_080C23DE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C241A
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x78
	ble _080C241A
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C240C
	ldr r0, _080C2408 @ =0x00005FFF
	cmp r2, r0
	ble _080C2414
	b _080C241A
	.align 2, 0
_080C2408: .4byte 0x00005FFF
_080C240C:
	subs r1, r1, r0
	ldr r0, _080C2434 @ =0x00005FFF
	cmp r1, r0
	bgt _080C241A
_080C2414:
	adds r0, r4, #0
	bl sub_080C293C
_080C241A:
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080C2426
	adds r0, r4, #0
	bl sub_080C2438
_080C2426:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2434: .4byte 0x00005FFF

	thumb_func_start sub_080C2438
sub_080C2438: @ 0x080C2438
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080C246C @ =sub_080C25CC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C2470 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C2474
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C247C
	.align 2, 0
_080C246C: .4byte sub_080C25CC
_080C2470: .4byte sub_0803DCCC
_080C2474:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C247C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0x20
	strh r2, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C24BE
	ldr r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x34]
	rsbs r0, r2, #0
	strh r0, [r4, #0x3c]
	b _080C24CE
_080C24BE:
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	ldr r2, _080C255C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080C24CE:
	ldr r0, _080C2560 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r2, r6, #0
	adds r2, #0x56
	movs r0, #1
	ldrb r2, [r2]
	lsls r0, r2
	movs r2, #0x10
	mov r8, r2
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _080C24F4
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080C24F4:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080C2564 @ =0x00000322
	movs r0, #6
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r0, #0
	mov ip, r0
	mov r1, ip
	strb r1, [r5]
	ldr r3, [r6, #0xc]
	mov r2, r8
	ands r3, r2
	cmp r3, #0
	beq _080C257A
	ldr r2, _080C2568 @ =gKirbys
	ldr r0, _080C256C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C2574
	ldr r0, _080C2570 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C25BE
	adds r0, r4, #0
	b _080C25A8
	.align 2, 0
_080C255C: .4byte 0xFFFFF400
_080C2560: .4byte gUnk_03000510
_080C2564: .4byte 0x00000322
_080C2568: .4byte gKirbys
_080C256C: .4byte gUnk_0203AD3C
_080C2570: .4byte gUnk_08351648
_080C2574:
	mov r2, ip
	strb r2, [r5]
	b _080C25BE
_080C257A:
	ldr r2, _080C25B4 @ =gKirbys
	ldr r0, _080C25B8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C25BC
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C25BE
	adds r0, r7, #0
_080C25A8:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080C25BE
	.align 2, 0
_080C25B4: .4byte gKirbys
_080C25B8: .4byte gUnk_0203AD3C
_080C25BC:
	strb r3, [r5]
_080C25BE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C25CC
sub_080C25CC: @ 0x080C25CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080C25EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C25F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C25F8
	.align 2, 0
_080C25EC: .4byte gCurTask
_080C25F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C25F8:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080C2610
	ldr r0, [r2]
	bl TaskDestroy
	b _080C28F6
_080C2610:
	ldr r2, _080C2678 @ =gKirbys
	ldr r0, _080C267C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C26C0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080C2688
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080C26E6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #1
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080C2680 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C2684 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080C26E6
	.align 2, 0
_080C2678: .4byte gKirbys
_080C267C: .4byte gUnk_0203AD3C
_080C2680: .4byte 0xFFF7FFFF
_080C2684: .4byte 0x0400000A
_080C2688:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080C26E6
	movs r0, #1
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080C26B8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C26BC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C26E6
	.align 2, 0
_080C26B8: .4byte 0xFFF7FFFF
_080C26BC: .4byte 0x0400000A
_080C26C0:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080C26DC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080C26DC
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080C26DC:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080C26E6:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080C273A
	ldr r2, _080C2724 @ =gKirbys
	ldr r0, _080C2728 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080C2730
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C2792
	ldr r0, _080C272C @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080C2764
	.align 2, 0
_080C2724: .4byte gKirbys
_080C2728: .4byte gUnk_0203AD3C
_080C272C: .4byte gUnk_08351648
_080C2730:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	b _080C2792
_080C273A:
	ldr r2, _080C2780 @ =gKirbys
	ldr r0, _080C2784 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080C278C
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C2792
	ldr r6, _080C2788 @ =0x00000322
_080C2764:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C2792
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080C2792
	.align 2, 0
_080C2780: .4byte gKirbys
_080C2784: .4byte gUnk_0203AD3C
_080C2788: .4byte 0x00000322
_080C278C:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080C2792:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080C27E4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C27B0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C27B0
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080C27B0:
	cmp r3, #0
	beq _080C27E4
	ldr r0, _080C27E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C2850
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C2850
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080C28F6
	.align 2, 0
_080C27E0: .4byte gUnk_03000510
_080C27E4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080C2848 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080C2822
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #4
_080C2822:
	ldr r0, _080C284C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C2850
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C2850
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080C28F6
	.align 2, 0
_080C2848: .4byte gKirbys
_080C284C: .4byte gUnk_03000510
_080C2850:
	ldr r0, _080C28C4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _080C2894
	ldr r6, _080C28C8 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080C28CC @ =gUnk_02026D50
_080C2862:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080C288C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C28A6
_080C288C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C2862
_080C2894:
	movs r0, #1
	cmp r0, #0
	beq _080C28A6
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080C28A6:
	mov r0, ip
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080C28D0
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080C28F6
	.align 2, 0
_080C28C4: .4byte gUnk_0203AD44
_080C28C8: .4byte gCurLevelInfo
_080C28CC: .4byte gUnk_02026D50
_080C28D0:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C28F0
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080C28F0:
	adds r0, r5, #0
	bl sub_0806FAC8
_080C28F6:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2900
sub_080C2900: @ 0x080C2900
	push {lr}
	ldr r2, _080C2910 @ =sub_080C2914
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C2910: .4byte sub_080C2914

	thumb_func_start sub_080C2914
sub_080C2914: @ 0x080C2914
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2930
	adds r0, r4, #0
	bl sub_080C29A4
_080C2930:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C293C
sub_080C293C: @ 0x080C293C
	push {lr}
	ldr r2, _080C294C @ =sub_080C2950
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C294C: .4byte sub_080C2950

	thumb_func_start sub_080C2950
sub_080C2950: @ 0x080C2950
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C296C
	adds r0, r4, #0
	bl sub_080C22E4
_080C296C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2978
sub_080C2978: @ 0x080C2978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C2990 @ =sub_080C2994
	movs r1, #3
	bl ObjectSetFunc
	adds r4, #0x52
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2990: .4byte sub_080C2994

	thumb_func_start sub_080C2994
sub_080C2994: @ 0x080C2994
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr

	thumb_func_start sub_080C29A4
sub_080C29A4: @ 0x080C29A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C29BC @ =sub_080C23B0
	movs r1, #3
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C29BC: .4byte sub_080C23B0

	thumb_func_start sub_080C29C0
sub_080C29C0: @ 0x080C29C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, [r5, #0x40]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x44]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	movs r4, #0
	ldr r1, _080C29EC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C29F0 @ =gUnk_020229E0
	b _080C2A08
	.align 2, 0
_080C29EC: .4byte gUnk_020229D4
_080C29F0: .4byte gUnk_020229E0
_080C29F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C2A10
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C2A08:
	cmp r0, #0
	bne _080C29F4
	orrs r2, r3
	str r2, [r1]
_080C2A10:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa2
	strb r0, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

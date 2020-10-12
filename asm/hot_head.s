	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateHotHead
CreateHotHead: @ 0x080C30C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C30F4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C30F8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C30FC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3104
	.align 2, 0
_080C30F4: .4byte ObjectMain
_080C30F8: .4byte ObjectDestroy
_080C30FC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3104:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C3124
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C312C
_080C3124:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C312C:
	str r0, [r4, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C321A
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080C3184
	ldr r0, _080C3180 @ =0x00005FFF
	cmp r2, r0
	ble _080C318C
	b _080C3200
	.align 2, 0
_080C3180: .4byte 0x00005FFF
_080C3184:
	subs r1, r0, r3
	ldr r0, _080C31A0 @ =0x00005FFF
	cmp r1, r0
	bgt _080C3200
_080C318C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C31A8
	ldr r0, _080C31A4 @ =0x00003FFF
	cmp r2, r0
	ble _080C31B0
	b _080C3200
	.align 2, 0
_080C31A0: .4byte 0x00005FFF
_080C31A4: .4byte 0x00003FFF
_080C31A8:
	subs r1, r1, r0
	ldr r0, _080C31D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080C3200
_080C31B0:
	ldr r2, _080C31D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C31D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C31DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C31E0
	adds r0, r4, #0
	bl sub_080C3F2C
	b _080C321A
	.align 2, 0
_080C31D0: .4byte 0x00003FFF
_080C31D4: .4byte gRngVal
_080C31D8: .4byte 0x00196225
_080C31DC: .4byte 0x3C6EF35F
_080C31E0:
	ldr r2, _080C31FC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _080C321A
	.align 2, 0
_080C31FC: .4byte gUnk_08351648
_080C3200:
	ldr r2, _080C3230 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_080C321A:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C3230: .4byte gUnk_08351648

	thumb_func_start sub_080C3234
sub_080C3234: @ 0x080C3234
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3254 @ =sub_080C3294
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C3258
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080C325E
	.align 2, 0
_080C3254: .4byte sub_080C3294
_080C3258:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
_080C325E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3272
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C3272:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3280
	movs r0, #0x2d
	b _080C3282
_080C3280:
	movs r0, #0x5a
_080C3282:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C3294
sub_080C3294: @ 0x080C3294
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C339E
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C32CA
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C32CA:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C3382
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C32E4
	movs r0, #0x1e
	b _080C32E6
_080C32E4:
	movs r0, #0x3c
_080C32E6:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080C3308
	ldr r0, _080C3304 @ =0x00005FFF
	cmp r2, r0
	ble _080C3310
	b _080C3364
	.align 2, 0
_080C3304: .4byte 0x00005FFF
_080C3308:
	subs r1, r0, r3
	ldr r0, _080C3324 @ =0x00005FFF
	cmp r1, r0
	bgt _080C3364
_080C3310:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C332C
	ldr r0, _080C3328 @ =0x00003FFF
	cmp r2, r0
	ble _080C3334
	b _080C3364
	.align 2, 0
_080C3324: .4byte 0x00005FFF
_080C3328: .4byte 0x00003FFF
_080C332C:
	subs r1, r1, r0
	ldr r0, _080C3354 @ =0x00003FFF
	cmp r1, r0
	bgt _080C3364
_080C3334:
	ldr r2, _080C3358 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C335C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C3360 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3382
	adds r0, r4, #0
	bl sub_080C3F2C
	b _080C3382
	.align 2, 0
_080C3354: .4byte 0x00003FFF
_080C3358: .4byte gRngVal
_080C335C: .4byte 0x00196225
_080C3360: .4byte 0x3C6EF35F
_080C3364:
	ldr r2, _080C33A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C33A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C33AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C3382
	adds r0, r4, #0
	bl sub_080C3F2C
_080C3382:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	bls _080C339E
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080C33B0
_080C339E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C33A4: .4byte gRngVal
_080C33A8: .4byte 0x00196225
_080C33AC: .4byte 0x3C6EF35F

	thumb_func_start sub_080C33B0
sub_080C33B0: @ 0x080C33B0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080C33E0 @ =sub_080C34D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C33E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C33E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C33F0
	.align 2, 0
_080C33E0: .4byte sub_080C34D4
_080C33E4: .4byte sub_0803DCCC
_080C33E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C33F0:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r4, #0x3c]
	ldr r0, _080C345C @ =0x0000FF80
	strh r0, [r4, #0x3e]
	ldr r2, _080C3460 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C3464 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C3468 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r4, #0x38]
	adds r1, #0xc
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	subs r1, r1, r0
	str r1, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C346C
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4, #0x34]
	rsbs r0, r3, #0
	strh r0, [r4, #0x3c]
	b _080C3474
	.align 2, 0
_080C345C: .4byte 0x0000FF80
_080C3460: .4byte gRngVal
_080C3464: .4byte 0x00196225
_080C3468: .4byte 0x3C6EF35F
_080C346C:
	ldr r0, [r4, #0x34]
	ldr r1, _080C34C4 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r4, #0x34]
_080C3474:
	ldr r0, _080C34C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C349A
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080C349A:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080C34CC @ =0x06012000
	ldr r3, _080C34D0 @ =0x00000297
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C34C4: .4byte 0xFFFFFC00
_080C34C8: .4byte gUnk_03000510
_080C34CC: .4byte 0x06012000
_080C34D0: .4byte 0x00000297

	thumb_func_start sub_080C34D4
sub_080C34D4: @ 0x080C34D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _080C34F4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080C34F8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3500
	.align 2, 0
_080C34F4: .4byte gCurTask
_080C34F8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3500:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080C351C
	ldr r0, [r5]
	bl TaskDestroy
	b _080C3688
_080C351C:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080C3568
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C3534
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080C3534
	str r4, [r3, #0x44]
	movs r1, #0
_080C3534:
	cmp r1, #0
	beq _080C3568
	ldr r0, _080C3564 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C35D8
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C35D8
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080C3688
	.align 2, 0
_080C3564: .4byte gUnk_03000510
_080C3568:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080C35D0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080C35AA
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #4
_080C35AA:
	ldr r0, _080C35D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C35D8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C35D8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080C3688
	.align 2, 0
_080C35D0: .4byte gUnk_02020EE0
_080C35D4: .4byte gUnk_03000510
_080C35D8:
	ldr r0, _080C3644 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C361C
	ldr r6, _080C3648 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080C364C @ =gUnk_02026D50
_080C35EA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080C3614
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C362E
_080C3614:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C35EA
_080C361C:
	movs r0, #1
	cmp r0, #0
	beq _080C362E
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080C362E:
	ldrh r4, [r3, #6]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080C3650
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r4
	strh r0, [r3, #6]
	b _080C3688
	.align 2, 0
_080C3644: .4byte gUnk_0203AD44
_080C3648: .4byte gCurLevelInfo
_080C364C: .4byte gUnk_02026D50
_080C3650:
	ldr r2, _080C3690 @ =gUnk_0835552C
	ldrh r1, [r3, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	adds r1, #1
	strh r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080C3682
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080C3682:
	adds r0, r3, #0
	bl sub_0806FAC8
_080C3688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3690: .4byte gUnk_0835552C

	thumb_func_start sub_080C3694
sub_080C3694: @ 0x080C3694
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080C36C8 @ =sub_080C3880
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C36CC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C36D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C36D8
	.align 2, 0
_080C36C8: .4byte sub_080C3880
_080C36CC: .4byte sub_0803DCCC
_080C36D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C36D8:
	adds r5, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r1, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C3794 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C3728
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080C3728:
	adds r0, r5, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, _080C3798 @ =0x20000103
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	cmp r6, #5
	bls _080C3758
	movs r6, #5
_080C3758:
	ldr r2, _080C379C @ =gUnk_0835553A
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x50
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #8]
	ands r0, r7
	cmp r0, #0
	beq _080C37A4
	ldr r0, [r5, #0x40]
	ldr r1, _080C37A0 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080C37B8
	.align 2, 0
_080C3794: .4byte gUnk_03000510
_080C3798: .4byte 0x20000103
_080C379C: .4byte gUnk_0835553A
_080C37A0: .4byte 0xFFFFF200
_080C37A4:
	ldr r0, [r5, #0x40]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C37B8:
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	movs r3, #0xc8
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r1, _080C3860 @ =gUnk_02020EE0
	ldr r0, _080C3864 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3858
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C381C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C3858
_080C381C:
	ldr r1, _080C3868 @ =gUnk_08D60FA4
	ldr r4, _080C386C @ =gSongTable
	ldr r2, _080C3870 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C3840
	ldr r1, _080C3874 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C3858
_080C3840:
	cmp r3, #0
	beq _080C3852
	ldr r0, _080C3878 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C3858
_080C3852:
	ldr r0, _080C387C @ =0x0000013B
	bl m4aSongNumStart
_080C3858:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3860: .4byte gUnk_02020EE0
_080C3864: .4byte gUnk_0203AD3C
_080C3868: .4byte gUnk_08D60FA4
_080C386C: .4byte gSongTable
_080C3870: .4byte 0x000009DC
_080C3874: .4byte 0x000009D8
_080C3878: .4byte gUnk_0203AD10
_080C387C: .4byte 0x0000013B

	thumb_func_start sub_080C3880
sub_080C3880: @ 0x080C3880
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r0, _080C38A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C38A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C38AC
	.align 2, 0
_080C38A0: .4byte gCurTask
_080C38A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C38AC:
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080C3938 @ =0x0000FFFF
	cmp r2, r4
	beq _080C38CE
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C38CE
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080C38CE:
	ldr r2, _080C393C @ =gUnk_02020EE0
	ldr r0, _080C3940 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3984
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C394C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C39A8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3944 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C3948 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080C39A8
	.align 2, 0
_080C3938: .4byte 0x0000FFFF
_080C393C: .4byte gUnk_02020EE0
_080C3940: .4byte gUnk_0203AD3C
_080C3944: .4byte 0xFFF7FFFF
_080C3948: .4byte 0x0400000A
_080C394C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C39A8
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C397C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C3980 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C39A8
	.align 2, 0
_080C397C: .4byte 0xFFF7FFFF
_080C3980: .4byte 0x0400000A
_080C3984:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080C399E
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080C399E
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080C399E:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C39A8:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C3A6C
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C39C8
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080C3A6C
_080C39C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C3A3E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C3A3E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080C3A04
	ldr r2, _080C39FC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C3A00 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C3A06
	.align 2, 0
_080C39FC: .4byte gCurLevelInfo
_080C3A00: .4byte 0x0000065E
_080C3A04:
	movs r1, #0xff
_080C3A06:
	cmp r1, #0xff
	beq _080C3A3E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C3A74 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080C3A78 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C3A3E:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C3A66
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080C3A66:
	adds r0, r5, #0
	bl sub_0806F8BC
_080C3A6C:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C3A74: .4byte gUnk_02022EB0
_080C3A78: .4byte gUnk_02022F50

	thumb_func_start sub_080C3A7C
sub_080C3A7C: @ 0x080C3A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	ldr r0, _080C3AB4 @ =sub_080C3CF0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C3AB8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C3ABC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3AC4
	.align 2, 0
_080C3AB4: .4byte sub_080C3CF0
_080C3AB8: .4byte sub_0803DCCC
_080C3ABC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3AC4:
	adds r7, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r7]
	mov r2, sb
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r7, #0x44]
	str r2, [r7, #0x70]
	strh r1, [r7, #4]
	mov r0, sb
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C3BB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C3B16
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_080C3B16:
	adds r0, r7, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, _080C3BB8 @ =0x20000103
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x5c]
	ldr r4, [r6, #0x40]
	mov r1, sb
	ldr r0, [r1, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r5, [r1, #0x44]
	ldr r0, [r6, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r2, r4, #8
	mov r8, r2
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r2, r0, #8
	lsls r4, r4, #9
	add r4, r8
	lsrs r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #9
	adds r0, r0, r2
	lsls r0, r0, #4
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x52
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bge _080C3BBC
	movs r1, #0xde
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C3BC4
	strh r1, [r2]
	b _080C3BC4
	.align 2, 0
_080C3BB4: .4byte gUnk_03000510
_080C3BB8: .4byte 0x20000103
_080C3BBC:
	cmp r0, #0xde
	ble _080C3BC4
	movs r0, #0xde
	strh r0, [r2]
_080C3BC4:
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3BF8
	ldr r0, [r7, #0x40]
	ldr r2, _080C3BEC @ =0xFFFFF200
	adds r0, r0, r2
	str r0, [r7, #0x40]
	ldr r0, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080C3BF0 @ =0xFFFFFD24
	cmp r1, r0
	ble _080C3C1A
	ldr r0, _080C3BF4 @ =0x0000FD24
	b _080C3C18
	.align 2, 0
_080C3BEC: .4byte 0xFFFFF200
_080C3BF0: .4byte 0xFFFFFD24
_080C3BF4: .4byte 0x0000FD24
_080C3BF8:
	ldr r0, [r7, #0x40]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, _080C3CCC @ =0x000002DB
	cmp r1, r0
	bgt _080C3C1A
	adds r0, #1
_080C3C18:
	strh r0, [r3]
_080C3C1A:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	adds r1, r7, #0
	adds r1, #0x10
	movs r3, #0xc8
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r1, _080C3CD0 @ =gUnk_02020EE0
	ldr r0, _080C3CD4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3CBE
	ldrb r0, [r7]
	cmp r0, #0
	bne _080C3C82
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C3CBE
_080C3C82:
	ldr r1, _080C3CD8 @ =gUnk_08D60FA4
	ldr r4, _080C3CDC @ =gSongTable
	ldr r2, _080C3CE0 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C3CA6
	ldr r1, _080C3CE4 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C3CBE
_080C3CA6:
	cmp r3, #0
	beq _080C3CB8
	ldr r0, _080C3CE8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C3CBE
_080C3CB8:
	ldr r0, _080C3CEC @ =0x0000013B
	bl m4aSongNumStart
_080C3CBE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3CCC: .4byte 0x000002DB
_080C3CD0: .4byte gUnk_02020EE0
_080C3CD4: .4byte gUnk_0203AD3C
_080C3CD8: .4byte gUnk_08D60FA4
_080C3CDC: .4byte gSongTable
_080C3CE0: .4byte 0x000009DC
_080C3CE4: .4byte 0x000009D8
_080C3CE8: .4byte gUnk_0203AD10
_080C3CEC: .4byte 0x0000013B

	thumb_func_start sub_080C3CF0
sub_080C3CF0: @ 0x080C3CF0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080C3D10 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C3D14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3D1C
	.align 2, 0
_080C3D10: .4byte gCurTask
_080C3D14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3D1C:
	adds r5, r0, #0
	ldr r2, _080C3D88 @ =gUnk_02020EE0
	ldr r0, _080C3D8C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3DD0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C3D98
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C3DF4
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3D90 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C3D94 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080C3DF4
	.align 2, 0
_080C3D88: .4byte gUnk_02020EE0
_080C3D8C: .4byte gUnk_0203AD3C
_080C3D90: .4byte 0xFFF7FFFF
_080C3D94: .4byte 0x0400000A
_080C3D98:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C3DF4
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3DC8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C3DCC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C3DF4
	.align 2, 0
_080C3DC8: .4byte 0xFFF7FFFF
_080C3DCC: .4byte 0x0400000A
_080C3DD0:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080C3DEA
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080C3DEA
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080C3DEA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C3DF4:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C3E02
	b _080C3F1C
_080C3E02:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r3, _080C3E78 @ =gCurLevelInfo
	adds r2, r5, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r4, [r5, #0x40]
	ldr r0, [r0]
	adds r6, r2, #0
	cmp r4, r0
	bgt _080C3E54
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r4, r0
	blt _080C3E54
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080C3E54
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080C3E54
	adds r0, r5, #0
	bl sub_0806FC70
_080C3E54:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3E7C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	b _080C3F1C
	.align 2, 0
_080C3E78: .4byte gCurLevelInfo
_080C3E7C:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C3EEE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C3EEE
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080C3EB4
	ldr r2, _080C3EAC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C3EB0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C3EB6
	.align 2, 0
_080C3EAC: .4byte gCurLevelInfo
_080C3EB0: .4byte 0x0000065E
_080C3EB4:
	movs r1, #0xff
_080C3EB6:
	cmp r1, #0xff
	beq _080C3EEE
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C3F24 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080C3F28 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C3EEE:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C3F16
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080C3F16:
	adds r0, r5, #0
	bl sub_0806F8BC
_080C3F1C:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C3F24: .4byte gUnk_02022EB0
_080C3F28: .4byte gUnk_02022F50

	thumb_func_start sub_080C3F2C
sub_080C3F2C: @ 0x080C3F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r0, #0
	adds r5, r4, #0
	adds r5, #0xac
	str r1, [r5]
	ldr r2, _080C3F70 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C3F8A
	adds r0, r1, #0
	adds r0, #0xdd
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #1
	beq _080C3F8A
	ldr r2, _080C3F74 @ =sub_080C3F90
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C3F78
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C3F80
	.align 2, 0
_080C3F70: .4byte 0x00000103
_080C3F74: .4byte sub_080C3F90
_080C3F78:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C3F80:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C3F8A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C3F90
sub_080C3F90: @ 0x080C3F90
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080C3FA8
	adds r0, r1, #0
	bl sub_080C3FAC
_080C3FA8:
	pop {r0}
	bx r0

	thumb_func_start sub_080C3FAC
sub_080C3FAC: @ 0x080C3FAC
	push {lr}
	adds r3, r0, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x35
	strh r1, [r0]
	adds r0, #0x5c
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r3, #0x40]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	ldr r2, [r3, #0x44]
	subs r0, r0, r2
	lsls r0, r0, #8
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r0, _080C3FF4 @ =0x0000143F
	cmp r1, r0
	bgt _080C3FFC
	ldr r2, _080C3FF8 @ =sub_080C4010
	adds r0, r3, #0
	movs r1, #2
	bl ObjectSetFunc
	b _080C4006
	.align 2, 0
_080C3FF4: .4byte 0x0000143F
_080C3FF8: .4byte sub_080C4010
_080C3FFC:
	ldr r2, _080C400C @ =sub_080C4064
	adds r0, r3, #0
	movs r1, #2
	bl ObjectSetFunc
_080C4006:
	pop {r0}
	bx r0
	.align 2, 0
_080C400C: .4byte sub_080C4064

	thumb_func_start sub_080C4010
sub_080C4010: @ 0x080C4010
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C402A
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C402A:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080C404E
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080C3694
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080C404E
	movs r0, #0
	strb r0, [r5]
_080C404E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x1d
	ble _080C405C
	adds r0, r4, #0
	bl sub_080C3234
_080C405C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4064
sub_080C4064: @ 0x080C4064
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C407E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C407E:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C4098
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080C3A7C
_080C4098:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	ble _080C40A6
	adds r0, r4, #0
	bl sub_080C3234
_080C40A6:
	pop {r4}
	pop {r0}
	bx r0

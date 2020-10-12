	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBoxin
CreateBoxin: @ 0x080B3FAC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B3FE0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B3FE4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B3FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3FF0
	.align 2, 0
_080B3FE0: .4byte ObjectMain
_080B3FE4: .4byte ObjectDestroy
_080B3FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3FF0:
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
	ble _080B4010
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4018
_080B4010:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4018:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B4088 @ =gUnk_08351648
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
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080B4074
	adds r0, r4, #0
	bl sub_080B5614
_080B4074:
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
_080B4088: .4byte gUnk_08351648

	thumb_func_start sub_080B408C
sub_080B408C: @ 0x080B408C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080B4158 @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r4
	mov r8, r0
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r5, [r4, #0x40]
	ldr r0, [r0]
	cmp r5, r0
	bgt _080B4160
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	blt _080B4160
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080B4160
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080B4160
	adds r6, r4, #0
	adds r6, #0x50
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r1, r5, r1
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	adds r5, r4, #0
	adds r5, #0x3f
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r2, #9
	lsls r2, r2, #8
	adds r2, r3, r2
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	ldr r1, _080B415C @ =gUnk_082D88B8
	mov sb, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080B411A
	movs r0, #0
	strh r0, [r6]
_080B411A:
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r3, #9
	lsls r3, r3, #8
	ldr r2, [r4, #0x44]
	adds r2, r2, r3
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	beq _080B4160
	adds r0, r4, #0
	bl sub_080B5898
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	b _080B432C
	.align 2, 0
_080B4158: .4byte gCurLevelInfo
_080B415C: .4byte gUnk_082D88B8
_080B4160:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x18
	movs r3, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r7, r0, #0
	cmp r1, r2
	bge _080B417E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7]
_080B417E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080B418A
	b _080B432C
_080B418A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B419A
	b _080B432C
_080B419A:
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	strh r3, [r7]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r5, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r3, r5, r0
	adds r6, r2, #0
	mov r8, r1
	cmp r3, #0
	blt _080B41C4
	ldr r0, _080B41C0 @ =0x00003FFF
	cmp r3, r0
	ble _080B41CC
	b _080B4200
	.align 2, 0
_080B41C0: .4byte 0x00003FFF
_080B41C4:
	subs r1, r0, r5
	ldr r0, _080B41E4 @ =0x00003FFF
	cmp r1, r0
	bgt _080B4200
_080B41CC:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B41EC
	ldr r0, _080B41E8 @ =0x00002FFF
	cmp r2, r0
	ble _080B41F4
	b _080B4200
	.align 2, 0
_080B41E4: .4byte 0x00003FFF
_080B41E8: .4byte 0x00002FFF
_080B41EC:
	subs r1, r1, r0
	ldr r0, _080B41FC @ =0x00002FFF
	cmp r1, r0
	bgt _080B4200
_080B41F4:
	adds r0, r4, #0
	bl sub_080B597C
	b _080B432C
	.align 2, 0
_080B41FC: .4byte 0x00002FFF
_080B4200:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B420E
	b _080B432C
_080B420E:
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r0, #0
	mov r0, r8
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bne _080B4286
	movs r0, #1
	strb r0, [r3]
	ldr r2, _080B4244 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B4248 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B424C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B4250 @ =0x00005554
	cmp r2, r0
	bhi _080B4254
	movs r1, #0
	b _080B425E
	.align 2, 0
_080B4244: .4byte gRngVal
_080B4248: .4byte 0x00196225
_080B424C: .4byte 0x3C6EF35F
_080B4250: .4byte 0x00005554
_080B4254:
	ldr r0, _080B426C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B425E
	movs r1, #1
_080B425E:
	cmp r1, #1
	beq _080B427C
	cmp r1, #1
	bgt _080B4270
	cmp r1, #0
	beq _080B4276
	b _080B431C
	.align 2, 0
_080B426C: .4byte 0x0000AAA9
_080B4270:
	cmp r1, #2
	beq _080B4280
	b _080B431C
_080B4276:
	strh r1, [r6]
	strh r1, [r7]
	b _080B4318
_080B427C:
	movs r0, #0xc0
	b _080B42FA
_080B4280:
	movs r0, #0x80
	lsls r0, r0, #1
	b _080B4310
_080B4286:
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	ble _080B4296
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B429E
_080B4296:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B429E:
	str r0, [r4, #8]
	movs r0, #2
	strb r0, [r3]
	ldr r2, _080B42C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B42C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B42C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080B42CC @ =0x00005554
	cmp r2, r0
	bhi _080B42D0
	movs r1, #0
	b _080B42DA
	.align 2, 0
_080B42C0: .4byte gRngVal
_080B42C4: .4byte 0x00196225
_080B42C8: .4byte 0x3C6EF35F
_080B42CC: .4byte 0x00005554
_080B42D0:
	ldr r0, _080B42E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080B42DA
	movs r1, #1
_080B42DA:
	cmp r1, #1
	beq _080B42F8
	cmp r1, #1
	bgt _080B42EC
	cmp r1, #0
	beq _080B42F2
	b _080B431C
	.align 2, 0
_080B42E8: .4byte 0x0000AAA9
_080B42EC:
	cmp r1, #2
	beq _080B430C
	b _080B431C
_080B42F2:
	strh r1, [r6]
	strh r1, [r7]
	b _080B4318
_080B42F8:
	ldr r0, _080B4308 @ =0x0000FF40
_080B42FA:
	strh r0, [r6]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r7]
	strh r1, [r4, #4]
	b _080B431C
	.align 2, 0
_080B4308: .4byte 0x0000FF40
_080B430C:
	movs r0, #0xff
	lsls r0, r0, #8
_080B4310:
	strh r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7]
_080B4318:
	movs r0, #1
	strh r0, [r4, #4]
_080B431C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B432C
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080B432C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4338
sub_080B4338: @ 0x080B4338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080B4384 @ =gUnk_083540DC
	movs r0, #0x9f
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov r8, r2
	cmp r0, #0
	bne _080B43D0
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B4370
	b _080B44C6
_080B4370:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B4388
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B4562
	.align 2, 0
_080B4384: .4byte gUnk_083540DC
_080B4388:
	ldr r2, _080B43AC @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B43B0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B43B8
	.align 2, 0
_080B43AC: .4byte sub_080B408C
_080B43B0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B43B8:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	b _080B4562
_080B43D0:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B44C6
	mov r1, ip
	strb r3, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B43F6
	subs r0, r1, #1
	mov r2, ip
	strb r0, [r2]
_080B43F6:
	mov r3, ip
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B4420
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080B4420:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B448C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B445E
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B445E
	rsbs r0, r3, #0
	strh r0, [r2]
_080B445E:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B44C6
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B44C6
_080B448C:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	mov r2, ip
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r6, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B44F0
	rsbs r0, r6, #0
	strh r0, [r5]
_080B44C6:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x50
	adds r7, r4, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B44F0
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B4506
_080B44F0:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #4]
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_080B4506:
	adds r0, r2, #0
	adds r2, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r6, #0
	strh r0, [r2]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _080B4532
	adds r0, r4, #0
	bl sub_080B4DF4
_080B4532:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B4554
	ldr r2, _080B4550 @ =sub_080B58C0
	adds r0, r4, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r6, [r5]
	strh r6, [r7]
	b _080B4562
	.align 2, 0
_080B4550: .4byte sub_080B58C0
_080B4554:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4562
	strh r6, [r5]
_080B4562:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4570
sub_080B4570: @ 0x080B4570
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _080B45B8 @ =gUnk_08354118
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4604
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080B45A4
	b _080B46EE
_080B45A4:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B45BC
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B4790
	.align 2, 0
_080B45B8: .4byte gUnk_08354118
_080B45BC:
	ldr r2, _080B45E0 @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B45E4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B45EC
	.align 2, 0
_080B45E0: .4byte sub_080B408C
_080B45E4:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B45EC:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B4790
_080B4604:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _080B46EE
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4626
	subs r0, r1, #1
	strb r0, [r4]
_080B4626:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080B464E
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080B464E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B46B8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B468A
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B468A
	rsbs r0, r3, #0
	strh r0, [r2]
_080B468A:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B46EE
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B46EE
_080B46B8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B4718
	rsbs r0, r4, #0
	strh r0, [r6]
_080B46EE:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B4718
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B472E
_080B4718:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B472E:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, r8
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	beq _080B4752
	cmp r0, #0x14
	bne _080B4758
_080B4752:
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4758:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B4780
	ldr r2, _080B477C @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B4790
	.align 2, 0
_080B477C: .4byte sub_080B58C0
_080B4780:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4790
	movs r0, #0
	strh r0, [r6]
_080B4790:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B479C
sub_080B479C: @ 0x080B479C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080B47E4 @ =gUnk_08354178
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4830
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B47D2
	b _080B491C
_080B47D2:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B47E8
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B49DC
	.align 2, 0
_080B47E4: .4byte gUnk_08354178
_080B47E8:
	ldr r2, _080B480C @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B4810
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4818
	.align 2, 0
_080B480C: .4byte sub_080B408C
_080B4810:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4818:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B49DC
_080B4830:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B491C
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4852
	subs r0, r1, #1
	strb r0, [r4]
_080B4852:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xff
	beq _080B487C
	strb r1, [r2]
_080B487C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B48E6
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B48B8
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B48B8
	rsbs r0, r3, #0
	strh r0, [r2]
_080B48B8:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B491C
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B491C
_080B48E6:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B494C
	rsbs r0, r4, #0
	strh r0, [r6]
_080B491C:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	movs r0, #0x83
	adds r0, r0, r5
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B494C
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B4962
_080B494C:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B4962:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #3
	bne _080B4990
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bne _080B4990
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4990:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #6
	bne _080B49A4
	ldrb r0, [r5, #1]
	cmp r0, #7
	bne _080B49A4
	adds r0, r5, #0
	bl sub_080B50A8
_080B49A4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B49CC
	ldr r2, _080B49C8 @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B49DC
	.align 2, 0
_080B49C8: .4byte sub_080B58C0
_080B49CC:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B49DC
	movs r0, #0
	strh r0, [r6]
_080B49DC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B49E8
sub_080B49E8: @ 0x080B49E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080B4A30 @ =gUnk_08354214
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r0, [r4]
	adds r3, r0, #1
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov ip, r2
	cmp r0, #0
	bne _080B4A7C
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080B4A1E
	b _080B4B68
_080B4A1E:
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B4A34
	adds r0, r5, #0
	bl sub_080B5AC8
	b _080B4C2C
	.align 2, 0
_080B4A30: .4byte gUnk_08354214
_080B4A34:
	ldr r2, _080B4A58 @ =sub_080B408C
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r5, #0x40]
	ldr r0, [r0, #0x40]
	adds r4, r1, #0
	cmp r2, r0
	ble _080B4A5C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080B4A64
	.align 2, 0
_080B4A58: .4byte sub_080B408C
_080B4A5C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B4A64:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	str r0, [r4]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r5, #4]
	b _080B4C2C
_080B4A7C:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _080B4B68
	strb r3, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4A9E
	subs r0, r1, #1
	strb r0, [r4]
_080B4A9E:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xff
	beq _080B4AC8
	strb r1, [r2]
_080B4AC8:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B4B32
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080B4B04
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4B04
	rsbs r0, r3, #0
	strh r0, [r2]
_080B4B04:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, ip
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B4B68
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080B4B68
_080B4B32:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r4, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, #0
	beq _080B4B98
	rsbs r0, r4, #0
	strh r0, [r6]
_080B4B68:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r5, #0
	adds r6, #0x50
	movs r0, #0x83
	adds r0, r0, r5
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x52
	cmp r1, #0
	beq _080B4B98
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080B4BAE
_080B4B98:
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
_080B4BAE:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0, #6]
	ldrh r2, [r7]
	adds r0, r0, r2
	strh r0, [r7]
	mov r3, sb
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _080B4BE0
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	beq _080B4BDA
	cmp r0, #0x14
	bne _080B4BE0
_080B4BDA:
	adds r0, r5, #0
	bl sub_080B4DF4
_080B4BE0:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #6
	bne _080B4BF4
	ldrb r0, [r5, #1]
	cmp r0, #7
	bne _080B4BF4
	adds r0, r5, #0
	bl sub_080B50A8
_080B4BF4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B4C1C
	ldr r2, _080B4C18 @ =sub_080B58C0
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r6]
	strh r4, [r7]
	b _080B4C2C
	.align 2, 0
_080B4C18: .4byte sub_080B58C0
_080B4C1C:
	adds r0, r5, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4C2C
	movs r0, #0
	strh r0, [r6]
_080B4C2C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4C38
sub_080B4C38: @ 0x080B4C38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r2, _080B4C90 @ =gUnk_083542D4
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r4, r0, #1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080B4C98
	mov r0, ip
	adds r0, #0x9e
	ldrb r4, [r0]
	mov r8, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r4, #0
	beq _080B4C7E
	b _080B4D7E
_080B4C7E:
	ldr r2, _080B4C94 @ =sub_080B58C0
	mov r0, ip
	movs r1, #0xa
	bl ObjectSetFunc
	strh r4, [r5]
	strh r4, [r6]
	b _080B4DEA
	.align 2, 0
_080B4C90: .4byte gUnk_083542D4
_080B4C94: .4byte sub_080B58C0
_080B4C98:
	mov r0, ip
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	mov r5, ip
	adds r5, #0x50
	mov r6, ip
	adds r6, #0x52
	cmp r1, #0
	bne _080B4D7E
	strb r4, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B4CC2
	subs r0, r1, #1
	strb r0, [r3]
_080B4CC2:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	mov r4, ip
	adds r4, #0x83
	cmp r0, #0xff
	beq _080B4CEA
	strb r1, [r4]
_080B4CEA:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B4D52
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080B4D24
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4D24
	rsbs r0, r2, #0
	strh r0, [r5]
_080B4D24:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	mov r6, ip
	adds r6, #0x52
	cmp r1, r0
	beq _080B4D7E
	strh r2, [r6]
	b _080B4D7E
_080B4D52:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4DA6
	rsbs r0, r2, #0
	strh r0, [r5]
_080B4D7E:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	mov r4, ip
	adds r4, #0x83
	cmp r0, #0
	beq _080B4DA6
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B4DBC
_080B4DA6:
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080B4DBC:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #8
	bne _080B4DEA
	mov r3, ip
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _080B4DEA
	mov r0, ip
	bl sub_080B535C
_080B4DEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B4DF4
sub_080B4DF4: @ 0x080B4DF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B4E24 @ =sub_080B4F6C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B4E28
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B4E30
	.align 2, 0
_080B4E24: .4byte sub_080B4F6C
_080B4E28:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B4E30:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B4EB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B4E80
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B4E80:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B4EB4 @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B4EB8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B4EC0
	ldr r0, [r4, #0x40]
	ldr r1, _080B4EBC @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B4ECC
	.align 2, 0
_080B4EB0: .4byte gUnk_03000510
_080B4EB4: .4byte 0x10000400
_080B4EB8: .4byte 0x20000043
_080B4EBC: .4byte 0xFFFFF400
_080B4EC0:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B4ECC:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B4F54 @ =gUnk_02020EE0
	ldr r0, _080B4F58 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B4F4C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B4F0C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B4F4C
_080B4F0C:
	ldr r1, _080B4F5C @ =gUnk_08D60FA4
	ldr r4, _080B4F60 @ =gSongTable
	ldr r2, _080B4F64 @ =0x00000A94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B4F32
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B4F4C
_080B4F32:
	cmp r3, #0
	beq _080B4F44
	ldr r0, _080B4F68 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B4F4C
_080B4F44:
	movs r0, #0xa9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B4F4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B4F54: .4byte gUnk_02020EE0
_080B4F58: .4byte gUnk_0203AD3C
_080B4F5C: .4byte gUnk_08D60FA4
_080B4F60: .4byte gSongTable
_080B4F64: .4byte 0x00000A94
_080B4F68: .4byte gUnk_0203AD10

	thumb_func_start sub_080B4F6C
sub_080B4F6C: @ 0x080B4F6C
	push {r4, r5, r6, lr}
	ldr r0, _080B4F88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B4F8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B4F94
	.align 2, 0
_080B4F88: .4byte gCurTask
_080B4F8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B4F94:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B4FF0 @ =0x0000FFFF
	cmp r2, r5
	beq _080B4FB6
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B4FB6
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B4FB6:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B50A0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080B4FF4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B509E
	.align 2, 0
_080B4FF0: .4byte 0x0000FFFF
_080B4FF4:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B5066
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B5066
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B502C
	ldr r2, _080B5024 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B5028 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B502E
	.align 2, 0
_080B5024: .4byte gCurLevelInfo
_080B5028: .4byte 0x0000065E
_080B502C:
	movs r1, #0xff
_080B502E:
	cmp r1, #0xff
	beq _080B5066
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5080 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080B5084 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B5066:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B508C
	ldr r0, [r4, #0x40]
	ldr r2, _080B5088 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B509E
	.align 2, 0
_080B5080: .4byte gUnk_02022EB0
_080B5084: .4byte gUnk_02022F50
_080B5088: .4byte 0xFFFFF400
_080B508C:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B509E:
	str r0, [r4, #8]
_080B50A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B50A8
sub_080B50A8: @ 0x080B50A8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B50D8 @ =sub_080B5220
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B50DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B50E4
	.align 2, 0
_080B50D8: .4byte sub_080B5220
_080B50DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B50E4:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B5164 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B5134
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B5134:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B5168 @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B516C @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B5174
	ldr r0, [r4, #0x40]
	ldr r1, _080B5170 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B5180
	.align 2, 0
_080B5164: .4byte gUnk_03000510
_080B5168: .4byte 0x10000400
_080B516C: .4byte 0x20000043
_080B5170: .4byte 0xFFFFF400
_080B5174:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B5180:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x12
	bl sub_0803E2B0
	ldr r1, _080B5208 @ =gUnk_02020EE0
	ldr r0, _080B520C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B5200
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B51C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B5200
_080B51C0:
	ldr r1, _080B5210 @ =gUnk_08D60FA4
	ldr r4, _080B5214 @ =gSongTable
	ldr r2, _080B5218 @ =0x00000A94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B51E6
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B5200
_080B51E6:
	cmp r3, #0
	beq _080B51F8
	ldr r0, _080B521C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B5200
_080B51F8:
	movs r0, #0xa9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B5200:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5208: .4byte gUnk_02020EE0
_080B520C: .4byte gUnk_0203AD3C
_080B5210: .4byte gUnk_08D60FA4
_080B5214: .4byte gSongTable
_080B5218: .4byte 0x00000A94
_080B521C: .4byte gUnk_0203AD10

	thumb_func_start sub_080B5220
sub_080B5220: @ 0x080B5220
	push {r4, r5, r6, lr}
	ldr r0, _080B523C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5248
	.align 2, 0
_080B523C: .4byte gCurTask
_080B5240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5248:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B52A4 @ =0x0000FFFF
	cmp r2, r5
	beq _080B526A
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B526A
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B526A:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B5354
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080B52A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B5352
	.align 2, 0
_080B52A4: .4byte 0x0000FFFF
_080B52A8:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B531A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B531A
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B52E0
	ldr r2, _080B52D8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B52DC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B52E2
	.align 2, 0
_080B52D8: .4byte gCurLevelInfo
_080B52DC: .4byte 0x0000065E
_080B52E0:
	movs r1, #0xff
_080B52E2:
	cmp r1, #0xff
	beq _080B531A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5334 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080B5338 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B531A:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B5340
	ldr r0, [r4, #0x40]
	ldr r2, _080B533C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B5352
	.align 2, 0
_080B5334: .4byte gUnk_02022EB0
_080B5338: .4byte gUnk_02022F50
_080B533C: .4byte 0xFFFFF400
_080B5340:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5352:
	str r0, [r4, #8]
_080B5354:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B535C
sub_080B535C: @ 0x080B535C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B538C @ =sub_080B54D8
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5390
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5398
	.align 2, 0
_080B538C: .4byte sub_080B54D8
_080B5390:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5398:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B5418 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B53E8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B53E8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B541C @ =0x10000400
	str r2, [r4, #8]
	ldr r0, _080B5420 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B5428
	ldr r0, [r4, #0x40]
	ldr r1, _080B5424 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B5434
	.align 2, 0
_080B5418: .4byte gUnk_03000510
_080B541C: .4byte 0x10000400
_080B5420: .4byte 0x20000043
_080B5424: .4byte 0xFFFFF400
_080B5428:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080B5434:
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x12
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B54B8 @ =gUnk_02020EE0
	ldr r0, _080B54BC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B54B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B5474
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B54B0
_080B5474:
	ldr r1, _080B54C0 @ =gUnk_08D60FA4
	ldr r4, _080B54C4 @ =gSongTable
	ldr r2, _080B54C8 @ =0x00000A9C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B5498
	ldr r1, _080B54CC @ =0x00000A98
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B54B0
_080B5498:
	cmp r3, #0
	beq _080B54AA
	ldr r0, _080B54D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B54B0
_080B54AA:
	ldr r0, _080B54D4 @ =0x00000153
	bl m4aSongNumStart
_080B54B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B54B8: .4byte gUnk_02020EE0
_080B54BC: .4byte gUnk_0203AD3C
_080B54C0: .4byte gUnk_08D60FA4
_080B54C4: .4byte gSongTable
_080B54C8: .4byte 0x00000A9C
_080B54CC: .4byte 0x00000A98
_080B54D0: .4byte gUnk_0203AD10
_080B54D4: .4byte 0x00000153

	thumb_func_start sub_080B54D8
sub_080B54D8: @ 0x080B54D8
	push {r4, r5, r6, lr}
	ldr r0, _080B54F4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B54F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5500
	.align 2, 0
_080B54F4: .4byte gCurTask
_080B54F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5500:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080B555C @ =0x0000FFFF
	cmp r2, r5
	beq _080B5522
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B5522
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080B5522:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B560C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080B5560
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080B560A
	.align 2, 0
_080B555C: .4byte 0x0000FFFF
_080B5560:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B55D2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B55D2
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080B5598
	ldr r2, _080B5590 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B5594 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B559A
	.align 2, 0
_080B5590: .4byte gCurLevelInfo
_080B5594: .4byte 0x0000065E
_080B5598:
	movs r1, #0xff
_080B559A:
	cmp r1, #0xff
	beq _080B55D2
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B55EC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080B55F0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B55D2:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B55F8
	ldr r0, [r4, #0x40]
	ldr r2, _080B55F4 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080B560A
	.align 2, 0
_080B55EC: .4byte gUnk_02022EB0
_080B55F0: .4byte gUnk_02022F50
_080B55F4: .4byte 0xFFFFF400
_080B55F8:
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B560A:
	str r0, [r4, #8]
_080B560C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5614
sub_080B5614: @ 0x080B5614
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B5644 @ =sub_080B56F0
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5648
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5650
	.align 2, 0
_080B5644: .4byte sub_080B56F0
_080B5648:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5650:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080B56C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B56A0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B56A0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080B56CC @ =0x10010400
	str r2, [r4, #8]
	str r6, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B56D0
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080B56D2
	.align 2, 0
_080B56C8: .4byte gUnk_03000510
_080B56CC: .4byte 0x10010400
_080B56D0:
	str r2, [r4, #8]
_080B56D2:
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #0x14
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x24
	movs r3, #0x48
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B56F0
sub_080B56F0: @ 0x080B56F0
	push {r4, r5, r6, lr}
	ldr r0, _080B570C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5710
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B5718
	.align 2, 0
_080B570C: .4byte gCurTask
_080B5710:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B5718:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080B576C @ =0x0000FFFF
	cmp r2, r4
	beq _080B573A
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B573A
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080B573A:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B582A
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B5770
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080B5778
	.align 2, 0
_080B576C: .4byte 0x0000FFFF
_080B5770:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5778:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080B582A
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B57B8
	ldr r0, _080B57B0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	ldr r2, _080B57B4 @ =sub_080B4C38
	adds r0, r6, #0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080B582A
	.align 2, 0
_080B57B0: .4byte 0xFFFBFFFF
_080B57B4: .4byte sub_080B4C38
_080B57B8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B582A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B582A
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080B57F0
	ldr r2, _080B57E8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B57EC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B57F2
	.align 2, 0
_080B57E8: .4byte gCurLevelInfo
_080B57EC: .4byte 0x0000065E
_080B57F0:
	movs r1, #0xff
_080B57F2:
	cmp r1, #0xff
	beq _080B582A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B5830 @ =gUnk_02022EB0
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
	ldr r2, _080B5834 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B582A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B5830: .4byte gUnk_02022EB0
_080B5834: .4byte gUnk_02022F50

	thumb_func_start sub_080B5838
sub_080B5838: @ 0x080B5838
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B584E
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B5892
_080B584E:
	ldr r2, _080B5870 @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B5874
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B587C
	.align 2, 0
_080B5870: .4byte sub_080B408C
_080B5874:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B587C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
_080B5892:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5898
sub_080B5898: @ 0x080B5898
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B58BC @ =sub_080B58C0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B58BC: .4byte sub_080B58C0

	thumb_func_start sub_080B58C0
sub_080B58C0: @ 0x080B58C0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B58DA
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc
	b _080B58E4
_080B58DA:
	cmp r1, #0x3f
	bgt _080B58E6
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
_080B58E4:
	strb r0, [r1]
_080B58E6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B5906
	ldr r2, _080B590C @ =sub_080B5910
	adds r0, r4, #0
	movs r1, #0xd
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080B5906:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B590C: .4byte sub_080B5910

	thumb_func_start sub_080B5910
sub_080B5910: @ 0x080B5910
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B5976
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080B5932
	adds r0, r4, #0
	bl sub_080B5AC8
	b _080B5976
_080B5932:
	ldr r2, _080B5954 @ =sub_080B408C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	cmp r2, r0
	ble _080B5958
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5960
	.align 2, 0
_080B5954: .4byte sub_080B408C
_080B5958:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5960:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
_080B5976:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B597C
sub_080B597C: @ 0x080B597C
	push {lr}
	adds r3, r0, #0
	ldr r2, _080B59B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B59BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B59C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B59C4
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B59C4
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B59C4
	adds r0, r3, #0
	bl sub_080B5AA4
	b _080B5A0E
	.align 2, 0
_080B59B8: .4byte gRngVal
_080B59BC: .4byte 0x00196225
_080B59C0: .4byte 0x3C6EF35F
_080B59C4:
	ldr r1, [r2]
	ldr r0, _080B59F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B59F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080B59F8
	cmp r1, #1
	blo _080B59E6
	cmp r1, #2
	beq _080B5A00
	cmp r1, #3
	beq _080B5A08
_080B59E6:
	adds r0, r3, #0
	bl sub_080B5A14
	b _080B5A0E
	.align 2, 0
_080B59F0: .4byte 0x00196225
_080B59F4: .4byte 0x3C6EF35F
_080B59F8:
	adds r0, r3, #0
	bl sub_080B5A38
	b _080B5A0E
_080B5A00:
	adds r0, r3, #0
	bl sub_080B5A5C
	b _080B5A0E
_080B5A08:
	adds r0, r3, #0
	bl sub_080B5A80
_080B5A0E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B5A14
sub_080B5A14: @ 0x080B5A14
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A34 @ =sub_080B4338
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5A34: .4byte sub_080B4338

	thumb_func_start sub_080B5A38
sub_080B5A38: @ 0x080B5A38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A58 @ =sub_080B4570
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5A58: .4byte sub_080B4570

	thumb_func_start sub_080B5A5C
sub_080B5A5C: @ 0x080B5A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5A7C @ =sub_080B479C
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5A7C: .4byte sub_080B479C

	thumb_func_start sub_080B5A80
sub_080B5A80: @ 0x080B5A80
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AA0 @ =sub_080B49E8
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5AA0: .4byte sub_080B49E8

	thumb_func_start sub_080B5AA4
sub_080B5AA4: @ 0x080B5AA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AC4 @ =sub_080B4C38
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5AC4: .4byte sub_080B4C38

	thumb_func_start sub_080B5AC8
sub_080B5AC8: @ 0x080B5AC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B5AEC @ =sub_080B5B0C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B5AF0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B5AF8
	.align 2, 0
_080B5AEC: .4byte sub_080B5B0C
_080B5AF0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B5AF8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B5B0C
sub_080B5B0C: @ 0x080B5B0C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

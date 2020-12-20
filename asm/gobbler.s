	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateGobbler
CreateGobbler: @ 0x080E3E78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E3EAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E3EB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E3EB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3EBC
	.align 2, 0
_080E3EAC: .4byte ObjectMain
_080E3EB0: .4byte ObjectDestroy
_080E3EB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3EBC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	orrs r0, r2
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	subs r1, #0x48
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080E3FE0 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #0x19
	rsbs r1, r1, #0
	subs r2, #0xb
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x17
	bl sub_0803E2B0
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080E3FE4 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E3FE8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080E3FEC @ =gKirbys
	ldr r0, _080E3FF0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E3FB6
	ldr r0, _080E3FF4 @ =gUnk_0203AD20
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080E3FB6
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E3FB6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E3FF8 @ =sub_080E7C54
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080E79D4
	adds r0, r4, #0
	bl sub_080E5E58
	adds r0, r4, #0
	bl sub_080E6470
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E3FE0: .4byte 0x001080A0
_080E3FE4: .4byte gCurLevelInfo
_080E3FE8: .4byte 0x0000065E
_080E3FEC: .4byte gKirbys
_080E3FF0: .4byte gUnk_0203AD3C
_080E3FF4: .4byte gUnk_0203AD20
_080E3FF8: .4byte sub_080E7C54

	thumb_func_start sub_080E3FFC
sub_080E3FFC: @ 0x080E3FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080E4022
	b _080E41AA
_080E4022:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080E4036
	b _080E41AA
_080E4036:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r0, #0xb0
	adds r0, r0, r5
	mov r8, r0
	ldr r4, [r0]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov ip, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E4066
	b _080E41AA
_080E4066:
	ldr r4, _080E41B8 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080E43B4
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080E40E6
	movs r0, #0
	strb r0, [r1, #9]
_080E40E6:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080E41BC @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080E41AA
	ldr r0, _080E41C0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080E41AA
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080E41AA
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080E4168
	movs r4, #1
_080E4130:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080E4130
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080E4168:
	ldr r1, _080E41C0 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080E41C4 @ =gKirbys
	ldr r0, _080E41C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080E41AA
	ldr r0, _080E41CC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E41AA
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E41AA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E41B8: .4byte gCurLevelInfo
_080E41BC: .4byte 0x0000065E
_080E41C0: .4byte gUnk_08352D80
_080E41C4: .4byte gKirbys
_080E41C8: .4byte gUnk_0203AD3C
_080E41CC: .4byte gUnk_0203AD20

	thumb_func_start sub_080E41D0
sub_080E41D0: @ 0x080E41D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #3
	mov r8, r0
	movs r7, #2
	movs r1, #2
	mov sb, r1
	movs r2, #4
	mov sl, r2
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080E4218
	movs r3, #4
	mov r8, r3
	movs r7, #4
	movs r0, #8
	mov sb, r0
	adds r0, r4, #0
	adds r0, #0xc0
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_080E4218:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4224
	b _080E4386
_080E4224:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4230
	b _080E4396
_080E4230:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E426C
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _080E425A
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _080E425A
	mov r1, r8
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r2, #0
	mov r8, r2
_080E425A:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r6, r5, #0
	adds r6, #0xb8
	adds r2, r5, #0
	adds r2, #0xbc
	cmp r0, #0
	bne _080E428E
_080E426C:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r6, r0, #0
	adds r2, r5, #0
	adds r2, #0xbc
	cmp r1, #0
	bne _080E428E
	ldr r0, [r2]
	cmp r0, #0
	bne _080E428E
	mov r3, r8
	adds r0, r3, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _080E42C8
_080E428E:
	movs r3, #0
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E42A4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42A4
	movs r3, #1
_080E42A4:
	ldr r0, [r6]
	cmp r0, #0
	beq _080E42B4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42B4
	movs r3, #1
_080E42B4:
	ldr r0, [r2]
	cmp r0, #0
	beq _080E42C4
	ldr r1, [r0, #0x78]
	ldr r0, _080E4328 @ =sub_080E6784
	cmp r1, r0
	bne _080E42C4
	movs r3, #1
_080E42C4:
	cmp r3, #0
	bne _080E42CA
_080E42C8:
	movs r7, #0
_080E42CA:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E432C @ =gUnk_08351530
	ldr r0, _080E4330 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E42FE
	adds r0, r5, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080E42FE
	adds r1, r5, #0
	adds r1, #0xc2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E42FE:
	ldr r2, _080E4334 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4338 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E433C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4340
	adds r0, r4, #0
	bl sub_080E7B0C
	b _080E43A4
	.align 2, 0
_080E4328: .4byte sub_080E6784
_080E432C: .4byte gUnk_08351530
_080E4330: .4byte gUnk_0203AD30
_080E4334: .4byte gRngVal
_080E4338: .4byte 0x00196225
_080E433C: .4byte 0x3C6EF35F
_080E4340:
	subs r0, r1, r7
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4352
	adds r0, r4, #0
	bl sub_080E7B7C
	b _080E43A4
_080E4352:
	mov r3, sb
	subs r0, r1, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E4366
	adds r0, r4, #0
	bl sub_080E7BA4
	b _080E43A4
_080E4366:
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E437A
	adds r0, r4, #0
	bl sub_080E4BD0
	b _080E43A4
_080E437A:
	mov r3, sl
	subs r0, r1, r3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080E438E
_080E4386:
	adds r0, r4, #0
	bl sub_080E4E6C
	b _080E43A4
_080E438E:
	subs r0, r1, #4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080E439E
_080E4396:
	adds r0, r4, #0
	bl sub_080E53E8
	b _080E43A4
_080E439E:
	adds r0, r4, #0
	bl sub_080E43B4
_080E43A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E43B4
sub_080E43B4: @ 0x080E43B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080E43CC
	adds r0, r4, #0
	bl sub_080E7C00
	b _080E4476
_080E43CC:
	ldr r2, _080E4428 @ =sub_080E4488
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080E442C @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4410
	ldr r1, _080E4430 @ =gUnk_08351530
	ldr r0, _080E4434 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E4444
_080E4410:
	ldr r2, _080E4438 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E443C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4440 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x18
	b _080E445A
	.align 2, 0
_080E4428: .4byte sub_080E4488
_080E442C: .4byte 0xFFFFFDFF
_080E4430: .4byte gUnk_08351530
_080E4434: .4byte gUnk_0203AD30
_080E4438: .4byte gRngVal
_080E443C: .4byte 0x00196225
_080E4440: .4byte 0x3C6EF35F
_080E4444:
	ldr r2, _080E447C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4480 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4484 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x40
_080E445A:
	strh r0, [r4, #4]
	ldr r1, [r2]
	ldr r0, _080E4480 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4484 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	ldrsh r2, [r4, r1]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4, #4]
_080E4476:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E447C: .4byte gRngVal
_080E4480: .4byte 0x00196225
_080E4484: .4byte 0x3C6EF35F

	thumb_func_start sub_080E4488
sub_080E4488: @ 0x080E4488
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	mov ip, r3
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080E44AA
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E44BA
	b _080E44B6
_080E44AA:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E44BA
_080E44B6:
	movs r0, #0
	strh r0, [r1]
_080E44BA:
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080E44E8
	ldr r2, _080E44E4 @ =gUnk_08356B48
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r5, r0, #0
	b _080E4534
	.align 2, 0
_080E44E4: .4byte gUnk_08356B48
_080E44E8:
	ldrb r4, [r3, #1]
	adds r5, r3, #0
	adds r5, #0x52
	cmp r4, #1
	bne _080E4534
	ldr r2, _080E4524 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4528 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E452C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	ands r1, r4
	ldr r2, [r3, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r2, r0
	bne _080E4510
	movs r1, #0
_080E4510:
	movs r0, #0x8c
	lsls r0, r0, #9
	cmp r2, r0
	bne _080E451A
	movs r1, #1
_080E451A:
	cmp r1, #0
	beq _080E4530
	movs r0, #0x40
	b _080E4532
	.align 2, 0
_080E4524: .4byte gRngVal
_080E4528: .4byte 0x00196225
_080E452C: .4byte 0x3C6EF35F
_080E4530:
	ldr r0, _080E4590 @ =0x0000FFC0
_080E4532:
	strh r0, [r5]
_080E4534:
	adds r2, r5, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E454C
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
_080E454C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E4594 @ =0x000117FF
	cmp r1, r0
	ble _080E4564
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E4564:
	ldrb r2, [r6]
	cmp r2, #1
	bne _080E4598
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E4584
	ldrb r0, [r3, #1]
	cmp r0, #0x19
	bls _080E45B6
	mov r0, ip
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080E45B6
_080E4584:
	eors r1, r2
	str r1, [r3, #8]
	movs r0, #0
	strb r0, [r6]
	b _080E45B6
	.align 2, 0
_080E4590: .4byte 0x0000FFC0
_080E4594: .4byte 0x000117FF
_080E4598:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080E45B6
	strh r0, [r5]
	adds r0, r3, #0
	bl sub_080E41D0
_080E45B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E45BC
sub_080E45BC: @ 0x080E45BC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080E45DC
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E45EC
	b _080E45E8
_080E45DC:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E45EC
_080E45E8:
	movs r0, #0
	strh r0, [r1]
_080E45EC:
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bne _080E46DA
	ldrb r0, [r2, #1]
	cmp r0, #7
	bhi _080E462C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E461A
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E46C6
	b _080E4626
_080E461A:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E46C6
_080E4626:
	movs r0, #0
	strh r0, [r1]
	b _080E46C6
_080E462C:
	cmp r0, #0x17
	bhi _080E467C
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E465C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E4658 @ =0xFFFFFF00
	cmp r0, r3
	blt _080E46C4
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E46C6
	b _080E46C4
	.align 2, 0
_080E4658: .4byte 0xFFFFFF00
_080E465C:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E46C4
	ldr r3, _080E4678 @ =0xFFFFFF00
	b _080E46C0
	.align 2, 0
_080E4678: .4byte 0xFFFFFF00
_080E467C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E46A8
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E46A4 @ =0xFFFFFE00
	cmp r0, r3
	blt _080E46C4
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	ble _080E46C6
	b _080E46C4
	.align 2, 0
_080E46A4: .4byte 0xFFFFFE00
_080E46A8:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	bgt _080E46C4
	ldr r3, _080E4708 @ =0xFFFFFE00
_080E46C0:
	cmp r0, r3
	bge _080E46C6
_080E46C4:
	strh r3, [r1]
_080E46C6:
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E46DA
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4]
_080E46DA:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E4778
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4718
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080E4708 @ =0xFFFFFE00
	cmp r3, r0
	bge _080E470C
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E4736
	.align 2, 0
_080E4708: .4byte 0xFFFFFE00
_080E470C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	ble _080E4736
	strh r0, [r1]
	b _080E4736
_080E4718:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	bgt _080E4734
	ldr r3, _080E4758 @ =0xFFFFFE00
	cmp r0, r3
	bge _080E4736
_080E4734:
	strh r3, [r1]
_080E4736:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4760
	ldr r0, [r2, #0x40]
	ldr r1, _080E475C @ =0xFFFFD800
	cmp r0, r1
	bgt _080E4778
	str r1, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080E7BCC
	b _080E4778
	.align 2, 0
_080E4758: .4byte 0xFFFFFE00
_080E475C: .4byte 0xFFFFD800
_080E4760:
	ldr r1, [r2, #0x40]
	ldr r0, _080E4780 @ =0x000127FF
	cmp r1, r0
	ble _080E4778
	adds r0, #1
	str r0, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	adds r0, r2, #0
	bl sub_080E7BCC
_080E4778:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4780: .4byte 0x000127FF

	thumb_func_start sub_080E4784
sub_080E4784: @ 0x080E4784
	push {r4, r5, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4858
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0xe
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080E47D8 @ =0xFE800000
	cmp r0, r1
	bge _080E47A8
	ldr r0, _080E47DC @ =0x0000FE80
	strh r0, [r2]
_080E47A8:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E47E4
	mov r2, ip
	adds r2, #0x50
	ldr r3, _080E47E0 @ =0xFFFFFC00
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	blt _080E4806
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E4808
	b _080E4806
	.align 2, 0
_080E47D8: .4byte 0xFE800000
_080E47DC: .4byte 0x0000FE80
_080E47E0: .4byte 0xFFFFFC00
_080E47E4:
	mov r2, ip
	adds r2, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _080E4806
	ldr r1, _080E482C @ =0xFFFFFC00
	cmp r0, r1
	bge _080E4808
_080E4806:
	strh r1, [r2]
_080E4808:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4834
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080E4830 @ =0xFFFFD800
	cmp r0, r1
	ble _080E4820
	b _080E4964
_080E4820:
	str r1, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #0x44]
	b _080E484A
	.align 2, 0
_080E482C: .4byte 0xFFFFFC00
_080E4830: .4byte 0xFFFFD800
_080E4834:
	mov r3, ip
	ldr r1, [r3, #0x40]
	ldr r0, _080E4854 @ =0x000127FF
	cmp r1, r0
	bgt _080E4840
	b _080E4964
_080E4840:
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E484A:
	mov r0, ip
	bl sub_080E498C
	b _080E4964
	.align 2, 0
_080E4854: .4byte 0x000127FF
_080E4858:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E4864
	b _080E4964
_080E4864:
	mov r0, ip
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	ble _080E48C0
	ldr r5, _080E48AC @ =gRngVal
	ldr r0, [r5]
	ldr r4, _080E48B0 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _080E48B4 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x44]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E48B8
	mov r0, ip
	bl sub_080E4FD8
	b _080E4964
	.align 2, 0
_080E48AC: .4byte gRngVal
_080E48B0: .4byte 0x00196225
_080E48B4: .4byte 0x3C6EF35F
_080E48B8:
	mov r0, ip
	bl sub_080E5554
	b _080E4964
_080E48C0:
	ldr r2, _080E48E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E48E8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E48EC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E48F0
	mov r1, ip
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080E48F8
	.align 2, 0
_080E48E4: .4byte gRngVal
_080E48E8: .4byte 0x00196225
_080E48EC: .4byte 0x3C6EF35F
_080E48F0:
	mov r1, ip
	adds r1, #0x52
	movs r0, #0xb8
	lsls r0, r0, #2
_080E48F8:
	strh r0, [r1]
	ldr r1, _080E496C @ =gKirbys
	ldr r0, _080E4970 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E4964
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4928
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E4964
_080E4928:
	ldr r1, _080E4974 @ =gUnk_08D60FA4
	ldr r4, _080E4978 @ =gSongTable
	ldr r2, _080E497C @ =0x00000C2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E494C
	ldr r1, _080E4980 @ =0x00000C28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E4964
_080E494C:
	cmp r3, #0
	beq _080E495E
	ldr r0, _080E4984 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E4964
_080E495E:
	ldr r0, _080E4988 @ =0x00000185
	bl m4aSongNumStart
_080E4964:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E496C: .4byte gKirbys
_080E4970: .4byte gUnk_0203AD3C
_080E4974: .4byte gUnk_08D60FA4
_080E4978: .4byte gSongTable
_080E497C: .4byte 0x00000C2C
_080E4980: .4byte 0x00000C28
_080E4984: .4byte gUnk_0203AD10
_080E4988: .4byte 0x00000185

	thumb_func_start sub_080E498C
sub_080E498C: @ 0x080E498C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E4A44 @ =sub_080E4A6C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080E4A48 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4A4C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4A50 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, _080E4A54 @ =gKirbys
	ldr r0, _080E4A58 @ =gUnk_0203AD3C
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
	bne _080E4A3E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E4A00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E4A3E
_080E4A00:
	ldr r1, _080E4A5C @ =gUnk_08D60FA4
	ldr r4, _080E4A60 @ =gSongTable
	ldr r2, _080E4A64 @ =0x00000404
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E4A26
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E4A3E
_080E4A26:
	cmp r3, #0
	beq _080E4A38
	ldr r0, _080E4A68 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E4A3E
_080E4A38:
	movs r0, #0x80
	bl m4aSongNumStart
_080E4A3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4A44: .4byte sub_080E4A6C
_080E4A48: .4byte gRngVal
_080E4A4C: .4byte 0x00196225
_080E4A50: .4byte 0x3C6EF35F
_080E4A54: .4byte gKirbys
_080E4A58: .4byte gUnk_0203AD3C
_080E4A5C: .4byte gUnk_08D60FA4
_080E4A60: .4byte gSongTable
_080E4A64: .4byte 0x00000404
_080E4A68: .4byte gUnk_0203AD10

	thumb_func_start sub_080E4A6C
sub_080E4A6C: @ 0x080E4A6C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E4A7C
	b _080E4BC4
_080E4A7C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4AB4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E4AA4 @ =0xFFFFFE00
	cmp r2, r0
	bge _080E4AA8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E4AD2
	.align 2, 0
_080E4AA4: .4byte 0xFFFFFE00
_080E4AA8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E4AD2
	strh r0, [r1]
	b _080E4AD2
_080E4AB4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E4AD0
	ldr r2, _080E4B20 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E4AD2
_080E4AD0:
	strh r2, [r1]
_080E4AD2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4B28
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E4BC8
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E4B10
	ldr r2, _080E4B24 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E4B0E
	cmp r0, #0x1a
	bne _080E4B10
_080E4B0E:
	movs r1, #1
_080E4B10:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4B6A
	cmp r1, #0
	bne _080E4B6A
	b _080E4B90
	.align 2, 0
_080E4B20: .4byte 0xFFFFFE00
_080E4B24: .4byte 0x00000103
_080E4B28:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #8
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E4BC8
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E4B5C
	ldr r2, _080E4B80 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E4B5A
	cmp r0, #0x1a
	bne _080E4B5C
_080E4B5A:
	movs r1, #1
_080E4B5C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4B6A
	cmp r1, #0
	beq _080E4B90
_080E4B6A:
	ldr r2, _080E4B84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4B88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4B8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E4BAE
	.align 2, 0
_080E4B80: .4byte 0x00000103
_080E4B84: .4byte gRngVal
_080E4B88: .4byte 0x00196225
_080E4B8C: .4byte 0x3C6EF35F
_080E4B90:
	ldr r2, _080E4BB8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4BBC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4BC0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E4BAC
	movs r2, #1
_080E4BAC:
	adds r1, r2, #0
_080E4BAE:
	cmp r1, #0
	beq _080E4BC8
	movs r0, #1
	strh r0, [r4, #4]
	b _080E4BC8
	.align 2, 0
_080E4BB8: .4byte gRngVal
_080E4BBC: .4byte 0x00196225
_080E4BC0: .4byte 0x3C6EF35F
_080E4BC4:
	subs r0, #1
	strb r0, [r1]
_080E4BC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E4BD0
sub_080E4BD0: @ 0x080E4BD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080E4C34 @ =sub_080E4CAC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9f
	movs r6, #0
	strb r6, [r5]
	ldr r2, _080E4C38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4C3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4C40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E4C44 @ =0x00005554
	cmp r2, r0
	bls _080E4C64
	ldr r0, _080E4C48 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E4C0E
	movs r1, #1
_080E4C0E:
	cmp r1, #0
	beq _080E4C64
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, [r4, #0x44]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0, #0x44]
	cmp r2, r1
	ble _080E4C4C
	movs r0, #2
	strb r0, [r5]
	b _080E4CA0
	.align 2, 0
_080E4C34: .4byte sub_080E4CAC
_080E4C38: .4byte gRngVal
_080E4C3C: .4byte 0x00196225
_080E4C40: .4byte 0x3C6EF35F
_080E4C44: .4byte 0x00005554
_080E4C48: .4byte 0x0000AAA9
_080E4C4C:
	ldr r1, _080E4C5C @ =0xFFFFF600
	adds r0, r3, r1
	cmp r2, r0
	bge _080E4C60
	movs r0, #1
	strb r0, [r5]
	b _080E4CA0
	.align 2, 0
_080E4C5C: .4byte 0xFFFFF600
_080E4C60:
	strb r6, [r5]
	b _080E4CA0
_080E4C64:
	ldr r2, _080E4C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E4C8C @ =0x00005554
	cmp r2, r0
	bhi _080E4C90
	movs r1, #0
	b _080E4C9A
	.align 2, 0
_080E4C80: .4byte gRngVal
_080E4C84: .4byte 0x00196225
_080E4C88: .4byte 0x3C6EF35F
_080E4C8C: .4byte 0x00005554
_080E4C90:
	ldr r0, _080E4CA8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E4C9A
	movs r1, #1
_080E4C9A:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
_080E4CA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E4CA8: .4byte 0x0000AAA9

	thumb_func_start sub_080E4CAC
sub_080E4CAC: @ 0x080E4CAC
	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4D20
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E4CF8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x1a
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E4CE4 @ =0xFFFFFDF8
	cmp r2, r0
	bge _080E4CEC
	ldr r0, _080E4CE8 @ =0x0000FDF8
	strh r0, [r1]
	b _080E4D16
	.align 2, 0
_080E4CE4: .4byte 0xFFFFFDF8
_080E4CE8: .4byte 0x0000FDF8
_080E4CEC:
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E4D16
	strh r0, [r1]
	b _080E4D16
_080E4CF8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x1a
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x82
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E4D14
	ldr r2, _080E4D1C @ =0xFFFFFDF8
	cmp r0, r2
	bge _080E4D16
_080E4D14:
	strh r2, [r1]
_080E4D16:
	movs r0, #0xa
	movs r3, #0x78
	b _080E4D6E
	.align 2, 0
_080E4D1C: .4byte 0xFFFFFDF8
_080E4D20:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E4D4C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E4D48 @ =0xFFFFFE58
	cmp r0, r2
	blt _080E4D68
	movs r2, #0xd4
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E4D6A
	b _080E4D68
	.align 2, 0
_080E4D48: .4byte 0xFFFFFE58
_080E4D4C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd4
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E4D68
	ldr r2, _080E4D80 @ =0xFFFFFE58
	cmp r0, r2
	bge _080E4D6A
_080E4D68:
	strh r2, [r1]
_080E4D6A:
	movs r0, #7
	movs r3, #0x58
_080E4D6E:
	mov r2, ip
	adds r2, #0x9f
	ldrb r2, [r2]
	cmp r2, #1
	beq _080E4D84
	cmp r2, #2
	beq _080E4DD2
	b _080E4E06
	.align 2, 0
_080E4D80: .4byte 0xFFFFFE58
_080E4D84:
	adds r2, r0, #0
	cmp r2, #0
	ble _080E4DA0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, r3
	ble _080E4DB8
	b _080E4DB6
_080E4DA0:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E4DB8
_080E4DB6:
	strh r3, [r2]
_080E4DB8:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E4E06
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
	b _080E4E06
_080E4DD2:
	adds r2, r0, #0
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E4DEC
	strh r3, [r2]
_080E4DEC:
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r3, ip
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E4E24 @ =0x000117FF
	cmp r1, r0
	ble _080E4E06
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E4E06:
	mov r4, ip
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #4
	bne _080E4E28
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E4E64
	movs r0, #0
	strb r0, [r4]
	b _080E4E64
	.align 2, 0
_080E4E24: .4byte 0x000117FF
_080E4E28:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080E4E48
	mov r0, ip
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x40
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bge _080E4E64
	b _080E4E5C
_080E4E48:
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x40
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x40]
	cmp r1, r0
	ble _080E4E64
_080E4E5C:
	mov r0, ip
	bl sub_080E43B4
	strb r5, [r4]
_080E4E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E4E6C
sub_080E4E6C: @ 0x080E4E6C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E4EBC @ =sub_080E4F0C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4F00
	adds r0, r4, #0
	adds r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E4F06
	cmp r0, #6
	bls _080E4ECC
	ldr r2, _080E4EC0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4EC4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4EC8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #1
	b _080E4EDE
	.align 2, 0
_080E4EBC: .4byte sub_080E4F0C
_080E4EC0: .4byte gRngVal
_080E4EC4: .4byte 0x00196225
_080E4EC8: .4byte 0x3C6EF35F
_080E4ECC:
	ldr r2, _080E4EF4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E4EF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E4EFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #3
_080E4EDE:
	ands r2, r0
	cmp r2, #0
	bne _080E4F06
	adds r0, r5, #0
	adds r0, #0xc0
	movs r1, #4
	strb r1, [r0]
	adds r0, #2
	strb r2, [r0]
	b _080E4F06
	.align 2, 0
_080E4EF4: .4byte gRngVal
_080E4EF8: .4byte 0x00196225
_080E4EFC: .4byte 0x3C6EF35F
_080E4F00:
	adds r0, r4, #0
	bl sub_080E4FD8
_080E4F06:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E4F0C
sub_080E4F0C: @ 0x080E4F0C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bls _080E4F72
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E4F34
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E4F44
	b _080E4F40
_080E4F34:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E4F44
_080E4F40:
	movs r0, #0
	strh r0, [r1]
_080E4F44:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E4FBE
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x25
	bgt _080E4F66
	ldr r0, [r2, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #8]
	b _080E4FBE
_080E4F66:
	ldr r0, [r2, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _080E4FBE
_080E4F72:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E4FA0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E4F9C @ =0xFFFFFE58
	cmp r0, r3
	blt _080E4FBC
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E4FBE
	b _080E4FBC
	.align 2, 0
_080E4F9C: .4byte 0xFFFFFE58
_080E4FA0:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E4FBC
	ldr r3, _080E4FD4 @ =0xFFFFFE58
	cmp r0, r3
	bge _080E4FBE
_080E4FBC:
	strh r3, [r1]
_080E4FBE:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E4FCE
	adds r0, r2, #0
	bl sub_080E4FD8
_080E4FCE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4FD4: .4byte 0xFFFFFE58

	thumb_func_start sub_080E4FD8
sub_080E4FD8: @ 0x080E4FD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E5008 @ =sub_080E50E0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, [r4, #0x44]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0, #0x44]
	cmp r2, r1
	ble _080E500C
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #2
	b _080E5026
	.align 2, 0
_080E5008: .4byte sub_080E50E0
_080E500C:
	ldr r1, _080E501C @ =0xFFFFF600
	adds r0, r3, r1
	cmp r2, r0
	bge _080E5020
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
	b _080E5026
	.align 2, 0
_080E501C: .4byte 0xFFFFF600
_080E5020:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
_080E5026:
	strb r0, [r1]
	ldr r1, _080E50BC @ =gKirbys
	ldr r0, _080E50C0 @ =gUnk_0203AD3C
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
	bne _080E5090
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5054
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5090
_080E5054:
	ldr r1, _080E50C4 @ =gUnk_08D60FA4
	ldr r5, _080E50C8 @ =gSongTable
	ldr r2, _080E50CC @ =0x00000C2C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5078
	ldr r1, _080E50D0 @ =0x00000C28
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5090
_080E5078:
	cmp r3, #0
	beq _080E508A
	ldr r0, _080E50D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E5090
_080E508A:
	ldr r0, _080E50D8 @ =0x00000185
	bl m4aSongNumStart
_080E5090:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E50B4
	ldr r2, _080E50DC @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E50B0
	cmp r0, #0x1a
	bne _080E50B4
_080E50B0:
	movs r0, #1
	strb r0, [r1]
_080E50B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E50BC: .4byte gKirbys
_080E50C0: .4byte gUnk_0203AD3C
_080E50C4: .4byte gUnk_08D60FA4
_080E50C8: .4byte gSongTable
_080E50CC: .4byte 0x00000C2C
_080E50D0: .4byte 0x00000C28
_080E50D4: .4byte gUnk_0203AD10
_080E50D8: .4byte 0x00000185
_080E50DC: .4byte 0x00000103

	thumb_func_start sub_080E50E0
sub_080E50E0: @ 0x080E50E0
	push {lr}
	mov ip, r0
	ldr r2, [r0, #8]
	movs r0, #4
	orrs r2, r0
	mov r0, ip
	str r2, [r0, #8]
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080E511C @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	beq _080E515C
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E5134
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E5120 @ =0xFFFFFD60
	cmp r2, r0
	bge _080E5128
	ldr r0, _080E5124 @ =0x0000FD60
	strh r0, [r1]
	b _080E5152
	.align 2, 0
_080E511C: .4byte 0xFF00FF00
_080E5120: .4byte 0xFFFFFD60
_080E5124: .4byte 0x0000FD60
_080E5128:
	movs r0, #0xa8
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E5152
	strh r0, [r1]
	b _080E5152
_080E5134:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E5150
	ldr r2, _080E5158 @ =0xFFFFFD60
	cmp r0, r2
	bge _080E5152
_080E5150:
	strh r2, [r1]
_080E5152:
	movs r0, #0xa
	movs r3, #0x70
	b _080E51AA
	.align 2, 0
_080E5158: .4byte 0xFFFFFD60
_080E515C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E5188
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E5184 @ =0xFFFFFD80
	cmp r0, r2
	blt _080E51A4
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E51A6
	b _080E51A4
	.align 2, 0
_080E5184: .4byte 0xFFFFFD80
_080E5188:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E51A4
	ldr r2, _080E51BC @ =0xFFFFFD80
	cmp r0, r2
	bge _080E51A6
_080E51A4:
	strh r2, [r1]
_080E51A6:
	movs r0, #6
	movs r3, #0x40
_080E51AA:
	mov r2, ip
	adds r2, #0x9f
	ldrb r2, [r2]
	cmp r2, #1
	beq _080E51C0
	cmp r2, #2
	beq _080E520E
	b _080E5242
	.align 2, 0
_080E51BC: .4byte 0xFFFFFD80
_080E51C0:
	adds r2, r0, #0
	cmp r2, #0
	ble _080E51DC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, r3
	ble _080E51F4
	b _080E51F2
_080E51DC:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E51F4
_080E51F2:
	strh r3, [r2]
_080E51F4:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E5242
	movs r0, #0
	strh r0, [r2]
	str r1, [r3, #0x44]
	b _080E5242
_080E520E:
	adds r2, r0, #0
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, r1, r2
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r3, r3, #0
	adds r2, r0, #0
	cmp r1, r3
	bge _080E5228
	strh r3, [r2]
_080E5228:
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r3, ip
	ldr r1, [r3, #0x44]
	subs r1, r1, r0
	ldr r0, _080E526C @ =0x000117FF
	cmp r1, r0
	ble _080E5242
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r3, #0x44]
_080E5242:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E5270
	mov r0, ip
	adds r0, #0xa4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x48
	lsls r0, r0, #8
	mov r3, ip
	ldr r1, [r3, #0x40]
	cmp r1, r0
	bge _080E528A
	mov r0, ip
	bl sub_080E79F8
	b _080E528A
	.align 2, 0
_080E526C: .4byte 0x000117FF
_080E5270:
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x48
	lsls r0, r0, #8
	mov r2, ip
	ldr r1, [r2, #0x40]
	cmp r1, r0
	ble _080E528A
	mov r0, ip
	bl sub_080E79F8
_080E528A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5290
sub_080E5290: @ 0x080E5290
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, _080E52C0 @ =0xFF00FF00
	ands r2, r0
	cmp r2, #0
	beq _080E52D6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E52C4
	adds r0, r2, #0
	adds r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5300
	b _080E52D0
	.align 2, 0
_080E52C0: .4byte 0xFF00FF00
_080E52C4:
	adds r0, r2, #0
	subs r0, #0x1b
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5300
_080E52D0:
	movs r0, #0
	strh r0, [r1]
	b _080E5300
_080E52D6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E52F2
	adds r0, r3, #0
	adds r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5300
	b _080E52FE
_080E52F2:
	adds r0, r3, #0
	subs r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5300
_080E52FE:
	strh r2, [r1]
_080E5300:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E531C
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E532C
	b _080E5328
_080E531C:
	adds r0, r2, #0
	subs r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E532C
_080E5328:
	movs r0, #0
	strh r0, [r1]
_080E532C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E53D6
	adds r0, r4, #0
	bl sub_080E43B4
	adds r0, r4, #0
	adds r0, #0x83
	movs r2, #1
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xc0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E5360
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E535C
	strh r2, [r4, #4]
	b _080E53D6
_080E535C:
	movs r0, #0x40
	b _080E53D4
_080E5360:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E537C
	ldr r6, _080E53A0 @ =0x00000103
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E537A
	cmp r0, #0x1a
	bne _080E537C
_080E537A:
	movs r1, #1
_080E537C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E538A
	cmp r1, #0
	beq _080E53B0
_080E538A:
	ldr r2, _080E53A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E53A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E53AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E53CE
	.align 2, 0
_080E53A0: .4byte 0x00000103
_080E53A4: .4byte gRngVal
_080E53A8: .4byte 0x00196225
_080E53AC: .4byte 0x3C6EF35F
_080E53B0:
	ldr r2, _080E53DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E53E0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E53E4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E53CC
	movs r2, #1
_080E53CC:
	adds r1, r2, #0
_080E53CE:
	cmp r1, #0
	beq _080E53D6
	movs r0, #1
_080E53D4:
	strh r0, [r4, #4]
_080E53D6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E53DC: .4byte gRngVal
_080E53E0: .4byte 0x00196225
_080E53E4: .4byte 0x3C6EF35F

	thumb_func_start sub_080E53E8
sub_080E53E8: @ 0x080E53E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E5438 @ =sub_080E5488
	movs r1, #0xd
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E547C
	adds r0, r4, #0
	adds r0, #0xc2
	ldrb r0, [r0]
	cmp r0, #1
	bls _080E5482
	cmp r0, #6
	bls _080E5448
	ldr r2, _080E543C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5440 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5444 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080E545A
	.align 2, 0
_080E5438: .4byte sub_080E5488
_080E543C: .4byte gRngVal
_080E5440: .4byte 0x00196225
_080E5444: .4byte 0x3C6EF35F
_080E5448:
	ldr r2, _080E5470 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5474 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5478 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080E545A:
	ands r1, r0
	cmp r1, #0
	bne _080E5482
	adds r2, r5, #0
	adds r2, #0xc1
	movs r0, #3
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0xc2
	strb r1, [r0]
	b _080E5482
	.align 2, 0
_080E5470: .4byte gRngVal
_080E5474: .4byte 0x00196225
_080E5478: .4byte 0x3C6EF35F
_080E547C:
	adds r0, r4, #0
	bl sub_080E5554
_080E5482:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E5488
sub_080E5488: @ 0x080E5488
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bls _080E54EE
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E54B0
	adds r0, r3, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E54C0
	b _080E54BC
_080E54B0:
	adds r0, r3, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E54C0
_080E54BC:
	movs r0, #0
	strh r0, [r1]
_080E54C0:
	adds r0, r4, #0
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E553A
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x25
	bgt _080E54E2
	ldr r0, [r2, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #8]
	b _080E553A
_080E54E2:
	ldr r0, [r2, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	b _080E553A
_080E54EE:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E551C
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E5518 @ =0xFFFFFE58
	cmp r0, r3
	blt _080E5538
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	ble _080E553A
	b _080E5538
	.align 2, 0
_080E5518: .4byte 0xFFFFFE58
_080E551C:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xd4
	lsls r3, r3, #1
	cmp r0, r3
	bgt _080E5538
	ldr r3, _080E5550 @ =0xFFFFFE58
	cmp r0, r3
	bge _080E553A
_080E5538:
	strh r3, [r1]
_080E553A:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E554A
	adds r0, r2, #0
	bl sub_080E5554
_080E554A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5550: .4byte 0xFFFFFE58

	thumb_func_start sub_080E5554
sub_080E5554: @ 0x080E5554
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E5614 @ =sub_080E5644
	movs r1, #0xe
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080E5618 @ =gKirbys
	ldr r0, _080E561C @ =gUnk_0203AD3C
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
	bne _080E55D0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5594
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E55D0
_080E5594:
	ldr r1, _080E5620 @ =gUnk_08D60FA4
	ldr r5, _080E5624 @ =gSongTable
	ldr r2, _080E5628 @ =0x00000C2C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E55B8
	ldr r1, _080E562C @ =0x00000C28
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E55D0
_080E55B8:
	cmp r3, #0
	beq _080E55CA
	ldr r0, _080E5630 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E55D0
_080E55CA:
	ldr r0, _080E5634 @ =0x00000185
	bl m4aSongNumStart
_080E55D0:
	adds r3, r4, #0
	adds r3, #0x85
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080E5638 @ =gUnk_08351530
	ldr r0, _080E563C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	cmp r2, r0
	ble _080E5608
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E560C
	ldr r2, _080E5640 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5608
	cmp r0, #0x1a
	bne _080E560C
_080E5608:
	movs r0, #1
	strb r0, [r3]
_080E560C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5614: .4byte sub_080E5644
_080E5618: .4byte gKirbys
_080E561C: .4byte gUnk_0203AD3C
_080E5620: .4byte gUnk_08D60FA4
_080E5624: .4byte gSongTable
_080E5628: .4byte 0x00000C2C
_080E562C: .4byte 0x00000C28
_080E5630: .4byte gUnk_0203AD10
_080E5634: .4byte 0x00000185
_080E5638: .4byte gUnk_08351530
_080E563C: .4byte gUnk_0203AD30
_080E5640: .4byte 0x00000103

	thumb_func_start sub_080E5644
sub_080E5644: @ 0x080E5644
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080E5684 @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	beq _080E56C4
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E56A0
	adds r1, r3, #0
	adds r1, #0x50
	ldr r2, _080E5688 @ =0xFFFFFEA0
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E568C @ =0xFFFFFC80
	cmp r2, r0
	bge _080E5694
	ldr r0, _080E5690 @ =0x0000FC80
	strh r0, [r1]
	b _080E571C
	.align 2, 0
_080E5684: .4byte 0xFF00FF00
_080E5688: .4byte 0xFFFFFEA0
_080E568C: .4byte 0xFFFFFC80
_080E5690: .4byte 0x0000FC80
_080E5694:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E571C
	strh r0, [r1]
	b _080E571C
_080E56A0:
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E571A
	ldr r2, _080E56C0 @ =0xFFFFFC80
	b _080E5716
	.align 2, 0
_080E56C0: .4byte 0xFFFFFC80
_080E56C4:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E56F8
	adds r1, r3, #0
	adds r1, #0x50
	ldr r2, _080E56F0 @ =0xFFFFFEA0
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E56F4 @ =0xFFFFFCC0
	cmp r0, r2
	blt _080E571A
	movs r2, #0xd0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E571C
	b _080E571A
	.align 2, 0
_080E56F0: .4byte 0xFFFFFEA0
_080E56F4: .4byte 0xFFFFFCC0
_080E56F8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E571A
	ldr r2, _080E5740 @ =0xFFFFFCC0
_080E5716:
	cmp r0, r2
	bge _080E571C
_080E571A:
	strh r2, [r1]
_080E571C:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E5744
	adds r0, r3, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r3, #0x40]
	cmp r1, r0
	bge _080E575C
	adds r0, r3, #0
	bl sub_080E7A18
	b _080E575C
	.align 2, 0
_080E5740: .4byte 0xFFFFFCC0
_080E5744:
	adds r0, r3, #0
	adds r0, #0xa8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r3, #0x40]
	cmp r1, r0
	ble _080E575C
	adds r0, r3, #0
	bl sub_080E7A18
_080E575C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E5760
sub_080E5760: @ 0x080E5760
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, _080E5790 @ =0xFF00FF00
	ands r2, r0
	cmp r2, #0
	beq _080E57A6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5794
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E57D0
	b _080E57A0
	.align 2, 0
_080E5790: .4byte 0xFF00FF00
_080E5794:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E57D0
_080E57A0:
	movs r0, #0
	strh r0, [r1]
	b _080E57D0
_080E57A6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E57C2
	adds r0, r3, #0
	adds r0, #0x24
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E57D0
	b _080E57CE
_080E57C2:
	adds r0, r3, #0
	subs r0, #0x24
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E57D0
_080E57CE:
	strh r2, [r1]
_080E57D0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E587A
	adds r0, r4, #0
	bl sub_080E43B4
	adds r0, r4, #0
	adds r0, #0x83
	movs r2, #1
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xc1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E5804
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E5800
	strh r2, [r4, #4]
	b _080E587A
_080E5800:
	movs r0, #0x40
	b _080E5878
_080E5804:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5820
	ldr r2, _080E5844 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E581E
	cmp r0, #0x1a
	bne _080E5820
_080E581E:
	movs r1, #1
_080E5820:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E582E
	cmp r1, #0
	beq _080E5854
_080E582E:
	ldr r2, _080E5848 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E584C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5850 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5872
	.align 2, 0
_080E5844: .4byte 0x00000103
_080E5848: .4byte gRngVal
_080E584C: .4byte 0x00196225
_080E5850: .4byte 0x3C6EF35F
_080E5854:
	ldr r2, _080E5880 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5884 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080E5888 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5870
	movs r2, #1
_080E5870:
	adds r1, r2, #0
_080E5872:
	cmp r1, #0
	beq _080E587A
	movs r0, #1
_080E5878:
	strh r0, [r4, #4]
_080E587A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E5880: .4byte gRngVal
_080E5884: .4byte 0x00196225
_080E5888: .4byte 0x3C6EF35F

	thumb_func_start sub_080E588C
sub_080E588C: @ 0x080E588C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E58DA
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E58DA
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E58DA
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E58DA
	cmp r0, #0x7a
	bhi _080E58DA
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E58DA
	ldr r4, [r6, #8]
	ldr r0, _080E58E0 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080E58E4
_080E58DA:
	movs r0, #0
	b _080E598A
	.align 2, 0
_080E58E0: .4byte 0x03800B00
_080E58E4:
	ldr r2, _080E5994 @ =sub_080E7A38
	adds r0, r5, #0
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, _080E5998 @ =gUnk_08356A98
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	adds r0, r5, #0
	adds r0, #0xc0
	strb r2, [r0]
	ldr r1, _080E599C @ =gKirbys
	ldr r0, _080E59A0 @ =gUnk_0203AD3C
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
	bne _080E5988
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E594A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5988
_080E594A:
	ldr r1, _080E59A4 @ =gUnk_08D60FA4
	ldr r4, _080E59A8 @ =gSongTable
	ldr r2, _080E59AC @ =0x00000C34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5970
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5988
_080E5970:
	cmp r3, #0
	beq _080E5980
	ldr r0, _080E59B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E5988
_080E5980:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E5988:
	movs r0, #1
_080E598A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E5994: .4byte sub_080E7A38
_080E5998: .4byte gUnk_08356A98
_080E599C: .4byte gKirbys
_080E59A0: .4byte gUnk_0203AD3C
_080E59A4: .4byte gUnk_08D60FA4
_080E59A8: .4byte gSongTable
_080E59AC: .4byte 0x00000C34
_080E59B0: .4byte gUnk_0203AD10

	thumb_func_start sub_080E59B4
sub_080E59B4: @ 0x080E59B4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	ldr r2, _080E5A1C @ =sub_080E5A20
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x9f
	strb r2, [r3]
	movs r0, #0x9e
	adds r0, r0, r4
	mov ip, r0
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E59F8
	strh r5, [r4, #4]
	movs r5, #0x10
_080E59F8:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _080E5A06
	strb r5, [r3]
	movs r5, #0x10
_080E5A06:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _080E5A14
	mov r0, ip
	strb r5, [r0]
_080E5A14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5A1C: .4byte sub_080E5A20

	thumb_func_start sub_080E5A20
sub_080E5A20: @ 0x080E5A20
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E5A50
	subs r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _080E5A42
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A42:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #0
	b _080E5AA2
_080E5A50:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5A7A
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A6E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A6E:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #1
	b _080E5AA2
_080E5A7A:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5AB0
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A98
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A98:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #2
_080E5AA2:
	bl sub_080E7848
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	b _080E5ABC
_080E5AB0:
	ldrh r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	bl sub_080E7B50
_080E5ABC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5AC4
sub_080E5AC4: @ 0x080E5AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5AE4
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5AF4
	b _080E5AF0
_080E5AE4:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5AF4
_080E5AF0:
	movs r0, #0
	strh r0, [r1]
_080E5AF4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5B7A
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5B20
	ldr r2, _080E5B44 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5B1E
	cmp r0, #0x1a
	bne _080E5B20
_080E5B1E:
	movs r1, #1
_080E5B20:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5B2E
	cmp r1, #0
	beq _080E5B54
_080E5B2E:
	ldr r2, _080E5B48 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B4C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5B50 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5B72
	.align 2, 0
_080E5B44: .4byte 0x00000103
_080E5B48: .4byte gRngVal
_080E5B4C: .4byte 0x00196225
_080E5B50: .4byte 0x3C6EF35F
_080E5B54:
	ldr r2, _080E5B80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5B88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5B70
	movs r2, #1
_080E5B70:
	adds r1, r2, #0
_080E5B72:
	cmp r1, #0
	beq _080E5B7A
	movs r0, #1
	strh r0, [r4, #4]
_080E5B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5B80: .4byte gRngVal
_080E5B84: .4byte 0x00196225
_080E5B88: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5B8C
sub_080E5B8C: @ 0x080E5B8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5BAE
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5BBE
	b _080E5BBA
_080E5BAE:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5BBE
_080E5BBA:
	movs r0, #0
	strh r0, [r1]
_080E5BBE:
	ldrb r0, [r4, #1]
	cmp r0, #0x1e
	bne _080E5C62
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5BD4
	bl sub_080E7028
_080E5BD4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080E5C0C
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C04
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C00
	movs r1, #1
_080E5C00:
	cmp r1, #0
	bne _080E5C0C
_080E5C04:
	ldr r0, [r7]
	bl sub_080E6CDC
	movs r6, #1
_080E5C0C:
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080E5C44
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C3C
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C38
	movs r1, #1
_080E5C38:
	cmp r1, #0
	bne _080E5C44
_080E5C3C:
	ldr r0, [r5]
	bl sub_080E6CDC
	movs r6, #1
_080E5C44:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r7]
	cmp r0, #0
	beq _080E5C54
	bl sub_080E6CDC
	movs r6, #1
_080E5C54:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r5]
	cmp r0, #0
	beq _080E5C62
	bl sub_080E6CDC
_080E5C62:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5CF2
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5C8E
	ldr r2, _080E5CC8 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5C8C
	cmp r0, #0x1a
	bne _080E5C8E
_080E5C8C:
	movs r1, #1
_080E5C8E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5C9C
	cmp r1, #0
	beq _080E5CCC
_080E5C9C:
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5CEA
	.align 2, 0
_080E5CB4: .4byte gRngVal
_080E5CB8: .4byte 0x00196225
_080E5CBC: .4byte 0x3C6EF35F
_080E5CC0: .4byte 0x00005554
_080E5CC4: .4byte 0x0000AAA9
_080E5CC8: .4byte 0x00000103
_080E5CCC:
	ldr r2, _080E5CF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5D00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5CE8
	movs r2, #1
_080E5CE8:
	adds r1, r2, #0
_080E5CEA:
	cmp r1, #0
	beq _080E5CF2
	movs r0, #1
	strh r0, [r4, #4]
_080E5CF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E5CF8: .4byte gRngVal
_080E5CFC: .4byte 0x00196225
_080E5D00: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5D04
sub_080E5D04: @ 0x080E5D04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5D9A
	ldr r2, _080E5DB8 @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E5DBC @ =gKirbys
	ldr r0, _080E5DC0 @ =gUnk_0203AD3C
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
	bne _080E5D90
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5D54
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5D90
_080E5D54:
	ldr r1, _080E5DC4 @ =gUnk_08D60FA4
	ldr r5, _080E5DC8 @ =gSongTable
	ldr r2, _080E5DCC @ =0x00000BDC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5D78
	ldr r1, _080E5DD0 @ =0x00000BD8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5D90
_080E5D78:
	cmp r3, #0
	beq _080E5D8A
	ldr r0, _080E5DD4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E5D90
_080E5D8A:
	ldr r0, _080E5DD8 @ =0x0000017B
	bl m4aSongNumStart
_080E5D90:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080E5D9A:
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080E5E52
	ldr r2, _080E5DDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5DE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5DE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r3, #0
	b _080E5DEC
	.align 2, 0
_080E5DB8: .4byte 0x00000299
_080E5DBC: .4byte gKirbys
_080E5DC0: .4byte gUnk_0203AD3C
_080E5DC4: .4byte gUnk_08D60FA4
_080E5DC8: .4byte gSongTable
_080E5DCC: .4byte 0x00000BDC
_080E5DD0: .4byte 0x00000BD8
_080E5DD4: .4byte gUnk_0203AD10
_080E5DD8: .4byte 0x0000017B
_080E5DDC: .4byte gRngVal
_080E5DE0: .4byte 0x00196225
_080E5DE4: .4byte 0x3C6EF35F
_080E5DE8:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
_080E5DEC:
	cmp r3, #3
	bhi _080E5E02
	adds r2, r3, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	cmp r5, r0
	bge _080E5DE8
_080E5E02:
	cmp r3, #1
	beq _080E5E28
	cmp r3, #1
	bgt _080E5E10
	cmp r3, #0
	beq _080E5E1A
	b _080E5E52
_080E5E10:
	cmp r3, #2
	beq _080E5E38
	cmp r3, #3
	beq _080E5E46
	b _080E5E52
_080E5E1A:
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	b _080E5E52
_080E5E28:
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	b _080E5E52
_080E5E38:
	movs r1, #0xa
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #1
	bl sub_080E625C
	b _080E5E52
_080E5E46:
	movs r1, #7
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080E625C
_080E5E52:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E5E58
sub_080E5E58: @ 0x080E5E58
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080E5E88 @ =sub_080E5F20
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E5E8C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5E90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E5E98
	.align 2, 0
_080E5E88: .4byte sub_080E5F20
_080E5E8C: .4byte sub_0803DCCC
_080E5E90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E5E98:
	adds r0, r4, #0
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
	adds r5, r4, #0
	adds r5, #0x42
	movs r7, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	movs r6, #0xc3
	lsls r6, r6, #2
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080E5F0C @ =gKirbys
	ldr r0, _080E5F10 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080E5F14
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E5F16
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E5F16
	.align 2, 0
_080E5F0C: .4byte gKirbys
_080E5F10: .4byte gUnk_0203AD3C
_080E5F14:
	strb r7, [r4]
_080E5F16:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5F20
sub_080E5F20: @ 0x080E5F20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080E5F44 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5F48
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E5F50
	.align 2, 0
_080E5F44: .4byte gCurTask
_080E5F48:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E5F50:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov r8, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E5F6C
	ldr r0, [r2]
	bl TaskDestroy
	b _080E6242
_080E5F6C:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E5F7E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _080E6242
_080E5F7E:
	ldr r2, _080E5FE8 @ =gKirbys
	ldr r0, _080E5FEC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r5, [r6]
	cmp r0, r5
	bne _080E6030
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080E5FF8
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	ldrh r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r7, #0
	adds r4, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E5FF0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080E5FF4 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080E6056
	.align 2, 0
_080E5FE8: .4byte gKirbys
_080E5FEC: .4byte gUnk_0203AD3C
_080E5FF0: .4byte 0xFFF7FFFF
_080E5FF4: .4byte 0x0400000A
_080E5FF8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r7, #0
	adds r3, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E6028 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080E602C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	b _080E6056
	.align 2, 0
_080E6028: .4byte 0xFFF7FFFF
_080E602C: .4byte 0x0400000A
_080E6030:
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080E604C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080E604C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r7, #0xc]
_080E604C:
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x14]
_080E6056:
	ldr r2, _080E6098 @ =gKirbys
	ldr r0, _080E609C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	bne _080E60A0
	adds r4, r7, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E60A8
	movs r5, #0xc3
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E60A8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E60A8
	.align 2, 0
_080E6098: .4byte gKirbys
_080E609C: .4byte gUnk_0203AD3C
_080E60A0:
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080E60A8:
	ldrh r0, [r7, #6]
	ldr r2, _080E613C @ =0x0000FBFF
	ands r2, r0
	strh r2, [r7, #6]
	mov r5, r8
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	orrs r1, r2
	ldr r0, _080E6140 @ =0x0000FFFE
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, [r5, #8]
	mvns r0, r0
	movs r2, #1
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r0, [r5, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r7, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x41
	strb r0, [r1]
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _080E6148
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E610C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E610C
	movs r0, #0
	str r0, [r7, #0x44]
	movs r3, #0
_080E610C:
	cmp r3, #0
	beq _080E6148
	ldr r0, _080E6144 @ =gUnk_03000510
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
	beq _080E61B4
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E613C: .4byte 0x0000FBFF
_080E6140: .4byte 0x0000FFFE
_080E6144: .4byte gUnk_03000510
_080E6148:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _080E61AC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	beq _080E6186
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #4
_080E6186:
	ldr r0, _080E61B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E61B4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E61AC: .4byte gKirbys
_080E61B0: .4byte gUnk_03000510
_080E61B4:
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E61CE
	cmp r0, #7
	beq _080E61CE
	cmp r0, #0xc
	bls _080E61DA
_080E61CE:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_080E61DA:
	adds r0, r7, #0
	bl sub_0806FAC8
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldrh r1, [r7, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldr r4, _080E6250 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _080E6254 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _080E6258 @ =0x3C6EF35F
	adds r0, r0, r5
	lsrs r1, r0, #0x10
	movs r3, #7
	ands r1, r3
	subs r1, #0x1b
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r2, r2, #0x10
	ands r2, r3
	subs r2, #3
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r0, r8
	bl sub_080E625C
	ldr r0, [r4]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	movs r5, #4
	ldrsh r2, [r7, r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r7, #4]
_080E623C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E6242:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6250: .4byte gRngVal
_080E6254: .4byte 0x00196225
_080E6258: .4byte 0x3C6EF35F

	thumb_func_start sub_080E625C
sub_080E625C: @ 0x080E625C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080E6294 @ =sub_080E6320
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E6298 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E629C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E62A4
	.align 2, 0
_080E6294: .4byte sub_080E6320
_080E6298: .4byte sub_0803DCCC
_080E629C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E62A4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r5, #0x3e]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E62DC
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _080E62E4
_080E62DC:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_080E62E4:
	str r0, [r5, #0x34]
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080E631C @ =0x06012000
	movs r3, #0xa8
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E631C: .4byte 0x06012000

	thumb_func_start sub_080E6320
sub_080E6320: @ 0x080E6320
	push {r4, r5, r6, lr}
	ldr r2, _080E6340 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080E6344
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E634C
	.align 2, 0
_080E6340: .4byte gCurTask
_080E6344:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E634C:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080E6368
	ldr r0, [r5]
	bl TaskDestroy
	b _080E646A
_080E6368:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080E63B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E6380
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080E6380
	str r2, [r3, #0x44]
	movs r1, #0
_080E6380:
	cmp r1, #0
	beq _080E63B4
	ldr r0, _080E63B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E63B0: .4byte gUnk_03000510
_080E63B4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080E641C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080E63F6
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #4
_080E63F6:
	ldr r0, _080E6420 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E641C: .4byte gKirbys
_080E6420: .4byte gUnk_03000510
_080E6424:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080E644C
	movs r0, #0x3c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080E644C:
	ldr r1, [r3, #0x38]
	movs r0, #0xe8
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080E6464
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _080E646A
_080E6464:
	adds r0, r3, #0
	bl sub_0806FAC8
_080E646A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E6470
sub_080E6470: @ 0x080E6470
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E64A0 @ =sub_080E6550
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
	beq _080E64A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E64AC
	.align 2, 0
_080E64A0: .4byte sub_080E6550
_080E64A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E64AC:
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
	ldr r0, _080E6548 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E64FC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E64FC:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080E654C @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E652A
	orrs r2, r3
_080E652A:
	str r2, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0x16
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0x1e
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6548: .4byte gUnk_03000510
_080E654C: .4byte 0x12010400

	thumb_func_start sub_080E6550
sub_080E6550: @ 0x080E6550
	push {r4, r5, lr}
	ldr r2, _080E656C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E6570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E6578
	.align 2, 0
_080E656C: .4byte gCurTask
_080E6570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E6578:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E6592
	ldr r0, [r2]
	bl TaskDestroy
	b _080E668E
_080E6592:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E65A0
	orrs r1, r3
	str r1, [r4, #8]
	b _080E668E
_080E65A0:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E65DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E65E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E65E0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E668E
	.align 2, 0
_080E65DC: .4byte gUnk_03000510
_080E65E0:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E65F0
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E65F8
_080E65F0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E65F8:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E668E
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E661C
	ldr r0, _080E6618 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E668E
	.align 2, 0
_080E6618: .4byte 0xFFFBFFFF
_080E661C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E668E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E668E
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E6654
	ldr r2, _080E664C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E6650 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E6656
	.align 2, 0
_080E664C: .4byte gCurLevelInfo
_080E6650: .4byte 0x0000065E
_080E6654:
	movs r1, #0xff
_080E6656:
	cmp r1, #0xff
	beq _080E668E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E6694 @ =gUnk_02022EB0
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
	ldr r2, _080E6698 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E668E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6694: .4byte gUnk_02022EB0
_080E6698: .4byte gUnk_02022F50

	thumb_func_start CreateGobblerBaby
CreateGobblerBaby: @ 0x080E669C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E66D0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E66D4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E66D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E66E0
	.align 2, 0
_080E66D0: .4byte ObjectMain
_080E66D4: .4byte ObjectDestroy
_080E66D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E66E0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080E6744
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
_080E6744:
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6754
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
_080E6754:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E6780 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080E79A4
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6774
	adds r0, r4, #0
	bl sub_080E761C
_080E6774:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E6780: .4byte sub_0809F840

	thumb_func_start sub_080E6784
sub_080E6784: @ 0x080E6784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r0, [r0, #0x70]
	mov sl, r0
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080E67B0
	cmp r0, #1
	ble _080E67AA
	cmp r0, #2
	beq _080E67B6
_080E67AA:
	movs r7, #0xe8
	movs r6, #0xf0
	b _080E67BA
_080E67B0:
	movs r7, #0xec
	movs r6, #0x1e
	b _080E67BA
_080E67B6:
	movs r7, #0xc
	movs r6, #0x18
_080E67BA:
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E67CC
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
_080E67CC:
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080E67E4
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	b _080E67FC
_080E67E4:
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E67FC
	movs r0, #0
	ldr r5, [sp]
	strb r0, [r5]
_080E67FC:
	mov r1, ip
	adds r1, #0xac
	mov r0, sl
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r3, #0
	mov r8, r3
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, sl
	adds r0, #0x83
	ldrb r1, [r0]
	mov sb, r2
	adds r5, r4, #0
	str r0, [sp, #4]
	cmp r1, #3
	blt _080E683E
	cmp r1, #4
	bgt _080E6834
	b _080E69A0
_080E6834:
	cmp r1, #0xf
	bgt _080E683E
	cmp r1, #0xe
	blt _080E683E
	b _080E6B00
_080E683E:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6884 @ =0xFFFFFC00
	ands r3, r2
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6888
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E6884: .4byte 0xFFFFFC00
_080E6888:
	cmp r3, r0
	bge _080E68AC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E68A8 @ =0xFFFFFEE8
	adds r4, r1, #0
	cmp r0, r2
	bge _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E68A8: .4byte 0xFFFFFEE8
_080E68AC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E68CC
	adds r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E68DA
	mov r5, r8
	strh r5, [r4]
	b _080E68DA
_080E68CC:
	subs r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E68DA
	mov r0, r8
	strh r0, [r4]
_080E68DA:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6920 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6928
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E691C
	b _080E6BFC
_080E691C:
	ldr r2, _080E6924 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6920: .4byte 0xFFFFFC00
_080E6924: .4byte 0xFFFFFE80
_080E6928:
	cmp r3, r0
	ble _080E697C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E695C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6958 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E6952
	b _080E6BFC
_080E6952:
	movs r2, #0xc0
	lsls r2, r2, #1
	b _080E6BF8
	.align 2, 0
_080E6958: .4byte 0xFFFFFE80
_080E695C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E6974
	b _080E6BFC
_080E6974:
	ldr r2, _080E6978 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6978: .4byte 0xFFFFFE80
_080E697C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E699A
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6998
	b _080E6C56
_080E6998:
	b _080E6C52
_080E699A:
	adds r0, r2, #0
	subs r0, #0x28
	b _080E6C4A
_080E69A0:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E69E0 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E69E4
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E69E0: .4byte 0xFFFFFC00
_080E69E4:
	cmp r3, r0
	bge _080E6A08
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6A04 @ =0xFFFFFEE0
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E6A04: .4byte 0xFFFFFEE0
_080E6A08:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6A2A
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6A3A
	mov r5, r8
	strh r5, [r4]
	b _080E6A3A
_080E6A2A:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6A3A
	mov r0, r8
	strh r0, [r4]
_080E6A3A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6A80 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6A88
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6A7C
	b _080E6BFC
_080E6A7C:
	ldr r2, _080E6A84 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6A80: .4byte 0xFFFFFC00
_080E6A84: .4byte 0xFFFFFDE0
_080E6A88:
	cmp r3, r0
	ble _080E6ADC
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6ABC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6AB8 @ =0xFFFFFDE0
	cmp r0, r2
	bge _080E6AB2
	b _080E6BFC
_080E6AB2:
	movs r2, #0x88
	lsls r2, r2, #2
	b _080E6BF8
	.align 2, 0
_080E6AB8: .4byte 0xFFFFFDE0
_080E6ABC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6AD4
	b _080E6BFC
_080E6AD4:
	ldr r2, _080E6AD8 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6AD8: .4byte 0xFFFFFDE0
_080E6ADC:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6AFA
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6AF8
	b _080E6C56
_080E6AF8:
	b _080E6C52
_080E6AFA:
	adds r0, r2, #0
	subs r0, #0x60
	b _080E6C4A
_080E6B00:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6B40 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6B44
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B40: .4byte 0xFFFFFC00
_080E6B44:
	cmp r3, r0
	bge _080E6B68
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6B64 @ =0xFFFFFF00
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B64: .4byte 0xFFFFFF00
_080E6B68:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6B8A
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6B9A
	mov r5, r8
	strh r5, [r4]
	b _080E6B9A
_080E6B8A:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6B9A
	mov r0, r8
	strh r0, [r4]
_080E6B9A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6BC8 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6BCC
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E6C04
	.align 2, 0
_080E6BC8: .4byte 0xFFFFFC00
_080E6BCC:
	cmp r3, r0
	ble _080E6C28
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6C04
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6C00 @ =0xFFFFFD20
	cmp r0, r2
	blt _080E6BFC
	movs r2, #0xb8
	lsls r2, r2, #2
_080E6BF8:
	cmp r0, r2
	ble _080E6C56
_080E6BFC:
	strh r2, [r1]
	b _080E6C56
	.align 2, 0
_080E6C00: .4byte 0xFFFFFD20
_080E6C04:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb8
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6BFC
	ldr r2, _080E6C24 @ =0xFFFFFD20
_080E6C1C:
	cmp r0, r2
	bge _080E6C56
	b _080E6BFC
	.align 2, 0
_080E6C24: .4byte 0xFFFFFD20
_080E6C28:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6C46
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6C56
	b _080E6C52
_080E6C46:
	ldr r5, _080E6CD4 @ =0xFFFFFEC0
	adds r0, r2, r5
_080E6C4A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6C56
_080E6C52:
	movs r0, #0
	strh r0, [r1]
_080E6C56:
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	mov r1, ip
	str r2, [r1, #8]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	mov r5, ip
	str r2, [r5, #8]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E6C90
	ldrb r0, [r3, #1]
	cmp r0, #0xe
	bne _080E6C90
	movs r0, #2
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080E6C90:
	adds r2, r4, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6CAA
	movs r0, #0
	strh r0, [r2]
	str r1, [r5, #0x44]
_080E6CAA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6CD8 @ =0x000129FF
	cmp r1, r0
	ble _080E6CC4
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E6CC4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6CD4: .4byte 0xFFFFFEC0
_080E6CD8: .4byte 0x000129FF

	thumb_func_start sub_080E6CDC
sub_080E6CDC: @ 0x080E6CDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E6D34 @ =sub_080E6784
	cmp r1, r0
	bne _080E6D44
	ldr r2, _080E6D38 @ =sub_080E6D4C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _080E6D3C
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	b _080E6D44
	.align 2, 0
_080E6D34: .4byte sub_080E6784
_080E6D38: .4byte sub_080E6D4C
_080E6D3C:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
	strb r0, [r1]
_080E6D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E6D4C
sub_080E6D4C: @ 0x080E6D4C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _080E6DDC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	bgt _080E6DC0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E6D9C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6D8C @ =0xFFFFFF00
	cmp r2, r0
	bge _080E6D90
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E6DC6
	.align 2, 0
_080E6D8C: .4byte 0xFFFFFF00
_080E6D90:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080E6DC6
	strh r0, [r1]
	b _080E6DC6
_080E6D9C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E6DB8
	ldr r2, _080E6DBC @ =0xFFFFFF00
	cmp r0, r2
	bge _080E6DC6
_080E6DB8:
	strh r2, [r1]
	b _080E6DC6
	.align 2, 0
_080E6DBC: .4byte 0xFFFFFF00
_080E6DC0:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080E6DC6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080E6DE0
	adds r0, r4, #0
	bl sub_080E7CA8
	b _080E6DE0
_080E6DDC:
	subs r0, #1
	strb r0, [r1]
_080E6DE0:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6DFA
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E6DFA:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6E18 @ =0x000129FF
	cmp r1, r0
	ble _080E6E12
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r4, #0x44]
_080E6E12:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E6E18: .4byte 0x000129FF

	thumb_func_start sub_080E6E1C
sub_080E6E1C: @ 0x080E6E1C
	push {r4, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080E6F14
	ands r1, r0
	cmp r1, #0
	beq _080E6E68
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6E54 @ =0xFFFFFDC0
	cmp r2, r0
	bge _080E6E5C
	ldr r0, _080E6E58 @ =0x0000FDC0
	strh r0, [r1]
	b _080E6E86
	.align 2, 0
_080E6E54: .4byte 0xFFFFFDC0
_080E6E58: .4byte 0x0000FDC0
_080E6E5C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E6E86
	strh r0, [r1]
	b _080E6E86
_080E6E68:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6E84
	ldr r2, _080E6EB8 @ =0xFFFFFDC0
	cmp r0, r2
	bge _080E6E86
_080E6E84:
	strh r2, [r1]
_080E6E86:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r3, ip
	ldr r2, [r3, #0x44]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r2, r4
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6EC4
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6EBC @ =0xFE800000
	adds r3, r0, #0
	cmp r1, r2
	blt _080E6EB2
	b _080E6FEA
_080E6EB2:
	ldr r0, _080E6EC0 @ =0x0000FE80
	b _080E6FE8
	.align 2, 0
_080E6EB8: .4byte 0xFFFFFDC0
_080E6EBC: .4byte 0xFE800000
_080E6EC0: .4byte 0x0000FE80
_080E6EC4:
	ldr r3, _080E6EEC @ =0xFFFFF800
	adds r0, r2, r3
	cmp r1, r0
	bgt _080E6EF0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E6EE6
	b _080E6FEA
_080E6EE6:
	strh r2, [r3]
	b _080E6FEA
	.align 2, 0
_080E6EEC: .4byte 0xFFFFF800
_080E6EF0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6F0E
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6F0E:
	adds r0, r2, #0
	subs r0, #0x12
	b _080E6FDE
_080E6F14:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E6F40
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6F3C @ =0xFFFFFD30
	cmp r0, r2
	blt _080E6F5C
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6F5E
	b _080E6F5C
	.align 2, 0
_080E6F3C: .4byte 0xFFFFFD30
_080E6F40:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6F5C
	ldr r2, _080E6F8C @ =0xFFFFFD30
	cmp r0, r2
	bge _080E6F5E
_080E6F5C:
	strh r2, [r1]
_080E6F5E:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r0, ip
	ldr r2, [r0, #0x44]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6F98
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6F90 @ =0xFF300000
	adds r3, r0, #0
	cmp r1, r2
	bge _080E6FEA
	ldr r0, _080E6F94 @ =0x0000FF30
	b _080E6FE8
	.align 2, 0
_080E6F8C: .4byte 0xFFFFFD30
_080E6F90: .4byte 0xFF300000
_080E6F94: .4byte 0x0000FF30
_080E6F98:
	ldr r4, _080E6FB8 @ =0xFFFFF800
	adds r0, r2, r4
	cmp r1, r0
	bgt _080E6FBC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0xd0
	ble _080E6FEA
	movs r0, #0xd0
	b _080E6FE8
	.align 2, 0
_080E6FB8: .4byte 0xFFFFF800
_080E6FBC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6FDA
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6FDA:
	adds r0, r2, #0
	subs r0, #8
_080E6FDE:
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6FEA
_080E6FE6:
	movs r0, #0
_080E6FE8:
	strh r0, [r3]
_080E6FEA:
	adds r2, r3, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r4, ip
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E7004
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E7004:
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E7024 @ =0x000129FF
	cmp r1, r0
	ble _080E701E
	movs r0, #0
	strh r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E701E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7024: .4byte 0x000129FF

	thumb_func_start sub_080E7028
sub_080E7028: @ 0x080E7028
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E7068 @ =sub_080E6784
	cmp r1, r0
	beq _080E7038
	b _080E7142
_080E7038:
	ldr r2, _080E706C @ =sub_080E7148
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E70C4
	ldr r2, _080E7070 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E7074 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E7078 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E707C @ =0x00005554
	cmp r2, r0
	bhi _080E7080
	movs r1, #0
	b _080E708A
	.align 2, 0
_080E7068: .4byte sub_080E6784
_080E706C: .4byte sub_080E7148
_080E7070: .4byte gRngVal
_080E7074: .4byte 0x00196225
_080E7078: .4byte 0x3C6EF35F
_080E707C: .4byte 0x00005554
_080E7080:
	ldr r0, _080E7098 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E708A
	movs r1, #1
_080E708A:
	cmp r1, #1
	beq _080E70AA
	cmp r1, #1
	bgt _080E709C
	cmp r1, #0
	beq _080E70A2
	b _080E70BC
	.align 2, 0
_080E7098: .4byte 0x0000AAA9
_080E709C:
	cmp r1, #2
	beq _080E70B2
	b _080E70BC
_080E70A2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xc0
	b _080E70BA
_080E70AA:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xe0
	b _080E70BA
_080E70B2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x88
	lsls r0, r0, #1
_080E70BA:
	strh r0, [r1]
_080E70BC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080E7138
_080E70C4:
	ldr r2, _080E70E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E70E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E70E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E70EC @ =0x00005554
	cmp r2, r0
	bhi _080E70F0
	movs r1, #0
	b _080E70FA
	.align 2, 0
_080E70E0: .4byte gRngVal
_080E70E4: .4byte 0x00196225
_080E70E8: .4byte 0x3C6EF35F
_080E70EC: .4byte 0x00005554
_080E70F0:
	ldr r0, _080E7108 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E70FA
	movs r1, #1
_080E70FA:
	cmp r1, #1
	beq _080E7120
	cmp r1, #1
	bgt _080E710C
	cmp r1, #0
	beq _080E7112
	b _080E7130
	.align 2, 0
_080E7108: .4byte 0x0000AAA9
_080E710C:
	cmp r1, #2
	beq _080E7128
	b _080E7130
_080E7112:
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, _080E711C @ =0x0000FFF0
	b _080E712E
	.align 2, 0
_080E711C: .4byte 0x0000FFF0
_080E7120:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x20
	b _080E712E
_080E7128:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x40
_080E712E:
	strh r0, [r1]
_080E7130:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E7138:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	movs r0, #0xee
	strh r0, [r1]
_080E7142:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7148
sub_080E7148: @ 0x080E7148
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r5, #1
	ands r5, r0
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r1, _080E7198 @ =0xFFFFFC00
	ands r3, r1
	mov r0, ip
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080E719C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E7198: .4byte 0xFFFFFC00
_080E719C:
	cmp r3, r2
	bge _080E71BC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E71B8 @ =0xFFFFFEE0
	cmp r0, r2
	bge _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E71B8: .4byte 0xFFFFFEE0
_080E71BC:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E71D8
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E71E6
	b _080E71E4
_080E71D8:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E71E6
_080E71E4:
	strh r4, [r1]
_080E71E6:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080E720C @ =0xFFFFFC00
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080E7210
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080E724C
	.align 2, 0
_080E720C: .4byte 0xFFFFFC00
_080E7210:
	cmp r3, r2
	ble _080E7270
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E724C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E7248 @ =0xFFFFFE80
	cmp r0, r2
	blt _080E7242
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E729C
_080E7242:
	strh r2, [r1]
	b _080E729C
	.align 2, 0
_080E7248: .4byte 0xFFFFFE80
_080E724C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E7242
	ldr r2, _080E726C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E729C
	b _080E7242
	.align 2, 0
_080E726C: .4byte 0xFFFFFE80
_080E7270:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E728C
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E729C
	b _080E7298
_080E728C:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E729C
_080E7298:
	movs r0, #0
	strh r0, [r1]
_080E729C:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r5
	mov r2, ip
	str r0, [r2, #8]
	ldr r0, [r2, #0x50]
	cmp r0, #0
	bne _080E72B8
	mov r0, ip
	bl sub_080E7CBC
_080E72B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E72C0
sub_080E72C0: @ 0x080E72C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov r8, r0
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080E738C @ =gUnk_08356B88
	cmp r0, #0
	bne _080E73C2
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne _080E72F8
	subs r0, r2, #1
	strb r0, [r6]
_080E72F8:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0xff
	beq _080E7320
	strb r1, [r2]
_080E7320:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080E7390
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080E735C
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E735C
	rsbs r0, r3, #0
	strh r0, [r2]
_080E735C:
	adds r0, r4, #0
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
	cmp r1, r0
	beq _080E73C2
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080E73C2
	.align 2, 0
_080E738C: .4byte gUnk_08356B88
_080E7390:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r5, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r5, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E73F2
	rsbs r0, r5, #0
	strh r0, [r2]
_080E73C2:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r4, #0
	adds r6, #0x9f
	movs r0, #0x83
	adds r0, r0, r4
	mov ip, r0
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080E73F2
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080E7404
_080E73F2:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080E7404:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	mov r3, ip
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, #2
	bne _080E747C
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E7444
	ldr r0, _080E7440 @ =0x00003FFF
	cmp r2, r0
	ble _080E744C
	b _080E7450
	.align 2, 0
_080E7440: .4byte 0x00003FFF
_080E7444:
	subs r1, r1, r0
	ldr r0, _080E7474 @ =0x00003FFF
	cmp r1, r0
	bgt _080E7450
_080E744C:
	movs r0, #1
	strh r0, [r4, #4]
_080E7450:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E747C
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E7478
	movs r0, #0
	mov r2, ip
	strb r0, [r2]
	ldr r1, [r4, #8]
	movs r2, #1
	eors r1, r2
	str r1, [r4, #8]
	b _080E747A
	.align 2, 0
_080E7474: .4byte 0x00003FFF
_080E7478:
	movs r0, #1
_080E747A:
	strb r0, [r3]
_080E747C:
	ldrb r2, [r6]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080E74DA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E74DA
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080E74D4
	ldr r0, [r4, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r2, _080E74CC @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E74D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080E74DA
	.align 2, 0
_080E74CC: .4byte sub_080E6784
_080E74D0: .4byte 0xFDFFFFFF
_080E74D4:
	movs r0, #0xff
	orrs r0, r2
	strb r0, [r6]
_080E74DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E74E4
sub_080E74E4: @ 0x080E74E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E7532
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E7532
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E7532
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E7532
	cmp r0, #0x7a
	bhi _080E7532
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E7532
	ldr r4, [r6, #8]
	ldr r0, _080E7538 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080E753C
_080E7532:
	movs r0, #0
	b _080E75F0
	.align 2, 0
_080E7538: .4byte 0x03800B00
_080E753C:
	ldr r2, _080E75FC @ =sub_080E7CF4
	adds r0, r5, #0
	movs r1, #7
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0
	strh r4, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	strh r4, [r1]
	adds r1, #0x4d
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _080E7600 @ =gUnk_08356B00
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E7584
	rsbs r0, r3, #0
	strh r0, [r2]
_080E7584:
	ldr r1, _080E7604 @ =gKirbys
	ldr r0, _080E7608 @ =gUnk_0203AD3C
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
	bne _080E75EE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E75B0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E75EE
_080E75B0:
	ldr r1, _080E760C @ =gUnk_08D60FA4
	ldr r4, _080E7610 @ =gSongTable
	ldr r2, _080E7614 @ =0x00000C34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E75D6
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E75EE
_080E75D6:
	cmp r3, #0
	beq _080E75E6
	ldr r0, _080E7618 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E75EE
_080E75E6:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E75EE:
	movs r0, #1
_080E75F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E75FC: .4byte sub_080E7CF4
_080E7600: .4byte gUnk_08356B00
_080E7604: .4byte gKirbys
_080E7608: .4byte gUnk_0203AD3C
_080E760C: .4byte gUnk_08D60FA4
_080E7610: .4byte gSongTable
_080E7614: .4byte 0x00000C34
_080E7618: .4byte gUnk_0203AD10

	thumb_func_start sub_080E761C
sub_080E761C: @ 0x080E761C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E764C @ =sub_080E76FC
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
	beq _080E7650
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7658
	.align 2, 0
_080E764C: .4byte sub_080E76FC
_080E7650:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7658:
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
	ldr r0, _080E76F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E76A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E76A8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080E76F8 @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E76D6
	orrs r2, r3
_080E76D6:
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E76F4: .4byte gUnk_03000510
_080E76F8: .4byte 0x12010400

	thumb_func_start sub_080E76FC
sub_080E76FC: @ 0x080E76FC
	push {r4, r5, lr}
	ldr r2, _080E7718 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E771C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7724
	.align 2, 0
_080E7718: .4byte gCurTask
_080E771C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7724:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E773E
	ldr r0, [r2]
	bl TaskDestroy
	b _080E783A
_080E773E:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E774C
	orrs r1, r3
	str r1, [r4, #8]
	b _080E783A
_080E774C:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E7788 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E778C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E778C
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E783A
	.align 2, 0
_080E7788: .4byte gUnk_03000510
_080E778C:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E779C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E77A4
_080E779C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E77A4:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E783A
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E77C8
	ldr r0, _080E77C4 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E783A
	.align 2, 0
_080E77C4: .4byte 0xFFFBFFFF
_080E77C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E783A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E783A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E7800
	ldr r2, _080E77F8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E77FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E7802
	.align 2, 0
_080E77F8: .4byte gCurLevelInfo
_080E77FC: .4byte 0x0000065E
_080E7800:
	movs r1, #0xff
_080E7802:
	cmp r1, #0xff
	beq _080E783A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E7840 @ =gUnk_02022EB0
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
	ldr r2, _080E7844 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E783A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7840: .4byte gUnk_02022EB0
_080E7844: .4byte gUnk_02022F50

	thumb_func_start sub_080E7848
sub_080E7848: @ 0x080E7848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov sl, r5
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080E7878 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E787C @ =gUnk_020229E0
	mov ip, r7
	b _080E7894
	.align 2, 0
_080E7878: .4byte gUnk_020229D4
_080E787C: .4byte gUnk_020229E0
_080E7880:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E789C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E7894:
	cmp r0, #0
	bne _080E7880
	orrs r2, r3
	str r2, [r1]
_080E789C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, r8
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x9f
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
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
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	cmp r6, #1
	beq _080E7908
	cmp r6, #1
	ble _080E7902
	cmp r6, #2
	beq _080E790E
_080E7902:
	mov r0, sl
	adds r0, #0xb4
	b _080E7912
_080E7908:
	mov r0, sl
	adds r0, #0xb8
	b _080E7912
_080E790E:
	mov r0, sl
	adds r0, #0xbc
_080E7912:
	str r1, [r0]
	ldr r1, _080E798C @ =gKirbys
	ldr r0, _080E7990 @ =gUnk_0203AD3C
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
	bne _080E797C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E793C
	ldrb r0, [r4]
	cmp r0, r2
	bne _080E797C
_080E793C:
	ldr r1, _080E7994 @ =gUnk_08D60FA4
	ldr r4, _080E7998 @ =gSongTable
	ldr r2, _080E799C @ =0x00000CE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E7962
	movs r7, #0xce
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E797C
_080E7962:
	cmp r3, #0
	beq _080E7974
	ldr r0, _080E79A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E797C
_080E7974:
	movs r0, #0xce
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E797C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E798C: .4byte gKirbys
_080E7990: .4byte gUnk_0203AD3C
_080E7994: .4byte gUnk_08D60FA4
_080E7998: .4byte gSongTable
_080E799C: .4byte 0x00000CE4
_080E79A0: .4byte gUnk_0203AD10

	thumb_func_start sub_080E79A4
sub_080E79A4: @ 0x080E79A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79CC @ =sub_080E6784
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E79D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E79CC: .4byte sub_080E6784
_080E79D0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080E79D4
sub_080E79D4: @ 0x080E79D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79F4 @ =sub_080E3FFC
	movs r1, #0
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
_080E79F4: .4byte sub_080E3FFC

	thumb_func_start sub_080E79F8
sub_080E79F8: @ 0x080E79F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A14 @ =sub_080E5290
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A14: .4byte sub_080E5290

	thumb_func_start sub_080E7A18
sub_080E7A18: @ 0x080E7A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A34 @ =sub_080E5760
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A34: .4byte sub_080E5760

	thumb_func_start sub_080E7A38
sub_080E7A38: @ 0x080E7A38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7A4C
	adds r0, r2, #0
	bl sub_080E7A50
_080E7A4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7A50
sub_080E7A50: @ 0x080E7A50
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r4, [r0]
	ldr r2, _080E7A78 @ =sub_080E7A80
	adds r0, r5, #0
	movs r1, #6
	bl ObjectSetFunc
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _080E7A7C @ =gUnk_08356AD8
	str r0, [r4]
	movs r0, #0x10
	strh r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A78: .4byte sub_080E7A80
_080E7A7C: .4byte gUnk_08356AD8

	thumb_func_start sub_080E7A80
sub_080E7A80: @ 0x080E7A80
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7A96
	adds r0, r1, #0
	bl sub_080E7A9C
_080E7A96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7A9C
sub_080E7A9C: @ 0x080E7A9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7AB8 @ =sub_080E7ABC
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7AB8: .4byte sub_080E7ABC

	thumb_func_start sub_080E7ABC
sub_080E7ABC: @ 0x080E7ABC
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	adds r4, r2, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #7
	bne _080E7AF0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B06
	movs r0, #8
	strb r0, [r4]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080E7AEC @ =gUnk_08356AF0
	str r0, [r1]
	b _080E7B06
	.align 2, 0
_080E7AEC: .4byte gUnk_08356AF0
_080E7AF0:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7B06
	adds r0, r2, #0
	bl sub_080E4BD0
	movs r0, #4
	strb r0, [r4]
_080E7B06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B0C
sub_080E7B0C: @ 0x080E7B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B34 @ =sub_080E7B38
	movs r1, #9
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7B34: .4byte sub_080E7B38

	thumb_func_start sub_080E7B38
sub_080E7B38: @ 0x080E7B38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B4C
	adds r0, r2, #0
	bl sub_080E59B4
_080E7B4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B50
sub_080E7B50: @ 0x080E7B50
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B78 @ =sub_080E5AC4
	movs r1, #0xb
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7B78: .4byte sub_080E5AC4

	thumb_func_start sub_080E7B7C
sub_080E7B7C: @ 0x080E7B7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BA0 @ =sub_080E5B8C
	movs r1, #0xc
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BA0: .4byte sub_080E5B8C

	thumb_func_start sub_080E7BA4
sub_080E7BA4: @ 0x080E7BA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BC8 @ =sub_080E45BC
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BC8: .4byte sub_080E45BC

	thumb_func_start sub_080E7BCC
sub_080E7BCC: @ 0x080E7BCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BFC @ =sub_080E4784
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0x12
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BFC: .4byte sub_080E4784

	thumb_func_start sub_080E7C00
sub_080E7C00: @ 0x080E7C00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7C4C @ =sub_080E5D04
	movs r1, #0x11
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080E7C50 @ =0x0000FFC0
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7C4C: .4byte sub_080E5D04
_080E7C50: .4byte 0x0000FFC0

	thumb_func_start sub_080E7C54
sub_080E7C54: @ 0x080E7C54
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xb4
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C72
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C72
	movs r0, #0
	str r0, [r3]
_080E7C72:
	adds r3, r2, #0
	adds r3, #0xb8
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C8C
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C8C
	movs r0, #0
	str r0, [r3]
_080E7C8C:
	adds r2, #0xbc
	ldr r0, [r2]
	cmp r0, #0
	beq _080E7CA4
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7CA4
	movs r0, #0
	str r0, [r2]
_080E7CA4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7CA8
sub_080E7CA8: @ 0x080E7CA8
	push {lr}
	ldr r2, _080E7CB8 @ =sub_080E6E1C
	movs r1, #3
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080E7CB8: .4byte sub_080E6E1C

	thumb_func_start sub_080E7CBC
sub_080E7CBC: @ 0x080E7CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7CF0 @ =sub_080E72C0
	movs r1, #6
	bl ObjectSetFunc
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #2
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	str r1, [r4, #8]
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7CF0: .4byte sub_080E72C0

	thumb_func_start sub_080E7CF4
sub_080E7CF4: @ 0x080E7CF4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bne _080E7D06
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080E7D06:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7D16
	adds r0, r2, #0
	bl sub_080E7D1C
_080E7D16:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7D1C
sub_080E7D1C: @ 0x080E7D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7D34 @ =sub_080E7D38
	movs r1, #8
	bl ObjectSetFunc
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D34: .4byte sub_080E7D38

	thumb_func_start sub_080E7D38
sub_080E7D38: @ 0x080E7D38
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7D66
	ldr r2, _080E7D6C @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E7D70 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_080E7D66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D6C: .4byte sub_080E6784
_080E7D70: .4byte 0xFDFFFFFF

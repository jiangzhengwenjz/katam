	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateKingGolem
CreateKingGolem: @ 0x080DA0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DA124 @ =ObjectMain
	ldr r2, _080DA128 @ =0x00001001
	ldr r1, _080DA12C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA130
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA138
	.align 2, 0
_080DA124: .4byte ObjectMain
_080DA128: .4byte 0x00001001
_080DA12C: .4byte ObjectDestroy
_080DA130:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA138:
	adds r4, r0, #0
	adds r7, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x33
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0xbe
	movs r0, #0
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0xbd
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	orrs r0, r5
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #0x48
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DA29C @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, _080DA2A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA1C2
	movs r0, #1
	bl sub_08019DA8
	cmp r0, #0
	beq _080DA1C8
_080DA1C2:
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
_080DA1C8:
	movs r0, #0xd4
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	movs r0, #0xec
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #0x40
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080DA2A4 @ =sub_080DB85C
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080DA68C
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
	ldr r2, _080DA2A8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DA2AC @ =0x0000065E
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
	ldr r2, _080DA2B0 @ =gKirbys
	ldr r0, _080DA2B4 @ =gUnk_0203AD3C
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
	bne _080DA28A
	ldr r0, _080DA2B8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA28A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA28A:
	adds r0, r4, #0
	bl sub_080DB640
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080DA29C: .4byte 0x001080A0
_080DA2A0: .4byte gUnk_0203AD10
_080DA2A4: .4byte sub_080DB85C
_080DA2A8: .4byte gCurLevelInfo
_080DA2AC: .4byte 0x0000065E
_080DA2B0: .4byte gKirbys
_080DA2B4: .4byte gUnk_0203AD3C
_080DA2B8: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA2BC
sub_080DA2BC: @ 0x080DA2BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	mov sl, r1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
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
	beq _080DA2F0
	b _080DA480
_080DA2F0:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080DA304
	b _080DA480
_080DA304:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov r8, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
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
	bne _080DA334
	b _080DA480
_080DA334:
	ldr r4, _080DA490 @ =gCurLevelInfo
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
	bl sub_080DA4B0
	ldr r0, _080DA494 @ =sub_080DB664
	str r0, [r5, #0x78]
	ldr r0, [r5, #8]
	ldr r1, _080DA498 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080DA3BC
	movs r0, #0
	strb r0, [r1, #9]
_080DA3BC:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080DA49C @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080DA480
	ldr r0, _080DA4A0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DA480
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080DA43E
	movs r4, #1
_080DA406:
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
	bls _080DA406
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080DA43E:
	ldr r1, _080DA4A0 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080DA4A4 @ =gKirbys
	ldr r0, _080DA4A8 @ =gUnk_0203AD3C
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
	bne _080DA480
	ldr r0, _080DA4AC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA480:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA490: .4byte gCurLevelInfo
_080DA494: .4byte sub_080DB664
_080DA498: .4byte 0xFFFFFDFF
_080DA49C: .4byte 0x0000065E
_080DA4A0: .4byte gUnk_08352D80
_080DA4A4: .4byte gKirbys
_080DA4A8: .4byte gUnk_0203AD3C
_080DA4AC: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA4B0
sub_080DA4B0: @ 0x080DA4B0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r0, #0
	movs r5, #0
	strh r5, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x9f
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x83
	strb r0, [r3]
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r2, #8]
	adds r4, r2, #0
	adds r4, #0x80
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bgt _080DA4F8
	strh r5, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r2, #8]
	movs r0, #5
	strb r0, [r3]
	ldr r0, _080DA4F4 @ =sub_080DB694
	str r0, [r2, #0x78]
	b _080DA538
	.align 2, 0
_080DA4F4: .4byte sub_080DB694
_080DA4F8:
	ldr r0, _080DA528 @ =sub_080DA540
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DA522
	ldr r1, _080DA52C @ =gUnk_08351530
	ldr r0, _080DA530 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA534
_080DA522:
	movs r0, #0x10
	b _080DA536
	.align 2, 0
_080DA528: .4byte sub_080DA540
_080DA52C: .4byte gUnk_08351530
_080DA530: .4byte gUnk_0203AD30
_080DA534:
	movs r0, #0x30
_080DA536:
	strh r0, [r2, #4]
_080DA538:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA540
sub_080DA540: @ 0x080DA540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r3, r5, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080DA578
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2a
	bls _080DA580
	movs r0, #0
	strb r0, [r2]
	b _080DA580
_080DA578:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
_080DA580:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DA672
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r1, [r1]
	mov ip, r0
	cmp r1, #0
	bne _080DA5C2
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080DA5C8 @ =gUnk_08351530
	ldr r0, _080DA5CC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA5D0
_080DA5C2:
	movs r0, #0x10
	b _080DA5D2
	.align 2, 0
_080DA5C8: .4byte gUnk_08351530
_080DA5CC: .4byte gUnk_0203AD30
_080DA5D0:
	movs r0, #0x30
_080DA5D2:
	strh r0, [r3, #4]
	ldr r6, _080DA650 @ =gRngVal
	ldr r0, [r6]
	ldr r7, _080DA654 @ =0x00196225
	mov sb, r7
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _080DA658 @ =0x3C6EF35F
	mov r8, r2
	adds r4, r0, r2
	str r4, [r6]
	lsrs r0, r4, #0x10
	movs r7, #1
	mov sl, r7
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080DA600
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #3
	bls _080DA672
_080DA600:
	movs r7, #0x80
	ldr r1, _080DA65C @ =gUnk_08351530
	ldr r0, _080DA660 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldrsh r1, [r7, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DA66C
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r4, sl
	ands r0, r4
	adds r1, r3, #0
	adds r1, #0x85
	cmp r0, #0
	bne _080DA638
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DA66C
_080DA638:
	mov r7, sl
	strb r7, [r1]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _080DA664
	adds r0, r3, #0
	bl sub_080DB6BC
	b _080DA672
	.align 2, 0
_080DA650: .4byte gRngVal
_080DA654: .4byte 0x00196225
_080DA658: .4byte 0x3C6EF35F
_080DA65C: .4byte gUnk_08351530
_080DA660: .4byte gUnk_0203AD30
_080DA664:
	adds r0, r3, #0
	bl sub_080DB790
	b _080DA672
_080DA66C:
	adds r0, r3, #0
	bl sub_080DB790
_080DA672:
	adds r1, r5, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA68C
sub_080DA68C: @ 0x080DA68C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DA6C0 @ =sub_080DA768
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DA6C4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA6C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA6D0
	.align 2, 0
_080DA6C0: .4byte sub_080DA768
_080DA6C4: .4byte sub_0803DCCC
_080DA6C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA6D0:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DA748 @ =0x00000303
	movs r0, #7
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DA74C @ =gKirbys
	ldr r0, _080DA750 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DA754
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA758
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DA758
	.align 2, 0
_080DA748: .4byte 0x00000303
_080DA74C: .4byte gKirbys
_080DA750: .4byte gUnk_0203AD3C
_080DA754:
	mov r1, r8
	strb r1, [r5]
_080DA758:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DA768
sub_080DA768: @ 0x080DA768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080DA790 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA794
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA79C
	.align 2, 0
_080DA790: .4byte gCurTask
_080DA794:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA79C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov sb, r0
	mov sl, sb
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DA7BA
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAAD6
_080DA7BA:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DA7CA
	adds r0, r1, #0
	orrs r0, r3
	b _080DAAD4
_080DA7CA:
	ldr r0, _080DA890 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r4, #0x42
	adds r4, r4, r5
	mov r8, r4
	ldr r3, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0x2b
	cmp r0, #0
	beq _080DA81A
	ldr r7, _080DA894 @ =gCurLevelInfo
	mov ip, r7
	ldrh r4, [r4]
_080DA7E4:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080DA812
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _080DA898 @ =gUnk_02026D50
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DA82C
_080DA812:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DA7E4
_080DA81A:
	movs r0, #1
	cmp r0, #0
	beq _080DA82C
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DA82C:
	ldr r2, _080DA89C @ =gKirbys
	ldr r0, _080DA8A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DA8E0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DA8AC
	cmp r3, #0
	bne _080DA906
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8A4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DA8A8 @ =0x0400000A
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
	b _080DA906
	.align 2, 0
_080DA890: .4byte gUnk_0203AD44
_080DA894: .4byte gCurLevelInfo
_080DA898: .4byte gUnk_02026D50
_080DA89C: .4byte gKirbys
_080DA8A0: .4byte gUnk_0203AD3C
_080DA8A4: .4byte 0xFFF7FFFF
_080DA8A8: .4byte 0x0400000A
_080DA8AC:
	cmp r3, #0
	bne _080DA906
	movs r0, #0x1e
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8D8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DA8DC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DA906
	.align 2, 0
_080DA8D8: .4byte 0xFFF7FFFF
_080DA8DC: .4byte 0x0400000A
_080DA8E0:
	cmp r3, #0
	beq _080DA8FC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DA8FC
	adds r0, r3, #0
	bl VramFree
	str r4, [r5, #0xc]
_080DA8FC:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DA906:
	ldr r2, _080DA944 @ =gKirbys
	ldr r0, _080DA948 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DA950
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DA954
	ldr r4, _080DA94C @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA954
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DA952
	.align 2, 0
_080DA944: .4byte gKirbys
_080DA948: .4byte gUnk_0203AD3C
_080DA94C: .4byte 0x00000303
_080DA950:
	movs r0, #0
_080DA952:
	strb r0, [r6]
_080DA954:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DA9A8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DA972
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DA972
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DA972:
	cmp r3, #0
	beq _080DA9A8
	ldr r0, _080DA9A4 @ =gUnk_03000510
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
	beq _080DAA18
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DA9A4: .4byte gUnk_03000510
_080DA9A8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DAA10 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #4
_080DA9E8:
	ldr r0, _080DAA14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DAA18
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DAA10: .4byte gKirbys
_080DAA14: .4byte gUnk_03000510
_080DAA18:
	mov r0, sb
	ldr r1, [r0, #0x78]
	ldr r0, _080DAA78 @ =sub_080DB7DC
	cmp r1, r0
	bne _080DAABE
	mov r1, sl
	adds r1, #0xbd
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	movs r3, #1
	strh r3, [r5, #8]
	mov r0, sb
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAA5C
	mov r2, sb
	adds r2, #0x80
	ldr r1, _080DAA7C @ =gUnk_08351530
	ldr r0, _080DAA80 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAA90
_080DAA5C:
	ldr r2, _080DAA84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAA88 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080DAA8C @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DAAAA
	b _080DAAA6
	.align 2, 0
_080DAA78: .4byte sub_080DB7DC
_080DAA7C: .4byte gUnk_08351530
_080DAA80: .4byte gUnk_0203AD30
_080DAA84: .4byte gRngVal
_080DAA88: .4byte 0x00196225
_080DAA8C: .4byte 0x3C6EF35F
_080DAA90:
	ldr r2, _080DAAE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAAEC @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080DAAF0 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080DAAAA
_080DAAA6:
	movs r0, #2
	strh r0, [r5, #8]
_080DAAAA:
	ldr r0, _080DAAF4 @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080DAAF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DAAFC @ =sub_080DAB00
	str r0, [r1, #8]
_080DAABE:
	adds r0, r5, #0
	bl sub_0806FAC8
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080DAAD6
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
_080DAAD4:
	strh r0, [r5, #6]
_080DAAD6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAAE8: .4byte gRngVal
_080DAAEC: .4byte 0x00196225
_080DAAF0: .4byte 0x3C6EF35F
_080DAAF4: .4byte 0x00000303
_080DAAF8: .4byte gCurTask
_080DAAFC: .4byte sub_080DAB00

	thumb_func_start sub_080DAB00
sub_080DAB00: @ 0x080DAB00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080DAB28 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DAB2C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DAB34
	.align 2, 0
_080DAB28: .4byte gCurTask
_080DAB2C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DAB34:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	mov sl, r6
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DAB50
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAFCC
_080DAB50:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DAB60
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DAFCC
_080DAB60:
	ldr r0, _080DAC2C @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r5
	mov r8, r1
	ldr r3, [r5, #0xc]
	adds r7, r5, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _080DABB6
	ldr r2, _080DAC30 @ =gCurLevelInfo
	mov sb, r2
	ldrh r4, [r1]
	str r4, [sp, #0x28]
	ldr r1, _080DAC34 @ =gUnk_02026D50
	mov ip, r1
_080DAB80:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r4, sb
	adds r1, r0, r4
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _080DABAE
	ldr r4, _080DAC38 @ =0x0000065E
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DABC8
_080DABAE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DAB80
_080DABB6:
	movs r0, #1
	cmp r0, #0
	beq _080DABC8
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DABC8:
	ldr r2, _080DAC3C @ =gKirbys
	ldr r0, _080DAC40 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DAC80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DAC4C
	cmp r3, #0
	bne _080DACA6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC44 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DAC48 @ =0x0400000A
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
	b _080DACA6
	.align 2, 0
_080DAC2C: .4byte gUnk_0203AD44
_080DAC30: .4byte gCurLevelInfo
_080DAC34: .4byte gUnk_02026D50
_080DAC38: .4byte 0x0000065E
_080DAC3C: .4byte gKirbys
_080DAC40: .4byte gUnk_0203AD3C
_080DAC44: .4byte 0xFFF7FFFF
_080DAC48: .4byte 0x0400000A
_080DAC4C:
	cmp r3, #0
	bne _080DACA6
	movs r0, #0x1e
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC78 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DAC7C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DACA6
	.align 2, 0
_080DAC78: .4byte 0xFFF7FFFF
_080DAC7C: .4byte 0x0400000A
_080DAC80:
	cmp r3, #0
	beq _080DAC9C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DAC9C
	adds r0, r3, #0
	bl VramFree
	str r4, [r5, #0xc]
_080DAC9C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DACA6:
	ldr r2, _080DACE4 @ =gKirbys
	ldr r0, _080DACE8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DACF0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DACF4
	ldr r4, _080DACEC @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DACF4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DACF2
	.align 2, 0
_080DACE4: .4byte gKirbys
_080DACE8: .4byte gUnk_0203AD3C
_080DACEC: .4byte 0x00000303
_080DACF0:
	movs r0, #0
_080DACF2:
	strb r0, [r7]
_080DACF4:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DAD48
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DAD12
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DAD12
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DAD12:
	cmp r3, #0
	beq _080DAD48
	ldr r0, _080DAD44 @ =gUnk_03000510
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
	beq _080DADB8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DAD44: .4byte gUnk_03000510
_080DAD48:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DADB0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DAD88
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #4
_080DAD88:
	ldr r0, _080DADB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DADB8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DADB0: .4byte gKirbys
_080DADB4: .4byte gUnk_03000510
_080DADB8:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x12
	beq _080DADC2
	b _080DAF3C
_080DADC2:
	mov r0, sl
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAEC4
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #1
	beq _080DADE0
	cmp r0, #2
	beq _080DADF4
_080DADE0:
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAE1E
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	b _080DAE38
_080DADF4:
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DAE28 @ =gUnk_08351530
	ldr r0, _080DAE2C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAE38
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAE30
_080DAE1E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080DB1B8
	b _080DAE38
	.align 2, 0
_080DAE28: .4byte gUnk_08351530
_080DAE2C: .4byte gUnk_0203AD30
_080DAE30:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
_080DAE38:
	ldr r1, _080DAEA4 @ =gKirbys
	ldr r0, _080DAEA8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAE64
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAE64:
	ldr r1, _080DAEAC @ =gUnk_08D60FA4
	ldr r4, _080DAEB0 @ =gSongTable
	ldr r7, _080DAEB4 @ =0x00000C0C
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAE88
	ldr r1, _080DAEB8 @ =0x00000C08
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAE88:
	cmp r3, #0
	beq _080DAE9A
	ldr r0, _080DAEBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAE9A:
	ldr r0, _080DAEC0 @ =0x00000181
	bl m4aSongNumStart
	b _080DAF34
	.align 2, 0
_080DAEA4: .4byte gKirbys
_080DAEA8: .4byte gUnk_0203AD3C
_080DAEAC: .4byte gUnk_08D60FA4
_080DAEB0: .4byte gSongTable
_080DAEB4: .4byte 0x00000C0C
_080DAEB8: .4byte 0x00000C08
_080DAEBC: .4byte gUnk_0203AD10
_080DAEC0: .4byte 0x00000181
_080DAEC4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	ldr r1, _080DAFDC @ =gKirbys
	ldr r0, _080DAFE0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAEF8
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAEF8:
	ldr r1, _080DAFE4 @ =gUnk_08D60FA4
	ldr r4, _080DAFE8 @ =gSongTable
	ldr r2, _080DAFEC @ =0x00000C0C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAF1C
	ldr r7, _080DAFF0 @ =0x00000C08
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAF1C:
	cmp r3, #0
	beq _080DAF2E
	ldr r0, _080DAFF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAF2E:
	ldr r0, _080DAFF8 @ =0x00000181
	bl m4aSongNumStart
_080DAF34:
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
_080DAF3C:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DAF8C
	mov r0, sl
	adds r0, #0xbd
	ldrb r1, [r0]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _080DAF8C
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r0, #0x64
	ble _080DAF8C
	adds r0, r6, #0
	adds r0, #0x80
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _080DAF6E
	adds r0, r6, #0
	bl sub_080DA4B0
_080DAF6E:
	mov r1, sl
	adds r1, #0xbc
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #4]
	ldr r0, _080DAFFC @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #7
	strb r0, [r1]
	ldr r0, _080DB000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DB004 @ =sub_080DA768
	str r0, [r1, #8]
_080DAF8C:
	ldrb r0, [r5, #1]
	cmp r0, #0x20
	bne _080DAFC0
	mov r1, sl
	adds r1, #0xbd
	ldrb r2, [r1]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r2, r0
	bge _080DAFC0
	adds r0, r2, #1
	movs r2, #0
	strb r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	strh r2, [r5, #4]
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldrh r1, [r5, #6]
	ldr r0, _080DB008 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_080DAFC0:
	adds r0, r5, #0
	bl sub_0806FAC8
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080DAFCC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAFDC: .4byte gKirbys
_080DAFE0: .4byte gUnk_0203AD3C
_080DAFE4: .4byte gUnk_08D60FA4
_080DAFE8: .4byte gSongTable
_080DAFEC: .4byte 0x00000C0C
_080DAFF0: .4byte 0x00000C08
_080DAFF4: .4byte gUnk_0203AD10
_080DAFF8: .4byte 0x00000181
_080DAFFC: .4byte 0x00000303
_080DB000: .4byte gCurTask
_080DB004: .4byte sub_080DA768
_080DB008: .4byte 0x0000FFFD

	thumb_func_start CreateKingGolemRock
CreateKingGolemRock: @ 0x080DB00C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DB040 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DB044 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DB048
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080DB050
	.align 2, 0
_080DB040: .4byte ObjectMain
_080DB044: .4byte ObjectDestroy
_080DB048:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080DB050:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0x9c
	bne _080DB096
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	ldr r1, _080DB0F0 @ =0x00108020
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
_080DB096:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
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
	ldr r2, _080DB0F4 @ =gUnk_08351648
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080DB0F8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080DB0F0: .4byte 0x00108020
_080DB0F4: .4byte gUnk_08351648
_080DB0F8: .4byte sub_0809F840

	thumb_func_start sub_080DB0FC
sub_080DB0FC: @ 0x080DB0FC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DB122
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DB130
	b _080DB12C
_080DB122:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DB130
_080DB12C:
	movs r0, #0
	strh r0, [r1]
_080DB130:
	ldr r1, [r3, #0x44]
	movs r0, #0x94
	lsls r0, r0, #9
	cmp r1, r0
	ble _080DB1B2
	movs r0, #0x85
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DB17E
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB1B2
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080DB1B2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #0
	movs r0, #2
	mov r2, ip
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080DB1B0
_080DB17E:
	cmp r0, #0
	bne _080DB1B2
	movs r2, #1
	mov r4, ip
	strb r2, [r4]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #0x26
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	beq _080DB1A8
	adds r1, #0x24
	movs r0, #0x80
	lsls r0, r0, #1
	b _080DB1B0
_080DB1A8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080DB1B0:
	strh r0, [r1]
_080DB1B2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB1B8
sub_080DB1B8: @ 0x080DB1B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0x9b
	str r0, [sp]
	cmp r1, #0
	beq _080DB1D4
	movs r1, #0x9c
	str r1, [sp]
_080DB1D4:
	ldr r0, [r6, #0x40]
	asrs r7, r0, #8
	ldr r0, [r6, #0x44]
	asrs r5, r0, #8
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB206
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DB2B8 @ =gUnk_08351530
	ldr r0, _080DB2BC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB2D4
_080DB206:
	ldr r2, _080DB2C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r7, #0x32
	subs r5, #0x1c
	mov ip, r5
	ldr r2, _080DB2D0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB24C
	adds r5, r0, #0
_080DB23A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB24C
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080DB23A
_080DB24C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB294
	ldr r5, _080DB2C0 @ =gRngVal
_080DB25C:
	ldr r1, [r5]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	cmp r3, r0
	blt _080DB286
	adds r2, r0, #0
_080DB274:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB286
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r3, r0
	bge _080DB274
_080DB286:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB25C
_080DB294:
	movs r0, #0x1a
	muls r0, r3, r0
	subs r7, r7, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r1, ip
	subs r5, r1, r0
	b _080DB384
	.align 2, 0
_080DB2B8: .4byte gUnk_08351530
_080DB2BC: .4byte gUnk_0203AD30
_080DB2C0: .4byte gRngVal
_080DB2C4: .4byte 0x00196225
_080DB2C8: .4byte 0x3C6EF35F
_080DB2CC: .4byte 0x00002AAA
_080DB2D0: .4byte gUnk_020229D4
_080DB2D4:
	ldr r2, _080DB3A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r5, #0x1c
	mov ip, r5
	subs r7, #0x3a
	mov sb, r7
	ldr r2, _080DB3B0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB31C
_080DB30A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB31C
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB30A
_080DB31C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB364
	ldr r2, _080DB3A4 @ =gRngVal
	movs r7, #1
	movs r5, #0x80
	lsls r5, r5, #7
_080DB332:
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	cmp r3, r5
	blt _080DB358
_080DB346:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB358
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB346
_080DB358:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	ands r0, r7
	cmp r0, #0
	bne _080DB332
_080DB364:
	movs r0, #0x2a
	muls r0, r3, r0
	mov r1, sb
	subs r7, r1, r0
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r2, ip
	subs r5, r2, r0
_080DB384:
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r3
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0
	mov r4, r8
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	str r1, [r4]
	b _080DB3D4
	.align 2, 0
_080DB3A4: .4byte gRngVal
_080DB3A8: .4byte 0x00196225
_080DB3AC: .4byte 0x3C6EF35F
_080DB3B0: .4byte gUnk_020229D4
_080DB3B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB3D4
	movs r2, #1
	lsls r2, r3
	mov r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	mov r2, r8
	str r1, [r2]
_080DB3D4:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080DB438 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r4, sp
	ldrb r4, [r4]
	strb r4, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #4]
	ldr r0, [r4]
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
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB438: .4byte gUnk_020229E0

	thumb_func_start sub_080DB43C
sub_080DB43C: @ 0x080DB43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	str r4, [sp]
	ldr r3, _080DB4C0 @ =gRngVal
	ldr r0, [r3]
	ldr r7, _080DB4C4 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080DB4C8 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #3
	ands r1, r0
	ldr r5, _080DB4CC @ =gUnk_020229D4
	cmp r1, #3
	bne _080DB47C
	mov ip, r3
	movs r3, #3
	adds r0, r2, #0
_080DB46C:
	muls r0, r7, r0
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	ands r1, r3
	cmp r1, #3
	beq _080DB46C
	mov r2, ip
	str r0, [r2]
_080DB47C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r0, #0x28
	mov ip, r0
	ldr r3, [sp]
	adds r3, #0xb8
	mov sl, r3
	movs r3, #0
	movs r6, #1
	ldr r2, [r5]
	adds r0, r2, #0
	ands r0, r6
	mov r7, sl
	str r7, [sp, #4]
	adds r7, r1, #0
	adds r7, #0x1f
	movs r1, #0xb0
	adds r1, r1, r4
	mov sb, r1
	adds r1, r4, #0
	adds r1, #0x56
	str r1, [sp, #0xc]
	adds r1, #0xa
	str r1, [sp, #8]
	cmp r0, #0
	bne _080DB4D0
	orrs r2, r6
	str r2, [r5]
	b _080DB4EC
	.align 2, 0
_080DB4C0: .4byte gRngVal
_080DB4C4: .4byte 0x00196225
_080DB4C8: .4byte 0x3C6EF35F
_080DB4CC: .4byte gUnk_020229D4
_080DB4D0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB4EC
	movs r2, #1
	lsls r2, r3
	ldr r1, [r5]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB4D0
	orrs r1, r2
	str r1, [r5]
_080DB4EC:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, _080DB5C4 @ =gUnk_020229E0
	adds r1, r1, r2
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r5, r8
	strh r5, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r7, [r1, #0xc]
	movs r0, #0x80
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldr r0, [r5]
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
	ldr r7, [sp, #0xc]
	ldrb r0, [r7]
	bl CreateObject
	mov r1, sl
	str r0, [r1]
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r3, [sp]
	str r3, [r0, #0x70]
	ldr r1, _080DB5C8 @ =gKirbys
	ldr r0, _080DB5CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080DB5B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DB572
	ldrb r0, [r7]
	cmp r0, r2
	bne _080DB5B2
_080DB572:
	ldr r1, _080DB5D0 @ =gUnk_08D60FA4
	ldr r4, _080DB5D4 @ =gSongTable
	ldr r7, _080DB5D8 @ =0x00000C14
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DB598
	movs r1, #0xc1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DB5B2
_080DB598:
	cmp r3, #0
	beq _080DB5AA
	ldr r0, _080DB5DC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB5B2
_080DB5AA:
	movs r0, #0xc1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DB5B2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB5C4: .4byte gUnk_020229E0
_080DB5C8: .4byte gKirbys
_080DB5CC: .4byte gUnk_0203AD3C
_080DB5D0: .4byte gUnk_08D60FA4
_080DB5D4: .4byte gSongTable
_080DB5D8: .4byte 0x00000C14
_080DB5DC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DB5E0
sub_080DB5E0: @ 0x080DB5E0
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x83
	strb r4, [r0]
	ldr r2, _080DB630 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB634 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB638 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB60E
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
_080DB60E:
	ldr r0, [r3, #8]
	movs r1, #8
	orrs r0, r1
	adds r1, #0xf8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x85
	strb r4, [r0]
	ldr r0, _080DB63C @ =sub_080DB7FC
	str r0, [r3, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DB630: .4byte gRngVal
_080DB634: .4byte 0x00196225
_080DB638: .4byte 0x3C6EF35F
_080DB63C: .4byte sub_080DB7FC

	thumb_func_start sub_080DB640
sub_080DB640: @ 0x080DB640
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DB660 @ =sub_080DA2BC
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
_080DB660: .4byte sub_080DA2BC

	thumb_func_start sub_080DB664
sub_080DB664: @ 0x080DB664
	push {lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080DB678
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080DB678:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080DB690
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB690:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB694
sub_080DB694: @ 0x080DB694
	push {lr}
	adds r2, r0, #0
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x23
	ble _080DB6B0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
_080DB6B0:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DB6BC
sub_080DB6BC: @ 0x080DB6BC
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB6D8 @ =sub_080DB6DC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB6D8: .4byte sub_080DB6DC

	thumb_func_start sub_080DB6DC
sub_080DB6DC: @ 0x080DB6DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080DB6FC
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080DB43C
_080DB6FC:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB726
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DB738 @ =gUnk_08351530
	ldr r0, _080DB73C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB740
_080DB726:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x38
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
	b _080DB74E
	.align 2, 0
_080DB738: .4byte gUnk_08351530
_080DB73C: .4byte gUnk_0203AD30
_080DB740:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x52
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
_080DB74E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB754
sub_080DB754: @ 0x080DB754
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #2
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB770 @ =sub_080DB774
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB770: .4byte sub_080DB774

	thumb_func_start sub_080DB774
sub_080DB774: @ 0x080DB774
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080DB78C
	adds r0, r1, #0
	bl sub_080DA4B0
_080DB78C:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB790
sub_080DB790: @ 0x080DB790
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB7AA
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x37
	bls _080DB7D2
	b _080DB7B4
_080DB7AA:
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x57
	bls _080DB7D2
_080DB7B4:
	adds r1, #0xbe
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB7D8 @ =sub_080DB7DC
	str r0, [r2, #0x78]
_080DB7D2:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7D8: .4byte sub_080DB7DC

	thumb_func_start sub_080DB7DC
sub_080DB7DC: @ 0x080DB7DC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _080DB7F8 @ =0x03E70000
	cmp r0, r1
	ble _080DB7F4
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB7F4:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7F8: .4byte 0x03E70000

	thumb_func_start sub_080DB7FC
sub_080DB7FC: @ 0x080DB7FC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DB818
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r2, #8]
_080DB818:
	movs r0, #4
	ldrsh r1, [r2, r0]
	cmp r1, #0x24
	bne _080DB82A
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB838
_080DB82A:
	cmp r1, #0x3c
	bne _080DB84C
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB84C
_080DB838:
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	ldr r1, _080DB850 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _080DB854 @ =0xFFFFF5B7
	ands r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB858 @ =sub_080DB0FC
	str r0, [r2, #0x78]
_080DB84C:
	pop {r0}
	bx r0
	.align 2, 0
_080DB850: .4byte 0xFFFFFBFF
_080DB854: .4byte 0xFFFFF5B7
_080DB858: .4byte sub_080DB0FC

	thumb_func_start sub_080DB85C
sub_080DB85C: @ 0x080DB85C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080DB8A0 @ =gUnk_03000510
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
	bne _080DB89A
	ldr r0, [r3, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DB89A
	ldr r2, _080DB8A4 @ =gUnk_08351648
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
_080DB89A:
	pop {r0}
	bx r0
	.align 2, 0
_080DB8A0: .4byte gUnk_03000510
_080DB8A4: .4byte gUnk_08351648

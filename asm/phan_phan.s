	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreatePhanPhan
CreatePhanPhan: @ 0x080CD5CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CD600 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CD604 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CD608
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD610
	.align 2, 0
_080CD600: .4byte ObjectMain
_080CD604: .4byte ObjectDestroy
_080CD608:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD610:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD630
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD638
_080CD630:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD638:
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xae
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x10
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080CF484
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080CD6C0
sub_080CD6C0: @ 0x080CD6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r4, [r0]
	ldr r3, [r6, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r6, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CD6F0
	b _080CD8A8
_080CD6F0:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r4, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CD704
	b _080CD8A8
_080CD704:
	ldr r1, [r6, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080CD712
	movs r0, #1
	orrs r3, r0
	b _080CD718
_080CD712:
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
_080CD718:
	str r3, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CD756
	b _080CD8A8
_080CD756:
	ldr r4, _080CD8B8 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CD8BC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CF20C
	adds r0, r6, #0
	bl sub_080CF44C
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CD7E4
	movs r0, #0
	strb r0, [r1, #9]
_080CD7E4:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CD8C0 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CD8A8
	ldr r0, _080CD8C4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CD8A8
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CD8A8
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CD866
	movs r4, #1
_080CD82E:
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
	bls _080CD82E
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CD866:
	ldr r1, _080CD8C4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CD8C8 @ =gKirbys
	ldr r0, _080CD8CC @ =gUnk_0203AD3C
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
	bne _080CD8A8
	ldr r0, _080CD8D0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CD8A8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CD8A8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CD8B8: .4byte gCurLevelInfo
_080CD8BC: .4byte 0xFFFFFDFF
_080CD8C0: .4byte 0x0000065E
_080CD8C4: .4byte gUnk_08352D80
_080CD8C8: .4byte gKirbys
_080CD8CC: .4byte gUnk_0203AD3C
_080CD8D0: .4byte gUnk_0203AD20

	thumb_func_start sub_080CD8D4
sub_080CD8D4: @ 0x080CD8D4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD8F2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD8FA
_080CD8F2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD8FA:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080CD90E
	movs r2, #0x60
	movs r3, #2
	b _080CD940
_080CD90E:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CD934 @ =gUnk_08351530
	ldr r0, _080CD938 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CD93C
	movs r2, #0x48
	movs r3, #2
	b _080CD940
	.align 2, 0
_080CD934: .4byte gUnk_08351530
_080CD938: .4byte gUnk_0203AD30
_080CD93C:
	movs r2, #0x48
	movs r3, #4
_080CD940:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, r3
	ble _080CD9E4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bls _080CD962
	adds r0, r4, #0
	bl sub_080CED7C
	b _080CDA9A
_080CD962:
	ldr r2, _080CD98C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CD990 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CD994 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #7
	ands r2, r0
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CD998
	movs r3, #1
	b _080CD9A2
	.align 2, 0
_080CD98C: .4byte gRngVal
_080CD990: .4byte 0x00196225
_080CD994: .4byte 0x3C6EF35F
_080CD998:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080CD9A2
	movs r3, #2
_080CD9A2:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080CD9AE
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080CD9AE:
	ldr r0, _080CD9C0 @ =gUnk_08355F54
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, r2
	bls _080CD9C4
	adds r0, r4, #0
	bl sub_080CF4C8
	b _080CDA9A
	.align 2, 0
_080CD9C0: .4byte gUnk_08355F54
_080CD9C4:
	ldr r0, _080CD9D8 @ =gUnk_08355F5A
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, r2
	bls _080CD9DC
	adds r0, r4, #0
	bl sub_080CE464
	b _080CDA9A
	.align 2, 0
_080CD9D8: .4byte gUnk_08355F5A
_080CD9DC:
	adds r0, r4, #0
	bl sub_080CE758
	b _080CDA9A
_080CD9E4:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080CD9FC
	cmp r1, r3
	blt _080CDA02
	b _080CDA38
_080CD9FC:
	subs r0, r0, r2
	cmp r0, r3
	bge _080CDA38
_080CDA02:
	ldr r2, _080CDA28 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CDA2C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080CDA30 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CDA50
	ldr r0, _080CDA34 @ =sub_080CDC84
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	b _080CDA9A
	.align 2, 0
_080CDA28: .4byte gRngVal
_080CDA2C: .4byte 0x00196225
_080CDA30: .4byte 0x3C6EF35F
_080CDA34: .4byte sub_080CDC84
_080CDA38:
	ldr r3, _080CDA60 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _080CDA64 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080CDA68 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDA70
_080CDA50:
	ldr r0, _080CDA6C @ =sub_080CF4A8
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	b _080CDA9A
	.align 2, 0
_080CDA60: .4byte gRngVal
_080CDA64: .4byte 0x00196225
_080CDA68: .4byte 0x3C6EF35F
_080CDA6C: .4byte sub_080CF4A8
_080CDA70:
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r1, _080CDA88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080CDA90
	ldr r0, _080CDA8C @ =sub_080CDAA4
	b _080CDA92
	.align 2, 0
_080CDA88: .4byte 0x3C6EF35F
_080CDA8C: .4byte sub_080CDAA4
_080CDA90:
	ldr r0, _080CDAA0 @ =sub_080CDC84
_080CDA92:
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080CDA9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CDAA0: .4byte sub_080CDC84

	thumb_func_start sub_080CDAA4
sub_080CDAA4: @ 0x080CDAA4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDB38
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CDAF0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDAF4
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	b _080CDB74
	.align 2, 0
_080CDAF0: .4byte 0xFFFFF800
_080CDAF4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	bgt _080CDBC4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CDB34 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CDBC0
	.align 2, 0
_080CDB34: .4byte 0xFFFFF800
_080CDB38:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDB84
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080CDB80 @ =0xFFFFF800
_080CDB74:
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x40]
	adds r4, r2, #0
	b _080CDBC4
	.align 2, 0
_080CDB80: .4byte 0xFFFFF800
_080CDB84:
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080CDC10 @ =0xFFFFF800
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	blt _080CDBC4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDBC0:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080CDBC4:
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x6a
	movs r7, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r5, r0, #0
	cmp r1, r2
	bge _080CDBE2
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5]
_080CDBE2:
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r6, r2, #0
	cmp r1, #3
	beq _080CDBF2
	cmp r1, #5
	bne _080CDC3E
_080CDBF2:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDC6C
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CDC14
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CDC1C
	.align 2, 0
_080CDC10: .4byte 0xFFFFF800
_080CDC14:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080CDC1C:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDC36
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CDC36:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080CDC6C
_080CDC3E:
	cmp r1, #4
	beq _080CDC5A
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CDC6C
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r3, #0
	bl sub_080CD8D4
	b _080CDC7E
_080CDC5A:
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080CDC6C
	movs r0, #5
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
_080CDC6C:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDC7E
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CDC7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CDC84
sub_080CDC84: @ 0x080CDC84
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDD18
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CDCD0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDCD4
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	b _080CDD54
	.align 2, 0
_080CDCD0: .4byte 0xFFFFF800
_080CDCD4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	bgt _080CDDA4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CDD14 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CDDA0
	.align 2, 0
_080CDD14: .4byte 0xFFFFF800
_080CDD18:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDD64
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080CDD60 @ =0xFFFFF800
_080CDD54:
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x40]
	adds r4, r2, #0
	b _080CDDA4
	.align 2, 0
_080CDD60: .4byte 0xFFFFF800
_080CDD64:
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080CDDF0 @ =0xFFFFF800
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	blt _080CDDA4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDDA0:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080CDDA4:
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x6a
	movs r7, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r5, r0, #0
	cmp r1, r2
	bge _080CDDC2
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5]
_080CDDC2:
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r6, r2, #0
	cmp r1, #3
	beq _080CDDD2
	cmp r1, #5
	bne _080CDE1E
_080CDDD2:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDE4C
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CDDF4
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xfe
	lsls r0, r0, #8
	b _080CDDFC
	.align 2, 0
_080CDDF0: .4byte 0xFFFFF800
_080CDDF4:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080CDDFC:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDE16
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CDE16:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080CDE4C
_080CDE1E:
	cmp r1, #4
	beq _080CDE3A
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CDE4C
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r3, #0
	bl sub_080CD8D4
	b _080CDE5E
_080CDE3A:
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080CDE4C
	movs r0, #5
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
_080CDE4C:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDE5E
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CDE5E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CDE64
sub_080CDE64: @ 0x080CDE64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDEFC
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CDEB4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDEB8
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDEB4: .4byte 0xFFFFF800
_080CDEB8:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _080CDF80
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CDEF8 @ =0xFFFFF800
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDEF8: .4byte 0xFFFFF800
_080CDEFC:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDF40
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CDF3C @ =0xFFFFF800
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDF3C: .4byte 0xFFFFF800
_080CDF40:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CDF9C @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _080CDF80
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDF7C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CDF80:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDFA0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	b _080CDFA8
	.align 2, 0
_080CDF9C: .4byte 0xFFFFF800
_080CDFA0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
_080CDFA8:
	strh r0, [r1]
	adds r5, r1, #0
	ldrb r1, [r2]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CDFBC
	movs r0, #0
	strh r0, [r5]
_080CDFBC:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080CE050
	ldr r1, _080CE058 @ =gKirbys
	ldr r0, _080CE05C @ =gUnk_0203AD3C
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
	bne _080CE02C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CDFF0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE02C
_080CDFF0:
	ldr r1, _080CE060 @ =gUnk_08D60FA4
	ldr r6, _080CE064 @ =gSongTable
	ldr r2, _080CE068 @ =0x00000B1C
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE014
	ldr r1, _080CE06C @ =0x00000B18
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE02C
_080CE014:
	cmp r3, #0
	beq _080CE026
	ldr r0, _080CE070 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE02C
_080CE026:
	ldr r0, _080CE074 @ =0x00000163
	bl m4aSongNumStart
_080CE02C:
	ldr r0, _080CE078 @ =sub_080CE07C
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE03E
	movs r0, #0xa8
	lsls r0, r0, #3
_080CE03E:
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE050
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CE050:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CE058: .4byte gKirbys
_080CE05C: .4byte gUnk_0203AD3C
_080CE060: .4byte gUnk_08D60FA4
_080CE064: .4byte gSongTable
_080CE068: .4byte 0x00000B1C
_080CE06C: .4byte 0x00000B18
_080CE070: .4byte gUnk_0203AD10
_080CE074: .4byte 0x00000163
_080CE078: .4byte sub_080CE07C

	thumb_func_start sub_080CE07C
sub_080CE07C: @ 0x080CE07C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE114
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CE0CC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CE0D0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE0CC: .4byte 0xFFFFF800
_080CE0D0:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CE198
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CE110 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE110: .4byte 0xFFFFF800
_080CE114:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CE158
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CE154 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE154: .4byte 0xFFFFF800
_080CE158:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CE210 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CE198
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CE194:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CE198:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CE218
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080CE1D2
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CE1D2
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE1D2
	rsbs r0, r3, #0
	strh r0, [r2]
_080CE1D2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080CE218
	ldr r2, _080CE214 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE22C
	movs r0, #0
	strb r0, [r1]
	b _080CE22C
	.align 2, 0
_080CE210: .4byte 0xFFFFF800
_080CE214: .4byte sub_080CF4A8
_080CE218:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE22C
	adds r0, r4, #0
	bl sub_080CE234
_080CE22C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE234
sub_080CE234: @ 0x080CE234
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE2E0 @ =sub_080CE2FC
	movs r1, #0x12
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE264
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CE264:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CE2E4 @ =gKirbys
	ldr r0, _080CE2E8 @ =gUnk_0203AD3C
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
	bne _080CE2D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CE298
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE2D8
_080CE298:
	ldr r1, _080CE2EC @ =gUnk_08D60FA4
	ldr r4, _080CE2F0 @ =gSongTable
	ldr r2, _080CE2F4 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE2BE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE2D8
_080CE2BE:
	cmp r3, #0
	beq _080CE2D0
	ldr r0, _080CE2F8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE2D8
_080CE2D0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE2D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CE2E0: .4byte sub_080CE2FC
_080CE2E4: .4byte gKirbys
_080CE2E8: .4byte gUnk_0203AD3C
_080CE2EC: .4byte gUnk_08D60FA4
_080CE2F0: .4byte gSongTable
_080CE2F4: .4byte 0x00000B24
_080CE2F8: .4byte gUnk_0203AD10

	thumb_func_start sub_080CE2FC
sub_080CE2FC: @ 0x080CE2FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE31C
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE31C:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0x12
	bne _080CE3F4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CE338
	b _080CE458
_080CE338:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08089864
	ldr r1, _080CE3D8 @ =gKirbys
	ldr r0, _080CE3DC @ =gUnk_0203AD3C
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
	bne _080CE3BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CE37A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE3BA
_080CE37A:
	ldr r1, _080CE3E0 @ =gUnk_08D60FA4
	ldr r5, _080CE3E4 @ =gSongTable
	ldr r2, _080CE3E8 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE3A0
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE3BA
_080CE3A0:
	cmp r3, #0
	beq _080CE3B2
	ldr r0, _080CE3EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE3BA
_080CE3B2:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE3BA:
	movs r0, #0x13
	strb r0, [r6]
	adds r2, r4, #0
	adds r2, #0x50
	ldr r3, _080CE3F0 @ =0x0000FE80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE458
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080CE458
	.align 2, 0
_080CE3D8: .4byte gKirbys
_080CE3DC: .4byte gUnk_0203AD3C
_080CE3E0: .4byte gUnk_08D60FA4
_080CE3E4: .4byte gSongTable
_080CE3E8: .4byte 0x00000B24
_080CE3EC: .4byte gUnk_0203AD10
_080CE3F0: .4byte 0x0000FE80
_080CE3F4:
	cmp r0, #0x13
	bne _080CE424
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080CE458
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE418
	movs r0, #0x14
	b _080CE456
_080CE418:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x2b
	bne _080CE458
	movs r0, #0x14
	b _080CE456
_080CE424:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CE458
	ldr r2, _080CE460 @ =sub_080CF4A8
	adds r0, r4, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE458
	movs r0, #0
_080CE456:
	strb r0, [r1]
_080CE458:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CE460: .4byte sub_080CF4A8

	thumb_func_start sub_080CE464
sub_080CE464: @ 0x080CE464
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE48C @ =sub_080CE4DC
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CE490
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CE498
	.align 2, 0
_080CE48C: .4byte sub_080CE4DC
_080CE490:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CE498:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE4AE
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CE4B6
_080CE4AE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080CE4B6:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE4D4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CE4D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE4DC
sub_080CE4DC: @ 0x080CE4DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE574
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CE52C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CE530
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE52C: .4byte 0xFFFFF800
_080CE530:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CE5F4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080CE570 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE570: .4byte 0xFFFFF800
_080CE574:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CE5B8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080CE5B4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE5B4: .4byte 0xFFFFF800
_080CE5B8:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CE62C @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CE5F4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CE5F0:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080CE5F4:
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	movs r7, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE610
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE610:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #7
	bne _080CE630
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080CE624
	b _080CE73C
_080CE624:
	movs r0, #8
	strb r0, [r6]
	b _080CE73C
	.align 2, 0
_080CE62C: .4byte 0xFFFFF800
_080CE630:
	cmp r0, #8
	bne _080CE6F8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CE644
	b _080CE73C
_080CE644:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	movs r0, #9
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	ldr r1, _080CE6E0 @ =gKirbys
	ldr r0, _080CE6E4 @ =gUnk_0203AD3C
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
	bne _080CE73C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CE69E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE73C
_080CE69E:
	ldr r1, _080CE6E8 @ =gUnk_08D60FA4
	ldr r4, _080CE6EC @ =gSongTable
	ldr r2, _080CE6F0 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE6C4
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE73C
_080CE6C4:
	cmp r3, #0
	beq _080CE6D6
	ldr r0, _080CE6F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE73C
_080CE6D6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080CE73C
	.align 2, 0
_080CE6E0: .4byte gKirbys
_080CE6E4: .4byte gUnk_0203AD3C
_080CE6E8: .4byte gUnk_08D60FA4
_080CE6EC: .4byte gSongTable
_080CE6F0: .4byte 0x00000B24
_080CE6F4: .4byte gUnk_0203AD10
_080CE6F8:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080CE73C
	ldr r2, _080CE738 @ =sub_080CF4A8
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r5, #0
	bl sub_080CD8D4
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE752
	movs r0, #0
	strb r0, [r1]
	b _080CE752
	.align 2, 0
_080CE738: .4byte sub_080CF4A8
_080CE73C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE752
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CE752:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CE758
sub_080CE758: @ 0x080CE758
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE780 @ =sub_080CE800
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CE784
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CE78C
	.align 2, 0
_080CE780: .4byte sub_080CE800
_080CE784:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CE78C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE7CC
	ldr r2, _080CE7C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CE7C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CE7C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE7E4
	movs r0, #2
	b _080CE7F6
	.align 2, 0
_080CE7C0: .4byte gRngVal
_080CE7C4: .4byte 0x00196225
_080CE7C8: .4byte 0x3C6EF35F
_080CE7CC:
	ldr r2, _080CE7E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CE7EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CE7F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE7F4
_080CE7E4:
	strh r1, [r4, #4]
	b _080CE7F8
	.align 2, 0
_080CE7E8: .4byte gRngVal
_080CE7EC: .4byte 0x00196225
_080CE7F0: .4byte 0x3C6EF35F
_080CE7F4:
	movs r0, #3
_080CE7F6:
	strh r0, [r4, #4]
_080CE7F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE800
sub_080CE800: @ 0x080CE800
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x3b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE81E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE81E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080CE846
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080CE836
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2]
_080CE836:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CE842
	b _080CE944
_080CE842:
	movs r0, #0xb
	b _080CE942
_080CE846:
	cmp r1, #0xb
	bne _080CE944
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CE944
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_08089864
	ldr r1, _080CE924 @ =gKirbys
	ldr r0, _080CE928 @ =gUnk_0203AD3C
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
	bne _080CE8E8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CE8A8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE8E8
_080CE8A8:
	ldr r1, _080CE92C @ =gUnk_08D60FA4
	ldr r4, _080CE930 @ =gSongTable
	ldr r2, _080CE934 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE8CE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE8E8
_080CE8CE:
	cmp r3, #0
	beq _080CE8E0
	ldr r0, _080CE938 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE8E8
_080CE8E0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE8E8:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080CE940
	ldr r2, _080CE93C @ =sub_080CF4A8
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_080CD8D4
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE944
	movs r0, #0
	strb r0, [r1]
	b _080CE944
	.align 2, 0
_080CE924: .4byte gKirbys
_080CE928: .4byte gUnk_0203AD3C
_080CE92C: .4byte gUnk_08D60FA4
_080CE930: .4byte gSongTable
_080CE934: .4byte 0x00000B24
_080CE938: .4byte gUnk_0203AD10
_080CE93C: .4byte sub_080CF4A8
_080CE940:
	movs r0, #0xa
_080CE942:
	strb r0, [r6]
_080CE944:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE94C
sub_080CE94C: @ 0x080CE94C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x15
	beq _080CE99A
	ldrb r0, [r6]
	cmp r0, #0
	bne _080CE99A
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080CE99A
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080CE99A
	cmp r0, #0x7a
	bhi _080CE99A
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080CE99A
	ldr r4, [r6, #8]
	ldr r0, _080CE9A0 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080CE9A4
_080CE99A:
	movs r0, #0
	b _080CEA48
	.align 2, 0
_080CE9A0: .4byte 0x03800B00
_080CE9A4:
	ldr r2, _080CEA54 @ =sub_080CEA7C
	adds r0, r5, #0
	movs r1, #0x15
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x9e
	strb r0, [r1]
	ldr r0, [r5, #0xc]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	ldr r0, _080CEA58 @ =gUnk_08355F60
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	str r6, [r5, #0x6c]
	ldr r1, _080CEA5C @ =gKirbys
	ldr r0, _080CEA60 @ =gUnk_0203AD3C
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
	bne _080CEA46
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CEA0C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CEA46
_080CEA0C:
	ldr r1, _080CEA64 @ =gUnk_08D60FA4
	ldr r4, _080CEA68 @ =gSongTable
	ldr r2, _080CEA6C @ =0x00000B6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CEA30
	ldr r1, _080CEA70 @ =0x00000B68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CEA46
_080CEA30:
	cmp r3, #0
	beq _080CEA40
	ldr r0, _080CEA74 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080CEA46
_080CEA40:
	ldr r0, _080CEA78 @ =0x0000016D
	bl m4aSongNumStart
_080CEA46:
	movs r0, #1
_080CEA48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080CEA54: .4byte sub_080CEA7C
_080CEA58: .4byte gUnk_08355F60
_080CEA5C: .4byte gKirbys
_080CEA60: .4byte gUnk_0203AD3C
_080CEA64: .4byte gUnk_08D60FA4
_080CEA68: .4byte gSongTable
_080CEA6C: .4byte 0x00000B6C
_080CEA70: .4byte 0x00000B68
_080CEA74: .4byte gUnk_0203AD10
_080CEA78: .4byte 0x0000016D

	thumb_func_start sub_080CEA7C
sub_080CEA7C: @ 0x080CEA7C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldr r1, [r2, #0xc]
	movs r4, #0x80
	ands r4, r1
	cmp r4, #0
	beq _080CEAA2
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080CF51C
	b _080CEB46
_080CEAA2:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080CEADA
	ldrb r1, [r2, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080CEACA
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CEAD2
_080CEACA:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080CEAD2:
	strh r0, [r1]
	adds r4, r2, #0
	adds r4, #0x9e
	b _080CEB16
_080CEADA:
	adds r0, r2, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r1, #0
	cmp r0, #0
	beq _080CEAFC
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080CEB16
	b _080CEB0E
_080CEAFC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CEB16
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080CEB16
_080CEB0E:
	adds r0, r2, #0
	bl sub_080CEB4C
	b _080CEB46
_080CEB16:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CEB30
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CEB30
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CEB30:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CEB46
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CEB46
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CEB46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CEB4C
sub_080CEB4C: @ 0x080CEB4C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080CEBB0 @ =sub_080CEBF8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r3, r0, r1
	ldr r0, _080CEBB4 @ =gUnk_08355F60
	str r0, [r3]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r1, _080CEBB8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _080CEBBC @ =0x000077FF
	cmp r1, r0
	bgt _080CEBC4
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CEBE0
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _080CEBC0 @ =gUnk_08355F68
	b _080CEBEA
	.align 2, 0
_080CEBB0: .4byte sub_080CEBF8
_080CEBB4: .4byte gUnk_08355F60
_080CEBB8: .4byte gCurLevelInfo
_080CEBBC: .4byte 0x000077FF
_080CEBC0: .4byte gUnk_08355F68
_080CEBC4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CEBE0
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _080CEBDC @ =gUnk_08355F68
	b _080CEBEA
	.align 2, 0
_080CEBDC: .4byte gUnk_08355F68
_080CEBE0:
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1b
	strb r1, [r0]
	ldr r0, _080CEBF4 @ =gUnk_08356038
_080CEBEA:
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CEBF4: .4byte gUnk_08356038

	thumb_func_start sub_080CEBF8
sub_080CEBF8: @ 0x080CEBF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	movs r5, #0x80
	ands r5, r1
	cmp r5, #0
	beq _080CEC16
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080CF51C
	b _080CED50
_080CEC16:
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	beq _080CECD0
	ldrb r0, [r6]
	cmp r0, #0x1c
	bne _080CEC64
	ldr r2, _080CEC60 @ =sub_080CF4A8
	adds r0, r4, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CED50
	movs r0, #0
	strb r0, [r1]
	b _080CED50
	.align 2, 0
_080CEC60: .4byte sub_080CF4A8
_080CEC64:
	movs r0, #0x1c
	strb r0, [r6]
	ldr r1, _080CED58 @ =gKirbys
	ldr r0, _080CED5C @ =gUnk_0203AD3C
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
	bne _080CECD0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CEC94
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CECD0
_080CEC94:
	ldr r1, _080CED60 @ =gUnk_08D60FA4
	ldr r5, _080CED64 @ =gSongTable
	ldr r2, _080CED68 @ =0x00000B7C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CECB8
	ldr r1, _080CED6C @ =0x00000B78
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CECD0
_080CECB8:
	cmp r3, #0
	beq _080CECCA
	ldr r0, _080CED70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CECD0
_080CECCA:
	ldr r0, _080CED74 @ =0x0000016F
	bl m4aSongNumStart
_080CECD0:
	ldrb r0, [r6]
	cmp r0, #0x1a
	bne _080CED50
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080CECE4
	cmp r0, #0x1b
	beq _080CECE4
	cmp r0, #0x35
	bne _080CED50
_080CECE4:
	ldr r1, _080CED58 @ =gKirbys
	ldr r0, _080CED5C @ =gUnk_0203AD3C
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
	bne _080CED50
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CED10
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CED50
_080CED10:
	ldr r1, _080CED60 @ =gUnk_08D60FA4
	ldr r4, _080CED64 @ =gSongTable
	ldr r2, _080CED78 @ =0x00000B74
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CED36
	movs r1, #0xb7
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CED50
_080CED36:
	cmp r3, #0
	beq _080CED48
	ldr r0, _080CED70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CED50
_080CED48:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CED50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CED58: .4byte gKirbys
_080CED5C: .4byte gUnk_0203AD3C
_080CED60: .4byte gUnk_08D60FA4
_080CED64: .4byte gSongTable
_080CED68: .4byte 0x00000B7C
_080CED6C: .4byte 0x00000B78
_080CED70: .4byte gUnk_0203AD10
_080CED74: .4byte 0x0000016F
_080CED78: .4byte 0x00000B74

	thumb_func_start sub_080CED7C
sub_080CED7C: @ 0x080CED7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CEDA4 @ =sub_080CEE04
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CEDA8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CEDB0
	.align 2, 0
_080CEDA4: .4byte sub_080CEE04
_080CEDA8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CEDB0:
	str r0, [r4, #8]
	ldr r2, _080CEDD0 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080CEDD4 @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080CEDD8 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080CEDDC
	movs r0, #0x18
	b _080CEDFA
	.align 2, 0
_080CEDD0: .4byte gRngVal
_080CEDD4: .4byte 0x00196225
_080CEDD8: .4byte 0x3C6EF35F
_080CEDDC:
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, _080CEDF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080CEDF8
	movs r0, #8
	b _080CEDFA
	.align 2, 0
_080CEDF4: .4byte 0x3C6EF35F
_080CEDF8:
	movs r0, #0x28
_080CEDFA:
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CEE04
sub_080CEE04: @ 0x080CEE04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0xa
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CEE22
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CEE22:
	ldr r1, [r4, #8]
	movs r3, #4
	orrs r1, r3
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0xc
	bne _080CEE52
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080CEEBE
	movs r0, #0xd
	strb r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r2]
	b _080CEEBE
_080CEE52:
	cmp r0, #0xd
	bne _080CEE76
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CEEBE
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080CEEC8
	movs r0, #0xe
	strb r0, [r5]
	b _080CEEBE
_080CEE76:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080CEE82
	movs r0, #0xf
	strb r0, [r5]
_080CEE82:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080CEEBE
	ldr r2, _080CEEC4 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CEEBE
	movs r0, #0
	strb r0, [r1]
_080CEEBE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CEEC4: .4byte sub_080CF4A8

	thumb_func_start sub_080CEEC8
sub_080CEEC8: @ 0x080CEEC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CEEEC
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0xc
	b _080CEEF2
_080CEEEC:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0xc
_080CEEF2:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080CEF14 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080CEF18 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080CEF30
	.align 2, 0
_080CEF14: .4byte gUnk_020229D4
_080CEF18: .4byte gUnk_020229E0
_080CEF1C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CEF38
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CEF30:
	cmp r0, #0
	bne _080CEF1C
	orrs r2, r3
	str r2, [r1]
_080CEF38:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xaa
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x20
	strb r0, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreatePhanPhanApple
CreatePhanPhanApple: @ 0x080CEF9C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080CEFD0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CEFD4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CEFD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CEFE0
	.align 2, 0
_080CEFD0: .4byte ObjectMain
_080CEFD4: .4byte ObjectDestroy
_080CEFD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CEFE0:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CF0B0 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	adds r0, r4, #0
	bl sub_080CF0D4
	ldr r1, _080CF0B4 @ =gKirbys
	ldr r0, _080CF0B8 @ =gUnk_0203AD3C
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
	bne _080CF0A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CF068
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CF0A4
_080CF068:
	ldr r1, _080CF0BC @ =gUnk_08D60FA4
	ldr r5, _080CF0C0 @ =gSongTable
	ldr r2, _080CF0C4 @ =0x00000B3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CF08C
	ldr r1, _080CF0C8 @ =0x00000B38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CF0A4
_080CF08C:
	cmp r3, #0
	beq _080CF09E
	ldr r0, _080CF0CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CF0A4
_080CF09E:
	ldr r0, _080CF0D0 @ =0x00000167
	bl m4aSongNumStart
_080CF0A4:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CF0B0: .4byte sub_0809F840
_080CF0B4: .4byte gKirbys
_080CF0B8: .4byte gUnk_0203AD3C
_080CF0BC: .4byte gUnk_08D60FA4
_080CF0C0: .4byte gSongTable
_080CF0C4: .4byte 0x00000B3C
_080CF0C8: .4byte 0x00000B38
_080CF0CC: .4byte gUnk_0203AD10
_080CF0D0: .4byte 0x00000167

	thumb_func_start sub_080CF0D4
sub_080CF0D4: @ 0x080CF0D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF114 @ =sub_080CF148
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080CF0F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080CF0F4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF118
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x81
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r2, [r1]
	b _080CF12A
	.align 2, 0
_080CF114: .4byte sub_080CF148
_080CF118:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xac
	lsls r1, r1, #1
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	ldr r1, _080CF144 @ =0x000002AF
	strh r1, [r2]
_080CF12A:
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF13C
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CF13C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF144: .4byte 0x000002AF

	thumb_func_start sub_080CF148
sub_080CF148: @ 0x080CF148
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x1a
	strh r0, [r3]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CF166
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r3]
_080CF166:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _080CF1EC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CF1B0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF19A
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	subs r1, #0x30
	b _080CF1A6
_080CF19A:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, #0x40
_080CF1A6:
	strh r1, [r3]
	adds r3, r0, #0
	movs r0, #1
	strh r0, [r4, #4]
	b _080CF1DC
_080CF1B0:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF1CA
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r3]
	adds r3, r1, #0
	b _080CF1DC
_080CF1CA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r3]
	adds r3, r0, #0
_080CF1DC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF1EC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080CF1EC:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF206
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080CF206:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF20C
sub_080CF20C: @ 0x080CF20C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080CF23C @ =sub_080CF2E4
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
	beq _080CF240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF248
	.align 2, 0
_080CF23C: .4byte sub_080CF2E4
_080CF240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF248:
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
	ldr r0, _080CF2DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CF298
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080CF298:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080CF2E0 @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CF2BC
	orrs r2, r3
_080CF2BC:
	str r2, [r4, #8]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CF2DC: .4byte gUnk_03000510
_080CF2E0: .4byte 0x12010400

	thumb_func_start sub_080CF2E4
sub_080CF2E4: @ 0x080CF2E4
	push {r4, r5, lr}
	ldr r2, _080CF300 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CF304
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF30C
	.align 2, 0
_080CF300: .4byte gCurTask
_080CF304:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF30C:
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080CF324
	ldr r0, [r2]
	bl TaskDestroy
	b _080CF446
_080CF324:
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _080CF334
	orrs r4, r1
	str r4, [r5, #8]
	b _080CF446
_080CF334:
	ldr r0, _080CF360 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CF364
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _080CF364
	adds r0, r5, #0
	bl sub_0803D9A8
	b _080CF446
	.align 2, 0
_080CF360: .4byte gUnk_03000510
_080CF364:
	ldr r2, [r5, #0x70]
	ldr r0, [r2, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r5, #0x44]
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF386
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080CF38E
_080CF386:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF38E:
	str r0, [r5, #8]
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _080CF438
	ldr r0, [r2, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x68]
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080CF3BC
	ldr r0, _080CF3B8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080CF446
	.align 2, 0
_080CF3B8: .4byte 0xFFFBFFFF
_080CF3BC:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CF446
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080CF446
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080CF3F4
	ldr r2, _080CF3EC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080CF3F0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080CF3F6
	.align 2, 0
_080CF3EC: .4byte gCurLevelInfo
_080CF3F0: .4byte 0x0000065E
_080CF3F4:
	movs r1, #0xff
_080CF3F6:
	cmp r1, #0xff
	beq _080CF446
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080CF430 @ =gUnk_02022EB0
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
	ldr r2, _080CF434 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080CF446
	.align 2, 0
_080CF430: .4byte gUnk_02022EB0
_080CF434: .4byte gUnk_02022F50
_080CF438:
	ldr r0, [r2, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x68]
_080CF446:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF44C
sub_080CF44C: @ 0x080CF44C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF480 @ =sub_080CF4A8
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r4, #0x85
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CF47A
	movs r0, #0
	strb r0, [r4]
_080CF47A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF480: .4byte sub_080CF4A8

	thumb_func_start sub_080CF484
sub_080CF484: @ 0x080CF484
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF4A4 @ =sub_080CD6C0
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
_080CF4A4: .4byte sub_080CD6C0

	thumb_func_start sub_080CF4A8
sub_080CF4A8: @ 0x080CF4A8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CF4C2
	adds r0, r2, #0
	bl sub_080CD8D4
_080CF4C2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF4C8
sub_080CF4C8: @ 0x080CF4C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF4F0 @ =sub_080CDE64
	movs r1, #0x10
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CF4F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CF4FC
	.align 2, 0
_080CF4F0: .4byte sub_080CDE64
_080CF4F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF4FC:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xfd
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF516
	rsbs r0, r3, #0
	strh r0, [r2]
_080CF516:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF51C
sub_080CF51C: @ 0x080CF51C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x6c]
	ldr r2, _080CF544 @ =sub_080CF558
	movs r1, #0x1d
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080CF54C
	ldr r0, _080CF548 @ =0x0000FF80
	b _080CF54E
	.align 2, 0
_080CF544: .4byte sub_080CF558
_080CF548: .4byte 0x0000FF80
_080CF54C:
	movs r0, #0x80
_080CF54E:
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF558
sub_080CF558: @ 0x080CF558
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080CF598
	ldr r2, _080CF5A0 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CF598
	movs r0, #0
	strb r0, [r1]
_080CF598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF5A0: .4byte sub_080CF4A8


	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCrazyHand
CreateCrazyHand: @ 0x080DF318
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #5
	ldrb r0, [r5, #0xc]
	cmp r0, #0x47
	bne _080DF32E
	adds r2, #0x10
_080DF32E:
	ldr r0, _080DF354 @ =ObjectMain
	ldr r1, _080DF358 @ =sub_080E3E30
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DF35C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DF364
	.align 2, 0
_080DF354: .4byte ObjectMain
_080DF358: .4byte sub_080E3E30
_080DF35C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DF364:
	adds r4, r0, #0
	adds r0, #0xb4
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl InitObject
	ldr r1, [r4, #0xc]
	movs r3, #1
	orrs r1, r3
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #4
	orrs r1, r0
	orrs r1, r3
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DF3DC @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DF3E0
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080DF3E2
	.align 2, 0
_080DF3DC: .4byte 0x001080A0
_080DF3E0:
	orrs r2, r3
_080DF3E2:
	str r2, [r4, #8]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r6, #4
	str r6, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _080DF424
	adds r0, r4, #0
	bl sub_080DF5A4
	b _080DF490
_080DF424:
	ldr r2, _080DF4AC @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DF4B0 @ =0x0000065E
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
	ldr r2, _080DF4B4 @ =gUnk_02020EE0
	ldr r0, _080DF4B8 @ =gUnk_0203AD3C
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
	bne _080DF48A
	ldr r0, _080DF4BC @ =gUnk_0203AD20
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080DF48A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DF48A:
	adds r0, r4, #0
	bl sub_080E37C4
_080DF490:
	adds r0, r4, #0
	bl sub_080E33E4
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
_080DF4AC: .4byte gCurLevelInfo
_080DF4B0: .4byte 0x0000065E
_080DF4B4: .4byte gUnk_02020EE0
_080DF4B8: .4byte gUnk_0203AD3C
_080DF4BC: .4byte gUnk_0203AD20

	thumb_func_start sub_080DF4C0
sub_080DF4C0: @ 0x080DF4C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080DF596
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DF596
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
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
	beq _080DF596
	ldr r4, _080DF5A0 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	movs r3, #0
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
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
	muls r0, r2, r0
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
	muls r0, r2, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_080DF5A4
_080DF596:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF5A0: .4byte gCurLevelInfo

	thumb_func_start sub_080DF5A4
sub_080DF5A4: @ 0x080DF5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, _080DF5E8 @ =sub_080E36C4
	movs r1, #0
	bl ObjectSetFunc
	adds r4, r5, #0
	adds r4, #0x82
	ldrb r0, [r4]
	cmp r0, #0x47
	bne _080DF5F0
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r5, #0x40]
	adds r1, r5, #0
	adds r1, #0x50
	ldr r0, _080DF5EC @ =0x0000FF40
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	movs r0, #0x85
	adds r0, r0, r5
	mov sb, r0
	cmp r1, #0
	bne _080DF5E2
	b _080DF6E4
_080DF5E2:
	movs r0, #0
	strb r0, [r1, #9]
	b _080DF6E4
	.align 2, 0
_080DF5E8: .4byte sub_080E36C4
_080DF5EC: .4byte 0x0000FF40
_080DF5F0:
	ldr r0, _080DF700 @ =0xFFFFE800
	str r0, [r5, #0x40]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080DF60E
	movs r0, #0
	strb r0, [r1, #9]
_080DF60E:
	ldrb r4, [r4]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080DF704 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DF708 @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	movs r2, #0x85
	adds r2, r2, r5
	mov sb, r2
	cmp r1, #0
	blt _080DF6E4
	ldr r0, _080DF70C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DF6E4
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DF6E4
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	movs r1, #0x60
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0xf
	bls _080DF6A2
	movs r4, #1
_080DF66A:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080DF66A
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080DF6A2:
	ldr r1, _080DF70C @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080DF710 @ =gUnk_02020EE0
	ldr r0, _080DF714 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _080DF6E4
	ldr r0, _080DF718 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DF6E4
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DF6E4:
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080DF71C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF700: .4byte 0xFFFFE800
_080DF704: .4byte gCurLevelInfo
_080DF708: .4byte 0x0000065E
_080DF70C: .4byte gUnk_08352D80
_080DF710: .4byte gUnk_02020EE0
_080DF714: .4byte gUnk_0203AD3C
_080DF718: .4byte gUnk_0203AD20
_080DF71C: .4byte 0xFFFFFBFF

	thumb_func_start sub_080DF720
sub_080DF720: @ 0x080DF720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #2
	mov sl, r0
	mov sb, r0
	movs r3, #2
	adds r5, r4, #0
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	cmp r2, #0
	beq _080DF76C
	movs r1, #1
	mov sb, r1
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _080DF75A
	movs r3, #3
_080DF75A:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DF76C
	adds r0, r4, #0
	bl sub_080E3D10
	b _080DF884
_080DF76C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, r3
	blo _080DF7B8
	ldr r2, _080DF798 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF79C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF7A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF7A4
	adds r0, r4, #0
	bl sub_080DF9D0
	b _080DF7AA
	.align 2, 0
_080DF798: .4byte gRngVal
_080DF79C: .4byte 0x00196225
_080DF7A0: .4byte 0x3C6EF35F
_080DF7A4:
	adds r0, r4, #0
	bl sub_080E003C
_080DF7AA:
	adds r1, r5, #0
	adds r1, #0xb9
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	b _080DF880
_080DF7B8:
	adds r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xba
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	bne _080DF7CE
	cmp r2, #0
	bne _080DF7D2
_080DF7CE:
	movs r0, #0
	mov sl, r0
_080DF7D2:
	adds r3, r5, #0
	adds r3, #0xb9
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DF7E0
	movs r1, #0
	mov sb, r1
_080DF7E0:
	ldr r5, _080DF810 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080DF814 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080DF818 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r5]
	lsrs r1, r2, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, sl
	bhs _080DF822
	movs r5, #0
	strb r5, [r3]
	adds r0, r4, #0
	bl sub_080E3D10
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080DF81C
	movs r0, #4
	b _080DF880
	.align 2, 0
_080DF810: .4byte gRngVal
_080DF814: .4byte 0x00196225
_080DF818: .4byte 0x3C6EF35F
_080DF81C:
	mov r0, r8
	strb r5, [r0]
	b _080DF884
_080DF822:
	mov r0, sl
	add r0, sb
	cmp r1, r0
	bge _080DF83C
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080E1800
	b _080DF884
_080DF83C:
	movs r0, #0
	strb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	muls r0, r7, r0
	adds r2, r0, r6
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080DF85E
	adds r0, r4, #0
	bl sub_080E396C
	b _080DF884
_080DF85E:
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF878
	adds r0, r4, #0
	bl sub_080DF9D0
	b _080DF87E
_080DF878:
	adds r0, r4, #0
	bl sub_080E003C
_080DF87E:
	movs r0, #0
_080DF880:
	mov r1, r8
	strb r0, [r1]
_080DF884:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF894
sub_080DF894: @ 0x080DF894
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r0, #0xb4
	ldr r7, [r0]
	ldr r2, _080DF8CC @ =sub_080DF954
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF8DC
	ldr r2, _080DF8D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF8D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF8D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x2a
	b _080DF926
	.align 2, 0
_080DF8CC: .4byte sub_080DF954
_080DF8D0: .4byte gRngVal
_080DF8D4: .4byte 0x00196225
_080DF8D8: .4byte 0x3C6EF35F
_080DF8DC:
	ldr r5, _080DF908 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080DF90C @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080DF910 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _080DF914
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080DF910 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x40
	b _080DF926
	.align 2, 0
_080DF908: .4byte gRngVal
_080DF90C: .4byte 0x00196225
_080DF910: .4byte 0x3C6EF35F
_080DF914:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080DF950 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x48
_080DF926:
	strh r0, [r4, #4]
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080DF940
	adds r0, r7, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF940
	movs r0, #0x18
	strh r0, [r4, #4]
_080DF940:
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DF950: .4byte 0x3C6EF35F

	thumb_func_start sub_080DF954
sub_080DF954: @ 0x080DF954
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DF974
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DF984
	b _080DF980
_080DF974:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DF984
_080DF980:
	movs r0, #0
	strh r0, [r1]
_080DF984:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DF9A0
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DF9B0
	b _080DF9AC
_080DF9A0:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DF9B0
_080DF9AC:
	movs r0, #0
	strh r0, [r1]
_080DF9B0:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DF9CA
	adds r0, r3, #0
	bl sub_080DF720
_080DF9CA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DF9D0
sub_080DF9D0: @ 0x080DF9D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DFA20 @ =sub_080DFA24
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DFA20: .4byte sub_080DFA24

	thumb_func_start sub_080DFA24
sub_080DFA24: @ 0x080DFA24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080DFA60
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080DFA60:
	ldr r3, [r4, #0x44]
	ldr r1, _080DFA94 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x40
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080DFA98
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080DFAE4
	strh r2, [r5]
	b _080DFAE4
	.align 2, 0
_080DFA94: .4byte 0xFFFFF000
_080DFA98:
	cmp r3, r2
	bge _080DFABC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFAB8 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080DFAE4
	strh r2, [r5]
	b _080DFAE4
	.align 2, 0
_080DFAB8: .4byte 0xFFFFFE80
_080DFABC:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080DFAD8
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFAE4
	b _080DFAE2
_080DFAD8:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFAE4
_080DFAE2:
	strh r6, [r5]
_080DFAE4:
	ldr r3, [r4, #0x40]
	ldr r0, _080DFB10 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080DFB14
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r3, [r1]
	adds r0, r0, r3
	b _080DFB56
	.align 2, 0
_080DFB10: .4byte 0xFFFFF000
_080DFB14:
	cmp r3, r2
	ble _080DFB74
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DFB4C
	adds r2, r4, #0
	adds r2, #0x50
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080DFB48 @ =0xFFFFFE80
	cmp r0, r1
	blt _080DFB44
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080DFB9C
_080DFB44:
	strh r1, [r2]
	b _080DFB9C
	.align 2, 0
_080DFB48: .4byte 0xFFFFFE80
_080DFB4C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r2, [r1]
	adds r0, r0, r2
_080DFB56:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080DFB6A
	ldr r2, _080DFB70 @ =0xFFFFFE80
	cmp r0, r2
	bge _080DFB9C
_080DFB6A:
	strh r2, [r1]
	b _080DFB9C
	.align 2, 0
_080DFB70: .4byte 0xFFFFFE80
_080DFB74:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFB8E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFB9C
	b _080DFB98
_080DFB8E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFB9C
_080DFB98:
	movs r0, #0
	strh r0, [r1]
_080DFB9C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFBB2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFBB8
_080DFBB2:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080DFBB8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _080DFBD0
	movs r0, #0
	strh r0, [r5]
_080DFBD0:
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r1, r4, #0
	adds r1, #0x9f
	cmp r0, #0
	bgt _080DFBE0
	movs r0, #1
	strb r0, [r1]
_080DFBE0:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DFC34
	movs r2, #0x10
	movs r0, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0x60
	bls _080DFC0C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080DFC10
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x20
	b _080DFC10
_080DFC0C:
	adds r0, #1
	strb r0, [r1]
_080DFC10:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080DFC28
	cmp r1, r3
	blt _080DFC2E
	b _080DFC34
_080DFC28:
	subs r0, r0, r2
	cmp r0, r3
	bge _080DFC34
_080DFC2E:
	adds r0, r4, #0
	bl sub_080E37F0
_080DFC34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DFC3C
sub_080DFC3C: @ 0x080DFC3C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFC56
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFC5C
_080DFC56:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
_080DFC5C:
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #3
	beq _080DFC6C
	b _080DFD7C
_080DFC6C:
	adds r2, r6, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080DFD5C @ =0xF9800000
	cmp r0, r1
	bge _080DFC82
	ldr r0, _080DFD60 @ =0x0000F980
	strh r0, [r2]
_080DFC82:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DFC92
	b _080DFDAE
_080DFC92:
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r6, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r6, #8]
	ands r3, r4
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	ldr r1, _080DFD64 @ =gUnk_02020EE0
	ldr r0, _080DFD68 @ =gUnk_0203AD3C
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
	bne _080DFD54
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DFD14
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DFD54
_080DFD14:
	ldr r1, _080DFD6C @ =gUnk_08D60FA4
	ldr r4, _080DFD70 @ =gSongTable
	ldr r2, _080DFD74 @ =0x00000BB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DFD3A
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DFD54
_080DFD3A:
	cmp r3, #0
	beq _080DFD4C
	ldr r0, _080DFD78 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DFD54
_080DFD4C:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DFD54:
	adds r0, r6, #0
	bl sub_080E3844
	b _080DFDD0
	.align 2, 0
_080DFD5C: .4byte 0xF9800000
_080DFD60: .4byte 0x0000F980
_080DFD64: .4byte gUnk_02020EE0
_080DFD68: .4byte gUnk_0203AD3C
_080DFD6C: .4byte gUnk_08D60FA4
_080DFD70: .4byte gSongTable
_080DFD74: .4byte 0x00000BB4
_080DFD78: .4byte gUnk_0203AD10
_080DFD7C:
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080DFDAE
	ldr r2, _080DFDD8 @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080DFDAE:
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DFDD0
	ldr r0, [r6, #8]
	ldr r1, _080DFDDC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #3
	strb r0, [r4]
_080DFDD0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DFDD8: .4byte gUnk_08356A04
_080DFDDC: .4byte 0xFFFFFEFF

	thumb_func_start sub_080DFDE0
sub_080DFDE0: @ 0x080DFDE0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFDF8
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFDFE
_080DFDF8:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080DFDFE:
	str r0, [r2, #8]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080DFE26
	ldr r1, _080DFE3C @ =gUnk_08356A04
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080DFE26:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DFE38
	adds r0, r2, #0
	bl sub_080E388C
_080DFE38:
	pop {r0}
	bx r0
	.align 2, 0
_080DFE3C: .4byte gUnk_08356A04

	thumb_func_start sub_080DFE40
sub_080DFE40: @ 0x080DFE40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080DFE80 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080DFE84
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080DFECE
	strh r2, [r1]
	b _080DFECE
	.align 2, 0
_080DFE80: .4byte 0xFFFFFC00
_080DFE84:
	cmp r3, r0
	bge _080DFEA4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFEA0 @ =0xFFFFFE00
	cmp r0, r2
	bge _080DFECE
	strh r2, [r1]
	b _080DFECE
	.align 2, 0
_080DFEA0: .4byte 0xFFFFFE00
_080DFEA4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFEC0
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFECE
	b _080DFECC
_080DFEC0:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFECE
_080DFECC:
	strh r5, [r1]
_080DFECE:
	ldr r3, [r4, #0x40]
	ldr r2, _080DFEF4 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080DFEF8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080DFF30
	.align 2, 0
_080DFEF4: .4byte 0xFFFFFC00
_080DFEF8:
	cmp r3, r0
	ble _080DFF54
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DFF30
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080DFF2C @ =0xFFFFFE00
	cmp r0, r2
	blt _080DFF26
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080DFF80
_080DFF26:
	strh r2, [r1]
	b _080DFF80
	.align 2, 0
_080DFF2C: .4byte 0xFFFFFE00
_080DFF30:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080DFF26
	ldr r2, _080DFF50 @ =0xFFFFFE00
	cmp r0, r2
	bge _080DFF80
	b _080DFF26
	.align 2, 0
_080DFF50: .4byte 0xFFFFFE00
_080DFF54:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080DFF70
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DFF80
	b _080DFF7C
_080DFF70:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DFF80
_080DFF7C:
	movs r0, #0
	strh r0, [r1]
_080DFF80:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080DFF96
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080DFF9C
_080DFF96:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080DFF9C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080DFFF0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080DFFC6
	cmp r2, #0xf
	ble _080DFFCC
	b _080DFFF0
_080DFFC6:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080DFFF0
_080DFFCC:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080DFFE4
	cmp r1, #0xf
	ble _080DFFEA
	b _080DFFF0
_080DFFE4:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080DFFF0
_080DFFEA:
	adds r0, r4, #0
	bl sub_080DF894
_080DFFF0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0028
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E001E
	ldr r2, _080E0030 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0034 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E0038 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E001E:
	cmp r1, #0
	beq _080E0028
	adds r0, r4, #0
	bl sub_080DF720
_080E0028:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0030: .4byte gRngVal
_080E0034: .4byte 0x00196225
_080E0038: .4byte 0x3C6EF35F

	thumb_func_start sub_080E003C
sub_080E003C: @ 0x080E003C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E0094 @ =sub_080E0098
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E0094: .4byte sub_080E0098

	thumb_func_start sub_080E0098
sub_080E0098: @ 0x080E0098
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080E00B4
	movs r2, #0xa0
	mov sb, r2
_080E00B4:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E00CC
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E00CC
	movs r0, #5
	strb r0, [r2]
_080E00CC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E010A
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E010A:
	ldr r3, [r4, #0x44]
	ldr r1, _080E0144 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0164
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E0148
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E01D2
	strh r2, [r1]
	b _080E01D2
	.align 2, 0
_080E0144: .4byte 0xFFFFF000
_080E0148:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0160 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E01D2
	strh r2, [r1]
	b _080E01D2
	.align 2, 0
_080E0160: .4byte 0xFFFFFE80
_080E0164:
	cmp r3, r0
	bge _080E01AC
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E018C
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E01D2
	strh r1, [r2]
	b _080E01D2
_080E018C:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E01A8 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E01D2
	strh r1, [r2]
	b _080E01D2
	.align 2, 0
_080E01A8: .4byte 0xFFFFFE80
_080E01AC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E01C6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E01D2
	b _080E01D0
_080E01C6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E01D2
_080E01D0:
	strh r7, [r1]
_080E01D2:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0214 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0218
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E0268
	b _080E026C
	.align 2, 0
_080E0214: .4byte 0xFFFFF000
_080E0218:
	cmp r3, r0
	ble _080E027C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0250
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E024C @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080E0268
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E02A6
	strh r1, [r2]
	b _080E02A6
	.align 2, 0
_080E024C: .4byte 0xFFFFFE80
_080E0250:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E026C
_080E0268:
	strh r3, [r2]
	b _080E02A6
_080E026C:
	ldr r1, _080E0278 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E02A6
	strh r1, [r2]
	b _080E02A6
	.align 2, 0
_080E0278: .4byte 0xFFFFFE80
_080E027C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0298
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E02A6
	b _080E02A2
_080E0298:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E02A6
_080E02A2:
	movs r0, #0
	strh r0, [r2]
_080E02A6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E02E2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E02D2
	movs r0, #0
	strh r0, [r2]
_080E02D2:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080E030C
	adds r0, r4, #0
	bl sub_080E38E0
	b _080E030C
_080E02E2:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E02FE
	strh r3, [r2]
_080E02FE:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _080E030C
	adds r0, r4, #0
	bl sub_080E38E0
_080E030C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E0318
sub_080E0318: @ 0x080E0318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080E0338
	movs r2, #0xa0
	mov sl, r2
_080E0338:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080E0354
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0354
	movs r0, #5
	ldr r3, [sp]
	strb r0, [r3]
_080E0354:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0396
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0396:
	ldr r3, [r4, #0x44]
	ldr r1, _080E03D0 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E03F0
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E03D4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E045E
	strh r2, [r1]
	b _080E045E
	.align 2, 0
_080E03D0: .4byte 0xFFFFF000
_080E03D4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E03EC @ =0xFFFFFE80
	cmp r0, r2
	bge _080E045E
	strh r2, [r1]
	b _080E045E
	.align 2, 0
_080E03EC: .4byte 0xFFFFFE80
_080E03F0:
	cmp r3, r0
	bge _080E0438
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E0418
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E045E
	strh r1, [r2]
	b _080E045E
_080E0418:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0434 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E045E
	strh r1, [r2]
	b _080E045E
	.align 2, 0
_080E0434: .4byte 0xFFFFFE80
_080E0438:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0452
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E045E
	b _080E045C
_080E0452:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E045E
_080E045C:
	strh r7, [r1]
_080E045E:
	ldr r3, [r4, #0x40]
	ldr r2, _080E04A0 @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E04A4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E04F4
	b _080E04F8
	.align 2, 0
_080E04A0: .4byte 0xFFFFF000
_080E04A4:
	cmp r3, r0
	ble _080E0508
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E04DC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E04D8 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E04F4
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0532
	strh r1, [r2]
	b _080E0532
	.align 2, 0
_080E04D8: .4byte 0xFFFFFF00
_080E04DC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E04F8
_080E04F4:
	strh r3, [r2]
	b _080E0532
_080E04F8:
	ldr r1, _080E0504 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E0532
	strh r1, [r2]
	b _080E0532
	.align 2, 0
_080E0504: .4byte 0xFFFFFF00
_080E0508:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0524
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0532
	b _080E052E
_080E0524:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0532
_080E052E:
	movs r0, #0
	strh r0, [r2]
_080E0532:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0556
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080E0568
	movs r0, #0
	strh r0, [r2]
	b _080E0568
_080E0556:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080E0568
	strh r3, [r2]
_080E0568:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E058A
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E058E
_080E058A:
	movs r0, #0
	strh r0, [r2]
_080E058E:
	movs r2, #0xc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x60
	bls _080E05B2
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E05B6
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x30
	b _080E05B6
_080E05B2:
	adds r0, r1, #1
	strb r0, [r5]
_080E05B6:
	lsls r3, r2, #8
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r2, r0, r1
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080E05D2
	cmp r1, r3
	blt _080E05D8
	b _080E0614
_080E05D2:
	subs r0, r0, r2
	cmp r0, r3
	bge _080E0614
_080E05D8:
	movs r0, #5
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E05FC
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E0604
_080E05FC:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x2c
	b _080E060A
_080E0604:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x30
_080E060A:
	strb r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, _080E0624 @ =sub_080E0628
	str r0, [r4, #0x78]
_080E0614:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E0624: .4byte sub_080E0628

	thumb_func_start sub_080E0628
sub_080E0628: @ 0x080E0628
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080E0644
	movs r2, #0xa0
	mov sb, r2
_080E0644:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0682
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0682:
	ldr r3, [r4, #0x44]
	ldr r1, _080E06BC @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E06DC
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080E06C0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E074A
	strh r2, [r1]
	b _080E074A
	.align 2, 0
_080E06BC: .4byte 0xFFFFF000
_080E06C0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E06D8 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E074A
	strh r2, [r1]
	b _080E074A
	.align 2, 0
_080E06D8: .4byte 0xFFFFFE80
_080E06DC:
	cmp r3, r0
	bge _080E0724
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080E0704
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E074A
	strh r1, [r2]
	b _080E074A
_080E0704:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0720 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E074A
	strh r1, [r2]
	b _080E074A
	.align 2, 0
_080E0720: .4byte 0xFFFFFE80
_080E0724:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E073E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E074A
	b _080E0748
_080E073E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E074A
_080E0748:
	strh r7, [r1]
_080E074A:
	ldr r3, [r4, #0x40]
	ldr r2, _080E078C @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0790
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E07E0
	b _080E07E4
	.align 2, 0
_080E078C: .4byte 0xFFFFF000
_080E0790:
	cmp r3, r0
	ble _080E07F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E07C8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E07C4 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E07E0
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E081E
	strh r1, [r2]
	b _080E081E
	.align 2, 0
_080E07C4: .4byte 0xFFFFFF00
_080E07C8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E07E4
_080E07E0:
	strh r3, [r2]
	b _080E081E
_080E07E4:
	ldr r1, _080E07F0 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E081E
	strh r1, [r2]
	b _080E081E
	.align 2, 0
_080E07F0: .4byte 0xFFFFFF00
_080E07F4:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0810
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E081E
	b _080E081A
_080E0810:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E081E
_080E081A:
	movs r0, #0
	strh r0, [r2]
_080E081E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0842
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080E0854
	movs r0, #0
	strh r0, [r2]
	b _080E0854
_080E0842:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080E0854
	strh r3, [r2]
_080E0854:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E0876
	adds r0, r4, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E087A
_080E0876:
	movs r0, #0
	strh r0, [r2]
_080E087A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E088C
	movs r0, #0x60
	strh r0, [r4, #4]
_080E088C:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E08A2
	adds r0, r4, #0
	bl sub_080E08B0
_080E08A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E08B0
sub_080E08B0: @ 0x080E08B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E08F8 @ =sub_080E0920
	movs r1, #6
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E08F2
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E08FC
_080E08F2:
	movs r0, #0xc
	b _080E08FE
	.align 2, 0
_080E08F8: .4byte sub_080E0920
_080E08FC:
	movs r0, #0x10
_080E08FE:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E0920
sub_080E0920: @ 0x080E0920
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #7
	beq _080E0930
	b _080E0AE6
_080E0930:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080E09AC
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080E31D4
	ldr r1, _080E0A00 @ =gUnk_02020EE0
	ldr r0, _080E0A04 @ =gUnk_0203AD3C
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
	bne _080E09AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E0970
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E09AC
_080E0970:
	ldr r1, _080E0A08 @ =gUnk_08D60FA4
	ldr r5, _080E0A0C @ =gSongTable
	ldr r2, _080E0A10 @ =0x00000BBC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E0994
	ldr r1, _080E0A14 @ =0x00000BB8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E09AC
_080E0994:
	cmp r3, #0
	beq _080E09A6
	ldr r0, _080E0A18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E09AC
_080E09A6:
	ldr r0, _080E0A1C @ =0x00000177
	bl m4aSongNumStart
_080E09AC:
	ldrb r0, [r4, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080E09C8
	ldr r1, _080E0A20 @ =gUnk_08356A14
	ldrb r0, [r4, #1]
	subs r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080E09C8:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	beq _080E09D0
	b _080E0AD4
_080E09D0:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bls _080E09DC
	b _080E0AD4
_080E09DC:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _080E0A30
	ldr r2, _080E0A24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0A28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E0A2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #1
	ands r3, r0
	b _080E0A5C
	.align 2, 0
_080E0A00: .4byte gUnk_02020EE0
_080E0A04: .4byte gUnk_0203AD3C
_080E0A08: .4byte gUnk_08D60FA4
_080E0A0C: .4byte gSongTable
_080E0A10: .4byte 0x00000BBC
_080E0A14: .4byte 0x00000BB8
_080E0A18: .4byte gUnk_0203AD10
_080E0A1C: .4byte 0x00000177
_080E0A20: .4byte gUnk_08356A14
_080E0A24: .4byte gRngVal
_080E0A28: .4byte 0x00196225
_080E0A2C: .4byte 0x3C6EF35F
_080E0A30:
	movs r5, #0
	ldr r1, _080E0AAC @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080E0AB0 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080E0AB4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080E0AB8 @ =0x00005554
	adds r2, r1, #0
	cmp r3, r0
	bls _080E0A58
	ldr r0, _080E0ABC @ =0x0000AAA9
	movs r1, #2
	cmp r3, r0
	bhi _080E0A54
	movs r1, #1
_080E0A54:
	cmp r1, #0
	bne _080E0A5A
_080E0A58:
	movs r5, #1
_080E0A5A:
	adds r3, r5, #0
_080E0A5C:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x47
	bne _080E0A7E
	cmp r3, #0
	bne _080E0A82
	ldr r1, [r2]
	ldr r0, _080E0AB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E0AB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #1
	ands r3, r0
_080E0A7E:
	cmp r3, #0
	beq _080E0AD4
_080E0A82:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E0AA4
	ldrb r0, [r5]
	cmp r0, #0x47
	bne _080E0AC0
_080E0AA4:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xc
	b _080E0AC6
	.align 2, 0
_080E0AAC: .4byte gRngVal
_080E0AB0: .4byte 0x00196225
_080E0AB4: .4byte 0x3C6EF35F
_080E0AB8: .4byte 0x00005554
_080E0ABC: .4byte 0x0000AAA9
_080E0AC0:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x18
_080E0AC6:
	strb r0, [r1]
	ldr r0, _080E0AD0 @ =sub_080E0628
	str r0, [r4, #0x78]
	b _080E0B3A
	.align 2, 0
_080E0AD0: .4byte sub_080E0628
_080E0AD4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0B3A
	adds r0, r4, #0
	bl sub_080E3918
	b _080E0B3A
_080E0AE6:
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080E0B18
	ldr r2, _080E0B40 @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080E0B18:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E0B3A
	movs r0, #7
	strb r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
_080E0B3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0B40: .4byte gUnk_08356A04

	thumb_func_start sub_080E0B44
sub_080E0B44: @ 0x080E0B44
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E0B84 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0B88
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E0BD2
	strh r2, [r1]
	b _080E0BD2
	.align 2, 0
_080E0B84: .4byte 0xFFFFFC00
_080E0B88:
	cmp r3, r0
	bge _080E0BA8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0BA4 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E0BD2
	strh r2, [r1]
	b _080E0BD2
	.align 2, 0
_080E0BA4: .4byte 0xFFFFFE00
_080E0BA8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0BC4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0BD2
	b _080E0BD0
_080E0BC4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0BD2
_080E0BD0:
	strh r5, [r1]
_080E0BD2:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0BF8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E0BFC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E0C34
	.align 2, 0
_080E0BF8: .4byte 0xFFFFFC00
_080E0BFC:
	cmp r3, r0
	ble _080E0C58
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0C34
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0C30 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E0C2A
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E0C84
_080E0C2A:
	strh r2, [r1]
	b _080E0C84
	.align 2, 0
_080E0C30: .4byte 0xFFFFFE00
_080E0C34:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E0C2A
	ldr r2, _080E0C54 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E0C84
	b _080E0C2A
	.align 2, 0
_080E0C54: .4byte 0xFFFFFE00
_080E0C58:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0C74
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0C84
	b _080E0C80
_080E0C74:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0C84
_080E0C80:
	movs r0, #0
	strh r0, [r1]
_080E0C84:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E0C9A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E0CA0
_080E0C9A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E0CA0:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E0CF4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E0CCA
	cmp r2, #0xf
	ble _080E0CD0
	b _080E0CF4
_080E0CCA:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E0CF4
_080E0CD0:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E0CE8
	cmp r1, #0xf
	ble _080E0CEE
	b _080E0CF4
_080E0CE8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E0CF4
_080E0CEE:
	adds r0, r4, #0
	bl sub_080DF894
_080E0CF4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0D2C
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E0D22
	ldr r2, _080E0D34 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E0D38 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E0D3C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E0D22:
	cmp r1, #0
	beq _080E0D2C
	adds r0, r4, #0
	bl sub_080DF720
_080E0D2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E0D34: .4byte gRngVal
_080E0D38: .4byte 0x00196225
_080E0D3C: .4byte 0x3C6EF35F

	thumb_func_start sub_080E0D40
sub_080E0D40: @ 0x080E0D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E0D64
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E0D64
	movs r0, #9
	strb r0, [r2]
_080E0D64:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080E0D7A
	movs r3, #0xa0
	mov sb, r3
_080E0D7A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E0DB8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E0DB8:
	ldr r3, [r4, #0x44]
	ldr r1, _080E0DF0 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E0E10
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080E0DF4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E0E7E
	strh r2, [r1]
	b _080E0E7E
	.align 2, 0
_080E0DF0: .4byte 0xFFFFF000
_080E0DF4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E0E0C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E0E7E
	strh r2, [r1]
	b _080E0E7E
	.align 2, 0
_080E0E0C: .4byte 0xFFFFFE80
_080E0E10:
	cmp r3, r0
	bge _080E0E58
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080E0E38
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0E7E
	strh r1, [r2]
	b _080E0E7E
_080E0E38:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E0E54 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E0E7E
	strh r1, [r2]
	b _080E0E7E
	.align 2, 0
_080E0E54: .4byte 0xFFFFFE80
_080E0E58:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E0E72
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0E7E
	b _080E0E7C
_080E0E72:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0E7E
_080E0E7C:
	strh r7, [r1]
_080E0E7E:
	ldr r3, [r4, #0x40]
	ldr r2, _080E0EC0 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E0EC4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E0F14
	b _080E0F18
	.align 2, 0
_080E0EC0: .4byte 0xFFFFF000
_080E0EC4:
	cmp r3, r0
	ble _080E0F28
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E0EFC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E0EF8 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080E0F14
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E0F52
	strh r1, [r2]
	b _080E0F52
	.align 2, 0
_080E0EF8: .4byte 0xFFFFFE80
_080E0EFC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E0F18
_080E0F14:
	strh r3, [r2]
	b _080E0F52
_080E0F18:
	ldr r1, _080E0F24 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E0F52
	strh r1, [r2]
	b _080E0F52
	.align 2, 0
_080E0F24: .4byte 0xFFFFFE80
_080E0F28:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E0F44
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E0F52
	b _080E0F4E
_080E0F44:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E0F52
_080E0F4E:
	movs r0, #0
	strh r0, [r2]
_080E0F52:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E0F8C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080E0F7C
	movs r0, #0
	strh r0, [r2]
_080E0F7C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080E0FB6
	adds r0, r4, #0
	bl sub_080E39C4
	b _080E0FB6
_080E0F8C:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080E0FA8
	strh r3, [r2]
_080E0FA8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _080E0FB6
	adds r0, r4, #0
	bl sub_080E39C4
_080E0FB6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E0FC4
sub_080E0FC4: @ 0x080E0FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E0FE8
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080E0FE8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080E0FFE
	movs r3, #0xa0
	mov sb, r3
_080E0FFE:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E103C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E103C:
	ldr r3, [r4, #0x44]
	ldr r1, _080E1074 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E1094
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080E1078
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E1102
	strh r2, [r1]
	b _080E1102
	.align 2, 0
_080E1074: .4byte 0xFFFFF000
_080E1078:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1090 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E1102
	strh r2, [r1]
	b _080E1102
	.align 2, 0
_080E1090: .4byte 0xFFFFFE80
_080E1094:
	cmp r3, r0
	bge _080E10DC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080E10BC
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E1102
	strh r1, [r2]
	b _080E1102
_080E10BC:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080E10D8 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E1102
	strh r1, [r2]
	b _080E1102
	.align 2, 0
_080E10D8: .4byte 0xFFFFFE80
_080E10DC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E10F6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1102
	b _080E1100
_080E10F6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1102
_080E1100:
	strh r7, [r1]
_080E1102:
	ldr r3, [r4, #0x40]
	ldr r2, _080E1144 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E1148
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E1198
	b _080E119C
	.align 2, 0
_080E1144: .4byte 0xFFFFF000
_080E1148:
	cmp r3, r0
	ble _080E11AC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1180
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E117C @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E1198
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E11D6
	strh r1, [r2]
	b _080E11D6
	.align 2, 0
_080E117C: .4byte 0xFFFFFF00
_080E1180:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080E119C
_080E1198:
	strh r3, [r2]
	b _080E11D6
_080E119C:
	ldr r1, _080E11A8 @ =0xFFFFFF00
	cmp r0, r1
	bge _080E11D6
	strh r1, [r2]
	b _080E11D6
	.align 2, 0
_080E11A8: .4byte 0xFFFFFF00
_080E11AC:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E11C8
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E11D6
	b _080E11D2
_080E11C8:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E11D6
_080E11D2:
	movs r0, #0
	strh r0, [r2]
_080E11D6:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080E11F8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	ble _080E120A
	movs r0, #0
	strh r0, [r2]
	b _080E120A
_080E11F8:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080E120A
	strh r3, [r2]
_080E120A:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080E122C
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080E1230
_080E122C:
	movs r0, #0
	strh r0, [r2]
_080E1230:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080E1266
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E124E
	movs r0, #0x60
	strh r0, [r4, #4]
_080E124E:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E12B6
	adds r0, r4, #0
	bl sub_080E12C8
	b _080E12B6
_080E1266:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	bls _080E128A
	movs r0, #0x30
	str r0, [sp]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E128E
	movs r0, #0x60
	strh r0, [r4, #4]
	b _080E128E
_080E128A:
	adds r0, r1, #1
	strb r0, [r5]
_080E128E:
	ldr r1, [sp]
	lsls r3, r1, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r2, r1, r0
	cmp r2, #0
	blt _080E12A8
	cmp r2, r3
	blt _080E12AE
	b _080E12B6
_080E12A8:
	subs r0, r0, r1
	cmp r0, r3
	bge _080E12B6
_080E12AE:
	movs r0, #0xa
	strb r0, [r6]
	movs r0, #0x18
	strb r0, [r5]
_080E12B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E12C8
sub_080E12C8: @ 0x080E12C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E1304 @ =sub_080E133C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E1308
	movs r0, #0x14
	b _080E130A
	.align 2, 0
_080E1304: .4byte sub_080E133C
_080E1308:
	movs r0, #0x1c
_080E130A:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E133C
sub_080E133C: @ 0x080E133C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080E1378
	ldr r2, _080E13AC @ =gUnk_08356A04
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080E1378:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E1384
	b _080E1568
_080E1384:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E13B4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E13B0 @ =0xFFFFF880
	cmp r0, r2
	blt _080E13D0
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080E13D2
	b _080E13D0
	.align 2, 0
_080E13AC: .4byte gUnk_08356A04
_080E13B0: .4byte 0xFFFFF880
_080E13B4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080E13D0
	ldr r2, _080E1418 @ =0xFFFFF880
	cmp r0, r2
	bge _080E13D2
_080E13D0:
	strh r2, [r1]
_080E13D2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E1440
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x20
	lsls r0, r0, #8
	ldr r3, [r4, #0x40]
	cmp r3, r0
	bge _080E13F0
	b _080E1540
_080E13F0:
	cmp r5, #0
	bne _080E13F6
	b _080E15DA
_080E13F6:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080E1406
	cmp r0, #3
	beq _080E1406
	b _080E15DA
_080E1406:
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E1420
	ldr r0, _080E141C @ =0x000017FF
	cmp r2, r0
	ble _080E142A
	b _080E15DA
	.align 2, 0
_080E1418: .4byte 0xFFFFF880
_080E141C: .4byte 0x000017FF
_080E1420:
	subs r1, r1, r0
	ldr r0, _080E1438 @ =0x000017FF
	cmp r1, r0
	ble _080E142A
	b _080E15DA
_080E142A:
	ldr r2, _080E143C @ =0xFFFFE000
	adds r0, r3, r2
	ldr r1, [r5, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	bge _080E1498
	b _080E14A8
	.align 2, 0
_080E1438: .4byte 0x000017FF
_080E143C: .4byte 0xFFFFE000
_080E1440:
	adds r0, r4, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x20
	lsls r0, r0, #8
	ldr r3, [r4, #0x40]
	cmp r3, r0
	bgt _080E1540
	cmp r5, #0
	bne _080E1458
	b _080E15DA
_080E1458:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080E1468
	cmp r0, #3
	beq _080E1468
	b _080E15DA
_080E1468:
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E1480
	ldr r0, _080E147C @ =0x000013FF
	cmp r2, r0
	ble _080E148A
	b _080E15DA
	.align 2, 0
_080E147C: .4byte 0x000013FF
_080E1480:
	subs r1, r1, r0
	ldr r0, _080E14A0 @ =0x000013FF
	cmp r1, r0
	ble _080E148A
	b _080E15DA
_080E148A:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r3, r1
	ldr r1, [r5, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	blt _080E14A8
_080E1498:
	ldr r0, _080E14A4 @ =0x000007FF
	cmp r2, r0
	ble _080E14B2
	b _080E15DA
	.align 2, 0
_080E14A0: .4byte 0x000013FF
_080E14A4: .4byte 0x000007FF
_080E14A8:
	subs r1, r0, r1
	ldr r0, _080E1548 @ =0x000007FF
	cmp r1, r0
	ble _080E14B2
	b _080E15DA
_080E14B2:
	ldr r1, [r5, #0x78]
	ldr r0, _080E154C @ =sub_080E133C
	cmp r1, r0
	beq _080E14CC
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_080A8D18
_080E14CC:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E1550 @ =gUnk_02020EE0
	ldr r0, _080E1554 @ =gUnk_0203AD3C
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
	bne _080E1540
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E1500
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1540
_080E1500:
	ldr r1, _080E1558 @ =gUnk_08D60FA4
	ldr r5, _080E155C @ =gSongTable
	ldr r2, _080E1560 @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1526
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1540
_080E1526:
	cmp r3, #0
	beq _080E1538
	ldr r0, _080E1564 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E1540
_080E1538:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1540:
	adds r0, r4, #0
	bl sub_080E39F8
	b _080E15DA
	.align 2, 0
_080E1548: .4byte 0x000007FF
_080E154C: .4byte sub_080E133C
_080E1550: .4byte gUnk_02020EE0
_080E1554: .4byte gUnk_0203AD3C
_080E1558: .4byte gUnk_08D60FA4
_080E155C: .4byte gSongTable
_080E1560: .4byte 0x00000CA4
_080E1564: .4byte gUnk_0203AD10
_080E1568:
	subs r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E15DA
	ldr r1, _080E15E4 @ =gUnk_02020EE0
	ldr r0, _080E15E8 @ =gUnk_0203AD3C
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
	bne _080E15DA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E159E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E15DA
_080E159E:
	ldr r1, _080E15EC @ =gUnk_08D60FA4
	ldr r4, _080E15F0 @ =gSongTable
	ldr r2, _080E15F4 @ =0x00000CCC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E15C2
	ldr r1, _080E15F8 @ =0x00000CC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E15DA
_080E15C2:
	cmp r3, #0
	beq _080E15D4
	ldr r0, _080E15FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E15DA
_080E15D4:
	ldr r0, _080E1600 @ =0x00000199
	bl m4aSongNumStart
_080E15DA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E15E4: .4byte gUnk_02020EE0
_080E15E8: .4byte gUnk_0203AD3C
_080E15EC: .4byte gUnk_08D60FA4
_080E15F0: .4byte gSongTable
_080E15F4: .4byte 0x00000CCC
_080E15F8: .4byte 0x00000CC8
_080E15FC: .4byte gUnk_0203AD10
_080E1600: .4byte 0x00000199

	thumb_func_start sub_080E1604
sub_080E1604: @ 0x080E1604
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E1644 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E1648
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1692
	strh r2, [r1]
	b _080E1692
	.align 2, 0
_080E1644: .4byte 0xFFFFFC00
_080E1648:
	cmp r3, r0
	bge _080E1668
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1664 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1692
	strh r2, [r1]
	b _080E1692
	.align 2, 0
_080E1664: .4byte 0xFFFFFE00
_080E1668:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1684
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1692
	b _080E1690
_080E1684:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1692
_080E1690:
	strh r5, [r1]
_080E1692:
	ldr r3, [r4, #0x40]
	ldr r2, _080E16B8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E16BC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E16F4
	.align 2, 0
_080E16B8: .4byte 0xFFFFFC00
_080E16BC:
	cmp r3, r0
	ble _080E1718
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E16F4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E16F0 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E16EA
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1744
_080E16EA:
	strh r2, [r1]
	b _080E1744
	.align 2, 0
_080E16F0: .4byte 0xFFFFFE00
_080E16F4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E16EA
	ldr r2, _080E1714 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1744
	b _080E16EA
	.align 2, 0
_080E1714: .4byte 0xFFFFFE00
_080E1718:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1734
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1744
	b _080E1740
_080E1734:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1744
_080E1740:
	movs r0, #0
	strh r0, [r1]
_080E1744:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E175A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1760
_080E175A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E1760:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E17B4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E178A
	cmp r2, #0xf
	ble _080E1790
	b _080E17B4
_080E178A:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E17B4
_080E1790:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E17A8
	cmp r1, #0xf
	ble _080E17AE
	b _080E17B4
_080E17A8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E17B4
_080E17AE:
	adds r0, r4, #0
	bl sub_080DF894
_080E17B4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E17EC
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E17E2
	ldr r2, _080E17F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E17F8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E17FC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E17E2:
	cmp r1, #0
	beq _080E17EC
	adds r0, r4, #0
	bl sub_080DF720
_080E17EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E17F4: .4byte gRngVal
_080E17F8: .4byte 0x00196225
_080E17FC: .4byte 0x3C6EF35F

	thumb_func_start sub_080E1800
sub_080E1800: @ 0x080E1800
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E1858 @ =sub_080E1868
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r2, #0x3e
	ands r1, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E185C
	movs r0, #0x48
	b _080E185E
	.align 2, 0
_080E1858: .4byte sub_080E1868
_080E185C:
	movs r0, #0x30
_080E185E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E1868
sub_080E1868: @ 0x080E1868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080E187A
	b _080E19E2
_080E187A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E18B8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E18B8:
	ldr r2, [r4, #0x44]
	ldr r1, _080E18E4 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080E18E8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E192E
	strh r2, [r1]
	b _080E192E
	.align 2, 0
_080E18E4: .4byte 0xFFFFF000
_080E18E8:
	cmp r2, r0
	bge _080E1908
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1904 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E192E
	strh r2, [r1]
	b _080E192E
	.align 2, 0
_080E1904: .4byte 0xFFFFFE00
_080E1908:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E1922
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E192E
	b _080E192C
_080E1922:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E192E
_080E192C:
	strh r7, [r1]
_080E192E:
	ldr r2, [r4, #0x40]
	ldr r1, _080E1968 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080E1970
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1964
	b _080E1AEA
_080E1964:
	ldr r2, _080E196C @ =0xFFFFFE00
	b _080E1B0C
	.align 2, 0
_080E1968: .4byte 0xFFFFF000
_080E196C: .4byte 0xFFFFFE00
_080E1970:
	cmp r2, r0
	ble _080E19C4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E19A4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E19A0 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1998
	b _080E1AEA
_080E1998:
	movs r2, #0x80
	lsls r2, r2, #2
	b _080E1AE6
	.align 2, 0
_080E19A0: .4byte 0xFFFFFE00
_080E19A4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E19BC
	b _080E1AEA
_080E19BC:
	ldr r2, _080E19C0 @ =0xFFFFFE00
	b _080E1B0C
	.align 2, 0
_080E19C0: .4byte 0xFFFFFE00
_080E19C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080E19D4
	b _080E1B32
_080E19D4:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E19E0
	b _080E1B40
_080E19E0:
	b _080E1B3C
_080E19E2:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080E1A1E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080E1A1E:
	ldr r2, [r4, #0x44]
	ldr r1, _080E1A4C @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080E1A50
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E1A96
	strh r2, [r1]
	b _080E1A96
	.align 2, 0
_080E1A4C: .4byte 0xFFFFF000
_080E1A50:
	cmp r2, r0
	bge _080E1A70
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1A6C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E1A96
	strh r2, [r1]
	b _080E1A96
	.align 2, 0
_080E1A6C: .4byte 0xFFFFFE80
_080E1A70:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E1A8A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1A96
	b _080E1A94
_080E1A8A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1A96
_080E1A94:
	strh r7, [r1]
_080E1A96:
	ldr r2, [r4, #0x40]
	ldr r1, _080E1AB8 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080E1ABC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E1AF4
	.align 2, 0
_080E1AB8: .4byte 0xFFFFF000
_080E1ABC:
	cmp r2, r0
	ble _080E1B18
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1AF4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1AF0 @ =0xFFFFFE80
	cmp r0, r2
	blt _080E1AEA
	movs r2, #0xc0
	lsls r2, r2, #1
_080E1AE6:
	cmp r0, r2
	ble _080E1B40
_080E1AEA:
	strh r2, [r1]
	b _080E1B40
	.align 2, 0
_080E1AF0: .4byte 0xFFFFFE80
_080E1AF4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E1AEA
	ldr r2, _080E1B14 @ =0xFFFFFE80
_080E1B0C:
	cmp r0, r2
	bge _080E1B40
	b _080E1AEA
	.align 2, 0
_080E1B14: .4byte 0xFFFFFE80
_080E1B18:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1B32
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1B40
	b _080E1B3C
_080E1B32:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1B40
_080E1B3C:
	movs r0, #0
	strh r0, [r1]
_080E1B40:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1B56
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1B5C
_080E1B56:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E1B5C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E1B70
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	strb r0, [r1]
_080E1B70:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E1B82
	adds r0, r4, #0
	bl sub_080E3C6C
_080E1B82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E1B8C
sub_080E1B8C: @ 0x080E1B8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080E1BDC
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E1BDC
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E1BDC
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E1BDC
	cmp r0, #0x7a
	bhi _080E1BDC
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E1BDC
	ldr r5, [r6, #8]
	ldr r0, _080E1BE0 @ =0x03800B00
	ands r5, r0
	cmp r5, #0
	beq _080E1BE4
_080E1BDC:
	movs r0, #0
	b _080E1C9E
	.align 2, 0
_080E1BE0: .4byte 0x03800B00
_080E1BE4:
	ldr r2, _080E1CAC @ =sub_080E3AE0
	adds r0, r4, #0
	movs r1, #0xe
	bl ObjectSetFunc
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080E1CB0 @ =gUnk_083569BC
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	str r6, [r4, #0x6c]
	ldr r1, _080E1CB4 @ =gUnk_02020EE0
	ldr r0, _080E1CB8 @ =gUnk_0203AD3C
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
	bne _080E1C9C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E1C5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1C9C
_080E1C5E:
	ldr r1, _080E1CBC @ =gUnk_08D60FA4
	ldr r4, _080E1CC0 @ =gSongTable
	ldr r2, _080E1CC4 @ =0x00000CD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1C84
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1C9C
_080E1C84:
	cmp r3, #0
	beq _080E1C94
	ldr r0, _080E1CC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E1C9C
_080E1C94:
	movs r0, #0xcd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1C9C:
	movs r0, #1
_080E1C9E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E1CAC: .4byte sub_080E3AE0
_080E1CB0: .4byte gUnk_083569BC
_080E1CB4: .4byte gUnk_02020EE0
_080E1CB8: .4byte gUnk_0203AD3C
_080E1CBC: .4byte gUnk_08D60FA4
_080E1CC0: .4byte gSongTable
_080E1CC4: .4byte 0x00000CD4
_080E1CC8: .4byte gUnk_0203AD10

	thumb_func_start sub_080E1CCC
sub_080E1CCC: @ 0x080E1CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	movs r6, #0x80
	ands r6, r1
	cmp r6, #0
	bne _080E1CEC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080E1CFC
_080E1CEC:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080E25B4
	b _080E1EB4
_080E1CFC:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080E1D34 @ =0xFFFFFC00
	ands r4, r2
	adds r1, #4
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r3, r0, #8
	ands r3, r2
	adds r7, r1, #0
	cmp r4, r3
	ble _080E1D38
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1D82
	strh r2, [r1]
	b _080E1D82
	.align 2, 0
_080E1D34: .4byte 0xFFFFFC00
_080E1D38:
	cmp r4, r3
	bge _080E1D58
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1D54 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1D82
	strh r2, [r1]
	b _080E1D82
	.align 2, 0
_080E1D54: .4byte 0xFFFFFE00
_080E1D58:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1D74
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1D82
	b _080E1D80
_080E1D74:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1D82
_080E1D80:
	strh r6, [r1]
_080E1D82:
	ldr r4, [r5, #0x40]
	ldr r0, _080E1DA4 @ =0xFFFFFC00
	ands r4, r0
	adds r1, r5, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r1, #8
	ands r3, r0
	cmp r4, r3
	bge _080E1DA8
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080E1DE0
	.align 2, 0
_080E1DA4: .4byte 0xFFFFFC00
_080E1DA8:
	cmp r4, r3
	ble _080E1E04
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E1DE0
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E1DDC @ =0xFFFFFE00
	cmp r0, r2
	blt _080E1DD6
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E1E30
_080E1DD6:
	strh r2, [r1]
	b _080E1E30
	.align 2, 0
_080E1DDC: .4byte 0xFFFFFE00
_080E1DE0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E1DD6
	ldr r2, _080E1E00 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E1E30
	b _080E1DD6
	.align 2, 0
_080E1E00: .4byte 0xFFFFFE00
_080E1E04:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E1E20
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E1E30
	b _080E1E2C
_080E1E20:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E1E30
_080E1E2C:
	movs r0, #0
	strh r0, [r1]
_080E1E30:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1E46
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1E4C
_080E1E46:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080E1E4C:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x83
	cmp r0, #0
	beq _080E1E72
	movs r0, #0x10
	strb r0, [r4]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080E1E72:
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080E1EB4
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080E1EB4
	adds r0, r5, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080E1EB4
	adds r0, r5, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r2, _080E1EBC @ =0xFFFFFC00
	adds r0, r0, r2
	cmp r1, r0
	ble _080E1EB4
	adds r0, r5, #0
	bl sub_080E3B9C
_080E1EB4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E1EBC: .4byte 0xFFFFFC00

	thumb_func_start sub_080E1EC0
sub_080E1EC0: @ 0x080E1EC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r1, [r5, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E1EDE
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080E1EEE
_080E1EDE:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080E25B4
	b _080E2018
_080E1EEE:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E1F04
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E1F0A
_080E1F04:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080E1F0A:
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080E1FFC
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080E1FDC @ =0xF9800000
	cmp r0, r1
	bge _080E1F2C
	ldr r0, _080E1FE0 @ =0x0000F980
	strh r0, [r2]
_080E1F2C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080E2018
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	ldr r1, _080E1FE4 @ =gUnk_02020EE0
	ldr r0, _080E1FE8 @ =gUnk_0203AD3C
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
	bne _080E1FD2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E1F92
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E1FD2
_080E1F92:
	ldr r1, _080E1FEC @ =gUnk_08D60FA4
	ldr r4, _080E1FF0 @ =gSongTable
	ldr r3, _080E1FF4 @ =0x00000BB4
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E1FB8
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E1FD2
_080E1FB8:
	cmp r3, #0
	beq _080E1FCA
	ldr r0, _080E1FF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E1FD2
_080E1FCA:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E1FD2:
	adds r0, r5, #0
	bl sub_080E3BD0
	b _080E2018
	.align 2, 0
_080E1FDC: .4byte 0xF9800000
_080E1FE0: .4byte 0x0000F980
_080E1FE4: .4byte gUnk_02020EE0
_080E1FE8: .4byte gUnk_0203AD3C
_080E1FEC: .4byte gUnk_08D60FA4
_080E1FF0: .4byte gSongTable
_080E1FF4: .4byte 0x00000BB4
_080E1FF8: .4byte gUnk_0203AD10
_080E1FFC:
	subs r0, r1, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E2018
	ldr r0, [r5, #8]
	ldr r1, _080E2020 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080E2018:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2020: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E2024
sub_080E2024: @ 0x080E2024
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E2042
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E2052
_080E2042:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080E25B4
	b _080E20A8
_080E2052:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2068
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E206E
_080E2068:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080E206E:
	str r0, [r2, #8]
	movs r0, #0x9e
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080E2096
	ldr r1, _080E20B0 @ =gUnk_08356A04
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E2096:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E20A8
	adds r0, r2, #0
	bl sub_080E3C0C
_080E20A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E20B0: .4byte gUnk_08356A04

	thumb_func_start sub_080E20B4
sub_080E20B4: @ 0x080E20B4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E20F8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E20FC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080E214C
	strh r2, [r5]
	b _080E214C
	.align 2, 0
_080E20F8: .4byte 0xFFFFFC00
_080E20FC:
	cmp r3, r0
	bge _080E2120
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E211C @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080E214C
	strh r2, [r5]
	b _080E214C
	.align 2, 0
_080E211C: .4byte 0xFFFFFE00
_080E2120:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080E213E
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E214C
	b _080E214A
_080E213E:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E214C
_080E214A:
	strh r6, [r5]
_080E214C:
	ldr r3, [r4, #0x40]
	ldr r2, _080E2188 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	bge _080E218C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080E21DC
	b _080E21E0
	.align 2, 0
_080E2188: .4byte 0xFFFFFC00
_080E218C:
	cmp r3, r0
	ble _080E21F0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E21C4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E21C0 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E21DC
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E221E
	strh r1, [r2]
	b _080E221E
	.align 2, 0
_080E21C0: .4byte 0xFFFFFE00
_080E21C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080E21E0
_080E21DC:
	strh r3, [r2]
	b _080E221E
_080E21E0:
	ldr r1, _080E21EC @ =0xFFFFFE00
	cmp r0, r1
	bge _080E221E
	strh r1, [r2]
	b _080E221E
	.align 2, 0
_080E21EC: .4byte 0xFFFFFE00
_080E21F0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080E220E
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E221E
	b _080E221A
_080E220E:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E221E
_080E221A:
	movs r0, #0
	strh r0, [r2]
_080E221E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2234
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E223A
_080E2234:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E223A:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080E2290
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E2264
	cmp r2, #0xf
	ble _080E226A
	b _080E22A0
_080E2264:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E22A0
_080E226A:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E2282
	cmp r1, #0xf
	ble _080E2288
	b _080E22A0
_080E2282:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E22A0
_080E2288:
	adds r0, r4, #0
	bl sub_080DF894
	b _080E22A0
_080E2290:
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080E22A0
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r5]
_080E22A0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E22D8
	movs r0, #0
	strb r0, [r6]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E22CE
	ldr r2, _080E22E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E22E4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E22E8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E22CE:
	cmp r1, #0
	beq _080E22D8
	adds r0, r4, #0
	bl sub_080DF720
_080E22D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E22E0: .4byte gRngVal
_080E22E4: .4byte 0x00196225
_080E22E8: .4byte 0x3C6EF35F

	thumb_func_start sub_080E22EC
sub_080E22EC: @ 0x080E22EC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E230E
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E231E
	b _080E231A
_080E230E:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E231E
_080E231A:
	movs r0, #0
	strh r0, [r1]
_080E231E:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E233A
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E234A
	b _080E2346
_080E233A:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E234A
_080E2346:
	movs r0, #0
	strh r0, [r1]
_080E234A:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2360
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E2366
_080E2360:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E2366:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xe
	bne _080E238A
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E23B0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xf
	strb r0, [r2]
	b _080E23B0
_080E238A:
	cmp r0, #0xf
	bne _080E23B0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E23B0
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r4, #0
	bl sub_080E3CC4
_080E23B0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E23B8
sub_080E23B8: @ 0x080E23B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E23F8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E23FC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E2446
	strh r2, [r1]
	b _080E2446
	.align 2, 0
_080E23F8: .4byte 0xFFFFFC00
_080E23FC:
	cmp r3, r0
	bge _080E241C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2418 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E2446
	strh r2, [r1]
	b _080E2446
	.align 2, 0
_080E2418: .4byte 0xFFFFFE00
_080E241C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E2438
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2446
	b _080E2444
_080E2438:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2446
_080E2444:
	strh r5, [r1]
_080E2446:
	ldr r3, [r4, #0x40]
	ldr r2, _080E246C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E2470
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E24A8
	.align 2, 0
_080E246C: .4byte 0xFFFFFC00
_080E2470:
	cmp r3, r0
	ble _080E24CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E24A8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E24A4 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E249E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E24F8
_080E249E:
	strh r2, [r1]
	b _080E24F8
	.align 2, 0
_080E24A4: .4byte 0xFFFFFE00
_080E24A8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E249E
	ldr r2, _080E24C8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E24F8
	b _080E249E
	.align 2, 0
_080E24C8: .4byte 0xFFFFFE00
_080E24CC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E24E8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E24F8
	b _080E24F4
_080E24E8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E24F8
_080E24F4:
	movs r0, #0
	strh r0, [r1]
_080E24F8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E250E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E2514
_080E250E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E2514:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E2568
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E253E
	cmp r2, #0xf
	ble _080E2544
	b _080E2568
_080E253E:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2568
_080E2544:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E255C
	cmp r1, #0xf
	ble _080E2562
	b _080E2568
_080E255C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E2568
_080E2562:
	adds r0, r4, #0
	bl sub_080DF894
_080E2568:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E25A0
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2596
	ldr r2, _080E25A8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E25AC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E25B0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E2596:
	cmp r1, #0
	beq _080E25A0
	adds r0, r4, #0
	bl sub_080DF720
_080E25A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E25A8: .4byte gRngVal
_080E25AC: .4byte 0x00196225
_080E25B0: .4byte 0x3C6EF35F

	thumb_func_start sub_080E25B4
sub_080E25B4: @ 0x080E25B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E2618 @ =sub_080E261C
	movs r1, #0x16
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E2618: .4byte sub_080E261C

	thumb_func_start sub_080E261C
sub_080E261C: @ 0x080E261C
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	movs r2, #4
	ldrsh r4, [r1, r2]
	cmp r4, #0
	beq _080E262E
	b _080E27E6
_080E262E:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r5, ip
	ldr r3, [r5, #0x44]
	ldr r2, _080E2668 @ =0xFFFFFC00
	ands r3, r2
	adds r1, #4
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	ble _080E266C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2668: .4byte 0xFFFFFC00
_080E266C:
	cmp r3, r0
	bge _080E268C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2688 @ =0xFFFFFE00
	cmp r0, r2
	bge _080E26B6
	strh r2, [r1]
	b _080E26B6
	.align 2, 0
_080E2688: .4byte 0xFFFFFE00
_080E268C:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E26A8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E26B6
	b _080E26B4
_080E26A8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E26B6
_080E26B4:
	strh r4, [r1]
_080E26B6:
	mov r4, ip
	ldr r3, [r4, #0x40]
	ldr r2, _080E26E0 @ =0xFFFFFC00
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r3, r0
	bge _080E26E4
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E271C
	.align 2, 0
_080E26E0: .4byte 0xFFFFFC00
_080E26E4:
	cmp r3, r0
	ble _080E2740
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E271C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2718 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E2714
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E276C
_080E2714:
	strh r2, [r1]
	b _080E276C
	.align 2, 0
_080E2718: .4byte 0xFFFFFE00
_080E271C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E2714
	ldr r2, _080E273C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E276C
	b _080E2714
	.align 2, 0
_080E273C: .4byte 0xFFFFFE00
_080E2740:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E275C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E276C
	b _080E2768
_080E275C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E276C
_080E2768:
	movs r0, #0
	strh r0, [r1]
_080E276C:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2788
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E2792
_080E2788:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080E2792:
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E2822
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27BC
	cmp r2, #0xf
	ble _080E27C2
	b _080E2822
_080E27BC:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27C2:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E27D8
	cmp r2, #0xf
	ble _080E27DE
	b _080E2822
_080E27D8:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E2822
_080E27DE:
	mov r0, ip
	bl sub_080DF894
	b _080E2822
_080E27E6:
	subs r0, #1
	mov r1, ip
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E2822
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2818
	ldr r2, _080E2828 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E282C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E2830 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
_080E2818:
	cmp r1, #0
	beq _080E2822
	mov r0, ip
	bl sub_080DF720
_080E2822:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2828: .4byte gRngVal
_080E282C: .4byte 0x00196225
_080E2830: .4byte 0x3C6EF35F

	thumb_func_start sub_080E2834
sub_080E2834: @ 0x080E2834
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xb4
	ldr r5, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E285A
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E286A
	b _080E2866
_080E285A:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E286A
_080E2866:
	movs r0, #0
	strh r0, [r1]
_080E286A:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080E2886
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2896
	b _080E2892
_080E2886:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2896
_080E2892:
	movs r0, #0
	strh r0, [r1]
_080E2896:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	bne _080E28B4
	adds r0, #4
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_080DF894
	b _080E28C4
_080E28B4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E28C4
	adds r0, r3, #0
	bl sub_080E3D34
_080E28C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E28CC
sub_080E28CC: @ 0x080E28CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r0, #0xb4
	ldr r6, [r0]
	cmp r6, #0
	bne _080E28EA
	mov r0, ip
	bl sub_080E3D90
	b _080E2BD8
_080E28EA:
	mov r1, ip
	adds r1, #0xac
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r7, #0
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r2
	mov sl, r0
	mov r5, ip
	adds r5, #0x9f
	cmp r1, #0x12
	beq _080E2922
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2922
	b _080E2BBA
_080E2922:
	mov r0, ip
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	str r0, [sp]
	cmp r1, #0
	beq _080E2938
	movs r3, #0xa0
	mov sb, r3
_080E2938:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080E2980 @ =0xFFFFFC00
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E29A4
	mov r3, ip
	ldrh r2, [r3, #4]
	movs r7, #4
	ldrsh r0, [r3, r7]
	cmp r0, #0
	ble _080E2984
	mov r1, ip
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E2980: .4byte 0xFFFFFC00
_080E2984:
	mov r1, ip
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E29A0 @ =0xFFFFFE80
	adds r4, r1, #0
	cmp r0, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29A0: .4byte 0xFFFFFE80
_080E29A4:
	cmp r3, r0
	bge _080E29F4
	mov r1, ip
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080E29D2
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r3, ip
	ldrh r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r0, #0
	cmp r1, r2
	ble _080E2A20
	strh r2, [r4]
	b _080E2A20
_080E29D2:
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	mov r7, ip
	ldrh r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _080E29F0 @ =0xFFFFFE80
	adds r4, r0, #0
	cmp r1, r2
	bge _080E2A20
	strh r2, [r4]
	b _080E2A20
	.align 2, 0
_080E29F0: .4byte 0xFFFFFE80
_080E29F4:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E2A12
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2A20
	b _080E2A1E
_080E2A12:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2A20
_080E2A1E:
	strh r7, [r4]
_080E2A20:
	mov r7, ip
	ldr r3, [r7, #0x40]
	ldr r2, _080E2A68 @ =0xFFFFFC00
	ands r3, r2
	mov r0, r8
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r7, sb
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E2A6C
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
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E2AC0
	b _080E2AC4
	.align 2, 0
_080E2A68: .4byte 0xFFFFFC00
_080E2A6C:
	cmp r3, r0
	ble _080E2AD4
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E2AA8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E2AA4 @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	blt _080E2AC0
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AA4: .4byte 0xFFFFFE80
_080E2AA8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	ble _080E2AC4
_080E2AC0:
	strh r2, [r3]
	b _080E2B02
_080E2AC4:
	ldr r1, _080E2AD0 @ =0xFFFFFE80
	cmp r0, r1
	bge _080E2B02
	strh r1, [r3]
	b _080E2B02
	.align 2, 0
_080E2AD0: .4byte 0xFFFFFE80
_080E2AD4:
	mov r0, ip
	adds r0, #0x50
	ldrh r2, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E2AF2
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E2B02
	b _080E2AFE
_080E2AF2:
	adds r0, r2, #0
	subs r0, #0x18
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E2B02
_080E2AFE:
	movs r0, #0
	strh r0, [r3]
_080E2B02:
	ldr r1, [sp]
	ldr r0, [r1]
	ldrb r2, [r0, #0xe]
	cmp r2, #0
	beq _080E2B30
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	mov r0, ip
	adds r0, #0xa4
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bge _080E2B50
	movs r0, #0
	strh r0, [r3]
	b _080E2B50
_080E2B30:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r7, ip
	str r0, [r7, #8]
	mov r0, ip
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #0x40]
	cmp r1, r0
	ble _080E2B50
	strh r2, [r3]
_080E2B50:
	ldrb r0, [r5]
	cmp r0, #1
	bne _080E2BB0
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080E2B6A
	movs r0, #0x60
	strh r0, [r2, #4]
_080E2B6A:
	mov r7, ip
	ldr r0, [r7, #0x44]
	ldr r2, _080E2B90 @ =0xFFFFF800
	ands r0, r2
	ldr r1, [r6, #0x44]
	ands r1, r2
	cmp r0, r1
	bne _080E2BB4
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E2B94
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r2, r0
	bgt _080E2B9E
	b _080E2BB4
	.align 2, 0
_080E2B90: .4byte 0xFFFFF800
_080E2B94:
	subs r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080E2BB4
_080E2B9E:
	movs r1, #0
	movs r0, #0
	strh r0, [r3]
	strh r0, [r4]
	movs r0, #0x13
	mov r2, sl
	strb r0, [r2]
	strb r1, [r5]
	b _080E2BB4
_080E2BB0:
	subs r0, #1
	strb r0, [r5]
_080E2BB4:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E2BD8
_080E2BBA:
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0x13
	bne _080E2BD8
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _080E2BD8
	mov r0, ip
	bl sub_080E2BE8
	adds r0, r6, #0
	bl sub_080E2BE8
_080E2BD8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2BE8
sub_080E2BE8: @ 0x080E2BE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E2C28 @ =sub_080E2C78
	adds r0, r4, #0
	movs r1, #0x14
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldr r0, _080E2C2C @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2C1A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E2C1A:
	ldr r2, [r4, #0x40]
	ldr r0, [r5, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080E2C30
	lsrs r0, r1, #8
	b _080E2C34
	.align 2, 0
_080E2C28: .4byte sub_080E2C78
_080E2C2C: .4byte 0x0000FF80
_080E2C30:
	subs r0, r0, r2
	lsrs r0, r0, #8
_080E2C34:
	adds r2, r4, #0
	adds r2, #0xa0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2C52
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r0, r1, r0
	b _080E2C58
_080E2C52:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, r0, r1
_080E2C58:
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E2C78
sub_080E2C78: @ 0x080E2C78
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _080E2CCC
	cmp r0, #7
	ble _080E2CBC
	ldr r2, _080E2CC8 @ =gUnk_08356A04
	mov r3, ip
	movs r4, #4
	ldrsh r0, [r3, r4]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x54
	movs r3, #0
	strb r1, [r0]
	mov r5, ip
	movs r1, #4
	ldrsh r0, [r5, r1]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x55
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x50
	strh r3, [r0]
_080E2CBC:
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	b _080E2D7C
	.align 2, 0
_080E2CC8: .4byte gUnk_08356A04
_080E2CCC:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2CFC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080E2CF8 @ =0xFFFFFB00
	adds r2, r1, #0
	cmp r0, r3
	blt _080E2D14
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E2D20
	b _080E2D1E
	.align 2, 0
_080E2CF8: .4byte 0xFFFFFB00
_080E2CFC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r2, r1, #0
	cmp r0, r3
	ble _080E2D18
_080E2D14:
	strh r3, [r2]
	b _080E2D20
_080E2D18:
	ldr r1, _080E2D54 @ =0xFFFFFB00
	cmp r0, r1
	bge _080E2D20
_080E2D1E:
	strh r1, [r2]
_080E2D20:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _080E2D58
	mov r0, ip
	adds r0, #0xa0
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r4, ip
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	bge _080E2D7C
	lsls r0, r3, #8
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	mov r0, ip
	bl sub_080E2D84
	b _080E2D7C
	.align 2, 0
_080E2D54: .4byte 0xFFFFFB00
_080E2D58:
	mov r0, ip
	adds r0, #0xa0
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r5, ip
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	asrs r0, r0, #8
	cmp r3, r0
	ble _080E2D7C
	lsls r0, r3, #8
	str r0, [r5, #0x40]
	strh r4, [r2]
	mov r0, ip
	bl sub_080E2D84
_080E2D7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2D84
sub_080E2D84: @ 0x080E2D84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080E2DB0 @ =sub_080E2E94
	movs r1, #0x14
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E2DB4
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x14
	b _080E2DBA
	.align 2, 0
_080E2DB0: .4byte sub_080E2E94
_080E2DB4:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x20
_080E2DBA:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2E72
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E2DE4
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #3
	bl sub_080A8D18
	b _080E2DF4
_080E2DE4:
	movs r2, #0x28
	rsbs r2, r2, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_080A8D18
_080E2DF4:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E2E7C @ =gUnk_02020EE0
	ldr r0, _080E2E80 @ =gUnk_0203AD3C
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
	bne _080E2E68
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E2E28
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E2E68
_080E2E28:
	ldr r1, _080E2E84 @ =gUnk_08D60FA4
	ldr r5, _080E2E88 @ =gSongTable
	ldr r2, _080E2E8C @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E2E4E
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E2E68
_080E2E4E:
	cmp r3, #0
	beq _080E2E60
	ldr r0, _080E2E90 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E2E68
_080E2E60:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E2E68:
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
_080E2E72:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E2E7C: .4byte gUnk_02020EE0
_080E2E80: .4byte gUnk_0203AD3C
_080E2E84: .4byte gUnk_08D60FA4
_080E2E88: .4byte gSongTable
_080E2E8C: .4byte 0x00000CA4
_080E2E90: .4byte gUnk_0203AD10

	thumb_func_start sub_080E2E94
sub_080E2E94: @ 0x080E2E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r7, #0
	adds r2, r7, #0
	adds r2, #0xb4
	ldr r0, [r2]
	mov sl, r0
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #7
	bgt _080E2ECC
	ldr r1, _080E2FC4 @ =gUnk_08356A14
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _080E2ECC
	mov r0, sl
	adds r0, #0x54
	strb r1, [r0]
_080E2ECC:
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r1, r7, #0
	adds r1, #0x9e
	ldrb r1, [r1]
	cmp r0, r1
	bge _080E2EDC
	b _080E2FE0
_080E2EDC:
	adds r1, r3, #0
	adds r1, #0xba
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E2FD8
	mov r0, sl
	adds r0, #0xba
	strb r2, [r0]
	ldrb r0, [r1]
	cmp r0, #2
	bhi _080E2FD8
	ldr r2, _080E2FC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E2FCC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080E2FD0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E2FD8
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r4, [r0]
	adds r0, r7, #0
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	adds r0, r7, #0
	bl sub_0803D368
	adds r1, r7, #0
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0x9f
	adds r4, r4, r7
	mov sb, r4
	movs r0, #0x5a
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	movs r6, #8
	strh r6, [r7, #4]
	movs r5, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	mov r0, sl
	adds r0, #0xb4
	ldr r4, [r0]
	mov r0, sl
	movs r1, #0x12
	ldr r2, _080E2FD4 @ =sub_080E28CC
	bl ObjectSetFunc
	mov r0, sl
	bl sub_0803D368
	mov r1, sl
	adds r1, #0xac
	str r0, [r1]
	adds r4, #0xac
	str r0, [r4]
	mov r4, sl
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	mov r0, r8
	strb r0, [r4]
	mov r1, sl
	strh r6, [r1, #4]
	str r5, [sp]
	mov r0, sl
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	adds r0, r7, #0
	adds r0, #0x83
	movs r2, #0x13
	strb r2, [r0]
	movs r1, #0x2d
	mov r0, sb
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x83
	strb r2, [r0]
	strb r1, [r4]
	b _080E2FE6
	.align 2, 0
_080E2FC4: .4byte gUnk_08356A14
_080E2FC8: .4byte gRngVal
_080E2FCC: .4byte 0x00196225
_080E2FD0: .4byte 0x3C6EF35F
_080E2FD4: .4byte sub_080E28CC
_080E2FD8:
	adds r0, r7, #0
	bl sub_080E3D90
	b _080E2FE6
_080E2FE0:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E2FE6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E2FF8
sub_080E2FF8: @ 0x080E2FF8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080E303C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080E3040
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E303C: .4byte 0xFFFFFC00
_080E3040:
	cmp r3, r0
	bge _080E3060
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E305C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E308A
	strh r2, [r1]
	b _080E308A
	.align 2, 0
_080E305C: .4byte 0xFFFFFE00
_080E3060:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E307C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E308A
	b _080E3088
_080E307C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E308A
_080E3088:
	strh r5, [r1]
_080E308A:
	ldr r3, [r4, #0x40]
	ldr r2, _080E30B0 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080E30B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080E30EC
	.align 2, 0
_080E30B0: .4byte 0xFFFFFC00
_080E30B4:
	cmp r3, r0
	ble _080E3110
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E30EC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E30E8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080E30E2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E313C
_080E30E2:
	strh r2, [r1]
	b _080E313C
	.align 2, 0
_080E30E8: .4byte 0xFFFFFE00
_080E30EC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E30E2
	ldr r2, _080E310C @ =0xFFFFFE00
	cmp r0, r2
	bge _080E313C
	b _080E30E2
	.align 2, 0
_080E310C: .4byte 0xFFFFFE00
_080E3110:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E312C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E313C
	b _080E3138
_080E312C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E313C
_080E3138:
	movs r0, #0
	strh r0, [r1]
_080E313C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3152
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080E3158
_080E3152:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080E3158:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080E31AC
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080E3182
	cmp r2, #0xf
	ble _080E3188
	b _080E31AC
_080E3182:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080E31AC
_080E3188:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080E31A0
	cmp r1, #0xf
	ble _080E31A6
	b _080E31AC
_080E31A0:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080E31AC
_080E31A6:
	adds r0, r4, #0
	bl sub_080DF894
_080E31AC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E31CC
	movs r0, #0
	strb r0, [r5]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080E31CC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E31D4
sub_080E31D4: @ 0x080E31D4
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
	beq _080E31F8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080E31FE
_080E31F8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080E31FE:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #0x10
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3220 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E3224 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E323C
	.align 2, 0
_080E3220: .4byte gUnk_020229D4
_080E3224: .4byte gUnk_020229E0
_080E3228:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E3244
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E323C:
	cmp r0, #0
	bne _080E3228
	orrs r2, r3
	str r2, [r1]
_080E3244:
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
	movs r0, #0xc8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
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
	.align 2, 0

	thumb_func_start CreateMasterHandBullet
CreateMasterHandBullet: @ 0x080E32A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E32DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E32E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E32E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E32EC
	.align 2, 0
_080E32DC: .4byte ObjectMain
_080E32E0: .4byte ObjectDestroy
_080E32E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E32EC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x68]
	orrs r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E336C @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #4
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080E3370
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E336C: .4byte sub_0809F840

	thumb_func_start sub_080E3370
sub_080E3370: @ 0x080E3370
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E33A0 @ =sub_080E3DE4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E3390
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E3390:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #0
	beq _080E33A4
	cmp r2, #1
	beq _080E33B0
	b _080E33C0
	.align 2, 0
_080E33A0: .4byte sub_080E3DE4
_080E33A4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1]
	b _080E33C0
_080E33B0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_080E33C0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E33D4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E33D4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E33E4
sub_080E33E4: @ 0x080E33E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E3414 @ =sub_080E34C4
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
	beq _080E3418
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3420
	.align 2, 0
_080E3414: .4byte sub_080E34C4
_080E3418:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3420:
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
	ldr r0, _080E34BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3470
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E3470:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
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
	ldr r1, _080E34C0 @ =0x12010400
	str r1, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E349E
	orrs r1, r3
_080E349E:
	str r1, [r4, #8]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x24
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E34BC: .4byte gUnk_03000510
_080E34C0: .4byte 0x12010400

	thumb_func_start sub_080E34C4
sub_080E34C4: @ 0x080E34C4
	push {r4, r5, lr}
	ldr r2, _080E34E0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E34E4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E34EC
	.align 2, 0
_080E34E0: .4byte gCurTask
_080E34E4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E34EC:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E3506
	ldr r0, [r2]
	bl TaskDestroy
	b _080E3602
_080E3506:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E3514
	orrs r1, r3
	str r1, [r4, #8]
	b _080E3602
_080E3514:
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
	ldr r0, _080E3550 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E3554
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E3554
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E3602
	.align 2, 0
_080E3550: .4byte gUnk_03000510
_080E3554:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E3564
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E356C
_080E3564:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E356C:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080E3602
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E3590
	ldr r0, _080E358C @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E3602
	.align 2, 0
_080E358C: .4byte 0xFFFBFFFF
_080E3590:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E3602
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E3602
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E35C8
	ldr r2, _080E35C0 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E35C4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E35CA
	.align 2, 0
_080E35C0: .4byte gCurLevelInfo
_080E35C4: .4byte 0x0000065E
_080E35C8:
	movs r1, #0xff
_080E35CA:
	cmp r1, #0xff
	beq _080E3602
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E3608 @ =gUnk_02022EB0
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
	ldr r2, _080E360C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E3602:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3608: .4byte gUnk_02022EB0
_080E360C: .4byte gUnk_02022F50

	thumb_func_start sub_080E3610
sub_080E3610: @ 0x080E3610
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	adds r5, r6, #0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E3638 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E363C @ =gUnk_020229E0
	b _080E3654
	.align 2, 0
_080E3638: .4byte gUnk_020229D4
_080E363C: .4byte gUnk_020229E0
_080E3640:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E365C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E3654:
	cmp r0, #0
	bne _080E3640
	orrs r2, r3
	str r2, [r1]
_080E365C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x40
	strh r0, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x4d
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, r8
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r0, [r6, #0x70]
	str r5, [r0, #0x70]
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, #0xb4
	str r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E36C4
sub_080E36C4: @ 0x080E36C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E370A
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xc8
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E372A
	str r1, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080E3610
	b _080E372A
_080E370A:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080E3730 @ =0x00003FFF
	cmp r1, r0
	ble _080E372A
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_080E3734
_080E372A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3730: .4byte 0x00003FFF

	thumb_func_start sub_080E3734
sub_080E3734: @ 0x080E3734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3754 @ =sub_080E3758
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3754: .4byte sub_080E3758

	thumb_func_start sub_080E3758
sub_080E3758: @ 0x080E3758
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x47
	bne _080E379C
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E3798 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
	b _080E37BC
	.align 2, 0
_080E3798: .4byte 0xFFFFFDFF
_080E379C:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E37BC
	ldr r0, _080E37C0 @ =0xFFFFFDFF
	ands r3, r0
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080DF894
_080E37BC:
	pop {r0}
	bx r0
	.align 2, 0
_080E37C0: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E37C4
sub_080E37C4: @ 0x080E37C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E37EC @ =sub_080DF4C0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E37EC: .4byte sub_080DF4C0

	thumb_func_start sub_080E37F0
sub_080E37F0: @ 0x080E37F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3820 @ =sub_080DFC3C
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3824
	movs r0, #0x14
	b _080E3826
	.align 2, 0
_080E3820: .4byte sub_080DFC3C
_080E3824:
	movs r0, #0x18
_080E3826:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3844
sub_080E3844: @ 0x080E3844
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3888 @ =sub_080DFDE0
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x26
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3888: .4byte sub_080DFDE0

	thumb_func_start sub_080E388C
sub_080E388C: @ 0x080E388C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E38DC @ =sub_080DFE40
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E38DC: .4byte sub_080DFE40

	thumb_func_start sub_080E38E0
sub_080E38E0: @ 0x080E38E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E3914 @ =sub_080E0318
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
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
_080E3914: .4byte sub_080E0318

	thumb_func_start sub_080E3918
sub_080E3918: @ 0x080E3918
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3968 @ =sub_080E0B44
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3968: .4byte sub_080E0B44

	thumb_func_start sub_080E396C
sub_080E396C: @ 0x080E396C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E39C0 @ =sub_080E0D40
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E39C0: .4byte sub_080E0D40

	thumb_func_start sub_080E39C4
sub_080E39C4: @ 0x080E39C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080E39F4 @ =sub_080E0FC4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
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
_080E39F4: .4byte sub_080E0FC4

	thumb_func_start sub_080E39F8
sub_080E39F8: @ 0x080E39F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3A34 @ =sub_080E3A4C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E3A38
	movs r0, #0x18
	b _080E3A3A
	.align 2, 0
_080E3A34: .4byte sub_080E3A4C
_080E3A38:
	movs r0, #0x30
_080E3A3A:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3A4C
sub_080E3A4C: @ 0x080E3A4C
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #7
	bhi _080E3A78
	ldr r1, _080E3A90 @ =gUnk_08356A04
	lsrs r0, r2, #0x19
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080E3A78:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E3A8A
	adds r0, r3, #0
	bl sub_080E3A94
_080E3A8A:
	pop {r0}
	bx r0
	.align 2, 0
_080E3A90: .4byte gUnk_08356A04

	thumb_func_start sub_080E3A94
sub_080E3A94: @ 0x080E3A94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3ADC @ =sub_080E1604
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3ADC: .4byte sub_080E1604

	thumb_func_start sub_080E3AE0
sub_080E3AE0: @ 0x080E3AE0
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080E3AFE
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080E3B0E
_080E3AFE:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080E25B4
	b _080E3B26
_080E3B0E:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E3B26
	adds r0, r2, #0
	bl sub_080E3B2C
_080E3B26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E3B2C
sub_080E3B2C: @ 0x080E3B2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3B90 @ =gUnk_083569DC
	str r1, [r0]
	ldr r2, _080E3B94 @ =sub_080E1CCC
	adds r0, r4, #0
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080E3B98 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3B90: .4byte gUnk_083569DC
_080E3B94: .4byte sub_080E1CCC
_080E3B98: .4byte gCurLevelInfo

	thumb_func_start sub_080E3B9C
sub_080E3B9C: @ 0x080E3B9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3BCC @ =sub_080E1EC0
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3BCC: .4byte sub_080E1EC0

	thumb_func_start sub_080E3BD0
sub_080E3BD0: @ 0x080E3BD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3C08 @ =sub_080E2024
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C08: .4byte sub_080E2024

	thumb_func_start sub_080E3C0C
sub_080E3C0C: @ 0x080E3C0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080E3C64 @ =gUnk_083569EC
	str r1, [r0]
	ldr r2, _080E3C68 @ =sub_080E20B4
	adds r0, r4, #0
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C64: .4byte gUnk_083569EC
_080E3C68: .4byte sub_080E20B4

	thumb_func_start sub_080E3C6C
sub_080E3C6C: @ 0x080E3C6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080E3CC0 @ =sub_080E22EC
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3CC0: .4byte sub_080E22EC

	thumb_func_start sub_080E3CC4
sub_080E3CC4: @ 0x080E3CC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D0C @ =sub_080E23B8
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D0C: .4byte sub_080E23B8

	thumb_func_start sub_080E3D10
sub_080E3D10: @ 0x080E3D10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3D30 @ =sub_080E2834
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xb8
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r4, #0xba
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D30: .4byte sub_080E2834

	thumb_func_start sub_080E3D34
sub_080E3D34: @ 0x080E3D34
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r5, [r0]
	ldr r2, _080E3D8C @ =sub_080E28CC
	adds r0, r4, #0
	movs r1, #0x12
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r5, #0xac
	str r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x5a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D8C: .4byte sub_080E28CC

	thumb_func_start sub_080E3D90
sub_080E3D90: @ 0x080E3D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3DE0 @ =sub_080E2FF8
	movs r1, #0x15
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb8
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3DE0: .4byte sub_080E2FF8

	thumb_func_start sub_080E3DE4
sub_080E3DE4: @ 0x080E3DE4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #8
	bne _080E3DF4
	adds r0, r1, #0
	bl sub_080E3DF8
_080E3DF4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E3DF8
sub_080E3DF8: @ 0x080E3DF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E3E18 @ =sub_080E3E24
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080E3E1C @ =0xFFFFF7FF
	ands r0, r1
	ldr r1, _080E3E20 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3E18: .4byte sub_080E3E24
_080E3E1C: .4byte 0xFFFFF7FF
_080E3E20: .4byte 0xFFFFFDFF

	thumb_func_start sub_080E3E24
sub_080E3E24: @ 0x080E3E24
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080E3E30
sub_080E3E30: @ 0x080E3E30
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E3E4A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E3E52
_080E3E4A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E3E52:
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _080E3E6C
	adds r3, r2, #0
	adds r3, #0x87
	movs r0, #0
	movs r1, #1
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0xb4
	str r0, [r1]
	str r0, [r2, #0x70]
_080E3E6C:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4}
	pop {r0}
	bx r0

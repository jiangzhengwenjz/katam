	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateDarkMetaKnight
CreateDarkMetaKnight: @ 0x080F57DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080F5810 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080F5814 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xd0
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F5818
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080F5820
	.align 2, 0
_080F5810: .4byte ObjectMain
_080F5814: .4byte ObjectDestroy
_080F5818:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080F5820:
	adds r5, r0, #0
	adds r7, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc0
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #0x48
	ldrh r2, [r0]
	adds r0, #0x4c
	strh r2, [r0]
	subs r0, #0x14
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r0, [r5, #8]
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #3
	orrs r0, r1
	ldr r1, _080F5958 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r4, #6
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080F595C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F5960 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080F5964 @ =gKirbys
	ldr r0, _080F5968 @ =gUnk_0203AD3C
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
	bne _080F592E
	ldr r0, _080F596C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080F592E
	adds r0, r4, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080F592E:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080F5970 @ =sub_080FB504
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	bl sub_080FFF60
	adds r0, r5, #0
	bl sub_080FBFE8
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080F5958: .4byte 0x001080A0
_080F595C: .4byte gCurLevelInfo
_080F5960: .4byte 0x0000065E
_080F5964: .4byte gKirbys
_080F5968: .4byte gUnk_0203AD3C
_080F596C: .4byte gUnk_0203AD20
_080F5970: .4byte sub_080FB504

	thumb_func_start sub_080F5974
sub_080F5974: @ 0x080F5974
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	bne _080F5A5E
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F5A5E
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
	beq _080F5A5E
	ldr r3, _080F5A54 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
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
	adds r1, r3, #0
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
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F5A58
	adds r0, r5, #0
	bl sub_080F5A6C
	b _080F5A5E
	.align 2, 0
_080F5A54: .4byte gCurLevelInfo
_080F5A58:
	adds r0, r5, #0
	bl sub_080F704C
_080F5A5E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F5A6C
sub_080F5A6C: @ 0x080F5A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov r8, r0
	movs r0, #0
	mov sb, r0
	mov r2, r8
	adds r1, r2, #0
	str r1, [sp, #0x28]
	movs r5, #0
	ldr r0, _080F5AE8 @ =gUnk_0203AD44
	adds r2, r0, #0
	ldrb r4, [r2]
	cmp r5, r4
	bhs _080F5B7C
	ldr r6, _080F5AEC @ =gUnk_083571C0
	ldr r7, _080F5AF0 @ =gCurLevelInfo
	movs r3, #0xcd
	lsls r3, r3, #3
	movs r0, #0x10
	adds r0, r0, r7
	mov sl, r0
_080F5A9E:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080F5AF4 @ =gKirbys
	adds r4, r1, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F5B70
	adds r0, r4, #0
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F5B70
	adds r0, r4, #0
	str r3, [sp, #0x2c]
	bl sub_0804BAD8
	ldr r2, _080F5AF8 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	ldr r3, [sp, #0x2c]
	cmp r0, #0xe
	beq _080F5AFC
	adds r1, r4, #0
	adds r1, #0xd4
	movs r0, #0xb
	b _080F5B02
	.align 2, 0
_080F5AE8: .4byte gUnk_0203AD44
_080F5AEC: .4byte gUnk_083571C0
_080F5AF0: .4byte gCurLevelInfo
_080F5AF4: .4byte gKirbys
_080F5AF8: .4byte 0x00000103
_080F5AFC:
	adds r1, r4, #0
	adds r1, #0xd4
	movs r0, #0x25
_080F5B02:
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r1, r6
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r0, r6, #4
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x44]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	adds r1, r0, #0
	muls r1, r3, r1
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r7, r4
	adds r1, r1, r0
	movs r0, #3
	str r0, [r1]
	ldrb r0, [r2]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r6]
	ldr r4, _080F5BA0 @ =0xFFFF9400
	adds r0, r0, r4
	str r0, [r1]
	ldrb r0, [r2]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldr r0, [r6, #4]
	ldr r2, _080F5BA4 @ =0xFFFF8000
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080F5BA8 @ =gUnk_0203AD44
_080F5B70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r4, [r2]
	cmp r5, r4
	blo _080F5A9E
_080F5B7C:
	ldr r0, _080F5BAC @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	movs r0, #1
	movs r1, #0xa
	movs r2, #0
	bl sub_08002888
	ldr r7, [r0]
	cmp r7, #0
	beq _080F5BB0
	mov r0, r8
	movs r1, #1
	bl sub_080F6AEC
	b _080F5CAE
	.align 2, 0
_080F5BA0: .4byte 0xFFFF9400
_080F5BA4: .4byte 0xFFFF8000
_080F5BA8: .4byte gUnk_0203AD44
_080F5BAC: .4byte gUnk_0203AD10
_080F5BB0:
	movs r4, #1
	str r4, [r0]
	movs r0, #0x18
	bl m4aSongNumStartOrChange
	ldr r2, _080F5CC0 @ =sub_080F5DA0
	mov r0, r8
	movs r1, #0x1f
	bl ObjectSetFunc
	movs r0, #0xe0
	lsls r0, r0, #9
	mov r1, r8
	str r0, [r1, #0x40]
	ldr r0, _080F5CC4 @ =0x000119FF
	str r0, [r1, #0x44]
	mov r0, r8
	adds r0, #0x50
	movs r2, #0
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	ldr r0, [r1, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	str r0, [r1, #8]
	movs r0, #0x9f
	add r0, r8
	mov sl, r0
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x9e
	strb r2, [r0]
	ldr r2, _080F5CC8 @ =gKirbys
	ldr r0, _080F5CCC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F5CA8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov sb, r1
	str r1, [sp]
	mov r0, sp
	movs r5, #0xe5
	lsls r5, r5, #2
	strh r5, [r0, #0xc]
	strb r4, [r0, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	strh r7, [r0, #0x14]
	strh r7, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r2, sp
	mov r0, r8
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r0, sb
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	mov r1, sp
	movs r0, #3
	strb r0, [r1, #0x1a]
	subs r0, #4
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	strh r7, [r0, #0x14]
	strh r7, [r0, #0x16]
	strb r6, [r0, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r4, r0
	strb r4, [r1, #0x1f]
	mov r1, r8
	str r1, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080F5CA8:
	movs r0, #0x36
	mov r2, sl
	strb r0, [r2]
_080F5CAE:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F5CC0: .4byte sub_080F5DA0
_080F5CC4: .4byte 0x000119FF
_080F5CC8: .4byte gKirbys
_080F5CCC: .4byte gUnk_0203AD3C

	thumb_func_start sub_080F5CD0
sub_080F5CD0: @ 0x080F5CD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _080F5D10 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r6, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080F5D84
	adds r0, r6, #0
	adds r0, #0xc7
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080F5D14
	subs r0, r1, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F5D84
	adds r0, r6, #0
	movs r1, #0
	bl sub_080F6AEC
	b _080F5D84
	.align 2, 0
_080F5D10: .4byte gUnk_03000510
_080F5D14:
	movs r4, #0
	b _080F5D7C
_080F5D18:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _080F5D90 @ =gKirbys
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F5D76
	adds r0, r1, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r0, [r0]
	ldrh r3, [r2]
	cmp r0, r3
	bne _080F5D76
	movs r3, #0x8d
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrh r1, [r0]
	movs r5, #8
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F5D76
	ldrh r1, [r2]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _080F5D94 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _080F5D98 @ =0x00003FFF
	strh r1, [r0, #6]
	strb r5, [r7]
_080F5D76:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080F5D7C:
	ldr r0, _080F5D9C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _080F5D18
_080F5D84:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F5D90: .4byte gKirbys
_080F5D94: .4byte 0x0000FFFF
_080F5D98: .4byte 0x00003FFF
_080F5D9C: .4byte gUnk_0203AD44

	thumb_func_start sub_080F5DA0
sub_080F5DA0: @ 0x080F5DA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r6
	adds r1, r6, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F5DBE
	subs r0, #1
	strb r0, [r1]
_080F5DBE:
	movs r5, #0
	ldr r0, _080F5E24 @ =gUnk_0203AD44
	mov ip, r0
	movs r0, #0x83
	adds r0, r0, r6
	mov sb, r0
	mov r1, ip
	ldrb r1, [r1]
	cmp r5, r1
	bhs _080F5E92
	ldr r2, _080F5E28 @ =gCurLevelInfo
	mov sl, r2
_080F5DD6:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	ldr r4, _080F5E2C @ =gKirbys
	adds r2, r0, r4
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F5E84
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F5E84
	adds r0, r6, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080F5E30
	adds r3, r2, #0
	adds r3, #0x50
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, #0x3f
	bgt _080F5E40
	adds r0, r2, #0
	adds r0, #0xd4
	strh r1, [r0]
	strh r1, [r3]
	b _080F5E40
	.align 2, 0
_080F5E24: .4byte gUnk_0203AD44
_080F5E28: .4byte gCurLevelInfo
_080F5E2C: .4byte gKirbys
_080F5E30:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x50
	adds r1, #0xfc
	strh r1, [r0]
_080F5E40:
	ldrb r0, [r4]
	cmp r0, #0x17
	bhi _080F5E84
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	mov r4, sl
	adds r2, r0, r4
	ldr r7, _080F5EA8 @ =0x00000662
	adds r1, r2, r7
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0x11
	asrs r3, r4, #0x10
	cmp r0, r3
	ble _080F5E70
	strh r3, [r1]
_080F5E70:
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	movs r1, #0xf8
	lsls r1, r1, #8
	cmp r0, r1
	ble _080F5E84
	str r1, [r2, #0xc]
_080F5E84:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r0, ip
	ldrb r0, [r0]
	cmp r5, r0
	blo _080F5DD6
_080F5E92:
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #2
	beq _080F5F88
	cmp r0, #2
	bgt _080F5EAC
	cmp r0, #0
	bne _080F5EA4
	b _080F6054
_080F5EA4:
	b _080F606E
	.align 2, 0
_080F5EA8: .4byte 0x00000662
_080F5EAC:
	cmp r0, #0x1f
	beq _080F5EB6
	cmp r0, #0x20
	beq _080F5F54
	b _080F606E
_080F5EB6:
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r2, r6, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080F5EE0
	movs r0, #0x20
	strb r0, [r4]
	ldr r0, [r6, #8]
	subs r1, #7
	ands r0, r1
	str r0, [r6, #8]
	movs r0, #0
	strb r0, [r2]
_080F5EE0:
	ldrb r0, [r2]
	cmp r0, #0xc
	beq _080F5EE8
	b _080F606E
_080F5EE8:
	movs r0, #2
	movs r1, #0x13
	movs r2, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _080F5EFE
	ldr r0, _080F5F2C @ =sub_080F5CD0
	str r0, [r6, #0x7c]
_080F5EFE:
	movs r0, #1
	str r0, [r1]
	ldr r0, _080F5F30 @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F5F10
	b _080F606E
_080F5F10:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080F5F3C
	ldr r0, _080F5F34 @ =gUnk_0203AD3C
	ldr r1, _080F5F38 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080F5F3C
	movs r0, #8
	bl sub_08031CE4
	b _080F606E
	.align 2, 0
_080F5F2C: .4byte sub_080F5CD0
_080F5F30: .4byte gUnk_0203AD10
_080F5F34: .4byte gUnk_0203AD3C
_080F5F38: .4byte gUnk_0203AD24
_080F5F3C:
	ldr r2, _080F5F50 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _080F5F48
	adds r1, r0, #0
_080F5F48:
	movs r0, #1
	bl sub_0800ACD4
	b _080F606E
	.align 2, 0
_080F5F50: .4byte gUnk_0203AD48
_080F5F54:
	ldrb r0, [r6, #1]
	cmp r0, #0xe
	bne _080F5F66
	adds r0, r6, #0
	bl sub_080FC5F8
	mov r1, r8
	adds r1, #0xbc
	str r0, [r1]
_080F5F66:
	ldrb r0, [r6, #1]
	cmp r0, #0x2a
	beq _080F5F6E
	b _080F606E
_080F5F6E:
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x50
	ldr r0, _080F5F84 @ =0x0000FF80
	strh r0, [r1]
	b _080F606E
	.align 2, 0
_080F5F84: .4byte 0x0000FF80
_080F5F88:
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r5, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bls _080F606E
	movs r0, #0x18
	bl m4aSongNumStop
	adds r0, r6, #0
	bl sub_080FD8B4
	mov r1, r8
	adds r1, #0xb8
	str r0, [r1]
	strb r5, [r4]
	mov r1, sb
	strb r5, [r1]
	strb r5, [r4]
	adds r0, r6, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r1, _080F6034 @ =gKirbys
	ldr r0, _080F6038 @ =gUnk_0203AD3C
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
	beq _080F5FE2
	b _080F60F4
_080F5FE2:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080F5FF4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080F5FF4
	b _080F60F4
_080F5FF4:
	ldr r1, _080F603C @ =gUnk_08D60FA4
	ldr r4, _080F6040 @ =gSongTable
	ldr r2, _080F6044 @ =0x000010BC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F6018
	ldr r7, _080F6048 @ =0x000010B8
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F60F4
_080F6018:
	cmp r3, #0
	beq _080F602A
	ldr r0, _080F604C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F60F4
_080F602A:
	ldr r0, _080F6050 @ =0x00000217
	bl m4aSongNumStart
	b _080F60F4
	.align 2, 0
_080F6034: .4byte gKirbys
_080F6038: .4byte gUnk_0203AD3C
_080F603C: .4byte gUnk_08D60FA4
_080F6040: .4byte gSongTable
_080F6044: .4byte 0x000010BC
_080F6048: .4byte 0x000010B8
_080F604C: .4byte gUnk_0203AD10
_080F6050: .4byte 0x00000217
_080F6054:
	adds r1, r6, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x38
	bls _080F606E
	adds r0, r6, #0
	bl sub_080FFEF4
	b _080F60F4
_080F606E:
	adds r1, r6, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0x96
	bls _080F60F0
	ldr r2, _080F60E4 @ =gKirbys
	ldr r0, _080F60E8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F60CC
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r5, #0xe5
	lsls r5, r5, #2
	movs r3, #0xe4
	lsls r3, r3, #2
	movs r4, #0
	str r4, [sp]
	ldrh r1, [r6, #4]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0803CD98
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r3, _080F60EC @ =0x00000391
	str r4, [sp]
	ldrh r1, [r6, #4]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #3
	bl sub_0803CD98
_080F60CC:
	ldrh r0, [r6, #4]
	adds r0, #2
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080F60F4
	strh r1, [r6, #4]
	b _080F60F4
	.align 2, 0
_080F60E4: .4byte gKirbys
_080F60E8: .4byte gUnk_0203AD3C
_080F60EC: .4byte 0x00000391
_080F60F0:
	adds r0, #1
	strb r0, [r1]
_080F60F4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F6104
sub_080F6104: @ 0x080F6104
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r5, #0
	ldr r0, _080F61EC @ =gUnk_0203AD44
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r5, r0
	bhs _080F61DA
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov sb, r2
_080F6126:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080F61F0 @ =gKirbys
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _080F61F4 @ =gCurLevelInfo
	adds r4, r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F61CE
	adds r0, r2, #0
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F61CE
	ldr r7, _080F61F8 @ =0x00000662
	adds r2, r4, r7
	ldrh r0, [r2]
	adds r0, #0x80
	strh r0, [r2]
	ldr r0, _080F61FC @ =0x00000664
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r7, r8
	asrs r3, r7, #0x10
	cmp r0, r3
	ble _080F6184
	strh r3, [r2]
_080F6184:
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r7, sb
	asrs r3, r7, #0x10
	cmp r0, r3
	ble _080F6192
	strh r3, [r1]
_080F6192:
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [r4, #0xc]
	subs r2, r2, r0
	str r2, [r4, #0xc]
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080F6200 @ =0x000047FF
	cmp r2, r0
	bgt _080F61B0
	adds r0, #1
	str r0, [r4, #0xc]
_080F61B0:
	ldr r1, [r4, #0x10]
	ldr r0, _080F6204 @ =0x000007FF
	cmp r1, r0
	bgt _080F61BC
	adds r0, #1
	str r0, [r4, #0x10]
_080F61BC:
	mov r2, ip
	adds r2, #0x85
	ldrb r0, [r2]
	cmp r0, #0
	bne _080F61CE
	ldr r1, [r4, #0x10]
	ldr r0, _080F6208 @ =0x00005FFF
	cmp r1, r0
	ble _080F62B4
_080F61CE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r6]
	cmp r5, r0
	blo _080F6126
_080F61DA:
	mov r2, ip
	adds r2, #0x85
	ldrb r1, [r2]
	cmp r1, #1
	beq _080F620C
	cmp r1, #2
	beq _080F62D6
	b _080F62F2
	.align 2, 0
_080F61EC: .4byte gUnk_0203AD44
_080F61F0: .4byte gKirbys
_080F61F4: .4byte gCurLevelInfo
_080F61F8: .4byte 0x00000662
_080F61FC: .4byte 0x00000664
_080F6200: .4byte 0x000047FF
_080F6204: .4byte 0x000007FF
_080F6208: .4byte 0x00005FFF
_080F620C:
	mov r1, ip
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F62F2
	adds r1, #0x83
	movs r0, #0x29
	strb r0, [r1]
	movs r0, #2
	strb r0, [r2]
	movs r0, #8
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _080F629C @ =gKirbys
	ldr r0, _080F62A0 @ =gUnk_0203AD3C
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
	bne _080F62F2
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080F6258
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F62F2
_080F6258:
	ldr r1, _080F62A4 @ =gUnk_08D60FA4
	ldr r4, _080F62A8 @ =gSongTable
	ldr r7, _080F62AC @ =0x00000E24
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F627E
	movs r1, #0xe2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F62F2
_080F627E:
	cmp r3, #0
	beq _080F6290
	ldr r0, _080F62B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F62F2
_080F6290:
	movs r0, #0xe2
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080F62F2
	.align 2, 0
_080F629C: .4byte gKirbys
_080F62A0: .4byte gUnk_0203AD3C
_080F62A4: .4byte gUnk_08D60FA4
_080F62A8: .4byte gSongTable
_080F62AC: .4byte 0x00000E24
_080F62B0: .4byte gUnk_0203AD10
_080F62B4:
	movs r1, #1
	strb r1, [r2]
	mov r2, ip
	adds r2, #0x83
	movs r0, #0x28
	strb r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #7
	mov r2, ip
	str r0, [r2, #0x40]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r2, #0x44]
	ldr r0, [r2, #8]
	eors r0, r1
	str r0, [r2, #8]
	b _080F62F2
_080F62D6:
	mov r3, ip
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F62F2
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F62F2
	mov r0, ip
	bl sub_080FFF2C
_080F62F2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F6300
sub_080F6300: @ 0x080F6300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	ldr r0, _080F63B8 @ =gUnk_0203AD44
	mov sb, r0
	ldrb r1, [r0]
	cmp r5, r1
	blo _080F6320
	b _080F6438
_080F6320:
	movs r6, #0x80
	lsls r6, r6, #1
	movs r3, #0x80
	lsls r3, r3, #0x14
	mov sl, r3
	movs r7, #1
	mov r8, r7
_080F632E:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080F63BC @ =gKirbys
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _080F63C0 @ =gCurLevelInfo
	adds r4, r1, r0
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F6428
	adds r0, r2, #0
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F6428
	ldr r0, _080F63C4 @ =0x00000662
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, r0, r6
	strh r0, [r2]
	ldr r3, _080F63C8 @ =0x00000664
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, r0, r6
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r2, r7]
	movs r7, #0xa0
	lsls r7, r7, #0x14
	asrs r3, r7, #0x10
	cmp r0, r3
	ble _080F638A
	strh r3, [r2]
_080F638A:
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r7, sl
	asrs r3, r7, #0x10
	cmp r0, r3
	ble _080F6398
	strh r3, [r1]
_080F6398:
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [r4, #0xc]
	adds r2, r2, r0
	str r2, [r4, #0xc]
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080F63CC @ =0x0000F7FF
	cmp r2, r0
	ble _080F63D0
	adds r0, #1
	str r0, [r4, #0xc]
	b _080F63D4
	.align 2, 0
_080F63B8: .4byte gUnk_0203AD44
_080F63BC: .4byte gKirbys
_080F63C0: .4byte gCurLevelInfo
_080F63C4: .4byte 0x00000662
_080F63C8: .4byte 0x00000664
_080F63CC: .4byte 0x0000F7FF
_080F63D0:
	movs r0, #0
	str r0, [sp]
_080F63D4:
	ldr r1, [r4, #0x10]
	ldr r0, _080F63E4 @ =0x000097FF
	cmp r1, r0
	ble _080F63E8
	adds r0, #1
	str r0, [r4, #0x10]
	b _080F63EC
	.align 2, 0
_080F63E4: .4byte 0x000097FF
_080F63E8:
	movs r1, #0
	str r1, [sp]
_080F63EC:
	mov r3, ip
	adds r3, #0x85
	ldrb r2, [r3]
	cmp r2, #0
	bne _080F6428
	ldr r1, [r4, #0x10]
	movs r0, #0x94
	lsls r0, r0, #7
	cmp r1, r0
	ble _080F6428
	mov r7, r8
	strb r7, [r3]
	mov r0, ip
	adds r0, #0x83
	strb r2, [r0]
	mov r1, ip
	ldr r0, [r1, #8]
	mov r3, r8
	eors r0, r3
	str r0, [r1, #8]
	ldr r0, _080F6420 @ =0x0001B300
	str r0, [r1, #0x40]
	ldr r0, _080F6424 @ =0x000119FF
	str r0, [r1, #0x44]
	b _080F6444
	.align 2, 0
_080F6420: .4byte 0x0001B300
_080F6424: .4byte 0x000119FF
_080F6428:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r7, sb
	ldrb r7, [r7]
	cmp r5, r7
	bhs _080F6438
	b _080F632E
_080F6438:
	ldr r0, [sp]
	cmp r0, #0
	beq _080F6444
	mov r0, ip
	bl sub_080F6454
_080F6444:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F6454
sub_080F6454: @ 0x080F6454
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r2, _080F6520 @ =sub_080F6544
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x38
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r3, [r0]
	ldr r0, _080F6524 @ =0x0001B300
	str r0, [r4, #0x40]
	ldr r0, _080F6528 @ =0x000119FF
	str r0, [r4, #0x44]
	movs r3, #0
	ldr r0, _080F652C @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r3, r1
	bhs _080F650E
	adds r5, r4, #0
	adds r5, #0x60
	movs r4, #0
	ldr r2, _080F6530 @ =gKirbys
	mov ip, r2
	ldr r7, _080F6534 @ =gCurLevelInfo
	mov r8, r7
	adds r6, r0, #0
_080F64B4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r1, ip
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F6502
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r2, [r5]
	cmp r0, r2
	bne _080F6502
	ldr r7, _080F6538 @ =0x00000662
	adds r0, r1, r7
	strh r4, [r0]
	ldr r2, _080F653C @ =0x00000664
	adds r0, r1, r2
	strh r4, [r0]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	movs r0, #0x98
	lsls r0, r0, #8
	str r0, [r1, #0x10]
_080F6502:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r7, [r6]
	cmp r3, r7
	blo _080F64B4
_080F650E:
	ldr r0, _080F6540 @ =gUnk_030016A0
	movs r1, #8
	bl m4aMPlayFadeIn
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6520: .4byte sub_080F6544
_080F6524: .4byte 0x0001B300
_080F6528: .4byte 0x000119FF
_080F652C: .4byte gUnk_0203AD44
_080F6530: .4byte gKirbys
_080F6534: .4byte gCurLevelInfo
_080F6538: .4byte 0x00000662
_080F653C: .4byte 0x00000664
_080F6540: .4byte gUnk_030016A0

	thumb_func_start sub_080F6544
sub_080F6544: @ 0x080F6544
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r5
	adds r2, r5, #0
	adds r2, #0x85
	ldrb r1, [r2]
	cmp r1, #1
	beq _080F659A
	cmp r1, #1
	bgt _080F6564
	cmp r1, #0
	beq _080F656E
	b _080F6710
_080F6564:
	cmp r1, #2
	beq _080F65C0
	cmp r1, #3
	beq _080F65D8
	b _080F6710
_080F656E:
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F6580
	b _080F6710
_080F6580:
	movs r0, #1
	strb r0, [r2]
	subs r1, #0x1c
	movs r0, #0xb
	strb r0, [r1]
	subs r1, #0x33
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080F6710
_080F659A:
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x3f
	ble _080F65A8
	b _080F6710
_080F65A8:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #2
	strb r0, [r2]
	b _080F6710
_080F65C0:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _080F65CA
	b _080F6710
_080F65CA:
	adds r0, r5, #0
	adds r0, #0x83
	movs r1, #0xd
	strb r1, [r0]
	movs r0, #3
	strb r0, [r2]
	b _080F6710
_080F65D8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F65E8
	b _080F6710
_080F65E8:
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r7, r2, #0
	cmp r0, #0xd
	bne _080F6680
	ldr r1, _080F6668 @ =gKirbys
	ldr r0, _080F666C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080F6662
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F6622
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F6662
_080F6622:
	ldr r1, _080F6670 @ =gUnk_08D60FA4
	ldr r4, _080F6674 @ =gSongTable
	ldr r2, _080F6678 @ =0x000010C4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F6648
	movs r1, #0x86
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F6662
_080F6648:
	cmp r3, #0
	beq _080F665A
	ldr r0, _080F667C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F6662
_080F665A:
	movs r0, #0x86
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F6662:
	movs r0, #0xe
	strb r0, [r7]
	b _080F669E
	.align 2, 0
_080F6668: .4byte gKirbys
_080F666C: .4byte gUnk_0203AD3C
_080F6670: .4byte gUnk_08D60FA4
_080F6674: .4byte gSongTable
_080F6678: .4byte 0x000010C4
_080F667C: .4byte gUnk_0203AD10
_080F6680:
	adds r6, r5, #0
	adds r6, #0x60
	cmp r0, #0xe
	bne _080F669E
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080F669E
	movs r0, #0
	strb r0, [r2]
_080F669E:
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	strh r3, [r0]
	ldr r2, _080F671C @ =gKirbys
	ldr r0, _080F6720 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080F66F6
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r1, #0xe4
	lsls r1, r1, #2
	movs r4, #0xe5
	lsls r4, r4, #2
	str r3, [sp]
	ldrh r2, [r5, #4]
	str r2, [sp, #4]
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CD98
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r1, _080F6724 @ =0x00000391
	movs r2, #2
	str r2, [sp]
	ldrh r2, [r5, #4]
	str r2, [sp, #4]
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CD98
_080F66F6:
	ldrh r0, [r5, #4]
	adds r0, #2
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080F6710
	strh r1, [r5, #4]
	adds r0, r5, #0
	bl sub_080F6728
_080F6710:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F671C: .4byte gKirbys
_080F6720: .4byte gUnk_0203AD3C
_080F6724: .4byte 0x00000391

	thumb_func_start sub_080F6728
sub_080F6728: @ 0x080F6728
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	ldr r2, _080F6818 @ =sub_080F6824
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r7, #0
	adds r0, #0x50
	movs r4, #0
	movs r3, #0
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	movs r0, #0x20
	strh r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x85
	strb r4, [r0]
	ldr r2, _080F681C @ =gKirbys
	ldr r0, _080F6820 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F680A
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov sb, r0
	str r0, [sp]
	mov r0, sp
	movs r5, #0xe5
	lsls r5, r5, #2
	strh r5, [r0, #0xc]
	strb r4, [r0, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r2, sp
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp, #8]
	mov r0, sp
	str r3, [sp, #0x28]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r0, sb
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #0x1a]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r0, sp
	ldr r3, [sp, #0x28]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	strb r6, [r0, #0x1c]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r4, r0
	strb r4, [r1, #0x1f]
	mov r0, r8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080F680A:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6818: .4byte sub_080F6824
_080F681C: .4byte gKirbys
_080F6820: .4byte gUnk_0203AD3C

	thumb_func_start sub_080F6824
sub_080F6824: @ 0x080F6824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	cmp r1, #1
	beq _080F686E
	cmp r1, #1
	bgt _080F683C
	cmp r1, #0
	beq _080F6848
	b _080F6AE4
_080F683C:
	cmp r1, #3
	beq _080F6924
	cmp r1, #4
	bne _080F6846
	b _080F6968
_080F6846:
	b _080F6AE4
_080F6848:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F6856
	b _080F6AE4
_080F6856:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x17
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _080F6AE4
_080F686E:
	ldrb r0, [r4, #1]
	cmp r0, #8
	beq _080F6878
	cmp r0, #0x16
	bne _080F68EC
_080F6878:
	ldr r1, _080F6908 @ =gUnk_0835719C
	adds r0, r4, #0
	bl sub_080860A8
	ldr r1, _080F690C @ =gKirbys
	ldr r0, _080F6910 @ =gUnk_0203AD3C
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
	bne _080F68EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F68AC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F68EC
_080F68AC:
	ldr r1, _080F6914 @ =gUnk_08D60FA4
	ldr r5, _080F6918 @ =gSongTable
	ldr r2, _080F691C @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F68D2
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F68EC
_080F68D2:
	cmp r3, #0
	beq _080F68E4
	ldr r0, _080F6920 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F68EC
_080F68E4:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F68EC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080F68F8
	b _080F6AE4
_080F68F8:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #3
	strb r0, [r1]
	movs r0, #4
	strh r0, [r4, #4]
	b _080F6AE4
	.align 2, 0
_080F6908: .4byte gUnk_0835719C
_080F690C: .4byte gKirbys
_080F6910: .4byte gUnk_0203AD3C
_080F6914: .4byte gUnk_08D60FA4
_080F6918: .4byte gSongTable
_080F691C: .4byte 0x00000D24
_080F6920: .4byte gUnk_0203AD10
_080F6924:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _080F6934
	b _080F6AE4
_080F6934:
	movs r0, #4
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	subs r1, #0x31
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080F6AE4
_080F6968:
	movs r2, #0x83
	adds r2, r2, r4
	mov ip, r2
	ldrb r0, [r2]
	cmp r0, #0xb
	bne _080F6A20
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x3f
	ble _080F6982
	b _080F6AE4
_080F6982:
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080F6A00 @ =gKirbys
	ldr r0, _080F6A04 @ =gUnk_0203AD3C
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
	beq _080F69AE
	b _080F6AE4
_080F69AE:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F69C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080F69C0
	b _080F6AE4
_080F69C0:
	ldr r1, _080F6A08 @ =gUnk_08D60FA4
	ldr r4, _080F6A0C @ =gSongTable
	ldr r2, _080F6A10 @ =0x000010B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F69E6
	ldr r1, _080F6A14 @ =0x000010B0
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080F69E6
	b _080F6AE4
_080F69E6:
	cmp r3, #0
	beq _080F69F8
	ldr r0, _080F6A18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F6AE4
_080F69F8:
	ldr r0, _080F6A1C @ =0x00000216
	bl m4aSongNumStart
	b _080F6AE4
	.align 2, 0
_080F6A00: .4byte gKirbys
_080F6A04: .4byte gUnk_0203AD3C
_080F6A08: .4byte gUnk_08D60FA4
_080F6A0C: .4byte gSongTable
_080F6A10: .4byte 0x000010B4
_080F6A14: .4byte 0x000010B0
_080F6A18: .4byte gUnk_0203AD10
_080F6A1C: .4byte 0x00000216
_080F6A20:
	cmp r0, #0x10
	bne _080F6A58
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080F6AE4
	movs r0, #0x11
	mov r1, ip
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	ldr r0, _080F6A54 @ =sub_080FB504
	str r0, [r4, #0x7c]
	b _080F6AE4
	.align 2, 0
_080F6A54: .4byte sub_080FB504
_080F6A58:
	cmp r0, #0x11
	bne _080F6AD0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x66
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080F6AC0 @ =0xFFFFF700
	cmp r0, r3
	bge _080F6A72
	strh r3, [r2]
_080F6A72:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080F6AE4
	movs r0, #8
	strh r0, [r4, #4]
	movs r0, #0x12
	mov r2, ip
	strb r0, [r2]
	ldr r2, _080F6AC4 @ =0x000002AD
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _080F6AC8 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _080F6ACC @ =0x00003FFF
	strh r1, [r0, #6]
	b _080F6AE4
	.align 2, 0
_080F6AC0: .4byte 0xFFFFF700
_080F6AC4: .4byte 0x000002AD
_080F6AC8: .4byte 0x0000FFFF
_080F6ACC: .4byte 0x00003FFF
_080F6AD0:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F6AE4
	adds r0, r4, #0
	movs r1, #0
	bl sub_080F6AEC
_080F6AE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F6AEC
sub_080F6AEC: @ 0x080F6AEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x28]
	movs r0, #0
	mov sl, r0
	ldr r2, _080F6DF0 @ =sub_080F6ED8
	adds r0, r7, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r7, #0
	adds r0, #0x85
	mov r1, sl
	strb r1, [r0]
	ldr r0, _080F6DF4 @ =sub_080FB504
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _080F6B30
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_080F6B30:
	adds r0, r7, #0
	adds r0, #0xbc
	ldr r2, [r0]
	cmp r2, #0
	beq _080F6B46
	ldrh r1, [r2, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2, #6]
_080F6B46:
	ldr r2, _080F6DF8 @ =gKirbys
	ldr r0, _080F6DFC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	str r1, [sp, #0x30]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F6C00
	movs r2, #0xc0
	lsls r2, r2, #0x13
	mov sb, r2
	str r2, [sp]
	mov r0, sp
	movs r1, #0
	movs r5, #0xe5
	lsls r5, r5, #2
	strh r5, [r0, #0xc]
	strb r1, [r0, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	mov r3, sl
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r2, sp
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r1, sb
	str r1, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #0x1a]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r0, sp
	mov r2, sl
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r4, r0
	strb r4, [r1, #0x1f]
	mov r3, r8
	str r3, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080F6C00:
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	subs r1, #0xa
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x50
	mov r6, sl
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	ldr r0, _080F6E00 @ =0x0001B300
	str r0, [r7, #0x40]
	ldr r0, _080F6E04 @ =0x000119FF
	str r0, [r7, #0x44]
	movs r0, #0x40
	strh r0, [r7, #4]
	adds r0, r7, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080F6C34
	movs r0, #0
	strb r0, [r1, #9]
_080F6C34:
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r5, [r0]
	adds r4, r5, #0
	subs r4, #0x38
	ldr r2, _080F6E08 @ =gCurLevelInfo
	adds r3, r7, #0
	adds r3, #0x56
	ldrb r1, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F6E0C @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	str r3, [sp, #0x2c]
	cmp r1, #0
	blt _080F6D02
	ldr r0, _080F6E10 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080F6D02
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F6D02
	adds r0, r5, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080F6CC0
	movs r5, #1
_080F6C88:
	subs r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08002A44
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080F6C88
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080F6CC0:
	ldr r1, _080F6E10 @ =gUnk_08352D80
	asrs r0, r4, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080F6DF8 @ =gKirbys
	ldr r0, _080F6DFC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x30]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080F6D02
	ldr r0, _080F6E14 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080F6D02
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080F6D02:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	bne _080F6D32
	ldr r6, [sp, #0x30]
	ldrh r1, [r6]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r2, #0
	movs r1, #0xf8
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	ldr r1, _080F6E18 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _080F6E1C @ =0x00003FFF
	strh r1, [r0, #6]
_080F6D32:
	movs r3, #0
	ldr r0, _080F6E20 @ =gUnk_0203AD44
	mov ip, r0
	ldr r0, _080F6E24 @ =gUnk_020229D4
	mov r8, r0
	mov r1, ip
	ldrb r1, [r1]
	cmp r3, r1
	bhs _080F6DDA
	movs r5, #0
	ldr r2, _080F6E28 @ =gUnk_083571C0
	mov sb, r2
	ldr r4, _080F6E08 @ =gCurLevelInfo
_080F6D4C:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	ldr r6, _080F6DF8 @ =gKirbys
	adds r2, r0, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F6DCC
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r6, [sp, #0x30]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080F6DCC
	adds r0, r2, #0
	adds r0, #0xd4
	strh r5, [r0]
	subs r0, #0x84
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r0, sl
	lsls r1, r0, #3
	mov r6, sb
	adds r0, r1, r6
	ldr r0, [r0]
	movs r6, #0xec
	lsls r6, r6, #6
	adds r0, r0, r6
	str r0, [r2, #0x40]
	ldr r0, _080F6E2C @ =gUnk_083571C4
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x44]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r6, #0xcd
	lsls r6, r6, #3
	adds r1, r0, #0
	muls r1, r6, r1
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r1]
	ldrb r0, [r2]
	muls r0, r6, r0
	ldr r1, _080F6E30 @ =gUnk_02023540
	adds r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #8
	str r1, [r0]
_080F6DCC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r2, ip
	ldrb r2, [r2]
	cmp r3, r2
	blo _080F6D4C
_080F6DDA:
	movs r3, #0
	movs r2, #1
	mov r6, r8
	ldr r1, [r6]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080F6E34
	orrs r1, r2
	str r1, [r6]
	b _080F6E54
	.align 2, 0
_080F6DF0: .4byte sub_080F6ED8
_080F6DF4: .4byte sub_080FB504
_080F6DF8: .4byte gKirbys
_080F6DFC: .4byte gUnk_0203AD3C
_080F6E00: .4byte 0x0001B300
_080F6E04: .4byte 0x000119FF
_080F6E08: .4byte gCurLevelInfo
_080F6E0C: .4byte 0x0000065E
_080F6E10: .4byte gUnk_08352D80
_080F6E14: .4byte gUnk_0203AD20
_080F6E18: .4byte 0x0000FFFF
_080F6E1C: .4byte 0x00003FFF
_080F6E20: .4byte gUnk_0203AD44
_080F6E24: .4byte gUnk_020229D4
_080F6E28: .4byte gUnk_083571C0
_080F6E2C: .4byte gUnk_083571C4
_080F6E30: .4byte gUnk_02023540
_080F6E34:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080F6E54
	movs r2, #1
	lsls r2, r3
	mov r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080F6E34
	orrs r1, r2
	mov r2, r8
	str r1, [r2]
_080F6E54:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080F6EC8 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x77
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	movs r0, #0x16
	strh r0, [r1, #0x22]
	ldr r0, _080F6ECC @ =0x0000FE0C
	strh r0, [r1, #0x1a]
	ldr r0, _080F6ED0 @ =0x0000FF38
	strh r0, [r1, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1, #0x1e]
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	ldr r0, _080F6ED4 @ =0x00000F0A
	strh r0, [r1, #0x12]
	subs r0, #1
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	ldr r6, [sp, #0x2c]
	ldrb r0, [r6]
	bl CreateObject
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F6EC8: .4byte gUnk_020229E0
_080F6ECC: .4byte 0x0000FE0C
_080F6ED0: .4byte 0x0000FF38
_080F6ED4: .4byte 0x00000F0A

	thumb_func_start sub_080F6ED8
sub_080F6ED8: @ 0x080F6ED8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F6EEA
	b _080F7042
_080F6EEA:
	ldr r0, _080F6F7C @ =gCurLevelInfo
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0xac
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0x70
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0x74
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	mov r1, ip
	adds r1, #0x78
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0xaa
	strh r0, [r2]
	ldr r0, [r4, #8]
	ldr r1, _080F6F80 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080F7B34
	ldr r2, _080F6F84 @ =gUnk_0203AD10
	ldr r0, [r2]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r5, #0
	b _080F703A
	.align 2, 0
_080F6F7C: .4byte gCurLevelInfo
_080F6F80: .4byte 0xFFFFFDFF
_080F6F84: .4byte gUnk_0203AD10
_080F6F88:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080F6FD0 @ =gKirbys
	adds r3, r1, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080F7034
	adds r0, r3, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F7034
	ldr r2, [r3, #8]
	ldr r0, _080F6FD4 @ =0xFEFFFFFF
	ands r2, r0
	str r2, [r3, #8]
	ldr r1, _080F6FD8 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080F6FDC
	adds r0, r3, #0
	bl sub_080641FC
	b _080F7034
	.align 2, 0
_080F6FD0: .4byte gKirbys
_080F6FD4: .4byte 0xFEFFFFFF
_080F6FD8: .4byte 0x00000103
_080F6FDC:
	cmp r0, #0xe
	bne _080F6FE8
	adds r0, r3, #0
	bl sub_0806A798
	b _080F7034
_080F6FE8:
	cmp r0, #0x13
	bne _080F700C
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080F6FFC
	adds r0, r3, #0
	bl sub_08047EF0
	b _080F7034
_080F6FFC:
	movs r0, #0x60
	ands r2, r0
	cmp r2, #0
	bne _080F7026
	adds r0, r3, #0
	bl sub_0803FE74
	b _080F7034
_080F700C:
	ldr r0, [r3, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F701E
	adds r0, r3, #0
	bl sub_08059810
	b _080F7034
_080F701E:
	movs r0, #0x60
	ands r2, r0
	cmp r2, #0
	beq _080F702E
_080F7026:
	adds r0, r3, #0
	bl sub_08044EA8
	b _080F7034
_080F702E:
	adds r0, r3, #0
	bl sub_0803FE74
_080F7034:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080F703A:
	ldr r0, _080F7048 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	blo _080F6F88
_080F7042:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F7048: .4byte gUnk_0203AD44

	thumb_func_start sub_080F704C
sub_080F704C: @ 0x080F704C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	ldr r2, _080F7140 @ =sub_080F714C
	movs r1, #0x1f
	bl ObjectSetFunc
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	movs r3, #0
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #0x4c
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r2, _080F7144 @ =gKirbys
	ldr r0, _080F7148 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F7130
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov sb, r0
	str r0, [sp]
	mov r0, sp
	movs r1, #0xe5
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0xc]
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	mov r2, sp
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r4, #0xf
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp, #8]
	mov r0, sp
	str r3, [sp, #0x28]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r0, sb
	str r0, [sp]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #0xc]
	mov r1, sp
	movs r0, #3
	strb r0, [r1, #0x1a]
	subs r0, #4
	strb r0, [r1, #0x1b]
	mov r0, sp
	ldr r3, [sp, #0x28]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	strb r5, [r0, #0x1c]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r4, r0
	strb r4, [r1, #0x1f]
	str r6, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080F7130:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7140: .4byte sub_080F714C
_080F7144: .4byte gKirbys
_080F7148: .4byte gUnk_0203AD3C

	thumb_func_start sub_080F714C
sub_080F714C: @ 0x080F714C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r6
	adds r4, r6, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #0x20
	beq _080F71A4
	cmp r0, #0x20
	bgt _080F716E
	cmp r0, #0x1f
	beq _080F7176
	b _080F72F8
_080F716E:
	cmp r0, #0x21
	bne _080F7174
	b _080F72C4
_080F7174:
	b _080F72F8
_080F7176:
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r2, r6, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bhi _080F7192
	b _080F72F8
_080F7192:
	movs r0, #0x20
	strb r0, [r4]
	ldr r0, [r6, #8]
	subs r1, #7
	ands r0, r1
	str r0, [r6, #8]
	movs r0, #0
	strb r0, [r2]
	b _080F72F8
_080F71A4:
	ldrb r0, [r6, #1]
	cmp r0, #0xe
	bne _080F71B0
	adds r0, r6, #0
	bl sub_080FC5F8
_080F71B0:
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080F71BC
	b _080F72F8
_080F71BC:
	movs r5, #0
	movs r0, #0x21
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	adds r0, r6, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080F71D4
	strb r5, [r0, #9]
_080F71D4:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080F72AC @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080F72B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _080F71FC
	b _080F72F8
_080F71FC:
	ldr r0, _080F72B4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080F72F8
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F72F8
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	movs r2, #0x60
	adds r2, r2, r6
	mov r8, r2
	cmp r0, #0xf
	bls _080F7266
	movs r4, #1
_080F722E:
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
	bls _080F722E
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080F7266:
	ldr r1, _080F72B4 @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080F72B8 @ =gKirbys
	ldr r0, _080F72BC @ =gUnk_0203AD3C
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
	bne _080F72F8
	ldr r0, _080F72C0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080F72F8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
	b _080F72F8
	.align 2, 0
_080F72AC: .4byte gCurLevelInfo
_080F72B0: .4byte 0x0000065E
_080F72B4: .4byte gUnk_08352D80
_080F72B8: .4byte gKirbys
_080F72BC: .4byte gUnk_0203AD3C
_080F72C0: .4byte gUnk_0203AD20
_080F72C4:
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bls _080F72F8
	ldr r0, [r6, #8]
	ldr r1, _080F72F4 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080F7B34
	b _080F737C
	.align 2, 0
_080F72F4: .4byte 0xFFFFFDFF
_080F72F8:
	adds r1, r6, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0x3c
	bls _080F7378
	ldr r2, _080F736C @ =gKirbys
	ldr r0, _080F7370 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080F7356
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r5, #0xe5
	lsls r5, r5, #2
	movs r3, #0xe4
	lsls r3, r3, #2
	movs r4, #0
	str r4, [sp]
	ldrh r1, [r6, #4]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0803CD98
	mov r0, sb
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r3, _080F7374 @ =0x00000391
	str r4, [sp]
	ldrh r1, [r6, #4]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #3
	bl sub_0803CD98
_080F7356:
	ldrh r0, [r6, #4]
	adds r0, #2
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080F737C
	strh r1, [r6, #4]
	b _080F737C
	.align 2, 0
_080F736C: .4byte gKirbys
_080F7370: .4byte gUnk_0203AD3C
_080F7374: .4byte 0x00000391
_080F7378:
	adds r0, #1
	strb r0, [r1]
_080F737C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F738C
sub_080F738C: @ 0x080F738C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	movs r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F7488
	ldr r2, _080F73F0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F73F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F73F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #7
	ands r3, r0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F740A
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F740A
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080F73FC @ =gUnk_08351530
	ldr r0, _080F7400 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F7404
	movs r1, #1
	movs r5, #2
	b _080F743A
	.align 2, 0
_080F73F0: .4byte gRngVal
_080F73F4: .4byte 0x00196225
_080F73F8: .4byte 0x3C6EF35F
_080F73FC: .4byte gUnk_08351530
_080F7400: .4byte gUnk_0203AD30
_080F7404:
	movs r1, #3
	movs r5, #1
	b _080F743A
_080F740A:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080F7430 @ =gUnk_08351530
	ldr r0, _080F7434 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r2, r7]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F7438
	movs r1, #3
	b _080F743A
	.align 2, 0
_080F7430: .4byte gUnk_08351530
_080F7434: .4byte gUnk_0203AD30
_080F7438:
	movs r1, #4
_080F743A:
	movs r2, #1
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F744E
	adds r0, r4, #0
	bl sub_080FB1CC
	b _080F7488
_080F744E:
	subs r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F7468
	adds r1, r6, #0
	adds r1, #0xc4
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080F8490
	b _080F7488
_080F7468:
	subs r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F747A
	adds r0, r4, #0
	bl sub_080FA2EC
	b _080F7488
_080F747A:
	subs r0, r3, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F7488
	adds r0, r4, #0
	bl sub_080F8B70
_080F7488:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F7490
sub_080F7490: @ 0x080F7490
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r2, _080F74EC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F74F0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F74F4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #7
	ands r3, r0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F750A
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F750A
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080F74F8 @ =gUnk_08351530
	ldr r0, _080F74FC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F7500
	movs r2, #3
	movs r6, #2
	movs r1, #1
	movs r5, #2
	b _080F7544
	.align 2, 0
_080F74EC: .4byte gRngVal
_080F74F0: .4byte 0x00196225
_080F74F4: .4byte 0x3C6EF35F
_080F74F8: .4byte gUnk_08351530
_080F74FC: .4byte gUnk_0203AD30
_080F7500:
	movs r2, #2
	movs r6, #1
	movs r1, #3
	movs r5, #1
	b _080F7544
_080F750A:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080F7534 @ =gUnk_08351530
	ldr r0, _080F7538 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F753C
	movs r2, #4
	movs r6, #3
	movs r1, #1
	b _080F7542
	.align 2, 0
_080F7534: .4byte gUnk_08351530
_080F7538: .4byte gUnk_0203AD30
_080F753C:
	movs r2, #2
	movs r6, #1
	movs r1, #3
_080F7542:
	movs r5, #0
_080F7544:
	adds r0, r7, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #6
	bls _080F755A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080F755A:
	subs r0, r3, r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F756E
	adds r0, r4, #0
	movs r1, #0
	bl sub_080FFFB8
	b _080F75AC
_080F756E:
	subs r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F7582
	adds r0, r4, #0
	movs r1, #2
	bl sub_080FFFB8
	b _080F75AC
_080F7582:
	subs r0, r3, r6
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F7596
	adds r0, r4, #0
	movs r1, #1
	bl sub_080FFFB8
	b _080F75AC
_080F7596:
	subs r0, r3, r5
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F75A6
	adds r0, r4, #0
	bl sub_080FA2EC
	b _080F75AC
_080F75A6:
	adds r0, r4, #0
	bl sub_080F8B70
_080F75AC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F75B4
sub_080F75B4: @ 0x080F75B4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	mov ip, r3
	movs r7, #0
	ldr r2, _080F75E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F75E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F75E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #7
	ands r4, r0
	adds r1, r3, #0
	adds r1, #0xc4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F75EC
	strb r7, [r1]
	b _080F769A
	.align 2, 0
_080F75E0: .4byte gRngVal
_080F75E4: .4byte 0x00196225
_080F75E8: .4byte 0x3C6EF35F
_080F75EC:
	adds r1, r3, #0
	adds r1, #0xc3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F75FA
	strb r7, [r1]
	b _080F76BE
_080F75FA:
	adds r0, r3, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r1, [r3, #0x44]
	ldr r0, [r2, #0x44]
	cmp r1, r0
	ble _080F763E
	movs r5, #0
	movs r7, #1
	ldr r1, [r3, #0x40]
	ldr r0, [r2, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	blt _080F7624
	ldr r0, _080F7620 @ =0x000013FF
	cmp r2, r0
	ble _080F762C
	b _080F7638
	.align 2, 0
_080F7620: .4byte 0x000013FF
_080F7624:
	subs r1, r0, r1
	ldr r0, _080F7634 @ =0x000013FF
	cmp r1, r0
	bgt _080F7638
_080F762C:
	movs r6, #4
	movs r2, #3
	b _080F7674
	.align 2, 0
_080F7634: .4byte 0x000013FF
_080F7638:
	movs r6, #1
	movs r2, #6
	b _080F7674
_080F763E:
	ldr r1, [r3, #0x40]
	ldr r0, [r2, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	blt _080F7654
	ldr r0, _080F7650 @ =0x00000FFF
	cmp r2, r0
	ble _080F765C
	b _080F766C
	.align 2, 0
_080F7650: .4byte 0x00000FFF
_080F7654:
	subs r1, r0, r1
	ldr r0, _080F7668 @ =0x00000FFF
	cmp r1, r0
	bgt _080F766C
_080F765C:
	movs r5, #6
	movs r6, #0
	movs r7, #0
	movs r2, #0
	b _080F7674
	.align 2, 0
_080F7668: .4byte 0x00000FFF
_080F766C:
	movs r5, #0
	movs r6, #0
	movs r7, #2
	movs r2, #2
_080F7674:
	mov r1, ip
	adds r1, #0xc8
	ldrb r0, [r1]
	cmp r0, #6
	bls _080F7690
	adds r1, r0, #0
	subs r1, #6
	asrs r1, r1, #1
	adds r1, #1
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080F7690:
	subs r0, r4, r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _080F76A2
_080F769A:
	adds r0, r3, #0
	bl sub_080F9310
	b _080F76D4
_080F76A2:
	subs r0, r4, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _080F76B4
	adds r0, r3, #0
	bl sub_080F87C8
	b _080F76D4
_080F76B4:
	subs r0, r4, r6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _080F76C6
_080F76BE:
	adds r0, r3, #0
	bl sub_080F95D4
	b _080F76D4
_080F76C6:
	subs r0, r4, r7
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F76D4
	adds r0, r3, #0
	bl sub_080F8FD0
_080F76D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F76DC
sub_080F76DC: @ 0x080F76DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	movs r3, #0
	ldr r2, _080F7708 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F770C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F7710 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r0, #7
	ands r5, r0
	adds r1, r4, #0
	adds r1, #0xc4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F7714
	strb r3, [r1]
	b _080F77A0
	.align 2, 0
_080F7708: .4byte gRngVal
_080F770C: .4byte 0x00196225
_080F7710: .4byte 0x3C6EF35F
_080F7714:
	adds r1, r4, #0
	adds r1, #0xc3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F7722
	strb r3, [r1]
	b _080F77B2
_080F7722:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r0, [r0, #0x44]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _080F7740
	ldr r0, _080F773C @ =0x00001DFF
	cmp r2, r0
	ble _080F7748
	b _080F7754
	.align 2, 0
_080F773C: .4byte 0x00001DFF
_080F7740:
	subs r1, r0, r3
	ldr r0, _080F7750 @ =0x00001DFF
	cmp r1, r0
	bgt _080F7754
_080F7748:
	movs r1, #0
	movs r2, #0
	movs r3, #8
	b _080F7786
	.align 2, 0
_080F7750: .4byte 0x00001DFF
_080F7754:
	ldr r0, [r6]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	subs r2, r1, r0
	cmp r2, #0
	blt _080F776C
	ldr r0, _080F7768 @ =0x00000FFF
	cmp r2, r0
	ble _080F7774
	b _080F7780
	.align 2, 0
_080F7768: .4byte 0x00000FFF
_080F776C:
	subs r1, r0, r1
	ldr r0, _080F777C @ =0x00000FFF
	cmp r1, r0
	bgt _080F7780
_080F7774:
	movs r1, #6
	movs r2, #0
	movs r3, #1
	b _080F7786
	.align 2, 0
_080F777C: .4byte 0x00000FFF
_080F7780:
	movs r1, #2
	movs r2, #0
	movs r3, #4
_080F7786:
	adds r0, r7, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #6
	bls _080F7796
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080F7796:
	subs r0, r5, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _080F77A8
_080F77A0:
	adds r0, r4, #0
	bl sub_080F9310
	b _080F77C8
_080F77A8:
	subs r0, r5, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _080F77BA
_080F77B2:
	adds r0, r4, #0
	bl sub_080F95D4
	b _080F77C8
_080F77BA:
	subs r0, r5, r3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F77C8
	adds r0, r4, #0
	bl sub_080F8FD0
_080F77C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F77D0
sub_080F77D0: @ 0x080F77D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r4
	movs r5, #0
	movs r7, #0
	movs r0, #0
	mov ip, r0
	mov sb, r0
	movs r6, #0
	movs r1, #5
	mov sl, r1
	ldr r2, _080F7830 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F7834 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F7838 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #0xf
	ands r2, r0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F7866
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F7866
	adds r3, r4, #0
	adds r3, #0xc0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F783C
	movs r1, #6
	movs r5, #4
	movs r7, #2
	mov sl, r5
	strb r6, [r3]
	b _080F78A4
	.align 2, 0
_080F7830: .4byte gRngVal
_080F7834: .4byte 0x00196225
_080F7838: .4byte 0x3C6EF35F
_080F783C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080F785E
	movs r0, #3
	mov sb, r0
	movs r1, #3
	mov ip, r1
	movs r6, #3
	movs r7, #3
	movs r0, #1
	mov sl, r0
	b _080F78A4
_080F785E:
	movs r6, #2
	movs r1, #4
	movs r5, #5
	b _080F78A4
_080F7866:
	mov r3, r8
	adds r3, #0xc0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080F787C
	movs r1, #0xa
	movs r5, #4
	movs r7, #2
	movs r0, #0
	strb r0, [r3]
	b _080F78A4
_080F787C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080F789A
	movs r1, #3
	mov sb, r1
	mov ip, r1
	movs r6, #3
	movs r1, #4
	movs r7, #3
	b _080F78A4
_080F789A:
	movs r6, #3
	movs r0, #1
	mov ip, r0
	movs r1, #6
	movs r5, #6
_080F78A4:
	mov r0, r8
	adds r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #6
	bls _080F78BA
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080F78BA:
	subs r0, r2, r5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F78CC
	adds r0, r4, #0
	bl sub_080F8204
	b _080F7942
_080F78CC:
	subs r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F78DE
	adds r0, r4, #0
	bl sub_080F8490
	b _080F7942
_080F78DE:
	subs r0, r2, r7
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F78F0
	adds r0, r4, #0
	bl sub_080F7CD8
	b _080F7942
_080F78F0:
	mov r1, ip
	subs r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F7904
	adds r0, r4, #0
	bl sub_080FFFA0
	b _080F7942
_080F7904:
	mov r1, sb
	subs r0, r2, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F7920
	adds r0, r4, #0
	bl sub_080F8490
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	b _080F7942
_080F7920:
	subs r0, r2, r6
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _080F7932
	adds r0, r4, #0
	bl sub_080F7D4C
	b _080F7942
_080F7932:
	mov r1, sl
	subs r0, r2, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F7942
	adds r0, r4, #0
	bl sub_080FA2EC
_080F7942:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F7950
sub_080F7950: @ 0x080F7950
	push {lr}
	adds r3, r0, #0
	ldr r2, _080F7978 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F797C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F7980 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r0, #0xe
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F7984
	adds r0, r3, #0
	bl sub_080F95D4
	b _080F79A8
	.align 2, 0
_080F7978: .4byte gRngVal
_080F797C: .4byte 0x00196225
_080F7980: .4byte 0x3C6EF35F
_080F7984:
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080F799A
	adds r1, r3, #0
	adds r1, #0xc3
	movs r0, #1
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_080F8490
	b _080F79A8
_080F799A:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F79A8
	adds r0, r3, #0
	bl sub_080F7CD8
_080F79A8:
	pop {r0}
	bx r0

	thumb_func_start sub_080F79AC
sub_080F79AC: @ 0x080F79AC
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	ldr r2, _080F79E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F79E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F79E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #7
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x44]
	ldr r0, _080F79EC @ =0xFFFFC000
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080F79F0
	movs r0, #8
	adds r1, r4, #0
	b _080F7A26
	.align 2, 0
_080F79E0: .4byte gRngVal
_080F79E4: .4byte 0x00196225
_080F79E8: .4byte 0x3C6EF35F
_080F79EC: .4byte 0xFFFFC000
_080F79F0:
	mov r2, ip
	adds r2, #0x80
	ldr r1, _080F7A18 @ =gUnk_08351530
	ldr r0, _080F7A1C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F7A20
	movs r0, #3
	movs r1, #2
	movs r4, #3
	b _080F7A26
	.align 2, 0
_080F7A18: .4byte gUnk_08351530
_080F7A1C: .4byte gUnk_0203AD30
_080F7A20:
	movs r0, #3
	movs r1, #4
	movs r4, #1
_080F7A26:
	subs r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F7A38
	mov r1, ip
	adds r1, #0xca
	movs r0, #2
	b _080F7A58
_080F7A38:
	subs r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _080F7A4A
	mov r1, ip
	adds r1, #0xca
	movs r0, #0
	b _080F7A58
_080F7A4A:
	subs r0, r3, r4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F7A5A
	mov r1, ip
	adds r1, #0xca
	movs r0, #1
_080F7A58:
	strb r0, [r1]
_080F7A5A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080F7A60
sub_080F7A60: @ 0x080F7A60
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r3, #0
	ldr r2, _080F7A9C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F7AA0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F7AA4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F7AB6
	adds r0, r3, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F7AA8
	movs r6, #4
	movs r5, #5
	movs r2, #3
	movs r4, #2
	mov ip, r4
	b _080F7AC0
	.align 2, 0
_080F7A9C: .4byte gRngVal
_080F7AA0: .4byte 0x00196225
_080F7AA4: .4byte 0x3C6EF35F
_080F7AA8:
	movs r6, #0
	movs r5, #6
	movs r2, #4
	movs r4, #4
	movs r0, #2
	mov ip, r0
	b _080F7AC0
_080F7AB6:
	movs r6, #0
	movs r5, #4
	movs r2, #2
	movs r4, #8
	mov ip, r2
_080F7AC0:
	adds r0, r7, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #6
	bls _080F7AD6
	adds r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080F7AD6:
	subs r0, r1, r4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080F7AE8
	adds r0, r3, #0
	bl sub_080F7B34
	b _080F7B2E
_080F7AE8:
	subs r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080F7AFA
	adds r0, r3, #0
	bl sub_080F8204
	b _080F7B2E
_080F7AFA:
	subs r0, r1, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080F7B0C
	adds r0, r3, #0
	bl sub_080F8490
	b _080F7B2E
_080F7B0C:
	subs r0, r1, r6
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _080F7B1E
	adds r0, r3, #0
	bl sub_080FA2EC
	b _080F7B2E
_080F7B1E:
	mov r2, ip
	subs r0, r1, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080F7B2E
	adds r0, r3, #0
	bl sub_080F8B70
_080F7B2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080F7B34
sub_080F7B34: @ 0x080F7B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r4
	adds r1, r4, #0
	adds r1, #0xc2
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x78]
	ldr r0, _080F7B84 @ =sub_080FB2CC
	cmp r1, r0
	beq _080F7B5C
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, #0x4c
	strh r1, [r0]
_080F7B5C:
	ldr r2, _080F7B88 @ =sub_080F7DB8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	mov sl, r1
	cmp r2, r0
	ble _080F7B8C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F7B94
	.align 2, 0
_080F7B84: .4byte sub_080FB2CC
_080F7B88: .4byte sub_080F7DB8
_080F7B8C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F7B94:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r1, _080F7C10 @ =gRngVal
	ldr r0, [r1]
	ldr r7, _080F7C14 @ =0x00196225
	muls r0, r7, r0
	ldr r3, _080F7C18 @ =0x3C6EF35F
	mov ip, r3
	adds r3, r0, r3
	str r3, [r1]
	lsrs r5, r3, #0x10
	ldr r0, _080F7C1C @ =0x00005554
	mov sb, r2
	adds r6, r1, #0
	cmp r5, r0
	bls _080F7C3E
	ldr r0, _080F7C20 @ =0x0000AAA9
	movs r1, #2
	cmp r5, r0
	bhi _080F7BCE
	movs r1, #1
_080F7BCE:
	cmp r1, #0
	beq _080F7C3E
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080F7C24 @ =gUnk_08351530
	ldr r0, _080F7C28 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F7C2C
	adds r0, r3, #0
	muls r0, r7, r0
	add r0, ip
	muls r0, r7, r0
	add r0, ip
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r1, r0
	movs r2, #0xf
	ands r0, r2
	adds r0, #0x30
	adds r1, r1, r0
	strh r1, [r4, #4]
	b _080F7C54
	.align 2, 0
_080F7C10: .4byte gRngVal
_080F7C14: .4byte 0x00196225
_080F7C18: .4byte 0x3C6EF35F
_080F7C1C: .4byte 0x00005554
_080F7C20: .4byte 0x0000AAA9
_080F7C24: .4byte gUnk_08351530
_080F7C28: .4byte gUnk_0203AD30
_080F7C2C:
	adds r0, r3, #0
	muls r0, r7, r0
	add r0, ip
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x18
	b _080F7C52
_080F7C3E:
	ldr r1, [r6]
	ldr r0, _080F7C80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F7C84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
_080F7C52:
	strh r0, [r4, #4]
_080F7C54:
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080F7C88
	mov r2, sl
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r0, r0, r3
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0xa0
	movs r1, #0
	strh r0, [r2]
	mov r0, r8
	adds r0, #0xc1
	strb r1, [r0]
	adds r1, r2, #0
	b _080F7CA0
	.align 2, 0
_080F7C80: .4byte 0x00196225
_080F7C84: .4byte 0x3C6EF35F
_080F7C88:
	mov r5, sl
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, _080F7CD4 @ =0xFFFFD000
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	mov r0, r8
	adds r0, #0xc1
	strb r2, [r0]
_080F7CA0:
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080F7CB4
	mov r3, sb
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080F7CB4:
	mov r0, r8
	adds r0, #0xc0
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F7CD4: .4byte 0xFFFFD000

	thumb_func_start sub_080F7CD8
sub_080F7CD8: @ 0x080F7CD8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r1, r3, #0
	adds r1, #0xc2
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xc1
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F7D14
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080F7D10 @ =0xFFFFD000
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	strh r0, [r1]
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	b _080F7D30
	.align 2, 0
_080F7D10: .4byte 0xFFFFD000
_080F7D14:
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	mov r0, ip
	strb r2, [r0]
_080F7D30:
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0xc0
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x9e
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F7D4C
sub_080F7D4C: @ 0x080F7D4C
	push {lr}
	adds r3, r0, #0
	mov ip, r3
	adds r1, r3, #0
	adds r1, #0xc2
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080F7D7C
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	movs r2, #0
	b _080F7D8E
_080F7D7C:
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080F7DB4 @ =0xFFFFD000
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
_080F7D8E:
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xc1
	strb r2, [r0]
	movs r1, #0
	movs r0, #0x24
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9f
	strb r1, [r0]
	mov r0, ip
	adds r0, #0xc0
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080F7DB4: .4byte 0xFFFFD000

	thumb_func_start sub_080F7DB8
sub_080F7DB8: @ 0x080F7DB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	mov r8, r3
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r6, #0
	mov r1, ip
	strb r0, [r1]
	adds r4, r3, #0
	adds r4, #0x3c
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F7E60
	mov r2, ip
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r5, r3, #0
	adds r5, #0xa8
	movs r7, #0
	ldrsh r0, [r5, r7]
	lsls r0, r0, #8
	ldr r7, _080F7E20 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _080F7E24
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #8
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	b _080F7E9A
	.align 2, 0
_080F7E20: .4byte 0xFFFFF800
_080F7E24:
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa4
	movs r7, #0
	ldrsh r0, [r2, r7]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	adds r5, r3, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080F7EE4
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r7, _080F7E5C @ =0xFFFFF800
	b _080F7EDE
	.align 2, 0
_080F7E5C: .4byte 0xFFFFF800
_080F7E60:
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r5, r3, #0
	adds r5, #0xa4
	movs r7, #0
	ldrsh r0, [r5, r7]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080F7EA8
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r4, _080F7EA4 @ =0xFFFFF800
	adds r0, r0, r4
_080F7E9A:
	subs r1, r1, r0
	str r1, [r3, #0x40]
	adds r5, r2, #0
	b _080F7EE4
	.align 2, 0
_080F7EA4: .4byte 0xFFFFF800
_080F7EA8:
	mov r5, ip
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r5, _080F7EFC @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r3, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080F7EE4
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
_080F7EDE:
	adds r0, r0, r7
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080F7EE4:
	mov r0, r8
	adds r0, #0xc2
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080F7F00
	adds r2, r3, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	b _080F7F2A
	.align 2, 0
_080F7EFC: .4byte 0xFFFFF800
_080F7F00:
	mov r0, r8
	adds r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F7F1C
	adds r2, r3, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	ldr r4, _080F7F18 @ =0xFFFFD000
	adds r0, r0, r4
	b _080F7F2A
	.align 2, 0
_080F7F18: .4byte 0xFFFFD000
_080F7F1C:
	adds r2, r3, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	movs r6, #0xc0
	lsls r6, r6, #6
	adds r0, r0, r6
_080F7F2A:
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r7, r2, #0
	adds r6, r1, #0
	adds r2, r3, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _080F8034
	ldr r0, [r7]
	ldr r4, [r3, #0x40]
	ldr r1, [r0, #0x40]
	subs r2, r4, r1
	cmp r2, #0
	blt _080F7F60
	ldr r0, _080F7F5C @ =0x00001BFF
	cmp r2, r0
	ble _080F7F70
	b _080F7F68
	.align 2, 0
_080F7F5C: .4byte 0x00001BFF
_080F7F60:
	subs r1, r1, r4
	ldr r0, _080F7F90 @ =0x00001BFF
	cmp r1, r0
	ble _080F7F70
_080F7F68:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F7F9E
_080F7F70:
	adds r0, r3, #0
	adds r0, #0x83
	movs r1, #2
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _080F7F94
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080F7FC4
	.align 2, 0
_080F7F90: .4byte 0x00001BFF
_080F7F94:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080F7FC4
_080F7F9E:
	adds r0, r3, #0
	adds r0, #0x83
	movs r1, #3
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _080F7FBC
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x98
	lsls r0, r0, #2
	b _080F7FC4
_080F7FBC:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
_080F7FC4:
	strh r0, [r1]
	adds r4, r1, #0
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	ldr r1, [r3, #0x40]
	cmp r1, r0
	ble _080F7FEA
	ldrb r0, [r2]
	cmp r0, #3
	bne _080F7FE2
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080F7FE2:
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	b _080F7FFA
_080F7FEA:
	ldrb r0, [r2]
	cmp r0, #3
	bne _080F7FFA
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
_080F7FFA:
	ldr r0, [r7]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F800C
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080F8014
_080F800C:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F8014:
	str r0, [r3, #8]
	ldr r0, [r3, #0x40]
	asrs r2, r0, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r1, r2, r0
	cmp r1, #0
	blt _080F802A
	cmp r1, #2
	ble _080F8030
	b _080F8034
_080F802A:
	subs r0, r0, r2
	cmp r0, #2
	bgt _080F8034
_080F8030:
	movs r0, #0
	strh r0, [r4]
_080F8034:
	ldr r0, [r3, #0x40]
	asrs r1, r0, #8
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r2, r1, r0
	cmp r2, #0
	blt _080F8048
	cmp r2, #3
	ble _080F804E
	b _080F8056
_080F8048:
	subs r0, r0, r1
	cmp r0, #3
	bgt _080F8056
_080F804E:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080F8056:
	mov r4, ip
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	mov r0, r8
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080F8070
	movs r0, #1
	mov r6, ip
	strb r0, [r6]
_080F8070:
	ldrb r2, [r5]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080F80E2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F80DA
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080F809C
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F80B8
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080F80C0
_080F809C:
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080F80C2
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080F80B8
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080F80C0
_080F80B8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080F80C0:
	strh r0, [r1]
_080F80C2:
	ldr r2, _080F8100 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080F8104 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080F8108 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strh r0, [r3, #4]
_080F80DA:
	movs r0, #1
	strb r0, [r4]
	mov r2, ip
	strb r0, [r2]
_080F80E2:
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0
	beq _080F8124
	ldr r0, [r7]
	ldr r2, [r3, #0x40]
	ldr r0, [r0, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080F8110
	ldr r0, _080F810C @ =0x000005FF
	cmp r1, r0
	ble _080F8118
	b _080F8124
	.align 2, 0
_080F8100: .4byte gRngVal
_080F8104: .4byte 0x00196225
_080F8108: .4byte 0x3C6EF35F
_080F810C: .4byte 0x000005FF
_080F8110:
	subs r1, r0, r2
	ldr r0, _080F8120 @ =0x000005FF
	cmp r1, r0
	bgt _080F8124
_080F8118:
	adds r0, r3, #0
	bl sub_080F7950
	b _080F81EE
	.align 2, 0
_080F8120: .4byte 0x000005FF
_080F8124:
	adds r0, r3, #0
	adds r0, #0x50
	movs r5, #0
	ldrsh r2, [r0, r5]
	cmp r2, #0
	bne _080F8150
	ldr r1, [r3, #0x48]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	bne _080F8146
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r4, r1, #0
	b _080F815C
_080F8146:
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r4, r0, #0
	b _080F815C
_080F8150:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x9e
_080F815C:
	ldrb r5, [r4]
	cmp r5, #0
	beq _080F81C0
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F8198
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080F8190 @ =gUnk_08351530
	ldr r0, _080F8194 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080F81C0
	b _080F81BC
	.align 2, 0
_080F8190: .4byte gUnk_08351530
_080F8194: .4byte gUnk_0203AD30
_080F8198:
	adds r0, r3, #0
	adds r0, #0x80
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r1, _080F81FC @ =gUnk_08351530
	ldr r0, _080F8200 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	subs r1, r1, r0
	cmp r2, r1
	bge _080F81C0
_080F81BC:
	adds r0, r5, #1
	strb r0, [r4]
_080F81C0:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080F81E8
	ldrb r0, [r4]
	cmp r0, #0x1e
	bhi _080F81E8
	mov r0, r8
	adds r0, #0xcc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r3, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0xc
	ble _080F81EE
_080F81E8:
	adds r0, r3, #0
	bl sub_080F77D0
_080F81EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F81FC: .4byte gUnk_08351530
_080F8200: .4byte gUnk_0203AD30

	thumb_func_start sub_080F8204
sub_080F8204: @ 0x080F8204
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F822C @ =sub_080F8300
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F8230
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F8238
	.align 2, 0
_080F822C: .4byte sub_080F8300
_080F8230:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F8238:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F8250
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #2
	b _080F8258
_080F8250:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x98
	lsls r0, r0, #2
_080F8258:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F8274
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080F8274:
	ldr r1, _080F82E8 @ =gKirbys
	ldr r0, _080F82EC @ =gUnk_0203AD3C
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
	bne _080F82E0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F82A0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F82E0
_080F82A0:
	ldr r1, _080F82F0 @ =gUnk_08D60FA4
	ldr r4, _080F82F4 @ =gSongTable
	ldr r2, _080F82F8 @ =0x00000B14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F82C6
	movs r1, #0xb1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F82E0
_080F82C6:
	cmp r3, #0
	beq _080F82D8
	ldr r0, _080F82FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F82E0
_080F82D8:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F82E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F82E8: .4byte gKirbys
_080F82EC: .4byte gUnk_0203AD3C
_080F82F0: .4byte gUnk_08D60FA4
_080F82F4: .4byte gSongTable
_080F82F8: .4byte 0x00000B14
_080F82FC: .4byte gUnk_0203AD10

	thumb_func_start sub_080F8300
sub_080F8300: @ 0x080F8300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F839C
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
	ldr r6, _080F8354 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F8358
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
	b _080F83D8
	.align 2, 0
_080F8354: .4byte 0xFFFFF800
_080F8358:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080F8424
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080F8398 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F8420
	.align 2, 0
_080F8398: .4byte 0xFFFFF800
_080F839C:
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
	bgt _080F83E8
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
	ldr r3, _080F83E4 @ =0xFFFFF800
_080F83D8:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080F8424
	.align 2, 0
_080F83E4: .4byte 0xFFFFF800
_080F83E8:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r5, _080F8458 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080F8424
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080F8420:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F8424:
	ldrb r1, [r4, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080F843E
	adds r0, r4, #0
	bl sub_08099AC4
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_08099AC4
_080F843E:
	ldrb r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F845C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080F7490
	b _080F8486
	.align 2, 0
_080F8458: .4byte 0xFFFFF800
_080F845C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r3, [r4, #0x40]
	ldr r1, [r0, #0x40]
	subs r2, r3, r1
	cmp r2, #0
	blt _080F8478
	ldr r0, _080F8474 @ =0x00002BFF
	cmp r2, r0
	ble _080F8480
	b _080F8486
	.align 2, 0
_080F8474: .4byte 0x00002BFF
_080F8478:
	subs r1, r1, r3
	ldr r0, _080F848C @ =0x00002BFF
	cmp r1, r0
	bgt _080F8486
_080F8480:
	adds r0, r4, #0
	bl sub_080F7490
_080F8486:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F848C: .4byte 0x00002BFF

	thumb_func_start sub_080F8490
sub_080F8490: @ 0x080F8490
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F84B4 @ =sub_080F850C
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F84B8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F84C0
	.align 2, 0
_080F84B4: .4byte sub_080F850C
_080F84B8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F84C0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x84
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F84F4
	ldr r0, _080F8508 @ =0x0000FE80
	strh r0, [r2]
_080F84F4:
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F8508: .4byte 0x0000FE80

	thumb_func_start sub_080F850C
sub_080F850C: @ 0x080F850C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080F8578 @ =0xFB600000
	cmp r0, r1
	bge _080F852C
	ldr r0, _080F857C @ =0x0000FB60
	strh r0, [r2]
_080F852C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F85C8
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
	ldr r6, _080F8580 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F8584
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
	b _080F8644
	.align 2, 0
_080F8578: .4byte 0xFB600000
_080F857C: .4byte 0x0000FB60
_080F8580: .4byte 0xFFFFF800
_080F8584:
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
	bgt _080F8648
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
	ldr r2, _080F85C4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F8644
	.align 2, 0
_080F85C4: .4byte 0xFFFFF800
_080F85C8:
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
	bgt _080F860C
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
	ldr r2, _080F8608 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F8644
	.align 2, 0
_080F8608: .4byte 0xFFFFF800
_080F860C:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080F8694 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080F8648
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080F8644:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F8648:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xc
	bne _080F8662
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F8662
	movs r0, #0xd
	strb r0, [r7]
_080F8662:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	movs r2, #0x52
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	bne _080F8698
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x3f
	bgt _080F8698
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080F75B4
	b _080F87BA
	.align 2, 0
_080F8694: .4byte 0xFFFFF800
_080F8698:
	mov r6, r8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0x62
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bgt _080F879C
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F879C
	ldrb r0, [r7]
	cmp r0, #0xe
	beq _080F8724
	ldr r1, _080F875C @ =gKirbys
	ldr r0, _080F8760 @ =gUnk_0203AD3C
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
	bne _080F8724
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F86E4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F8724
_080F86E4:
	ldr r1, _080F8764 @ =gUnk_08D60FA4
	ldr r5, _080F8768 @ =gSongTable
	ldr r3, _080F876C @ =0x00001264
	adds r0, r5, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F870A
	movs r6, #0x93
	lsls r6, r6, #5
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F8724
_080F870A:
	cmp r3, #0
	beq _080F871C
	ldr r0, _080F8770 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8724
_080F871C:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F8724:
	adds r6, r4, #0
	adds r6, #0x50
	movs r0, #0
	strh r0, [r6]
	movs r0, #0xe
	strb r0, [r7]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080F879C
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080F8774
	adds r0, r4, #0
	bl sub_080FB694
	b _080F8792
	.align 2, 0
_080F875C: .4byte gKirbys
_080F8760: .4byte gUnk_0203AD3C
_080F8764: .4byte gUnk_08D60FA4
_080F8768: .4byte gSongTable
_080F876C: .4byte 0x00001264
_080F8770: .4byte gUnk_0203AD10
_080F8774:
	ldr r2, _080F8798 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r6]
	mov r2, r8
	strh r5, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080F8792:
	movs r0, #0x12
	strh r0, [r4, #4]
	b _080F87BA
	.align 2, 0
_080F8798: .4byte sub_080FFF84
_080F879C:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F87BA
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080F87BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F87C8
sub_080F87C8: @ 0x080F87C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080F87EC @ =sub_080F88C0
	movs r1, #0xf
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F87F0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F87F8
	.align 2, 0
_080F87EC: .4byte sub_080F88C0
_080F87F0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F87F8:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F882A
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
_080F882A:
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080F88A0 @ =gKirbys
	ldr r0, _080F88A4 @ =gUnk_0203AD3C
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
	bne _080F889A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F8862
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F889A
_080F8862:
	ldr r1, _080F88A8 @ =gUnk_08D60FA4
	ldr r4, _080F88AC @ =gSongTable
	ldr r2, _080F88B0 @ =0x00000E2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F8886
	ldr r1, _080F88B4 @ =0x00000E28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F889A
_080F8886:
	cmp r3, #0
	beq _080F8894
	ldr r0, _080F88B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _080F889A
_080F8894:
	ldr r0, _080F88BC @ =0x000001C5
	bl m4aSongNumStart
_080F889A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F88A0: .4byte gKirbys
_080F88A4: .4byte gUnk_0203AD3C
_080F88A8: .4byte gUnk_08D60FA4
_080F88AC: .4byte gSongTable
_080F88B0: .4byte 0x00000E2C
_080F88B4: .4byte 0x00000E28
_080F88B8: .4byte gUnk_0203AD10
_080F88BC: .4byte 0x000001C5

	thumb_func_start sub_080F88C0
sub_080F88C0: @ 0x080F88C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080F892C @ =0xFB600000
	cmp r0, r1
	bge _080F88E0
	ldr r0, _080F8930 @ =0x0000FB60
	strh r0, [r2]
_080F88E0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F897C
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
	ldr r6, _080F8934 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F8938
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
	b _080F89F8
	.align 2, 0
_080F892C: .4byte 0xFB600000
_080F8930: .4byte 0x0000FB60
_080F8934: .4byte 0xFFFFF800
_080F8938:
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
	bgt _080F89FC
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
	ldr r2, _080F8978 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F89F8
	.align 2, 0
_080F8978: .4byte 0xFFFFF800
_080F897C:
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
	bgt _080F89C0
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
	ldr r2, _080F89BC @ =0xFFFFF800
	adds r0, r0, r2
	b _080F89F8
	.align 2, 0
_080F89BC: .4byte 0xFFFFF800
_080F89C0:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080F8A3C @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080F89FC
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080F89F8:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F89FC:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xf
	bne _080F8A16
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F8A16
	movs r0, #0xd
	strb r0, [r7]
_080F8A16:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	movs r2, #0x52
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	bne _080F8A40
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x3f
	bgt _080F8A40
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080F76DC
	b _080F8B62
	.align 2, 0
_080F8A3C: .4byte 0xFFFFF800
_080F8A40:
	mov r6, r8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0x62
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bgt _080F8B44
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F8B44
	ldrb r0, [r7]
	cmp r0, #0xe
	beq _080F8ACC
	ldr r1, _080F8B04 @ =gKirbys
	ldr r0, _080F8B08 @ =gUnk_0203AD3C
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
	bne _080F8ACC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F8A8C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F8ACC
_080F8A8C:
	ldr r1, _080F8B0C @ =gUnk_08D60FA4
	ldr r5, _080F8B10 @ =gSongTable
	ldr r3, _080F8B14 @ =0x00001264
	adds r0, r5, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F8AB2
	movs r6, #0x93
	lsls r6, r6, #5
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F8ACC
_080F8AB2:
	cmp r3, #0
	beq _080F8AC4
	ldr r0, _080F8B18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8ACC
_080F8AC4:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F8ACC:
	adds r6, r4, #0
	adds r6, #0x50
	movs r0, #0
	strh r0, [r6]
	movs r0, #0xe
	strb r0, [r7]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080F8B44
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080F8B1C
	adds r0, r4, #0
	bl sub_080FB694
	b _080F8B3A
	.align 2, 0
_080F8B04: .4byte gKirbys
_080F8B08: .4byte gUnk_0203AD3C
_080F8B0C: .4byte gUnk_08D60FA4
_080F8B10: .4byte gSongTable
_080F8B14: .4byte 0x00001264
_080F8B18: .4byte gUnk_0203AD10
_080F8B1C:
	ldr r2, _080F8B40 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r6]
	mov r2, r8
	strh r5, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080F8B3A:
	movs r0, #0x12
	strh r0, [r4, #4]
	b _080F8B62
	.align 2, 0
_080F8B40: .4byte sub_080FFF84
_080F8B44:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F8B62
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080F8B62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F8B70
sub_080F8B70: @ 0x080F8B70
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080F8B94 @ =sub_080F8C84
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F8B98
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F8BA0
	.align 2, 0
_080F8B94: .4byte sub_080F8C84
_080F8B98:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F8BA0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F8BC2
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xfc
	lsls r0, r0, #8
	b _080F8BC8
_080F8BC2:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080F8C68 @ =0x0000FD80
_080F8BC8:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r3, #0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F8BE8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080F8BE8:
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	ldr r1, _080F8C6C @ =gKirbys
	ldr r0, _080F8C70 @ =gUnk_0203AD3C
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
	bne _080F8C62
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F8C22
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F8C62
_080F8C22:
	ldr r1, _080F8C74 @ =gUnk_08D60FA4
	ldr r4, _080F8C78 @ =gSongTable
	ldr r2, _080F8C7C @ =0x00000B14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F8C48
	movs r1, #0xb1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F8C62
_080F8C48:
	cmp r3, #0
	beq _080F8C5A
	ldr r0, _080F8C80 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8C62
_080F8C5A:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F8C62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F8C68: .4byte 0x0000FD80
_080F8C6C: .4byte gKirbys
_080F8C70: .4byte gUnk_0203AD3C
_080F8C74: .4byte gUnk_08D60FA4
_080F8C78: .4byte gSongTable
_080F8C7C: .4byte 0x00000B14
_080F8C80: .4byte gUnk_0203AD10

	thumb_func_start sub_080F8C84
sub_080F8C84: @ 0x080F8C84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F8D24
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
	ldr r6, _080F8CDC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F8CE0
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
	b _080F8DA0
	.align 2, 0
_080F8CDC: .4byte 0xFFFFF800
_080F8CE0:
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
	bgt _080F8DA4
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
	ldr r2, _080F8D20 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F8DA0
	.align 2, 0
_080F8D20: .4byte 0xFFFFF800
_080F8D24:
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
	bgt _080F8D68
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
	ldr r2, _080F8D64 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F8DA0
	.align 2, 0
_080F8D64: .4byte 0xFFFFF800
_080F8D68:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080F8E10 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080F8DA4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080F8DA0:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F8DA4:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080F8DCA
	adds r0, r4, #0
	bl sub_08099AC4
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_08099AC4
_080F8DCA:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xc
	bne _080F8DE4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F8DE4
	movs r0, #0xd
	strb r0, [r7]
_080F8DE4:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	movs r2, #0x52
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	bne _080F8E14
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x3f
	bgt _080F8E14
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080F8FA8
	.align 2, 0
_080F8E10: .4byte 0xFFFFF800
_080F8E14:
	mov r6, r8
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0x62
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bgt _080F8F18
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F8F18
	ldrb r0, [r7]
	cmp r0, #0xe
	beq _080F8EA0
	ldr r1, _080F8ED8 @ =gKirbys
	ldr r0, _080F8EDC @ =gUnk_0203AD3C
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
	bne _080F8EA0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F8E60
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F8EA0
_080F8E60:
	ldr r1, _080F8EE0 @ =gUnk_08D60FA4
	ldr r5, _080F8EE4 @ =gSongTable
	ldr r3, _080F8EE8 @ =0x00001264
	adds r0, r5, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F8E86
	movs r6, #0x93
	lsls r6, r6, #5
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F8EA0
_080F8E86:
	cmp r3, #0
	beq _080F8E98
	ldr r0, _080F8EEC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8EA0
_080F8E98:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F8EA0:
	adds r6, r4, #0
	adds r6, #0x50
	movs r0, #0
	strh r0, [r6]
	movs r0, #0xe
	strb r0, [r7]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080F8F18
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080F8EF0
	adds r0, r4, #0
	bl sub_080FB694
	b _080F8F0E
	.align 2, 0
_080F8ED8: .4byte gKirbys
_080F8EDC: .4byte gUnk_0203AD3C
_080F8EE0: .4byte gUnk_08D60FA4
_080F8EE4: .4byte gSongTable
_080F8EE8: .4byte 0x00001264
_080F8EEC: .4byte gUnk_0203AD10
_080F8EF0:
	ldr r2, _080F8F14 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r6]
	mov r2, r8
	strh r5, [r2]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080F8F0E:
	movs r0, #0x12
	strh r0, [r4, #4]
	b _080F8FA8
	.align 2, 0
_080F8F14: .4byte sub_080FFF84
_080F8F18:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F8FA8
	ldr r1, _080F8FB8 @ =gKirbys
	ldr r0, _080F8FBC @ =gUnk_0203AD3C
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
	bne _080F8F90
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F8F50
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F8F90
_080F8F50:
	ldr r1, _080F8FC0 @ =gUnk_08D60FA4
	ldr r5, _080F8FC4 @ =gSongTable
	ldr r6, _080F8FC8 @ =0x00001264
	adds r0, r5, r6
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F8F76
	movs r1, #0x93
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F8F90
_080F8F76:
	cmp r3, #0
	beq _080F8F88
	ldr r0, _080F8FCC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F8F90
_080F8F88:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F8F90:
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	adds r0, r4, #0
	bl sub_080F8490
_080F8FA8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F8FB8: .4byte gKirbys
_080F8FBC: .4byte gUnk_0203AD3C
_080F8FC0: .4byte gUnk_08D60FA4
_080F8FC4: .4byte gSongTable
_080F8FC8: .4byte 0x00001264
_080F8FCC: .4byte gUnk_0203AD10

	thumb_func_start sub_080F8FD0
sub_080F8FD0: @ 0x080F8FD0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080F9024 @ =sub_080F90CC
	adds r0, r4, #0
	movs r1, #0x15
	bl ObjectSetFunc
	ldr r1, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F900C
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	str r1, [r4, #8]
_080F900C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r3, [r4, #0x44]
	ldr r1, [r0, #0x44]
	subs r2, r3, r1
	cmp r2, #0
	blt _080F902C
	ldr r0, _080F9028 @ =0x00002FFF
	cmp r2, r0
	ble _080F9034
	b _080F903C
	.align 2, 0
_080F9024: .4byte sub_080F90CC
_080F9028: .4byte 0x00002FFF
_080F902C:
	subs r1, r1, r3
	ldr r0, _080F9038 @ =0x00002FFF
	cmp r1, r0
	bgt _080F903C
_080F9034:
	movs r0, #2
	b _080F903E
	.align 2, 0
_080F9038: .4byte 0x00002FFF
_080F903C:
	movs r0, #4
_080F903E:
	strh r0, [r4, #4]
	ldr r1, _080F90B4 @ =gKirbys
	ldr r0, _080F90B8 @ =gUnk_0203AD3C
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
	bne _080F90AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F906C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F90AC
_080F906C:
	ldr r1, _080F90BC @ =gUnk_08D60FA4
	ldr r4, _080F90C0 @ =gSongTable
	ldr r2, _080F90C4 @ =0x00000D24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9092
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F90AC
_080F9092:
	cmp r3, #0
	beq _080F90A4
	ldr r0, _080F90C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F90AC
_080F90A4:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F90AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F90B4: .4byte gKirbys
_080F90B8: .4byte gUnk_0203AD3C
_080F90BC: .4byte gUnk_08D60FA4
_080F90C0: .4byte gSongTable
_080F90C4: .4byte 0x00000D24
_080F90C8: .4byte gUnk_0203AD10

	thumb_func_start sub_080F90CC
sub_080F90CC: @ 0x080F90CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9168
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
	ldr r6, _080F9120 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F9124
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
	b _080F91E8
	.align 2, 0
_080F9120: .4byte 0xFFFFF800
_080F9124:
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
	bgt _080F91EC
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
	ldr r2, _080F9164 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F91E8
	.align 2, 0
_080F9164: .4byte 0xFFFFF800
_080F9168:
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
	bgt _080F91AC
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
	ldr r2, _080F91A8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F91E8
	.align 2, 0
_080F91A8: .4byte 0xFFFFF800
_080F91AC:
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
	ldr r2, _080F9228 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080F91EC
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
_080F91E8:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F91EC:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x48
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080F9206
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080F9206:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	bne _080F922C
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080F92FC
	b _080F9238
	.align 2, 0
_080F9228: .4byte 0xFFFFF800
_080F922C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F930A
_080F9238:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F92DC
	ldr r1, _080F92C4 @ =gKirbys
	ldr r0, _080F92C8 @ =gUnk_0203AD3C
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
	bne _080F92B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9272
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F92B2
_080F9272:
	ldr r1, _080F92CC @ =gUnk_08D60FA4
	ldr r5, _080F92D0 @ =gSongTable
	ldr r6, _080F92D4 @ =0x00001264
	adds r0, r5, r6
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9298
	movs r1, #0x93
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F92B2
_080F9298:
	cmp r3, #0
	beq _080F92AA
	ldr r0, _080F92D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F92B2
_080F92AA:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F92B2:
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080F7B34
	b _080F930A
	.align 2, 0
_080F92C4: .4byte gKirbys
_080F92C8: .4byte gUnk_0203AD3C
_080F92CC: .4byte gUnk_08D60FA4
_080F92D0: .4byte gSongTable
_080F92D4: .4byte 0x00001264
_080F92D8: .4byte gUnk_0203AD10
_080F92DC:
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	str r0, [r4, #8]
	ldr r0, _080F92F8 @ =sub_080F850C
	str r0, [r4, #0x78]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	strb r0, [r1]
	b _080F930A
	.align 2, 0
_080F92F8: .4byte sub_080F850C
_080F92FC:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F930A
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080F930A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080F9310
sub_080F9310: @ 0x080F9310
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc8
	movs r4, #0
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0xc9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080F93C4 @ =sub_080F93E0
	adds r0, r5, #0
	movs r1, #0x10
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0xc
	strb r0, [r1]
	strh r0, [r5, #4]
	ldr r1, _080F93C8 @ =gKirbys
	ldr r0, _080F93CC @ =gUnk_0203AD3C
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
	bne _080F93BC
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F937C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F93BC
_080F937C:
	ldr r1, _080F93D0 @ =gUnk_08D60FA4
	ldr r4, _080F93D4 @ =gSongTable
	ldr r2, _080F93D8 @ =0x00000D24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F93A2
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F93BC
_080F93A2:
	cmp r3, #0
	beq _080F93B4
	ldr r0, _080F93DC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F93BC
_080F93B4:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F93BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F93C4: .4byte sub_080F93E0
_080F93C8: .4byte gKirbys
_080F93CC: .4byte gUnk_0203AD3C
_080F93D0: .4byte gUnk_08D60FA4
_080F93D4: .4byte gSongTable
_080F93D8: .4byte 0x00000D24
_080F93DC: .4byte gUnk_0203AD10

	thumb_func_start sub_080F93E0
sub_080F93E0: @ 0x080F93E0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080F9438
	adds r3, r6, #0
	adds r3, #0x52
	movs r0, #0
	strh r0, [r3]
	adds r2, r6, #0
	adds r2, #0x54
	ldr r0, _080F9434 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x54
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F9428
	b _080F95C8
_080F9428:
	movs r0, #0x11
	strb r0, [r4]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3]
	b _080F95C8
	.align 2, 0
_080F9434: .4byte gUnk_0203AD40
_080F9438:
	cmp r0, #0x11
	beq _080F943E
	b _080F9554
_080F943E:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080F9454
	adds r1, r6, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x48
	b _080F945C
_080F9454:
	adds r1, r6, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x33
_080F945C:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F9530 @ =0xFFFFFB80
	cmp r0, r2
	bge _080F946A
	strh r2, [r1]
_080F946A:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F947A
	b _080F95C8
_080F947A:
	ldr r1, _080F9534 @ =gKirbys
	ldr r0, _080F9538 @ =gUnk_0203AD3C
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
	bne _080F94E6
	ldrb r0, [r6]
	cmp r0, #0
	bne _080F94A6
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F94E6
_080F94A6:
	ldr r1, _080F953C @ =gUnk_08D60FA4
	ldr r4, _080F9540 @ =gSongTable
	ldr r2, _080F9544 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F94CC
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F94E6
_080F94CC:
	cmp r3, #0
	beq _080F94DE
	ldr r0, _080F9548 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F94E6
_080F94DE:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F94E6:
	adds r0, r6, #0
	adds r0, #0x83
	movs r4, #0x12
	strb r4, [r0]
	ldr r2, _080F954C @ =0x000002AD
	adds r0, r6, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	ldr r0, _080F9550 @ =0x00000201
	adds r1, r6, #0
	bl sub_0806FE64
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	movs r5, #1
	eors r0, r5
	str r0, [r6, #8]
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r5
	str r0, [r6, #8]
	b _080F95C8
	.align 2, 0
_080F9530: .4byte 0xFFFFFB80
_080F9534: .4byte gKirbys
_080F9538: .4byte gUnk_0203AD3C
_080F953C: .4byte gUnk_08D60FA4
_080F9540: .4byte gSongTable
_080F9544: .4byte 0x00000B24
_080F9548: .4byte gUnk_0203AD10
_080F954C: .4byte 0x000002AD
_080F9550: .4byte 0x00000201
_080F9554:
	adds r5, r6, #0
	adds r5, #0x52
	ldrh r0, [r5]
	subs r0, #0x28
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F95A4 @ =0xFFFFFB60
	cmp r0, r1
	bge _080F956A
	strh r1, [r5]
_080F956A:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F95C8
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080F95C8
	ldr r0, [r6, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080F95A8
	adds r0, r6, #0
	bl sub_080FB694
	b _080F95C8
	.align 2, 0
_080F95A4: .4byte 0xFFFFFB60
_080F95A8:
	ldr r2, _080F95D0 @ =sub_080FFF84
	adds r0, r6, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r6, #0
	adds r0, #0x50
	strh r4, [r0]
	strh r4, [r5]
	ldr r0, [r6, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
	movs r0, #0x20
	strh r0, [r6, #4]
_080F95C8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F95D0: .4byte sub_080FFF84

	thumb_func_start sub_080F95D4
sub_080F95D4: @ 0x080F95D4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080F9614 @ =sub_080F96B4
	adds r0, r4, #0
	movs r1, #0x1a
	bl ObjectSetFunc
	ldr r1, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _080F9618
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	str r1, [r4, #8]
	b _080F961E
	.align 2, 0
_080F9614: .4byte sub_080F96B4
_080F9618:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080F961E:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xc
	strh r0, [r4, #4]
	ldr r1, _080F969C @ =gKirbys
	ldr r0, _080F96A0 @ =gUnk_0203AD3C
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
	bne _080F9696
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9656
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9696
_080F9656:
	ldr r1, _080F96A4 @ =gUnk_08D60FA4
	ldr r4, _080F96A8 @ =gSongTable
	ldr r2, _080F96AC @ =0x00000D24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F967C
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9696
_080F967C:
	cmp r3, #0
	beq _080F968E
	ldr r0, _080F96B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F9696
_080F968E:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F9696:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F969C: .4byte gKirbys
_080F96A0: .4byte gUnk_0203AD3C
_080F96A4: .4byte gUnk_08D60FA4
_080F96A8: .4byte gSongTable
_080F96AC: .4byte 0x00000D24
_080F96B0: .4byte gUnk_0203AD10

	thumb_func_start sub_080F96B4
sub_080F96B4: @ 0x080F96B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F974C
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
	ldr r6, _080F9704 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F9708
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
	b _080F9788
	.align 2, 0
_080F9704: .4byte 0xFFFFF800
_080F9708:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	bgt _080F97D4
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080F9748 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F97D0
	.align 2, 0
_080F9748: .4byte 0xFFFFF800
_080F974C:
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
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080F9798
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
	ldr r3, _080F9794 @ =0xFFFFF800
_080F9788:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r6, r2, #0
	b _080F97D4
	.align 2, 0
_080F9794: .4byte 0xFFFFF800
_080F9798:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r6, _080F97FC @ =0xFFFFF800
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	blt _080F97D4
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r7
_080F97D0:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F97D4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x1a
	bne _080F9800
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080F97EC
	b _080F9994
_080F97EC:
	movs r0, #0x1b
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	b _080F9994
	.align 2, 0
_080F97FC: .4byte 0xFFFFF800
_080F9800:
	cmp r1, #0x1b
	bne _080F989A
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _080F9820
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080F9890 @ =0xFFFFFB80
	cmp r0, r2
	bge _080F9820
	strh r2, [r1]
_080F9820:
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080F982E
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_080F982E:
	ldrb r0, [r4, #1]
	cmp r0, #9
	bne _080F983E
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_080F983E:
	ldrb r0, [r4, #1]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080F9862
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #3
	cmp r0, r2
	ble _080F9862
	strh r2, [r1]
_080F9862:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F986E
	b _080F9994
_080F986E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080F987E
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
_080F987E:
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F9894
	adds r0, r4, #0
	bl sub_080F7B34
	b _080F9994
	.align 2, 0
_080F9890: .4byte 0xFFFFFB80
_080F9894:
	movs r0, #0xd
	strb r0, [r7]
	b _080F9994
_080F989A:
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F9994
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	ldrb r1, [r7]
	mov r8, r0
	cmp r1, #0xe
	beq _080F9920
	ldr r1, _080F9950 @ =gKirbys
	ldr r0, _080F9954 @ =gUnk_0203AD3C
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
	bne _080F9920
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F98E0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9920
_080F98E0:
	ldr r1, _080F9958 @ =gUnk_08D60FA4
	ldr r5, _080F995C @ =gSongTable
	ldr r2, _080F9960 @ =0x00001264
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9906
	movs r1, #0x93
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9920
_080F9906:
	cmp r3, #0
	beq _080F9918
	ldr r0, _080F9964 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F9920
_080F9918:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080F9920:
	movs r0, #0xe
	strb r0, [r7]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080F9994
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080F9968
	adds r0, r4, #0
	bl sub_080FB694
	b _080F998A
	.align 2, 0
_080F9950: .4byte gKirbys
_080F9954: .4byte gUnk_0203AD3C
_080F9958: .4byte gUnk_08D60FA4
_080F995C: .4byte gSongTable
_080F9960: .4byte 0x00001264
_080F9964: .4byte gUnk_0203AD10
_080F9968:
	ldr r2, _080F9990 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	mov r3, r8
	strh r5, [r3]
	adds r0, r4, #0
	adds r0, #0x52
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080F998A:
	movs r0, #0x12
	strh r0, [r4, #4]
	b _080F99B0
	.align 2, 0
_080F9990: .4byte sub_080FFF84
_080F9994:
	ldrb r1, [r6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F99B0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080F99B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F99BC
sub_080F99BC: @ 0x080F99BC
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x54
	ldr r0, _080F9A14 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	ldrb r0, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x54
	strb r1, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F9A26
	ldr r0, [r3, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F9A18
	cmp r0, #1
	ble _080F9A0C
	cmp r0, #2
	beq _080F9A20
_080F9A0C:
	adds r0, r3, #0
	bl sub_080F9DA8
	b _080F9A26
	.align 2, 0
_080F9A14: .4byte gUnk_0203AD40
_080F9A18:
	adds r0, r3, #0
	bl sub_080FA048
	b _080F9A26
_080F9A20:
	adds r0, r3, #0
	bl sub_080FFFE8
_080F9A26:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080F9A2C
sub_080F9A2C: @ 0x080F9A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9AC8
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ldr r6, _080F9A80 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F9A84
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	b _080F9B06
	.align 2, 0
_080F9A80: .4byte 0xFFFFF800
_080F9A84:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	bgt _080F9B50
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080F9AC4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F9B4C
	.align 2, 0
_080F9AC4: .4byte 0xFFFFF800
_080F9AC8:
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
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080F9B14
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
	ldr r3, _080F9B10 @ =0xFFFFF800
	adds r0, r0, r3
_080F9B06:
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r6, r2, #0
	b _080F9B50
	.align 2, 0
_080F9B10: .4byte 0xFFFFF800
_080F9B14:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r6, _080F9C98 @ =0xFFFFF800
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	blt _080F9B50
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r7
_080F9B4C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080F9B50:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x17
	beq _080F9B5E
	b _080F9CB4
_080F9B5E:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080F9BE2
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
	ldr r1, _080F9C9C @ =gKirbys
	ldr r0, _080F9CA0 @ =gUnk_0203AD3C
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
	bne _080F9BE2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9BA2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9BE2
_080F9BA2:
	ldr r1, _080F9CA4 @ =gUnk_08D60FA4
	ldr r5, _080F9CA8 @ =gSongTable
	ldr r2, _080F9CAC @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9BC8
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9BE2
_080F9BC8:
	cmp r3, #0
	beq _080F9BDA
	ldr r0, _080F9CB0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F9BE2
_080F9BDA:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F9BE2:
	ldrb r0, [r4, #1]
	cmp r0, #0x16
	bne _080F9C64
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r1, _080F9C9C @ =gKirbys
	ldr r0, _080F9CA0 @ =gUnk_0203AD3C
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
	bne _080F9C64
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9C24
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9C64
_080F9C24:
	ldr r1, _080F9CA4 @ =gUnk_08D60FA4
	ldr r5, _080F9CA8 @ =gSongTable
	ldr r2, _080F9CAC @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9C4A
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9C64
_080F9C4A:
	cmp r3, #0
	beq _080F9C5C
	ldr r0, _080F9CB0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F9C64
_080F9C5C:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F9C64:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F9C70
	b _080F9D74
_080F9C70:
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #5
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9D74
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080F9D74
	.align 2, 0
_080F9C98: .4byte 0xFFFFF800
_080F9C9C: .4byte gKirbys
_080F9CA0: .4byte gUnk_0203AD3C
_080F9CA4: .4byte gUnk_08D60FA4
_080F9CA8: .4byte gSongTable
_080F9CAC: .4byte 0x00000D24
_080F9CB0: .4byte gUnk_0203AD10
_080F9CB4:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080F9D3E
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9CD2
	rsbs r0, r3, #0
	strh r0, [r2]
_080F9CD2:
	ldr r1, _080F9D90 @ =gKirbys
	ldr r0, _080F9D94 @ =gUnk_0203AD3C
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
	bne _080F9D3E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080F9CFE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9D3E
_080F9CFE:
	ldr r1, _080F9D98 @ =gUnk_08D60FA4
	ldr r5, _080F9D9C @ =gSongTable
	ldr r2, _080F9DA0 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9D24
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9D3E
_080F9D24:
	cmp r3, #0
	beq _080F9D36
	ldr r0, _080F9DA4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F9D3E
_080F9D36:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F9D3E:
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _080F9D4C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080F9D4C:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080F9D64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
_080F9D64:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080F9D74
	adds r0, r4, #0
	bl sub_080F7B34
_080F9D74:
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9D86
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080F9D86:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F9D90: .4byte gKirbys
_080F9D94: .4byte gUnk_0203AD3C
_080F9D98: .4byte gUnk_08D60FA4
_080F9D9C: .4byte gSongTable
_080F9DA0: .4byte 0x00000D24
_080F9DA4: .4byte gUnk_0203AD10

	thumb_func_start sub_080F9DA8
sub_080F9DA8: @ 0x080F9DA8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080F9DEC @ =sub_080F9E18
	adds r0, r4, #0
	movs r1, #0x18
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080F9DF0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080F9DF8
	.align 2, 0
_080F9DEC: .4byte sub_080F9E18
_080F9DF0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080F9DF8:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9E12
	rsbs r0, r3, #0
	strh r0, [r2]
_080F9E12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080F9E18
sub_080F9E18: @ 0x080F9E18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F9EB4
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
	ldr r6, _080F9E6C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080F9E70
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
	movs r3, #0x80
	lsls r3, r3, #4
	b _080F9EF0
	.align 2, 0
_080F9E6C: .4byte 0xFFFFF800
_080F9E70:
	adds r3, r5, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa4
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r7, r5, #0
	adds r7, #0x62
	cmp r1, r0
	bgt _080F9F3C
	ldrb r1, [r7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080F9EB0 @ =0xFFFFF800
	adds r0, r0, r2
	b _080F9F38
	.align 2, 0
_080F9EB0: .4byte 0xFFFFF800
_080F9EB4:
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
	bgt _080F9F00
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
	ldr r3, _080F9EFC @ =0xFFFFF800
_080F9EF0:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r5, #0x40]
	adds r7, r2, #0
	b _080F9F3C
	.align 2, 0
_080F9EFC: .4byte 0xFFFFF800
_080F9F00:
	adds r3, r5, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080FA02C @ =0xFFFFF800
	adds r0, r0, r4
	adds r7, r5, #0
	adds r7, #0x62
	cmp r1, r0
	blt _080F9F3C
	ldrb r1, [r7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080F9F38:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080F9F3C:
	ldrb r0, [r5, #1]
	cmp r0, #8
	bne _080F9FDA
	adds r6, r5, #0
	adds r6, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r2, r8
	strh r2, [r6]
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	movs r4, #1
	ands r3, r4
	adds r0, r5, #0
	movs r2, #8
	bl sub_08089864
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080F9F70
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080F9F70:
	ldr r1, _080FA030 @ =gKirbys
	ldr r0, _080FA034 @ =gUnk_0203AD3C
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
	bne _080F9FDA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080F9F9C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080F9FDA
_080F9F9C:
	ldr r1, _080FA038 @ =gUnk_08D60FA4
	ldr r4, _080FA03C @ =gSongTable
	ldr r3, _080FA040 @ =0x00000D24
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080F9FC2
	movs r6, #0xd2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080F9FDA
_080F9FC2:
	cmp r3, #0
	beq _080F9FD2
	ldr r0, _080FA044 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080F9FDA
_080F9FD2:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080F9FDA:
	ldrb r0, [r5, #1]
	cmp r0, #0xf
	bne _080F9FF0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
_080F9FF0:
	ldrb r0, [r5, #1]
	cmp r0, #0x10
	bne _080F9FFE
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080F9FFE:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FA00E
	adds r0, r5, #0
	bl sub_080F7B34
_080FA00E:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA020
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FA020:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FA02C: .4byte 0xFFFFF800
_080FA030: .4byte gKirbys
_080FA034: .4byte gUnk_0203AD3C
_080FA038: .4byte gUnk_08D60FA4
_080FA03C: .4byte gSongTable
_080FA040: .4byte 0x00000D24
_080FA044: .4byte gUnk_0203AD10

	thumb_func_start sub_080FA048
sub_080FA048: @ 0x080FA048
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080FA090 @ =sub_080FA0BC
	adds r0, r4, #0
	movs r1, #0x19
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080FA094
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080FA09C
	.align 2, 0
_080FA090: .4byte sub_080FA0BC
_080FA094:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080FA09C:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA0B6
	rsbs r0, r3, #0
	strh r0, [r2]
_080FA0B6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080FA0BC
sub_080FA0BC: @ 0x080FA0BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA150
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
	ldr r6, _080FA108 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080FA10C
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
	b _080FA18C
	.align 2, 0
_080FA108: .4byte 0xFFFFF800
_080FA10C:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080FA1D8
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080FA14C @ =0xFFFFF800
	adds r0, r0, r2
	b _080FA1D4
	.align 2, 0
_080FA14C: .4byte 0xFFFFF800
_080FA150:
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
	bgt _080FA19C
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
	ldr r3, _080FA198 @ =0xFFFFF800
_080FA18C:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080FA1D8
	.align 2, 0
_080FA198: .4byte 0xFFFFF800
_080FA19C:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r5, _080FA2CC @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080FA1D8
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080FA1D4:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080FA1D8:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bne _080FA25C
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
	ldr r1, _080FA2D0 @ =gKirbys
	ldr r0, _080FA2D4 @ =gUnk_0203AD3C
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
	bne _080FA25C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FA21C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FA25C
_080FA21C:
	ldr r1, _080FA2D8 @ =gUnk_08D60FA4
	ldr r6, _080FA2DC @ =gSongTable
	ldr r2, _080FA2E0 @ =0x00000D24
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FA242
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FA25C
_080FA242:
	cmp r3, #0
	beq _080FA254
	ldr r0, _080FA2E4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FA25C
_080FA254:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FA25C:
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _080FA27A
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA27A
	rsbs r0, r3, #0
	strh r0, [r2]
_080FA27A:
	ldrb r0, [r4, #1]
	cmp r0, #0x12
	bne _080FA296
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080FA2E8 @ =0x0000FF40
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA296
	movs r0, #0xc0
	strh r0, [r2]
_080FA296:
	ldrb r0, [r4, #1]
	cmp r0, #0x19
	bne _080FA2A4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FA2A4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FA2B4
	adds r0, r4, #0
	bl sub_080F7B34
_080FA2B4:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA2C6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FA2C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FA2CC: .4byte 0xFFFFF800
_080FA2D0: .4byte gKirbys
_080FA2D4: .4byte gUnk_0203AD3C
_080FA2D8: .4byte gUnk_08D60FA4
_080FA2DC: .4byte gSongTable
_080FA2E0: .4byte 0x00000D24
_080FA2E4: .4byte gUnk_0203AD10
_080FA2E8: .4byte 0x0000FF40

	thumb_func_start sub_080FA2EC
sub_080FA2EC: @ 0x080FA2EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x78]
	ldr r0, _080FA350 @ =sub_080F8C84
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	bl sub_080F79AC
	ldr r2, _080FA354 @ =sub_080FA4AC
	adds r0, r4, #0
	movs r1, #0xb
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080FA358
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080FA360
	.align 2, 0
_080FA350: .4byte sub_080F8C84
_080FA354: .4byte sub_080FA4AC
_080FA358:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080FA360:
	str r0, [r4, #8]
	ldr r3, [r4, #0x40]
	cmp r5, #0
	beq _080FA3CC
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _080FA3CC
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	subs r1, r3, r0
	cmp r1, #0
	bge _080FA382
	subs r1, r0, r3
_080FA382:
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _080FA3CC
	ldr r2, _080FA3B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FA3BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FA3C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080FA3C4 @ =0x00005554
	cmp r2, r0
	bls _080FA3CC
	ldr r0, _080FA3C8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080FA3AA
	movs r1, #1
_080FA3AA:
	cmp r1, #0
	beq _080FA3CC
	adds r0, r4, #0
	bl sub_080FA5C0
	b _080FA48C
	.align 2, 0
_080FA3B8: .4byte gRngVal
_080FA3BC: .4byte 0x00196225
_080FA3C0: .4byte 0x3C6EF35F
_080FA3C4: .4byte 0x00005554
_080FA3C8: .4byte 0x0000AAA9
_080FA3CC:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x78
	asrs r0, r3, #8
	cmp r1, r0
	bge _080FA3F4
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA40A
	adds r0, r4, #0
	adds r0, #0xa8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x28
	b _080FA40E
_080FA3F4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA40A
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x28
	b _080FA40E
_080FA40A:
	adds r0, r2, #0
	adds r0, #0x28
_080FA40E:
	lsls r0, r0, #8
	subs r1, r3, r0
	asrs r0, r1, #5
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	strh r0, [r1]
	strh r2, [r4, #4]
	ldr r1, _080FA494 @ =gKirbys
	ldr r0, _080FA498 @ =gUnk_0203AD3C
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
	bne _080FA48C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FA44C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FA48C
_080FA44C:
	ldr r1, _080FA49C @ =gUnk_08D60FA4
	ldr r4, _080FA4A0 @ =gSongTable
	ldr r2, _080FA4A4 @ =0x00000B14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FA472
	movs r1, #0xb1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FA48C
_080FA472:
	cmp r3, #0
	beq _080FA484
	ldr r0, _080FA4A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FA48C
_080FA484:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FA48C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FA494: .4byte gKirbys
_080FA498: .4byte gUnk_0203AD3C
_080FA49C: .4byte gUnk_08D60FA4
_080FA4A0: .4byte gSongTable
_080FA4A4: .4byte 0x00000B14
_080FA4A8: .4byte gUnk_0203AD10

	thumb_func_start sub_080FA4AC
sub_080FA4AC: @ 0x080FA4AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080FA4CA
	adds r0, r4, #0
	bl sub_08099AC4
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_08099AC4
_080FA4CA:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x1f
	ble _080FA574
	ldr r1, _080FA55C @ =gKirbys
	ldr r0, _080FA560 @ =gUnk_0203AD3C
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
	bne _080FA544
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FA504
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FA544
_080FA504:
	ldr r1, _080FA564 @ =gUnk_08D60FA4
	ldr r5, _080FA568 @ =gSongTable
	ldr r2, _080FA56C @ =0x00001264
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FA52A
	movs r1, #0x93
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FA544
_080FA52A:
	cmp r3, #0
	beq _080FA53C
	ldr r0, _080FA570 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FA544
_080FA53C:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080FA544:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xe
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080FA70C
	b _080FA5BA
	.align 2, 0
_080FA55C: .4byte gKirbys
_080FA560: .4byte gUnk_0203AD3C
_080FA564: .4byte gUnk_08D60FA4
_080FA568: .4byte gSongTable
_080FA56C: .4byte 0x00001264
_080FA570: .4byte gUnk_0203AD10
_080FA574:
	ldr r0, _080FA5A0 @ =gUnk_083571A4
	asrs r1, r1, #0x12
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xc
	bne _080FA5A4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FA5BA
	movs r0, #0xd
	strb r0, [r2]
	b _080FA5BA
	.align 2, 0
_080FA5A0: .4byte gUnk_083571A4
_080FA5A4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	bgt _080FA5BA
	movs r0, #0xc
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080FA5BA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080FA5C0
sub_080FA5C0: @ 0x080FA5C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r1, r5, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc9
	strb r4, [r0]
	ldr r2, _080FA614 @ =sub_080FA82C
	adds r0, r5, #0
	movs r1, #0x1c
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080FA618
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080FA620
	.align 2, 0
_080FA614: .4byte sub_080FA82C
_080FA618:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080FA620:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #1
	bls _080FA658
	movs r0, #0x80
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _080FA64C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x80
	ldr r3, _080FA650 @ =gUnk_08351530
	ldr r4, _080FA654 @ =gUnk_0203AD30
	cmp r0, #0
	beq _080FA6A2
	movs r0, #0x60
	b _080FA6A0
	.align 2, 0
_080FA64C: .4byte 0x00000103
_080FA650: .4byte gUnk_08351530
_080FA654: .4byte gUnk_0203AD30
_080FA658:
	adds r2, r5, #0
	adds r2, #0x80
	ldr r3, _080FA680 @ =gUnk_08351530
	ldr r4, _080FA684 @ =gUnk_0203AD30
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	adds r6, r2, #0
	cmp r1, r0
	bge _080FA688
	movs r0, #0x30
	b _080FA68A
	.align 2, 0
_080FA680: .4byte gUnk_08351530
_080FA684: .4byte gUnk_0203AD30
_080FA688:
	movs r0, #0x40
_080FA68A:
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _080FA6DC @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080FA6A2
	ldrh r0, [r5, #4]
	subs r0, #0x18
_080FA6A0:
	strh r0, [r5, #4]
_080FA6A2:
	ldr r2, _080FA6E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FA6E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FA6E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #7
	ands r2, r0
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r6, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080FA6EC
	adds r1, r5, #0
	adds r1, #0x83
	cmp r2, #1
	bgt _080FA6F8
	b _080FA6F4
	.align 2, 0
_080FA6DC: .4byte 0x00000103
_080FA6E0: .4byte gRngVal
_080FA6E4: .4byte 0x00196225
_080FA6E8: .4byte 0x3C6EF35F
_080FA6EC:
	adds r1, r5, #0
	adds r1, #0x83
	cmp r2, #3
	bgt _080FA6F8
_080FA6F4:
	movs r0, #0x17
	strb r0, [r1]
_080FA6F8:
	ldrb r0, [r1]
	cmp r0, #0x1c
	bne _080FA704
	adds r0, r5, #0
	bl sub_080FE1D0
_080FA704:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FA70C
sub_080FA70C: @ 0x080FA70C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc9
	strb r4, [r0]
	ldr r2, _080FA768 @ =sub_080FA82C
	adds r0, r5, #0
	movs r1, #0x1c
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #1
	bls _080FA778
	movs r0, #0x80
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _080FA76C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x80
	ldr r3, _080FA770 @ =gUnk_08351530
	ldr r4, _080FA774 @ =gUnk_0203AD30
	cmp r0, #0
	beq _080FA7C2
	movs r0, #0x60
	b _080FA7C0
	.align 2, 0
_080FA768: .4byte sub_080FA82C
_080FA76C: .4byte 0x00000103
_080FA770: .4byte gUnk_08351530
_080FA774: .4byte gUnk_0203AD30
_080FA778:
	adds r2, r5, #0
	adds r2, #0x80
	ldr r3, _080FA7A0 @ =gUnk_08351530
	ldr r4, _080FA7A4 @ =gUnk_0203AD30
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	adds r6, r2, #0
	cmp r1, r0
	bge _080FA7A8
	movs r0, #0x30
	b _080FA7AA
	.align 2, 0
_080FA7A0: .4byte gUnk_08351530
_080FA7A4: .4byte gUnk_0203AD30
_080FA7A8:
	movs r0, #0x40
_080FA7AA:
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, _080FA7FC @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080FA7C2
	ldrh r0, [r5, #4]
	subs r0, #0x18
_080FA7C0:
	strh r0, [r5, #4]
_080FA7C2:
	ldr r2, _080FA800 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FA804 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FA808 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #7
	ands r2, r0
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r6, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080FA80C
	adds r1, r5, #0
	adds r1, #0x83
	cmp r2, #1
	bgt _080FA818
	b _080FA814
	.align 2, 0
_080FA7FC: .4byte 0x00000103
_080FA800: .4byte gRngVal
_080FA804: .4byte 0x00196225
_080FA808: .4byte 0x3C6EF35F
_080FA80C:
	adds r1, r5, #0
	adds r1, #0x83
	cmp r2, #3
	bgt _080FA818
_080FA814:
	movs r0, #0x17
	strb r0, [r1]
_080FA818:
	ldrb r0, [r1]
	cmp r0, #0x1c
	bne _080FA824
	adds r0, r5, #0
	bl sub_080FE1D0
_080FA824:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FA82C
sub_080FA82C: @ 0x080FA82C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0x1c
	beq _080FA8FC
	cmp r0, #0x1c
	bgt _080FA844
	cmp r0, #0x17
	beq _080FA84E
	b _080FA848
_080FA844:
	cmp r0, #0x1d
	beq _080FA924
_080FA848:
	adds r5, r4, #0
	adds r5, #0x9f
	b _080FA9D6
_080FA84E:
	ldrb r0, [r4, #1]
	cmp r0, #8
	beq _080FA858
	cmp r0, #0x16
	bne _080FA8C4
_080FA858:
	ldr r1, _080FA8E4 @ =gKirbys
	ldr r0, _080FA8E8 @ =gUnk_0203AD3C
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
	bne _080FA8C4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FA884
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FA8C4
_080FA884:
	ldr r1, _080FA8EC @ =gUnk_08D60FA4
	ldr r5, _080FA8F0 @ =gSongTable
	ldr r2, _080FA8F4 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FA8AA
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FA8C4
_080FA8AA:
	cmp r3, #0
	beq _080FA8BC
	ldr r0, _080FA8F8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FA8C4
_080FA8BC:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FA8C4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x9f
	cmp r0, #0
	bne _080FA8D4
	b _080FA9D6
_080FA8D4:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080FE1D0
	b _080FA9D6
	.align 2, 0
_080FA8E4: .4byte gKirbys
_080FA8E8: .4byte gUnk_0203AD3C
_080FA8EC: .4byte gUnk_08D60FA4
_080FA8F0: .4byte gSongTable
_080FA8F4: .4byte 0x00000D24
_080FA8F8: .4byte gUnk_0203AD10
_080FA8FC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FA90A
	movs r0, #0x1d
	strb r0, [r2]
_080FA90A:
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x9f
	cmp r0, #1
	bls _080FA9D6
	ldr r2, _080FA920 @ =gUnk_083571BC
	ldrb r0, [r5]
	lsrs r0, r0, #2
	b _080FA9C0
	.align 2, 0
_080FA920: .4byte gUnk_083571BC
_080FA924:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FA9AC
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #1
	beq _080FA9A4
	cmp r0, #1
	bgt _080FA94C
	cmp r0, #0
	beq _080FA958
	b _080FA9DC
_080FA94C:
	cmp r0, #3
	bgt _080FA9DC
	adds r0, r4, #0
	bl sub_080FB000
	b _080FA9DC
_080FA958:
	ldr r2, _080FA98C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FA990 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FA994 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FA99C
	ldr r1, [r4, #0x44]
	ldr r2, _080FA998 @ =0xFFFFF000
	adds r1, r1, r2
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080FA99C
	adds r0, r4, #0
	bl sub_081000C0
	b _080FA9DC
	.align 2, 0
_080FA98C: .4byte gRngVal
_080FA990: .4byte 0x00196225
_080FA994: .4byte 0x3C6EF35F
_080FA998: .4byte 0xFFFFF000
_080FA99C:
	adds r0, r4, #0
	bl sub_08100048
	b _080FA9DC
_080FA9A4:
	adds r0, r4, #0
	bl sub_08100094
	b _080FA9DC
_080FA9AC:
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x9f
	cmp r0, #1
	bls _080FA9D6
	ldr r2, _080FA9E4 @ =gUnk_083571BC
	ldrb r0, [r5]
	lsrs r0, r0, #1
_080FA9C0:
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	adds r0, #0x60
	ldr r0, [r0]
	adds r0, #0x54
	strb r1, [r0]
_080FA9D6:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080FA9DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FA9E4: .4byte gUnk_083571BC

	thumb_func_start sub_080FA9E8
sub_080FA9E8: @ 0x080FA9E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x48
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080FAA06
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080FAA06:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAA98
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
	ldr r6, _080FAA50 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080FAA54
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
	movs r3, #0x80
	lsls r3, r3, #4
	b _080FAAD4
	.align 2, 0
_080FAA50: .4byte 0xFFFFF800
_080FAA54:
	adds r3, r5, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa4
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r7, r5, #0
	adds r7, #0x62
	cmp r1, r0
	bgt _080FAB20
	ldrb r1, [r7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080FAA94 @ =0xFFFFF800
	adds r0, r0, r2
	b _080FAB1C
	.align 2, 0
_080FAA94: .4byte 0xFFFFF800
_080FAA98:
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
	bgt _080FAAE4
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
	ldr r3, _080FAAE0 @ =0xFFFFF800
_080FAAD4:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r5, #0x40]
	adds r7, r2, #0
	b _080FAB20
	.align 2, 0
_080FAAE0: .4byte 0xFFFFF800
_080FAAE4:
	adds r3, r5, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080FAC24 @ =0xFFFFF800
	adds r0, r0, r4
	adds r7, r5, #0
	adds r7, #0x62
	cmp r1, r0
	blt _080FAB20
	ldrb r1, [r7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r7]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080FAB1C:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080FAB20:
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080FAB32
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FAB32:
	ldrb r0, [r5, #1]
	cmp r0, #8
	bne _080FABCC
	adds r6, r5, #0
	adds r6, #0x50
	movs r0, #0x38
	strh r0, [r6]
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	movs r4, #1
	ands r3, r4
	adds r0, r5, #0
	movs r2, #8
	bl sub_08089864
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080FAB60
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
_080FAB60:
	ldr r1, _080FAC28 @ =gKirbys
	ldr r0, _080FAC2C @ =gUnk_0203AD3C
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
	bne _080FABCC
	ldrb r0, [r5]
	cmp r0, #0
	bne _080FAB8C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FABCC
_080FAB8C:
	ldr r1, _080FAC30 @ =gUnk_08D60FA4
	ldr r4, _080FAC34 @ =gSongTable
	ldr r2, _080FAC38 @ =0x00000D24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FABB2
	movs r6, #0xd2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FABCC
_080FABB2:
	cmp r3, #0
	beq _080FABC4
	ldr r0, _080FAC3C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FABCC
_080FABC4:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FABCC:
	ldrb r0, [r5, #1]
	cmp r0, #0xf
	bne _080FABE0
	adds r0, r5, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_080FDC68
_080FABE0:
	ldrb r0, [r5, #1]
	cmp r0, #0x10
	bne _080FABEE
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FABEE:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080FAC4A
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FAC4A
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _080FAC44
	ldr r2, _080FAC40 @ =sub_080F850C
	adds r0, r5, #0
	movs r1, #0xd
	bl ObjectSetFunc
	movs r0, #0xc
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #1
	strb r0, [r1]
	b _080FAC4A
	.align 2, 0
_080FAC24: .4byte 0xFFFFF800
_080FAC28: .4byte gKirbys
_080FAC2C: .4byte gUnk_0203AD3C
_080FAC30: .4byte gUnk_08D60FA4
_080FAC34: .4byte gSongTable
_080FAC38: .4byte 0x00000D24
_080FAC3C: .4byte gUnk_0203AD10
_080FAC40: .4byte sub_080F850C
_080FAC44:
	adds r0, r5, #0
	bl sub_080F7B34
_080FAC4A:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAC5C
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FAC5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FAC64
sub_080FAC64: @ 0x080FAC64
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAD00
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ldr r6, _080FACB8 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080FACBC
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	b _080FAD3E
	.align 2, 0
_080FACB8: .4byte 0xFFFFF800
_080FACBC:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	bgt _080FAD88
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080FACFC @ =0xFFFFF800
	adds r0, r0, r2
	b _080FAD84
	.align 2, 0
_080FACFC: .4byte 0xFFFFF800
_080FAD00:
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
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080FAD4C
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
	ldr r3, _080FAD48 @ =0xFFFFF800
	adds r0, r0, r3
_080FAD3E:
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r6, r2, #0
	b _080FAD88
	.align 2, 0
_080FAD48: .4byte 0xFFFFF800
_080FAD4C:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r6, _080FAEE0 @ =0xFFFFF800
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	blt _080FAD88
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r7
_080FAD84:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080FAD88:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x17
	beq _080FAD96
	b _080FAEFC
_080FAD96:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080FADAE
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
_080FADAE:
	ldrb r0, [r4, #1]
	cmp r0, #0x16
	bne _080FAE2E
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080FDC68
	ldr r1, _080FAEE4 @ =gKirbys
	ldr r0, _080FAEE8 @ =gUnk_0203AD3C
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
	bne _080FAE2E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FADEE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FAE2E
_080FADEE:
	ldr r1, _080FAEEC @ =gUnk_08D60FA4
	ldr r5, _080FAEF0 @ =gSongTable
	ldr r2, _080FAEF4 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FAE14
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FAE2E
_080FAE14:
	cmp r3, #0
	beq _080FAE26
	ldr r0, _080FAEF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FAE2E
_080FAE26:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FAE2E:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080FAEAE
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080FDC68
	ldr r1, _080FAEE4 @ =gKirbys
	ldr r0, _080FAEE8 @ =gUnk_0203AD3C
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
	bne _080FAEAE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FAE6E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FAEAE
_080FAE6E:
	ldr r1, _080FAEEC @ =gUnk_08D60FA4
	ldr r5, _080FAEF0 @ =gSongTable
	ldr r2, _080FAEF4 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FAE94
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FAEAE
_080FAE94:
	cmp r3, #0
	beq _080FAEA6
	ldr r0, _080FAEF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FAEAE
_080FAEA6:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FAEAE:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080FAEBA
	b _080FAFD0
_080FAEBA:
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0x16
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAFD0
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080FAFD0
	.align 2, 0
_080FAEE0: .4byte 0xFFFFF800
_080FAEE4: .4byte gKirbys
_080FAEE8: .4byte gUnk_0203AD3C
_080FAEEC: .4byte gUnk_08D60FA4
_080FAEF0: .4byte gSongTable
_080FAEF4: .4byte 0x00000D24
_080FAEF8: .4byte gUnk_0203AD10
_080FAEFC:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080FAF86
	ldr r1, _080FAFE8 @ =gKirbys
	ldr r0, _080FAFEC @ =gUnk_0203AD3C
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
	bne _080FAF6E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FAF2E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FAF6E
_080FAF2E:
	ldr r1, _080FAFF0 @ =gUnk_08D60FA4
	ldr r5, _080FAFF4 @ =gSongTable
	ldr r2, _080FAFF8 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FAF54
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FAF6E
_080FAF54:
	cmp r3, #0
	beq _080FAF66
	ldr r0, _080FAFFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FAF6E
_080FAF66:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FAF6E:
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAF86
	rsbs r0, r3, #0
	strh r0, [r2]
_080FAF86:
	ldrb r0, [r4, #1]
	cmp r0, #6
	bne _080FAF9A
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080FDC68
_080FAF9A:
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	bne _080FAFA8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FAFA8:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _080FAFC0
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
_080FAFC0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FAFD0
	adds r0, r4, #0
	bl sub_080F7B34
_080FAFD0:
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FAFE2
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FAFE2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FAFE8: .4byte gKirbys
_080FAFEC: .4byte gUnk_0203AD3C
_080FAFF0: .4byte gUnk_08D60FA4
_080FAFF4: .4byte gSongTable
_080FAFF8: .4byte 0x00000D24
_080FAFFC: .4byte gUnk_0203AD10

	thumb_func_start sub_080FB000
sub_080FB000: @ 0x080FB000
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _080FB040 @ =sub_080FB0C4
	movs r1, #0x10
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r3, [r4, #0x40]
	ldr r1, [r0, #0x40]
	subs r2, r3, r1
	cmp r2, #0
	blt _080FB044
	movs r0, #0x90
	lsls r0, r0, #7
	cmp r2, r0
	bgt _080FB052
	adds r2, r4, #0
	adds r2, #0xca
	b _080FB098
	.align 2, 0
_080FB040: .4byte sub_080FB0C4
_080FB044:
	subs r1, r1, r3
	movs r0, #0x90
	lsls r0, r0, #7
	adds r2, r4, #0
	adds r2, #0xca
	cmp r1, r0
	ble _080FB098
_080FB052:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080FB0A4 @ =gUnk_08351530
	ldr r0, _080FB0A8 @ =gUnk_0203AD30
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
	blt _080FB08E
	ldr r2, _080FB0AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FB0B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FB0B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r2, r5, #0
	adds r2, #0xca
	cmp r0, #0
	beq _080FB098
_080FB08E:
	adds r1, r5, #0
	adds r1, #0xca
	movs r0, #3
	strb r0, [r1]
	adds r2, r1, #0
_080FB098:
	ldrb r0, [r2]
	cmp r0, #3
	bne _080FB0B8
	movs r0, #0x80
	b _080FB0BA
	.align 2, 0
_080FB0A4: .4byte gUnk_08351530
_080FB0A8: .4byte gUnk_0203AD30
_080FB0AC: .4byte gRngVal
_080FB0B0: .4byte 0x00196225
_080FB0B4: .4byte 0x3C6EF35F
_080FB0B8:
	movs r0, #0xac
_080FB0BA:
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FB0C4
sub_080FB0C4: @ 0x080FB0C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0x10
	bne _080FB196
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FB1C4
	movs r0, #0x12
	strb r0, [r2]
	subs r1, #0xa
	ldr r3, [r4, #8]
	movs r0, #1
	ands r3, r0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
	ldr r1, _080FB174 @ =gKirbys
	ldr r0, _080FB178 @ =gUnk_0203AD3C
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
	bne _080FB15E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FB11E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FB15E
_080FB11E:
	ldr r1, _080FB17C @ =gUnk_08D60FA4
	ldr r5, _080FB180 @ =gSongTable
	ldr r2, _080FB184 @ =0x00000D24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FB144
	movs r1, #0xd2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FB15E
_080FB144:
	cmp r3, #0
	beq _080FB156
	ldr r0, _080FB188 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FB15E
_080FB156:
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FB15E:
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #3
	bne _080FB18C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080FE5CC
	b _080FB1A8
	.align 2, 0
_080FB174: .4byte gKirbys
_080FB178: .4byte gUnk_0203AD3C
_080FB17C: .4byte gUnk_08D60FA4
_080FB180: .4byte gSongTable
_080FB184: .4byte 0x00000D24
_080FB188: .4byte gUnk_0203AD10
_080FB18C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080FE5CC
	b _080FB1A8
_080FB196:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB1A8
	adds r0, r4, #0
	bl sub_080F7B34
_080FB1A8:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FB1C4
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB1C4
	adds r0, r4, #0
	bl sub_080F7B34
_080FB1C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FB1CC
sub_080FB1CC: @ 0x080FB1CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xc9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080FB294 @ =gKirbys
	ldr r0, _080FB298 @ =gUnk_0203AD3C
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
	bne _080FB252
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FB212
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FB252
_080FB212:
	ldr r1, _080FB29C @ =gUnk_08D60FA4
	ldr r5, _080FB2A0 @ =gSongTable
	ldr r2, _080FB2A4 @ =0x00000D34
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FB238
	movs r1, #0xd3
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FB252
_080FB238:
	cmp r3, #0
	beq _080FB24A
	ldr r0, _080FB2A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FB252
_080FB24A:
	movs r0, #0xd3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FB252:
	ldr r0, [r4, #0x78]
	ldr r2, _080FB2AC @ =sub_080FB2CC
	cmp r0, r2
	beq _080FB2C4
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080FB2B0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080FB2BA
	.align 2, 0
_080FB294: .4byte gKirbys
_080FB298: .4byte gUnk_0203AD3C
_080FB29C: .4byte gUnk_08D60FA4
_080FB2A0: .4byte gSongTable
_080FB2A4: .4byte 0x00000D34
_080FB2A8: .4byte gUnk_0203AD10
_080FB2AC: .4byte sub_080FB2CC
_080FB2B0:
	adds r1, r6, #0
	adds r1, #0xc6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080FB2BA:
	movs r0, #0x14
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_080FFBC0
_080FB2C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FB2CC
sub_080FB2CC: @ 0x080FB2CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FB360
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
	ldr r6, _080FB318 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080FB31C
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
	b _080FB39C
	.align 2, 0
_080FB318: .4byte 0xFFFFF800
_080FB31C:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080FB3E8
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080FB35C @ =0xFFFFF800
	adds r0, r0, r2
	b _080FB3E4
	.align 2, 0
_080FB35C: .4byte 0xFFFFF800
_080FB360:
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
	bgt _080FB3AC
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
	ldr r3, _080FB3A8 @ =0xFFFFF800
_080FB39C:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080FB3E8
	.align 2, 0
_080FB3A8: .4byte 0xFFFFF800
_080FB3AC:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r5, _080FB414 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080FB3E8
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080FB3E4:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080FB3E8:
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #8
	bne _080FB45C
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	ble _080FB418
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xff
	lsls r3, r3, #8
	b _080FB424
	.align 2, 0
_080FB414: .4byte 0xFFFFF800
_080FB418:
	cmp r0, #3
	ble _080FB436
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xfe
	lsls r3, r3, #8
_080FB424:
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FB4AC
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080FB4AC
_080FB436:
	ldr r1, _080FB458 @ =gUnk_083571B4
	movs r2, #4
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FB4AC
	rsbs r0, r2, #0
	strh r0, [r3]
	b _080FB4AC
	.align 2, 0
_080FB458: .4byte gUnk_083571B4
_080FB45C:
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #3
	ble _080FB494
	ldr r2, _080FB4CC @ =gUnk_083571B4
	asrs r0, r1, #0x11
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	adds r2, r4, #0
	adds r2, #0x54
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FB494
	movs r0, #0
	ldrsb r0, [r2, r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
_080FB494:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080FB4AC
	movs r0, #8
	strb r0, [r3]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080FB4AC:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FB4EC
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080FB4D0
	adds r0, r4, #0
	bl sub_080F7A60
	b _080FB4FE
	.align 2, 0
_080FB4CC: .4byte gUnk_083571B4
_080FB4D0:
	ldr r2, _080FB4E8 @ =sub_080F850C
	adds r0, r4, #0
	movs r1, #0xd
	bl ObjectSetFunc
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
	strb r0, [r1]
	b _080FB4FE
	.align 2, 0
_080FB4E8: .4byte sub_080F850C
_080FB4EC:
	ldrb r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080FB4FE
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FB4FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080FB504
sub_080FB504: @ 0x080FB504
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	ldr r0, _080FB574 @ =gUnk_03000510
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
	beq _080FB524
	b _080FB68C
_080FB524:
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080FB5BE
	ldr r0, _080FB578 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r3, #8]
	ldr r2, [r3, #0x6c]
	cmp r2, #0
	bne _080FB542
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080FB5BE
_080FB542:
	ldr r1, [r2, #0x70]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080FB57C
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080FB560
	cmp r1, #0x28
	bne _080FB57C
_080FB560:
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _080FB57C
	adds r0, r3, #0
	bl sub_080F738C
	b _080FB68C
	.align 2, 0
_080FB574: .4byte gUnk_03000510
_080FB578: .4byte 0xFFFBFFFF
_080FB57C:
	ldr r0, [r3, #0x5c]
	movs r4, #7
	ands r0, r4
	cmp r0, #6
	bls _080FB5BE
	ldr r1, [r2, #0x68]
	ldr r0, _080FB5A8 @ =0x003FFFF8
	ands r0, r1
	cmp r0, #0
	beq _080FB5BE
	ands r1, r4
	cmp r1, #2
	bls _080FB5BE
	ldr r1, [r2, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	bge _080FB5AC
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080FB5B4
	.align 2, 0
_080FB5A8: .4byte 0x003FFFF8
_080FB5AC:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080FB5B4:
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_080FB1CC
	b _080FB68C
_080FB5BE:
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xe
	bhi _080FB67E
	adds r0, r5, #0
	adds r0, #0xc6
	ldrb r0, [r0]
	cmp r0, #1
	bls _080FB5DC
	ldr r0, [r3, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080FB67E
_080FB5DC:
	ldr r2, _080FB62C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080FB630 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080FB634 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r6, r0, #0x10
	movs r7, #7
	ands r6, r7
	mov ip, r6
	adds r5, r3, #0
	adds r5, #0x80
	ldr r1, _080FB638 @ =gUnk_08351530
	ldr r0, _080FB63C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	asrs r4, r2, #0x11
	cmp r0, r4
	bge _080FB650
	adds r1, r0, #0
	asrs r0, r2, #0x12
	subs r0, r4, r0
	cmp r1, r0
	bge _080FB640
	cmp r6, #0
	bne _080FB67E
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	b _080FB68A
	.align 2, 0
_080FB62C: .4byte gRngVal
_080FB630: .4byte 0x00196225
_080FB634: .4byte 0x3C6EF35F
_080FB638: .4byte gUnk_08351530
_080FB63C: .4byte gUnk_0203AD30
_080FB640:
	cmp r6, #0
	bne _080FB67E
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	b _080FB68A
_080FB650:
	movs r0, #0
	ldrsh r1, [r5, r0]
	asrs r0, r2, #0x12
	adds r0, r4, r0
	cmp r1, r0
	bge _080FB66C
	cmp r6, #1
	bhi _080FB67E
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	b _080FB68A
_080FB66C:
	mov r1, ip
	cmp r1, #1
	bhi _080FB67E
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	b _080FB68A
_080FB67E:
	ldr r0, [r3, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
_080FB68A:
	str r0, [r3, #0x5c]
_080FB68C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FB694
sub_080FB694: @ 0x080FB694
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080FB6AA
	adds r0, r4, #0
	bl sub_0810010C
	b _080FB6F4
_080FB6AA:
	ldr r2, _080FB6FC @ =sub_080FB700
	adds r0, r4, #0
	movs r1, #0x22
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
	beq _080FB6D8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080FB6D8:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x3e
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
_080FB6F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FB6FC: .4byte sub_080FB700

	thumb_func_start sub_080FB700
sub_080FB700: @ 0x080FB700
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r5
	ldr r0, [r5, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080FB730
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x3b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080FB730
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080FB730:
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #0x22
	adds r6, r1, #0
	cmp r0, #5
	bls _080FB740
	b _080FB9F0
_080FB740:
	lsls r0, r0, #2
	ldr r1, _080FB74C @ =_080FB750
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080FB74C: .4byte _080FB750
_080FB750: @ jump table
	.4byte _080FB768 @ case 0
	.4byte _080FB8D8 @ case 1
	.4byte _080FB8F4 @ case 2
	.4byte _080FB910 @ case 3
	.4byte _080FB9B0 @ case 4
	.4byte _080FB9D8 @ case 5
_080FB768:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _080FB77E
	adds r0, r5, #0
	bl sub_080FD590
	movs r0, #1
	strb r0, [r7]
_080FB77E:
	ldrb r0, [r5, #1]
	cmp r0, #0x22
	bne _080FB7F6
	adds r0, r5, #0
	bl sub_080FC9C8
	ldr r1, _080FB8BC @ =gKirbys
	ldr r0, _080FB8C0 @ =gUnk_0203AD3C
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
	bne _080FB7F6
	ldrb r0, [r5]
	cmp r0, #0
	bne _080FB7B6
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FB7F6
_080FB7B6:
	ldr r1, _080FB8C4 @ =gUnk_08D60FA4
	ldr r4, _080FB8C8 @ =gSongTable
	ldr r2, _080FB8CC @ =0x000010C4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FB7DC
	movs r1, #0x86
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FB7F6
_080FB7DC:
	cmp r3, #0
	beq _080FB7EE
	ldr r0, _080FB8D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FB7F6
_080FB7EE:
	movs r0, #0x86
	lsls r0, r0, #2
	bl m4aSongNumStart
_080FB7F6:
	ldrb r0, [r5, #1]
	cmp r0, #0x22
	bls _080FB866
	ldr r2, _080FB8BC @ =gKirbys
	ldr r0, _080FB8C0 @ =gUnk_0203AD3C
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
	bne _080FB852
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r1, #0xe4
	lsls r1, r1, #2
	movs r4, #0xe5
	lsls r4, r4, #2
	movs r2, #0
	str r2, [sp]
	ldrh r2, [r5, #4]
	str r2, [sp, #4]
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CD98
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r1, _080FB8D4 @ =0x00000391
	movs r2, #2
	str r2, [sp]
	ldrh r2, [r5, #4]
	str r2, [sp, #4]
	movs r2, #0
	adds r3, r4, #0
	bl sub_0803CD98
_080FB852:
	ldrh r0, [r5, #4]
	adds r0, #4
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080FB866
	strh r1, [r5, #4]
_080FB866:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FB898
	movs r2, #4
	ldrsh r1, [r5, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080FB898
	movs r0, #0x23
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0x52
	movs r1, #0
	movs r0, #0x84
	lsls r0, r0, #3
	strh r0, [r2]
	strb r1, [r7]
_080FB898:
	ldrb r0, [r5, #1]
	cmp r0, #7
	bhi _080FB8A0
	b _080FB9F0
_080FB8A0:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080FB8B0
	b _080FB9F0
_080FB8B0:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	b _080FB9F0
	.align 2, 0
_080FB8BC: .4byte gKirbys
_080FB8C0: .4byte gUnk_0203AD3C
_080FB8C4: .4byte gUnk_08D60FA4
_080FB8C8: .4byte gSongTable
_080FB8CC: .4byte 0x000010C4
_080FB8D0: .4byte gUnk_0203AD10
_080FB8D4: .4byte 0x00000391
_080FB8D8:
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x3f
	ble _080FB8E6
	b _080FB9F0
_080FB8E6:
	movs r0, #0x24
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	b _080FB9EE
_080FB8F4:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FB9F0
	movs r2, #0
	movs r0, #0x25
	strb r0, [r6]
	ldr r0, [r5, #8]
	subs r1, #5
	ands r0, r1
	str r0, [r5, #8]
	strh r2, [r5, #4]
	b _080FB9F0
_080FB910:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080FB9F0
	ldr r1, _080FB998 @ =gKirbys
	ldr r0, _080FB99C @ =gUnk_0203AD3C
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
	bne _080FB98A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080FB94A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FB98A
_080FB94A:
	ldr r1, _080FB9A0 @ =gUnk_08D60FA4
	ldr r4, _080FB9A4 @ =gSongTable
	ldr r2, _080FB9A8 @ =0x00001264
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FB970
	movs r1, #0x93
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FB98A
_080FB970:
	cmp r3, #0
	beq _080FB982
	ldr r0, _080FB9AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FB98A
_080FB982:
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_080FB98A:
	movs r0, #0x26
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	b _080FB9EE
	.align 2, 0
_080FB998: .4byte gKirbys
_080FB99C: .4byte gUnk_0203AD3C
_080FB9A0: .4byte gUnk_08D60FA4
_080FB9A4: .4byte gSongTable
_080FB9A8: .4byte 0x00001264
_080FB9AC: .4byte gUnk_0203AD10
_080FB9B0:
	ldrb r0, [r5, #1]
	cmp r0, #0x2a
	bls _080FB9F0
	movs r2, #0
	movs r0, #0x27
	strb r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	strh r2, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x40
	b _080FB9EC
_080FB9D8:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _080FB9F0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
_080FB9EC:
	orrs r0, r1
_080FB9EE:
	str r0, [r5, #8]
_080FB9F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FB9FC
sub_080FB9FC: @ 0x080FB9FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	str r7, [sp, #0x28]
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FBAA0
	adds r4, r7, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r7, #0x40]
	adds r1, r2, r1
	adds r3, r7, #0
	adds r3, #0xa8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ldr r5, _080FBA58 @ =0xFFFFF800
	adds r0, r0, r5
	cmp r1, r0
	blt _080FBA5C
	adds r2, r7, #0
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
	b _080FBB1C
	.align 2, 0
_080FBA58: .4byte 0xFFFFF800
_080FBA5C:
	adds r4, r7, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r7, #0
	adds r3, #0xa4
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080FBB20
	adds r2, r7, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	ldrsh r1, [r3, r5]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080FBA9C @ =0xFFFFF800
	adds r0, r0, r2
	b _080FBB1C
	.align 2, 0
_080FBA9C: .4byte 0xFFFFF800
_080FBAA0:
	adds r4, r7, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r7, #0x40]
	adds r1, r2, r1
	adds r3, r7, #0
	adds r3, #0xa4
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	cmp r1, r0
	bgt _080FBAE4
	adds r2, r7, #0
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
	ldr r2, _080FBAE0 @ =0xFFFFF800
	adds r0, r0, r2
	b _080FBB1C
	.align 2, 0
_080FBAE0: .4byte 0xFFFFF800
_080FBAE4:
	adds r4, r7, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r7, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080FBB34 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080FBB20
	adds r2, r7, #0
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
	adds r0, r0, r5
_080FBB1C:
	subs r1, r1, r0
	str r1, [r7, #0x40]
_080FBB20:
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0x2a
	beq _080FBB38
	cmp r1, #0x2b
	bne _080FBB32
	b _080FBD7C
_080FBB32:
	b _080FBFC0
	.align 2, 0
_080FBB34: .4byte 0xFFFFF800
_080FBB38:
	ldrh r0, [r7, #4]
	adds r0, #1
	movs r3, #0
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt _080FBB96
	adds r1, r7, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080FBB84 @ =0xFFFFFEF0
	cmp r0, r2
	bge _080FBB5E
	strh r2, [r1]
_080FBB5E:
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0x10
	ble _080FBB96
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080FBB88
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080FBB96
	b _080FBB94
	.align 2, 0
_080FBB84: .4byte 0xFFFFFEF0
_080FBB88:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080FBB96
_080FBB94:
	strh r3, [r1]
_080FBB96:
	movs r5, #4
	ldrsh r0, [r7, r5]
	cmp r0, #0x30
	bne _080FBBBA
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #1
	adds r1, r7, #0
	bl sub_0806FE64
	ldr r1, _080FBC1C @ =gUnk_0835719C
	adds r0, r7, #0
	bl sub_080860A8
_080FBBBA:
	ldrh r0, [r7, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x8f
	ble _080FBC00
	ldr r2, _080FBC20 @ =gUnk_083571BC
	asrs r0, r1, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x54
	strb r0, [r3]
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r0, #1
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r4, r7, #0
	adds r4, #0x55
	strb r0, [r4]
	ldr r2, [sp, #0x28]
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x54
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r4]
	adds r0, #0x55
	strb r1, [r0]
_080FBC00:
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0xcf
	bgt _080FBC0A
	b _080FBFC0
_080FBC0A:
	movs r3, #1
	mov sb, r3
	ldr r1, _080FBC1C @ =gUnk_0835719C
	adds r0, r7, #0
	bl sub_080860A8
	movs r5, #0
	b _080FBCF6
	.align 2, 0
_080FBC1C: .4byte gUnk_0835719C
_080FBC20: .4byte gUnk_083571BC
_080FBC24:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080FBC8C @ =gKirbys
	adds r4, r1, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080FBCF0
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FBCF0
	adds r0, r4, #0
	bl sub_0805BEC4
	cmp r0, #0
	bne _080FBCF0
	ldr r2, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080FBCF0
	orrs r1, r2
	str r1, [r4, #8]
	ldr r3, _080FBC90 @ =0x00000103
	adds r2, r4, r3
	ldrb r0, [r2]
	cmp r0, #0xe
	beq _080FBC7E
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
_080FBC7E:
	ldrb r0, [r2]
	cmp r0, #0xb
	bne _080FBC94
	adds r0, r4, #0
	bl sub_080641FC
	b _080FBCF0
	.align 2, 0
_080FBC8C: .4byte gKirbys
_080FBC90: .4byte 0x00000103
_080FBC94:
	cmp r0, #0xe
	bne _080FBCA0
	adds r0, r4, #0
	bl sub_0806A798
	b _080FBCF0
_080FBCA0:
	cmp r0, #0x13
	bne _080FBCC6
	ldr r1, [r4, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080FBCB6
	adds r0, r4, #0
	bl sub_08047EF0
	b _080FBCF0
_080FBCB6:
	movs r0, #0x60
	ands r1, r0
	cmp r1, #0
	bne _080FBCE2
	adds r0, r4, #0
	bl sub_0803FE74
	b _080FBCF0
_080FBCC6:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080FBCD8
	adds r0, r4, #0
	bl sub_08059810
	b _080FBCF0
_080FBCD8:
	ldr r0, [r4, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080FBCEA
_080FBCE2:
	adds r0, r4, #0
	bl sub_08044EA8
	b _080FBCF0
_080FBCEA:
	adds r0, r4, #0
	bl sub_0803FE74
_080FBCF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080FBCF6:
	ldr r0, _080FBD70 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	blo _080FBC24
	movs r5, #0
	ldr r0, _080FBD70 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r5, r1
	bhs _080FBD56
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r4, [r0]
	ldr r0, _080FBD74 @ =gUnk_0202371C
	mov r8, r0
	ldr r6, _080FBD78 @ =gKirbys
	adds r3, r1, #0
_080FBD16:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r2, r0, r6
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r4
	bne _080FBD4C
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _080FBD4C
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	add r0, r8
	ldr r0, [r0]
	cmp r0, #4
	beq _080FBD4C
	movs r1, #0
	mov sb, r1
_080FBD4C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r3
	blo _080FBD16
_080FBD56:
	mov r2, sb
	cmp r2, #0
	bne _080FBD5E
	b _080FBFC0
_080FBD5E:
	movs r0, #0x2b
	mov r3, sl
	strb r0, [r3]
	ldr r0, [r7, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	b _080FBFC0
	.align 2, 0
_080FBD70: .4byte gUnk_0203AD44
_080FBD74: .4byte gUnk_0202371C
_080FBD78: .4byte gKirbys
_080FBD7C:
	ldrb r0, [r7, #1]
	cmp r0, #0x10
	bne _080FBDF2
	movs r0, #3
	adds r1, r7, #0
	bl sub_0806FE64
	ldr r1, _080FBEC8 @ =gKirbys
	ldr r0, _080FBECC @ =gUnk_0203AD3C
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
	bne _080FBDF2
	ldrb r0, [r7]
	cmp r0, #0
	bne _080FBDB6
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FBDF2
_080FBDB6:
	ldr r1, _080FBED0 @ =gUnk_08D60FA4
	ldr r4, _080FBED4 @ =gSongTable
	ldr r5, _080FBED8 @ =0x000010CC
	adds r0, r4, r5
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FBDDA
	ldr r1, _080FBEDC @ =0x000010C8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FBDF2
_080FBDDA:
	cmp r3, #0
	beq _080FBDEC
	ldr r0, _080FBEE0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FBDF2
_080FBDEC:
	ldr r0, _080FBEE4 @ =0x00000219
	bl m4aSongNumStart
_080FBDF2:
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080FBDFE
	b _080FBFC0
_080FBDFE:
	ldr r2, _080FBEC8 @ =gKirbys
	ldr r0, _080FBECC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	str r1, [sp, #0x2c]
	ldrh r2, [r1]
	cmp r0, r2
	bne _080FBEBE
	movs r3, #0xc0
	lsls r3, r3, #0x13
	mov sb, r3
	str r3, [sp]
	mov r1, sp
	movs r4, #0
	mov sl, r4
	movs r4, #0
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r5, sl
	strb r5, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r2, sp
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r1, sb
	str r1, [sp]
	mov r1, sp
	ldr r0, _080FBEE8 @ =0x00000391
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r2, sl
	strb r2, [r0, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x2f
	ldrb r0, [r0]
	ands r5, r0
	strb r5, [r1, #0x1f]
	mov r3, r8
	str r3, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080FBEBE:
	movs r5, #0
	ldr r0, _080FBEEC @ =gUnk_0203AD44
	adds r6, r7, #0
	adds r6, #0x56
	b _080FBF28
	.align 2, 0
_080FBEC8: .4byte gKirbys
_080FBECC: .4byte gUnk_0203AD3C
_080FBED0: .4byte gUnk_08D60FA4
_080FBED4: .4byte gSongTable
_080FBED8: .4byte 0x000010CC
_080FBEDC: .4byte 0x000010C8
_080FBEE0: .4byte gUnk_0203AD10
_080FBEE4: .4byte 0x00000219
_080FBEE8: .4byte 0x00000391
_080FBEEC: .4byte gUnk_0203AD44
_080FBEF0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080FBF40 @ =gKirbys
	adds r1, r1, r0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080FBF20
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x2c]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FBF20
	adds r0, r1, #0
	bl sub_0804BAD8
_080FBF20:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080FBF44 @ =gUnk_0203AD44
_080FBF28:
	ldrb r0, [r0]
	cmp r5, r0
	blo _080FBEF0
	movs r4, #0
	ldr r1, _080FBF48 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _080FBF4C @ =gUnk_020229E0
	b _080FBF64
	.align 2, 0
_080FBF40: .4byte gKirbys
_080FBF44: .4byte gUnk_0203AD44
_080FBF48: .4byte gUnk_020229D4
_080FBF4C: .4byte gUnk_020229E0
_080FBF50:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080FBF6C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080FBF64:
	cmp r0, #0
	bne _080FBF50
	orrs r2, r3
	str r2, [r1]
_080FBF6C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x8e
	strb r0, [r1, #0xc]
	movs r0, #5
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
	ldrb r0, [r6]
	bl CreateObject
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	b _080FBFD6
_080FBFC0:
	adds r0, r7, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080FBFD6
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080FBFD6:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FBFE8
sub_080FBFE8: @ 0x080FBFE8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FC018 @ =sub_080FC150
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FC01C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FC020
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FC028
	.align 2, 0
_080FC018: .4byte sub_080FC150
_080FC01C: .4byte sub_0803DCCC
_080FC020:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FC028:
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
	ldr r0, _080FC0AC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FC078
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080FC078:
	adds r0, r4, #0
	adds r0, #0x64
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	subs r0, #3
	strb r3, [r0]
	ldr r2, [r4, #8]
	ldr r0, _080FC0B0 @ =0x50400100
	orrs r2, r0
	ldr r0, [r4, #0x68]
	ldr r1, _080FC0B4 @ =0x20002003
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080FC0B8
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080FC0BA
	.align 2, 0
_080FC0AC: .4byte gUnk_03000510
_080FC0B0: .4byte 0x50400100
_080FC0B4: .4byte 0x20002003
_080FC0B8:
	orrs r2, r3
_080FC0BA:
	str r2, [r4, #8]
	movs r6, #0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r0, _080FC134 @ =gUnk_083570EC
	ldrh r3, [r0]
	ldrb r0, [r0, #2]
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x30
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	strb r6, [r5]
	ldr r2, _080FC138 @ =gKirbys
	ldr r0, _080FC13C @ =gUnk_0203AD3C
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
	bne _080FC144
	ldr r6, _080FC140 @ =0x00000391
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FC146
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080FC146
	.align 2, 0
_080FC134: .4byte gUnk_083570EC
_080FC138: .4byte gKirbys
_080FC13C: .4byte gUnk_0203AD3C
_080FC140: .4byte 0x00000391
_080FC144:
	strb r6, [r5]
_080FC146:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080FC150
sub_080FC150: @ 0x080FC150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080FC178 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FC17C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FC184
	.align 2, 0
_080FC178: .4byte gCurTask
_080FC17C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FC184:
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r0, [r5, #0x70]
	mov r8, r0
	ldr r1, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FC1A4
	ldr r0, [r2]
	bl TaskDestroy
	b _080FC5DE
_080FC1A4:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080FC1B4
	orrs r1, r3
	str r1, [r5, #8]
	b _080FC5DE
_080FC1B4:
	ldr r2, _080FC27C @ =0xFFFFFBF6
	ands r2, r1
	str r2, [r5, #8]
	mov r3, r8
	ldr r1, [r3, #8]
	ldr r0, _080FC280 @ =0x0000040C
	ands r1, r0
	orrs r1, r2
	str r1, [r5, #8]
	ldr r3, [r3, #8]
	movs r2, #1
	adds r0, r2, #0
	bics r0, r3
	orrs r1, r0
	str r1, [r5, #8]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x60
	strh r0, [r4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x44]
	ldr r0, _080FC284 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r0, [r3]
	lsls r2, r0
	movs r0, #0x10
	orrs r2, r0
	ands r1, r2
	mov sl, r4
	str r3, [sp, #0x28]
	cmp r1, #0
	beq _080FC21A
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x55
	strb r0, [r1]
_080FC21A:
	ldr r2, _080FC288 @ =gKirbys
	ldr r0, _080FC28C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FC2CC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080FC298
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FC2F0
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x30
	bl sub_0803DE54
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080FC290 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r2, _080FC294 @ =0x0400000A
	adds r0, r6, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	b _080FC2F0
	.align 2, 0
_080FC27C: .4byte 0xFFFFFBF6
_080FC280: .4byte 0x0000040C
_080FC284: .4byte gUnk_03000510
_080FC288: .4byte gKirbys
_080FC28C: .4byte gUnk_0203AD3C
_080FC290: .4byte 0xFFF7FFFF
_080FC294: .4byte 0x0400000A
_080FC298:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FC2F0
	movs r0, #0x30
	bl sub_081570B0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080FC2C4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r2, _080FC2C8 @ =0x0400000A
	adds r0, r6, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FC2F0
	.align 2, 0
_080FC2C4: .4byte 0xFFF7FFFF
_080FC2C8: .4byte 0x0400000A
_080FC2CC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080FC2E6
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080FC2E6
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080FC2E6:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080FC2F0:
	ldr r2, _080FC334 @ =gKirbys
	ldr r0, _080FC338 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FC340
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FC348
	ldr r7, _080FC33C @ =0x00000391
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FC348
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FC348
	.align 2, 0
_080FC334: .4byte gKirbys
_080FC338: .4byte gUnk_0203AD3C
_080FC33C: .4byte 0x00000391
_080FC340:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080FC348:
	ldr r4, _080FC3A4 @ =gUnk_083570EC
	mov r3, r8
	adds r3, #0x83
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrh r2, [r1]
	ldrh r0, [r6, #0xc]
	cmp r0, r2
	bne _080FC364
	ldrb r0, [r6, #0x1a]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080FC370
_080FC364:
	strh r2, [r6, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	strb r0, [r6, #0x1a]
_080FC370:
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	bne _080FC378
	b _080FC5DE
_080FC378:
	ldr r0, _080FC3A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldr r3, [sp, #0x28]
	ldrb r3, [r3]
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FC3AC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080FC3AC
	adds r0, r5, #0
	bl sub_0803D9A8
	b _080FC5DE
	.align 2, 0
_080FC3A4: .4byte gUnk_083570EC
_080FC3A8: .4byte gUnk_03000510
_080FC3AC:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _080FC3DE
	ldr r0, [r5, #8]
	ldr r1, _080FC3F8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	movs r1, #0x26
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080FC3DE
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080FC3D4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
_080FC3D4:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
_080FC3DE:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FC3FC
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FC406
	.align 2, 0
_080FC3F8: .4byte 0xFFFFFDFF
_080FC3FC:
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, _080FC488 @ =0xFFFFFBFF
	ands r1, r2
_080FC406:
	str r1, [r0, #8]
	mov sb, r0
	ldr r3, [r5, #8]
	movs r4, #8
	ands r4, r3
	movs r0, #0x2c
	adds r0, r0, r5
	mov r8, r0
	cmp r4, #0
	bne _080FC4A4
	adds r0, r5, #0
	adds r0, #0x2b
	adds r2, r5, #0
	adds r2, #0x2a
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080FC434
	ldrh r0, [r5, #0x28]
	ldrh r1, [r5, #0x1c]
	cmp r0, r1
	beq _080FC44C
_080FC434:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080FC44C
	strb r4, [r5, #1]
	strh r4, [r5, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #8]
_080FC44C:
	mov r0, sb
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FC48C
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080FC4A4
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FC4A4
	movs r0, #0xff
	strb r0, [r6]
	ldr r0, [r5, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r5, #8]
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sb
	bl sub_08155128
	b _080FC4A4
	.align 2, 0
_080FC488: .4byte 0xFFFFFBFF
_080FC48C:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080FC4A4:
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r3, _080FC544 @ =gCurLevelInfo
	ldr r7, _080FC548 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x54
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x20]
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x55
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FC4FC
	mov r0, ip
	strb r0, [r6]
	strb r0, [r2]
_080FC4FC:
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080FC55A
	ldr r2, _080FC54C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FC55A
	ldr r1, _080FC550 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x20]
	adds r0, r0, r2
	strh r0, [r5, #0x20]
	ldrh r0, [r1, #2]
	ldrh r1, [r5, #0x22]
	adds r0, r0, r1
	strh r0, [r5, #0x22]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080FC554
	mov r0, sb
	bl sub_081564D8
	b _080FC55A
	.align 2, 0
_080FC544: .4byte gCurLevelInfo
_080FC548: .4byte gUnk_0203AD3C
_080FC54C: .4byte gKirbys
_080FC550: .4byte gUnk_0203AD18
_080FC554:
	mov r0, sb
	bl sub_0815604C
_080FC55A:
	ldr r1, [r5, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080FC56C
	ldr r0, [r5, #8]
	ldr r1, _080FC598 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080FC56C:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080FC5DE
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080FC5A4
	ldr r2, _080FC59C @ =gCurLevelInfo
	ldr r3, [sp, #0x28]
	ldrb r1, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080FC5A0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080FC5A6
	.align 2, 0
_080FC598: .4byte 0xFFFFFDFF
_080FC59C: .4byte gCurLevelInfo
_080FC5A0: .4byte 0x0000065E
_080FC5A4:
	movs r1, #0xff
_080FC5A6:
	cmp r1, #0xff
	beq _080FC5DE
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080FC5F0 @ =gUnk_02022EB0
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
	ldr r2, _080FC5F4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080FC5DE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FC5F0: .4byte gUnk_02022EB0
_080FC5F4: .4byte gUnk_02022F50

	thumb_func_start sub_080FC5F8
sub_080FC5F8: @ 0x080FC5F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FC628 @ =sub_080FC6D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FC62C @ =sub_08100170
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FC630
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FC638
	.align 2, 0
_080FC628: .4byte sub_080FC6D4
_080FC62C: .4byte sub_08100170
_080FC630:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FC638:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	movs r7, #0
	strh r0, [r6]
	movs r0, #0x40
	strh r0, [r4, #0x3c]
	ldr r0, _080FC6B8 @ =0x0000FFEB
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FC6BC @ =0x00000392
	str r2, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080FC6C0 @ =gKirbys
	ldr r0, _080FC6C4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080FC6C8
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FC6CA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080FC6CA
	.align 2, 0
_080FC6B8: .4byte 0x0000FFEB
_080FC6BC: .4byte 0x00000392
_080FC6C0: .4byte gKirbys
_080FC6C4: .4byte gUnk_0203AD3C
_080FC6C8:
	strb r7, [r5]
_080FC6CA:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080FC6D4
sub_080FC6D4: @ 0x080FC6D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080FC6F4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FC6F8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FC700
	.align 2, 0
_080FC6F4: .4byte gCurTask
_080FC6F8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FC700:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FC718
	ldr r0, [r2]
	bl TaskDestroy
	b _080FC9C0
_080FC718:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FC72A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FC9C0
_080FC72A:
	ldr r2, _080FC794 @ =gKirbys
	ldr r0, _080FC798 @ =gUnk_0203AD3C
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
	bne _080FC7DC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FC7A4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FC802
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FC79C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FC7A0 @ =0x0400000A
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
	b _080FC802
	.align 2, 0
_080FC794: .4byte gKirbys
_080FC798: .4byte gUnk_0203AD3C
_080FC79C: .4byte 0xFFF7FFFF
_080FC7A0: .4byte 0x0400000A
_080FC7A4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FC802
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FC7D4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FC7D8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FC802
	.align 2, 0
_080FC7D4: .4byte 0xFFF7FFFF
_080FC7D8: .4byte 0x0400000A
_080FC7DC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FC7F8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FC7F8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FC7F8:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FC802:
	ldr r2, _080FC844 @ =gKirbys
	ldr r0, _080FC848 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r2, [r7]
	cmp r0, r2
	bne _080FC84C
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FC854
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FC854
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FC854
	.align 2, 0
_080FC844: .4byte gKirbys
_080FC848: .4byte gUnk_0203AD3C
_080FC84C:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FC854:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FC8A8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FC872
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FC872
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FC872:
	cmp r3, #0
	beq _080FC8A8
	ldr r0, _080FC8A4 @ =gUnk_03000510
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
	beq _080FC914
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FC914
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FC9C0
	.align 2, 0
_080FC8A4: .4byte gUnk_03000510
_080FC8A8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FC90C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FC8E6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FC8E6
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FC8E6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FC8E6
	movs r3, #4
_080FC8E6:
	ldr r0, _080FC910 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FC914
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FC914
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FC9C0
	.align 2, 0
_080FC90C: .4byte gKirbys
_080FC910: .4byte gUnk_03000510
_080FC914:
	ldr r0, _080FC990 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _080FC958
	ldr r6, _080FC994 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080FC998 @ =gUnk_02026D50
_080FC926:
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
	bne _080FC950
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080FC96A
_080FC950:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080FC926
_080FC958:
	movs r0, #1
	cmp r0, #0
	beq _080FC96A
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080FC96A:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r5, #6]
	mov r0, ip
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080FC99C
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r5, #6]
	b _080FC9C0
	.align 2, 0
_080FC990: .4byte gUnk_0203AD44
_080FC994: .4byte gCurLevelInfo
_080FC998: .4byte gUnk_02026D50
_080FC99C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080FC9BA
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
_080FC9BA:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FC9C0:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FC9C8
sub_080FC9C8: @ 0x080FC9C8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FC9F8 @ =sub_080FCA94
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FC9FC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FCA00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FCA08
	.align 2, 0
_080FC9F8: .4byte sub_080FCA94
_080FC9FC: .4byte sub_0803DCCC
_080FCA00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FCA08:
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
	movs r6, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FCA7C @ =0x00000392
	movs r0, #1
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r4, #0x2b
	strb r6, [r4]
	ldr r2, _080FCA80 @ =gKirbys
	ldr r0, _080FCA84 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FCA88
	movs r5, #0xe4
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FCA8A
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FCA8A
	.align 2, 0
_080FCA7C: .4byte 0x00000392
_080FCA80: .4byte gKirbys
_080FCA84: .4byte gUnk_0203AD3C
_080FCA88:
	strb r6, [r4]
_080FCA8A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FCA94
sub_080FCA94: @ 0x080FCA94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080FCAB8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FCABC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FCAC4
	.align 2, 0
_080FCAB8: .4byte gCurTask
_080FCABC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FCAC4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FCAE0
	ldr r0, [r2]
	bl TaskDestroy
	b _080FCD8C
_080FCAE0:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FCAF2
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FCD8C
_080FCAF2:
	ldr r2, _080FCB5C @ =gKirbys
	ldr r0, _080FCB60 @ =gUnk_0203AD3C
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
	bne _080FCBA4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FCB6C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FCBCA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FCB64 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FCB68 @ =0x0400000A
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
	b _080FCBCA
	.align 2, 0
_080FCB5C: .4byte gKirbys
_080FCB60: .4byte gUnk_0203AD3C
_080FCB64: .4byte 0xFFF7FFFF
_080FCB68: .4byte 0x0400000A
_080FCB6C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FCBCA
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FCB9C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FCBA0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FCBCA
	.align 2, 0
_080FCB9C: .4byte 0xFFF7FFFF
_080FCBA0: .4byte 0x0400000A
_080FCBA4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FCBC0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FCBC0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FCBC0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FCBCA:
	ldr r2, _080FCC0C @ =gKirbys
	ldr r0, _080FCC10 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080FCC14
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FCC1C
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FCC1C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FCC1C
	.align 2, 0
_080FCC0C: .4byte gKirbys
_080FCC10: .4byte gUnk_0203AD3C
_080FCC14:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FCC1C:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FCC70
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FCC3A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FCC3A
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FCC3A:
	cmp r3, #0
	beq _080FCC70
	ldr r0, _080FCC6C @ =gUnk_03000510
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
	beq _080FCCDC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FCCDC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FCD8C
	.align 2, 0
_080FCC6C: .4byte gUnk_03000510
_080FCC70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FCCD4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FCCAE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FCCAE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FCCAE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FCCAE
	movs r3, #4
_080FCCAE:
	ldr r0, _080FCCD8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FCCDC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FCCDC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FCD8C
	.align 2, 0
_080FCCD4: .4byte gKirbys
_080FCCD8: .4byte gUnk_03000510
_080FCCDC:
	ldr r0, _080FCD5C @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #0x3e]
	mov ip, r1
	cmp r0, #0
	beq _080FCD20
	ldr r6, _080FCD60 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080FCD64 @ =gUnk_02026D50
_080FCCEE:
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
	bne _080FCD18
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080FCD32
_080FCD18:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080FCCEE
_080FCD20:
	movs r0, #1
	cmp r0, #0
	beq _080FCD32
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080FCD32:
	mov r0, ip
	subs r0, #0x15
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080FCD68
	mov r0, r8
	bl sub_080FCD98
	mov r0, r8
	bl sub_080FD194
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FCD8C
	.align 2, 0
_080FCD5C: .4byte gUnk_0203AD44
_080FCD60: .4byte gCurLevelInfo
_080FCD64: .4byte gUnk_02026D50
_080FCD68:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080FCD86
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
_080FCD86:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FCD8C:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FCD98
sub_080FCD98: @ 0x080FCD98
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FCDC8 @ =sub_080FCE70
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FCDCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FCDD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FCDD8
	.align 2, 0
_080FCDC8: .4byte sub_080FCE70
_080FCDCC: .4byte sub_0803DCCC
_080FCDD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FCDD8:
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
	movs r6, #0
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FCE58 @ =0x00000392
	movs r0, #2
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl sub_080709F8
	adds r4, #0x2b
	strb r6, [r4]
	ldr r2, _080FCE5C @ =gKirbys
	ldr r0, _080FCE60 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FCE64
	movs r5, #0xe4
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FCE66
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FCE66
	.align 2, 0
_080FCE58: .4byte 0x00000392
_080FCE5C: .4byte gKirbys
_080FCE60: .4byte gUnk_0203AD3C
_080FCE64:
	strb r6, [r4]
_080FCE66:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FCE70
sub_080FCE70: @ 0x080FCE70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080FCE94 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FCE98
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FCEA0
	.align 2, 0
_080FCE94: .4byte gCurTask
_080FCE98:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FCEA0:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FCEBC
	ldr r0, [r2]
	bl TaskDestroy
	b _080FD184
_080FCEBC:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FCECE
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FD184
_080FCECE:
	ldr r2, _080FCF38 @ =gKirbys
	ldr r0, _080FCF3C @ =gUnk_0203AD3C
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
	bne _080FCF80
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FCF48
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FCFA6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FCF40 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FCF44 @ =0x0400000A
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
	b _080FCFA6
	.align 2, 0
_080FCF38: .4byte gKirbys
_080FCF3C: .4byte gUnk_0203AD3C
_080FCF40: .4byte 0xFFF7FFFF
_080FCF44: .4byte 0x0400000A
_080FCF48:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FCFA6
	movs r0, #4
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FCF78 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FCF7C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FCFA6
	.align 2, 0
_080FCF78: .4byte 0xFFF7FFFF
_080FCF7C: .4byte 0x0400000A
_080FCF80:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FCF9C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FCF9C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FCF9C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FCFA6:
	ldr r2, _080FCFE8 @ =gKirbys
	ldr r0, _080FCFEC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080FCFF0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FCFF8
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FCFF8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FCFF8
	.align 2, 0
_080FCFE8: .4byte gKirbys
_080FCFEC: .4byte gUnk_0203AD3C
_080FCFF0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FCFF8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FD04C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FD016
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FD016
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FD016:
	cmp r3, #0
	beq _080FD04C
	ldr r0, _080FD048 @ =gUnk_03000510
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
	beq _080FD0B8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FD0B8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FD184
	.align 2, 0
_080FD048: .4byte gUnk_03000510
_080FD04C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FD0B0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FD08A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD08A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD08A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD08A
	movs r3, #4
_080FD08A:
	ldr r0, _080FD0B4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FD0B8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FD0B8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FD184
	.align 2, 0
_080FD0B0: .4byte gKirbys
_080FD0B4: .4byte gUnk_03000510
_080FD0B8:
	ldr r0, _080FD154 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #0x3e]
	mov ip, r1
	ldrh r2, [r5, #4]
	mov r8, r2
	cmp r0, #0
	beq _080FD100
	ldr r6, _080FD158 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080FD15C @ =gUnk_02026D50
_080FD0CE:
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
	bne _080FD0F8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080FD112
_080FD0F8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080FD0CE
_080FD100:
	movs r0, #1
	cmp r0, #0
	beq _080FD112
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080FD112:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r4, #0
	orrs r1, r0
	strh r1, [r5, #6]
	mov r0, ip
	subs r0, #0x15
	strh r0, [r5, #0x3e]
	mov r0, r8
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x34
	ble _080FD160
	movs r2, #0xad
	lsls r2, r2, #2
	mov r0, sb
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FD184
	.align 2, 0
_080FD154: .4byte gUnk_0203AD44
_080FD158: .4byte gCurLevelInfo
_080FD15C: .4byte gUnk_02026D50
_080FD160:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080FD17E
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
_080FD17E:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FD184:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FD194
sub_080FD194: @ 0x080FD194
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FD1C4 @ =sub_080FD26C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FD1C8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD1CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FD1D4
	.align 2, 0
_080FD1C4: .4byte sub_080FD26C
_080FD1C8: .4byte sub_0803DCCC
_080FD1CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FD1D4:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r2, #3
	strb r2, [r4]
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
	movs r6, #0
	strh r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FD254 @ =0x00000392
	str r2, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl sub_080709F8
	adds r4, #0x2b
	strb r6, [r4]
	ldr r2, _080FD258 @ =gKirbys
	ldr r0, _080FD25C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FD260
	movs r5, #0xe4
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FD262
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FD262
	.align 2, 0
_080FD254: .4byte 0x00000392
_080FD258: .4byte gKirbys
_080FD25C: .4byte gUnk_0203AD3C
_080FD260:
	strb r6, [r4]
_080FD262:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FD26C
sub_080FD26C: @ 0x080FD26C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080FD290 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD294
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FD29C
	.align 2, 0
_080FD290: .4byte gCurTask
_080FD294:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FD29C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FD2B8
	ldr r0, [r2]
	bl TaskDestroy
	b _080FD580
_080FD2B8:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FD2CA
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FD580
_080FD2CA:
	ldr r2, _080FD334 @ =gKirbys
	ldr r0, _080FD338 @ =gUnk_0203AD3C
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
	bne _080FD37C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FD344
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FD3A2
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FD33C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FD340 @ =0x0400000A
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
	b _080FD3A2
	.align 2, 0
_080FD334: .4byte gKirbys
_080FD338: .4byte gUnk_0203AD3C
_080FD33C: .4byte 0xFFF7FFFF
_080FD340: .4byte 0x0400000A
_080FD344:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FD3A2
	movs r0, #4
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FD374 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FD378 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FD3A2
	.align 2, 0
_080FD374: .4byte 0xFFF7FFFF
_080FD378: .4byte 0x0400000A
_080FD37C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FD398
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FD398
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FD398:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FD3A2:
	ldr r2, _080FD3E4 @ =gKirbys
	ldr r0, _080FD3E8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080FD3EC
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FD3F4
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FD3F4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FD3F4
	.align 2, 0
_080FD3E4: .4byte gKirbys
_080FD3E8: .4byte gUnk_0203AD3C
_080FD3EC:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FD3F4:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FD448
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FD412
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FD412
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FD412:
	cmp r3, #0
	beq _080FD448
	ldr r0, _080FD444 @ =gUnk_03000510
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
	beq _080FD4B4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FD4B4
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FD580
	.align 2, 0
_080FD444: .4byte gUnk_03000510
_080FD448:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FD4AC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FD486
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD486
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD486
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FD486
	movs r3, #4
_080FD486:
	ldr r0, _080FD4B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FD4B4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FD4B4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FD580
	.align 2, 0
_080FD4AC: .4byte gKirbys
_080FD4B0: .4byte gUnk_03000510
_080FD4B4:
	ldr r0, _080FD550 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #0x3e]
	mov ip, r1
	ldrh r2, [r5, #4]
	mov r8, r2
	cmp r0, #0
	beq _080FD4FC
	ldr r6, _080FD554 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080FD558 @ =gUnk_02026D50
_080FD4CA:
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
	bne _080FD4F4
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080FD50E
_080FD4F4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080FD4CA
_080FD4FC:
	movs r0, #1
	cmp r0, #0
	beq _080FD50E
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080FD50E:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r4, #0
	orrs r1, r0
	strh r1, [r5, #6]
	mov r0, ip
	subs r0, #0x15
	strh r0, [r5, #0x3e]
	mov r0, r8
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x34
	ble _080FD55C
	movs r2, #0xad
	lsls r2, r2, #2
	mov r0, sb
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FD580
	.align 2, 0
_080FD550: .4byte gUnk_0203AD44
_080FD554: .4byte gCurLevelInfo
_080FD558: .4byte gUnk_02026D50
_080FD55C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080FD57A
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
_080FD57A:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FD580:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FD590
sub_080FD590: @ 0x080FD590
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FD5C0 @ =sub_080FD6BC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FD5C4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD5C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FD5D0
	.align 2, 0
_080FD5C0: .4byte sub_080FD6BC
_080FD5C4: .4byte sub_0803DCCC
_080FD5C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FD5D0:
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
	movs r6, #0
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080FD6A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FD620
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080FD620:
	adds r0, r4, #0
	adds r0, #0x63
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, _080FD6A4 @ =0x00000392
	movs r0, #4
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	strb r6, [r5]
	ldr r2, _080FD6A8 @ =gKirbys
	ldr r0, _080FD6AC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080FD6B0
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FD6B2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080FD6B2
	.align 2, 0
_080FD6A0: .4byte gUnk_03000510
_080FD6A4: .4byte 0x00000392
_080FD6A8: .4byte gKirbys
_080FD6AC: .4byte gUnk_0203AD3C
_080FD6B0:
	strb r6, [r5]
_080FD6B2:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080FD6BC
sub_080FD6BC: @ 0x080FD6BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _080FD6E0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD6E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FD6EC
	.align 2, 0
_080FD6E0: .4byte gCurTask
_080FD6E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FD6EC:
	adds r5, r0, #0
	ldr r2, _080FD758 @ =gKirbys
	ldr r0, _080FD75C @ =gUnk_0203AD3C
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
	bne _080FD7A0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080FD768
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FD7C4
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
	ldr r1, _080FD760 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FD764 @ =0x0400000A
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
	b _080FD7C4
	.align 2, 0
_080FD758: .4byte gKirbys
_080FD75C: .4byte gUnk_0203AD3C
_080FD760: .4byte 0xFFF7FFFF
_080FD764: .4byte 0x0400000A
_080FD768:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FD7C4
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080FD798 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FD79C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FD7C4
	.align 2, 0
_080FD798: .4byte 0xFFF7FFFF
_080FD79C: .4byte 0x0400000A
_080FD7A0:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080FD7BA
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080FD7BA
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080FD7BA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080FD7C4:
	ldr r2, _080FD80C @ =gKirbys
	ldr r0, _080FD810 @ =gUnk_0203AD3C
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
	bne _080FD814
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FD81C
	movs r6, #0xe4
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FD81C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FD81C
	.align 2, 0
_080FD80C: .4byte gKirbys
_080FD810: .4byte gUnk_0203AD3C
_080FD814:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080FD81C:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FD8A8
	ldr r0, [r5, #8]
	movs r7, #4
	orrs r0, r7
	str r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r6, r8
	ands r6, r0
	cmp r6, #0
	bne _080FD8A2
	adds r4, r5, #0
	adds r4, #0x52
	ldrh r0, [r4]
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080FD858
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_080FD858:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080FD87C
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080FD87C:
	adds r0, r5, #0
	bl sub_0809D8C8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080FD8A2
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	str r0, [r5, #8]
	strh r6, [r4]
_080FD8A2:
	adds r0, r5, #0
	bl sub_0806F8BC
_080FD8A8:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FD8B4
sub_080FD8B4: @ 0x080FD8B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FD8E8 @ =sub_080FD9AC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FD8EC @ =sub_081001A4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD8F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FD8F8
	.align 2, 0
_080FD8E8: .4byte sub_080FD9AC
_080FD8EC: .4byte sub_081001A4
_080FD8F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FD8F8:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r2, #0
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
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	strh r2, [r4, #0x3c]
	strh r2, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080FD984 @ =0xFFFFC800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r1, _080FD988 @ =0xFFFFD000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080FD98C @ =0x000003A3
	str r2, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x50
	adds r3, r6, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080FD990 @ =gKirbys
	ldr r0, _080FD994 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080FD998
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FD99C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080FD99C
	.align 2, 0
_080FD984: .4byte 0xFFFFC800
_080FD988: .4byte 0xFFFFD000
_080FD98C: .4byte 0x000003A3
_080FD990: .4byte gKirbys
_080FD994: .4byte gUnk_0203AD3C
_080FD998:
	mov r1, r8
	strb r1, [r5]
_080FD99C:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080FD9AC
sub_080FD9AC: @ 0x080FD9AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080FD9CC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FD9D0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FD9D8
	.align 2, 0
_080FD9CC: .4byte gCurTask
_080FD9D0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FD9D8:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080FD9EE
	ldr r0, [r2]
	bl TaskDestroy
	b _080FDC5E
_080FD9EE:
	ldr r2, _080FDA54 @ =gKirbys
	ldr r0, _080FDA58 @ =gUnk_0203AD3C
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
	bne _080FDA9C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FDA64
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FDAC2
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x50
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FDA5C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FDA60 @ =0x0400000A
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
	b _080FDAC2
	.align 2, 0
_080FDA54: .4byte gKirbys
_080FDA58: .4byte gUnk_0203AD3C
_080FDA5C: .4byte 0xFFF7FFFF
_080FDA60: .4byte 0x0400000A
_080FDA64:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FDAC2
	movs r0, #0x50
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FDA94 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FDA98 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FDAC2
	.align 2, 0
_080FDA94: .4byte 0xFFF7FFFF
_080FDA98: .4byte 0x0400000A
_080FDA9C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FDAB8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FDAB8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FDAB8:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FDAC2:
	ldr r2, _080FDB08 @ =gKirbys
	ldr r0, _080FDB0C @ =gUnk_0203AD3C
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
	bne _080FDB14
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FDB1C
	ldr r6, _080FDB10 @ =0x000003A3
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FDB1C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FDB1C
	.align 2, 0
_080FDB08: .4byte gKirbys
_080FDB0C: .4byte gUnk_0203AD3C
_080FDB10: .4byte 0x000003A3
_080FDB14:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FDB1C:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FDB70
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FDB3A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FDB3A
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FDB3A:
	cmp r3, #0
	beq _080FDB70
	ldr r0, _080FDB6C @ =gUnk_03000510
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
	beq _080FDBDC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FDBDC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FDC5E
	.align 2, 0
_080FDB6C: .4byte gUnk_03000510
_080FDB70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FDBD4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FDBAE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FDBAE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FDBAE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FDBAE
	movs r3, #4
_080FDBAE:
	ldr r0, _080FDBD8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FDBDC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FDBDC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FDC5E
	.align 2, 0
_080FDBD4: .4byte gKirbys
_080FDBD8: .4byte gUnk_03000510
_080FDBDC:
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r5, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xf
	bgt _080FDC18
	ldr r2, _080FDC34 @ =gUnk_083571BC
	asrs r0, r1, #0x11
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r0, #1
	asrs r0, r0, #1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
_080FDC18:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x34
	ble _080FDC38
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FDC5E
	.align 2, 0
_080FDC34: .4byte gUnk_083571BC
_080FDC38:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080FDC58
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080FDC58:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FDC5E:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FDC68
sub_080FDC68: @ 0x080FDC68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r0, _080FDCA4 @ =sub_080FDF78
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FDCA8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FDCAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FDCB4
	.align 2, 0
_080FDCA4: .4byte sub_080FDF78
_080FDCA8: .4byte sub_0803DCCC
_080FDCAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FDCB4:
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
	ldr r0, _080FDDA0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FDD06
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_080FDD06:
	adds r0, r7, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, _080FDDA4 @ =0x20000043
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x5c]
	cmp r4, #0
	beq _080FDE14
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
	lsls r4, r4, #0xb
	mov r1, r8
	subs r4, r4, r1
	lsrs r4, r4, #5
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #0xb
	subs r0, r0, r2
	lsls r0, r0, #3
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x52
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bge _080FDDAC
	ldr r1, _080FDDA8 @ =0xFFFFFEC0
	cmp r0, r1
	bge _080FDDB6
	b _080FDDB4
	.align 2, 0
_080FDDA0: .4byte gUnk_03000510
_080FDDA4: .4byte 0x20000043
_080FDDA8: .4byte 0xFFFFFEC0
_080FDDAC:
	movs r1, #0xa0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080FDDB6
_080FDDB4:
	strh r1, [r2]
_080FDDB6:
	mov r2, sb
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FDDEC
	ldr r0, [r7, #0x40]
	ldr r2, _080FDDE0 @ =0xFFFFF200
	adds r0, r0, r2
	str r0, [r7, #0x40]
	ldr r0, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080FDDE4 @ =0xFFFFFC80
	cmp r1, r0
	ble _080FDE52
	ldr r0, _080FDDE8 @ =0x0000FC80
	strh r0, [r3]
	b _080FDE52
	.align 2, 0
_080FDDE0: .4byte 0xFFFFF200
_080FDDE4: .4byte 0xFFFFFC80
_080FDDE8: .4byte 0x0000FC80
_080FDDEC:
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
	ldr r0, _080FDE10 @ =0x0000037F
	cmp r1, r0
	bgt _080FDE52
	adds r0, #1
	strh r0, [r3]
	b _080FDE52
	.align 2, 0
_080FDE10: .4byte 0x0000037F
_080FDE14:
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x52
	strh r4, [r0]
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080FDE48
	ldr r0, [r7, #0x40]
	ldr r2, _080FDE44 @ =0xFFFFF200
	adds r0, r0, r2
	str r0, [r7, #0x40]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r7, #8]
	orrs r0, r3
	str r0, [r7, #8]
	b _080FDE52
	.align 2, 0
_080FDE44: .4byte 0xFFFFF200
_080FDE48:
	ldr r0, [r7, #0x40]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r7, #0x40]
_080FDE52:
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #8
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
	ldr r6, _080FDED4 @ =0x00000391
	movs r0, #0x23
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r7, #0
	adds r4, #0x2f
	movs r3, #0
	strb r3, [r4]
	ldr r2, _080FDED8 @ =gKirbys
	ldr r0, _080FDEDC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r1, #0
	ldrh r2, [r5]
	cmp r0, r2
	bne _080FDEE0
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FDEE2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FDEE2
	.align 2, 0
_080FDED4: .4byte 0x00000391
_080FDED8: .4byte gKirbys
_080FDEDC: .4byte gUnk_0203AD3C
_080FDEE0:
	strb r3, [r4]
_080FDEE2:
	ldr r1, _080FDF60 @ =gKirbys
	ldr r0, _080FDF64 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FDF4A
	ldrb r0, [r7]
	cmp r0, #0
	bne _080FDF0A
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FDF4A
_080FDF0A:
	ldr r1, _080FDF68 @ =gUnk_08D60FA4
	ldr r4, _080FDF6C @ =gSongTable
	ldr r2, _080FDF70 @ =0x00000E24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FDF30
	movs r1, #0xe2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FDF4A
_080FDF30:
	cmp r3, #0
	beq _080FDF42
	ldr r0, _080FDF74 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FDF4A
_080FDF42:
	movs r0, #0xe2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FDF4A:
	movs r0, #1
	adds r1, r7, #0
	bl sub_0806FE64
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080FDF60: .4byte gKirbys
_080FDF64: .4byte gUnk_0203AD3C
_080FDF68: .4byte gUnk_08D60FA4
_080FDF6C: .4byte gSongTable
_080FDF70: .4byte 0x00000E24
_080FDF74: .4byte gUnk_0203AD10

	thumb_func_start sub_080FDF78
sub_080FDF78: @ 0x080FDF78
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080FDF98 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FDF9C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FDFA4
	.align 2, 0
_080FDF98: .4byte gCurTask
_080FDF9C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FDFA4:
	adds r5, r0, #0
	ldr r2, _080FE010 @ =gKirbys
	ldr r0, _080FE014 @ =gUnk_0203AD3C
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
	bne _080FE058
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080FE020
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FE07C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080FE018 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FE01C @ =0x0400000A
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
	b _080FE07C
	.align 2, 0
_080FE010: .4byte gKirbys
_080FE014: .4byte gUnk_0203AD3C
_080FE018: .4byte 0xFFF7FFFF
_080FE01C: .4byte 0x0400000A
_080FE020:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080FE07C
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080FE050 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FE054 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FE07C
	.align 2, 0
_080FE050: .4byte 0xFFF7FFFF
_080FE054: .4byte 0x0400000A
_080FE058:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080FE072
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080FE072
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080FE072:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080FE07C:
	ldr r2, _080FE0C0 @ =gKirbys
	ldr r0, _080FE0C4 @ =gUnk_0203AD3C
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
	bne _080FE0CC
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FE0D4
	ldr r6, _080FE0C8 @ =0x00000391
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FE0D4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FE0D4
	.align 2, 0
_080FE0C0: .4byte gKirbys
_080FE0C4: .4byte gUnk_0203AD3C
_080FE0C8: .4byte 0x00000391
_080FE0CC:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080FE0D4:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FE0E6
	adds r1, r5, #0
	adds r1, #0x54
	movs r0, #0x10
	b _080FE0EC
_080FE0E6:
	adds r1, r5, #0
	adds r1, #0x54
	movs r0, #0xf0
_080FE0EC:
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x55
	movs r0, #0xe0
	strb r0, [r1]
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _080FE114
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080FE114
	movs r0, #0
	str r0, [r5, #0x70]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #8]
_080FE114:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FE1C0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080FE192
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080FE158
	ldr r2, _080FE150 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080FE154 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080FE15A
	.align 2, 0
_080FE150: .4byte gCurLevelInfo
_080FE154: .4byte 0x0000065E
_080FE158:
	movs r1, #0xff
_080FE15A:
	cmp r1, #0xff
	beq _080FE192
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080FE1C8 @ =gUnk_02022EB0
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
	ldr r2, _080FE1CC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080FE192:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080FE1BA
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
_080FE1BA:
	adds r0, r5, #0
	bl sub_0806F8BC
_080FE1C0:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080FE1C8: .4byte gUnk_02022EB0
_080FE1CC: .4byte gUnk_02022F50

	thumb_func_start sub_080FE1D0
sub_080FE1D0: @ 0x080FE1D0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FE200 @ =sub_080FE2AC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FE204 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FE208
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FE210
	.align 2, 0
_080FE200: .4byte sub_080FE2AC
_080FE204: .4byte sub_0803DCCC
_080FE208:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FE210:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	ldr r0, [r5, #8]
	movs r2, #1
	movs r1, #1
	ands r0, r1
	ldrh r1, [r4, #6]
	orrs r0, r1
	eors r0, r2
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r5, _080FE294 @ =0x00000391
	movs r0, #0x22
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x2a
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080FE298 @ =gKirbys
	ldr r0, _080FE29C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080FE2A0
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FE2A2
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FE2A2
	.align 2, 0
_080FE294: .4byte 0x00000391
_080FE298: .4byte gKirbys
_080FE29C: .4byte gUnk_0203AD3C
_080FE2A0:
	strb r7, [r4]
_080FE2A2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FE2AC
sub_080FE2AC: @ 0x080FE2AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080FE2D0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FE2D4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FE2DC
	.align 2, 0
_080FE2D0: .4byte gCurTask
_080FE2D4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FE2DC:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FE2F8
	ldr r0, [r2]
	bl TaskDestroy
	b _080FE5BE
_080FE2F8:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FE30A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FE5BE
_080FE30A:
	ldr r2, _080FE374 @ =gKirbys
	ldr r0, _080FE378 @ =gUnk_0203AD3C
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
	bne _080FE3BC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FE384
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FE3E2
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x2a
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FE37C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FE380 @ =0x0400000A
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
	b _080FE3E2
	.align 2, 0
_080FE374: .4byte gKirbys
_080FE378: .4byte gUnk_0203AD3C
_080FE37C: .4byte 0xFFF7FFFF
_080FE380: .4byte 0x0400000A
_080FE384:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FE3E2
	movs r0, #0x2a
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FE3B4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FE3B8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FE3E2
	.align 2, 0
_080FE3B4: .4byte 0xFFF7FFFF
_080FE3B8: .4byte 0x0400000A
_080FE3BC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FE3D8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FE3D8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FE3D8:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FE3E2:
	ldr r2, _080FE424 @ =gKirbys
	ldr r0, _080FE428 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080FE430
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FE438
	ldr r6, _080FE42C @ =0x00000391
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FE438
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FE438
	.align 2, 0
_080FE424: .4byte gKirbys
_080FE428: .4byte gUnk_0203AD3C
_080FE42C: .4byte 0x00000391
_080FE430:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FE438:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FE48C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FE456
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FE456
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FE456:
	cmp r3, #0
	beq _080FE48C
	ldr r0, _080FE488 @ =gUnk_03000510
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
	beq _080FE4F8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FE4F8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FE5BE
	.align 2, 0
_080FE488: .4byte gUnk_03000510
_080FE48C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FE4F0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FE4CA
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FE4CA
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FE4CA
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FE4CA
	movs r3, #4
_080FE4CA:
	ldr r0, _080FE4F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FE4F8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FE4F8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FE5BE
	.align 2, 0
_080FE4F0: .4byte gKirbys
_080FE4F4: .4byte gUnk_03000510
_080FE4F8:
	ldrh r1, [r5, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080FE570
	ldr r1, _080FE598 @ =gKirbys
	ldr r0, _080FE59C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FE570
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080FE530
	mov r0, r8
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FE570
_080FE530:
	ldr r1, _080FE5A0 @ =gUnk_08D60FA4
	ldr r4, _080FE5A4 @ =gSongTable
	ldr r2, _080FE5A8 @ =0x00000E14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FE556
	movs r6, #0xe1
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FE570
_080FE556:
	cmp r3, #0
	beq _080FE568
	ldr r0, _080FE5AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FE570
_080FE568:
	movs r0, #0xe1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080FE570:
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #4]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #0x1c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080FE5B0
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FE5BE
	.align 2, 0
_080FE598: .4byte gKirbys
_080FE59C: .4byte gUnk_0203AD3C
_080FE5A0: .4byte gUnk_08D60FA4
_080FE5A4: .4byte gSongTable
_080FE5A8: .4byte 0x00000E14
_080FE5AC: .4byte gUnk_0203AD10
_080FE5B0:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_0806FAC8
_080FE5BE:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FE5CC
sub_080FE5CC: @ 0x080FE5CC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080FE600 @ =sub_080FE76C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FE604 @ =sub_081001D8
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FE608
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FE610
	.align 2, 0
_080FE600: .4byte sub_080FE76C
_080FE604: .4byte sub_081001D8
_080FE608:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FE610:
	adds r6, r0, #0
	bl sub_0803E380
	movs r5, #0
	movs r0, #2
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x44]
	str r4, [r6, #0x70]
	strh r5, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080FE6A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FE660
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r6, #8]
_080FE660:
	adds r0, r6, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _080FE6AC @ =0x20040043
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0x52
	strh r5, [r0]
	ldr r0, [r6, #0x44]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _080FE6B0
	movs r0, #0x74
	strh r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080FE6BC
	.align 2, 0
_080FE6A8: .4byte gUnk_03000510
_080FE6AC: .4byte 0x20040043
_080FE6B0:
	movs r0, #0x80
	strh r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080FE6BC:
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080FE6E4
	ldr r0, [r6, #0x40]
	ldr r3, _080FE6E0 @ =0xFFFFEE00
	adds r0, r0, r3
	str r0, [r6, #0x40]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r6, #8]
	orrs r0, r2
	str r0, [r6, #8]
	b _080FE6EE
	.align 2, 0
_080FE6E0: .4byte 0xFFFFEE00
_080FE6E4:
	ldr r0, [r6, #0x40]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x40]
_080FE6EE:
	movs r5, #1
	ands r5, r7
	adds r0, r6, #0
	adds r0, #0x62
	strb r5, [r0]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	lsls r4, r5, #2
	adds r5, r4, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080FE954
	adds r1, r4, #1
	adds r0, r6, #0
	bl sub_080FE954
	adds r1, r4, #2
	adds r0, r6, #0
	bl sub_080FE954
	adds r4, #3
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080FE954
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080FEEC0
	adds r0, r6, #0
	movs r1, #0
	bl sub_080FF3F4
	adds r0, r6, #0
	movs r1, #1
	bl sub_080FF3F4
	movs r0, #4
	adds r1, r6, #0
	bl sub_0806FE64
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FE76C
sub_080FE76C: @ 0x080FE76C
	push {r4, r5, lr}
	ldr r0, _080FE788 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FE78C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FE794
	.align 2, 0
_080FE788: .4byte gCurTask
_080FE78C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FE794:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	adds r3, r4, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r5, _080FE7FC @ =0x0000FFFF
	cmp r2, r5
	beq _080FE7B6
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FE7B6
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r3]
_080FE7B6:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _080FE7D4
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080FE7D4
	movs r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
_080FE7D4:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080FE7E2
	b _080FE946
_080FE7E2:
	ldrh r0, [r4, #4]
	subs r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080FE800
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080FE946
	.align 2, 0
_080FE7FC: .4byte 0x0000FFFF
_080FE800:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080FE870
	ldr r1, _080FE8BC @ =gKirbys
	ldr r0, _080FE8C0 @ =gUnk_0203AD3C
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
	bne _080FE870
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FE834
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080FE870
_080FE834:
	ldr r1, _080FE8C4 @ =gUnk_08D60FA4
	ldr r5, _080FE8C8 @ =gSongTable
	ldr r2, _080FE8CC @ =0x00000E1C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080FE858
	ldr r1, _080FE8D0 @ =0x00000E18
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080FE870
_080FE858:
	cmp r3, #0
	beq _080FE86A
	ldr r0, _080FE8D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080FE870
_080FE86A:
	ldr r0, _080FE8D8 @ =0x000001C3
	bl m4aSongNumStart
_080FE870:
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080FE892
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xc
	bne _080FE892
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r4, #8]
_080FE892:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080FE91E
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080FE8E4
	ldr r2, _080FE8DC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080FE8E0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080FE8E6
	.align 2, 0
_080FE8BC: .4byte gKirbys
_080FE8C0: .4byte gUnk_0203AD3C
_080FE8C4: .4byte gUnk_08D60FA4
_080FE8C8: .4byte gSongTable
_080FE8CC: .4byte 0x00000E1C
_080FE8D0: .4byte 0x00000E18
_080FE8D4: .4byte gUnk_0203AD10
_080FE8D8: .4byte 0x000001C3
_080FE8DC: .4byte gCurLevelInfo
_080FE8E0: .4byte 0x0000065E
_080FE8E4:
	movs r1, #0xff
_080FE8E6:
	cmp r1, #0xff
	beq _080FE91E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080FE94C @ =gUnk_02022EB0
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
	ldr r2, _080FE950 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080FE91E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080FE946
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
_080FE946:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FE94C: .4byte gUnk_02022EB0
_080FE950: .4byte gUnk_02022F50

	thumb_func_start sub_080FE954
sub_080FE954: @ 0x080FE954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _080FE994 @ =sub_080FEA70
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FE998 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FE99C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080FE9A4
	.align 2, 0
_080FE994: .4byte sub_080FEA70
_080FE998: .4byte sub_0803DCCC
_080FE99C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080FE9A4:
	adds r4, r6, #0
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r3, #3
	strb r3, [r4]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x38]
	str r7, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x42
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	mov sl, r2
	strh r0, [r1]
	ldr r0, [r7, #8]
	movs r2, #1
	ands r0, r2
	ldrh r1, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	mov r5, sb
	ands r5, r3
	adds r3, r4, #0
	adds r3, #0x40
	lsls r1, r5, #1
	strb r1, [r3]
	ldrh r0, [r4, #6]
	ands r2, r0
	cmp r2, #0
	bne _080FE9F0
	rsbs r0, r1, #0
	strb r0, [r3]
_080FE9F0:
	lsls r1, r5, #3
	orrs r1, r5
	lsls r1, r1, #0xa
	ldr r0, [r7, #0x44]
	subs r0, r0, r1
	str r0, [r6, #0x38]
	adds r1, r6, #0
	adds r1, #0xc
	ldr r5, _080FEA50 @ =0x00000397
	mov r0, sb
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x1e
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	mov r1, sl
	strb r1, [r4]
	ldr r2, _080FEA54 @ =gKirbys
	ldr r0, _080FEA58 @ =gUnk_0203AD3C
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
	bne _080FEA5C
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FEA60
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080FEA5E
	.align 2, 0
_080FEA50: .4byte 0x00000397
_080FEA54: .4byte gKirbys
_080FEA58: .4byte gUnk_0203AD3C
_080FEA5C:
	mov r0, sl
_080FEA5E:
	strb r0, [r4]
_080FEA60:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FEA70
sub_080FEA70: @ 0x080FEA70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r2, _080FEA98 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FEA9C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FEAA4
	.align 2, 0
_080FEA98: .4byte gCurTask
_080FEA9C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FEAA4:
	adds r7, r0, #0
	adds r0, #0x40
	ldrb r0, [r0]
	str r0, [sp, #0x28]
	ldr r5, [r7, #0x44]
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FEAC4
	ldr r0, [r2]
	bl TaskDestroy
	b _080FEEB0
_080FEAC4:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FEAD0
	adds r0, r1, #0
	b _080FEE42
_080FEAD0:
	ldr r2, _080FEB3C @ =gKirbys
	ldr r0, _080FEB40 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x2c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FEB88
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FEB4C
	ldr r0, [r7, #0xc]
	movs r2, #0x26
	adds r2, r2, r7
	mov r8, r2
	cmp r0, #0
	bne _080FEBB4
	ldrh r1, [r7, #0x18]
	ldrb r2, [r2]
	movs r0, #0x2a
	bl sub_0803DE54
	adds r4, r7, #0
	adds r4, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080FEB44 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FEB48 @ =0x0400000A
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
	b _080FEBB4
	.align 2, 0
_080FEB3C: .4byte gKirbys
_080FEB40: .4byte gUnk_0203AD3C
_080FEB44: .4byte 0xFFF7FFFF
_080FEB48: .4byte 0x0400000A
_080FEB4C:
	ldr r0, [r7, #0xc]
	movs r1, #0x26
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0
	bne _080FEBB4
	movs r0, #0x2a
	bl sub_081570B0
	adds r3, r7, #0
	adds r3, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080FEB80 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FEB84 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FEBB4
	.align 2, 0
_080FEB80: .4byte 0xFFF7FFFF
_080FEB84: .4byte 0x0400000A
_080FEB88:
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080FEBA4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FEBA4
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r7, #0xc]
_080FEBA4:
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x14]
	movs r2, #0x26
	adds r2, r2, r7
	mov r8, r2
_080FEBB4:
	ldr r2, _080FEBF4 @ =gKirbys
	ldr r0, _080FEBF8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FEBFC
	adds r4, r7, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FEC04
	movs r0, #0x1e
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FEC04
	movs r0, #0x1e
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FEC04
	.align 2, 0
_080FEBF4: .4byte gKirbys
_080FEBF8: .4byte gUnk_0203AD3C
_080FEBFC:
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FEC04:
	ldr r0, [r5, #0x40]
	str r0, [r7, #0x34]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080FEC2C
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r7, #6]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x24
	bne _080FEC2C
	ldrb r0, [r2]
	adds r0, #0xe
	strb r0, [r2]
_080FEC2C:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #3
	bhi _080FEC4A
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r7, #6]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x12
	bne _080FEC4A
	ldrb r0, [r2]
	adds r0, #0xe
	strb r0, [r2]
_080FEC4A:
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _080FEC9C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FEC68
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FEC68
	movs r0, #0
	str r0, [r7, #0x44]
	movs r3, #0
_080FEC68:
	cmp r3, #0
	beq _080FEC9C
	ldr r0, _080FEC98 @ =gUnk_03000510
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
	beq _080FED0C
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FED0C
	adds r0, r7, #0
	bl sub_0803DBC8
	b _080FEEB0
	.align 2, 0
_080FEC98: .4byte gUnk_03000510
_080FEC9C:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _080FED04 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x2c]
	ldrh r1, [r5]
	cmp r0, r1
	beq _080FECDC
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FECDC
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FECDC
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FECDC
	movs r3, #4
_080FECDC:
	ldr r0, _080FED08 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FED0C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FED0C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FEEB0
	.align 2, 0
_080FED04: .4byte gKirbys
_080FED08: .4byte gUnk_03000510
_080FED0C:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FED24
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FED2E
_080FED24:
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #0x14]
	ldr r2, _080FEDB4 @ =0xFFFFFBFF
	ands r1, r2
_080FED2E:
	str r1, [r0, #8]
	mov sl, r0
	ldrh r3, [r7, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r7
	mov sb, r0
	cmp r2, #0
	bne _080FEDD2
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r4, r0, #0
	mov r5, r8
	ldrb r5, [r5]
	cmp r1, r5
	bne _080FED5E
	ldrh r0, [r7, #0x24]
	ldrh r1, [r7, #0x18]
	cmp r0, r1
	beq _080FED74
_080FED5E:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080FED74
	strb r2, [r7, #1]
	strh r2, [r7, #2]
	ldr r0, _080FEDB8 @ =0x0000FFFB
	ands r0, r3
	strh r0, [r7, #6]
_080FED74:
	mov r0, sl
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FEDBC
	ldrh r0, [r7, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r7, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080FEDD2
	mov r5, sb
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FEDD2
	movs r0, #0xff
	strb r0, [r4]
	ldrh r1, [r7, #6]
	ldr r0, _080FEDB8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r7, #6]
	strb r3, [r7, #1]
	strh r2, [r7, #2]
	mov r0, sl
	bl sub_08155128
	b _080FEDD2
	.align 2, 0
_080FEDB4: .4byte 0xFFFFFBFF
_080FEDB8: .4byte 0x0000FFFB
_080FEDBC:
	mov r0, sb
	ldrb r1, [r0]
	ldrh r0, [r7, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsrs r0, r0, #4
	strb r0, [r7, #1]
	ldrh r1, [r7, #6]
	ldr r0, _080FEE48 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r7, #6]
_080FEDD2:
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _080FEE4C @ =gCurLevelInfo
	ldr r4, _080FEE50 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r7, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r4]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r7, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r7, #0x1e]
	mov r5, sb
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FEE2A
	mov r0, ip
	strb r0, [r6]
	strb r0, [r2]
_080FEE2A:
	mov r1, r8
	ldrb r0, [r1]
	ldrh r3, [r7, #6]
	cmp r0, #0xd
	bls _080FEE54
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080FEE54
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_080FEE42:
	orrs r0, r3
	strh r0, [r7, #6]
	b _080FEEB0
	.align 2, 0
_080FEE48: .4byte 0x0000FFFD
_080FEE4C: .4byte gCurLevelInfo
_080FEE50: .4byte gUnk_0203AD3C
_080FEE54:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080FEEAA
	ldr r2, _080FEE9C @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x2c]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FEEAA
	ldr r1, _080FEEA0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r7, #0x1c]
	adds r0, r0, r2
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r5, [r7, #0x1e]
	adds r0, r0, r5
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FEEA4
	mov r0, sl
	bl sub_081564D8
	b _080FEEAA
	.align 2, 0
_080FEE9C: .4byte gKirbys
_080FEEA0: .4byte gUnk_0203AD18
_080FEEA4:
	mov r0, sl
	bl sub_0815604C
_080FEEAA:
	add r0, sp, #0x28
	ldrb r0, [r0]
	strb r0, [r6]
_080FEEB0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FEEC0
sub_080FEEC0: @ 0x080FEEC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080FEEF8 @ =sub_080FEFB0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FEEFC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FEF00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080FEF08
	.align 2, 0
_080FEEF8: .4byte sub_080FEFB0
_080FEEFC: .4byte sub_0803DCCC
_080FEF00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080FEF08:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	ldr r0, [r5, #8]
	movs r2, #1
	ands r0, r2
	ldrh r1, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r5, _080FEF94 @ =0x00000397
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, #8
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x28
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, #0x2b
	mov r0, r8
	strb r0, [r4]
	ldr r2, _080FEF98 @ =gKirbys
	ldr r0, _080FEF9C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080FEFA0
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FEFA4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FEFA4
	.align 2, 0
_080FEF94: .4byte 0x00000397
_080FEF98: .4byte gKirbys
_080FEF9C: .4byte gUnk_0203AD3C
_080FEFA0:
	mov r1, r8
	strb r1, [r4]
_080FEFA4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FEFB0
sub_080FEFB0: @ 0x080FEFB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080FEFD8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FEFDC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FEFE4
	.align 2, 0
_080FEFD8: .4byte gCurTask
_080FEFDC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FEFE4:
	adds r6, r0, #0
	ldr r7, [r6, #0x44]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FEFFE
	ldr r0, [r2]
	bl TaskDestroy
	b _080FF3E4
_080FEFFE:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FF00A
	adds r0, r1, #0
	b _080FF376
_080FF00A:
	ldr r2, _080FF074 @ =gKirbys
	ldr r0, _080FF078 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x28]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF0BC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF084
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF0E2
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x28
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF07C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FF080 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080FF0E2
	.align 2, 0
_080FF074: .4byte gKirbys
_080FF078: .4byte gUnk_0203AD3C
_080FF07C: .4byte 0xFFF7FFFF
_080FF080: .4byte 0x0400000A
_080FF084:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF0E2
	movs r0, #0x28
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF0B4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FF0B8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FF0E2
	.align 2, 0
_080FF0B4: .4byte 0xFFF7FFFF
_080FF0B8: .4byte 0x0400000A
_080FF0BC:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _080FF0D8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FF0D8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_080FF0D8:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_080FF0E2:
	ldr r2, _080FF124 @ =gKirbys
	ldr r0, _080FF128 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x28]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FF130
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF138
	ldr r5, _080FF12C @ =0x00000397
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF138
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF138
	.align 2, 0
_080FF124: .4byte gKirbys
_080FF128: .4byte gUnk_0203AD3C
_080FF12C: .4byte 0x00000397
_080FF130:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FF138:
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r3, [r6, #0x44]
	cmp r3, #0
	beq _080FF190
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FF15A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FF15A
	movs r0, #0
	str r0, [r6, #0x44]
	movs r3, #0
_080FF15A:
	cmp r3, #0
	beq _080FF190
	ldr r0, _080FF18C @ =gUnk_03000510
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
	beq _080FF200
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FF200
	adds r0, r6, #0
	bl sub_0803DBC8
	b _080FF3E4
	.align 2, 0
_080FF18C: .4byte gUnk_03000510
_080FF190:
	adds r4, r6, #0
	movs r3, #0
	ldr r2, _080FF1F8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FF1D0
	movs r3, #4
_080FF1D0:
	ldr r0, _080FF1FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FF200
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FF200
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FF3E4
	.align 2, 0
_080FF1F8: .4byte gKirbys
_080FF1FC: .4byte gUnk_03000510
_080FF200:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r6, #6]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0xa
	bne _080FF222
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0x10
	bne _080FF222
	adds r0, r1, #1
	mov r5, sb
	strb r0, [r5]
_080FF222:
	mov r0, sb
	ldrb r1, [r0]
	cmp r1, #8
	bne _080FF238
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0xa
	bne _080FF238
	adds r0, r1, #1
	mov r5, sb
	strb r0, [r5]
_080FF238:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF250
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FF25A
_080FF250:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _080FF2E0 @ =0xFFFFFBFF
	ands r1, r2
_080FF25A:
	str r1, [r0, #8]
	mov sl, r0
	ldrh r3, [r6, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r2, #0
	bne _080FF2FE
	adds r0, r6, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r4, r0, #0
	mov r5, sb
	ldrb r5, [r5]
	cmp r1, r5
	bne _080FF28A
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _080FF2A0
_080FF28A:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080FF2A0
	strb r2, [r6, #1]
	strh r2, [r6, #2]
	ldr r0, _080FF2E4 @ =0x0000FFFB
	ands r0, r3
	strh r0, [r6, #6]
_080FF2A0:
	mov r0, sl
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FF2E8
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080FF2FE
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FF2FE
	movs r0, #0xff
	strb r0, [r4]
	ldrh r1, [r6, #6]
	ldr r0, _080FF2E4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	mov r0, sl
	bl sub_08155128
	b _080FF2FE
	.align 2, 0
_080FF2E0: .4byte 0xFFFFFBFF
_080FF2E4: .4byte 0x0000FFFB
_080FF2E8:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _080FF37C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_080FF2FE:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _080FF380 @ =gCurLevelInfo
	ldr r4, _080FF384 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r4]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _080FF356
	mov r0, ip
	strb r0, [r7]
	strb r0, [r2]
_080FF356:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0xb
	beq _080FF364
	ldrh r3, [r6, #6]
	cmp r0, #9
	bne _080FF388
_080FF364:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080FF388
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_080FF376:
	orrs r0, r3
	strh r0, [r6, #6]
	b _080FF3E4
	.align 2, 0
_080FF37C: .4byte 0x0000FFFD
_080FF380: .4byte gCurLevelInfo
_080FF384: .4byte gUnk_0203AD3C
_080FF388:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080FF3DE
	ldr r2, _080FF3D0 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #0x28]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080FF3DE
	ldr r1, _080FF3D4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r5, [r6, #0x1e]
	adds r0, r0, r5
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF3D8
	mov r0, sl
	bl sub_081564D8
	b _080FF3DE
	.align 2, 0
_080FF3D0: .4byte gKirbys
_080FF3D4: .4byte gUnk_0203AD18
_080FF3D8:
	mov r0, sl
	bl sub_0815604C
_080FF3DE:
	adds r0, r6, #0
	bl sub_0806FAC8
_080FF3E4:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FF3F4
sub_080FF3F4: @ 0x080FF3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _080FF434 @ =sub_080FF5B0
	ldr r2, _080FF438 @ =0x00003501
	ldr r1, _080FF43C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FF440
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FF448
	.align 2, 0
_080FF434: .4byte sub_080FF5B0
_080FF438: .4byte 0x00003501
_080FF43C: .4byte sub_0803DCCC
_080FF440:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FF448:
	adds r6, r0, #0
	adds r7, r6, #0
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r6]
	mov r2, r8
	ldr r0, [r2, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r6, #0x38]
	str r2, [r6, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r6, #4]
	mov ip, r1
	ldr r3, _080FF568 @ =gRngVal
	mov sb, r3
	ldr r4, _080FF56C @ =0x3C6EF35F
	mov sl, r4
_080FF47A:
	mov r0, ip
	lsls r5, r0, #3
	adds r4, r7, #0
	adds r4, #0x48
	adds r4, r4, r5
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080FF570 @ =0x00196225
	adds r3, r0, #0
	muls r3, r2, r3
	add r3, sl
	str r3, [r1]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	adds r0, r7, #0
	adds r0, #0x4c
	adds r0, r0, r5
	ldr r1, [r2, #0x44]
	str r1, [r0]
	mov r4, ip
	lsls r2, r4, #1
	adds r1, r7, #0
	adds r1, #0x68
	adds r1, r1, r2
	ldr r4, _080FF570 @ =0x00196225
	adds r0, r3, #0
	muls r0, r4, r0
	add r0, sl
	mov r3, sb
	str r0, [r3]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x70
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _080FF47A
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _080FF4F4
	movs r3, #0xd
	str r3, [sp, #0xc]
_080FF4F4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r5, _080FF574 @ =0x00000397
	ldr r4, [sp, #0xc]
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	movs r3, #0
	strb r3, [r4]
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF528
	ldrh r1, [r6, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r6, #6]
_080FF528:
	ldr r2, _080FF578 @ =gKirbys
	ldr r0, _080FF57C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF580
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF582
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF582
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF582
	.align 2, 0
_080FF568: .4byte gRngVal
_080FF56C: .4byte 0x3C6EF35F
_080FF570: .4byte 0x00196225
_080FF574: .4byte 0x00000397
_080FF578: .4byte gKirbys
_080FF57C: .4byte gUnk_0203AD3C
_080FF580:
	strb r3, [r4]
_080FF582:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF592
	mov r2, r8
	ldr r0, [r2, #0x40]
	b _080FF596
_080FF592:
	mov r3, r8
	ldr r0, [r3, #0x40]
_080FF596:
	str r0, [r6, #0x34]
	mov r4, r8
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x38]
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080FF5B0
sub_080FF5B0: @ 0x080FF5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	ldr r2, _080FF5D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FF5DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FF5E4
	.align 2, 0
_080FF5D8: .4byte gCurTask
_080FF5DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FF5E4:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	str r0, [sp, #0x28]
	str r6, [sp, #0x2c]
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080FF600
	ldr r0, [r2]
	bl TaskDestroy
	b _080FFBB0
_080FF600:
	ldr r2, _080FF668 @ =gKirbys
	ldr r0, _080FF66C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF6B0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FF678
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF6D6
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #1
	bl sub_0803DE54
	adds r5, r6, #0
	adds r5, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF670 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080FF674 @ =0x0400000A
	adds r0, r5, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #8]
	b _080FF6D6
	.align 2, 0
_080FF668: .4byte gKirbys
_080FF66C: .4byte gUnk_0203AD3C
_080FF670: .4byte 0xFFF7FFFF
_080FF674: .4byte 0x0400000A
_080FF678:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _080FF6D6
	movs r0, #1
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _080FF6A8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FF6AC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FF6D6
	.align 2, 0
_080FF6A8: .4byte 0xFFF7FFFF
_080FF6AC: .4byte 0x0400000A
_080FF6B0:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _080FF6CC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FF6CC
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_080FF6CC:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_080FF6D6:
	ldr r2, _080FF71C @ =gKirbys
	ldr r0, _080FF720 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x3c]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080FF728
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080FF730
	ldr r5, _080FF724 @ =0x00000397
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080FF730
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080FF730
	.align 2, 0
_080FF71C: .4byte gKirbys
_080FF720: .4byte gUnk_0203AD3C
_080FF724: .4byte 0x00000397
_080FF728:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080FF730:
	ldr r0, [sp, #0x28]
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x3c]
	strh r0, [r2]
	ldr r4, [sp, #0x28]
	ldr r3, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080FF758
	ldrh r0, [r6, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6, #4]
	ldrh r1, [r6, #6]
	adds r0, r2, #0
	b _080FFBAC
_080FF758:
	ldr r0, _080FF7BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r1, [sp, #0x28]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FF7C0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _080FF7C0
	ldr r4, [r6, #0x34]
	ldr r5, [r6, #0x38]
	movs r7, #0
	str r7, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	adds r0, #0x48
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x2c]
	adds r1, #0x4c
	str r1, [sp, #0x44]
_080FF78E:
	ldr r2, [sp, #0x30]
	lsls r1, r2, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r6, #0x34]
	ldr r0, [sp, #0x44]
	adds r1, r0, r1
	ldr r0, [r1]
	str r0, [r6, #0x38]
	adds r0, r6, #0
	bl sub_0803DBC8
	ldr r0, [sp, #0x30]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	cmp r0, #3
	bls _080FF78E
	str r4, [r6, #0x34]
	str r5, [r6, #0x38]
	b _080FFBB0
	.align 2, 0
_080FF7BC: .4byte gUnk_03000510
_080FF7C0:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF7D8
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080FF7E2
_080FF7D8:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _080FF868 @ =0xFFFFFBFF
	ands r1, r2
_080FF7E2:
	str r1, [r0, #8]
	str r0, [sp, #0x50]
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0x28
	adds r1, r1, r6
	mov r8, r1
	cmp r3, #0
	bne _080FF886
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _080FF814
	ldrh r0, [r6, #0x24]
	ldrh r2, [r6, #0x18]
	cmp r0, r2
	beq _080FF82A
_080FF814:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080FF82A
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _080FF86C @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_080FF82A:
	ldr r0, [sp, #0x50]
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080FF870
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080FF886
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080FF886
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _080FF86C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	ldr r0, [sp, #0x50]
	bl sub_08155128
	b _080FF886
	.align 2, 0
_080FF868: .4byte 0xFFFFFBFF
_080FF86C: .4byte 0x0000FFFB
_080FF870:
	mov r7, r8
	ldrb r1, [r7]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _080FF94C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_080FF886:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r5, _080FF950 @ =gCurLevelInfo
	ldr r0, _080FF954 @ =gUnk_0203AD3C
	mov sb, r0
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sl, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, sb
	ldrb r0, [r2]
	muls r0, r3, r0
	adds r3, r5, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080FF8E4
	mov r0, sl
	strb r0, [r7]
	strb r0, [r2]
_080FF8E4:
	movs r1, #0
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	adds r2, #0x48
	str r2, [sp, #0x40]
	ldr r4, [sp, #0x2c]
	adds r4, #0x4c
	str r4, [sp, #0x44]
	ldr r7, [sp, #0x2c]
	adds r7, #0x70
	str r7, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	adds r0, #0x68
	str r0, [sp, #0x48]
	str r5, [sp, #0x38]
_080FF902:
	movs r1, #4
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0x30]
	asrs r0, r2
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080FF98C
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF958
	lsls r3, r2, #1
	ldr r7, [sp, #0x4c]
	adds r1, r7, r3
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r2, r2, #3
	ldr r1, [sp, #0x40]
	adds r0, r1, r2
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r1, #1
	ldr r7, [sp, #0x30]
	lsls r1, r7
	ldrh r0, [r6, #4]
	bics r0, r1
	b _080FF9E6
	.align 2, 0
_080FF94C: .4byte 0x0000FFFD
_080FF950: .4byte gCurLevelInfo
_080FF954: .4byte gUnk_0203AD3C
_080FF958:
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x28]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r1, #1
	ldr r7, [sp, #0x30]
	lsls r1, r7
	ldrh r0, [r6, #4]
	bics r0, r1
	b _080FF9E6
_080FF98C:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FF9B4
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r4, [sp, #0x28]
	ldr r0, [r4, #0x40]
	b _080FF9D0
_080FF9B4:
	ldr r0, [sp, #0x30]
	lsls r3, r0, #1
	ldr r2, [sp, #0x4c]
	adds r1, r2, r3
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	ldr r4, [sp, #0x30]
	lsls r2, r4, #3
	ldr r7, [sp, #0x40]
	adds r0, r7, r2
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
_080FF9D0:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	mov ip, r2
	cmp r1, r0
	ble _080FF9E8
	movs r0, #1
	ldr r7, [sp, #0x30]
	lsls r0, r7
	ldrh r1, [r6, #4]
	orrs r0, r1
_080FF9E6:
	strh r0, [r6, #4]
_080FF9E8:
	ldr r0, [sp, #0x4c]
	adds r2, r0, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080FF9FA
	strh r1, [r2]
_080FF9FA:
	movs r4, #0
	ldrsh r0, [r2, r4]
	ldr r1, _080FFA20 @ =0xFFFFFD00
	cmp r0, r1
	bge _080FFA06
	strh r1, [r2]
_080FFA06:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFA24
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080FFA32
	movs r0, #0xd0
	lsls r0, r0, #3
	b _080FFA36
	.align 2, 0
_080FFA20: .4byte 0xFFFFFD00
_080FFA24:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080FFA32
	movs r0, #0xd0
	lsls r0, r0, #3
	b _080FFA36
_080FFA32:
	movs r0, #0xc0
	lsls r0, r0, #3
_080FFA36:
	strh r0, [r6, #0x20]
	ldr r5, [sp, #0x40]
	add r5, ip
	ldr r2, [sp, #0x4c]
	adds r2, r2, r3
	str r2, [sp, #0x34]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldr r7, [sp, #0x44]
	add r7, ip
	str r7, [sp, #0x54]
	ldr r0, [sp, #0x48]
	adds r4, r0, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, [r7]
	subs r1, r1, r0
	str r1, [r7]
	ldr r0, _080FFA7C @ =0x00008FFF
	cmp r1, r0
	bgt _080FFAC8
	ldrh r1, [r6, #4]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	beq _080FFA80
	movs r0, #0
	strh r0, [r4]
	b _080FFB86
	.align 2, 0
_080FFA7C: .4byte 0x00008FFF
_080FFA80:
	ldr r3, _080FFB64 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _080FFB68 @ =0x00196225
	mov sl, r2
	mov r2, sl
	muls r2, r0, r2
	ldr r7, _080FFB6C @ =0x3C6EF35F
	mov sb, r7
	add r2, sb
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x10
	subs r1, r0, r1
	lsls r1, r1, #8
	ldr r7, [sp, #0x28]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r7, #0x44]
	ldr r1, [sp, #0x54]
	str r0, [r1]
	mov r0, sl
	muls r0, r2, r0
	add r0, sb
	str r0, [r3]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	strh r0, [r4]
	mov r7, r8
	ldr r4, [sp, #0x34]
	strh r7, [r4]
_080FFAC8:
	ldr r1, [sp, #0x40]
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r5, _080FFB70 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r0, r3, r0
	ldr r1, [sp, #0x38]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [sp, #0x44]
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r3, r0
	ldr r2, _080FFB74 @ =gUnk_02023540
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _080FFB86
	ldr r2, _080FFB78 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x3c]
	ldrh r2, [r2]
	cmp r0, r2
	bne _080FFB86
	ldr r1, _080FFB7C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _080FFB80
	ldr r0, [sp, #0x50]
	bl sub_081564D8
	b _080FFB86
	.align 2, 0
_080FFB64: .4byte gRngVal
_080FFB68: .4byte 0x00196225
_080FFB6C: .4byte 0x3C6EF35F
_080FFB70: .4byte gUnk_0203AD3C
_080FFB74: .4byte gUnk_02023540
_080FFB78: .4byte gKirbys
_080FFB7C: .4byte gUnk_0203AD18
_080FFB80:
	ldr r0, [sp, #0x50]
	bl sub_0815604C
_080FFB86:
	ldr r0, [sp, #0x30]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	cmp r0, #3
	bhi _080FFB96
	b _080FF902
_080FFB96:
	ldr r1, [sp, #0x2c]
	ldr r0, [r1, #0x68]
	cmp r0, #0
	bne _080FFBB0
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	bne _080FFBB0
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_080FFBAC:
	orrs r0, r1
	strh r0, [r6, #6]
_080FFBB0:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FFBC0
sub_080FFBC0: @ 0x080FFBC0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080FFBF0 @ =sub_080FFC68
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080FFBF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FFBF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FFC00
	.align 2, 0
_080FFBF0: .4byte sub_080FFC68
_080FFBF4: .4byte sub_0803DCCC
_080FFBF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FFC00:
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
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFC34
	ldr r0, [r4, #0x34]
	ldr r1, _080FFC30 @ =0xFFFFE000
	b _080FFC42
	.align 2, 0
_080FFC30: .4byte 0xFFFFE000
_080FFC34:
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
_080FFC42:
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080FFC64 @ =0x00000393
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FFC64: .4byte 0x00000393

	thumb_func_start sub_080FFC68
sub_080FFC68: @ 0x080FFC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080FFC88 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080FFC8C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080FFC94
	.align 2, 0
_080FFC88: .4byte gCurTask
_080FFC8C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080FFC94:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080FFCAE
	ldr r0, [r2]
	bl TaskDestroy
	b _080FFE9C
_080FFCAE:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	beq _080FFCBE
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080FFE9C
_080FFCBE:
	ldr r2, _080FFD28 @ =gKirbys
	ldr r0, _080FFD2C @ =gUnk_0203AD3C
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
	bne _080FFD70
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080FFD38
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FFD96
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FFD30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080FFD34 @ =0x0400000A
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
	b _080FFD96
	.align 2, 0
_080FFD28: .4byte gKirbys
_080FFD2C: .4byte gUnk_0203AD3C
_080FFD30: .4byte 0xFFF7FFFF
_080FFD34: .4byte 0x0400000A
_080FFD38:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080FFD96
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080FFD68 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080FFD6C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080FFD96
	.align 2, 0
_080FFD68: .4byte 0xFFF7FFFF
_080FFD6C: .4byte 0x0400000A
_080FFD70:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080FFD8C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080FFD8C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080FFD8C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080FFD96:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080FFDAC
	ldr r0, [r6, #0x40]
	ldr r2, _080FFDA8 @ =0xFFFFE000
	adds r0, r0, r2
	b _080FFDBC
	.align 2, 0
_080FFDA8: .4byte 0xFFFFE000
_080FFDAC:
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #6]
	ldr r0, [r6, #0x40]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
_080FFDBC:
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080FFE14
	ldrb r0, [r3]
	cmp r0, #0
	beq _080FFDE0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080FFDE0
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080FFDE0:
	cmp r3, #0
	beq _080FFE14
	ldr r0, _080FFE10 @ =gUnk_03000510
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
	beq _080FFE80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FFE80
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080FFE9C
	.align 2, 0
_080FFE10: .4byte gUnk_03000510
_080FFE14:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080FFE78 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080FFE52
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080FFE52
	movs r3, #4
_080FFE52:
	ldr r0, _080FFE7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080FFE80
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080FFE80
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080FFE9C
	.align 2, 0
_080FFE78: .4byte gKirbys
_080FFE7C: .4byte gUnk_03000510
_080FFE80:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080FFE96
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080FFE9C
_080FFE96:
	adds r0, r5, #0
	bl sub_0806FAC8
_080FFE9C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080FFEA4
sub_080FFEA4: @ 0x080FFEA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080FFEC6
	adds r0, r4, #0
	bl sub_080FB694
	b _080FFEE8
_080FFEC6:
	ldr r2, _080FFEF0 @ =sub_080FFF84
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
_080FFEE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFEF0: .4byte sub_080FFF84

	thumb_func_start sub_080FFEF4
sub_080FFEF4: @ 0x080FFEF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF28 @ =sub_080F6104
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFF28: .4byte sub_080F6104

	thumb_func_start sub_080FFF2C
sub_080FFF2C: @ 0x080FFF2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF5C @ =sub_080F6300
	movs r1, #0x29
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080FFF5C: .4byte sub_080F6300

	thumb_func_start sub_080FFF60
sub_080FFF60: @ 0x080FFF60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080FFF80 @ =sub_080F5974
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
_080FFF80: .4byte sub_080F5974

	thumb_func_start sub_080FFF84
sub_080FFF84: @ 0x080FFF84
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080FFF9A
	adds r0, r1, #0
	bl sub_080F7B34
_080FFF9A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080FFFA0
sub_080FFFA0: @ 0x080FFFA0
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xc2
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0xc0
	strb r1, [r0]
	subs r0, #0x22
	strb r1, [r0]
	bx lr

	thumb_func_start sub_080FFFB8
sub_080FFFB8: @ 0x080FFFB8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _080FFFE4 @ =sub_080F99BC
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x9e
	movs r1, #0
	strb r5, [r0]
	movs r0, #0xe
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080FFFE4: .4byte sub_080F99BC

	thumb_func_start sub_080FFFE8
sub_080FFFE8: @ 0x080FFFE8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _0810002C @ =sub_080F9A2C
	adds r0, r4, #0
	movs r1, #0x17
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _08100030
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08100038
	.align 2, 0
_0810002C: .4byte sub_080F9A2C
_08100030:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08100038:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08100048
sub_08100048: @ 0x08100048
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08100090 @ =sub_080FA9E8
	movs r1, #0x18
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08100076
	rsbs r0, r3, #0
	strh r0, [r2]
_08100076:
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08100084
	movs r0, #0
	strh r0, [r2]
_08100084:
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08100090: .4byte sub_080FA9E8

	thumb_func_start sub_08100094
sub_08100094: @ 0x08100094
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081000BC @ =sub_080FAC64
	movs r1, #0x17
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081000BC: .4byte sub_080FAC64

	thumb_func_start sub_081000C0
sub_081000C0: @ 0x081000C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081000EC @ =sub_081000F0
	movs r1, #0x1e
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf4
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #6
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081000EC: .4byte sub_081000F0

	thumb_func_start sub_081000F0
sub_081000F0: @ 0x081000F0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08100106
	adds r0, r1, #0
	bl sub_08100048
_08100106:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810010C
sub_0810010C: @ 0x0810010C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080886A8
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08088700
	ldr r2, _08100168 @ =sub_080FB9FC
	adds r0, r4, #0
	movs r1, #0x2a
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r0, [r4, #0x40]
	ldr r2, _0810016C @ =0xFFFE9000
	adds r0, r0, r2
	asrs r0, r0, #5
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1e
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08100168: .4byte sub_080FB9FC
_0810016C: .4byte 0xFFFE9000

	thumb_func_start sub_08100170
sub_08100170: @ 0x08100170
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810018A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08100192
_0810018A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08100192:
	ldr r0, [r0, #0x44]
	adds r0, #0xbc
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	bl sub_0803DCCC
	pop {r0}
	bx r0

	thumb_func_start sub_081001A4
sub_081001A4: @ 0x081001A4
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081001BE
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081001C6
_081001BE:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081001C6:
	ldr r0, [r0, #0x44]
	adds r0, #0xb8
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	bl sub_0803DCCC
	pop {r0}
	bx r0

	thumb_func_start sub_081001D8
sub_081001D8: @ 0x081001D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081001F2
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081001FA
_081001F2:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081001FA:
	bl sub_080700D8
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

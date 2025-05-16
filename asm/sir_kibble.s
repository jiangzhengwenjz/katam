	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ contains some functions from the spawn table

	thumb_func_start sub_080B1AC4
sub_080B1AC4: @ 0x080B1AC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _080B1AE8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1AEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B1AF4
	.align 2, 0
_080B1AE8: .4byte gCurTask
_080B1AEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B1AF4:
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov r8, r0
	ldr r2, _080B1B64 @ =gKirbys
	ldr r0, _080B1B68 @ =gUnk_0203AD3C
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
	bne _080B1BAC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080B1B74
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B1BD0
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B1B6C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080B1B70 @ =0x0400000A
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
	b _080B1BD0
	.align 2, 0
_080B1B64: .4byte gKirbys
_080B1B68: .4byte gUnk_0203AD3C
_080B1B6C: .4byte 0xFFF7FFFF
_080B1B70: .4byte 0x0400000A
_080B1B74:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080B1BD0
	movs r0, #6
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080B1BA4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080B1BA8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080B1BD0
	.align 2, 0
_080B1BA4: .4byte 0xFFF7FFFF
_080B1BA8: .4byte 0x0400000A
_080B1BAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080B1BC6
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080B1BC6
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0x10]
_080B1BC6:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080B1BD0:
	mov r1, r8
	ldr r3, [r1, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080B1C26
	ldr r2, _080B1C10 @ =gKirbys
	ldr r0, _080B1C14 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B1C1C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B1C7E
	ldr r0, _080B1C18 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	b _080B1C50
	.align 2, 0
_080B1C10: .4byte gKirbys
_080B1C14: .4byte gUnk_0203AD3C
_080B1C18: .4byte gUnk_08351648
_080B1C1C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080B1C7E
_080B1C26:
	ldr r2, _080B1C6C @ =gKirbys
	ldr r0, _080B1C70 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r2, [r7]
	cmp r0, r2
	bne _080B1C78
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B1C7E
	ldr r6, _080B1C74 @ =0x0000032D
_080B1C50:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080B1C7E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080B1C7E
	.align 2, 0
_080B1C6C: .4byte gKirbys
_080B1C70: .4byte gUnk_0203AD3C
_080B1C74: .4byte 0x0000032D
_080B1C78:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080B1C7E:
	mov r0, r8
	cmp r0, #0
	beq _080B1CA4
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080B1C90
	ldr r0, _080B1CD4 @ =0x0000FFFF
	strh r0, [r7]
_080B1C90:
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080B1CA4
	movs r0, #0
	str r0, [r5, #0x70]
	mov r8, r0
_080B1CA4:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B1CB2
	b _080B1DE6
_080B1CB2:
	mov r2, r8
	cmp r2, #0
	beq _080B1CD8
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1CD8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080B1DE6
	.align 2, 0
_080B1CD4: .4byte 0x0000FFFF
_080B1CD8:
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B1D56
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B1D56
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080B1D1C
	ldr r2, _080B1D14 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B1D18 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B1D1E
	.align 2, 0
_080B1D14: .4byte gCurLevelInfo
_080B1D18: .4byte 0x0000065E
_080B1D1C:
	movs r1, #0xff
_080B1D1E:
	cmp r1, #0xff
	beq _080B1D56
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B1D7C @ =gUnk_02022EB0
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
	ldr r2, _080B1D80 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B1D56:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1D98
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080B1D84 @ =0xFFFFFD58
	adds r2, r0, #0
	cmp r3, r1
	bge _080B1D8C
	ldr r0, _080B1D88 @ =0x0000FD58
	strh r0, [r2]
	b _080B1DBC
	.align 2, 0
_080B1D7C: .4byte gUnk_02022EB0
_080B1D80: .4byte gUnk_02022F50
_080B1D84: .4byte 0xFFFFFD58
_080B1D88: .4byte 0x0000FD58
_080B1D8C:
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r3, r0
	ble _080B1DBC
	strh r0, [r2]
	b _080B1DBC
_080B1D98:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080B1DB4
	strh r3, [r2]
	b _080B1DBC
_080B1DB4:
	ldr r1, _080B1DF4 @ =0xFFFFFD58
	cmp r0, r1
	bge _080B1DBC
	strh r1, [r2]
_080B1DBC:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B1DE0
	movs r0, #0
	ldrsh r1, [r2, r0]
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
_080B1DE0:
	adds r0, r5, #0
	bl sub_0806F8BC
_080B1DE6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1DF4: .4byte 0xFFFFFD58

	thumb_func_start sub_080B1DF8
sub_080B1DF8: @ 0x080B1DF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080B1E0C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080B1E10 @ =gUnk_020229E0
	b _080B1E28
	.align 2, 0
_080B1E0C: .4byte gUnk_020229D4
_080B1E10: .4byte gUnk_020229E0
_080B1E14:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080B1E30
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080B1E28:
	cmp r0, #0
	bne _080B1E14
	orrs r2, r3
	str r2, [r1]
_080B1E30:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd5
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r2, r0, #0
	str r5, [r2, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B1E9A
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
_080B1E9A:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080B1EC8
	ldr r0, [r2, #0x40]
	ldr r3, _080B1EC4 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080B1EDC
	.align 2, 0
_080B1EC4: .4byte 0xFFFFF000
_080B1EC8:
	ldr r0, [r2, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
_080B1EDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateSirKibbleCutter
CreateSirKibbleCutter: @ 0x080B1EE4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080B1F18 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B1F1C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1F20
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080B1F28
	.align 2, 0
_080B1F18: .4byte ObjectMain
_080B1F1C: .4byte ObjectDestroy
_080B1F20:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080B1F28:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x40
	orrs r2, r0
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080B1FC4 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080B1FC8 @ =sub_080B2224
	str r0, [r5, #0x7c]
	subs r1, #0x23
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080B1FCC @ =gUnk_08351648
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
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B1FC4: .4byte 0x20000043
_080B1FC8: .4byte sub_080B2224
_080B1FCC: .4byte gUnk_08351648

	thumb_func_start sub_080B1FD0
sub_080B1FD0: @ 0x080B1FD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B2058 @ =sub_080B207C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080B205C @ =gKirbys
	ldr r0, _080B2060 @ =gUnk_0203AD3C
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
	bne _080B2050
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B2014
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B2050
_080B2014:
	ldr r1, _080B2064 @ =gUnk_08D60FA4
	ldr r4, _080B2068 @ =gSongTable
	ldr r2, _080B206C @ =0x000009FC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B2038
	ldr r1, _080B2070 @ =0x000009F8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B2050
_080B2038:
	cmp r3, #0
	beq _080B204A
	ldr r0, _080B2074 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B2050
_080B204A:
	ldr r0, _080B2078 @ =0x0000013F
	bl m4aSongNumStart
_080B2050:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2058: .4byte sub_080B207C
_080B205C: .4byte gKirbys
_080B2060: .4byte gUnk_0203AD3C
_080B2064: .4byte gUnk_08D60FA4
_080B2068: .4byte gSongTable
_080B206C: .4byte 0x000009FC
_080B2070: .4byte 0x000009F8
_080B2074: .4byte gUnk_0203AD10
_080B2078: .4byte 0x0000013F

	thumb_func_start sub_080B207C
sub_080B207C: @ 0x080B207C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	beq _080B20A8
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B20A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080B20FE
_080B20A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B20E0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080B20CC @ =0xFFFFFD58
	cmp r2, r0
	bge _080B20D4
	ldr r0, _080B20D0 @ =0x0000FD58
	strh r0, [r1]
	b _080B20FE
	.align 2, 0
_080B20CC: .4byte 0xFFFFFD58
_080B20D0: .4byte 0x0000FD58
_080B20D4:
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r2, r0
	ble _080B20FE
	strh r0, [r1]
	b _080B20FE
_080B20E0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xaa
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080B20FC
	ldr r2, _080B2104 @ =0xFFFFFD58
	cmp r0, r2
	bge _080B20FE
_080B20FC:
	strh r2, [r1]
_080B20FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2104: .4byte 0xFFFFFD58

	thumb_func_start sub_080B2108
sub_080B2108: @ 0x080B2108
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	blt _080B211E
	cmp r0, #1
	ble _080B211E
	cmp r0, #2
	beq _080B2126
_080B211E:
	adds r0, r1, #0
	bl sub_080B2160
	b _080B212C
_080B2126:
	adds r0, r1, #0
	bl sub_080B2210
_080B212C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B2130
sub_080B2130: @ 0x080B2130
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B215C @ =sub_080B17BC
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xaa
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2154
	rsbs r0, r3, #0
	strh r0, [r2]
_080B2154:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B215C: .4byte sub_080B17BC

	thumb_func_start sub_080B2160
sub_080B2160: @ 0x080B2160
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B219C @ =sub_080B1368
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080B2194
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080B2194
	rsbs r0, r3, #0
	strh r0, [r2]
_080B2194:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B219C: .4byte sub_080B1368

	thumb_func_start sub_080B21A0
sub_080B21A0: @ 0x080B21A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B21C4 @ =sub_080B14A0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B21C8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B21D0
	.align 2, 0
_080B21C4: .4byte sub_080B14A0
_080B21C8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B21D0:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B21D8
sub_080B21D8: @ 0x080B21D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B21FC @ =sub_080B1550
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2200
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080B2206
	.align 2, 0
_080B21FC: .4byte sub_080B1550
_080B2200:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080B2206:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2210
sub_080B2210: @ 0x080B2210
	push {lr}
	ldr r2, _080B2220 @ =sub_080B16A8
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080B2220: .4byte sub_080B16A8

	thumb_func_start sub_080B2224
sub_080B2224: @ 0x080B2224
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x70]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080B2242
	adds r0, r2, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080B2246
_080B2242:
	movs r0, #0
	str r0, [r3, #0x70]
_080B2246:
	pop {r0}
	bx r0
	.align 2, 0

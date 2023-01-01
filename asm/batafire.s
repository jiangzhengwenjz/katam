	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080CB02C
sub_080CB02C: @ 0x080CB02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080CB054 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CB058
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CB060
	.align 2, 0
_080CB054: .4byte gCurTask
_080CB058:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CB060:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080CB07A
	ldr r0, [r2]
	bl TaskDestroy
	b _080CB3CC
_080CB07A:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080CB08A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080CB3CC
_080CB08A:
	ldr r2, _080CB0F4 @ =gKirbys
	ldr r0, _080CB0F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB13C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080CB104
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
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
	ldr r1, _080CB0FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CB100 @ =0x0400000A
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
	b _080CB162
	.align 2, 0
_080CB0F4: .4byte gKirbys
_080CB0F8: .4byte gUnk_0203AD3C
_080CB0FC: .4byte 0xFFF7FFFF
_080CB100: .4byte 0x0400000A
_080CB104:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
	movs r0, #8
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080CB134 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080CB138 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080CB162
	.align 2, 0
_080CB134: .4byte 0xFFF7FFFF
_080CB138: .4byte 0x0400000A
_080CB13C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080CB158
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080CB158
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_080CB158:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080CB162:
	ldr r2, _080CB1A4 @ =gKirbys
	ldr r0, _080CB1A8 @ =gUnk_0203AD3C
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
	bne _080CB1B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CB1B8
	ldr r6, _080CB1AC @ =0x000002E7
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB1B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080CB1B8
	.align 2, 0
_080CB1A4: .4byte gKirbys
_080CB1A8: .4byte gUnk_0203AD3C
_080CB1AC: .4byte 0x000002E7
_080CB1B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080CB1B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080CB20C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CB1D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080CB1D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080CB1D6:
	cmp r3, #0
	beq _080CB20C
	ldr r0, _080CB208 @ =gUnk_03000510
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
	beq _080CB27C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB208: .4byte gUnk_03000510
_080CB20C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080CB274 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080CB24C
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #4
_080CB24C:
	ldr r0, _080CB278 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CB27C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB274: .4byte gKirbys
_080CB278: .4byte gUnk_03000510
_080CB27C:
	ldr r0, _080CB314 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x26
	adds r1, r1, r5
	mov sb, r1
	movs r2, #0x83
	adds r2, r2, r7
	mov sl, r2
	ldr r6, _080CB318 @ =gUnk_08355C68
	mov ip, r6
	cmp r0, #0
	beq _080CB2CE
	mov r1, r8
	ldrh r3, [r1]
	ldr r4, _080CB31C @ =gUnk_02026D50
_080CB29A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r6, _080CB320 @ =gCurLevelInfo
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080CB2C6
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080CB2E0
_080CB2C6:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080CB29A
_080CB2CE:
	movs r0, #1
	cmp r0, #0
	beq _080CB2E0
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080CB2E0:
	ldrh r2, [r5, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080CB302
	ldrh r1, [r5, #4]
	adds r1, #1
	strh r1, [r5, #4]
	movs r0, #4
	orrs r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _080CB302
	movs r0, #0
	strh r0, [r5, #4]
_080CB302:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB328
	ldrh r1, [r5, #6]
	ldr r0, _080CB324 @ =0x0000FFFE
	ands r0, r1
	b _080CB32E
	.align 2, 0
_080CB314: .4byte gUnk_0203AD44
_080CB318: .4byte gUnk_08355C68
_080CB31C: .4byte gUnk_02026D50
_080CB320: .4byte gCurLevelInfo
_080CB324: .4byte 0x0000FFFE
_080CB328:
	ldrh r1, [r5, #6]
	movs r0, #1
	orrs r0, r1
_080CB32E:
	strh r0, [r5, #6]
	mov r6, sl
	ldrb r0, [r6]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080CB350
	ldr r0, _080CB34C @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xf
	mov r1, sb
	strb r0, [r1]
	b _080CB35A
	.align 2, 0
_080CB34C: .4byte 0x000002E7
_080CB350:
	ldr r0, _080CB378 @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xe
	mov r2, sb
	strb r0, [r2]
_080CB35A:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB37C
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	b _080CB38E
	.align 2, 0
_080CB378: .4byte 0x000002E7
_080CB37C:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	subs r0, r0, r1
_080CB38E:
	str r0, [r5, #0x34]
	movs r2, #4
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r7, #0x44]
	adds r2, r1, r0
	str r2, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB3C6
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	str r0, [r5, #0x38]
_080CB3C6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080CB3CC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB3DC
sub_080CB3DC: @ 0x080CB3DC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080CB47C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080CB476
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CB476
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080CB476
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _080CB476
	ldr r1, _080CB480 @ =gKirbys
	ldr r0, _080CB484 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB476
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CB43A
	cmp r4, r2
	bne _080CB476
_080CB43A:
	ldr r1, _080CB488 @ =gUnk_08D60FA4
	ldr r4, _080CB48C @ =gSongTable
	ldr r2, _080CB490 @ =0x00000CFC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CB45E
	ldr r1, _080CB494 @ =0x00000CF8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CB476
_080CB45E:
	cmp r3, #0
	beq _080CB470
	ldr r0, _080CB498 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CB476
_080CB470:
	ldr r0, _080CB49C @ =0x0000019F
	bl m4aSongNumStart
_080CB476:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB47C: .4byte gUnk_03000510
_080CB480: .4byte gKirbys
_080CB484: .4byte gUnk_0203AD3C
_080CB488: .4byte gUnk_08D60FA4
_080CB48C: .4byte gSongTable
_080CB490: .4byte 0x00000CFC
_080CB494: .4byte 0x00000CF8
_080CB498: .4byte gUnk_0203AD10
_080CB49C: .4byte 0x0000019F

	thumb_func_start sub_080CB4A0
sub_080CB4A0: @ 0x080CB4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CB4EC @ =sub_080CADB8
	movs r1, #0
	bl ObjectSetFunc
	ldr r5, _080CB4F0 @ =gUnk_08355C86
	movs r0, #0x85
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB4D0
	rsbs r0, r2, #0
	strh r0, [r3]
_080CB4D0:
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CB4EC: .4byte sub_080CADB8
_080CB4F0: .4byte gUnk_08355C86

	thumb_func_start sub_080CB4F4
sub_080CB4F4: @ 0x080CB4F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB514 @ =sub_080C939C
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB514: .4byte sub_080C939C

	thumb_func_start sub_080CB518
sub_080CB518: @ 0x080CB518
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080CB54A
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB544
	adds r0, r2, #0
	bl sub_080C97F0
	b _080CB54A
_080CB544:
	adds r0, r2, #0
	bl sub_080C95D4
_080CB54A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB550
sub_080CB550: @ 0x080CB550
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB574 @ =sub_080C9A08
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB57C
	ldr r0, _080CB578 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB582
	.align 2, 0
_080CB574: .4byte sub_080C9A08
_080CB578: .4byte 0xFFFFFF00
_080CB57C:
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB582:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5A0
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB5A6
	.align 2, 0
_080CB59C: .4byte 0xFFFFFF00
_080CB5A0:
	ldr r0, _080CB5B8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB5A6:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB5B8: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB5BC
sub_080CB5BC: @ 0x080CB5BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB5E0 @ =sub_080C9BB4
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5E8
	ldr r0, _080CB5E4 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB5EE
	.align 2, 0
_080CB5E0: .4byte sub_080C9BB4
_080CB5E4: .4byte 0xFFFFFF00
_080CB5E8:
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB5EE:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB60C
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB612
	.align 2, 0
_080CB608: .4byte 0xFFFFFF00
_080CB60C:
	ldr r0, _080CB624 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB612:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB624: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB628
sub_080CB628: @ 0x080CB628
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB64C @ =sub_080CA740
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB654
	ldr r0, _080CB650 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB65A
	.align 2, 0
_080CB64C: .4byte sub_080CA740
_080CB650: .4byte 0xFFFFFF00
_080CB654:
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB65A:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB678
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB67E
	.align 2, 0
_080CB674: .4byte 0xFFFFFF00
_080CB678:
	ldr r0, _080CB690 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB67E:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB690: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB694
sub_080CB694: @ 0x080CB694
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB6B8 @ =sub_080CAB14
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6C0
	ldr r0, _080CB6BC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB6C6
	.align 2, 0
_080CB6B8: .4byte sub_080CAB14
_080CB6BC: .4byte 0xFFFFFF00
_080CB6C0:
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB6C6:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6E4
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB6EA
	.align 2, 0
_080CB6E0: .4byte 0xFFFFFF00
_080CB6E4:
	ldr r0, _080CB6F8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB6EA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB6F8: .4byte 0xFFFFFF00

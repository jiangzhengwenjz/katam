	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C004
sub_0801C004: @ 0x0801C004
	push {r4, r5, lr}
	sub sp, #0x28
	mov ip, r0
	ldr r4, _0801C09C @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, r1, r4
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _0801C0A0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	muls r0, r3, r0
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0801C092
	mov r0, ip
	adds r0, #0x2f
	ldrb r5, [r0]
	cmp r5, #0
	beq _0801C092
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r4, _0801C0A4 @ =gUnk_082DE5A8
	mov r3, ip
	adds r3, #0x83
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xf
	ands r0, r5
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_0801C092:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C09C: .4byte gCurLevelInfo
_0801C0A0: .4byte gUnk_0203AD3C
_0801C0A4: .4byte gUnk_082DE5A8

	thumb_func_start sub_0801C0A8
sub_0801C0A8: @ 0x0801C0A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0801C0E4 @ =sub_0801C194
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0801C0E8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C0EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0801C0F4
	.align 2, 0
_0801C0E4: .4byte sub_0801C194
_0801C0E8: .4byte sub_0803DCCC
_0801C0EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0801C0F4:
	adds r0, r6, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	str r7, [r6, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	ldr r0, _0801C18C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C140
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0801C140:
	ldr r5, _0801C190 @ =gUnk_082DE5E0
	mov r0, r8
	lsls r4, r0, #1
	add r4, r8
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	adds r2, r0, #0
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r4, r5
	ldrh r3, [r0]
	adds r5, #2
	adds r4, r4, r5
	ldrb r0, [r4]
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r0, r6, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801C18C: .4byte gUnk_03000510
_0801C190: .4byte gUnk_082DE5E0

	thumb_func_start sub_0801C194
sub_0801C194: @ 0x0801C194
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801C1B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0801C1B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801C1C0
	.align 2, 0
_0801C1B4: .4byte gCurTask
_0801C1B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801C1C0:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0801C1DC
	ldr r0, [r5]
	bl TaskDestroy
	b _0801C2F4
_0801C1DC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0801C228
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801C1F4
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0801C1F4
	str r2, [r3, #0x44]
	movs r1, #0
_0801C1F4:
	cmp r1, #0
	beq _0801C228
	ldr r0, _0801C224 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C298
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0801C2F4
	.align 2, 0
_0801C224: .4byte gUnk_03000510
_0801C228:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0801C290 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0801C26A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0801C26A
	movs r4, #4
_0801C26A:
	ldr r0, _0801C294 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0801C298
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801C298
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0801C2F4
	.align 2, 0
_0801C290: .4byte gKirbys
_0801C294: .4byte gUnk_03000510
_0801C298:
	ldr r0, _0801C2FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C2DC
	ldr r6, _0801C300 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _0801C304 @ =gUnk_02026D50
_0801C2AA:
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
	bne _0801C2D4
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801C2EE
_0801C2D4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0801C2AA
_0801C2DC:
	movs r0, #1
	cmp r0, #0
	beq _0801C2EE
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0801C2EE:
	adds r0, r3, #0
	bl sub_0806FAC8
_0801C2F4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2FC: .4byte gUnk_0203AD44
_0801C300: .4byte gCurLevelInfo
_0801C304: .4byte gUnk_02026D50

	thumb_func_start sub_0801C308
sub_0801C308: @ 0x0801C308
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #7
	bhi _0801C320
	ldr r0, _0801C31C @ =sub_0801C364
	str r0, [r4, #0x78]
	b _0801C354
	.align 2, 0
_0801C31C: .4byte sub_0801C364
_0801C320:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C338
	ldr r0, _0801C334 @ =sub_0801C3E0
	b _0801C34E
	.align 2, 0
_0801C334: .4byte sub_0801C3E0
_0801C338:
	adds r0, r4, #0
	bl sub_0801BBA8
	cmp r0, #0
	beq _0801C34C
	ldr r0, _0801C348 @ =sub_0801C39C
	b _0801C34E
	.align 2, 0
_0801C348: .4byte sub_0801C39C
_0801C34C:
	ldr r0, _0801C35C @ =sub_0801C388
_0801C34E:
	str r0, [r4, #0x78]
	ldr r0, _0801C360 @ =sub_0801C004
	str r0, [r4, #0x7c]
_0801C354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C35C: .4byte sub_0801C388
_0801C360: .4byte sub_0801C004

	thumb_func_start sub_0801C364
sub_0801C364: @ 0x0801C364
	adds r2, r0, #0
	adds r2, #0xd6
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0801C384 @ =sub_0801C3F4
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0801C384: .4byte sub_0801C3F4

	thumb_func_start sub_0801C388
sub_0801C388: @ 0x0801C388
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #8
	strb r1, [r2]
	ldr r1, _0801C398 @ =sub_0801C5CC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C398: .4byte sub_0801C5CC

	thumb_func_start sub_0801C39C
sub_0801C39C: @ 0x0801C39C
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xa
	strb r1, [r2]
	ldr r1, _0801C3AC @ =sub_0801C618
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3AC: .4byte sub_0801C618

	thumb_func_start sub_0801C3B0
sub_0801C3B0: @ 0x0801C3B0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #9
	strb r1, [r2]
	ldr r1, _0801C3C0 @ =nullsub_27
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3C0: .4byte nullsub_27

	thumb_func_start sub_0801C3C4
sub_0801C3C4: @ 0x0801C3C4
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xc
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #7
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C3DC @ =sub_0801C650
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3DC: .4byte sub_0801C650

	thumb_func_start sub_0801C3E0
sub_0801C3E0: @ 0x0801C3E0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xd
	strb r1, [r2]
	ldr r1, _0801C3F0 @ =sub_0801C66C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C3F0: .4byte sub_0801C66C

	thumb_func_start sub_0801C3F4
sub_0801C3F4: @ 0x0801C3F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov ip, r4
	movs r2, #0
	ldr r0, _0801C468 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r2, r1
	bhs _0801C442
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r5, [r0]
	adds r3, r1, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r8, r0
	ldr r6, _0801C46C @ =gKirbys
_0801C418:
	mov r0, r8
	muls r0, r2, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801C438
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801C45C
_0801C438:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _0801C418
_0801C442:
	ldr r0, [r4, #8]
	ldr r1, _0801C470 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _0801C474 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	mov r0, ip
	movs r1, #0
	movs r2, #0
	bl sub_080953D4
	ldr r0, _0801C478 @ =sub_0801C47C
	str r0, [r4, #0x78]
_0801C45C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C468: .4byte gUnk_0203AD44
_0801C46C: .4byte gKirbys
_0801C470: .4byte 0xFFFFFDFF
_0801C474: .4byte 0xFFFFFBFF
_0801C478: .4byte sub_0801C47C

	thumb_func_start sub_0801C47C
sub_0801C47C: @ 0x0801C47C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xdc
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801C4A0 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, _0801C4A4 @ =sub_0801C4A8
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4A0: .4byte 0x00000292
_0801C4A4: .4byte sub_0801C4A8

	thumb_func_start sub_0801C4A8
sub_0801C4A8: @ 0x0801C4A8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xdc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0801C4C2
	ldr r0, _0801C4D0 @ =sub_0801C4D4
	str r0, [r3, #0x78]
_0801C4C2:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4D0: .4byte sub_0801C4D4

	thumb_func_start sub_0801C4D4
sub_0801C4D4: @ 0x0801C4D4
	adds r2, r0, #0
	adds r2, #0xd6
	movs r1, #0
	strh r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C4EC @ =sub_0801BC28
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C4EC: .4byte sub_0801BC28

	thumb_func_start sub_0801C4F0
sub_0801C4F0: @ 0x0801C4F0
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x8a
	strh r1, [r0]
	ldr r0, _0801C508 @ =sub_0801C50C
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_0801C508: .4byte sub_0801C50C

	thumb_func_start sub_0801C50C
sub_0801C50C: @ 0x0801C50C
	push {lr}
	adds r3, r0, #0
	adds r0, #0xdc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801C524
	ldr r0, _0801C528 @ =sub_0801C52C
	str r0, [r3, #0x78]
_0801C524:
	pop {r0}
	bx r0
	.align 2, 0
_0801C528: .4byte sub_0801C52C

	thumb_func_start sub_0801C52C
sub_0801C52C: @ 0x0801C52C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080395D4
	cmp r0, #0
	beq _0801C54C
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08039600
	ldr r0, _0801C554 @ =sub_0801C558
	str r0, [r4, #0x78]
_0801C54C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C554: .4byte sub_0801C558

	thumb_func_start sub_0801C558
sub_0801C558: @ 0x0801C558
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r3, #0
	adds r0, #0x60
	ldrh r2, [r0]
	movs r1, #0
	ldr r7, _0801C5B8 @ =gRngVal
	ldr r0, _0801C5BC @ =sub_0801BD68
	mov ip, r0
	movs r5, #0xd4
	lsls r5, r5, #1
	ldr r4, _0801C5C0 @ =gKirbys
_0801C570:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0x60
	ldrh r0, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0801C570
	ldr r1, [r7]
	ldr r0, _0801C5C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801C5C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r1, r6, #0
	adds r1, #0xdc
	movs r2, #0
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xe0
	strh r2, [r0]
	mov r0, ip
	str r0, [r3, #0x78]
	adds r0, r3, #0
	bl _call_via_ip
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5B8: .4byte gRngVal
_0801C5BC: .4byte sub_0801BD68
_0801C5C0: .4byte gKirbys
_0801C5C4: .4byte 0x00196225
_0801C5C8: .4byte 0x3C6EF35F

	thumb_func_start sub_0801C5CC
sub_0801C5CC: @ 0x0801C5CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801BBA8
	cmp r0, #0
	beq _0801C5E4
	ldr r0, _0801C5E0 @ =sub_0801C6AC
	str r0, [r4, #0x78]
	b _0801C610
	.align 2, 0
_0801C5E0: .4byte sub_0801C6AC
_0801C5E4:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0xb4
	adds r3, r4, #0
	adds r3, #0x2f
_0801C5EE:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801C5FE
	ldrb r1, [r3]
	adds r0, #0x2b
	strb r1, [r0]
_0801C5FE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0801C5EE
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_0801C610:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C618
sub_0801C618: @ 0x0801C618
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	lsrs r1, r1, #1
	movs r0, #1
	ands r1, r0
	adds r0, r4, #0
	bl sub_0801BA18
	cmp r0, #0
	beq _0801C63C
	ldr r0, _0801C638 @ =sub_0801C6C0
	str r0, [r4, #0x78]
	b _0801C644
	.align 2, 0
_0801C638: .4byte sub_0801C6C0
_0801C63C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_0801C644:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_27
nullsub_27: @ 0x0801C64C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801C650
sub_0801C650: @ 0x0801C650
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C662
	ldr r0, _0801C668 @ =sub_0801C39C
	str r0, [r2, #0x78]
_0801C662:
	pop {r0}
	bx r0
	.align 2, 0
_0801C668: .4byte sub_0801C39C

	thumb_func_start sub_0801C66C
sub_0801C66C: @ 0x0801C66C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _0801C69C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _0801C6A4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0801C6A8 @ =sub_0801C39C
	str r0, [r4, #0x78]
_0801C69C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6A4: .4byte 0xFFFFFBFF
_0801C6A8: .4byte sub_0801C39C

	thumb_func_start sub_0801C6AC
sub_0801C6AC: @ 0x0801C6AC
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #9
	strb r1, [r2]
	ldr r1, _0801C6BC @ =sub_0801BE4C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C6BC: .4byte sub_0801BE4C

	thumb_func_start sub_0801C6C0
sub_0801C6C0: @ 0x0801C6C0
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xb
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #7
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #8]
	ldr r1, _0801C6D8 @ =sub_0801C6DC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0801C6D8: .4byte sub_0801C6DC

	thumb_func_start sub_0801C6DC
sub_0801C6DC: @ 0x0801C6DC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C6EE
	ldr r0, _0801C6F4 @ =sub_0801C6AC
	str r0, [r2, #0x78]
_0801C6EE:
	pop {r0}
	bx r0
	.align 2, 0
_0801C6F4: .4byte sub_0801C6AC

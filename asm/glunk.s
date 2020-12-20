	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateGlunk
CreateGlunk: @ 0x080AEDDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AEE10 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AEE14 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AEE18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AEE20
	.align 2, 0
_080AEE10: .4byte ObjectMain
_080AEE14: .4byte ObjectDestroy
_080AEE18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AEE20:
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
	ble _080AEE40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AEE48
_080AEE40:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AEE48:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
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
	ldr r2, _080AEEA0 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AEEA0: .4byte gUnk_08351648

	thumb_func_start sub_080AEEA4
sub_080AEEA4: @ 0x080AEEA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEEF0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AEF08
	adds r0, r4, #0
	bl sub_080AEF14
	adds r0, r4, #0
	bl sub_080AF204
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080AEF08
	ldr r2, _080AEEEC @ =sub_080AF624
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080AEF08
	.align 2, 0
_080AEEEC: .4byte sub_080AF624
_080AEEF0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x23
	ble _080AEF08
	ldr r2, _080AEF10 @ =sub_080AF624
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080AEF08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEF10: .4byte sub_080AF624

	thumb_func_start sub_080AEF14
sub_080AEF14: @ 0x080AEF14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080AEF28 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080AEF2C @ =gUnk_020229E0
	b _080AEF44
	.align 2, 0
_080AEF28: .4byte gUnk_020229D4
_080AEF2C: .4byte gUnk_020229E0
_080AEF30:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080AEF4C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080AEF44:
	cmp r0, #0
	bne _080AEF30
	orrs r2, r3
	str r2, [r1]
_080AEF4C:
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
	movs r0, #0xd6
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
	adds r1, r0, #0
	str r5, [r1, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080AEFB6
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080AEFB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateGlunkBullet
CreateGlunkBullet: @ 0x080AEFBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080AEFF0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AEFF4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AEFF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080AF000
	.align 2, 0
_080AEFF0: .4byte ObjectMain
_080AEFF4: .4byte ObjectDestroy
_080AEFF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080AF000:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0x63
	movs r5, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r6, #8]
	movs r3, #0x40
	orrs r2, r3
	ldr r0, [r6, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	ldr r0, _080AF09C @ =0x20000043
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x5c]
	orrs r2, r3
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080AF0A0 @ =sub_0809F840
	str r0, [r6, #0x7c]
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	ldr r2, _080AF0A4 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AF09C: .4byte 0x20000043
_080AF0A0: .4byte sub_0809F840
_080AF0A4: .4byte gUnk_08351648

	thumb_func_start sub_080AF0A8
sub_080AF0A8: @ 0x080AF0A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF14C @ =sub_080AF16C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r1, _080AF150 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r1, _080AF154 @ =gKirbys
	ldr r0, _080AF158 @ =gUnk_0203AD3C
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
	bne _080AF144
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AF104
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AF144
_080AF104:
	ldr r1, _080AF15C @ =gUnk_08D60FA4
	ldr r4, _080AF160 @ =gSongTable
	ldr r2, _080AF164 @ =0x00000A34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AF12A
	movs r1, #0xa3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AF144
_080AF12A:
	cmp r3, #0
	beq _080AF13C
	ldr r0, _080AF168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AF144
_080AF13C:
	movs r0, #0xa3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080AF144:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF14C: .4byte sub_080AF16C
_080AF150: .4byte 0xFFFFF800
_080AF154: .4byte gKirbys
_080AF158: .4byte gUnk_0203AD3C
_080AF15C: .4byte gUnk_08D60FA4
_080AF160: .4byte gSongTable
_080AF164: .4byte 0x00000A34
_080AF168: .4byte gUnk_0203AD10

	thumb_func_start sub_080AF16C
sub_080AF16C: @ 0x080AF16C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080AF1FC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AF200 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080AF1C4
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080AF1C4
	adds r0, r4, #0
	bl sub_0806FC70
_080AF1C4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _080AF1E6
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AF1F6
_080AF1E6:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080AF1F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF1FC: .4byte 0xFFFFFEFF
_080AF200: .4byte gCurLevelInfo

	thumb_func_start sub_080AF204
sub_080AF204: @ 0x080AF204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080AF238 @ =sub_080AF330
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080AF23C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080AF248
	.align 2, 0
_080AF238: .4byte sub_080AF330
_080AF23C: .4byte sub_0803DCCC
_080AF240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080AF248:
	adds r4, r6, #0
	adds r0, r4, #0
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
	movs r1, #0x42
	adds r1, r1, r4
	mov r8, r1
	movs r7, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r7
	strh r3, [r4, #6]
	strh r2, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080AF308 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _080AF30C @ =gUnk_03000510
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
	beq _080AF2B4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r4, #6]
_080AF2B4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r3, _080AF310 @ =0x00000329
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #6
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080AF314 @ =gKirbys
	ldr r0, _080AF318 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3]
	cmp r0, r3
	bne _080AF320
	ldr r5, _080AF31C @ =0x00000327
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AF322
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080AF322
	.align 2, 0
_080AF308: .4byte 0xFFFFF800
_080AF30C: .4byte gUnk_03000510
_080AF310: .4byte 0x00000329
_080AF314: .4byte gKirbys
_080AF318: .4byte gUnk_0203AD3C
_080AF31C: .4byte 0x00000327
_080AF320:
	strb r7, [r4]
_080AF322:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF330
sub_080AF330: @ 0x080AF330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080AF350 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF354
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AF35C
	.align 2, 0
_080AF350: .4byte gCurTask
_080AF354:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AF35C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080AF372
	ldr r0, [r2]
	bl TaskDestroy
	b _080AF606
_080AF372:
	ldr r2, _080AF3D8 @ =gKirbys
	ldr r0, _080AF3DC @ =gUnk_0203AD3C
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
	bne _080AF420
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080AF3E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AF446
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AF3E0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AF3E4 @ =0x0400000A
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
	b _080AF446
	.align 2, 0
_080AF3D8: .4byte gKirbys
_080AF3DC: .4byte gUnk_0203AD3C
_080AF3E0: .4byte 0xFFF7FFFF
_080AF3E4: .4byte 0x0400000A
_080AF3E8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080AF446
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080AF418 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080AF41C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080AF446
	.align 2, 0
_080AF418: .4byte 0xFFF7FFFF
_080AF41C: .4byte 0x0400000A
_080AF420:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080AF43C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080AF43C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080AF43C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080AF446:
	ldr r2, _080AF48C @ =gKirbys
	ldr r0, _080AF490 @ =gUnk_0203AD3C
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
	bne _080AF498
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AF4A0
	ldr r6, _080AF494 @ =0x00000327
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AF4A0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080AF4A0
	.align 2, 0
_080AF48C: .4byte gKirbys
_080AF490: .4byte gUnk_0203AD3C
_080AF494: .4byte 0x00000327
_080AF498:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080AF4A0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080AF4F4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AF4BE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080AF4BE
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080AF4BE:
	cmp r3, #0
	beq _080AF4F4
	ldr r0, _080AF4F0 @ =gUnk_03000510
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
	beq _080AF560
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080AF560
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080AF606
	.align 2, 0
_080AF4F0: .4byte gUnk_03000510
_080AF4F4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080AF558 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080AF532
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080AF532
	movs r3, #4
_080AF532:
	ldr r0, _080AF55C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AF560
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080AF560
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080AF606
	.align 2, 0
_080AF558: .4byte gKirbys
_080AF55C: .4byte gUnk_03000510
_080AF560:
	ldr r0, _080AF5D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _080AF5A4
	ldr r6, _080AF5D8 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _080AF5DC @ =gUnk_02026D50
_080AF572:
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
	bne _080AF59C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AF5B6
_080AF59C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080AF572
_080AF5A4:
	movs r0, #1
	cmp r0, #0
	beq _080AF5B6
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080AF5B6:
	mov r0, ip
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080AF5E0
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080AF606
	.align 2, 0
_080AF5D4: .4byte gUnk_0203AD44
_080AF5D8: .4byte gCurLevelInfo
_080AF5DC: .4byte gUnk_02026D50
_080AF5E0:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AF600
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
_080AF600:
	adds r0, r5, #0
	bl sub_0806FAC8
_080AF606:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF610
sub_080AF610: @ 0x080AF610
	push {lr}
	ldr r2, _080AF620 @ =sub_080AF624
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AF620: .4byte sub_080AF624

	thumb_func_start sub_080AF624
sub_080AF624: @ 0x080AF624
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF656
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r2, [r1]
	movs r1, #3
	subs r1, r1, r2
	cmp r0, r1
	blt _080AF656
	adds r0, r3, #0
	bl sub_080AF65C
_080AF656:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF65C
sub_080AF65C: @ 0x080AF65C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF67C @ =sub_080AEEA4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF67C: .4byte sub_080AEEA4

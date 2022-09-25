	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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

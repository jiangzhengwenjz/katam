	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBangBang
CreateBangBang: @ 0x080C67B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C67E8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C67EC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C67F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C67F8
	.align 2, 0
_080C67E8: .4byte ObjectMain
_080C67EC: .4byte ObjectDestroy
_080C67F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C67F8:
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
	ble _080C6818
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C6820
_080C6818:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C6820:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080C6880 @ =gUnk_08351648
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
_080C6880: .4byte gUnk_08351648

	thumb_func_start sub_080C6884
sub_080C6884: @ 0x080C6884
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C68F0
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C68B8
	eors r2, r5
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C68B8:
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C68DE
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C68DE
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C68DE:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C68F0
	adds r0, r4, #0
	bl sub_080C7174
_080C68F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C68F8
sub_080C68F8: @ 0x080C68F8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C69DC
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r2, [r0]
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	ldr r2, [r4, #0x44]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bhi _080C69C4
	lsls r0, r0, #2
	ldr r1, _080C6944 @ =_080C6948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6944: .4byte _080C6948
_080C6948: @ jump table
	.4byte _080C69B2 @ case 0
	.4byte _080C69C4 @ case 1
	.4byte _080C69C4 @ case 2
	.4byte _080C69C4 @ case 3
	.4byte _080C69C4 @ case 4
	.4byte _080C69C4 @ case 5
	.4byte _080C69C4 @ case 6
	.4byte _080C6988 @ case 7
	.4byte _080C6988 @ case 8
	.4byte _080C6998 @ case 9
	.4byte _080C6998 @ case 10
	.4byte _080C69A0 @ case 11
	.4byte _080C69A0 @ case 12
	.4byte _080C69B2 @ case 13
	.4byte _080C69B2 @ case 14
	.4byte _080C69B2 @ case 15
_080C6988:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	b _080C69C2
_080C6998:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C69BA
_080C69A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _080C69C2
_080C69B2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C69BA:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
_080C69C2:
	strb r0, [r1]
_080C69C4:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080C69DC
	adds r0, r4, #0
	bl sub_080C69E4
_080C69DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C69E4
sub_080C69E4: @ 0x080C69E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080C6A7C @ =sub_080C71C4
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r0, #3
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080C6A80 @ =gUnk_02020EE0
	ldr r0, _080C6A84 @ =gUnk_0203AD3C
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
	bne _080C6A74
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C6A38
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C6A74
_080C6A38:
	ldr r1, _080C6A88 @ =gUnk_08D60FA4
	ldr r4, _080C6A8C @ =gSongTable
	ldr r2, _080C6A90 @ =0x00000A8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C6A5C
	ldr r1, _080C6A94 @ =0x00000A88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C6A74
_080C6A5C:
	cmp r3, #0
	beq _080C6A6E
	ldr r0, _080C6A98 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C6A74
_080C6A6E:
	ldr r0, _080C6A9C @ =0x00000151
	bl m4aSongNumStart
_080C6A74:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6A7C: .4byte sub_080C71C4
_080C6A80: .4byte gUnk_02020EE0
_080C6A84: .4byte gUnk_0203AD3C
_080C6A88: .4byte gUnk_08D60FA4
_080C6A8C: .4byte gSongTable
_080C6A90: .4byte 0x00000A8C
_080C6A94: .4byte 0x00000A88
_080C6A98: .4byte gUnk_0203AD10
_080C6A9C: .4byte 0x00000151

	thumb_func_start sub_080C6AA0
sub_080C6AA0: @ 0x080C6AA0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080C6AD0 @ =sub_080C6B40
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	beq _080C6AEE
	cmp r0, #6
	bgt _080C6AD4
	cmp r0, #5
	beq _080C6ADA
	b _080C6B10
	.align 2, 0
_080C6AD0: .4byte sub_080C6B40
_080C6AD4:
	cmp r0, #7
	beq _080C6AFE
	b _080C6B10
_080C6ADA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x8a
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080C6B0E
_080C6AEE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe2
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080C6B10
_080C6AFE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
_080C6B0E:
	strh r0, [r1]
_080C6B10:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6B24
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C6B24:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0xc8
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6B40
sub_080C6B40: @ 0x080C6B40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	beq _080C6B98
	cmp r7, #1
	bne _080C6B56
	b _080C6CFE
_080C6B56:
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
	cmp r0, #0xf
	bhi _080C6B74
	b _080C6E66
_080C6B74:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
	b _080C6E66
_080C6B98:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1d
	bls _080C6BD4
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
_080C6BD4:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6C00 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6C04
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6C4A
	strh r2, [r1]
	b _080C6C4A
	.align 2, 0
_080C6C00: .4byte 0xFFFFF000
_080C6C04:
	cmp r2, r0
	bge _080C6C24
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6C20 @ =0xFFFFFEE0
	cmp r0, r2
	bge _080C6C4A
	strh r2, [r1]
	b _080C6C4A
	.align 2, 0
_080C6C20: .4byte 0xFFFFFEE0
_080C6C24:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6C3E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6C4A
	b _080C6C48
_080C6C3E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6C4A
_080C6C48:
	strh r7, [r1]
_080C6C4A:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6C84 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6C8C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6C80
	b _080C6F32
_080C6C80:
	ldr r2, _080C6C88 @ =0xFFFFFEE0
	b _080C6F54
	.align 2, 0
_080C6C84: .4byte 0xFFFFF000
_080C6C88: .4byte 0xFFFFFEE0
_080C6C8C:
	cmp r2, r0
	ble _080C6CE0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6CC0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6CBC @ =0xFFFFFEE0
	cmp r0, r2
	bge _080C6CB4
	b _080C6F32
_080C6CB4:
	movs r2, #0x90
	lsls r2, r2, #1
	b _080C6F2E
	.align 2, 0
_080C6CBC: .4byte 0xFFFFFEE0
_080C6CC0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6CD8
	b _080C6F32
_080C6CD8:
	ldr r2, _080C6CDC @ =0xFFFFFEE0
	b _080C6F54
	.align 2, 0
_080C6CDC: .4byte 0xFFFFFEE0
_080C6CE0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080C6CF0
	b _080C6F7A
_080C6CF0:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C6CFC
	b _080C6F88
_080C6CFC:
	b _080C6F84
_080C6CFE:
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
	cmp r0, #0xf
	bls _080C6D3C
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
_080C6D3C:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6D68 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6D6C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6DB2
	strh r2, [r1]
	b _080C6DB2
	.align 2, 0
_080C6D68: .4byte 0xFFFFF000
_080C6D6C:
	cmp r2, r0
	bge _080C6D8C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6D88 @ =0xFFFFFE40
	cmp r0, r2
	bge _080C6DB2
	strh r2, [r1]
	b _080C6DB2
	.align 2, 0
_080C6D88: .4byte 0xFFFFFE40
_080C6D8C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6DA6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6DB2
	b _080C6DB0
_080C6DA6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6DB2
_080C6DB0:
	strh r7, [r1]
_080C6DB2:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6DEC @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6DF4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6DE8
	b _080C6F32
_080C6DE8:
	ldr r2, _080C6DF0 @ =0xFFFFFE40
	b _080C6F54
	.align 2, 0
_080C6DEC: .4byte 0xFFFFF000
_080C6DF0: .4byte 0xFFFFFE40
_080C6DF4:
	cmp r2, r0
	ble _080C6E48
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6E28
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6E24 @ =0xFFFFFE40
	cmp r0, r2
	bge _080C6E1C
	b _080C6F32
_080C6E1C:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080C6F2E
	.align 2, 0
_080C6E24: .4byte 0xFFFFFE40
_080C6E28:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6E40
	b _080C6F32
_080C6E40:
	ldr r2, _080C6E44 @ =0xFFFFFE40
	b _080C6F54
	.align 2, 0
_080C6E44: .4byte 0xFFFFFE40
_080C6E48:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080C6E58
	b _080C6F7A
_080C6E58:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C6E64
	b _080C6F88
_080C6E64:
	b _080C6F84
_080C6E66:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6E94 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6E98
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080C6EE0
	strh r2, [r1]
	b _080C6EE0
	.align 2, 0
_080C6E94: .4byte 0xFFFFF000
_080C6E98:
	cmp r2, r0
	bge _080C6EB8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6EB4 @ =0xFFFFFE00
	cmp r0, r2
	bge _080C6EE0
	strh r2, [r1]
	b _080C6EE0
	.align 2, 0
_080C6EB4: .4byte 0xFFFFFE00
_080C6EB8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C6ED2
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6EE0
	b _080C6EDC
_080C6ED2:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6EE0
_080C6EDC:
	movs r0, #0
	strh r0, [r1]
_080C6EE0:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6F00 @ =0xFFFFF000
	ands r2, r1
	mov r5, r8
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6F04
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080C6F3C
	.align 2, 0
_080C6F00: .4byte 0xFFFFF000
_080C6F04:
	cmp r2, r0
	ble _080C6F60
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6F3C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6F38 @ =0xFFFFFE00
	cmp r0, r2
	blt _080C6F32
	movs r2, #0x80
	lsls r2, r2, #2
_080C6F2E:
	cmp r0, r2
	ble _080C6F88
_080C6F32:
	strh r2, [r1]
	b _080C6F88
	.align 2, 0
_080C6F38: .4byte 0xFFFFFE00
_080C6F3C:
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
	bgt _080C6F32
	ldr r2, _080C6F5C @ =0xFFFFFE00
_080C6F54:
	cmp r0, r2
	bge _080C6F88
	b _080C6F32
	.align 2, 0
_080C6F5C: .4byte 0xFFFFFE00
_080C6F60:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6F7A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6F88
	b _080C6F84
_080C6F7A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6F88
_080C6F84:
	movs r0, #0
	strh r0, [r1]
_080C6F88:
	adds r0, r4, #0
	bl sub_080C6FDC
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C6FAA
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C6FAA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C6FC0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C6FD0
_080C6FC0:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C6FD0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6FDC
sub_080C6FDC: @ 0x080C6FDC
	push {r4, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x59
	bgt _080C6FF4
	movs r0, #4
	ands r0, r1
	movs r3, #0x10
	cmp r0, #0
	beq _080C6FF6
_080C6FF4:
	movs r3, #8
_080C6FF6:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C705E
	adds r0, r2, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C702E
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, #0x80
	ble _080C701E
	adds r1, r3, #3
	adds r0, #0x31
	b _080C70CE
_080C701E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C702A
	adds r1, r3, #5
	b _080C70CA
_080C702A:
	adds r1, r3, #4
	b _080C70CA
_080C702E:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C704E
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C7046
	adds r1, r3, #1
	b _080C70CA
_080C7046:
	cmp r0, r1
	bge _080C7088
	adds r1, r3, #7
	b _080C70CA
_080C704E:
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70C4
	adds r1, r3, #2
	b _080C70CA
_080C705E:
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _080C7090
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, #0x80
	ble _080C707C
	adds r1, r3, #1
	adds r0, #0x31
	b _080C70CE
_080C707C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C7088
	adds r1, r3, #7
	b _080C70CA
_080C7088:
	adds r0, r2, #0
	adds r0, #0x83
	strb r3, [r0]
	b _080C70D0
_080C7090:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C70B4
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70A8
	adds r1, r3, #3
	b _080C70CA
_080C70A8:
	cmp r0, r1
	bge _080C70B0
	adds r1, r3, #5
	b _080C70CA
_080C70B0:
	adds r1, r3, #4
	b _080C70CA
_080C70B4:
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70C4
	adds r1, r3, #2
	b _080C70CA
_080C70C4:
	cmp r0, r1
	bge _080C70D0
	adds r1, r3, #6
_080C70CA:
	adds r0, r2, #0
	adds r0, #0x83
_080C70CE:
	strb r1, [r0]
_080C70D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C70D8
sub_080C70D8: @ 0x080C70D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C70F8 @ =sub_080C7118
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C70FC
	adds r0, r4, #0
	bl sub_080C713C
	b _080C7110
	.align 2, 0
_080C70F8: .4byte sub_080C7118
_080C70FC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xc8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
_080C7110:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7118
sub_080C7118: @ 0x080C7118
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7136
	adds r0, r2, #0
	bl sub_080C7174
_080C7136:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C713C
sub_080C713C: @ 0x080C713C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7170 @ =sub_080C6884
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x40
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C715E
	rsbs r0, r3, #0
	strh r0, [r2]
_080C715E:
	movs r0, #0xc8
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C7170: .4byte sub_080C6884

	thumb_func_start sub_080C7174
sub_080C7174: @ 0x080C7174
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C719C @ =sub_080C68F8
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C71A0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C71A8
	.align 2, 0
_080C719C: .4byte sub_080C68F8
_080C71A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C71A8:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C71C4
sub_080C71C4: @ 0x080C71C4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C71D8
	adds r0, r2, #0
	bl sub_080C6AA0
_080C71D8:
	pop {r0}
	bx r0

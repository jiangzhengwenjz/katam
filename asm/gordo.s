	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809FBA8
sub_0809FBA8: @ 0x0809FBA8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x8f
	ble _0809FC00
	adds r1, r0, #0
	cmp r1, #0xa0
	beq _0809FBE8
	cmp r1, #0xa0
	bgt _0809FBCC
	cmp r1, #0x90
	beq _0809FBDC
	b _0809FC3C
_0809FBCC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0809FBF4
	adds r0, #0x10
	cmp r1, r0
	beq _0809FC34
	b _0809FC3C
_0809FBDC:
	adds r1, r2, #0
	adds r1, #0x52
	ldr r0, _0809FBE4 @ =0x0000FF80
	b _0809FC3A
	.align 2, 0
_0809FBE4: .4byte 0x0000FF80
_0809FBE8:
	adds r1, r2, #0
	adds r1, #0x52
	ldr r0, _0809FBF0 @ =0x0000FF40
	b _0809FC3A
	.align 2, 0
_0809FBF0: .4byte 0x0000FF40
_0809FBF4:
	adds r1, r2, #0
	adds r1, #0x52
	ldr r0, _0809FBFC @ =0x0000FF80
	b _0809FC3A
	.align 2, 0
_0809FBFC: .4byte 0x0000FF80
_0809FC00:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x10
	beq _0809FC24
	cmp r0, #0x10
	bgt _0809FC12
	cmp r0, #0
	beq _0809FC1C
	b _0809FC3C
_0809FC12:
	cmp r0, #0x70
	beq _0809FC2C
	cmp r0, #0x80
	beq _0809FC34
	b _0809FC3C
_0809FC1C:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	b _0809FC3A
_0809FC24:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xc0
	b _0809FC3A
_0809FC2C:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0x80
	b _0809FC3A
_0809FC34:
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
_0809FC3A:
	strh r0, [r1]
_0809FC3C:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _0809FC54 @ =0x011F0000
	cmp r0, r1
	ble _0809FC4E
	movs r0, #0
	strh r0, [r2, #4]
_0809FC4E:
	pop {r0}
	bx r0
	.align 2, 0
_0809FC54: .4byte 0x011F0000

	thumb_func_start sub_0809FC58
sub_0809FC58: @ 0x0809FC58
	push {lr}
	ldr r2, _0809FC68 @ =sub_0809FABC
	movs r1, #0
	bl sub_0809F7D8
	pop {r0}
	bx r0
	.align 2, 0
_0809FC68: .4byte sub_0809FABC

	thumb_func_start sub_0809FC6C
sub_0809FC6C: @ 0x0809FC6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0809FC88 @ =sub_0809FAF8
	movs r1, #0
	bl sub_0809F7D8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FC88: .4byte sub_0809FAF8

	thumb_func_start sub_0809FC8C
sub_0809FC8C: @ 0x0809FC8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0809FCA4 @ =sub_0809FB3C
	movs r1, #0
	bl sub_0809F7D8
	adds r4, #0x52
	ldr r0, _0809FCA8 @ =0x0000FF40
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FCA4: .4byte sub_0809FB3C
_0809FCA8: .4byte 0x0000FF40

	thumb_func_start sub_0809FCAC
sub_0809FCAC: @ 0x0809FCAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0809FCD4 @ =sub_0809FCD8
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	lsls r0, r0, #6
	movs r2, #0xc0
	rsbs r2, r2, #0
	adds r1, r2, #0
	subs r1, r1, r0
	adds r4, #0x50
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FCD4: .4byte sub_0809FCD8

	thumb_func_start sub_0809FCD8
sub_0809FCD8: @ 0x0809FCD8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldr r1, _0809FD1C @ =gUnk_08352E04
	movs r3, #4
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809FD0E
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0809FD0E:
	ldrh r0, [r2, #4]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0809FD1C: .4byte gUnk_08352E04

	thumb_func_start sub_0809FD20
sub_0809FD20: @ 0x0809FD20
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0809FD3C @ =sub_0809FBA8
	movs r1, #0
	bl sub_0809F7D8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FD3C: .4byte sub_0809FBA8

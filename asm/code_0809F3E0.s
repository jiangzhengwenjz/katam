	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809F8BC
sub_0809F8BC: @ 0x0809F8BC
	push {r4, lr}
	mov ip, r0
	ldr r4, [r0, #0x70]
	ldr r3, [r0, #8]
	movs r0, #0xbc
	lsls r0, r0, #6
	orrs r3, r0
	mov r0, ip
	str r3, [r0, #8]
	ldr r2, [r0, #0x18]
	ldr r0, _0809F934 @ =0xFFFFF7FF
	ands r2, r0
	mov r1, ip
	str r2, [r1, #0x18]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	orrs r2, r0
	mov r0, ip
	str r2, [r0, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	orrs r1, r0
	mov r2, ip
	str r1, [r2, #8]
	ldr r0, [r4, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r2, #0x44]
	adds r0, r4, #0
	adds r0, #0x54
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x54
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x55
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809F92C
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
_0809F92C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809F934: .4byte 0xFFFFF7FF

	thumb_func_start sub_0809F938
sub_0809F938: @ 0x0809F938
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2, #0x6c]
	str r0, [r2, #0x70]
	strh r1, [r2, #4]
	ldr r1, [r2, #0xc]
	movs r0, #1
	orrs r1, r0
	ldr r0, _0809F960 @ =sub_0809F964
	str r0, [r2, #0x78]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r2, #0xc]
	bx lr
	.align 2, 0
_0809F960: .4byte sub_0809F964

	thumb_func_start sub_0809F964
sub_0809F964: @ 0x0809F964
	ldr r2, [r0, #0x70]
	ldr r1, [r2, #0x40]
	str r1, [r0, #0x40]
	ldr r1, [r2, #0x44]
	str r1, [r0, #0x44]
	bx lr

	thumb_func_start nullsub_123
nullsub_123: @ 0x0809F970
	bx lr
	.align 2, 0

	thumb_func_start sub_0809F974
sub_0809F974: @ 0x0809F974
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	movs r2, #0x40
	orrs r1, r2
	subs r2, #0x61
	ands r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_0809F988
sub_0809F988: @ 0x0809F988
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _0809F9B6
	adds r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _0809F9B6
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0809F9B6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start nullsub_124
nullsub_124: @ 0x0809F9BC
	bx lr
	.align 2, 0

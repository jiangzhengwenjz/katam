	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateEmpty
CreateEmpty: @ 0x0809F5D8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _0809F60C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0809F610 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809F614
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0809F61C
	.align 2, 0
_0809F60C: .4byte ObjectMain
_0809F610: .4byte ObjectDestroy
_0809F614:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0809F61C:
	adds r0, r4, #0
	bl sub_0803E380
	movs r5, #0
	str r5, [r4, #0x10]
	movs r0, #1
	strb r0, [r4]
	ldr r1, _0809F6B0 @ =gUnk_02023530
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r3, r3, r1
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	movs r2, #0
	strh r1, [r0]
	subs r0, #0xa
	strb r7, [r0]
	adds r0, #0x2d
	strb r2, [r0]
	ldrb r0, [r6, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	subs r0, #5
	strh r5, [r0]
	ldr r0, _0809F6B4 @ =nullsub_124
	str r0, [r4, #0x78]
	str r5, [r4, #0x7c]
	adds r7, r4, #0
	adds r7, #0xb0
	str r6, [r7]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, #0xa
	strb r2, [r0]
	subs r0, #4
	str r5, [r0]
	str r5, [r4, #8]
	adds r0, #0x20
	str r5, [r0]
	subs r0, #0xd
	strb r2, [r0]
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	ldr r2, _0809F6B8 @ =0x0000065E
	adds r3, r3, r2
	ldrb r2, [r3]
	movs r3, #1
	bl sub_08001678
	ldrb r0, [r6, #3]
	cmp r0, #0x1f
	bne _0809F6A0
	str r5, [r7]
_0809F6A0:
	movs r0, #0xe4
	lsls r0, r0, #4
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809F6B0: .4byte gUnk_02023530
_0809F6B4: .4byte nullsub_124
_0809F6B8: .4byte 0x0000065E

	thumb_func_start sub_0809F6BC
sub_0809F6BC: @ 0x0809F6BC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x33
	bls _0809F6CA
	b _0809F7D0
_0809F6CA:
	ldr r0, _0809F738 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F7D0
	ldr r0, [r5, #0x58]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0809F7D0
	ldr r3, _0809F73C @ =gRngVal
	ldr r0, [r3]
	ldr r4, _0809F740 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _0809F744 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0809F7D0
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r2, _0809F744 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _0809F748 @ =0x00002AAA
	ldr r4, _0809F74C @ =gUnk_020229D4
	ldr r7, _0809F750 @ =gUnk_020229E0
	movs r3, #0x56
	adds r3, r3, r5
	mov ip, r3
	cmp r2, r0
	blt _0809F72C
	adds r3, r0, #0
_0809F71A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _0809F72C
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _0809F71A
_0809F72C:
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	movs r3, #0
	movs r2, #1
	b _0809F762
	.align 2, 0
_0809F738: .4byte gUnk_0203AD10
_0809F73C: .4byte gRngVal
_0809F740: .4byte 0x00196225
_0809F744: .4byte 0x3C6EF35F
_0809F748: .4byte 0x00002AAA
_0809F74C: .4byte gUnk_020229D4
_0809F750: .4byte gUnk_020229E0
_0809F754:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _0809F770
	movs r2, #1
	lsls r2, r3
_0809F762:
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0809F754
	orrs r1, r2
	str r1, [r4]
_0809F770:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
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
	movs r0, #0x5e
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #2
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_0809F7D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809F7D8
sub_0809F7D8: @ 0x0809F7D8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	lsls r1, r1, #0x10
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	lsrs r2, r1, #0x10
	ldr r0, _0809F814 @ =0xFFFF0000
	cmp r1, r0
	beq _0809F7FA
	adds r0, r3, #0
	adds r0, #0x83
	strb r2, [r0]
_0809F7FA:
	str r4, [r3, #0x78]
	adds r1, r3, #0
	adds r1, #0x9f
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809F814: .4byte 0xFFFF0000

	thumb_func_start sub_0809F818
sub_0809F818: @ 0x0809F818
	push {r4, lr}
	adds r3, r0, #0
	adds r3, #0x9d
	ldrb r2, [r3]
	ldr r1, _0809F83C @ =gUnk_02020EE0
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	strb r1, [r3]
	eors r2, r1
	ands r2, r1
	adds r0, #0x9c
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809F83C: .4byte gUnk_02020EE0

	thumb_func_start sub_0809F840
sub_0809F840: @ 0x0809F840
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x70]
	ldr r0, [r1, #8]
	movs r6, #0x80
	lsls r6, r6, #5
	ands r0, r6
	cmp r0, #0
	bne _0809F85E
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809F884
_0809F85E:
	ldr r5, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r5, r0
	cmp r5, #0
	bne _0809F884
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	bne _0809F878
	adds r0, r4, #0
	bl sub_0809DA30
_0809F878:
	adds r0, r4, #0
	adds r0, #0x80
	strh r5, [r0]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
_0809F884:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809F88C
sub_0809F88C: @ 0x0809F88C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	movs r1, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	strb r1, [r0]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #2
	bne _0809F8B6
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_0809F8B6:
	pop {r0}
	bx r0
	.align 2, 0

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

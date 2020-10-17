	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSpecialHubMirror
CreateSpecialHubMirror: @ 0x0801E2CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0801E300 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801E304 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E308
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0801E310
	.align 2, 0
_0801E300: .4byte ObjectMain
_0801E304: .4byte ObjectDestroy
_0801E308:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0801E310:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r1, r6, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801E374 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _0801E378 @ =0x00018F40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x5c]
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r5, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_0803E308
	ldr r0, _0801E37C @ =sub_0801E590
	str r0, [r6, #0x78]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801E374: .4byte 0x0000FFFF
_0801E378: .4byte 0x00018F40
_0801E37C: .4byte sub_0801E590

	thumb_func_start sub_0801E380
sub_0801E380: @ 0x0801E380
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb8
	ldrh r1, [r5]
	ldr r0, _0801E420 @ =0x0000FFFF
	cmp r1, r0
	bne _0801E3C6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	asrs r2, r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	ldrh r1, [r0, #8]
	strh r1, [r5]
	ldrb r1, [r0, #0xa]
	adds r2, r4, #0
	adds r2, #0xba
	strh r1, [r2]
	ldrb r1, [r0, #0xb]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r1, [r0]
_0801E3C6:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r2, r4, #0
	adds r2, #0xba
	ldrb r2, [r2]
	adds r3, r4, #0
	adds r3, #0xbc
	ldrb r3, [r3]
	bl sub_08002BA8
	cmp r0, #0
	bne _0801E42C
	adds r5, r4, #0
	adds r5, #0xb4
	ldr r0, [r5]
	cmp r0, #0
	bne _0801E41C
	ldr r2, _0801E424 @ =0x000002CF
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808B62C
	str r0, [r5]
	ldrh r2, [r0, #6]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #6]
	ldr r1, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r5]
	ldr r0, [r4, #0x44]
	ldr r2, _0801E428 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r1, [r5]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
_0801E41C:
	movs r0, #1
	b _0801E446
	.align 2, 0
_0801E420: .4byte 0x0000FFFF
_0801E424: .4byte 0x000002CF
_0801E428: .4byte 0xFFFFF000
_0801E42C:
	adds r4, #0xb4
	ldr r3, [r4]
	cmp r3, #0
	beq _0801E444
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	str r2, [r4]
_0801E444:
	movs r0, #0
_0801E446:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801E450
sub_0801E450: @ 0x0801E450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r6, [r0, #0x40]
	asrs r6, r6, #0xc
	lsls r6, r6, #0x18
	ldr r4, [r0, #0x44]
	asrs r4, r4, #0xc
	lsls r4, r4, #0x18
	movs r0, #0x56
	add sb, r0
	mov r0, sb
	ldrb r5, [r0]
	lsrs r7, r6, #0x18
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r6, r6, r0
	lsrs r6, r6, #0x18
	lsrs r0, r4, #0x18
	mov r8, r0
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r4, r4, r0
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r5, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r5, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r0, r5, #0
	mov r1, sl
	adds r2, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	movs r0, #1
	add r8, r0
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	mov r0, sb
	ldrb r4, [r0]
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801E590
sub_0801E590: @ 0x0801E590
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0801E5FC @ =gCurLevelInfo
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r2, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0801E600 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #2
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _0801E5F6
	ldrb r0, [r5]
	ldr r1, [r4, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [r4, #0x44]
	asrs r2, r2, #0xc
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r1, _0801E604 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801E5EC
	adds r0, r4, #0
	bl sub_0801E450
_0801E5EC:
	adds r0, r4, #0
	bl sub_0801E380
	ldr r0, _0801E608 @ =sub_0801E60C
	str r0, [r4, #0x78]
_0801E5F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5FC: .4byte gCurLevelInfo
_0801E600: .4byte 0x0000065E
_0801E604: .4byte gUnk_082D88B8
_0801E608: .4byte sub_0801E60C

	thumb_func_start sub_0801E60C
sub_0801E60C: @ 0x0801E60C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E380
	cmp r0, #0
	bne _0801E61C
	ldr r0, _0801E624 @ =nullsub_108
	str r0, [r4, #0x78]
_0801E61C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E624: .4byte nullsub_108

	thumb_func_start nullsub_108
nullsub_108: @ 0x0801E628
	bx lr
	.align 2, 0

	thumb_func_start nullsub_109
nullsub_109: @ 0x0801E62C
	bx lr
	.align 2, 0

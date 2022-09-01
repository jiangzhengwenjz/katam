	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0811C29C
sub_0811C29C: @ 0x0811C29C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	movs r0, #0
	strh r0, [r7, #4]
	ldr r0, _0811C324 @ =sub_0811C328
	str r0, [r7, #0x78]
	movs r0, #0x18
	bl EwramMalloc
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0x8c
	str r6, [r0]
	subs r0, #0x2c
	ldrb r0, [r0]
	mov r8, r0
	ldr r5, [r7, #0x40]
	lsls r5, r5, #4
	lsrs r5, r5, #0x10
	ldr r4, [r7, #0x44]
	lsls r4, r4, #4
	lsrs r4, r4, #0x10
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	str r0, [r6, #0x14]
	adds r3, r6, #0
	adds r3, #8
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080015A8
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080023E4
	strb r0, [r6, #0x10]
	movs r0, #1
	strb r0, [r6]
	ldr r0, [r6, #0x14]
	ldrb r0, [r0, #0x10]
	strb r0, [r6, #1]
	strb r5, [r6, #2]
	strb r4, [r6, #3]
	movs r0, #0x14
	strh r0, [r6, #4]
	adds r0, r7, #0
	adds r0, #0x85
	mov r1, sb
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C324: .4byte sub_0811C328

	thumb_func_start sub_0811C328
sub_0811C328: @ 0x0811C328
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrb r3, [r0]
	mov ip, r3
	adds r2, r4, #0
	adds r2, #0x84
	adds r0, #0x50
	ldr r1, [r0]
	ldrb r0, [r2]
	ldrh r1, [r1, #0x1e]
	cmp r0, r1
	bls _0811C37E
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r1, [r5]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0811C368
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	movs r0, #0
	strb r0, [r5]
	b _0811C376
_0811C368:
	ldr r1, [r7, #0x14]
	mov r0, ip
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	strb r6, [r5]
_0811C376:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
_0811C37E:
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateUnknown75
CreateUnknown75: @ 0x0811C394
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811C3C8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811C3CC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C3D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811C3D8
	.align 2, 0
_0811C3C8: .4byte ObjectMain
_0811C3CC: .4byte ObjectDestroy
_0811C3D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811C3D8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811C420 @ =0x02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _0811C424 @ =gUnk_08351648
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
_0811C420: .4byte 0x02018F40
_0811C424: .4byte gUnk_08351648

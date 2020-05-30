	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080023E4
sub_080023E4: @ 0x080023E4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r3, r0, r3
	ldr r0, _08002428 @ =gUnk_02023530
	adds r3, r3, r0
	ldr r4, _0800242C @ =gUnk_02024ED0
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	muls r2, r0, r2
	adds r2, r2, r1
	ldr r0, _08002430 @ =0x0000065E
	adds r3, r3, r0
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002428: .4byte gUnk_02023530
_0800242C: .4byte gUnk_02024ED0
_08002430: .4byte 0x0000065E

	thumb_func_start sub_08002434
sub_08002434: @ 0x08002434
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08002468 @ =gUnk_02024ED0
	adds r3, r0, #0
	adds r3, #0xbc
	ldrh r3, [r3]
	lsrs r3, r3, #4
	muls r2, r3, r2
	adds r2, r2, r1
	ldr r1, _0800246C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002468: .4byte gUnk_02024ED0
_0800246C: .4byte 0x0000065E

	thumb_func_start sub_08002470
sub_08002470: @ 0x08002470
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r2, r0, r2
	ldr r0, _080024A0 @ =gUnk_02023530
	adds r6, r2, r0
	adds r0, r6, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r2, r0, #4
	adds r0, r6, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r3, r0, #4
	lsrs r5, r1, #0x10
	cmp r1, #0
	bge _080024A4
	movs r5, #0
	b _080024AE
	.align 2, 0
_080024A0: .4byte gUnk_02023530
_080024A4:
	cmp r2, r5
	bhi _080024AE
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080024AE:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080024B8
	movs r4, #0
	b _080024C2
_080024B8:
	cmp r3, r4
	bhi _080024C2
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080024C2:
	ldr r3, _080024E8 @ =gUnk_02024ED0
	adds r1, r4, #0
	muls r1, r2, r1
	adds r1, r1, r5
	ldr r2, _080024EC @ =0x0000065E
	adds r0, r6, r2
	ldrb r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r2, r0, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080024E8: .4byte gUnk_02024ED0
_080024EC: .4byte 0x0000065E

	thumb_func_start sub_080024F0
sub_080024F0: @ 0x080024F0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r5, r0, #4
	adds r0, r6, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r3, r0, #4
	lsrs r4, r1, #0x10
	cmp r1, #0
	bge _08002512
	movs r4, #0
	b _0800251C
_08002512:
	cmp r5, r4
	bhi _0800251C
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800251C:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08002526
	movs r2, #0
	b _08002530
_08002526:
	cmp r3, r2
	bhi _08002530
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08002530:
	ldr r3, _08002554 @ =gUnk_02024ED0
	adds r1, r2, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r2, _08002558 @ =0x0000065E
	adds r0, r6, r2
	ldrb r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r2, r0, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002554: .4byte gUnk_02024ED0
_08002558: .4byte 0x0000065E

	thumb_func_start sub_0800255C
sub_0800255C: @ 0x0800255C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r4, r0, r4
	ldr r0, _080025A0 @ =gUnk_02023530
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	muls r2, r0, r2
	adds r2, r2, r1
	ldr r5, _080025A4 @ =gUnk_02024ED0
	ldr r0, _080025A8 @ =0x0000065E
	adds r4, r4, r0
	ldrb r1, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r2, r2, r5
	ldrb r0, [r2]
	strb r3, [r2]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080025A0: .4byte gUnk_02023530
_080025A4: .4byte gUnk_02024ED0
_080025A8: .4byte 0x0000065E

	thumb_func_start sub_080025AC
sub_080025AC: @ 0x080025AC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0800260C @ =gUnk_02023530
	adds r2, r2, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	ldr r3, _08002610 @ =gUnk_02024ED0
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	adds r1, r5, #0
	muls r1, r0, r1
	adds r1, r1, r6
	ldr r0, _08002614 @ =0x0000065E
	adds r2, r2, r0
	ldrb r2, [r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r2, r0, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
_080025F4:
	ldrb r0, [r4, #1]
	cmp r0, r1
	bne _08002618
	ldrb r0, [r4, #2]
	cmp r0, r6
	bne _08002618
	ldrb r0, [r4, #3]
	cmp r0, r5
	bne _08002618
	adds r0, r4, #0
	b _0800261E
	.align 2, 0
_0800260C: .4byte gUnk_02023530
_08002610: .4byte gUnk_02024ED0
_08002614: .4byte 0x0000065E
_08002618:
	ldrh r0, [r4, #4]
	adds r4, r4, r0
	b _080025F4
_0800261E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08002624
sub_08002624: @ 0x08002624
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08002690 @ =gUnk_02023530
	adds r2, r2, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	ldr r3, _08002694 @ =gUnk_02024ED0
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r1, r7
	ldr r0, _08002698 @ =0x0000065E
	adds r2, r2, r0
	ldrb r2, [r2]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r2, r0, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
_08002670:
	ldrb r0, [r4, #1]
	cmp r0, r1
	bne _0800269C
	ldrb r0, [r4, #2]
	cmp r0, r7
	bne _0800269C
	ldrb r0, [r4, #3]
	cmp r0, r6
	bne _0800269C
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _0800269C
	adds r0, r4, #0
	b _080026A2
	.align 2, 0
_08002690: .4byte gUnk_02023530
_08002694: .4byte gUnk_02024ED0
_08002698: .4byte 0x0000065E
_0800269C:
	ldrh r0, [r4, #4]
	adds r4, r4, r0
	b _08002670
_080026A2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080026A8
sub_080026A8: @ 0x080026A8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xcd
	lsls r3, r3, #3
	muls r3, r0, r3
	ldr r0, _080026EC @ =gUnk_02023530
	adds r3, r3, r0
	ldr r4, _080026F0 @ =gUnk_02026D60
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	muls r2, r0, r2
	adds r2, r2, r1
	ldr r0, _080026F4 @ =0x0000065E
	adds r3, r3, r0
	ldrb r3, [r3]
	lsls r1, r3, #5
	subs r1, r1, r3
	lsls r0, r1, #6
	subs r0, r0, r1
	adds r0, r0, r3
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080026EC: .4byte gUnk_02023530
_080026F0: .4byte gUnk_02026D60
_080026F4: .4byte 0x0000065E

	thumb_func_start sub_080026F8
sub_080026F8: @ 0x080026F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08002714 @ =gUnk_08D637AC
	ldr r2, _08002718 @ =gUnk_089331AC
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_08002714: .4byte gUnk_08D637AC
_08002718: .4byte gUnk_089331AC

	thumb_func_start sub_0800271C
sub_0800271C: @ 0x0800271C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _08002748 @ =gUnk_08D637AC
	ldr r3, _0800274C @ =gUnk_089331AC
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08002748: .4byte gUnk_08D637AC
_0800274C: .4byte gUnk_089331AC

	thumb_func_start sub_08002750
sub_08002750: @ 0x08002750
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0800276C @ =gUnk_08D637AC
	ldr r2, _08002770 @ =gUnk_089331AC
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrb r0, [r0, #0xd]
	bx lr
	.align 2, 0
_0800276C: .4byte gUnk_08D637AC
_08002770: .4byte gUnk_089331AC

	thumb_func_start sub_08002774
sub_08002774: @ 0x08002774
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _080027A0 @ =gUnk_08D637AC
	ldr r3, _080027A4 @ =gUnk_089331AC
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2, #0x20]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080027A0: .4byte gUnk_08D637AC
_080027A4: .4byte gUnk_089331AC

	thumb_func_start sub_080027A8
sub_080027A8: @ 0x080027A8
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080027C0 @ =gUnk_02023368
	ldr r2, _080027C4 @ =0x05000008
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080027C0: .4byte gUnk_02023368
_080027C4: .4byte 0x05000008

	thumb_func_start sub_080027C8
sub_080027C8: @ 0x080027C8
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080027E0 @ =gUnk_02028BF0
	ldr r2, _080027E4 @ =0x05000008
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080027E0: .4byte gUnk_02028BF0
_080027E4: .4byte 0x05000008

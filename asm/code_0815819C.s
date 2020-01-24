	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815819C
sub_0815819C: @ 0x0815819C
	ldr r1, _081581A4 @ =gUnk_03006CB0
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_081581A4: .4byte gUnk_03006CB0

	thumb_func_start sub_081581A8
sub_081581A8: @ 0x081581A8
	ldr r1, _081581B0 @ =gUnk_03006CB0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_081581B0: .4byte gUnk_03006CB0

	thumb_func_start sub_081581B4
sub_081581B4: @ 0x081581B4
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _081581F4 @ =gUnk_03006CB0
	movs r5, #0
	strb r5, [r6, #8]
	ldr r4, _081581F8 @ =gUnk_03006CBC
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08159088
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _081581FC @ =gUnk_030068D0
	ldr r0, [r0]
	bl LZ77UnCompWram
	ldr r0, _08158200 @ =nullsub_146
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08158204 @ =sub_0815826C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08152B00
	str r5, [r6, #4]
	str r5, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081581F4: .4byte gUnk_03006CB0
_081581F8: .4byte gUnk_03006CBC
_081581FC: .4byte gUnk_030068D0
_08158200: .4byte nullsub_146
_08158204: .4byte sub_0815826C

	thumb_func_start sub_08158208
sub_08158208: @ 0x08158208
	push {lr}
	ldr r3, _08158218 @ =gUnk_03006CB0
	ldr r2, [r3]
	ldr r0, _0815821C @ =0x000007FF
	cmp r2, r0
	ble _08158220
	movs r0, #0
	b _0815822E
	.align 2, 0
_08158218: .4byte gUnk_03006CB0
_0815821C: .4byte 0x000007FF
_08158220:
	ldr r0, _08158234 @ =gUnk_03006CBC
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
_0815822E:
	pop {r1}
	bx r1
	.align 2, 0
_08158234: .4byte gUnk_03006CBC

	thumb_func_start sub_08158238
sub_08158238: @ 0x08158238
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0815825C @ =gUnk_03006CB0
	ldr r2, [r4, #4]
	ldr r0, _08158260 @ =0x000007FF
	cmp r2, r0
	bgt _08158256
	ldr r0, _08158264 @ =gUnk_03006CBC
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r3, [r0]
	adds r0, r2, #1
	str r0, [r4, #4]
_08158256:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0815825C: .4byte gUnk_03006CB0
_08158260: .4byte 0x000007FF
_08158264: .4byte gUnk_03006CBC

	thumb_func_start nullsub_146
nullsub_146: @ 0x08158268
	bx lr
	.align 2, 0

	thumb_func_start sub_0815826C
sub_0815826C: @ 0x0815826C
	push {lr}
	ldr r0, _08158284 @ =gUnk_03006CBC
	ldr r0, [r0]
	bl sub_081590EC
	ldr r1, _08158288 @ =gUnk_03006CB0
	movs r0, #0
	strb r0, [r1, #8]
	str r0, [r1, #4]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08158284: .4byte gUnk_03006CBC
_08158288: .4byte gUnk_03006CB0

	thumb_func_start sub_0815828C
sub_0815828C: @ 0x0815828C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _081582FA
	ldr r0, _08158324 @ =gUnk_030036D0
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_081582B8:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _08158328 @ =gUnk_03002C60
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _081582B8
_081582FA:
	ldr r0, _0815832C @ =gUnk_03003678
	ldr r3, [r0]
	cmp r3, #0
	beq _0815830C
	ldr r0, _08158328 @ =gUnk_03002C60
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_0815830C:
	ldr r0, _08158330 @ =gUnk_03002440
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158324: .4byte gUnk_030036D0
_08158328: .4byte gUnk_03002C60
_0815832C: .4byte gUnk_03003678
_08158330: .4byte gUnk_03002440

	thumb_func_start sub_08158334
sub_08158334: @ 0x08158334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _081583A2
	ldr r0, _081583CC @ =gUnk_030036D0
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_08158360:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _081583D0 @ =gUnk_030037A0
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _08158360
_081583A2:
	ldr r0, _081583D4 @ =gUnk_03003678
	ldr r3, [r0]
	cmp r3, #0
	beq _081583B4
	ldr r0, _081583D0 @ =gUnk_030037A0
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_081583B4:
	ldr r0, _081583D8 @ =gUnk_03002440
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081583CC: .4byte gUnk_030036D0
_081583D0: .4byte gUnk_030037A0
_081583D4: .4byte gUnk_03003678
_081583D8: .4byte gUnk_03002440

	thumb_func_start sub_081583DC
sub_081583DC: @ 0x081583DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r5, _08158430 @ =gUnk_030036D0
	movs r0, #0x80
	adds r0, r0, r5
	mov ip, r0
	movs r3, #0x1f
	mov r8, r3
	adds r6, r5, #0
	adds r6, #0x40
_081583F4:
	lsls r2, r4, #1
	adds r1, r2, r5
	ldrh r0, [r1]
	mov r7, r8
	subs r0, r7, r0
	strh r0, [r1]
	adds r3, r2, r6
	ldrh r1, [r3]
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r3]
	add r2, ip
	ldrh r1, [r2]
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _081583F4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158430: .4byte gUnk_030036D0

	thumb_func_start sub_08158434
sub_08158434: @ 0x08158434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _08158478 @ =gUnk_030036D0
	mov r8, r0
	movs r6, #0
	movs r1, #0x40
	add r1, r8
	mov sl, r1
	movs r3, #0x80
	add r3, r8
	mov sb, r3
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_0815845E:
	lsls r1, r5, #1
	mov r3, r8
	adds r2, r1, r3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	adds r3, r1, #0
	cmp r0, #0
	bge _0815847C
	strh r6, [r2]
	b _08158484
	.align 2, 0
_08158478: .4byte gUnk_030036D0
_0815847C:
	cmp r0, #0x1f
	ble _08158482
	movs r0, #0x1f
_08158482:
	strh r0, [r2]
_08158484:
	mov r0, sl
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #5
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _0815849A
	strh r6, [r2]
	b _081584AC
_0815849A:
	cmp r0, #0x1f
	ble _081584A4
	mov r1, ip
	strh r1, [r2]
	b _081584AC
_081584A4:
	lsls r0, r0, #5
	mov r1, ip
	ands r0, r1
	strh r0, [r2]
_081584AC:
	mov r0, sb
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #0xa
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _081584C2
	strh r6, [r2]
	b _081584D0
_081584C2:
	cmp r0, #0x1f
	ble _081584CA
	strh r7, [r2]
	b _081584D0
_081584CA:
	lsls r0, r0, #0xa
	ands r0, r7
	strh r0, [r2]
_081584D0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0815845E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081584E8
sub_081584E8: @ 0x081584E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r0, #0
	str r0, [sp]
	ldr r1, _08158554 @ =gUnk_030036D0
	mov sb, r1
_081584FE:
	ldr r2, [sp]
	lsls r5, r2, #1
	mov r0, sb
	adds r7, r5, r0
	movs r1, #0
	ldrsh r4, [r7, r1]
	adds r0, r4, #0
	bl __floatsisf
	adds r6, r0, #0
	mov r8, r5
	cmp r4, #0
	bge _08158520
	ldr r1, _08158558 @ =0x47800000
	bl __addsf3
	adds r6, r0, #0
_08158520:
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _0815855C @ =0x41800000
	bl __addsf3
	ldr r1, _08158560 @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _08158564
	movs r0, #0
	b _0815856A
	.align 2, 0
_08158554: .4byte gUnk_030036D0
_08158558: .4byte 0x47800000
_0815855C: .4byte 0x41800000
_08158560: .4byte 0x3D800000
_08158564:
	cmp r0, #0x1f
	ble _0815856A
	movs r0, #0x1f
_0815856A:
	strh r0, [r7]
	mov r0, sb
	adds r0, #0x40
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #5
	bl __floatsisf
	adds r5, r0, #0
	mov r2, sl
	movs r0, #1
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _081585B0 @ =0x41800000
	bl __addsf3
	ldr r1, _081585B4 @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _081585B8
	movs r0, #0
	b _081585CC
	.align 2, 0
_081585B0: .4byte 0x41800000
_081585B4: .4byte 0x3D800000
_081585B8:
	cmp r0, #0x1f
	ble _081585C2
	movs r0, #0xf8
	lsls r0, r0, #2
	b _081585CC
_081585C2:
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r0, r1
_081585CC:
	strh r0, [r6]
	mov r0, sb
	adds r0, #0x80
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #0xa
	bl __floatsisf
	adds r5, r0, #0
	mov r2, sl
	movs r0, #2
	ldrsb r0, [r2, r0]
	bl __floatsisf
	adds r4, r0, #0
	ldr r1, _08158614 @ =0x41800000
	bl __addsf3
	ldr r1, _08158618 @ =0x3D800000
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __subsf3
	bl __fixsfsi
	cmp r0, #0
	bge _0815861C
	movs r0, #0
	b _08158630
	.align 2, 0
_08158614: .4byte 0x41800000
_08158618: .4byte 0x3D800000
_0815861C:
	cmp r0, #0x1f
	ble _08158626
	movs r0, #0xf8
	lsls r0, r0, #7
	b _08158630
_08158626:
	lsls r0, r0, #0xa
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
_08158630:
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x1f
	bhi _08158642
	b _081584FE
_08158642:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08158654
sub_08158654: @ 0x08158654
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sb, r0
	ldr r2, _081586A8 @ =gUnk_030036D0
	mov sl, r2
	ldr r7, _081586AC @ =0x41F80000
_0815866A:
	mov r0, sb
	lsls r5, r0, #1
	mov r2, sl
	adds r6, r5, r2
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl __floatsisf
	cmp r4, #0
	bge _08158686
	ldr r1, _081586B0 @ =0x47800000
	bl __addsf3
_08158686:
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2]
	bl powferrorhandler
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _081586B4
	movs r0, #0
	b _081586BA
	.align 2, 0
_081586A8: .4byte gUnk_030036D0
_081586AC: .4byte 0x41F80000
_081586B0: .4byte 0x47800000
_081586B4:
	cmp r0, #0x1f
	ble _081586BA
	movs r0, #0x1f
_081586BA:
	strh r0, [r6]
	ldr r0, _081586E8 @ =gUnk_03003710
	adds r4, r5, r0
	ldrh r0, [r4]
	lsrs r0, r0, #5
	bl __floatsisf
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2, #4]
	bl powferrorhandler
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _081586EC
	movs r0, #0
	b _081586F8
	.align 2, 0
_081586E8: .4byte gUnk_03003710
_081586EC:
	cmp r0, #0x1f
	ble _081586F6
	movs r0, #0xf8
	lsls r0, r0, #2
	b _081586F8
_081586F6:
	lsls r0, r0, #5
_081586F8:
	strh r0, [r4]
	ldr r0, _08158728 @ =gUnk_03003750
	adds r5, r5, r0
	ldrh r0, [r5]
	lsrs r0, r0, #0xa
	bl __floatsisf
	adds r1, r7, #0
	bl __divsf3
	mov r2, r8
	ldr r1, [r2, #8]
	bl powferrorhandler
	adds r1, r7, #0
	bl __mulsf3
	bl __fixsfsi
	cmp r0, #0
	bge _0815872C
	movs r0, #0
	b _08158738
	.align 2, 0
_08158728: .4byte gUnk_03003750
_0815872C:
	cmp r0, #0x1f
	ble _08158736
	movs r0, #0xf8
	lsls r0, r0, #7
	b _08158738
_08158736:
	lsls r0, r0, #0xa
_08158738:
	strh r0, [r5]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x1f
	bls _0815866A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08158758
sub_08158758: @ 0x08158758
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _081587D4
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_0815877C:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #8
	lsrs r1, r2, #0x10
	cmp r1, #0x1f
	bls _081587C0
	ldr r1, _081587BC @ =0x00007FFF
	adds r0, r1, #0
	b _081587C8
	.align 2, 0
_081587BC: .4byte 0x00007FFF
_081587C0:
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
_081587C8:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0815877C
_081587D4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081587E0
sub_081587E0: @ 0x081587E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r6, #0
	cmp r6, r7
	bhs _08158862
_081587FA:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	mov r1, sb
	adds r5, r0, r1
	ldrh r2, [r5]
	movs r0, #0x1f
	ands r0, r2
	movs r1, #0x4d
	adds r3, r0, #0
	muls r3, r1, r3
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r3, r3, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r3, r3, r0
	lsls r3, r3, #8
	lsrs r4, r3, #0x10
	cmp r4, #0x1f
	bls _08158848
	ldr r1, _08158844 @ =0x000001BF
	adds r0, r1, #0
	strh r0, [r5]
	b _08158858
	.align 2, 0
_08158844: .4byte 0x000001BF
_08158848:
	movs r0, #0x6d
	muls r0, r4, r0
	movs r1, #0xff
	bl __divsi3
	lsls r0, r0, #5
	orrs r4, r0
	strh r4, [r5]
_08158858:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r7
	blo _081587FA
_08158862:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08158870
sub_08158870: @ 0x08158870
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _081588A8 @ =gUnk_03003678
	ldr r4, _081588AC @ =gUnk_030036D0
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_08158880:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bls _08158880
	movs r0, #0
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081588A8: .4byte gUnk_03003678
_081588AC: .4byte gUnk_030036D0

	thumb_func_start sub_081588B0
sub_081588B0: @ 0x081588B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _08158922
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_081588D4:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	asrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xf
	bhi _08158912
	movs r0, #0
	b _08158916
_08158912:
	ldr r1, _08158930 @ =0x00007FFF
	adds r0, r1, #0
_08158916:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _081588D4
_08158922:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158930: .4byte 0x00007FFF

	thumb_func_start sub_08158934
sub_08158934: @ 0x08158934
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08158970 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08158974 @ =gUnk_030036B0
	str r1, [r0, #4]
	ldr r1, _08158978 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0815897C @ =gUnk_03002490
	str r1, [r0, #4]
	ldr r1, _08158980 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08158984 @ =gUnk_03002554
	str r2, [r0]
	ldr r0, _08158988 @ =gUnk_03002558
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08158970: .4byte 0x040000D4
_08158974: .4byte gUnk_030036B0
_08158978: .4byte 0x85000005
_0815897C: .4byte gUnk_03002490
_08158980: .4byte 0x85000014
_08158984: .4byte gUnk_03002554
_08158988: .4byte gUnk_03002558

	thumb_func_start sub_0815898C
sub_0815898C: @ 0x0815898C
	push {r4, lr}
	ldr r0, _081589CC @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _081589C0
	ldr r3, _081589D0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _081589D4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081589D8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _081589DC @ =gIntrTable
	ldr r0, _081589E0 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_081589C0:
	ldr r1, _081589E4 @ =gUnk_03002558
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081589CC: .4byte gUnk_03002440
_081589D0: .4byte 0x04000208
_081589D4: .4byte 0x04000200
_081589D8: .4byte 0x0000FFBF
_081589DC: .4byte gIntrTable
_081589E0: .4byte gMultiSioIntrFuncBuf
_081589E4: .4byte gUnk_03002558

	thumb_func_start sub_081589E8
sub_081589E8: @ 0x081589E8
	push {r4, lr}
	ldr r1, _08158A1C @ =gUnk_03002558
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08158A20 @ =gUnk_03002440
	ldr r0, [r4]
	ldr r1, _08158A24 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08158A14
	bl nullsub_1
_08158A14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08158A1C: .4byte gUnk_03002558
_08158A20: .4byte gUnk_03002440
_08158A24: .4byte 0xFFEFFFFF

	thumb_func_start sub_08158A28
sub_08158A28: @ 0x08158A28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r6, _08158AB8 @ =0x04000208
	movs r3, #0
	strh r3, [r6]
	ldr r2, _08158ABC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158AC0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r6]
	ldr r0, _08158AC4 @ =0x04000134
	strh r3, [r0]
	ldr r4, _08158AC8 @ =0x04000128
	ldr r1, _08158ACC @ =0x00001008
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08158AD0 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	strh r3, [r6]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	mov r0, r8
	strh r0, [r6]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08158AD4 @ =gUnk_03006CC0
	strb r3, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r1, _08158AD8 @ =gUnk_03000020
	ldr r2, _08158ADC @ =0x05000003
	mov r0, sp
	bl CpuSet
	strh r5, [r6]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	mov r1, r8
	strh r1, [r6]
	ldr r1, _08158AE0 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc1
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08158AB8: .4byte 0x04000208
_08158ABC: .4byte 0x04000200
_08158AC0: .4byte 0x0000FF3F
_08158AC4: .4byte 0x04000134
_08158AC8: .4byte 0x04000128
_08158ACC: .4byte 0x00001008
_08158AD0: .4byte 0x04000202
_08158AD4: .4byte gUnk_03006CC0
_08158AD8: .4byte gUnk_03000020
_08158ADC: .4byte 0x05000003
_08158AE0: .4byte 0x0400010C

	thumb_func_start sub_08158AE4
sub_08158AE4: @ 0x08158AE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _08158B1C @ =gUnk_03000030
	ldr r0, _08158B20 @ =0x04000120
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08158B24 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08158B28 @ =gUnk_03006CC0
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #5
	bls _08158B10
	b _08158CCC
_08158B10:
	lsls r0, r1, #2
	ldr r1, _08158B2C @ =_08158B30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08158B1C: .4byte gUnk_03000030
_08158B20: .4byte 0x04000120
_08158B24: .4byte 0x0400010E
_08158B28: .4byte gUnk_03006CC0
_08158B2C: .4byte _08158B30
_08158B30: @ jump table
	.4byte _08158B48 @ case 0
	.4byte _08158C0C @ case 1
	.4byte _08158C4C @ case 2
	.4byte _08158C8C @ case 3
	.4byte _08158CCC @ case 4
	.4byte _08158CCC @ case 5
_08158B48:
	ldr r0, _08158B9C @ =0x04000120
	mov r8, r0
	ldr r6, [r0]
	ldr r3, _08158BA0 @ =gUnk_03000020
	ldrb r1, [r3]
	lsls r2, r1, #4
	adds r0, r6, #0
	lsls r0, r2
	lsrs r0, r0, #0x10
	movs r2, #1
	mov ip, r2
	subs r1, r2, r1
	lsls r1, r1, #4
	lsls r6, r1
	adds r1, r6, #0
	lsrs r6, r1, #0x10
	ldrh r5, [r3, #0xa]
	adds r4, r3, #0
	cmp r5, #0
	bne _08158BD0
	ldrh r2, [r4, #6]
	adds r1, r0, #0
	cmp r1, r2
	bne _08158BCE
	ldrh r3, [r4, #2]
	cmp r3, #3
	bhi _08158BA4
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08158BD0
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bne _08158BD0
	adds r0, r3, #1
	strh r0, [r4, #2]
	b _08158BD0
	.align 2, 0
_08158B9C: .4byte 0x04000120
_08158BA0: .4byte gUnk_03000020
_08158BA4:
	strh r6, [r4, #0xa]
	ldr r0, _08158BC4 @ =0x00008002
	cmp r6, r0
	bne _08158BCC
	mov r0, ip
	strb r0, [r7]
	movs r0, #1
	bl sub_08158DBC
	ldr r1, _08158BC8 @ =gUnk_0300002C
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r5, [r4, #2]
	b _08158CF0
	.align 2, 0
_08158BC4: .4byte 0x00008002
_08158BC8: .4byte gUnk_0300002C
_08158BCC:
	strh r5, [r4, #0xa]
_08158BCE:
	strh r5, [r4, #2]
_08158BD0:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _08158BE4
	lsls r0, r0, #1
	ldr r1, _08158BE0 @ =gAgbSramLibVer
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08158BE8
	.align 2, 0
_08158BE0: .4byte gAgbSramLibVer
_08158BE4:
	movs r0, #0x80
	lsls r0, r0, #8
_08158BE8:
	strh r0, [r4, #4]
	mvns r0, r6
	strh r0, [r4, #6]
	ldr r3, _08158C08 @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	b _08158CF0
	.align 2, 0
_08158C08: .4byte 0x04000120
_08158C0C:
	ldr r5, _08158C30 @ =gUnk_03006CC0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158C3C
	ldr r1, _08158C34 @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp]
	ldr r2, _08158C38 @ =0x05000003
	mov r0, sp
	bl CpuSet
	strb r4, [r5]
	b _08158C40
	.align 2, 0
_08158C30: .4byte gUnk_03006CC0
_08158C34: .4byte gUnk_03000020
_08158C38: .4byte 0x05000003
_08158C3C:
	movs r0, #2
	strb r0, [r5]
_08158C40:
	ldr r0, _08158C48 @ =gUnk_03006CC0
	ldrb r0, [r0]
	b _08158CAE
	.align 2, 0
_08158C48: .4byte gUnk_03006CC0
_08158C4C:
	ldr r5, _08158C70 @ =gUnk_03006CC0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158C7C
	ldr r1, _08158C74 @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _08158C78 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
	b _08158C80
	.align 2, 0
_08158C70: .4byte gUnk_03006CC0
_08158C74: .4byte gUnk_03000020
_08158C78: .4byte 0x05000003
_08158C7C:
	movs r0, #3
	strb r0, [r5]
_08158C80:
	ldr r0, _08158C88 @ =gUnk_03006CC0
	ldrb r0, [r0]
	b _08158CAE
	.align 2, 0
_08158C88: .4byte gUnk_03006CC0
_08158C8C:
	adds r5, r7, #0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158CAC
	ldr r1, _08158CBC @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _08158CC0 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
_08158CAC:
	ldrb r0, [r7]
_08158CAE:
	bl sub_08158DBC
	ldr r1, _08158CC4 @ =gUnk_0300002C
	str r0, [r1]
	ldr r1, _08158CC8 @ =0x04000120
	str r0, [r1]
	b _08158CF0
	.align 2, 0
_08158CBC: .4byte gUnk_03000020
_08158CC0: .4byte 0x05000003
_08158CC4: .4byte gUnk_0300002C
_08158CC8: .4byte 0x04000120
_08158CCC:
	ldr r3, _08158CE4 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08158CE8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158CEC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	b _08158D00
	.align 2, 0
_08158CE4: .4byte 0x04000208
_08158CE8: .4byte 0x04000200
_08158CEC: .4byte 0x0000FF7F
_08158CF0:
	ldr r2, _08158D0C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08158D10 @ =0x0400010E
	movs r0, #0xc1
	strh r0, [r1]
_08158D00:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158D0C: .4byte 0x04000128
_08158D10: .4byte 0x0400010E

	thumb_func_start sub_08158D14
sub_08158D14: @ 0x08158D14
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08158D38 @ =gUnk_03000030
	ldr r0, [r6]
	lsrs r5, r0, #0x1c
	bl sub_08158D80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08158D52
	cmp r4, #2
	beq _08158D5C
	cmp r4, #2
	bgt _08158D3C
	cmp r4, #1
	beq _08158D42
	b _08158D52
	.align 2, 0
_08158D38: .4byte gUnk_03000030
_08158D3C:
	cmp r4, #3
	beq _08158D74
	b _08158D52
_08158D42:
	ldr r1, _08158D58 @ =gUnk_03000034
	ldr r0, [r6]
	lsls r0, r0, #4
	lsrs r0, r0, #8
	ands r0, r4
	str r0, [r1]
	cmp r5, #1
	beq _08158D78
_08158D52:
	movs r0, #1
	b _08158D7A
	.align 2, 0
_08158D58: .4byte gUnk_03000034
_08158D5C:
	cmp r5, #2
	bne _08158D52
	ldr r0, _08158D70 @ =gUnk_03000034
	ldr r1, [r6]
	lsls r1, r1, #4
	lsrs r1, r1, #8
	ldr r0, [r0]
	cmp r0, r1
	beq _08158D78
	b _08158D52
	.align 2, 0
_08158D70: .4byte gUnk_03000034
_08158D74:
	cmp r5, #3
	bne _08158D52
_08158D78:
	movs r0, #0
_08158D7A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08158D80
sub_08158D80: @ 0x08158D80
	push {r4, r5, r6, lr}
	ldr r0, _08158DB0 @ =gUnk_03000030
	ldr r0, [r0]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #6
	movs r6, #0xf
_08158D92:
	subs r0, #1
	lsls r2, r0, #2
	adds r1, r4, #0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08158D92
	cmp r3, r5
	beq _08158DB4
	movs r0, #1
	b _08158DB6
	.align 2, 0
_08158DB0: .4byte gUnk_03000030
_08158DB4:
	movs r0, #0
_08158DB6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08158DBC
sub_08158DBC: @ 0x08158DBC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #4
	bhi _08158E9A
	lsls r0, r0, #2
	ldr r1, _08158DD4 @ =_08158DD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08158DD4: .4byte _08158DD8
_08158DD8: @ jump table
	.4byte _08158DEC @ case 0
	.4byte _08158E10 @ case 1
	.4byte _08158E48 @ case 2
	.4byte _08158E78 @ case 3
	.4byte _08158E78 @ case 4
_08158DEC:
	ldr r4, _08158E0C @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_08158DF4:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158DF4
	b _08158E94
	.align 2, 0
_08158E0C: .4byte 0x10000010
_08158E10:
	ldr r0, _08158E40 @ =gUnk_03000034
	ldr r0, [r0]
	ldr r1, _08158E44 @ =0x00FFFFFF
	ands r0, r1
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_08158E2A:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E2A
	b _08158E94
	.align 2, 0
_08158E40: .4byte gUnk_03000034
_08158E44: .4byte 0x00FFFFFF
_08158E48:
	ldr r0, _08158E74 @ =gUnk_0300607C
	ldrb r0, [r0]
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_08158E5E:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E5E
	b _08158E94
	.align 2, 0
_08158E74: .4byte gUnk_0300607C
_08158E78:
	ldr r4, _08158EA4 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_08158E80:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E80
_08158E94:
	movs r1, #0xf
	ands r1, r3
	orrs r1, r4
_08158E9A:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08158EA4: .4byte 0x10000010

	thumb_func_start Timer3Intr
Timer3Intr: @ 0x08158EA8
	push {r4, r5, lr}
	ldr r3, _08158EE8 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08158EEC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158EF0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r5, #1
	strh r5, [r3]
	strh r4, [r3]
	subs r2, #0xd8
	ldrh r1, [r2]
	ldr r0, _08158EF4 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	strh r5, [r3]
	ldr r0, _08158EF8 @ =0x0400010E
	strh r4, [r0]
	ldr r1, _08158EFC @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08158F00 @ =gUnk_03006CC0
	movs r0, #5
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08158EE8: .4byte 0x04000208
_08158EEC: .4byte 0x04000200
_08158EF0: .4byte 0x0000FFBF
_08158EF4: .4byte 0x0000FF7F
_08158EF8: .4byte 0x0400010E
_08158EFC: .4byte 0x0400010C
_08158F00: .4byte gUnk_03006CC0

	thumb_func_start nullsub_147
nullsub_147: @ 0x08158F04
	bx lr
	.align 2, 0

	thumb_func_start nullsub_1
nullsub_1: @ 0x08158F08
	bx lr
	.align 2, 0

	thumb_func_start nullsub_2
nullsub_2: @ 0x08158F0C
	bx lr
	.align 2, 0

	thumb_func_start sub_08158F10
sub_08158F10: @ 0x08158F10
	movs r0, #1
	bx lr

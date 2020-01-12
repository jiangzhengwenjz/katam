	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D72194
sub_08D72194: @ 0x08D72194
	push {lr}
	ldr r1, _08D721A8 @ =gUnk_03002604
	ldr r0, _08D721AC @ =gUnk_0200EC18
	str r0, [r1]
	bl sub_08D721B0
	bl sub_08D733E8
	pop {r0}
	bx r0
	.align 2, 0
_08D721A8: .4byte gUnk_03002604
_08D721AC: .4byte gUnk_0200EC18

	thumb_func_start sub_08D721B0
sub_08D721B0: @ 0x08D721B0
	push {r4, lr}
	sub sp, #4
	ldr r0, _08D721DC @ =gUnk_03000720
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08D721E0 @ =gUnk_03000470
	ldr r2, _08D721E4 @ =0x01000158
	bl sub_08D7D89C
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08D721E8 @ =gUnk_03000440
	ldr r2, _08D721EC @ =0x01000016
	bl sub_08D7D89C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D721DC: .4byte gUnk_03000720
_08D721E0: .4byte gUnk_03000470
_08D721E4: .4byte 0x01000158
_08D721E8: .4byte gUnk_03000440
_08D721EC: .4byte 0x01000016

	thumb_func_start sub_08D721F0
sub_08D721F0: @ 0x08D721F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08D72254 @ =gUnk_03001420
	ldr r2, _08D72258 @ =0x05000014
	add r0, sp, #4
	bl sub_08D7D89C
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _08D7225C @ =gUnk_03002640
	ldr r2, _08D72260 @ =0x05000005
	bl sub_08D7D89C
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08D72264 @ =gUnk_03000440
	ldr r2, _08D72268 @ =0x01000016
	adds r1, r4, #0
	bl sub_08D7D89C
	strh r5, [r4, #4]
	bl sub_08D7CEF0
	ldr r0, _08D7226C @ =gUnk_02000A15
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_08D7B670
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _08D72270
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D72276
	.align 2, 0
_08D72254: .4byte gUnk_03001420
_08D72258: .4byte 0x05000014
_08D7225C: .4byte gUnk_03002640
_08D72260: .4byte 0x05000005
_08D72264: .4byte gUnk_03000440
_08D72268: .4byte 0x01000016
_08D7226C: .4byte gUnk_02000A15
_08D72270:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08D72276:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D722A0 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08D7D89C
	ldr r0, _08D722A4 @ =gUnk_02000C01
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _08D72298
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl sub_08D7D89C
_08D72298:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D722A0: .4byte 0x01000010
_08D722A4: .4byte gUnk_02000C01

	thumb_func_start sub_08D722A8
sub_08D722A8: @ 0x08D722A8
	push {r4, lr}
	ldr r4, _08D722BC @ =gUnk_03000440
	ldr r0, [r4]
	bl sub_08D7B78C
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D722BC: .4byte gUnk_03000440

	thumb_func_start sub_08D722C0
sub_08D722C0: @ 0x08D722C0
	ldr r2, _08D722CC @ =gUnk_03000440
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08D722CC: .4byte gUnk_03000440

	thumb_func_start sub_08D722D0
sub_08D722D0: @ 0x08D722D0
	ldr r0, _08D722D8 @ =gUnk_03000440
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08D722D8: .4byte gUnk_03000440

	thumb_func_start sub_08D722DC
sub_08D722DC: @ 0x08D722DC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08D7231C @ =gUnk_03001420
	ldr r2, _08D72320 @ =0x05000014
	mov r0, sp
	bl sub_08D7D89C
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08D72324 @ =gUnk_03002640
	ldr r2, _08D72328 @ =0x05000005
	bl sub_08D7D89C
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08D7232C @ =gUnk_03000470
	ldr r2, _08D72330 @ =0x01000158
	adds r1, r4, #0
	bl sub_08D7D89C
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D7231C: .4byte gUnk_03001420
_08D72320: .4byte 0x05000014
_08D72324: .4byte gUnk_03002640
_08D72328: .4byte 0x05000005
_08D7232C: .4byte gUnk_03000470
_08D72330: .4byte 0x01000158

	thumb_func_start sub_08D72334
sub_08D72334: @ 0x08D72334
	ldr r1, _08D7233C @ =gUnk_03000470
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08D7233C: .4byte gUnk_03000470

	thumb_func_start sub_08D72340
sub_08D72340: @ 0x08D72340
	ldr r2, _08D7234C @ =gUnk_03000470
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08D7234C: .4byte gUnk_03000470

	thumb_func_start sub_08D72350
sub_08D72350: @ 0x08D72350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08D723DC @ =gUnk_03000470
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _08D723E0 @ =gUnk_0300041C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08D72406
_08D7236A:
	movs r7, #0xaa
	lsls r7, r7, #2
	adds r3, r5, r7
	adds r3, r3, r4
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r2, r5, r6
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08D723C4
_08D7238A:
	adds r0, r5, r7
	adds r3, r0, r4
	ldrb r2, [r3]
	lsls r1, r2, #3
	lsls r0, r4, #7
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp ip, r0
	beq _08D723B4
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08D7238A
_08D723B4:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08D723E8
_08D723C4:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _08D723E4 @ =gUnk_03000720
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08D72410
	.align 2, 0
_08D723DC: .4byte gUnk_03000470
_08D723E0: .4byte gUnk_0300041C
_08D723E4: .4byte gUnk_03000720
_08D723E8:
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r2, r2, r4
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D7236A
_08D72406:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_08D72410:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7241C
sub_08D7241C: @ 0x08D7241C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08D72430 @ =gUnk_03000470
	ldr r1, _08D72434 @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08D72430: .4byte gUnk_03000470
_08D72434: .4byte 0x000002AD

	thumb_func_start sub_08D72438
sub_08D72438: @ 0x08D72438
	push {r4, r5, r6, r7, lr}
	ldr r7, _08D72558 @ =gUnk_03000470
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D72448
	b _08D72552
_08D72448:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D72452
	b _08D72552
_08D72452:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _08D7255C @ =gUnk_03001E20
	ldrh r1, [r0]
	ldr r0, _08D72560 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _08D72564 @ =gUnk_03002640
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_08D7247E:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08D7247E
	movs r0, #0xab
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrb r5, [r3]
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #2]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #2]
	subs r5, #1
	movs r2, #0xf
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #2]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #4]
	orrs r1, r0
	strh r1, [r6, #4]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #6]
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #8]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #8]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #0xa]
	orrs r1, r0
	strh r1, [r6, #0xa]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #0xa]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	orrs r1, r0
	strh r1, [r6, #0xc]
	subs r0, r5, #1
	ands r0, r2
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #0xc]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
_08D72552:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D72558: .4byte gUnk_03000470
_08D7255C: .4byte gUnk_03001E20
_08D72560: .4byte 0x000003FF
_08D72564: .4byte gUnk_03002640

	thumb_func_start sub_08D72568
sub_08D72568: @ 0x08D72568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D725F0 @ =gUnk_03000470
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D72584
	b _08D729CA
_08D72584:
	movs r1, #0
	mov r8, r1
	ldr r2, _08D725F4 @ =gUnk_0300041C
	ldrb r2, [r2]
	cmp r8, r2
	blo _08D72592
	b _08D7279C
_08D72592:
	ldr r0, _08D725F8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _08D725FC
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	mov r2, ip
	adds r5, r2, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	adds r3, r0, r3
	ldrb r4, [r3]
	subs r0, r4, #1
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0xa0
	add r1, ip
	lsls r0, r0, #3
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r2, [r5]
	cmp r0, r2
	bne _08D725DA
	b _08D72788
_08D725DA:
	lsls r0, r4, #3
	adds r6, r1, r0
	str r2, [r6]
	ldrh r0, [r5, #4]
	strh r0, [r6, #4]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	b _08D72788
	.align 2, 0
_08D725F0: .4byte gUnk_03000470
_08D725F4: .4byte gUnk_0300041C
_08D725F8: .4byte 0x04000128
_08D725FC:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08D727B8 @ =gUnk_03001420
	adds r5, r0, r1
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	mov sb, r0
	ldrb r2, [r0]
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	ldr r4, [r5, #0x10]
	lsls r1, r1, #3
	mov sl, r6
	add r1, sl
	mov r0, ip
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r3, [r0]
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	str r1, [sp]
	asrs r3, r3, #0x18
	adds r2, r2, r3
	subs r7, r2, #1
	movs r2, #0xf
	ands r7, r2
	mov r2, sl
	adds r2, #0xa0
	add r2, ip
	lsls r0, r7, #3
	adds r6, r2, r0
	str r4, [r6]
	ldrh r0, [r5, #2]
	strh r0, [r6, #4]
	subs r7, #1
	movs r4, #0xf
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r6]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #4]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #2
	str r0, [r6]
	ldrh r1, [r5, #4]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #3
	str r0, [r6]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #4
	str r0, [r6]
	ldrh r0, [r5, #8]
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #5
	str r0, [r6]
	ldrh r1, [r5, #8]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #6
	str r0, [r6]
	ldrh r1, [r5, #0xa]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r0, r7, #1
	ands r0, r4
	lsls r0, r0, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #7
	str r0, [r6]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	cmp r3, #0
	ble _08D72708
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_08D72708:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r7, r0, #1
	movs r2, #0xf
	ands r7, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r7, r3
	beq _08D72748
_08D72720:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _08D727BC @ =0x0000FFFF
	str r0, [r6]
	ldrh r1, [r6, #4]
	orrs r0, r1
	strh r0, [r6, #4]
	subs r7, #1
	movs r0, #0xf
	ands r7, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	bne _08D72720
_08D72748:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D72788
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08D7275C
	b _08D7296C
_08D7275C:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _08D72768
	b _08D72984
_08D72768:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	mov r3, r8
	lsls r1, r3, #7
	adds r0, r0, r1
	add r0, ip
	adds r0, #0xa4
	ldrh r1, [r0]
	ldr r0, _08D727BC @ =0x0000FFFF
	cmp r1, r0
	bne _08D72788
	b _08D7299C
_08D72788:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08D727C0 @ =gUnk_0300041C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08D7279C
	b _08D72592
_08D7279C:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D7287A
	ldr r0, _08D727C4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _08D727C0 @ =gUnk_0300041C
	b _08D72836
	.align 2, 0
_08D727B8: .4byte gUnk_03001420
_08D727BC: .4byte 0x0000FFFF
_08D727C0: .4byte gUnk_0300041C
_08D727C4: .4byte 0x0000FFFB
_08D727C8:
	ldr r0, _08D72858 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _08D7282C
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	mov r1, r8
	lsls r3, r1, #7
	adds r0, r0, r3
	mov r2, ip
	adds r2, #0xa0
	adds r0, r2, r0
	ldr r1, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r0, [r2]
	subs r1, r1, r0
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08D7282C
	cmp r1, #1
	bgt _08D72840
_08D7282C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08D72836:
	ldrb r3, [r4]
	cmp r8, r3
	blo _08D727C8
	cmp r5, #0
	beq _08D72860
_08D72840:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D7285C @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D7287A
	.align 2, 0
_08D72858: .4byte 0x04000128
_08D7285C: .4byte 0x000002AD
_08D72860:
	ldr r1, _08D72874 @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08D72878
	adds r0, r2, #1
	strb r0, [r1]
	b _08D7287A
	.align 2, 0
_08D72874: .4byte 0x000002AD
_08D72878:
	strb r5, [r1]
_08D7287A:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D728FA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D72890
	b _08D729B8
_08D72890:
	movs r3, #0
	mov r8, r3
	ldr r0, _08D72928 @ =gUnk_0300041C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _08D728FA
_08D7289E:
	mov r2, r8
	lsls r5, r2, #1
	mov r2, ip
	adds r2, #8
	adds r2, r2, r5
	ldrh r4, [r2]
	movs r3, #0xaa
	lsls r3, r3, #2
	add r3, ip
	add r3, r8
	ldrb r7, [r3]
	mov r1, r8
	lsls r0, r1, #7
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldrh r1, [r6, #4]
	ldr r0, _08D7292C @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x10
	adds r1, r1, r5
	bics r0, r4
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x18
	adds r0, r0, r5
	ldrh r1, [r2]
	bics r4, r1
	strh r4, [r0]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	ldrb r2, [r2]
	cmp r8, r2
	blo _08D7289E
_08D728FA:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08D729B8
	ldr r0, _08D72930 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08D72938
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08D72934 @ =gUnk_03000720
	movs r0, #7
	b _08D729AC
	.align 2, 0
_08D72928: .4byte gUnk_0300041C
_08D7292C: .4byte 0x000003FF
_08D72930: .4byte 0x000002AD
_08D72934: .4byte gUnk_03000720
_08D72938:
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r2, r0
	bne _08D729B8
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08D72968 @ =gUnk_03000720
	movs r0, #5
	b _08D729AC
	.align 2, 0
_08D72968: .4byte gUnk_03000720
_08D7296C:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D72980 @ =gUnk_03000720
	movs r0, #3
	b _08D729AC
	.align 2, 0
_08D72980: .4byte gUnk_03000720
_08D72984:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D72998 @ =gUnk_03000720
	movs r0, #4
	b _08D729AC
	.align 2, 0
_08D72998: .4byte gUnk_03000720
_08D7299C:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08D729B4 @ =gUnk_03000720
	movs r0, #6
_08D729AC:
	str r0, [r1]
	movs r0, #0
	b _08D729CC
	.align 2, 0
_08D729B4: .4byte gUnk_03000720
_08D729B8:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D729CA
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08D729CA:
	movs r0, #1
_08D729CC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D729DC
sub_08D729DC: @ 0x08D729DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D729F8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D729FC @ =gUnk_03000440
	cmp r0, #0
	beq _08D72A00
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D72A04
	.align 2, 0
_08D729F8: .4byte gUnk_03002560
_08D729FC: .4byte gUnk_03000440
_08D72A00:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D72A04:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _08D72AEC
	ldr r0, _08D72A2C @ =gUnk_030014E4
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08D72A34
	ldr r0, _08D72A30 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08D72A64
	.align 2, 0
_08D72A2C: .4byte gUnk_030014E4
_08D72A30: .4byte 0x0000FFFE
_08D72A34:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _08D72A4C
	ldr r0, _08D72A48 @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08D72A68
	.align 2, 0
_08D72A48: .4byte 0x0000FFFD
_08D72A4C:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08D72A98
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _08D72A7C
	ldr r0, _08D72A74 @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_08D72A64:
	ands r0, r1
	ldr r1, _08D72A78 @ =0x0000FFFB
_08D72A68:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _08D72AEC
	.align 2, 0
_08D72A74: .4byte 0x0000FFFF
_08D72A78: .4byte 0x0000FFFB
_08D72A7C:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _08D72A9A
_08D72A82:
	ldr r0, _08D72A94 @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _08D72AEC
	.align 2, 0
_08D72A94: .4byte 0x0000FFFC
_08D72A98:
	strh r2, [r3, #0x18]
_08D72A9A:
	movs r6, #0
_08D72A9C:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r6
	mov r1, ip
	ldr r2, [r1]
	ands r0, r2
	lsls r5, r6, #1
	adds r1, r3, #0
	adds r1, #0x10
	cmp r0, #0
	beq _08D72ACA
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _08D72ACA
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08D72A82
	adds r0, #1
	b _08D72ACE
_08D72ACA:
	adds r1, r1, r5
	movs r0, #0
_08D72ACE:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08D72A9C
	ldr r1, [r3]
	adds r0, r3, #0
	bl sub_08D7D8C0
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _08D72AF4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_08D72AEC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D72AF4: .4byte 0x0000FFFB

	thumb_func_start sub_08D72AF8
sub_08D72AF8: @ 0x08D72AF8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08D72B28 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08D72B2C @ =gUnk_03002640
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_08D72B10:
	ldr r0, _08D72B30 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _08D72B34
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _08D72B86
	.align 2, 0
_08D72B28: .4byte gUnk_03000440
_08D72B2C: .4byte gUnk_03002640
_08D72B30: .4byte 0x04000128
_08D72B34:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _08D72B68 @ =gUnk_030014E4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08D72B9C
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08D72B6C @ =gUnk_03001420
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08D72BAE
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _08D72B74
	ldr r5, _08D72B70 @ =0x0000FFFB
	b _08D72BAE
	.align 2, 0
_08D72B68: .4byte gUnk_030014E4
_08D72B6C: .4byte gUnk_03001420
_08D72B70: .4byte 0x0000FFFB
_08D72B74:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08D72B86
	cmp r0, #0x20
	blt _08D72BAE
	cmp r0, #0x41
	bgt _08D72BAE
	cmp r0, #0x40
	blt _08D72BAE
_08D72B86:
	mov r1, ip
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	lsls r0, r2
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	b _08D72BAE
_08D72B9C:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08D72BAE
	lsls r0, r2, #1
	ldr r1, _08D72BC4 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_08D72BAE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08D72B10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08D72BC4: .4byte 0x04000120

	thumb_func_start sub_08D72BC8
sub_08D72BC8: @ 0x08D72BC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08D72C2C @ =gUnk_03000440
	ldr r1, _08D72C30 @ =gUnk_03002640
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08D72C34 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl sub_08D7D89C
	ldrh r0, [r6, #6]
	ldr r3, _08D72C38 @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08D72C3C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D72C48
	ldr r0, _08D72C40 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D72C48
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08D72C48
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08D72C44 @ =gUnk_02000CC9
	b _08D72C7A
	.align 2, 0
_08D72C2C: .4byte gUnk_03000440
_08D72C30: .4byte gUnk_03002640
_08D72C34: .4byte 0x00000123
_08D72C38: .4byte 0x0000FFFC
_08D72C3C: .4byte 0x04000128
_08D72C40: .4byte gUnk_030014E4
_08D72C44: .4byte gUnk_02000CC9
_08D72C48:
	ldr r3, _08D72C84 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D72C7C
	ldr r0, _08D72C88 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D72C7C
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08D72C7C
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08D72C8C @ =gUnk_02000F69
_08D72C7A:
	str r0, [r4]
_08D72C7C:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D72C84: .4byte 0x04000128
_08D72C88: .4byte gUnk_030014E4
_08D72C8C: .4byte gUnk_02000F69

	thumb_func_start sub_08D72C90
sub_08D72C90: @ 0x08D72C90
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08D72CE8 @ =gUnk_03000440
	ldr r6, _08D72CEC @ =gUnk_03002640
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08D72CF0 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _08D72CF4 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D72CD4
	ldr r0, _08D72CF8 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D72CD4
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D72D04
_08D72CD4:
	ldrh r0, [r4, #6]
	ldr r1, _08D72CFC @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08D72D00 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D72D86
	.align 2, 0
_08D72CE8: .4byte gUnk_03000440
_08D72CEC: .4byte gUnk_03002640
_08D72CF0: .4byte 0x00000123
_08D72CF4: .4byte 0x04000128
_08D72CF8: .4byte gUnk_030014E4
_08D72CFC: .4byte 0x0000FFFC
_08D72D00: .4byte gUnk_02000C01
_08D72D04:
	adds r0, r5, #0
	bl sub_08D72AF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D72D86
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08D72D84
	cmp r0, #1
	bls _08D72D84
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D72D78
	movs r1, #0
_08D72D32:
	ldr r0, _08D72D50 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08D72D54 @ =gUnk_03000448
	adds r4, r1, #1
	cmp r0, r1
	bne _08D72D58
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl sub_08D7D89C
	b _08D72D6C
	.align 2, 0
_08D72D50: .4byte 0x04000128
_08D72D54: .4byte gUnk_03000448
_08D72D58:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08D72D7C @ =gUnk_03001420
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08D7D89C
_08D72D6C:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08D72D32
	ldr r0, _08D72D80 @ =gUnk_02000DC5
	str r0, [r5]
_08D72D78:
	movs r0, #1
	b _08D72D86
	.align 2, 0
_08D72D7C: .4byte gUnk_03001420
_08D72D80: .4byte gUnk_02000DC5
_08D72D84:
	movs r0, #0
_08D72D86:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D72D8C
sub_08D72D8C: @ 0x08D72D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _08D72DF4 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08D72DF8 @ =gUnk_03002640
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _08D72DFC @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _08D72E00 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08D72DE0
	ldr r1, _08D72E04 @ =gUnk_030014E4
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08D72DE0
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D72E10
_08D72DE0:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _08D72E08 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08D72E0C @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D72EFE
	.align 2, 0
_08D72DF4: .4byte gUnk_03000440
_08D72DF8: .4byte gUnk_03002640
_08D72DFC: .4byte 0x00000123
_08D72E00: .4byte 0x04000128
_08D72E04: .4byte gUnk_030014E4
_08D72E08: .4byte 0x0000FFFC
_08D72E0C: .4byte gUnk_02000C01
_08D72E10:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _08D72EB6
	ldr r2, _08D72E60 @ =gUnk_03001420
	mov sl, r2
_08D72E24:
	ldr r0, _08D72E64 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _08D72E98
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08D72EA8
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _08D72EA8
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _08D72E6C
	ldr r6, _08D72E68 @ =0x0000FFFB
	b _08D72EA8
	.align 2, 0
_08D72E60: .4byte gUnk_03001420
_08D72E64: .4byte 0x04000128
_08D72E68: .4byte 0x0000FFFB
_08D72E6C:
	ldrh r1, [r2, #2]
	ldr r0, _08D72E78 @ =0x00000123
	cmp r1, r0
	beq _08D72E80
	ldr r6, _08D72E7C @ =0x0000FFFA
	b _08D72EA8
	.align 2, 0
_08D72E78: .4byte 0x00000123
_08D72E7C: .4byte 0x0000FFFA
_08D72E80:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _08D72EA8
	cmp r0, #0x41
	ble _08D72E90
	cmp r0, #0x42
	beq _08D72E98
	b _08D72EA8
_08D72E90:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _08D72EA4
_08D72E98:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_08D72EA4:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08D72EA8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _08D72E24
_08D72EB6:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D72EFE
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08D72EE6
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _08D72EE0
_08D72ED0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08D72EE6
	movs r0, #0x10
	lsls r0, r3
_08D72EE0:
	ands r0, r1
	cmp r0, #0
	bne _08D72ED0
_08D72EE6:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _08D72EFC
	ldr r0, _08D72EF8 @ =gUnk_02000F45
	str r0, [r5]
	movs r0, #2
	b _08D72EFE
	.align 2, 0
_08D72EF8: .4byte gUnk_02000F45
_08D72EFC:
	movs r0, #1
_08D72EFE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08D72F0C
sub_08D72F0C: @ 0x08D72F0C
	ldr r2, _08D72F28 @ =gUnk_03002640
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08D72F2C @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2

	thumb_func_start nullsub_22
nullsub_22: @ 0x08D72F24
	bx lr
	.align 2, 0
_08D72F28: .4byte gUnk_03002640
_08D72F2C: .4byte 0x00000123

	thumb_func_start sub_08D72F30
sub_08D72F30: @ 0x08D72F30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08D72F8C @ =gUnk_03000440
	ldr r1, _08D72F90 @ =gUnk_03002640
	ldr r6, _08D72F94 @ =gUnk_03001420
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08D72F98 @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08D72F9C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D72F78
	ldr r0, _08D72FA0 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D72F78
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D72FAC
_08D72F78:
	ldrh r0, [r3, #6]
	ldr r1, _08D72FA4 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08D72FA8 @ =gUnk_02000C01
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D72FDC
	.align 2, 0
_08D72F8C: .4byte gUnk_03000440
_08D72F90: .4byte gUnk_03002640
_08D72F94: .4byte gUnk_03001420
_08D72F98: .4byte 0x00000123
_08D72F9C: .4byte 0x04000128
_08D72FA0: .4byte gUnk_030014E4
_08D72FA4: .4byte 0x0000FFFC
_08D72FA8: .4byte gUnk_02000C01
_08D72FAC:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08D72FDA
	adds r0, r4, #0
	bl sub_08D72AF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D72FDC
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08D72FDA
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08D72FDA
	ldr r0, _08D72FE4 @ =gUnk_02001021
	str r0, [r4]
_08D72FDA:
	movs r0, #0
_08D72FDC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D72FE4: .4byte gUnk_02001021

	thumb_func_start sub_08D72FE8
sub_08D72FE8: @ 0x08D72FE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08D73040 @ =gUnk_03000440
	ldr r4, _08D73044 @ =gUnk_03002640
	ldr r6, _08D73048 @ =gUnk_03001420
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _08D7304C @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _08D73050 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08D7302E
	ldr r0, _08D73054 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08D7302E
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08D73060
_08D7302E:
	ldrh r0, [r7, #6]
	ldr r1, _08D73058 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _08D7305C @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08D730D2
	.align 2, 0
_08D73040: .4byte gUnk_03000440
_08D73044: .4byte gUnk_03002640
_08D73048: .4byte gUnk_03001420
_08D7304C: .4byte 0x00000123
_08D73050: .4byte 0x04000128
_08D73054: .4byte gUnk_030014E4
_08D73058: .4byte 0x0000FFFC
_08D7305C: .4byte gUnk_02000C01
_08D73060:
	ldrb r0, [r6]
	cmp r0, #2
	beq _08D7306C
	movs r0, #1
	rsbs r0, r0, #0
	b _08D730D2
_08D7306C:
	adds r0, r5, #0
	bl sub_08D72AF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08D730D2
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _08D730D0
	movs r1, #0
_08D73082:
	ldr r0, _08D730A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08D730A4 @ =gUnk_03000448
	adds r7, r1, #1
	cmp r0, r1
	bne _08D730A8
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl sub_08D7D89C
	b _08D730BC
	.align 2, 0
_08D730A0: .4byte 0x04000128
_08D730A4: .4byte gUnk_03000448
_08D730A8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08D730D8 @ =gUnk_03001420
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08D7D89C
_08D730BC:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08D73082
	ldr r0, _08D730DC @ =gUnk_02001119
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_08D730D0:
	movs r0, #0
_08D730D2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D730D8: .4byte gUnk_03001420
_08D730DC: .4byte gUnk_02001119

	thumb_func_start sub_08D730E0
sub_08D730E0: @ 0x08D730E0
	push {lr}
	adds r1, r0, #0
	ldr r2, _08D73104 @ =gUnk_03002640
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _08D7310C
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08D73108 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08D73120
	.align 2, 0
_08D73104: .4byte gUnk_03002640
_08D73108: .4byte 0x00000123
_08D7310C:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08D73124 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08D73120:
	pop {r1}
	bx r1
	.align 2, 0
_08D73124: .4byte 0x00000123

	thumb_func_start sub_08D73128
sub_08D73128: @ 0x08D73128
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08D73188 @ =0x0000FFFF
	movs r0, #0
	bl sub_08D7B714
	ldr r1, _08D7318C @ =gUnk_03002994
	ldr r0, _08D73190 @ =gUnk_03002720
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08D73194 @ =gUnk_03005840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08D73198 @ =gUnk_03005008
	ldr r0, _08D7319C @ =gUnk_03002934
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_13
	ldr r1, _08D731A0 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D731A4 @ =gUnk_030014D0
	ldr r0, _08D731A8 @ =0x06010000
	str r0, [r1]
	ldr r0, _08D731AC @ =gUnk_020012AD
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08D731B0 @ =gUnk_020012DD
	ldr r5, _08D731B4 @ =gUnk_03000720
	cmp r1, #0
	beq _08D731B8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D731BE
	.align 2, 0
_08D73188: .4byte 0x0000FFFF
_08D7318C: .4byte gUnk_03002994
_08D73190: .4byte gUnk_03002720
_08D73194: .4byte gUnk_03005840
_08D73198: .4byte gUnk_03005008
_08D7319C: .4byte gUnk_03002934
_08D731A0: .4byte gUnk_03001418
_08D731A4: .4byte gUnk_030014D0
_08D731A8: .4byte 0x06010000
_08D731AC: .4byte gUnk_020012AD
_08D731B0: .4byte gUnk_020012DD
_08D731B4: .4byte gUnk_03000720
_08D731B8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D731BE:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_08D72334
	bl sub_08D7D6E8
	str r4, [sp, #4]
	ldr r1, _08D7324C @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08D73250 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08D73254 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D731E8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D731E8
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08D7324C @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08D73258 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08D7325C @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D73202:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D73202
	ldr r0, _08D73260 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08D73264 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08D7CE00
	bl sub_08D721B0
	bl sub_08D7940C
	ldr r0, _08D73268 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_08D73226:
	ldr r2, _08D7326C @ =gUnk_03000740
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _08D73270 @ =gUnk_0201DECC
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _08D73226
	ldr r1, _08D73268 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7324C: .4byte 0x040000D4
_08D73250: .4byte gUnk_03002640
_08D73254: .4byte 0x85000005
_08D73258: .4byte gUnk_03001420
_08D7325C: .4byte 0x85000014
_08D73260: .4byte gUnk_030014E4
_08D73264: .4byte gUnk_030014E8
_08D73268: .4byte 0x04000208
_08D7326C: .4byte gUnk_03000740
_08D73270: .4byte gUnk_0201DECC

	thumb_func_start sub_08D73274
sub_08D73274: @ 0x08D73274
	push {lr}
	ldr r0, _08D73290 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D73294
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D73298
	.align 2, 0
_08D73290: .4byte gUnk_03002560
_08D73294:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D73298:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl sub_08D7D8C0
	pop {r0}
	bx r0

	thumb_func_start sub_08D732A4
sub_08D732A4: @ 0x08D732A4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08D72334
	bl sub_08D7D6E8
	bl sub_08D7940C
	ldr r0, _08D73310 @ =gUnk_03000400
	movs r3, #0
	str r3, [r0]
	ldr r2, _08D73314 @ =gUnk_030013D0
	ldr r0, [r2]
	ldr r1, _08D73318 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08D7331C @ =gUnk_03001478
	strh r3, [r0]
	ldr r1, _08D73320 @ =gUnk_03002620
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08D73324 @ =gUnk_03001E40
	ldr r0, _08D73328 @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08D7332C @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08D73330 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08D73334 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08D73338 @ =gUnk_03002610
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _08D7333C @ =gUnk_02001379
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73310: .4byte gUnk_03000400
_08D73314: .4byte gUnk_030013D0
_08D73318: .4byte 0xFFFFFBFF
_08D7331C: .4byte gUnk_03001478
_08D73320: .4byte gUnk_03002620
_08D73324: .4byte gUnk_03001E40
_08D73328: .4byte 0x00001F03
_08D7332C: .4byte 0x040000D4
_08D73330: .4byte 0x8100C000
_08D73334: .4byte 0x81000200
_08D73338: .4byte gUnk_03002610
_08D7333C: .4byte gUnk_02001379

	thumb_func_start sub_08D73340
sub_08D73340: @ 0x08D73340
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08D733B4 @ =gUnk_03002620
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D733B8 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08D733BC @ =0x00001F03
	strh r0, [r1]
	ldr r0, _08D733C0 @ =gUnk_03002610
	strh r2, [r0]
	strh r2, [r0, #2]
_08D7335C:
	ldr r4, _08D733C4 @ =gUnk_0200C2C8
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2

	thumb_func_start sub_08D73364
sub_08D73364: @ 0x08D73364
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _08D733C8 @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _08D733CC @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08D733D0 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08D7335C
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08D7D8AC
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _08D733D4 @ =gUnk_03002730
	str r0, [r5, #4]
	ldr r0, _08D733D8 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08D733DC @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08D733E0 @ =gUnk_0200141D
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D733B4: .4byte gUnk_03002620
_08D733B8: .4byte gUnk_03001E40
_08D733BC: .4byte 0x00001F03
_08D733C0: .4byte gUnk_03002610
_08D733C4: .4byte gUnk_0200C2C8
_08D733C8: .4byte 0x040000D4
_08D733CC: .4byte 0x0600F800
_08D733D0: .4byte 0x8000001E
_08D733D4: .4byte gUnk_03002730
_08D733D8: .4byte 0x80000010
_08D733DC: .4byte gUnk_030013D0
_08D733E0: .4byte gUnk_0200141D

	thumb_func_start nullsub_086
nullsub_086: @ 0x08D733E4
	bx lr
	.align 2, 0

	thumb_func_start sub_08D733E8
sub_08D733E8: @ 0x08D733E8
	push {r4, lr}
	sub sp, #8
	ldr r0, _08D73414 @ =gUnk_02001491
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _08D73418 @ =gUnk_02001521
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D7341C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D73422
	.align 2, 0
_08D73414: .4byte gUnk_02001491
_08D73418: .4byte gUnk_02001521
_08D7341C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08D73422:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08D73450 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08D7D89C
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _08D73454 @ =gUnk_02001525
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08D73928
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73450: .4byte 0x01000052
_08D73454: .4byte gUnk_02001525

	thumb_func_start sub_08D73458
sub_08D73458: @ 0x08D73458
	push {r4, r5, lr}
	ldr r0, _08D73474 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D73478
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7347C
	.align 2, 0
_08D73474: .4byte gUnk_03002560
_08D73478:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7347C:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_08D7348C:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _08D734E4 @ =gUnk_03000470
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x88
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x18
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08D7348C
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08D734D6
	adds r0, r4, #0
	bl sub_08D73A38
_08D734D6:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_08D7D8C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D734E4: .4byte gUnk_03000470

	thumb_func_start nullsub_087
nullsub_087: @ 0x08D734E8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D734EC
sub_08D734EC: @ 0x08D734EC
	push {r4, lr}
	ldr r3, _08D73514 @ =gUnk_03002620
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _08D73518 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _08D7351C @ =gUnk_03002610
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _08D73520 @ =gUnk_0200155D
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73514: .4byte gUnk_03002620
_08D73518: .4byte 0x0000F9FF
_08D7351C: .4byte gUnk_03002610
_08D73520: .4byte gUnk_0200155D

	thumb_func_start sub_08D73524
sub_08D73524: @ 0x08D73524
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08D735A8 @ =gUnk_0200C6A0
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _08D735AC @ =0x0600C000
	bl sub_08D7D8AC
	movs r2, #0
	str r2, [sp]
	ldr r1, _08D735B0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D735B4 @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _08D735B8 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08D735BC @ =gUnk_03005030
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _08D735C0 @ =gUnk_03001E10
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _08D735C4 @ =0x0600E480
_08D73560:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08D73560
	ldr r3, _08D735C8 @ =0x0600E4C0
	movs r2, #0
_08D73578:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08D73578
	ldr r2, _08D735CC @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D735D0 @ =gUnk_0200160D
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D735A8: .4byte gUnk_0200C6A0
_08D735AC: .4byte 0x0600C000
_08D735B0: .4byte 0x040000D4
_08D735B4: .4byte 0x0600CC60
_08D735B8: .4byte 0x85000008
_08D735BC: .4byte gUnk_03005030
_08D735C0: .4byte gUnk_03001E10
_08D735C4: .4byte 0x0600E480
_08D735C8: .4byte 0x0600E4C0
_08D735CC: .4byte gUnk_03002620
_08D735D0: .4byte gUnk_0200160D

	thumb_func_start sub_08D735D4
sub_08D735D4: @ 0x08D735D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08D7D634
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08D735F4 @ =gUnk_02001631
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D735F4: .4byte gUnk_02001631

	thumb_func_start sub_08D735F8
sub_08D735F8: @ 0x08D735F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08D7361C @ =0xFFFF0000
	cmp r1, r0
	bne _08D73614
	bl sub_08D7D68C
	ldr r0, _08D73620 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
_08D73614:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7361C: .4byte 0xFFFF0000
_08D73620: .4byte gUnk_0200165D

	thumb_func_start sub_08D73624
sub_08D73624: @ 0x08D73624
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08D721F0
	ldr r0, _08D73644 @ =gUnk_02001681
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73644: .4byte gUnk_02001681

	thumb_func_start sub_08D73648
sub_08D73648: @ 0x08D73648
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08D73674 @ =0xFFFF0000
	cmp r0, r1
	bne _08D73680
	ldr r0, _08D73678 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
	ldr r0, _08D7367C @ =gUnk_03000720
	str r5, [r0]
	bl sub_08D73128
	b _08D7370A
	.align 2, 0
_08D73674: .4byte 0xFFFF0000
_08D73678: .4byte gUnk_03002560
_08D7367C: .4byte gUnk_03000720
_08D73680:
	bl sub_08D722D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08D736D4
	bl sub_08D722A8
	ldr r1, _08D736B8 @ =gUnk_0300041C
	ldr r0, _08D736BC @ =gUnk_03000440
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08D736C0 @ =gUnk_03000428
	ldr r0, _08D736C4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _08D736C8 @ =gUnk_03000434
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08D736CC @ =gUnk_03000410
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08D736D0 @ =gUnk_02001749
	str r0, [r4, #0x7c]
	b _08D7370A
	.align 2, 0
_08D736B8: .4byte gUnk_0300041C
_08D736BC: .4byte gUnk_03000440
_08D736C0: .4byte gUnk_03000428
_08D736C4: .4byte 0x04000128
_08D736C8: .4byte gUnk_03000434
_08D736CC: .4byte gUnk_03000410
_08D736D0: .4byte gUnk_02001749
_08D736D4:
	cmp r0, #1
	bne _08D736F0
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08D7370A
	bl sub_08D722C0
	b _08D7370A
_08D736F0:
	cmp r0, #0
	bge _08D73704
	bl sub_08D722A8
	ldr r0, _08D73700 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
	b _08D7370A
	.align 2, 0
_08D73700: .4byte gUnk_0200165D
_08D73704:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_08D7370A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08D73710
sub_08D73710: @ 0x08D73710
	ldr r1, _08D73718 @ =gUnk_02001755
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D73718: .4byte gUnk_02001755

	thumb_func_start sub_08D7371C
sub_08D7371C: @ 0x08D7371C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_08D7372A:
	lsls r2, r3, #1
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x88
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08D7372A
	movs r0, #3
	bl sub_08D722DC
	bl sub_08D72340
	ldr r0, _08D73764 @ =gUnk_020017A1
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73764: .4byte gUnk_020017A1

	thumb_func_start sub_08D73768
sub_08D73768: @ 0x08D73768
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08D7379E
	movs r0, #0
	strh r0, [r2]
	bl sub_08D72350
	cmp r0, #0
	bne _08D7379A
	bl sub_08D73128
	b _08D7379E
_08D7379A:
	ldr r0, _08D737A4 @ =gUnk_020017E1
	str r0, [r4, #0x7c]
_08D7379E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D737A4: .4byte gUnk_020017E1

	thumb_func_start sub_08D737A8
sub_08D737A8: @ 0x08D737A8
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _08D737B4 @ =gUnk_020017F1
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D737B4: .4byte gUnk_020017F1

	thumb_func_start sub_08D737B8
sub_08D737B8: @ 0x08D737B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D737D8
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D737D8
	subs r0, #1
	strh r0, [r1]
_08D737D8:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D737F0
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _08D737F0
	adds r0, #1
	strh r0, [r1]
_08D737F0:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08D739E8
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08D73814
	ldr r0, _08D7381C @ =gUnk_02001859
	str r0, [r4, #0x7c]
_08D73814:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7381C: .4byte gUnk_02001859

	thumb_func_start sub_08D73820
sub_08D73820: @ 0x08D73820
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08D73830 @ =gUnk_0200186D
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D73830: .4byte gUnk_0200186D

	thumb_func_start sub_08D73834
sub_08D73834: @ 0x08D73834
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_08D739E8
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08D73862
	ldr r0, _08D73868 @ =gUnk_020018A5
	str r0, [r4, #0x7c]
_08D73862:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73868: .4byte gUnk_020018A5

	thumb_func_start sub_08D7386C
sub_08D7386C: @ 0x08D7386C
	ldr r2, _08D73884 @ =gUnk_03001478
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _08D73888 @ =gUnk_020018C5
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08D73884: .4byte gUnk_03001478
_08D73888: .4byte gUnk_020018C5

	thumb_func_start sub_08D7388C
sub_08D7388C: @ 0x08D7388C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08D738B8 @ =gUnk_03001478
	adds r2, r3, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r4, #0x1f
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5, #4]
	adds r1, #1
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xf
	bls _08D738B2
	strh r4, [r5, #4]
	ldr r0, _08D738BC @ =gUnk_020018F9
	str r0, [r3, #0x7c]
_08D738B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D738B8: .4byte gUnk_03001478
_08D738BC: .4byte gUnk_020018F9

	thumb_func_start sub_08D738C0
sub_08D738C0: @ 0x08D738C0
	push {lr}
	sub sp, #4
	ldr r1, _08D7390C @ =gUnk_03000404
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _08D73910 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08D73914 @ =0x01000200
	mov r0, sp
	bl sub_08D7D89C
	ldr r1, _08D73918 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08D7391C @ =gUnk_02030000
	ldr r1, _08D73920 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08D7D89C
	ldr r0, _08D73924 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
	bl sub_08D7572C
	bl sub_08D7575C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D7390C: .4byte gUnk_03000404
_08D73910: .4byte 0x00007FFF
_08D73914: .4byte 0x01000200
_08D73918: .4byte gUnk_03001478
_08D7391C: .4byte gUnk_02030000
_08D73920: .4byte 0x06008000
_08D73924: .4byte gUnk_03002560

	thumb_func_start sub_08D73928
sub_08D73928: @ 0x08D73928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08D739E8
	ldr r0, _08D739E4 @ =0x06010000
	str r0, [r7]
	movs r0, #0
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	mov r1, sl
	strh r1, [r7, #0x14]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	strh r1, [r7, #0xc]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08D7BEE4
	adds r1, r7, #0
	adds r1, #0x28
	ldr r0, _08D739E4 @ =0x06010000
	str r0, [r7, #0x28]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, r8
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sb
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08D7BEE4
	adds r1, r7, #0
	adds r1, #0x50
	ldr r0, _08D739E4 @ =0x06010000
	str r0, [r7, #0x50]
	mov r0, sl
	strh r0, [r1, #0x14]
	mov r0, r8
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #3
	strb r0, [r1, #0x1b]
	mov r0, sb
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08D7BEE4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D739E4: .4byte 0x06010000

	thumb_func_start sub_08D739E8
sub_08D739E8: @ 0x08D739E8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08D73A00 @ =gUnk_0200C2CC
	ldr r4, _08D73A04 @ =gUnk_03001DD0
	ldr r2, _08D73A08 @ =gUnk_030013D0
	cmp r1, #0
	beq _08D73A10
	ldr r1, _08D73A0C @ =0x040000D4
	adds r0, #1
	b _08D73A14
	.align 2, 0
_08D73A00: .4byte gUnk_0200C2CC
_08D73A04: .4byte gUnk_03001DD0
_08D73A08: .4byte gUnk_030013D0
_08D73A0C: .4byte 0x040000D4
_08D73A10:
	ldr r1, _08D73A30 @ =0x040000D4
	adds r0, #2
_08D73A14:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08D73A34 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73A30: .4byte 0x040000D4
_08D73A34: .4byte 0x80000010

	thumb_func_start sub_08D73A38
sub_08D73A38: @ 0x08D73A38
	push {lr}
	adds r1, r0, #0
	adds r1, #0xa0
	ldrh r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_08D7C6EC
	pop {r0}
	bx r0

	thumb_func_start sub_08D73A58
sub_08D73A58: @ 0x08D73A58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x3c]
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #0x30]
	movs r6, #0
	strh r0, [r4, #0x30]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x34]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08D73BB4
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D73A94
sub_08D73A94: @ 0x08D73A94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08D73AAC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08D73AAC:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D73ABE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08D73ABE:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08D73B26
	adds r0, r4, #0
	bl sub_08D73B30
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D73B20
	adds r0, r4, #0
	bl sub_08D7BEE4
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _08D73AF8
	ldr r0, _08D73AF4 @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _08D73B10
	.align 2, 0
_08D73AF4: .4byte 0x0000FDFF
_08D73AF8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D73B08
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08D73B16
_08D73B08:
	ldr r0, _08D73B2C @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_08D73B10:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08D73B16:
	cmp r2, #0
	beq _08D73B20
	adds r0, r2, #0
	bl sub_08D73A94
_08D73B20:
	adds r0, r4, #0
	bl sub_08D7C6EC
_08D73B26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73B2C: .4byte 0x0000FBFF

	thumb_func_start sub_08D73B30
sub_08D73B30: @ 0x08D73B30
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08D73B70
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	mov r0, sp
	adds r1, r4, #0
	bl sub_08D73B78
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_08D73B70:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D73B78
sub_08D73B78: @ 0x08D73B78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _08D73B88
	bl sub_08D73B78
_08D73B88:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _08D73BA6
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _08D73BAC
_08D73BA6:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_08D73BAC:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D73BB4
sub_08D73BB4: @ 0x08D73BB4
	push {lr}
_08D73BB6:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _08D73BC0
	adds r0, r1, #0
	b _08D73BB6
_08D73BC0:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D73BC8
sub_08D73BC8: @ 0x08D73BC8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _08D73BE8 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D73BE2
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08D73BE2:
	pop {r0}
	bx r0
	.align 2, 0
_08D73BE8: .4byte 0x0000FEFF

	thumb_func_start sub_08D73BEC
sub_08D73BEC: @ 0x08D73BEC
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x48]
	adds r4, r0, r1
	str r4, [r2, #0x48]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x4c]
	adds r3, r0, r1
	str r3, [r2, #0x4c]
	str r4, [r2, #0x2c]
	str r3, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D73C24
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_08D73C24:
	adds r0, r2, #4
	bl sub_08D73A94
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D73C30
sub_08D73C30: @ 0x08D73C30
	push {r4, lr}
	ldr r0, _08D73C4C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D73C50
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D73C54
	.align 2, 0
_08D73C4C: .4byte gUnk_03002560
_08D73C50:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D73C54:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D73BEC
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D73C88
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D73C7A
	subs r0, #1
	strh r0, [r1]
	b _08D73C9C
_08D73C7A:
	ldr r0, _08D73C84 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
	b _08D73C9C
	.align 2, 0
_08D73C84: .4byte gUnk_03002560
_08D73C88:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D73C9C
	ldr r0, _08D73CA4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
_08D73C9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73CA4: .4byte gUnk_03002560

	thumb_func_start sub_08D73CA8
sub_08D73CA8: @ 0x08D73CA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08D73CDC @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _08D73CE0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D73CE6
	.align 2, 0
_08D73CDC: .4byte gUnk_02001E01
_08D73CE0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D73CE6:
	adds r2, r0, #0
	cmp r3, #0
	ble _08D73CF2
	movs r0, #0
	strb r0, [r2, #3]
	b _08D73CFA
_08D73CF2:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08D73CFA:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _08D73D10 @ =gUnk_03001478
	cmp r5, #0
	beq _08D73D14
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _08D73D1C
	.align 2, 0
_08D73D10: .4byte gUnk_03001478
_08D73D14:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_08D73D1C:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _08D73D34 @ =gUnk_03001478
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D73D34: .4byte gUnk_03001478

	thumb_func_start sub_08D73D38
sub_08D73D38: @ 0x08D73D38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08D73D6C @ =gUnk_02001E01
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _08D73D70
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D73D76
	.align 2, 0
_08D73D6C: .4byte gUnk_02001E01
_08D73D70:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D73D76:
	adds r2, r0, #0
	cmp r3, #0
	ble _08D73D82
	movs r0, #0
	strb r0, [r2, #3]
	b _08D73D8A
_08D73D82:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08D73D8A:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _08D73DA0 @ =gUnk_03001478
	cmp r5, #0
	beq _08D73DA4
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _08D73DAC
	.align 2, 0
_08D73DA0: .4byte gUnk_03001478
_08D73DA4:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_08D73DAC:
	strb r6, [r2, #2]
	ldr r1, _08D73DC4 @ =gUnk_03001478
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D73DC4: .4byte gUnk_03001478

	thumb_func_start sub_08D73DC8
sub_08D73DC8: @ 0x08D73DC8
	push {r4, lr}
	ldr r4, _08D73DE4 @ =gUnk_03002560
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D73DE8 @ =gUnk_03001478
	cmp r0, #0
	beq _08D73DEC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D73DF0
	.align 2, 0
_08D73DE4: .4byte gUnk_03002560
_08D73DE8: .4byte gUnk_03001478
_08D73DEC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D73DF0:
	adds r2, r1, r0
	movs r0, #2
	ldrsb r0, [r2, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	lsrs r0, r0, #4
	strh r0, [r3, #4]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D73E48
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08D73E2E
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D73E36
	movs r0, #0x1e
	b _08D73E3C
_08D73E2E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D73E3A
_08D73E36:
	strh r2, [r3, #4]
	b _08D73E3E
_08D73E3A:
	movs r0, #0x1f
_08D73E3C:
	strh r0, [r3, #4]
_08D73E3E:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_08D7B78C
_08D73E48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D73E50
sub_08D73E50: @ 0x08D73E50
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08D73E8C @ =gUnk_02001EF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _08D73E90
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D73E96
	.align 2, 0
_08D73E8C: .4byte gUnk_02001EF9
_08D73E90:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D73E96:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _08D73EA2
	rsbs r4, r4, #0
_08D73EA2:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _08D73EAC
	movs r0, #0x10
	b _08D73EAE
_08D73EAC:
	movs r0, #0x20
_08D73EAE:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D73EC0
sub_08D73EC0: @ 0x08D73EC0
	push {r4, lr}
	ldr r0, _08D73EDC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D73EE0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D73EE4
	.align 2, 0
_08D73EDC: .4byte gUnk_03002560
_08D73EE0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D73EE4:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08D73F16
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08D73F0E
	adds r0, r1, #0
	movs r1, #1
	bl sub_08D73CA8
	b _08D73F16
_08D73F0E:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08D73CA8
_08D73F16:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D73F4E
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _08D73F42
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_08D73CA8
	b _08D73F4E
_08D73F42:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_08D73CA8
_08D73F4E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08D73F86
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D73F7C
	ldr r1, _08D73F74 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _08D73F78 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
	b _08D73F86
	.align 2, 0
_08D73F74: .4byte gUnk_03001478
_08D73F78: .4byte gUnk_03002560
_08D73F7C:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_08D73F86:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _08D73FA4 @ =gUnk_03001478
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08D73F9E
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_08D73F9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D73FA4: .4byte gUnk_03001478

	thumb_func_start sub_08D73FA8
sub_08D73FA8: @ 0x08D73FA8
	push {lr}
	ldr r1, _08D73FC0 @ =gUnk_03001478
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08D73FB6
	cmp r0, #0x1f
	bne _08D73FC4
_08D73FB6:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08D73FC4
	movs r0, #0
	b _08D73FC6
	.align 2, 0
_08D73FC0: .4byte gUnk_03001478
_08D73FC4:
	movs r0, #1
_08D73FC6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D73FCC
sub_08D73FCC: @ 0x08D73FCC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D73FFC @ =gUnk_02002069
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08D7B670
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4

	thumb_func_start sub_08D73FF0
sub_08D73FF0: @ 0x08D73FF0
	cmp r0, #0
	beq _08D74000
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74004
	.align 2, 0
_08D73FFC: .4byte gUnk_02002069
_08D74000:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74004:
	adds r2, r1, r0
	str r5, [r2]
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r4, #3]
	strb r0, [r2, #8]
	ldrb r0, [r4, #2]
	lsls r0, r0, #5
	movs r1, #0
	strh r0, [r2, #0xa]
	strb r1, [r2, #0xc]
	movs r0, #0xff
	strb r0, [r2, #0xd]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D74030
sub_08D74030: @ 0x08D74030
	push {lr}
	ldr r0, _08D7404C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D74050
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74054
	.align 2, 0
_08D7404C: .4byte gUnk_03002560
_08D74050:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74054:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08D7406C
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _08D740A0
_08D7406C:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _08D74080
	strb r1, [r2, #0xc]
_08D74080:
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldrh r2, [r2, #0xa]
	lsrs r2, r2, #2
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl sub_08D7D89C
_08D740A0:
	pop {r0}
	bx r0

	thumb_func_start sub_08D740A4
sub_08D740A4: @ 0x08D740A4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D740D4 @ =gUnk_0200213D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08D7B670
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08D740D8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D740DC
	.align 2, 0
_08D740D4: .4byte gUnk_0200213D
_08D740D8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D740DC:
	adds r2, r1, r0
	str r5, [r2]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	ldrb r0, [r4]
	strb r0, [r2, #6]
	ldrb r0, [r4, #2]
	strb r0, [r2, #7]
	ldrb r0, [r4, #1]
	strb r0, [r2, #8]
	strb r1, [r2, #9]
	movs r0, #0xff
	strb r0, [r2, #0xa]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D74104
sub_08D74104: @ 0x08D74104
	push {r4, lr}
	ldr r0, _08D74120 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D74124
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74128
	.align 2, 0
_08D74120: .4byte gUnk_03002560
_08D74124:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74128:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08D74140
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _08D74192
_08D74140:
	ldrb r1, [r3, #9]
	adds r1, #1
	movs r2, #0
	strb r1, [r3, #9]
	strb r2, [r3, #0xa]
	ldrh r0, [r3, #4]
	adds r0, #1
	ldrb r4, [r3, #7]
	adds r0, r0, r4
	strh r0, [r3, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r3, #8]
	cmp r1, r0
	blo _08D74164
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_08D74164:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _08D74198 @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _08D7419C @ =gUnk_03002730
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08D741A0 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08D74192:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D74198: .4byte 0x040000D4
_08D7419C: .4byte gUnk_03002730
_08D741A0: .4byte gUnk_030013D0

	thumb_func_start sub_08D741A4
sub_08D741A4: @ 0x08D741A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	ldr r0, [sp, #0x88]
	ldr r4, [sp, #0x8c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x34]
	ldr r0, _08D7422C @ =gUnk_020027ED
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_08D7B670
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _08D74230 @ =gUnk_0200C2CC
	mov ip, r0
	ldr r4, _08D74234 @ =gUnk_030013D0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x44]
	adds r0, #4
	str r0, [sp, #0x48]
	adds r0, #4
	str r0, [sp, #0x4c]
	adds r0, #4
	str r0, [sp, #0x50]
	adds r0, #4
	str r0, [sp, #0x54]
	adds r0, #4
	str r0, [sp, #0x58]
	adds r0, #4
	str r0, [sp, #0x5c]
	adds r0, #4
	str r0, [sp, #0x60]
	adds r0, #4
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _08D74238
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08D7423E
	.align 2, 0
_08D7422C: .4byte gUnk_020027ED
_08D74230: .4byte gUnk_0200C2CC
_08D74234: .4byte gUnk_030013D0
_08D74238:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_08D7423E:
	adds r1, r7, #0
	str r5, [r1]
	movs r2, #0xab
	lsls r2, r2, #2
	adds r3, r1, r2
	movs r6, #0
	movs r5, #0x10
	strb r5, [r3]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	ldr r5, _08D7463C @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08D74640 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _08D74644 @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08D74648 @ =0x000002B3
	adds r0, r1, r2
	mov r2, sl
	strb r2, [r0]
	movs r0, #0xad
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	mov r2, sp
	ldrh r2, [r2, #0x2c]
	strh r2, [r0]
	ldr r0, _08D7464C @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08D742AA
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08D742AA:
	ldr r1, _08D74650 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _08D74654 @ =gUnk_03001BF0
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _08D74658 @ =0x80000010
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	mov r5, ip
	str r5, [r1]
	mov r5, r8
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r5, _08D74654 @ =gUnk_03001BF0
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r4]
	orrs r0, r2
	str r0, [r4]
	str r6, [sp, #4]
	adds r5, r7, #4
	add r0, sp, #4
	adds r1, r5, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r0, _08D74660 @ =0x06010000
	str r0, [r7, #4]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r7, #0x18]
	ldr r1, [r7]
	ldrh r0, [r1]
	strh r0, [r7, #0x10]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1e]
	strh r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r2, #0x10
	strb r2, [r0]
	ldr r1, [sp, #0x3c]
	ldrb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x23
	strb r0, [r1]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r7, #0x16]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r7, #0xc]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x2c]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r7, #0x30]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	movs r0, #0x10
	strh r0, [r7, #0x38]
	strh r6, [r7, #0x3a]
	str r6, [r7, #0x3c]
	str r6, [r7, #0x40]
	str r6, [r7, #0x44]
	str r6, [sp, #8]
	adds r4, r7, #0
	adds r4, #0x48
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r1, _08D74660 @ =0x06010000
	str r1, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, #6]
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r6, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x67
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	str r6, [r7, #0x70]
	str r6, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r2, r7, #0
	adds r2, #0x7c
	movs r1, #0x10
	strh r1, [r2]
	adds r0, #4
	strh r6, [r0]
	adds r0, #2
	str r6, [r0]
	adds r1, r7, #0
	adds r1, #0x84
	str r6, [r1]
	adds r0, #8
	str r6, [r0]
	str r4, [r7, #0x44]
	str r5, [r1]
	ldrh r1, [r2]
	ldr r0, _08D74664 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r2, _08D74660 @ =0x06010000
	str r2, [r5]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xa
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x10]
	adds r4, #0x88
	ldr r0, [sp, #0x4c]
	adds r1, r4, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r1, _08D74660 @ =0x06010000
	str r1, [r4]
	movs r2, #0xb0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #8]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r0, #0x10
	strh r0, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D74664 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r2, _08D74660 @ =0x06010000
	str r2, [r5]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r1, #0x10
	strb r1, [r5, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r5, #0x1f]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	strh r0, [r5, #0x10]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x18]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r0, [sp, #0x54]
	adds r1, r4, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r2, _08D74660 @ =0x06010000
	str r2, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	ldr r2, [sp, #0x3c]
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D74664 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r0, _08D74660 @ =0x06010000
	str r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #5
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #5
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x20]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x5c]
	adds r1, r4, #0
	ldr r2, _08D7465C @ =0x05000011
	bl sub_08D7D89C
	ldr r2, _08D74660 @ =0x06010000
	str r2, [r4]
	b _08D74668
	.align 2, 0
_08D7463C: .4byte 0x000002AE
_08D74640: .4byte 0x000002B1
_08D74644: .4byte 0x000002B2
_08D74648: .4byte 0x000002B3
_08D7464C: .4byte 0x000002B6
_08D74650: .4byte 0x040000D4
_08D74654: .4byte gUnk_03001BF0
_08D74658: .4byte 0x80000010
_08D7465C: .4byte 0x05000011
_08D74660: .4byte 0x06010000
_08D74664: .4byte 0x0000FFEF
_08D74668:
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08D747A8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _08D747AC @ =0x05000011
	bl sub_08D7D89C
	ldr r0, _08D747B0 @ =0x06010000
	str r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	strb r2, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #0x1f]
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x14
	strh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0xf
	strh r0, [r5, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r5, #8]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x14
	lsls r0, r0, #2
	str r0, [r5, #0x28]
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0xf
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x10
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [sp, #0x28]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [sp, #0x64]
	adds r1, r4, #0
	ldr r2, _08D747AC @ =0x05000011
	bl sub_08D7D89C
	ldr r2, _08D747B0 @ =0x06010000
	str r2, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r7]
	ldrh r0, [r0, #0x14]
	strh r0, [r4, #0xc]
	ldr r0, [r7]
	ldrb r0, [r0, #0x16]
	strb r0, [r4, #0x1a]
	strh r6, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4, #0x1f]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r6, [r4, #0x28]
	str r6, [r4, #0x2c]
	strh r6, [r4, #0x30]
	strh r6, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r6, [r4, #0x36]
	str r6, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r4, [r5, #0x40]
	str r5, [r4, #0x3c]
	ldrh r0, [r4, #0x34]
	ldr r2, _08D747A8 @ =0x0000FFEF
	ands r2, r0
	strh r2, [r4, #0x34]
	ldr r0, [sp, #0x38]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D747A8: .4byte 0x0000FFEF
_08D747AC: .4byte 0x05000011
_08D747B0: .4byte 0x06010000

	thumb_func_start sub_08D747B4
sub_08D747B4: @ 0x08D747B4
	ldr r0, _08D747C0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D747C4 @ =gUnk_02002801
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08D747C0: .4byte gUnk_03002560
_08D747C4: .4byte gUnk_02002801

	thumb_func_start sub_08D747C8
sub_08D747C8: @ 0x08D747C8
	push {r4, r5, r6, lr}
	ldr r6, _08D747E4 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D747E8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D747EC
	.align 2, 0
_08D747E4: .4byte gUnk_03002560
_08D747E8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D747EC:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D74804
	movs r1, #0
	b _08D74808
_08D74804:
	ldr r0, _08D74828 @ =gUnk_03000470
	ldrh r1, [r0, #0x10]
_08D74808:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08D74880
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D7482C
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _08D7491C
	.align 2, 0
_08D74828: .4byte gUnk_03000470
_08D7482C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08D74844
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08D7491C
_08D74844:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08D74864
	ldr r1, _08D7485C @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _08D74860 @ =gUnk_020030F9
	b _08D7491A
	.align 2, 0
_08D7485C: .4byte 0x000002AE
_08D74860: .4byte gUnk_020030F9
_08D74864:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08D7491C
	ldr r1, _08D74878 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08D7487C @ =gUnk_02002E09
	b _08D7491A
	.align 2, 0
_08D74878: .4byte 0x000002AE
_08D7487C: .4byte gUnk_02002E09
_08D74880:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08D748E8
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08D748C4
	ldr r1, _08D748A4 @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D748AC
	ldr r0, _08D748A8 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _08D748C2
	.align 2, 0
_08D748A4: .4byte 0x000002AD
_08D748A8: .4byte 0x000002B2
_08D748AC:
	cmp r0, #1
	bne _08D748BC
	ldr r0, _08D748B8 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _08D748C2
	.align 2, 0
_08D748B8: .4byte 0x000002B2
_08D748BC:
	ldr r0, _08D748DC @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_08D748C2:
	strb r0, [r1]
_08D748C4:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D748E0
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _08D748E2
	.align 2, 0
_08D748DC: .4byte 0x000002B2
_08D748E0:
	movs r0, #1
_08D748E2:
	orrs r0, r1
	strb r0, [r2]
	b _08D7491C
_08D748E8:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08D74908
	ldr r1, _08D74900 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08D74904 @ =gUnk_02002A49
	b _08D7491A
	.align 2, 0
_08D74900: .4byte 0x000002AE
_08D74904: .4byte gUnk_02002A49
_08D74908:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08D7491C
	ldr r1, _08D7495C @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _08D74960 @ =gUnk_02002C29
_08D7491A:
	str r0, [r1, #8]
_08D7491C:
	adds r0, r4, #0
	bl sub_08D74978
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D74972
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08D74964
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D73A94
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D73A94
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08D73A94
	b _08D74972
	.align 2, 0
_08D7495C: .4byte 0x000002AE
_08D74960: .4byte gUnk_02002C29
_08D74964:
	adds r0, r4, #4
	bl sub_08D73A94
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08D73A94
_08D74972:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D74978
sub_08D74978: @ 0x08D74978
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08D749B0 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08D749FE
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _08D749B4 @ =gUnk_0200C2CC
	ldr r6, _08D749B8 @ =gUnk_03001BF0
	ldr r5, _08D749BC @ =gUnk_030013D0
	cmp r0, #0
	beq _08D749C4
	ldr r2, _08D749C0 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _08D749CC
	.align 2, 0
_08D749B0: .4byte 0x000002B3
_08D749B4: .4byte gUnk_0200C2CC
_08D749B8: .4byte gUnk_03001BF0
_08D749BC: .4byte gUnk_030013D0
_08D749C0: .4byte 0x000002B2
_08D749C4:
	ldr r2, _08D74A04 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_08D749CC:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _08D74A08 @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08D74A0C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_08D749FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D74A04: .4byte 0x000002B2
_08D74A08: .4byte 0x040000D4
_08D74A0C: .4byte 0x80000010

	thumb_func_start sub_08D74A10
sub_08D74A10: @ 0x08D74A10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08D74A34 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D74A38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74A3C
	.align 2, 0
_08D74A34: .4byte gUnk_03002560
_08D74A38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74A3C:
	adds r0, r1, r0
	adds r5, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	ldrh r3, [r5, #0x18]
	movs r4, #0x23
	adds r4, r4, r5
	mov sl, r4
	adds r6, r5, #0
	adds r6, #0x5c
	adds r4, r5, #0
	adds r4, #0x67
	str r4, [sp]
	adds r7, r5, #0
	adds r7, #0xb4
	movs r4, #0xb8
	adds r4, r4, r5
	mov ip, r4
	movs r4, #0xa0
	adds r4, r4, r5
	mov r8, r4
	adds r4, r5, #0
	adds r4, #0xab
	str r4, [sp, #4]
	movs r4, #0xe4
	adds r4, r4, r5
	mov sb, r4
	adds r4, r5, #0
	adds r4, #0xef
	str r4, [sp, #8]
	cmp r1, #0
	beq _08D74AE8
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08D74AE0 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _08D74AE4 @ =0x000002B1
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	subs r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	movs r4, #0xac
	lsls r4, r4, #2
	b _08D74B3E
	.align 2, 0
_08D74AE0: .4byte 0x0000F83F
_08D74AE4: .4byte 0x000002B1
_08D74AE8:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08D74B70 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r3, r5, r0
	ldrb r0, [r3]
	mov r1, sl
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6]
	ldrb r0, [r3]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	mov r4, r8
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r3, r1, #0
	orrs r0, r3
	strh r0, [r4]
	ldr r4, _08D74B74 @ =0x000002B1
_08D74B3E:
	adds r1, r5, r4
	ldrb r0, [r1]
	ldr r4, [sp, #4]
	strb r0, [r4]
	mov r4, sb
	ldrh r0, [r4]
	ands r2, r0
	orrs r2, r3
	strh r2, [r4]
	ldrb r0, [r1]
	ldr r1, [sp, #8]
	strb r0, [r1]
	movs r4, #0xab
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D74B7C
	ldr r0, _08D74B78 @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _08D74B82
	.align 2, 0
_08D74B70: .4byte 0x0000F83F
_08D74B74: .4byte 0x000002B1
_08D74B78: .4byte 0x000002B2
_08D74B7C:
	ldr r4, _08D74BE0 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_08D74B82:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08D74978
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D74BA8
	adds r0, r5, #4
	bl sub_08D73A94
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08D73A94
_08D74BA8:
	ldr r0, _08D74BE4 @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D74BCE
	ldr r0, _08D74BE8 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D74BEC @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_08D74BCE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D74BE0: .4byte 0x000002B2
_08D74BE4: .4byte 0x000002AE
_08D74BE8: .4byte gUnk_03002560
_08D74BEC: .4byte gUnk_02002801

	thumb_func_start sub_08D74BF0
sub_08D74BF0: @ 0x08D74BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D74C10 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D74C14
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74C18
	.align 2, 0
_08D74C10: .4byte gUnk_03002560
_08D74C14:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74C18:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #0x30]
	adds r6, r4, #0
	adds r6, #0x23
	movs r2, #0x67
	adds r2, r2, r4
	mov sb, r2
	adds r2, r4, #0
	adds r2, #0xb4
	adds r3, r4, #0
	adds r3, #0xb8
	movs r7, #0xab
	adds r7, r7, r4
	mov ip, r7
	movs r7, #0xef
	adds r7, r7, r4
	mov r8, r7
	cmp r1, #0
	beq _08D74C84
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _08D74C80 @ =0x000002B1
	adds r1, r4, r0
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	b _08D74CB6
	.align 2, 0
_08D74C80: .4byte 0x000002B1
_08D74C84:
	subs r0, #8
	str r0, [r4, #0x2c]
	subs r0, r5, #4
	str r0, [r4, #0x30]
	movs r7, #0xac
	lsls r7, r7, #2
	adds r1, r4, r7
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #8
	str r0, [r2]
	ldr r0, [r3]
	adds r0, #4
	str r0, [r3]
	ldr r2, _08D74CD0 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_08D74CB6:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D74CD8
	ldr r2, _08D74CD4 @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _08D74CDE
	.align 2, 0
_08D74CD0: .4byte 0x000002B1
_08D74CD4: .4byte 0x000002B2
_08D74CD8:
	ldr r3, _08D74D60 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_08D74CDE:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08D74978
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D74D04
	adds r0, r4, #4
	bl sub_08D73A94
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08D73A94
_08D74D04:
	ldr r0, _08D74D64 @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D74DC0
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _08D74D68 @ =gUnk_03002560
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0

	thumb_func_start sub_08D74D2C
sub_08D74D2C: @ 0x08D74D2C
	adds r7, r4, #0
	adds r7, #0xe4

	thumb_func_start sub_08D74D30
sub_08D74D30: @ 0x08D74D30
	ldr r0, _08D74D6C @ =gUnk_02002801
	mov r8, r0
	cmp r1, #0
	beq _08D74D74
	ldr r1, _08D74D70 @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xa0
	lsls r3, r3, #2
	b _08D74D98
	.align 2, 0
_08D74D60: .4byte 0x000002B2
_08D74D64: .4byte 0x000002AE
_08D74D68: .4byte gUnk_03002560
_08D74D6C: .4byte gUnk_02002801
_08D74D70: .4byte 0x0000F83F
_08D74D74:
	ldr r1, _08D74DCC @ =0x0000F83F
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r0, r3
	strh r0, [r4, #0x18]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r5]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0xb0
	lsls r3, r3, #2
_08D74D98:
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r6]
	ldrh r0, [r7]
	ands r1, r0
	orrs r1, r2
	strh r1, [r7]
	mov r7, ip
	ldr r0, [r7]
	mov r1, r8
	str r1, [r0, #8]
	movs r3, #0xab
	lsls r3, r3, #2
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r2]
_08D74DC0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D74DCC: .4byte 0x0000F83F

	thumb_func_start sub_08D74DD0
sub_08D74DD0: @ 0x08D74DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D74DF8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D74DFC @ =gUnk_0200C6BC
	cmp r0, #0
	beq _08D74E00
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D74E04
	.align 2, 0
_08D74DF8: .4byte gUnk_03002560
_08D74DFC: .4byte gUnk_0200C6BC
_08D74E00:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D74E04:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08D75018 @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, r2
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r5]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r0, _08D7501C @ =0x0000F83F
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08D75020 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _08D75024 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D7501C @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	subs r1, #8
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	subs r1, #4
	str r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D7501C @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0xac
	lsls r1, r1, #2
	adds r6, r7, r1
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D7501C @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r2, sb
	ldr r0, [r2]
	subs r0, #8
	str r0, [r2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r3, r8
	ldr r0, [r3]
	subs r0, #4
	str r0, [r3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _08D7501C @ =0x0000F83F
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r3, ip
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r3, _08D7501C @ =0x0000F83F
	ands r3, r1
	strh r3, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r5, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	mov r2, ip
	ldrb r1, [r2]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _08D7502C
	ldr r3, _08D75028 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _08D75042
	.align 2, 0
_08D75018: .4byte 0x000002AD
_08D7501C: .4byte 0x0000F83F
_08D75020: .4byte 0x000002B1
_08D75024: .4byte 0x00000133
_08D75028: .4byte 0x000002B2
_08D7502C:
	cmp r0, #1
	bne _08D7503C
	ldr r0, _08D75038 @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _08D75042
	.align 2, 0
_08D75038: .4byte 0x000002B2
_08D7503C:
	ldr r2, _08D750AC @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_08D75042:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08D74978
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D75078
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08D73A94
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08D73A94
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08D73A94
_08D75078:
	ldr r0, _08D750B0 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D7509A
	ldr r0, _08D750B4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D750B8 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08D750BC @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08D7509A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D750AC: .4byte 0x000002B2
_08D750B0: .4byte 0x000002AE
_08D750B4: .4byte gUnk_03002560
_08D750B8: .4byte gUnk_02002801
_08D750BC: .4byte 0x000002AD

	thumb_func_start sub_08D750C0
sub_08D750C0: @ 0x08D750C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D750E8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D750EC @ =gUnk_0200C6BC
	cmp r0, #0
	beq _08D750F0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D750F4
	.align 2, 0
_08D750E8: .4byte gUnk_03002560
_08D750EC: .4byte gUnk_0200C6BC
_08D750F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D750F4:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08D75304 @ =0x000002AD
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r6, r0, r2
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	add r1, sb
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	add r1, r8
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	ldrb r0, [r6]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r5, _08D75308 @ =0x0000F83F
	mov ip, r5
	mov r0, ip
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08D7530C @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _08D75310 @ =0x00000133
	mov sl, r2
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	adds r1, #8
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	str r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r3, r2, #0
	orrs r1, r3
	strh r1, [r0]
	ldrb r1, [r6, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r3, r1
	strh r3, [r0]
	ldrb r1, [r6, #1]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r5]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add sb, r0
	mov r3, sb
	ldr r0, [r3]
	subs r0, #0x10
	str r0, [r3]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	add r8, r0
	mov r5, r8
	ldr r0, [r5]
	subs r0, #8
	str r0, [r5]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r2, [r0]
	mov r1, ip
	ands r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r5, #0xac
	lsls r5, r5, #2
	adds r3, r7, r5
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r5, ip
	ands r5, r1
	strh r5, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
	ldrb r1, [r6, #2]
	adds r1, #3
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r3]
	add r0, sl
	strb r1, [r0]
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08D75318
	ldr r2, _08D75314 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _08D7532E
	.align 2, 0
_08D75304: .4byte 0x000002AD
_08D75308: .4byte 0x0000F83F
_08D7530C: .4byte 0x000002B1
_08D75310: .4byte 0x00000133
_08D75314: .4byte 0x000002B2
_08D75318:
	cmp r0, #1
	bne _08D75328
	ldr r3, _08D75324 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _08D7532E
	.align 2, 0
_08D75324: .4byte 0x000002B2
_08D75328:
	ldr r5, _08D75398 @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_08D7532E:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08D74978
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08D75364
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08D73A94
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08D73A94
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08D73A94
_08D75364:
	ldr r0, _08D7539C @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08D75386
	ldr r0, _08D753A0 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D753A4 @ =gUnk_02002801
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _08D753A8 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08D75386:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D75398: .4byte 0x000002B2
_08D7539C: .4byte 0x000002AE
_08D753A0: .4byte gUnk_03002560
_08D753A4: .4byte gUnk_02002801
_08D753A8: .4byte 0x000002AD

	thumb_func_start sub_08D753AC
sub_08D753AC: @ 0x08D753AC
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D753C2
	movs r0, #0
	b _08D753C4
_08D753C2:
	movs r0, #1
_08D753C4:
	pop {r1}
	bx r1

	thumb_func_start sub_08D753C8
sub_08D753C8: @ 0x08D753C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _08D75480 @ =gUnk_0300041C
	adds r1, r7, #0
	adds r1, #0xd0
	ldr r2, _08D75484 @ =gUnk_03000428
	movs r3, #0xcc
	adds r3, r3, r7
	mov sb, r3
	movs r5, #0xdc
	adds r5, r5, r7
	mov sl, r5
	movs r3, #0xde
	adds r3, r3, r7
	mov ip, r3
	adds r5, r7, #0
	adds r5, #0xdf
	str r5, [sp, #0x10]
	adds r3, r7, #0
	adds r3, #0xe0
	str r3, [sp, #0x14]
	adds r5, #3
	str r5, [sp, #0x18]
	adds r3, #4
	str r3, [sp, #0x1c]
	adds r5, #4
	str r5, [sp, #0x20]
	adds r3, #3
	str r3, [sp, #0x24]
	adds r5, #2
	str r5, [sp, #0x28]
	mov r3, r8
	lsls r3, r3, #1
	str r3, [sp, #0x2c]
	mov r5, r8
	lsls r5, r5, #3
	str r5, [sp, #0x30]
	mov r3, sp
	adds r3, #4
	str r3, [sp, #0x34]
	adds r5, r7, #0
	adds r5, #0x44
	str r5, [sp, #0x38]
	adds r3, r7, #0
	adds r3, #0x58
	str r3, [sp, #0x3c]
	adds r5, #0xc
	str r5, [sp, #0x40]
	adds r3, #6
	str r3, [sp, #0x44]
	adds r5, #0xa
	str r5, [sp, #0x48]
	adds r3, #1
	str r3, [sp, #0x4c]
	adds r5, #6
	str r5, [sp, #0x50]
	adds r3, #4
	str r3, [sp, #0x54]
	subs r5, #0xc
	str r5, [sp, #0x58]
	subs r3, #0xd
	str r3, [sp, #0x5c]
	adds r5, #0x20
	str r5, [sp, #0x60]
	adds r3, #0x20
	str r3, [sp, #0x64]
	adds r5, #4
	str r5, [sp, #0x68]
	adds r3, #4
	str r3, [sp, #0x6c]
	adds r5, #8
	str r5, [sp, #0x70]
	adds r3, #0xa
	str r3, [sp, #0x74]
	mov r5, sp
	adds r5, #8
	str r5, [sp, #0x78]
	adds r3, #4
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08D75488
	movs r0, #0
	b _08D7548A
	.align 2, 0
_08D75480: .4byte gUnk_0300041C
_08D75484: .4byte gUnk_03000428
_08D75488:
	movs r0, #1
_08D7548A:
	strh r0, [r1]
	ldrb r2, [r2]
	cmp r8, r2
	bne _08D7549E
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08D7549E:
	adds r1, r7, #0
	adds r1, #0xd0
	ldrh r0, [r1]
	movs r5, #0x10
	movs r6, #0
	movs r4, #0
	orrs r0, r5
	strh r0, [r1]
	mov r0, sb
	str r4, [r0]
	mov r1, sl
	strh r4, [r1]
	mov sb, ip
	mov r2, sb
	strb r6, [r2]
	ldr r0, [sp, #0x10]
	strb r6, [r0]
	ldr r1, [sp, #0x14]
	strh r4, [r1]
	ldr r2, [sp, #0x18]
	strb r6, [r2]
	ldr r0, [sp, #0x1c]
	strh r4, [r0]
	ldr r1, [sp, #0x20]
	strb r6, [r1]
	ldr r2, [sp, #0x24]
	strb r6, [r2]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0xc]
	strb r6, [r0]
	str r4, [sp]
	ldr r2, _08D75690 @ =0x05000011
	mov r0, sp
	adds r1, r7, #0
	str r3, [sp, #0x7c]
	bl sub_08D7D89C
	ldr r0, _08D75694 @ =0x06010000
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r1, _08D75698 @ =gUnk_0200D778
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	mov r1, r8
	strb r1, [r7, #0x1f]
	ldr r1, _08D7569C @ =gUnk_0200D808
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x80]
	ldr r5, [sp, #0x30]
	mov sl, r5
	adds r0, r5, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	str r2, [r7, #0x28]
	str r1, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r3, [sp, #0x7c]
	mov r1, r8
	cmp r1, #1
	bhi _08D75552
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
_08D75552:
	mov r2, r8
	cmp r2, #0
	beq _08D7555C
	cmp r2, #3
	bne _08D7556C
_08D7555C:
	ldrh r0, [r7, #0x14]
	ldr r1, _08D756A0 @ =0x0000F83F
	ands r1, r0
	movs r5, #0x98
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r7, #0x14]
_08D7556C:
	ldr r0, [r7, #8]
	ldr r1, _08D756A4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
	movs r4, #0
	str r4, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r2, _08D75690 @ =0x05000011
	str r3, [sp, #0x7c]
	bl sub_08D7D89C
	ldr r0, _08D75694 @ =0x06010000
	str r0, [r7, #0x44]
	movs r2, #0xf0
	lsls r2, r2, #2
	ldr r1, [sp, #0x3c]
	strh r2, [r1]
	ldr r1, _08D756A8 @ =gUnk_0200D828
	mov r5, sb
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, [sp, #0x40]
	strh r0, [r2]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r5, [sp, #0x44]
	strb r0, [r5]
	ldr r0, [sp, #0x48]
	strh r4, [r0]
	movs r0, #0xff
	ldr r1, [sp, #0x4c]
	strb r0, [r1]
	movs r6, #0x10
	ldr r2, [sp, #0x50]
	strb r6, [r2]
	mov r0, r8
	ldr r5, [sp, #0x54]
	strb r0, [r5]
	ldr r1, _08D756AC @ =gUnk_0200D900
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	ldr r5, [sp, #0x58]
	strh r0, [r5]
	ldr r5, [sp, #0x80]
	adds r5, #1
	lsls r5, r5, #2
	str r5, [sp, #0x80]
	adds r1, r5, r1
	ldr r1, [r1]
	asrs r0, r1, #2
	ldr r5, [sp, #0x5c]
	strh r0, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [r7, #0x4c]
	str r2, [r7, #0x6c]
	str r1, [r7, #0x70]
	ldr r1, [sp, #0x60]
	strh r4, [r1]
	ldr r2, [sp, #0x64]
	strh r4, [r2]
	movs r5, #0x10
	mov r8, r5
	ldr r0, [sp, #0x68]
	strh r6, [r0]
	ldr r1, [sp, #0x6c]
	strh r4, [r1]
	str r4, [r7, #0x7c]
	ldr r2, [sp, #0x70]
	str r4, [r2]
	ldr r5, [sp, #0x74]
	str r4, [r5]
	str r4, [sp, #8]
	ldr r0, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	adds r1, r3, #0
	ldr r2, _08D75690 @ =0x05000011
	bl sub_08D7D89C
	ldr r3, [sp, #0x7c]
	ldr r0, _08D75694 @ =0x06010000
	str r0, [r3]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	ldr r1, _08D756B0 @ =gUnk_0200D920
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r5, r8
	strb r5, [r3, #0x1c]
	movs r0, #5
	strb r0, [r3, #0x1f]
	ldr r1, _08D756B4 @ =gUnk_0200D980
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x80]
	adds r5, r0, r1
	ldr r1, [r5]
	asrs r0, r1, #2
	strh r0, [r3, #0x12]
	mov r5, sb
	str r5, [r3, #8]
	str r2, [r3, #0x28]
	str r1, [r3, #0x2c]
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x32]
	strh r6, [r3, #0x34]
	strh r4, [r3, #0x36]
	str r4, [r3, #0x38]
	str r4, [r3, #0x3c]
	str r4, [r3, #0x40]
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D75690: .4byte 0x05000011
_08D75694: .4byte 0x06010000
_08D75698: .4byte gUnk_0200D778
_08D7569C: .4byte gUnk_0200D808
_08D756A0: .4byte 0x0000F83F
_08D756A4: .4byte 0xFFFFCFFF
_08D756A8: .4byte gUnk_0200D828
_08D756AC: .4byte gUnk_0200D900
_08D756B0: .4byte gUnk_0200D920
_08D756B4: .4byte gUnk_0200D980

	thumb_func_start sub_08D756B8
sub_08D756B8: @ 0x08D756B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xd0
	ldrh r0, [r3]
	ldr r2, _08D75720 @ =0x0000FEFF
	ands r2, r0
	movs r7, #0
	movs r6, #0
	ldr r0, _08D75724 @ =0x0000FDFF
	ands r2, r0
	strh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D756E6
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08D756E6:
	ldrh r1, [r3]
	ldr r0, _08D75728 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
	adds r5, r4, #0
	adds r5, #0xcc
	ldr r0, [r5]
	cmp r0, #0
	beq _08D756FE
	bl sub_08D7B78C
	str r6, [r5]
_08D756FE:
	adds r0, r4, #0
	adds r0, #0xdc
	strh r6, [r0]
	adds r0, #3
	strb r7, [r0]
	adds r0, #1
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D75720: .4byte 0x0000FEFF
_08D75724: .4byte 0x0000FDFF
_08D75728: .4byte 0x0000FFDF

	thumb_func_start sub_08D7572C
sub_08D7572C: @ 0x08D7572C
	ldr r1, _08D75748 @ =0x040000D4
	ldr r0, _08D7574C @ =gUnk_0200DC94
	str r0, [r1]
	ldr r0, _08D75750 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08D75754 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08D75758 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08D75748: .4byte 0x040000D4
_08D7574C: .4byte gUnk_0200DC94
_08D75750: .4byte gUnk_03002730
_08D75754: .4byte 0x80000100
_08D75758: .4byte gUnk_030013D0

	thumb_func_start sub_08D7575C
sub_08D7575C: @ 0x08D7575C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08D757C0 @ =gUnk_03005868
	movs r2, #0
	str r2, [r0]
	ldr r1, _08D757C4 @ =gUnk_03002620
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08D757C8 @ =gUnk_03001E40
	ldr r0, _08D757CC @ =0x00001C02
	strh r0, [r1]
	adds r0, #0xff
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08D757D0 @ =gUnk_03001478
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r1, _08D757D4 @ =gUnk_03002610
	movs r0, #8
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _08D757D8 @ =gUnk_02003881
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08D757DC @ =gUnk_02004F21
	str r3, [sp]
	movs r3, #0
	bl sub_08D7B670
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08D757E0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D757E4
	.align 2, 0
_08D757C0: .4byte gUnk_03005868
_08D757C4: .4byte gUnk_03002620
_08D757C8: .4byte gUnk_03001E40
_08D757CC: .4byte 0x00001C02
_08D757D0: .4byte gUnk_03001478
_08D757D4: .4byte gUnk_03002610
_08D757D8: .4byte gUnk_02003881
_08D757DC: .4byte gUnk_02004F21
_08D757E0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D757E4:
	adds r5, r1, r0
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08D7582C @ =0x01000210
	adds r1, r5, #0
	bl sub_08D7D89C
	bl sub_08D78448
	str r0, [r5, #0xc]
	ldr r0, _08D75830 @ =gUnk_03000404
	ldrb r1, [r0]
	ldr r2, _08D75834 @ =0x0000041C
	adds r0, r5, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08D75838 @ =gUnk_03000428
	ldrb r1, [r0]
	ldr r3, _08D7583C @ =0x0000041D
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, _08D75840 @ =0x0000040E
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _08D75844 @ =0x00000416
	adds r0, r5, r2
	strb r4, [r0]
	subs r3, #6
	adds r0, r5, r3
	strb r4, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7582C: .4byte 0x01000210
_08D75830: .4byte gUnk_03000404
_08D75834: .4byte 0x0000041C
_08D75838: .4byte gUnk_03000428
_08D7583C: .4byte 0x0000041D
_08D75840: .4byte 0x0000040E
_08D75844: .4byte 0x00000416

	thumb_func_start sub_08D75848
sub_08D75848: @ 0x08D75848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x150
	ldr r4, _08D75880 @ =gUnk_03002560
	ldr r0, [r4]
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r0, _08D75884 @ =gUnk_02003C0D
	mov sl, r0
	add r7, sp, #0x28
	add r3, sp, #0x50
	add r6, sp, #0x78
	add r5, sp, #0xa0
	add r0, sp, #0xc8
	mov sb, r0
	add r0, sp, #0xf0
	mov r8, r0
	cmp r2, #0
	beq _08D75888
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7588C
	.align 2, 0
_08D75880: .4byte gUnk_03002560
_08D75884: .4byte gUnk_02003C0D
_08D75888:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7588C:
	adds r1, r1, r0
	str r1, [sp, #0x148]
	ldr r1, [sp, #0x148]
	str r1, [sp, #0x144]
	ldr r0, [r4]
	mov r2, sl
	str r2, [r0, #8]
	ldr r0, _08D75B8C @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r1, #0
	mov sl, r1
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	mov r2, sl
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp, #8]
	str r3, [sp, #0x14c]
	bl sub_08D7BEE4
	ldr r0, _08D75B8C @ =0x06010000
	str r0, [sp, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	movs r2, #2
	strh r2, [r7, #0xc]
	movs r0, #7
	strb r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #1
	strb r0, [r7, #0x1f]
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl sub_08D7BEE4
	ldr r1, _08D75B8C @ =0x06010000
	str r1, [sp, #0x50]
	ldr r3, [sp, #0x14c]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r3, #0x14]
	movs r0, #2
	strh r0, [r3, #0xc]
	movs r1, #6
	strb r1, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #2
	strb r1, [r3, #0x1f]
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl sub_08D7BEE4
	ldr r2, _08D75B8C @ =0x06010000
	str r2, [sp, #0x78]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	movs r1, #2
	strh r1, [r6, #0xc]
	movs r0, #8
	strb r0, [r6, #0x1a]
	mov r2, sl
	strh r2, [r6, #0x16]
	subs r0, #9
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #3
	strb r1, [r6, #0x1f]
	strh r2, [r6, #0x10]
	strh r2, [r6, #0x12]
	str r4, [r6, #8]
	adds r0, r6, #0
	bl sub_08D7BEE4
	ldr r2, _08D75B8C @ =0x06010000
	str r2, [r5]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	movs r1, #2
	strh r1, [r5, #0xc]
	movs r0, #9
	strb r0, [r5, #0x1a]
	mov r2, sl
	strh r2, [r5, #0x16]
	subs r0, #0xa
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r0, #4
	strb r0, [r5, #0x1f]
	strh r2, [r5, #0x10]
	strh r2, [r5, #0x12]
	str r4, [r5, #8]
	adds r0, r5, #0
	bl sub_08D7BEE4
	ldr r1, _08D75B8C @ =0x06010000
	mov r2, sb
	str r1, [r2]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sl
	strh r1, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r7, #5
	strb r7, [r2, #0x1f]
	mov r0, sl
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, sb
	bl sub_08D7BEE4
	ldr r1, _08D75B8C @ =0x06010000
	mov r2, r8
	str r1, [r2]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sl
	strh r1, [r2, #0xc]
	movs r0, #2
	strb r0, [r2, #0x1a]
	strh r1, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r0, #6
	strb r0, [r2, #0x1f]
	mov r1, sl
	strh r1, [r2, #0x10]
	strh r1, [r2, #0x12]
	str r4, [r2, #8]
	mov r0, r8
	bl sub_08D7BEE4
	add r0, sp, #0x118
	ldr r2, _08D75B8C @ =0x06010000
	str r2, [r0]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #7
	strb r1, [r0, #0x1f]
	mov r2, sl
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	str r4, [r0, #8]
	bl sub_08D7BEE4
	ldr r0, _08D75B90 @ =gUnk_0200DE94
	ldr r1, _08D75B94 @ =0x0600E000
	bl sub_08D7D8B0
	ldr r0, _08D75B98 @ =gUnk_0200E300
	ldr r1, _08D75B9C @ =0x0600E800
	bl sub_08D7D8B0
	ldr r0, _08D75BA0 @ =gUnk_0200E860
	ldr r1, _08D75BA4 @ =0x0600F000
	bl sub_08D7D8B0
	mov r0, sl
	ldr r1, [sp, #0x144]
	str r0, [r1]
	adds r0, r1, #0
	adds r0, #0x10
	movs r1, #0
	bl sub_08D753C8
	ldr r0, [sp, #0x144]
	adds r0, #0xfc
	movs r1, #1
	bl sub_08D753C8
	ldr r2, [sp, #0x144]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #2
	bl sub_08D753C8
	ldr r2, [sp, #0x144]
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #3
	bl sub_08D753C8
	add r0, sp, #0x140
	mov r2, sl
	str r2, [r0]
	ldr r1, [sp, #0x144]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r4, r1, r2
	ldr r2, _08D75BA8 @ =0x05000011
	adds r1, r4, #0
	bl sub_08D7D89C
	ldr r0, _08D75B8C @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08D75BAC @ =gUnk_0200D9D8
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	mov r1, sl
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r1, [r4, #0x36]
	mov r1, sl
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	ldr r0, [sp, #0x144]
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r0, [r2]
	ldr r1, _08D75BB0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	ldr r2, [sp, #0x144]
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, [sp, #0x144]
	ldr r2, _08D75BB4 @ =0x00000409
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _08D75BB8 @ =0x0000040A
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, [sp, #0x144]
	ldr r2, _08D75BBC @ =0x0000040B
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x144]
	ldr r1, _08D75BC0 @ =0x0000041A
	adds r0, r2, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, [sp, #0x144]
	subs r1, #2
	adds r4, r0, r1
	movs r2, #0x10
	strh r2, [r4]
	subs r1, #2
	adds r5, r0, r1
	ldrh r1, [r5]
	ldr r0, _08D75BC4 @ =0x0000050A
	cmp r1, r0
	bne _08D75B5E
	movs r0, #0x8f
	lsls r0, r0, #2
	bl sub_08D792D8
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, [sp, #0x144]
	ldr r2, _08D75BC8 @ =0x0000041C
	adds r0, r1, r2
	movs r1, #3
	strb r1, [r0]
_08D75B5E:
	mov r2, sl
	strb r2, [r5]
	ldr r1, [sp, #0x148]
	ldr r2, _08D75BCC @ =0x00000417
	adds r0, r1, r2
	movs r1, #0
	strb r1, [r0]
	ldr r2, [sp, #0x148]
	ldr r1, _08D75BD0 @ =0x0000041E
	adds r0, r2, r1
	mov r2, sl
	strh r2, [r0]
	movs r0, #0x23
	bl sub_08D792D8
	add sp, #0x150
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D75B8C: .4byte 0x06010000
_08D75B90: .4byte gUnk_0200DE94
_08D75B94: .4byte 0x0600E000
_08D75B98: .4byte gUnk_0200E300
_08D75B9C: .4byte 0x0600E800
_08D75BA0: .4byte gUnk_0200E860
_08D75BA4: .4byte 0x0600F000
_08D75BA8: .4byte 0x05000011
_08D75BAC: .4byte gUnk_0200D9D8
_08D75BB0: .4byte 0xFFFFCFFF
_08D75BB4: .4byte 0x00000409
_08D75BB8: .4byte 0x0000040A
_08D75BBC: .4byte 0x0000040B
_08D75BC0: .4byte 0x0000041A
_08D75BC4: .4byte 0x0000050A
_08D75BC8: .4byte 0x0000041C
_08D75BCC: .4byte 0x00000417
_08D75BD0: .4byte 0x0000041E

	thumb_func_start sub_08D75BD4
sub_08D75BD4: @ 0x08D75BD4
	push {r4, r5, lr}
	ldr r3, _08D75BF0 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D75BF4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D75BF8
	.align 2, 0
_08D75BF0: .4byte gUnk_03002560
_08D75BF4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D75BF8:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, _08D75C18 @ =0x0000040E
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08D75C20
	cmp r0, #0xb3
	ble _08D75C96
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _08D75C1C @ =gUnk_02003D09
	str r0, [r1, #8]
	b _08D75C96
	.align 2, 0
_08D75C18: .4byte 0x0000040E
_08D75C1C: .4byte gUnk_02003D09
_08D75C20:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D73CA8
	ldr r2, _08D75CB8 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D75CBC @ =gUnk_0200E860
	ldr r1, _08D75CC0 @ =0x0600F000
	bl sub_08D7D8B0
	bl sub_08D77C34
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D75C96
	ldr r0, _08D75CC4 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08D75CC8 @ =0x0000041D
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D778B8
	movs r5, #0
_08D75C6E:
	movs r0, #0xec
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r4, r2
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D75C8C
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D77AB8
_08D75C8C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D75C6E
_08D75C96:
	ldr r2, _08D75CCC @ =0x0000040E
	adds r0, r4, r2
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r4, r3
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D75CB8: .4byte gUnk_03002620
_08D75CBC: .4byte gUnk_0200E860
_08D75CC0: .4byte 0x0600F000
_08D75CC4: .4byte 0x0000FFEF
_08D75CC8: .4byte 0x0000041D
_08D75CCC: .4byte 0x0000040E

	thumb_func_start sub_08D75CD0
sub_08D75CD0: @ 0x08D75CD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08D75CF4 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D75CF8 @ =gUnk_02003E51
	cmp r0, #0
	beq _08D75CFC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D75D00
	.align 2, 0
_08D75CF4: .4byte gUnk_03002560
_08D75CF8: .4byte gUnk_02003E51
_08D75CFC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D75D00:
	adds r6, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r2, r0, #0
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r3, _08D75E0C @ =0x0000040C
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #2
	adds r1, r6, r3
	strh r0, [r1]
	strh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08D75D44
	strh r5, [r4]
_08D75D44:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08D75D54
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08D75D54:
	adds r7, r6, #0
	adds r7, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08D756B8
	movs r0, #0xfc
	adds r0, r0, r6
	mov r8, r0
	movs r1, #1
	bl sub_08D756B8
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	movs r1, #2
	bl sub_08D756B8
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r3, r3, r6
	mov sl, r3
	mov r0, sl
	movs r1, #3
	bl sub_08D756B8
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	ldr r3, _08D75E10 @ =0x0000EFFF
	ands r3, r0
	strh r3, [r2]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08D75DB0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D75DB0:
	adds r0, r6, #0
	bl sub_08D76FA0
	adds r0, r6, #0
	bl sub_08D7704C
	ldr r1, _08D75E14 @ =0x0000041C
	adds r5, r6, r1
	ldrb r1, [r5]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r4, r6, r3
	ldrh r2, [r4]
	adds r0, r7, #0
	bl sub_08D770A0
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, r8
	bl sub_08D770A0
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sb
	bl sub_08D770A0
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sl
	bl sub_08D770A0
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_08D73A94
	adds r0, r6, #0
	bl sub_08D77568
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D75E0C: .4byte 0x0000040C
_08D75E10: .4byte 0x0000EFFF
_08D75E14: .4byte 0x0000041C

	thumb_func_start sub_08D75E18
sub_08D75E18: @ 0x08D75E18
	push {r4, lr}
	ldr r0, _08D75E34 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D75E38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D75E3C
	.align 2, 0
_08D75E34: .4byte gUnk_03002560
_08D75E38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D75E3C:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_08D78538
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _08D75E60 @ =gUnk_03002560
	cmp r0, #0
	beq _08D75E68
	ldr r1, [r1]
	ldr r0, _08D75E64 @ =gUnk_02003EC1
	b _08D75E6C
	.align 2, 0
_08D75E60: .4byte gUnk_03002560
_08D75E64: .4byte gUnk_02003EC1
_08D75E68:
	ldr r1, [r1]
	ldr r0, _08D75E84 @ =gUnk_020044A1
_08D75E6C:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D75E84: .4byte gUnk_020044A1

	thumb_func_start sub_08D75E88
sub_08D75E88: @ 0x08D75E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D75EAC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D75EB0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D75EB4
	.align 2, 0
_08D75EAC: .4byte gUnk_03002560
_08D75EB0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D75EB4:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_08D76F04
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _08D75FC0 @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08D75EEE
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_08D792D8
	bl sub_08D770F8
	ldr r0, [r4, #0xc]
	bl sub_08D78568
_08D75EEE:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D75F1C
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08D75F1C
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_08D7D990
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08D75F1C
	bl sub_08D777F0
_08D75F1C:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08D75F22:
	movs r0, #0xec
	adds r1, r5, #0
	muls r1, r0, r1
	str r1, [sp]
	adds r1, r1, r4
	mov ip, r1
	mov r6, ip
	adds r6, #0xe0
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D75FF6
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08D75FF6
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D75FF6
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _08D75F74
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D75F74:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _08D75FF6
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _08D75FC0 @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _08D75FC4 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08D75FC8
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	movs r6, #1
	orrs r0, r6
	strh r0, [r1]
	b _08D75FF6
	.align 2, 0
_08D75FC0: .4byte 0x00000412
_08D75FC4: .4byte 0x0000040D
_08D75FC8:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _08D76060 @ =gUnk_0200D9A0
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_08D77FCC
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_08D75FF6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D75F22
	mov r0, sb
	cmp r0, #0
	beq _08D76010
	ldr r2, _08D76064 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08D76010:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D760E6
	ldr r5, _08D76068 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08D760E6
	movs r5, #0
_08D76034:
	movs r0, #0xec
	muls r0, r5, r0
	adds r2, r4, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D76070
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D76070
	ldr r6, _08D7606C @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D7607A
	.align 2, 0
_08D76060: .4byte gUnk_0200D9A0
_08D76064: .4byte 0x0000040D
_08D76068: .4byte 0x00000414
_08D7606C: .4byte 0x0000040C
_08D76070:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D7607A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D76034
	movs r5, #0
_08D76086:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r4, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D760C2
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D760C2
	ldr r1, _08D761AC @ =gUnk_0201EA90
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _08D761B0 @ =0x0000040C
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xef
	strb r1, [r0]
_08D760C2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D76086
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D761B4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D761B8 @ =gUnk_020041FD
	str r0, [r1, #8]
_08D760E6:
	ldr r5, _08D761BC @ =0x00000412
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r3, r4, r6
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D7612A
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r0, r5
	cmp r1, r0
	blt _08D7612A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08D761B4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D761C0 @ =gUnk_02004999
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
_08D7612A:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7618A
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7618A
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7618A
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7618A
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D761B4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D761C0 @ =gUnk_02004999
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
_08D7618A:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D761AC: .4byte gUnk_0201EA90
_08D761B0: .4byte 0x0000040C
_08D761B4: .4byte gUnk_03002560
_08D761B8: .4byte gUnk_020041FD
_08D761BC: .4byte 0x00000412
_08D761C0: .4byte gUnk_02004999

	thumb_func_start sub_08D761C4
sub_08D761C4: @ 0x08D761C4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D761E0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D761E4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D761E8
	.align 2, 0
_08D761E0: .4byte gUnk_03002560
_08D761E4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D761E8:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r7, #0
_08D761EE:
	movs r0, #0xec
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, r4, r5
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D76232
	ldr r6, _08D76330 @ =0x0000FFFE
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D76232
	ldr r0, _08D76334 @ =0x00000239
	bl sub_08D792D8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08D772E0
_08D76232:
	movs r0, #0xec
	muls r0, r7, r0
	adds r6, r4, r0
	adds r5, r6, #0
	adds r5, #0xec
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D76280
	ldr r0, _08D76334 @ =0x00000239
	bl sub_08D793A4
	ldr r0, _08D76338 @ =0x0000023A
	bl sub_08D792D8
	ldrh r0, [r5]
	ldr r2, _08D7633C @ =0x0000FFEF
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _08D76340 @ =gUnk_0200D778
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r2, r6, #0
	adds r2, #0x44
	ldrh r0, [r2]
	ldr r3, _08D76344 @ =0x0000F7FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
_08D76280:
	ldrh r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D762C8
	adds r3, r6, #0
	adds r3, #0x44
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08D762C8
	ldr r1, _08D76348 @ =0x0000FFDF
	adds r0, r1, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r5]
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _08D76340 @ =gUnk_0200D778
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08D762C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D761EE
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7631A
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7631A
	movs r6, #0xb1
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7631A
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7631A
	ldr r0, _08D7634C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76350 @ =gUnk_0200438D
	str r0, [r1, #8]
_08D7631A:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D76330: .4byte 0x0000FFFE
_08D76334: .4byte 0x00000239
_08D76338: .4byte 0x0000023A
_08D7633C: .4byte 0x0000FFEF
_08D76340: .4byte gUnk_0200D778
_08D76344: .4byte 0x0000F7FF
_08D76348: .4byte 0x0000FFDF
_08D7634C: .4byte gUnk_03002560
_08D76350: .4byte gUnk_0200438D

	thumb_func_start sub_08D76354
sub_08D76354: @ 0x08D76354
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08D76374 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76378
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7637C
	.align 2, 0
_08D76374: .4byte gUnk_03002560
_08D76378:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7637C:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_08D76F04
	movs r0, #0
	mov r8, r0
_08D76388:
	movs r0, #0xec
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r6, r7, r0
	adds r5, r6, #0
	adds r5, #0xef
	ldrb r0, [r5]
	cmp r0, #0
	beq _08D763F2
	adds r4, r6, #0
	adds r4, #0xf7
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08D763F2
	ldr r0, _08D76454 @ =0x0000023B
	bl sub_08D792D8
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	adds r3, r6, #0
	adds r3, #0xee
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08D763D4
	movs r0, #8
	strb r0, [r3]
_08D763D4:
	adds r1, r6, #0
	adds r1, #0x54
	ldr r2, _08D76458 @ =gUnk_0200D828
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_08D763F2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08D76388
	adds r0, r7, #0
	adds r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D76438
	ldr r1, _08D7645C @ =0x000001DB
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D76438
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D76438
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D76438
	ldr r0, _08D76460 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76464 @ =gUnk_02004999
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
_08D76438:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_08D73A94
	adds r0, r7, #0
	bl sub_08D77568
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D76454: .4byte 0x0000023B
_08D76458: .4byte gUnk_0200D828
_08D7645C: .4byte 0x000001DB
_08D76460: .4byte gUnk_03002560
_08D76464: .4byte gUnk_02004999

	thumb_func_start sub_08D76468
sub_08D76468: @ 0x08D76468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08D7648C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76490
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76494
	.align 2, 0
_08D7648C: .4byte gUnk_03002560
_08D76490:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76494:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_08D76F04
	movs r0, #0x82
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r1, _08D765A0 @ =0x00000412
	adds r6, r4, r1
	ldrh r0, [r5]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08D764CE
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl sub_08D792D8
	bl sub_08D770F8
	ldr r0, [r4, #0xc]
	bl sub_08D78568
_08D764CE:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D764FC
	ldrh r0, [r5]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08D764FC
	adds r0, r1, #0
	movs r1, #0x78
	bl sub_08D7D990
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08D764FC
	bl sub_08D777F0
_08D764FC:
	movs r0, #0
	mov sb, r0
	movs r5, #0
_08D76502:
	movs r0, #0xec
	adds r1, r5, #0
	muls r1, r0, r1
	str r1, [sp]
	adds r1, r1, r4
	mov ip, r1
	mov r6, ip
	adds r6, #0xe0
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08D765D6
	movs r3, #0x80
	lsls r3, r3, #2
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08D765D6
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D765D6
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r4, r7
	ldrh r1, [r2]
	movs r0, #0x20
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _08D76554
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D76554:
	mov r3, ip
	adds r3, #0xf0
	ldrh r0, [r3]
	cmp r0, #0
	bne _08D765D6
	ldrh r1, [r6]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _08D765A0 @ =0x00000412
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r3, _08D765A4 @ =0x0000040D
	adds r0, r4, r3
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08D765A8
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	movs r6, #1
	orrs r0, r6
	strh r0, [r1]
	b _08D765D6
	.align 2, 0
_08D765A0: .4byte 0x00000412
_08D765A4: .4byte 0x0000040D
_08D765A8:
	ldrh r1, [r6]
	mov r0, sl
	orrs r0, r1
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #0x10
	adds r0, r4, r0
	ldr r3, _08D76640 @ =gUnk_0200D9A0
	lsls r2, r5, #1
	lsls r1, r5, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_08D77FCC
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r7, [sp]
	adds r1, r1, r7
	str r0, [r1]
_08D765D6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D76502
	mov r0, sb
	cmp r0, #0
	beq _08D765F0
	ldr r2, _08D76644 @ =0x0000040D
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08D765F0:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r4, r3
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D766C6
	ldr r5, _08D76648 @ =0x00000414
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08D766C6
	movs r5, #0
_08D76614:
	movs r0, #0xec
	muls r0, r5, r0
	adds r2, r4, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D76650
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D76650
	ldr r6, _08D7664C @ =0x0000040C
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D7665A
	.align 2, 0
_08D76640: .4byte gUnk_0200D9A0
_08D76644: .4byte 0x0000040D
_08D76648: .4byte 0x00000414
_08D7664C: .4byte 0x0000040C
_08D76650:
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08D7665A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D76614
	movs r5, #0
_08D76666:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r4, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D766A2
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D766A2
	ldr r1, _08D7678C @ =gUnk_0201EA90
	adds r2, r3, #0
	adds r2, #0xf2
	ldr r7, _08D76790 @ =0x0000040C
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xef
	strb r1, [r0]
_08D766A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08D76666
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D76794 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76798 @ =gUnk_020047DD
	str r0, [r1, #8]
_08D766C6:
	ldr r5, _08D7679C @ =0x00000412
	adds r1, r4, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r3, r4, r6
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D7670A
	ldrh r1, [r1]
	movs r7, #0x82
	lsls r7, r7, #3
	adds r0, r4, r7
	ldrh r0, [r0]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r0, r5
	cmp r1, r0
	blt _08D7670A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08D76794 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D767A0 @ =gUnk_02004999
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
_08D7670A:
	adds r0, r4, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7676A
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7676A
	movs r7, #0xae
	lsls r7, r7, #2
	adds r0, r4, r7
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7676A
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7676A
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D76794 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D767A0 @ =gUnk_02004999
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
_08D7676A:
	movs r5, #0xf0
	lsls r5, r5, #2
	adds r0, r4, r5
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7678C: .4byte gUnk_0201EA90
_08D76790: .4byte 0x0000040C
_08D76794: .4byte gUnk_03002560
_08D76798: .4byte gUnk_020047DD
_08D7679C: .4byte 0x00000412
_08D767A0: .4byte gUnk_02004999

	thumb_func_start sub_08D767A4
sub_08D767A4: @ 0x08D767A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D767C4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D767C8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D767CC
	.align 2, 0
_08D767C4: .4byte gUnk_03002560
_08D767C8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D767CC:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
_08D767D6:
	movs r0, #0xec
	adds r5, r7, #0
	muls r5, r0, r5
	adds r0, r4, r5
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08D7681A
	ldr r6, _08D768F4 @ =0x0000FFFE
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08D7681A
	ldr r0, _08D768F8 @ =0x00000239
	bl sub_08D792D8
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	adds r1, r7, #0
	movs r2, #1
	bl sub_08D772E0
_08D7681A:
	movs r0, #0xec
	adds r2, r7, #0
	muls r2, r0, r2
	mov r8, r2
	adds r6, r4, r2
	adds r5, r6, #0
	adds r5, #0xec
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D7685C
	ldr r2, _08D768FC @ =0x0000FFEF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
	ldr r0, _08D768F8 @ =0x00000239
	bl sub_08D793A4
	ldr r0, _08D76900 @ =0x0000023A
	bl sub_08D792D8
	adds r1, r6, #0
	adds r1, #0x10
	ldr r2, _08D76904 @ =gUnk_0200D778
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xe]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_08D7685C:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D76886
	ldr r6, _08D76908 @ =0x0000FFDF
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r5]
	mov r0, r8
	adds r0, #0x10
	adds r0, r4, r0
	bl sub_08D771C0
	mov r0, sb
	cmp r0, #0
	bne _08D76886
	movs r1, #1
	mov sb, r1
	bl sub_08D776C0
_08D76886:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D767D6
	adds r0, r4, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D768D8
	movs r6, #0xec
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D768D8
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D768D8
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08D768D8
	ldr r0, _08D7690C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76910 @ =gUnk_0200494D
	str r0, [r1, #8]
_08D768D8:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D768F4: .4byte 0x0000FFFE
_08D768F8: .4byte 0x00000239
_08D768FC: .4byte 0x0000FFEF
_08D76900: .4byte 0x0000023A
_08D76904: .4byte gUnk_0200D778
_08D76908: .4byte 0x0000FFDF
_08D7690C: .4byte gUnk_03002560
_08D76910: .4byte gUnk_0200494D

	thumb_func_start sub_08D76914
sub_08D76914: @ 0x08D76914
	push {r4, lr}
	ldr r3, _08D76930 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08D76934 @ =gUnk_02004999
	cmp r0, #0
	beq _08D76938
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7693C
	.align 2, 0
_08D76930: .4byte gUnk_03002560
_08D76934: .4byte gUnk_02004999
_08D76938:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7693C:
	adds r4, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D76960
sub_08D76960: @ 0x08D76960
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D7697C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76980
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76984
	.align 2, 0
_08D7697C: .4byte gUnk_03002560
_08D76980:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76984:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D73FA8
	cmp r0, #0
	bne _08D76A84
	movs r6, #0
_08D76992:
	movs r0, #0xec
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xdc
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08D769AC
	bl sub_08D7B78C
	movs r0, #0
	str r0, [r4]
_08D769AC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D76992
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	ldr r1, _08D769EC @ =gUnk_03002560
	cmp r0, #7
	bhi _08D769E2
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08D769E2
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08D769E2
	adds r2, #0xec
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #7
	bls _08D769F4
_08D769E2:
	ldr r1, [r1]
	ldr r0, _08D769F0 @ =gUnk_02004AE5
	str r0, [r1, #8]
	b _08D76A84
	.align 2, 0
_08D769EC: .4byte gUnk_03002560
_08D769F0: .4byte gUnk_02004AE5
_08D769F4:
	ldr r0, _08D76A9C @ =0x0000041A
	adds r2, r5, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08D76A0A
	movs r0, #7
	strb r0, [r2]
_08D76A0A:
	ldr r1, [r1]
	ldr r0, _08D76AA0 @ =gUnk_02003C0D
	str r0, [r1, #8]
	movs r6, #0
	ldr r7, _08D76AA4 @ =gUnk_0200D778
_08D76A14:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r3, r2, #0
	adds r3, #0xe0
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08D76A48
	ldr r0, _08D76AA8 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x10
	ldrh r0, [r7]
	strh r0, [r1, #0xc]
	ldrb r0, [r7, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r2, #0
	adds r0, #0x2f
	strb r6, [r0]
_08D76A48:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08D76A7A
	ldr r2, _08D76A9C @ =0x0000041A
	adds r0, r5, r2
	strb r1, [r0]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D76A7A
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D76A7A
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
_08D76A7A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D76A14
_08D76A84:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08D73A94
	adds r0, r5, #0
	bl sub_08D77568
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D76A9C: .4byte 0x0000041A
_08D76AA0: .4byte gUnk_02003C0D
_08D76AA4: .4byte gUnk_0200D778
_08D76AA8: .4byte 0x0000FBFF

	thumb_func_start sub_08D76AAC
sub_08D76AAC: @ 0x08D76AAC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D76AC8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76ACC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76AD0
	.align 2, 0
_08D76AC8: .4byte gUnk_03002560
_08D76ACC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76AD0:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D73FA8
	cmp r0, #0
	beq _08D76ADE
	b _08D76C1A
_08D76ADE:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D73CA8
	adds r0, r5, #0
	bl sub_08D775B4
	movs r7, #0
_08D76AF0:
	movs r0, #0xec
	adds r1, r7, #0
	muls r1, r0, r1
	mov ip, r1
	adds r4, r1, r5
	adds r1, r4, #0
	adds r1, #0x98
	ldr r2, _08D76B60 @ =gUnk_0200D920
	adds r3, r4, #0
	adds r3, #0xf8
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	adds r6, r2, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r2, r4, #0
	adds r2, #0xe0
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	strb r7, [r0]
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08D76B64 @ =gUnk_0200D778
	adds r7, #1
	cmp r0, #0
	bne _08D76B68
	ldrh r0, [r2, #0x14]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x16]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	adds r1, r5, #0
	adds r1, #0x3c
	add r1, ip
	ldr r0, [r1]
	subs r0, #0x30
	str r0, [r1]
	b _08D76BA4
	.align 2, 0
_08D76B60: .4byte gUnk_0200D920
_08D76B64: .4byte gUnk_0200D778
_08D76B68:
	cmp r0, #3
	bne _08D76B7C
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	b _08D76BA4
_08D76B7C:
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	mov r0, ip
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08D7BEE4
	adds r2, r4, #0
	adds r2, #0x44
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D76BA4:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08D76AF0
	ldr r1, _08D76BF8 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08D76C0C
	adds r0, r1, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #8
	bne _08D76C04
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r3, _08D76BFC @ =0x000002C6
	adds r2, r5, r3
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r2, _08D76C00 @ =0x000003B2
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #8
	bne _08D76C04
	movs r0, #0x22
	bl sub_08D792D8
	b _08D76C12
	.align 2, 0
_08D76BF8: .4byte 0x0000041D
_08D76BFC: .4byte 0x000002C6
_08D76C00: .4byte 0x000003B2
_08D76C04:
	movs r0, #0x21
	bl sub_08D792D8
	b _08D76C12
_08D76C0C:
	movs r0, #0x24
	bl sub_08D792D8
_08D76C12:
	ldr r0, _08D76C30 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76C34 @ =gUnk_02004C71
	str r0, [r1, #8]
_08D76C1A:
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r5, r3
	bl sub_08D73A94
	adds r0, r5, #0
	bl sub_08D77568
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D76C30: .4byte gUnk_03002560
_08D76C34: .4byte gUnk_02004C71

	thumb_func_start sub_08D76C38
sub_08D76C38: @ 0x08D76C38
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08D76C54 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76C58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76C5C
	.align 2, 0
_08D76C54: .4byte gUnk_03002560
_08D76C58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76C5C:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08D73FA8
	cmp r0, #0
	beq _08D76C6A
	b _08D76D62
_08D76C6A:
	ldr r3, [r5]
	cmp r3, #0
	bne _08D76CF0
	ldr r0, _08D76C94 @ =gUnk_03000470
	ldrh r2, [r0, #0x10]
	adds r4, r2, #0
	ldrh r1, [r0, #8]
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08D76CB6
	ldr r0, _08D76C98 @ =gUnk_03000428
	ldrb r0, [r0]
	ldr r1, _08D76C9C @ =gUnk_0200D6E8
	cmp r0, #0
	beq _08D76CA0
	movs r0, #0x82
	str r0, [sp]
	str r6, [sp, #4]
	b _08D76CA6
	.align 2, 0
_08D76C94: .4byte gUnk_03000470
_08D76C98: .4byte gUnk_03000428
_08D76C9C: .4byte gUnk_0200D6E8
_08D76CA0:
	movs r0, #0x82
	str r0, [sp]
	str r3, [sp, #4]
_08D76CA6:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08D741A4
	str r0, [r5]
	b _08D76D62
_08D76CB6:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08D76D62
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08D76CD4
	ldr r0, _08D76CD0 @ =0x00000416
	adds r1, r5, r0
	b _08D76CE2
	.align 2, 0
_08D76CD0: .4byte 0x00000416
_08D76CD4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08D76D62
	ldr r2, _08D76CEC @ =0x00000417
	adds r1, r5, r2
_08D76CE2:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08D76D62
	.align 2, 0
_08D76CEC: .4byte 0x00000417
_08D76CF0:
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _08D76D04
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76D08
_08D76D04:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76D08:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D753AC
	cmp r0, #0
	beq _08D76D62
	movs r0, #0x10
	movs r1, #1
	bl sub_08D73CA8
	ldr r1, _08D76D44 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08D76D48 @ =0x0000041C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _08D76D4C @ =gUnk_03002560
	cmp r0, #0
	beq _08D76D54
	ldr r1, [r1]
	ldr r0, _08D76D50 @ =gUnk_02004DC1
	str r0, [r1, #8]
	b _08D76D62
	.align 2, 0
_08D76D44: .4byte 0x000002AD
_08D76D48: .4byte 0x0000041C
_08D76D4C: .4byte gUnk_03002560
_08D76D50: .4byte gUnk_02004DC1
_08D76D54:
	ldr r1, [r1]
	ldr r0, _08D76D7C @ =gUnk_02004E25
	str r0, [r1, #8]
	ldr r0, _08D76D80 @ =gUnk_0200EAD4
	ldr r1, _08D76D84 @ =0x0600F000
	bl sub_08D7D8B0
_08D76D62:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_08D73A94
	adds r0, r5, #0
	bl sub_08D77568
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D76D7C: .4byte gUnk_02004E25
_08D76D80: .4byte gUnk_0200EAD4
_08D76D84: .4byte 0x0600F000

	thumb_func_start sub_08D76D88
sub_08D76D88: @ 0x08D76D88
	push {r4, r5, lr}
	ldr r0, _08D76DA4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76DA8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76DAC
	.align 2, 0
_08D76DA4: .4byte gUnk_03002560
_08D76DA8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76DAC:
	adds r4, r1, r0
	bl sub_08D73FA8
	adds r5, r0, #0
	cmp r5, #0
	bne _08D76DCC
	bl sub_08D7940C
	ldr r0, _08D76DE4 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76DE8 @ =gUnk_02003881
	str r0, [r1, #8]
	ldr r0, [r4]
	bl sub_08D7B78C
	str r5, [r4]
_08D76DCC:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08D73A94
	adds r0, r4, #0
	bl sub_08D77568
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D76DE4: .4byte gUnk_03002560
_08D76DE8: .4byte gUnk_02003881

	thumb_func_start sub_08D76DEC
sub_08D76DEC: @ 0x08D76DEC
	push {r4, r5, lr}
	ldr r0, _08D76E08 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76E0C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76E10
	.align 2, 0
_08D76E08: .4byte gUnk_03002560
_08D76E0C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76E10:
	adds r4, r1, r0
	bl sub_08D73FA8
	adds r5, r0, #0
	cmp r5, #0
	bne _08D76E6C
	ldr r0, [r4]
	bl sub_08D7B78C
	str r5, [r4]
	ldr r0, [r4, #0xc]
	bl sub_08D7B78C
	str r5, [r4, #0xc]
	ldr r0, _08D76E74 @ =gUnk_03000400
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08D76E42
	ldr r2, _08D76E78 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _08D76E7C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08D76E42:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08D73CA8
	ldr r2, _08D76E78 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _08D76E7C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	ldr r2, _08D76E80 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D76E84 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D76E88 @ =gUnk_02004EC5
	str r0, [r1, #8]
_08D76E6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D76E74: .4byte gUnk_03000400
_08D76E78: .4byte gUnk_03000470
_08D76E7C: .4byte 0x0000FFFD
_08D76E80: .4byte gUnk_03002620
_08D76E84: .4byte gUnk_03002560
_08D76E88: .4byte gUnk_02004EC5

	thumb_func_start sub_08D76E8C
sub_08D76E8C: @ 0x08D76E8C
	push {lr}
	bl sub_08D73FA8
	cmp r0, #0
	bne _08D76E9A
	bl sub_08D72334
_08D76E9A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D76EA0
sub_08D76EA0: @ 0x08D76EA0
	push {lr}
	ldr r3, _08D76EBC @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D76EC0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D76EC4
	.align 2, 0
_08D76EBC: .4byte gUnk_03002560
_08D76EC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D76EC4:
	adds r0, r1, r0
	ldr r1, _08D76EE4 @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _08D76EDE
	ldr r0, [r3]
	bl sub_08D7B78C
_08D76EDE:
	pop {r0}
	bx r0
	.align 2, 0
_08D76EE4: .4byte 0x0000041E

	thumb_func_start nullsub_088
nullsub_088: @ 0x08D76EE8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D76EEC
sub_08D76EEC: @ 0x08D76EEC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r0, #0xe4
	ldrh r0, [r0]
	cmp r0, r1
	bne _08D76EFE
	movs r2, #1
_08D76EFE:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08D76F04
sub_08D76F04: @ 0x08D76F04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r4, #0
_08D76F10:
	movs r0, #0xec
	adds r5, r4, #0
	muls r5, r0, r5
	adds r2, r6, r5
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xe8
	adds r3, r2, #0
	adds r3, #0xe6
	adds r7, r2, #0
	adds r7, #0xe4
	adds r2, #0xea
	mov r8, r2
	adds r2, r4, #1
	mov sb, r2
	cmp r0, #0
	beq _08D76F5C
	movs r4, #0
	strh r4, [r1]
	strh r4, [r3]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r6, r0
	ldr r2, _08D76F58 @ =0x00000412
	adds r1, r6, r2
	ldrh r1, [r1]
	bl sub_08D76EEC
	strh r0, [r7]
	mov r0, r8
	strh r4, [r0]
	b _08D76F84
	.align 2, 0
_08D76F58: .4byte 0x00000412
_08D76F5C:
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r2, _08D76F9C @ =gUnk_03000470
	lsls r1, r4, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r7]
	adds r0, r2, #0
	adds r0, #0x18
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
_08D76F84:
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08D76F10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D76F9C: .4byte gUnk_03000470

	thumb_func_start sub_08D76FA0
sub_08D76FA0: @ 0x08D76FA0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08D76FF8 @ =gUnk_03005868
	ldr r0, [r5]
	ldr r1, _08D76FFC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08D77000 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r3, r0, #0x10
	movs r2, #0xf
	ands r3, r2
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r2
	ldr r2, _08D77004 @ =gUnk_0200DBB8
	ldr r4, _08D77008 @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r4, _08D7700C @ =gUnk_0200D9D8
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08D77018
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08D77010 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08D77014 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #5
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r1, r6, r0
	ldrh r0, [r4, #0x14]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #0x16]
	b _08D7703A
	.align 2, 0
_08D76FF8: .4byte gUnk_03005868
_08D76FFC: .4byte 0x00196225
_08D77000: .4byte 0x3C6EF35F
_08D77004: .4byte gUnk_0200DBB8
_08D77008: .4byte 0x0000041A
_08D7700C: .4byte gUnk_0200D9D8
_08D77010: .4byte 0x0000FFFE
_08D77014: .4byte 0x000003DF
_08D77018:
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08D77048 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r1, r6, r0
	ldrh r0, [r4]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #2]
_08D7703A:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D77048: .4byte 0x000003DF

	thumb_func_start sub_08D7704C
sub_08D7704C: @ 0x08D7704C
	push {r4, r5, lr}
	ldr r4, _08D7708C @ =gUnk_03005868
	ldr r2, [r4]
	ldr r1, _08D77090 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _08D77094 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _08D77098 @ =gUnk_0200DB38
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _08D7709C @ =0x0000041C
	adds r1, r0, r5
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r2, r2, r1
	adds r2, r2, r4
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsrs r3, r3, #2
	movs r1, #0xf
	ands r3, r1
	adds r2, r2, r3
	subs r5, #0xc
	adds r0, r0, r5
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7708C: .4byte gUnk_03005868
_08D77090: .4byte 0x00196225
_08D77094: .4byte 0x3C6EF35F
_08D77098: .4byte gUnk_0200DB38
_08D7709C: .4byte 0x0000041C

	thumb_func_start sub_08D770A0
sub_08D770A0: @ 0x08D770A0
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D770E2
	ldr r2, _08D770E8 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D770EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D770F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _08D770F4 @ =gUnk_0200DAF8
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xe4
	strh r0, [r1]
_08D770E2:
	pop {r4, r5}

	thumb_func_start sub_08D770E4
sub_08D770E4: @ 0x08D770E4
	pop {r0}
	bx r0
	.align 2, 0
_08D770E8: .4byte gUnk_03005868
_08D770EC: .4byte 0x00196225
_08D770F0: .4byte 0x3C6EF35F
_08D770F4: .4byte gUnk_0200DAF8

	thumb_func_start sub_08D770F8
sub_08D770F8: @ 0x08D770F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08D7712C @ =gUnk_020051A9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D7B670
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	ldr r4, _08D77130 @ =gUnk_03000730
	ldr r7, _08D77134 @ =gUnk_03001400
	ldr r3, _08D77138 @ =gUnk_03005000
	ldr r6, _08D7713C @ =gUnk_020058D9
	ldr r5, _08D77140 @ =gUnk_030013D0
	cmp r2, #0
	beq _08D77144
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77148
	.align 2, 0
_08D7712C: .4byte gUnk_020051A9
_08D77130: .4byte gUnk_03000730
_08D77134: .4byte gUnk_03001400
_08D77138: .4byte gUnk_03005000
_08D7713C: .4byte gUnk_020058D9
_08D77140: .4byte gUnk_030013D0
_08D77144:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77148:
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	str r1, [r4]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r7
	str r6, [r0]
	ldr r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D77170
sub_08D77170: @ 0x08D77170
	push {lr}
	ldr r3, _08D7718C @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77190
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77194
	.align 2, 0
_08D7718C: .4byte gUnk_03002560
_08D77190:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77194:
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08D771B4
	ldr r2, _08D771B8 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08D771BC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_08D7B78C
_08D771B4:
	pop {r0}
	bx r0
	.align 2, 0
_08D771B8: .4byte gUnk_03002620
_08D771BC: .4byte 0x0000FBFF

	thumb_func_start sub_08D771C0
sub_08D771C0: @ 0x08D771C0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08D771F0 @ =gUnk_02005241
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D771F4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D771FA
	.align 2, 0
_08D771F0: .4byte gUnk_02005241
_08D771F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D771FA:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D77208
sub_08D77208: @ 0x08D77208
	push {r4, r5, lr}
	ldr r5, _08D77224 @ =gUnk_03002560
	ldr r2, [r5]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77228
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7722C
	.align 2, 0
_08D77224: .4byte gUnk_03002560
_08D77228:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7722C:
	adds r4, r1, r0
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08D77248
	cmp r0, #0x37
	bne _08D7726C
	ldr r0, [r4]
	bl sub_08D77DA4
	b _08D7726C
_08D77248:
	ldr r1, [r4]
	ldr r2, _08D77274 @ =gUnk_0200D778
	ldrh r0, [r2, #0x10]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldr r1, [r4]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	ldr r1, [r4]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #0x1f]
	strb r3, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08D77278 @ =gUnk_020052B5
	str r0, [r1, #8]
_08D7726C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D77274: .4byte gUnk_0200D778
_08D77278: .4byte gUnk_020052B5

	thumb_func_start sub_08D7727C
sub_08D7727C: @ 0x08D7727C
	push {r4, lr}
	ldr r3, _08D77298 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D7729C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D772A0
	.align 2, 0
_08D77298: .4byte gUnk_03002560
_08D7729C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D772A0:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #4]
	ldr r2, [r4]
	cmp r0, #0x15
	bhi _08D772C4
	ldr r1, _08D772C0 @ =gUnk_0200D9C0
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _08D772D4
	.align 2, 0
_08D772C0: .4byte gUnk_0200D9C0
_08D772C4:
	adds r2, #0xdc
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl sub_08D7B78C
_08D772D4:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D772E0
sub_08D772E0: @ 0x08D772E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r0, _08D77324 @ =gUnk_0200552D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	adds r3, r5, #0
	adds r3, #0xdf
	cmp r1, #0
	beq _08D77328
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D7732E
	.align 2, 0
_08D77324: .4byte gUnk_0200552D
_08D77328:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D7732E:
	adds r4, r1, #0
	str r5, [r4, #0x54]
	ldrb r2, [r3]
	ldr r0, _08D77428 @ =gUnk_0200D778
	mov sb, r0
	ldrb r1, [r5, #0x1b]
	movs r7, #0x50
	adds r7, r7, r4
	mov r8, r7
	adds r3, r4, #0
	adds r3, #0x52
	lsls r0, r6, #1
	str r0, [sp, #0x18]
	lsls r7, r6, #3
	mov ip, r7
	adds r0, r4, #4
	mov sl, r0
	adds r7, r4, #0
	adds r7, #0x20
	str r7, [sp, #0x10]
	adds r0, #0x1f
	str r0, [sp, #0x14]
	lsls r6, r6, #2
	str r6, [sp, #0xc]
	ldr r6, [sp, #8]
	cmp r6, #0
	beq _08D7736A
	adds r0, r2, #5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08D7736A:
	mov r7, sb
	ldrh r0, [r7, #4]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r7, #6]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	mov sb, r0
	mov r0, sb
	orrs r0, r1
	strb r0, [r5, #0x1b]
	str r5, [r4]
	mov r1, r8
	strh r6, [r1]
	movs r1, #2
	strh r1, [r3]
	ldr r5, [sp, #0x18]
	mov r8, r5
	ldr r0, _08D7742C @ =gUnk_0200DAC8
	add r0, ip
	ldr r0, [r0]
	str r0, [r4, #0x48]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #2
	ldr r7, _08D7742C @ =gUnk_0200DAC8
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r4, #0x4c]
	ldrh r0, [r3]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r7, r2, #2
	cmp r5, #0
	beq _08D7743C
	str r6, [sp, #4]
	ldr r2, _08D77430 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl sub_08D7D89C
	ldr r0, _08D77434 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08D77438 @ =gUnk_0200D9D8
	adds r0, r7, r0
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	ldrb r0, [r4, #0x1f]
	mov r1, sb
	orrs r0, r1
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	movs r0, #7
	ldr r5, [sp, #0x14]
	strb r0, [r5]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08D7749C
	.align 2, 0
_08D77428: .4byte gUnk_0200D778
_08D7742C: .4byte gUnk_0200DAC8
_08D77430: .4byte 0x05000011
_08D77434: .4byte 0x06010000
_08D77438: .4byte gUnk_0200D9D8
_08D7743C:
	str r5, [sp, #4]
	ldr r2, _08D774E0 @ =0x05000011
	add r0, sp, #4
	mov r1, sl
	bl sub_08D7D89C
	ldr r0, _08D774E4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, _08D774E8 @ =gUnk_0200D9D8
	adds r0, r7, r0
	ldrh r1, [r0]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	ldrb r0, [r4, #0x1f]
	mov r6, sb
	orrs r0, r6
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	ldr r7, [sp, #0x10]
	strb r0, [r7]
	movs r0, #7
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D7749C:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08D774AA
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
_08D774AA:
	ldr r0, [r4, #0xc]
	ldr r1, _08D774EC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r1, _08D774F0 @ =gUnk_0200DAE8
	ldr r5, [sp, #0xc]
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x36]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D774E0: .4byte 0x05000011
_08D774E4: .4byte 0x06010000
_08D774E8: .4byte gUnk_0200D9D8
_08D774EC: .4byte 0xFFFFCFFF
_08D774F0: .4byte gUnk_0200DAE8

	thumb_func_start sub_08D774F4
sub_08D774F4: @ 0x08D774F4
	push {r4, lr}
	ldr r0, _08D77510 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77514
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77518
	.align 2, 0
_08D77510: .4byte gUnk_03002560
_08D77514:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77518:
	adds r4, r1, r0
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _08D77528
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_08D77528:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _08D77534
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_08D77534:
	adds r0, r4, #0
	bl sub_08D73BEC
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08D7755A
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08D7755A
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08D77560 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
_08D7755A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D77560: .4byte gUnk_03002560

	thumb_func_start nullsub_089
nullsub_089: @ 0x08D77564
	bx lr
	.align 2, 0

	thumb_func_start sub_08D77568
sub_08D77568: @ 0x08D77568
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_08D7756E:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_08D73A94
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08D77592
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_08D73A94
_08D77592:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08D775A4
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_08D73A94
_08D775A4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D7756E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D775B4
sub_08D775B4: @ 0x08D775B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	adds r0, #0xee
	ldrb r0, [r0]
	strb r0, [r1]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r4, _08D775FC @ =0x000002C6
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r2, _08D77600 @ =0x000003B2
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r6, #0
_08D775DE:
	movs r7, #0
	mov r0, sp
	ldrb r3, [r0]
	ldrb r4, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D77604
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r4, r0
	bgt _08D7760C
	b _08D77612
	.align 2, 0
_08D775FC: .4byte 0x000002C6
_08D77600: .4byte 0x000003B2
_08D77604:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r4, r0
	ble _08D77612
_08D7760C:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _08D77622
_08D77612:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D77628
	mov r0, sp
	ldrb r0, [r0, #2]
_08D77622:
	cmp r3, r0
	bgt _08D77630
	b _08D77636
_08D77628:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _08D77636
_08D77630:
	mov r0, sp
	ldrb r0, [r0]
	b _08D77672
_08D77636:
	mov r0, sp
	ldrb r3, [r0, #1]
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D7764E
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r3, r0
	bgt _08D77656
	b _08D7765C
_08D7764E:
	mov r0, sp
	ldrb r0, [r0, #3]
	cmp r3, r0
	ble _08D7765C
_08D77656:
	mov r0, sp
	ldrb r0, [r0, #1]
	b _08D77672
_08D7765C:
	mov r0, sp
	mov r1, sp
	ldrb r2, [r0, #2]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bls _08D7766E
	mov r0, sp
	ldrb r0, [r0, #2]
	b _08D77672
_08D7766E:
	mov r0, sp
	ldrb r0, [r0, #3]
_08D77672:
	mov ip, r0
	movs r3, #0
_08D77676:
	movs r0, #0xec
	muls r0, r3, r0
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp ip, r1
	bne _08D776A4
	adds r0, #0xf8
	movs r2, #0
	strb r6, [r0]
	adds r1, r6, r7
	movs r4, #0x81
	lsls r4, r4, #3
	adds r0, r5, r4
	adds r0, r0, r1
	strb r3, [r0]
	mov r1, sp
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08D776A4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08D77676
	adds r0, r6, r7
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08D775DE
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08D776C0
sub_08D776C0: @ 0x08D776C0
	push {lr}
	sub sp, #4
	ldr r0, _08D776EC @ =gUnk_02005739
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D776F0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D776F6
	.align 2, 0
_08D776EC: .4byte gUnk_02005739
_08D776F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D776F6:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D77700
sub_08D77700: @ 0x08D77700
	push {r4, lr}
	ldr r0, _08D7771C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77720
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77724
	.align 2, 0
_08D7771C: .4byte gUnk_03002560
_08D77720:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77724:
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _08D77740
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl sub_08D792D8
	ldr r0, _08D7774C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08D77750 @ =gUnk_0200578D
	str r0, [r1, #8]
_08D77740:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7774C: .4byte gUnk_03002560
_08D77750: .4byte gUnk_0200578D

	thumb_func_start sub_08D77754
sub_08D77754: @ 0x08D77754
	push {r4, r5, r6, lr}
	ldr r6, _08D77774 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D77778 @ =gUnk_03002610
	ldr r4, _08D7777C @ =gUnk_0200DC38
	ldr r5, _08D77780 @ =gUnk_0200DC47

	thumb_func_start sub_08D77768
sub_08D77768: @ 0x08D77768
	cmp r0, #0
	beq _08D77784
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77788
	.align 2, 0
_08D77774: .4byte gUnk_03002560
_08D77778: .4byte gUnk_03002610
_08D7777C: .4byte gUnk_0200DC38
_08D77780: .4byte gUnk_0200DC47
_08D77784:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77788:
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	strh r0, [r3, #6]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08D777E8
	movs r0, #8
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r6]
	bl sub_08D7B78C
_08D777E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D777F0
sub_08D777F0: @ 0x08D777F0
	push {lr}
	sub sp, #4
	ldr r0, _08D7781C @ =gUnk_02005869
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D77820
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D77826
	.align 2, 0
_08D7781C: .4byte gUnk_02005869
_08D77820:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D77826:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D77830
sub_08D77830: @ 0x08D77830
	push {r4, r5, r6, lr}
	ldr r6, _08D77850 @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08D77854 @ =gUnk_03002610
	ldr r4, _08D77858 @ =gUnk_0200DC56
	ldr r5, _08D7785C @ =gUnk_0200DC65
	cmp r0, #0
	beq _08D77860
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77864
	.align 2, 0
_08D77850: .4byte gUnk_03002560
_08D77854: .4byte gUnk_03002610
_08D77858: .4byte gUnk_0200DC56
_08D7785C: .4byte gUnk_0200DC65
_08D77860:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77864:
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #0
	strh r0, [r3, #8]
	ldrb r0, [r2]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0xa]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08D77898
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r6]
	bl sub_08D7B78C
_08D77898:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D778A0
sub_08D778A0: @ 0x08D778A0
	push {lr}
	ldr r0, _08D778B0 @ =gUnk_0200E9EC
	ldr r1, _08D778B4 @ =0x0600F000
	bl sub_08D7D8B0
	pop {r0}
	bx r0
	.align 2, 0
_08D778B0: .4byte gUnk_0200E9EC
_08D778B4: .4byte 0x0600F000

	thumb_func_start sub_08D778B8
sub_08D778B8: @ 0x08D778B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D778F0 @ =gUnk_02005A79
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D778F4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D778FA
	.align 2, 0
_08D778F0: .4byte gUnk_02005A79
_08D778F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D778FA:
	adds r4, r0, #0
	adds r0, #0x54
	movs r7, #0
	strh r7, [r0]
	ldr r0, _08D779B8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D779BC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	subs r0, #0xbb
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D779C8
	str r7, [sp, #4]
	ldr r2, _08D779C0 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D779C4 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D77A1E
	.align 2, 0
_08D779B8: .4byte 0xFFFF0000
_08D779BC: .4byte 0xFF00FFFF
_08D779C0: .4byte 0x05000011
_08D779C4: .4byte 0x06010000
_08D779C8:
	str r5, [sp, #4]
	ldr r2, _08D77A38 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77A3C @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D77A1E:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	movs r0, #2
	strh r0, [r4, #0x36]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D77A38: .4byte 0x05000011
_08D77A3C: .4byte 0x06010000

	thumb_func_start sub_08D77A40
sub_08D77A40: @ 0x08D77A40
	push {r4, lr}
	ldr r0, _08D77A5C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77A60
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77A64
	.align 2, 0
_08D77A5C: .4byte gUnk_03002560
_08D77A60:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77A64:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D73BEC
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08D77A86
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08D77A86:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D77AAC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08D77AA4
	subs r0, #1
	strh r0, [r1]
	b _08D77AAC
_08D77AA4:
	ldr r0, _08D77AB4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
_08D77AAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D77AB4: .4byte gUnk_03002560

	thumb_func_start sub_08D77AB8
sub_08D77AB8: @ 0x08D77AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D77AF0 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D77AF4
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08D77AFA
	.align 2, 0
_08D77AF0: .4byte gUnk_02001C69
_08D77AF4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08D77AFA:
	adds r4, r1, #0
	ldr r0, _08D77BB0 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D77BB4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
	ldr r0, [sp, #8]
	str r0, [r4]
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r4, #0x48]
	subs r0, #0xbb
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D77BC0
	str r7, [sp, #4]
	ldr r2, _08D77BB8 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77BBC @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D77C16
	.align 2, 0
_08D77BB0: .4byte 0xFFFF0000
_08D77BB4: .4byte 0xFF00FFFF
_08D77BB8: .4byte 0x05000011
_08D77BBC: .4byte 0x06010000
_08D77BC0:
	str r5, [sp, #4]
	ldr r2, _08D77C2C @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77C30 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D77C16:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D77C2C: .4byte 0x05000011
_08D77C30: .4byte 0x06010000

	thumb_func_start sub_08D77C34
sub_08D77C34: @ 0x08D77C34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08D77C68 @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08D77C6C
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08D77C72
	.align 2, 0
_08D77C68: .4byte gUnk_02001C69
_08D77C6C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
_08D77C72:
	ldr r0, _08D77D24 @ =0xFFFF0000
	ands r6, r0
	movs r0, #4
	orrs r6, r0
	ldr r0, _08D77D28 @ =0xFF00FFFF
	ands r6, r0
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r4
	mov sl, r0
	cmp r5, #0
	beq _08D77D34
	str r7, [sp, #4]
	ldr r2, _08D77D2C @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77D30 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08D77D8A
	.align 2, 0
_08D77D24: .4byte 0xFFFF0000
_08D77D28: .4byte 0xFF00FFFF
_08D77D2C: .4byte 0x05000011
_08D77D30: .4byte 0x06010000
_08D77D34:
	str r5, [sp, #4]
	ldr r2, _08D77D9C @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77DA0 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r6, [r4, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_08D77D8A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D77D9C: .4byte 0x05000011
_08D77DA0: .4byte 0x06010000

	thumb_func_start sub_08D77DA4
sub_08D77DA4: @ 0x08D77DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08D77DDC @ =gUnk_02005F55
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D77DE0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D77DE6
	.align 2, 0
_08D77DDC: .4byte gUnk_02005F55
_08D77DE0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08D77DE6:
	adds r5, r0, #0
	ldr r0, [sp, #8]
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, _08D77E9C @ =0xFFFF0000
	ands r7, r0
	ldr r0, _08D77EA0 @ =0xFF00FFFF
	ands r7, r0
	ldr r1, [sp, #8]
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	str r6, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r7, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08D77EAC
	str r6, [sp, #4]
	ldr r2, _08D77EA4 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77EA8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r7, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	b _08D77EFE
	.align 2, 0
_08D77E9C: .4byte 0xFFFF0000
_08D77EA0: .4byte 0xFF00FFFF
_08D77EA4: .4byte 0x05000011
_08D77EA8: .4byte 0x06010000
_08D77EAC:
	str r4, [sp, #4]
	ldr r2, _08D77F14 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D77F18 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r7, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D77EFE:
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D77F14: .4byte 0x05000011
_08D77F18: .4byte 0x06010000

	thumb_func_start sub_08D77F1C
sub_08D77F1C: @ 0x08D77F1C
	push {r4, r5, r6, lr}
	ldr r0, _08D77F38 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D77F3C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D77F40
	.align 2, 0
_08D77F38: .4byte gUnk_03002560
_08D77F3C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D77F40:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08D73BEC
	adds r3, r4, #0
	adds r3, #0x59
	movs r5, #0
	ldrsb r5, [r3, r5]
	cmp r5, #0
	bne _08D77F78
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08D77FC2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strb r5, [r2]
	b _08D77FC2
_08D77F78:
	cmp r5, #1
	bne _08D77FAA
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08D77FC2
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strb r6, [r2]
	strh r6, [r4, #0x10]
	strb r5, [r4, #0x1e]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	b _08D77FC2
_08D77FAA:
	cmp r5, #2
	bne _08D77FC2
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08D77FC2
	ldr r0, _08D77FC8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
_08D77FC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D77FC8: .4byte gUnk_03002560

	thumb_func_start sub_08D77FCC
sub_08D77FCC: @ 0x08D77FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	adds r4, r1, #0
	mov r8, r2
	ldr r0, _08D78008 @ =gUnk_020061B5
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08D7B670
	str r0, [sp, #0xc]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D7800C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D78010
	.align 2, 0
_08D78008: .4byte gUnk_020061B5
_08D7800C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D78010:
	adds r0, r1, r0
	adds r5, r0, #0
	ldr r0, _08D780C4 @ =0xFFFF0000
	ands r6, r0
	movs r0, #5
	orrs r6, r0
	ldr r0, _08D780C8 @ =0xFF00FFFF
	ands r6, r0
	ldr r1, [sp, #8]
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r4, [r5, #0x48]
	mov r2, r8
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r2, #0x20
	adds r2, r2, r5
	mov sb, r2
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	adds r2, r5, #0
	adds r2, #0x54
	str r2, [sp, #0x10]
	cmp r4, #0
	beq _08D780D4
	str r7, [sp, #4]
	ldr r2, _08D780CC @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D780D0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r4, r8
	lsrs r0, r4, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r2, #5
	mov r1, sl
	strb r2, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08D78126
	.align 2, 0
_08D780C4: .4byte 0xFFFF0000
_08D780C8: .4byte 0xFF00FFFF
_08D780CC: .4byte 0x05000011
_08D780D0: .4byte 0x06010000
_08D780D4:
	str r4, [sp, #4]
	ldr r2, _08D7816C @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D78170 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r2, sb
	strb r3, [r2]
	movs r1, #5
	mov r0, sl
	strb r1, [r0]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D78126:
	ldr r2, [sp, #8]
	ldr r0, [r2, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08D78174 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _08D78178 @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldr r4, [sp, #8]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	ldr r0, [sp, #0x10]
	strb r3, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D7816C: .4byte 0x05000011
_08D78170: .4byte 0x06010000
_08D78174: .4byte 0xFFFFCFFF
_08D78178: .4byte 0x0000F83F

	thumb_func_start sub_08D7817C
sub_08D7817C: @ 0x08D7817C
	push {lr}
	ldr r0, _08D78198 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D7819C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D781A0
	.align 2, 0
_08D78198: .4byte gUnk_03002560
_08D7819C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D781A0:
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _08D781B8
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08D781B8:
	adds r0, r1, #0
	bl sub_08D73BEC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D781C4
sub_08D781C4: @ 0x08D781C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _08D781FC @ =gUnk_02001C69
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r3, [r0, #6]
	cmp r1, #0
	beq _08D78200
	lsls r1, r3, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _08D78206
	.align 2, 0
_08D781FC: .4byte gUnk_02001C69
_08D78200:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
_08D78206:
	ldr r0, _08D782B0 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08D782B4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r6, r0
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r4, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r5, #4
	lsls r0, r6, #8
	mov r8, r0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	movs r0, #0x23
	adds r0, r0, r5
	mov sl, r0
	cmp r4, #0
	beq _08D782C0
	str r7, [sp, #4]
	ldr r2, _08D782B8 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D782BC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r4, #0x10
	mov r0, sb
	strb r4, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08D78312
	.align 2, 0
_08D782B0: .4byte 0xFFFF0000
_08D782B4: .4byte 0xFF00FFFF
_08D782B8: .4byte 0x05000011
_08D782BC: .4byte 0x06010000
_08D782C0:
	str r4, [sp, #4]
	ldr r2, _08D78324 @ =0x05000011
	add r0, sp, #4
	bl sub_08D7D89C
	ldr r0, _08D78328 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r6, [r5, #0x10]
	mov r1, r8
	lsrs r0, r1, #0x18
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	movs r3, #0x10
	mov r0, sb
	strb r3, [r0]
	movs r0, #5
	mov r1, sl
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_08D78312:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D78324: .4byte 0x05000011
_08D78328: .4byte 0x06010000

	thumb_func_start sub_08D7832C
sub_08D7832C: @ 0x08D7832C
	push {lr}
	sub sp, #4
	ldr r0, _08D78358 @ =gUnk_020063AD
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D7B670
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D7835C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D78362
	.align 2, 0
_08D78358: .4byte gUnk_020063AD
_08D7835C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D78362:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08D78374
sub_08D78374: @ 0x08D78374
	push {r4, r5, r6, lr}
	ldr r0, _08D78390 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D78394
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D78398
	.align 2, 0
_08D78390: .4byte gUnk_03002560
_08D78394:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D78398:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _08D7843C
	ldr r2, _08D783DC @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D783E0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D783E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _08D783E8 @ =gUnk_0200DC74
	adds r1, r0, r2
	ldrb r6, [r1]
	strb r6, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r1, r3, #3
	movs r0, #1
	ands r1, r0
	lsrs r2, r3, #2
	lsrs r5, r3, #5
	cmp r1, #0
	beq _08D783EC
	movs r0, #3
	ands r2, r0
	adds r0, r6, r2
	b _08D783F2
	.align 2, 0
_08D783DC: .4byte gUnk_03005868
_08D783E0: .4byte 0x00196225
_08D783E4: .4byte 0x3C6EF35F
_08D783E8: .4byte gUnk_0200DC74
_08D783EC:
	movs r0, #3
	ands r2, r0
	subs r0, r6, r2
_08D783F2:
	strb r0, [r4]
	movs r0, #1
	ands r5, r0
	lsrs r1, r3, #4
	ldrb r2, [r4, #1]
	ldrb r6, [r4]
	cmp r5, #0
	beq _08D7840A
	movs r0, #3
	ands r1, r0
	adds r0, r2, r1
	b _08D78410
_08D7840A:
	movs r0, #3
	ands r1, r0
	subs r0, r2, r1
_08D78410:
	strb r0, [r4, #1]
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	lsls r0, r6, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_08D781C4
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08D7843C
	ldr r0, _08D78438 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08D7B78C
	b _08D78442
	.align 2, 0
_08D78438: .4byte gUnk_03002560
_08D7843C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08D78442:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08D78448
sub_08D78448: @ 0x08D78448
	push {lr}
	sub sp, #4
	ldr r0, _08D78474 @ =gUnk_020064C9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08D7B670
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D78478
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D7847C
	.align 2, 0
_08D78474: .4byte gUnk_020064C9
_08D78478:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D7847C:
	adds r1, r1, r0
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D78490
sub_08D78490: @ 0x08D78490
	push {r4, lr}
	ldr r3, _08D784AC @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08D784B0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08D784B4
	.align 2, 0
_08D784AC: .4byte gUnk_03002560
_08D784B0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08D784B4:
	adds r4, r1, r0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D784C8
	ldr r0, [r3]
	bl sub_08D7B78C
	b _08D784F8
_08D784C8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D784F8
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08D784F8
	bl sub_08D7832C
	ldr r2, _08D78500 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08D78504 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08D78508 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_08D784F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D78500: .4byte gUnk_03005868
_08D78504: .4byte 0x00196225
_08D78508: .4byte 0x3C6EF35F

	thumb_func_start sub_08D7850C
sub_08D7850C: @ 0x08D7850C
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D78524
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D7852A
_08D78524:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D7852A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D78538
sub_08D78538: @ 0x08D78538
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D78550
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D78556
_08D78550:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D78556:
	ldrh r1, [r2]
	ldr r0, _08D78564 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08D78564: .4byte 0x0000FFFD

	thumb_func_start sub_08D78568
sub_08D78568: @ 0x08D78568
	push {lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08D78580
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08D78586
_08D78580:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08D78586:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

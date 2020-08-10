	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081234D4
sub_081234D4: @ 0x081234D4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r4, #0
	ldr r1, _081234F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _081234F4 @ =gUnk_020229E0
	b _0812350C
	.align 2, 0
_081234F0: .4byte gUnk_020229D4
_081234F4: .4byte gUnk_020229E0
_081234F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08123514
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0812350C:
	cmp r0, #0
	bne _081234F8
	orrs r2, r3
	str r2, [r1]
_08123514:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	strh r7, [r1, #6]
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x61
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0800A868
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #0x12
	orrs r1, r2
	str r1, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08123570
sub_08123570: @ 0x08123570
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _08123584 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08123588 @ =gUnk_020229E0
	b _081235A0
	.align 2, 0
_08123584: .4byte gUnk_020229D4
_08123588: .4byte gUnk_020229E0
_0812358C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _081235A8
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_081235A0:
	cmp r0, #0
	bne _0812358C
	orrs r2, r3
	str r2, [r1]
_081235A8:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x61
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	movs r0, #3
	strb r0, [r1, #0x10]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0800A868
	strh r4, [r0, #4]
	adds r1, r0, #0
	adds r1, #0x50
	strh r4, [r1]
	adds r1, #2
	strh r4, [r1]
	ldr r1, [r0, #8]
	movs r2, #0xf0
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	str r5, [r0, #0x6c]
	ldr r1, _08123620 @ =sub_081238FC
	str r1, [r0, #0x78]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08123620: .4byte sub_081238FC

	thumb_func_start sub_08123624
sub_08123624: @ 0x08123624
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0
	str r0, [sp]
	ldr r0, _081236DC @ =gUnk_02020EE0
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r1, r4, r1
	adds r0, #0xc
	adds r1, r1, r0
	ldr r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08123656
	b _0812376E
_08123656:
	orrs r2, r3
	str r2, [r1]
	cmp r4, #4
	bls _08123660
	b _0812376E
_08123660:
	ldr r4, _081236E0 @ =gRngVal
	ldr r0, [r4]
	ldr r5, _081236E4 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _081236E8 @ =0x3C6EF35F
	mov ip, r1
	adds r3, r0, r1
	str r3, [r4]
	lsrs r0, r3, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0812376E
	ldr r2, _081236EC @ =gUnk_08357F44
	adds r0, r3, #0
	muls r0, r5, r0
	ldr r1, _081236E8 @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r4]
	lsrs r0, r3, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r6, _081236F0 @ =gUnk_020229D4
	ldr r2, _081236F4 @ =gUnk_020229E0
	mov sb, r2
	movs r0, #0x56
	adds r0, r0, r7
	mov sl, r0
	mov r1, r8
	cmp r1, #0x5e
	bne _081236D6
	adds r0, r3, #0
	muls r0, r5, r0
	add r0, ip
	str r0, [r4]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _081236F8 @ =0x00002AAA
	cmp r2, r0
	blt _081236D0
	adds r3, r0, #0
_081236BE:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _081236D0
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _081236BE
_081236D0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_081236D6:
	movs r3, #0
	movs r2, #1
	b _0812370A
	.align 2, 0
_081236DC: .4byte gUnk_02020EE0
_081236E0: .4byte gRngVal
_081236E4: .4byte 0x00196225
_081236E8: .4byte 0x3C6EF35F
_081236EC: .4byte gUnk_08357F44
_081236F0: .4byte gUnk_020229D4
_081236F4: .4byte gUnk_020229E0
_081236F8: .4byte 0x00002AAA
_081236FC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _08123718
	movs r2, #1
	lsls r2, r3
_0812370A:
	ldr r1, [r6]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _081236FC
	orrs r1, r2
	str r1, [r6]
_08123718:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r4, r8
	strb r4, [r1, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #4
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
	mov r2, sl
	ldrb r0, [r2]
	bl sub_0800A868
_0812376E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08123780
sub_08123780: @ 0x08123780
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, _08123798 @ =sub_08122ED4
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_08123798: .4byte sub_08122ED4

	thumb_func_start sub_0812379C
sub_0812379C: @ 0x0812379C
	push {r4, lr}
	ldr r4, _081237C4 @ =gUnk_08357F24
	ldr r3, _081237C8 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _081237CC @ =0x00196225
	muls r1, r2, r1
	ldr r2, _081237D0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x1f
	ands r1, r2
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_081232AC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081237C4: .4byte gUnk_08357F24
_081237C8: .4byte gRngVal
_081237CC: .4byte 0x00196225
_081237D0: .4byte 0x3C6EF35F

	thumb_func_start sub_081237D4
sub_081237D4: @ 0x081237D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x6c]
	adds r0, r2, #0
	adds r0, #0xe1
	movs r5, #0
	strb r5, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	movs r0, #0x64
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xe2
	movs r1, #0xfa
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, r2, #0
	bl sub_0808324C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x80
	strh r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08123814
sub_08123814: @ 0x08123814
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r0, _08123848 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _0812384C @ =0xFFFFF7FF
	ands r1, r0
	ldr r0, _08123850 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r2, #8]
	ldr r0, _08123854 @ =sub_0812385C
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	cmp r0, #4
	bne _08123842
	ldr r0, _08123858 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r2, #8]
_08123842:
	pop {r0}
	bx r0
	.align 2, 0
_08123848: .4byte 0xFFFFFBFF
_0812384C: .4byte 0xFFFFF7FF
_08123850: .4byte 0xFFFFFDFF
_08123854: .4byte sub_0812385C
_08123858: .4byte 0xFFFFFEFF

	thumb_func_start sub_0812385C
sub_0812385C: @ 0x0812385C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08123872
	ldr r0, [r4, #8]
	ldr r1, _081238AC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_08123872:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081238B4
	ldr r5, [r4, #0x6c]
	ldrb r0, [r5]
	cmp r0, #0
	bne _081238B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081238B4
	adds r0, r5, #0
	adds r0, #0x56
	ldr r1, _081238B0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _081238C8
	adds r0, r4, #0
	bl sub_08122F6C
	b _081238C8
	.align 2, 0
_081238AC: .4byte 0xFFFFFEFF
_081238B0: .4byte gUnk_0203AD30
_081238B4:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _081238C8
	adds r0, r4, #0
	bl sub_08123780
_081238C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081238D0
sub_081238D0: @ 0x081238D0
	movs r1, #5
	strh r1, [r0, #4]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _081238F8 @ =sub_08122CEC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_081238F8: .4byte sub_08122CEC

	thumb_func_start sub_081238FC
sub_081238FC: @ 0x081238FC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x6c]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0812391C
	adds r0, r1, #0
	adds r0, #0x56
	ldr r1, _08123920 @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0812391C
	adds r0, r2, #0
	bl sub_08122F6C
_0812391C:
	pop {r0}
	bx r0
	.align 2, 0
_08123920: .4byte gUnk_0203AD30

	thumb_func_start sub_08123924
sub_08123924: @ 0x08123924
	movs r1, #0x20
	strh r1, [r0, #4]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _0812394C @ =sub_08122E08
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0812394C: .4byte sub_08122E08

	thumb_func_start sub_08123950
sub_08123950: @ 0x08123950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r1, _081239D4 @ =gUnk_03002E60
	ldr r0, _081239D8 @ =gUnk_082D7850
	str r0, [r1]
	ldr r1, _081239DC @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _081239E0 @ =gBgCntRegs
	movs r2, #0
	movs r3, #0
	ldr r0, _081239E4 @ =0x00001201
	strh r0, [r1]
	ldr r0, _081239E8 @ =0x00001605
	strh r0, [r1, #2]
	str r3, [sp, #4]
	ldr r1, _081239EC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _081239F0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _081239F4 @ =gUnk_030060A0
	strb r2, [r0]
	ldr r1, _081239F8 @ =gUnk_03002E80
	strb r2, [r1]
	strb r2, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	ldr r0, _081239FC @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	ldr r0, _08123A00 @ =sub_08123F18
	movs r1, #0xf8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	str r3, [sp]
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08123A04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08123A0C
	.align 2, 0
_081239D4: .4byte gUnk_03002E60
_081239D8: .4byte gUnk_082D7850
_081239DC: .4byte gDispCnt
_081239E0: .4byte gBgCntRegs
_081239E4: .4byte 0x00001201
_081239E8: .4byte 0x00001605
_081239EC: .4byte 0x040000D4
_081239F0: .4byte 0x85000010
_081239F4: .4byte gUnk_030060A0
_081239F8: .4byte gUnk_03002E80
_081239FC: .4byte gBgScrollRegs
_08123A00: .4byte sub_08123F18
_08123A04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08123A0C:
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r7, #0
	ldr r2, _08123E04 @ =0x01000020
	bl CpuSet
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	movs r2, #0
	strh r2, [r7, #0xa]
	ldr r0, _08123E08 @ =0x06009000
	str r0, [r7, #0xc]
	strh r2, [r7, #0x18]
	strh r2, [r7, #0x1a]
	movs r3, #2
	strh r3, [r7, #0x1c]
	strh r2, [r7, #0x1e]
	strh r2, [r7, #0x20]
	strh r2, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r1, #0x14
	strh r1, [r7, #0x28]
	ldr r2, _08123E0C @ =0x00007FFF
	strh r2, [r7, #0x34]
	adds r3, r2, #0
	strh r3, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	strh r2, [r7, #0x2e]
	adds r0, r7, #0
	bl sub_08153060
	mov r0, sp
	adds r0, #0xa
	movs r3, #0
	strh r3, [r0]
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #0x10]
	ldr r2, _08123E04 @ =0x01000020
	bl CpuSet
	ldr r0, _08123E10 @ =0x06004000
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x4a
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08123E14 @ =0x0600B000
	str r0, [r7, #0x4c]
	adds r0, r7, #0
	adds r0, #0x58
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r3, #3
	strh r3, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r1, #0x1e
	strh r1, [r0]
	adds r0, #2
	movs r2, #0x14
	strh r2, [r0]
	adds r0, #0xc
	ldr r3, _08123E0C @ =0x00007FFF
	strh r3, [r0]
	adds r0, #2
	adds r1, r3, #0
	strh r1, [r0]
	subs r0, #0xc
	movs r2, #0
	strb r2, [r0]
	adds r0, #4
	movs r3, #1
	strh r3, [r0]
	ldr r0, [sp, #0x10]
	bl sub_08153060
	add r0, sp, #0xc
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08123E18 @ =0x06005000
	ldr r2, _08123E1C @ =0x01000010
	bl CpuSet
	adds r2, r7, #0
	adds r2, #0xb0
	str r2, [sp, #0x14]
	movs r3, #0x1f
	strh r3, [r2]
	movs r0, #0xb2
	adds r0, r0, r7
	mov sl, r0
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xb4
	movs r2, #2
	strh r2, [r0]
	subs r0, #6
	movs r3, #0
	strh r3, [r0]
	subs r0, #2
	strh r2, [r0]
	movs r0, #0x20
	bl sub_081570B0
	adds r1, r7, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	ldr r2, [sp, #0x14]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	adds r0, r7, #0
	adds r0, #0xe4
	str r0, [sp, #0x18]
	movs r1, #0x1f
	strh r1, [r0]
	movs r2, #0xe6
	adds r2, r2, r7
	mov sl, r2
	movs r0, #7
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xe8
	movs r3, #3
	strh r3, [r0]
	subs r0, #6
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	movs r2, #4
	strh r2, [r0]
	movs r0, #0x20
	bl sub_081570B0
	adds r1, r7, #0
	adds r1, #0xb8
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	ldr r3, [sp, #0x18]
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x1c]
	movs r2, #0x1f
	strh r2, [r1]
	movs r3, #0x8d
	lsls r3, r3, #1
	adds r3, r3, r7
	mov sb, r3
	movs r0, #0xa
	strh r0, [r3]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #2
	strh r2, [r0]
	movs r3, #0x8b
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #3
	strh r3, [r0]
	movs r0, #0x20
	bl sub_081570B0
	adds r1, r7, #0
	adds r1, #0xec
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	ldr r2, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0x1f
	strh r1, [r6]
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x20]
	movs r0, #0xc
	strh r0, [r2]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #1
	strh r1, [r0]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #0
	strh r3, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #1
	strh r2, [r0]
	movs r0, #0x20
	bl sub_081570B0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	movs r2, #1
	strh r2, [r1, #0xc]
	movs r3, #0
	strb r3, [r1, #0x1a]
	movs r0, #0
	strh r0, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r3, [sp, #0x20]
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r2, #0x1f
	strh r2, [r5]
	movs r3, #0xc1
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x24]
	movs r0, #0xd
	strh r0, [r3]
	adds r1, #4
	adds r0, r7, r1
	movs r2, #3
	strh r2, [r0]
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #2
	strh r3, [r0]
	movs r0, #0x20
	bl sub_081570B0
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r2, [sp, #0x24]
	ldrh r0, [r2]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	movs r0, #0xda
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x28]
	movs r1, #0x1f
	strh r1, [r0]
	movs r2, #0xdb
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	movs r3, #0
	strh r3, [r2]
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #5
	strh r2, [r0]
	movs r3, #0xd9
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #1
	strh r3, [r0]
	movs r0, #0x20
	bl sub_081570B0
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	ldr r3, [sp, #0x28]
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #3
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1, #8]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r4, r7, r1
	movs r2, #0x1f
	strh r2, [r4]
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x2c]
	movs r0, #0x10
	strh r0, [r3]
	adds r1, #4
	adds r0, r7, r1
	movs r2, #4
	strh r2, [r0]
	movs r3, #0xf3
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r3, #3
	strh r3, [r0]
	movs r0, #0x20
	bl sub_081570B0
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #3
	strh r3, [r1, #0x14]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	subs r0, #4
	strh r0, [r1, #0x10]
	ldr r2, [sp, #0x2c]
	ldrh r0, [r2]
	lsls r0, r0, #3
	b _08123E20
	.align 2, 0
_08123E04: .4byte 0x01000020
_08123E08: .4byte 0x06009000
_08123E0C: .4byte 0x00007FFF
_08123E10: .4byte 0x06004000
_08123E14: .4byte 0x0600B000
_08123E18: .4byte 0x06005000
_08123E1C: .4byte 0x01000010
_08123E20:
	strh r0, [r1, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	str r3, [r1, #8]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08123E38
sub_08123E38: @ 0x08123E38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08123E98
	ldrh r0, [r4, #0x2a]
	ldrh r2, [r4, #0x28]
	cmp r0, r2
	blo _08123E92
	ldr r7, _08123EA0 @ =0x06009000
	movs r5, #0
	ldrh r0, [r4, #0x30]
	cmp r5, r0
	bhs _08123E82
	mov r6, sp
_08123E5A:
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r5
	lsls r1, r1, #6
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r6]
	adds r1, r7, r1
	mov r0, sp
	ldr r2, _08123EA4 @ =0x01000001
	bl CpuSet
	adds r5, #1
	ldrh r0, [r4, #0x30]
	cmp r5, r0
	blo _08123E5A
_08123E82:
	ldrh r0, [r4, #0x2c]
	subs r0, #1
	movs r1, #0
	strh r0, [r4, #0x2c]
	strh r1, [r4, #0x2a]
	ldrh r0, [r4, #0x10]
	subs r0, #8
	strh r0, [r4, #0x10]
_08123E92:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_08123E98:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08123EA0: .4byte 0x06009000
_08123EA4: .4byte 0x01000001

	thumb_func_start sub_08123EA8
sub_08123EA8: @ 0x08123EA8
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r1, _08123F08 @ =gUnk_08357F54
	add r0, sp, #4
	movs r2, #8
	bl memcpy
	add r5, sp, #0xc
	adds r1, r5, #0
	ldr r0, _08123F0C @ =gUnk_08357F5C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r4, sp, #0x1c
	adds r1, r4, #0
	ldr r0, _08123F10 @ =gUnk_08357F6C
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	movs r0, #0
	bl sub_0803D1A4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08123EFE
	movs r0, #0
	bl sub_0803D208
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_080332BC
	ldr r0, _08123F14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08123EFE:
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08123F08: .4byte gUnk_08357F54
_08123F0C: .4byte gUnk_08357F5C
_08123F10: .4byte gUnk_08357F6C
_08123F14: .4byte gCurTask

	thumb_func_start sub_08123F18
sub_08123F18: @ 0x08123F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, _08123F40 @ =gUnk_08357F8C
	mov r0, sp
	movs r2, #0xe
	bl memcpy
	ldr r0, _08123F44 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08123F48
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08123F50
	.align 2, 0
_08123F40: .4byte gUnk_08357F8C
_08123F44: .4byte gCurTask
_08123F48:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08123F50:
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x80
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add r7, sp, #0x10
	cmp r0, #0x78
	bls _08123F82
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0x84
_08123F68:
	adds r0, r4, #0
	bl sub_08123E38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r4, #0x34
	adds r5, #1
	cmp r5, #6
	bls _08123F68
_08123F82:
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r4]
	cmp r0, #0xf0
	bls _08123FAA
	ldr r0, _08123FC0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08123FA6
	movs r0, #0
	bl sub_0803C95C
	ldr r0, _08123FC4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08123FC8 @ =sub_08123EA8
	str r0, [r1, #8]
_08123FA6:
	movs r0, #0xfa
	str r0, [r4]
_08123FAA:
	movs r0, #0
	strh r0, [r7]
	ldr r1, _08123FCC @ =0x06005000
	ldr r2, _08123FD0 @ =0x01000010
	adds r0, r7, #0
	bl CpuSet
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08123FC0: .4byte gPressedKeys
_08123FC4: .4byte gCurTask
_08123FC8: .4byte sub_08123EA8
_08123FCC: .4byte 0x06005000
_08123FD0: .4byte 0x01000010

	thumb_func_start sub_08123FD4
sub_08123FD4: @ 0x08123FD4
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	movs r4, #0
	add r5, sp, #0xc
	add r6, sp, #0x1c
_08123FDE:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	lsls r2, r4, #2
	adds r2, r5, r2
	lsls r3, r4, #3
	adds r3, r6, r3
	adds r0, r4, #0
	bl sub_08002C98
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08123FDE
	ldr r1, _08124030 @ =gUnk_0203AD1C
	ldr r0, _08124034 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	movs r2, #0
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	ldr r0, _08124038 @ =gUnk_0203AD10
	str r2, [r0]
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_080332BC
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08124030: .4byte gUnk_0203AD1C
_08124034: .4byte gUnk_0203ADE0
_08124038: .4byte gUnk_0203AD10

	thumb_func_start sub_0812403C
sub_0812403C: @ 0x0812403C
	push {lr}
	adds r3, r0, #0
	ldrh r2, [r3, #0xe]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _08124050
	movs r0, #0
	strh r0, [r3, #8]
	b _08124096
_08124050:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0812405E
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	b _08124098
_0812405E:
	ldr r0, _08124084 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0812408C
	ldr r2, _08124088 @ =gUnk_020382D0
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #8]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	b _08124094
	.align 2, 0
_08124084: .4byte gUnk_0203AD10
_08124088: .4byte gUnk_020382D0
_0812408C:
	ldr r0, _0812409C @ =gPressedKeys
	ldrh r0, [r0]
	strh r0, [r3, #8]
	ldr r0, _081240A0 @ =gInput
_08124094:
	ldrh r0, [r0]
_08124096:
	strh r0, [r3, #0xa]
_08124098:
	pop {r0}
	bx r0
	.align 2, 0
_0812409C: .4byte gPressedKeys
_081240A0: .4byte gInput

	thumb_func_start sub_081240A4
sub_081240A4: @ 0x081240A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	movs r4, #0
	str r4, [sp]
	lsls r6, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov sl, r1
	add r6, sl
	ldr r2, _08124150 @ =0x05000800
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r2, #0
	strh r4, [r7, #0xa]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	ldr r0, _08124154 @ =0x00007FFF
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x2a
	strb r2, [r0]
	str r6, [r7, #4]
	movs r1, #3
	mov r0, r8
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r7, #0x2e]
	ldr r0, _08124158 @ =gUnk_082D7850
	lsls r5, r5, #2
	adds r5, r5, r0
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _08124128
	movs r0, #0x10
	orrs r1, r0
	strh r1, [r7, #0x2e]
_08124128:
	mov r1, sb
	lsls r0, r1, #0xb
	add r0, sl
	str r0, [r7, #0xc]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	adds r0, r7, #0
	bl sub_08153060
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08124150: .4byte 0x05000800
_08124154: .4byte 0x00007FFF
_08124158: .4byte gUnk_082D7850

	thumb_func_start sub_0812415C
sub_0812415C: @ 0x0812415C
	push {lr}
	sub sp, #0x10
	movs r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _08124230 @ =0x0600B800
	ldr r2, _08124234 @ =0x05000200
	bl CpuSet
	mov r1, sp
	ldr r0, _08124238 @ =0x0000100A
	strh r0, [r1]
	adds r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	strh r0, [r1, #8]
	ldr r1, _0812423C @ =0x0600BBEA
	mov r0, sp
	movs r2, #5
	bl CpuSet
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #1
	strh r0, [r1]
	adds r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	strh r0, [r1, #8]
	ldr r1, _08124240 @ =0x0600BC2A
	mov r0, sp
	movs r2, #5
	bl CpuSet
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #1
	strh r0, [r1]
	adds r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	strh r0, [r1, #8]
	ldr r1, _08124244 @ =0x0600BC6A
	mov r0, sp
	movs r2, #5
	bl CpuSet
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #1
	strh r0, [r1]
	adds r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #2
	strh r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	strh r0, [r1, #8]
	ldr r1, _08124248 @ =0x0600BCAA
	mov r0, sp
	movs r2, #5
	bl CpuSet
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08124230: .4byte 0x0600B800
_08124234: .4byte 0x05000200
_08124238: .4byte 0x0000100A
_0812423C: .4byte 0x0600BBEA
_08124240: .4byte 0x0600BC2A
_08124244: .4byte 0x0600BC6A
_08124248: .4byte 0x0600BCAA

	thumb_func_start sub_0812424C
sub_0812424C: @ 0x0812424C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08124280 @ =sub_08124BE0
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r2, #0xf0
	lsls r2, r2, #4
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldr r2, _08124284 @ =gUnk_0203ACC0
	str r5, [r2]
	str r4, [r2, #4]
	movs r0, #0
	strh r4, [r2, #8]
	strh r4, [r2, #0xa]
	strb r0, [r2, #0xc]
	ldr r0, _08124288 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0812428C
	strh r4, [r2, #0xe]
	b _08124290
	.align 2, 0
_08124280: .4byte sub_08124BE0
_08124284: .4byte gUnk_0203ACC0
_08124288: .4byte gUnk_0203AD30
_0812428C:
	movs r0, #1
	strh r0, [r2, #0xe]
_08124290:
	ldr r0, _081242CC @ =gUnk_0203AD3C
	ldrb r1, [r2, #0xc]
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	bne _081242A4
	ldrh r1, [r2, #0xe]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xe]
_081242A4:
	movs r3, #0
	movs r0, #1
	movs r4, #1
	strh r4, [r2, #0x10]
	movs r1, #0x1e
	strb r1, [r2, #0x12]
	ldr r2, _081242D0 @ =gUnk_0203ACD4
	str r5, [r2]
	str r3, [r2, #4]
	strh r3, [r2, #8]
	strh r3, [r2, #0xa]
	strb r0, [r2, #0xc]
	ldr r0, _081242D4 @ =gUnk_0203AD30
	adds r6, r0, #0
	ldrb r1, [r6]
	cmp r4, r1
	bhs _081242D8
	strh r3, [r2, #0xe]
	b _081242DA
	.align 2, 0
_081242CC: .4byte gUnk_0203AD3C
_081242D0: .4byte gUnk_0203ACD4
_081242D4: .4byte gUnk_0203AD30
_081242D8:
	strh r4, [r2, #0xe]
_081242DA:
	ldrb r0, [r2, #0xc]
	ldrb r4, [r7]
	cmp r0, r4
	bne _081242EA
	ldrh r1, [r2, #0xe]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xe]
_081242EA:
	movs r1, #0
	movs r3, #1
	strh r3, [r2, #0x10]
	movs r0, #0x1e
	strb r0, [r2, #0x12]
	ldr r2, _0812430C @ =gUnk_0203ACE8
	movs r0, #2
	str r5, [r2]
	str r1, [r2, #4]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	strb r0, [r2, #0xc]
	ldrb r4, [r6]
	cmp r0, r4
	bhs _08124310
	strh r1, [r2, #0xe]
	b _08124312
	.align 2, 0
_0812430C: .4byte gUnk_0203ACE8
_08124310:
	strh r3, [r2, #0xe]
_08124312:
	ldrb r0, [r2, #0xc]
	ldrb r1, [r7]
	cmp r0, r1
	bne _08124322
	ldrh r1, [r2, #0xe]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xe]
_08124322:
	movs r1, #0
	movs r3, #1
	strh r3, [r2, #0x10]
	movs r0, #0x1e
	strb r0, [r2, #0x12]
	ldr r2, _08124344 @ =gUnk_0203ACFC
	movs r0, #3
	str r5, [r2]
	str r1, [r2, #4]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	strb r0, [r2, #0xc]
	ldrb r6, [r6]
	cmp r0, r6
	bhs _08124348
	strh r1, [r2, #0xe]
	b _0812434A
	.align 2, 0
_08124344: .4byte gUnk_0203ACFC
_08124348:
	strh r3, [r2, #0xe]
_0812434A:
	ldrb r0, [r2, #0xc]
	ldrb r7, [r7]
	cmp r0, r7
	bne _0812435A
	ldrh r1, [r2, #0xe]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xe]
_0812435A:
	movs r0, #1
	strh r0, [r2, #0x10]
	movs r0, #0x1e
	strb r0, [r2, #0x12]
	movs r5, #0
	movs r4, #0
	movs r7, #1
	ldr r6, _081243A4 @ =gUnk_0203ACC0
_0812436A:
	ldrh r1, [r6, #0xe]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08124380
	adds r0, r4, #0
	bl sub_08128694
	adds r1, r7, #0
	lsls r1, r0
	orrs r5, r1
_08124380:
	adds r6, #0x14
	adds r4, #1
	cmp r4, #3
	ble _0812436A
	movs r0, #9
	ands r0, r5
	cmp r0, #0
	beq _081243A8
	ldr r1, _081243A4 @ =gUnk_0203ACC0
	movs r2, #1
	adds r0, r1, #0
	adds r0, #0x3c
_08124398:
	strb r2, [r0, #0xd]
	subs r0, #0x14
	cmp r0, r1
	bge _08124398
	b _081243EC
	.align 2, 0
_081243A4: .4byte gUnk_0203ACC0
_081243A8:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _081243EC
	movs r0, #0
	bl sub_08019EEC
	cmp r0, #0
	bne _081243D0
	ldr r1, _081243CC @ =gUnk_0203ACC0
	movs r2, #1
	adds r0, r1, #0
	adds r0, #0x3c
_081243C2:
	strb r2, [r0, #0xd]
	subs r0, #0x14
	cmp r0, r1
	bge _081243C2
	b _081243EC
	.align 2, 0
_081243CC: .4byte gUnk_0203ACC0
_081243D0:
	ldr r0, _0812440C @ =gUnk_0203ACC0
	movs r3, #1
	adds r1, r0, #0
	adds r1, #0xd
	movs r2, #3
_081243DA:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _081243E4
	strb r3, [r1]
_081243E4:
	adds r1, #0x14
	subs r2, #1
	cmp r2, #0
	bge _081243DA
_081243EC:
	ldr r2, _0812440C @ =gUnk_0203ACC0
	ldr r0, _08124410 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _08124414
	bl sub_081278D4
	b _08124424
	.align 2, 0
_0812440C: .4byte gUnk_0203ACC0
_08124410: .4byte gUnk_0203AD3C
_08124414:
	cmp r0, #2
	bne _08124420
	movs r0, #0
	bl sub_08125A4C
	b _08124424
_08124420:
	bl sub_08124430
_08124424:
	bl sub_08124EA0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

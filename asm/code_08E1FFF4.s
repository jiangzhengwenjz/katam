	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E1FFF4
sub_08E1FFF4: @ 0x08E1FFF4
	push {lr}
	ldr r1, _08E20008 @ =gUnk_03002604
	ldr r0, _08E2000C @ =gUnk_0201298C
	str r0, [r1]
	bl sub_08E20010
	bl sub_08E21248
	pop {r0}
	bx r0
	.align 2, 0
_08E20008: .4byte gUnk_03002604
_08E2000C: .4byte gUnk_0201298C

	thumb_func_start sub_08E20010
sub_08E20010: @ 0x08E20010
	push {r4, lr}
	sub sp, #4
	ldr r0, _08E2003C @ =gUnk_03000720
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08E20040 @ =gUnk_03000470
	ldr r2, _08E20044 @ =0x01000158
	bl sub_08E2C7F0
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08E20048 @ =gUnk_03000440
	ldr r2, _08E2004C @ =0x01000016
	bl sub_08E2C7F0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2003C: .4byte gUnk_03000720
_08E20040: .4byte gUnk_03000470
_08E20044: .4byte 0x01000158
_08E20048: .4byte gUnk_03000440
_08E2004C: .4byte 0x01000016

	thumb_func_start sub_08E20050
sub_08E20050: @ 0x08E20050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _08E200B4 @ =gUnk_03001420
	ldr r2, _08E200B8 @ =0x05000014
	add r0, sp, #4
	bl sub_08E2C7F0
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _08E200BC @ =gUnk_03002640
	ldr r2, _08E200C0 @ =0x05000005
	bl sub_08E2C7F0
	add r0, sp, #0xc
	strh r5, [r0]
	ldr r4, _08E200C4 @ =gUnk_03000440
	ldr r2, _08E200C8 @ =0x01000016
	adds r1, r4, #0
	bl sub_08E2C7F0
	strh r5, [r4, #4]
	bl sub_08E2BE44
	ldr r0, _08E200CC @ =gUnk_02000A15
	str r5, [sp]
	movs r1, #0x20
	movs r2, #1
	movs r3, #0
	bl sub_08E2A5C4
	str r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	mov r3, sp
	adds r3, #0xe
	cmp r1, #0
	beq _08E200D0
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E200D6
	.align 2, 0
_08E200B4: .4byte gUnk_03001420
_08E200B8: .4byte 0x05000014
_08E200BC: .4byte gUnk_03002640
_08E200C0: .4byte 0x05000005
_08E200C4: .4byte gUnk_03000440
_08E200C8: .4byte 0x01000016
_08E200CC: .4byte gUnk_02000A15
_08E200D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E200D6:
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E20100 @ =0x01000010
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E20104 @ =gUnk_02000C01
	str r0, [r4]
	strb r7, [r4, #0x1c]
	cmp r6, #0
	beq _08E200F8
	adds r1, r4, #4
	adds r0, r6, #0
	movs r2, #4
	bl sub_08E2C7F0
_08E200F8:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E20100: .4byte 0x01000010
_08E20104: .4byte gUnk_02000C01

	thumb_func_start sub_08E20108
sub_08E20108: @ 0x08E20108
	push {r4, lr}
	ldr r4, _08E2011C @ =gUnk_03000440
	ldr r0, [r4]
	bl sub_08E2A6E0
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2011C: .4byte gUnk_03000440

	thumb_func_start sub_08E20120
sub_08E20120: @ 0x08E20120
	ldr r2, _08E2012C @ =gUnk_03000440
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08E2012C: .4byte gUnk_03000440

	thumb_func_start sub_08E20130
sub_08E20130: @ 0x08E20130
	ldr r0, _08E20138 @ =gUnk_03000440
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08E20138: .4byte gUnk_03000440

	thumb_func_start sub_08E2013C
sub_08E2013C: @ 0x08E2013C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08E2017C @ =gUnk_03001420
	ldr r2, _08E20180 @ =0x05000014
	mov r0, sp
	bl sub_08E2C7F0
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08E20184 @ =gUnk_03002640
	ldr r2, _08E20188 @ =0x05000005
	bl sub_08E2C7F0
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08E2018C @ =gUnk_03000470
	ldr r2, _08E20190 @ =0x01000158
	adds r1, r4, #0
	bl sub_08E2C7F0
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2017C: .4byte gUnk_03001420
_08E20180: .4byte 0x05000014
_08E20184: .4byte gUnk_03002640
_08E20188: .4byte 0x05000005
_08E2018C: .4byte gUnk_03000470
_08E20190: .4byte 0x01000158

	thumb_func_start sub_08E20194
sub_08E20194: @ 0x08E20194
	ldr r1, _08E2019C @ =gUnk_03000470
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08E2019C: .4byte gUnk_03000470

	thumb_func_start sub_08E201A0
sub_08E201A0: @ 0x08E201A0
	ldr r2, _08E201AC @ =gUnk_03000470
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08E201AC: .4byte gUnk_03000470

	thumb_func_start sub_08E201B0
sub_08E201B0: @ 0x08E201B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08E2023C @ =gUnk_03000470
	ldr r0, [r5]
	subs r0, #5
	mov ip, r0
	movs r4, #0
	ldr r0, _08E20240 @ =gUnk_0300041C
	mov r8, r0
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08E20266
_08E201CA:
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
	beq _08E20224
_08E201EA:
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
	beq _08E20214
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	adds r0, r5, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E201EA
_08E20214:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08E20248
_08E20224:
	ldrh r1, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, _08E20244 @ =gUnk_03000720
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08E20270
	.align 2, 0
_08E2023C: .4byte gUnk_03000470
_08E20240: .4byte gUnk_0300041C
_08E20244: .4byte gUnk_03000720
_08E20248:
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
	blo _08E201CA
_08E20266:
	ldrh r1, [r5, #4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #1
_08E20270:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2027C
sub_08E2027C: @ 0x08E2027C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08E20290 @ =gUnk_03000470
	ldr r1, _08E20294 @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08E20290: .4byte gUnk_03000470
_08E20294: .4byte 0x000002AD

	thumb_func_start sub_08E20298
sub_08E20298: @ 0x08E20298
	push {r4, r5, r6, r7, lr}
	ldr r7, _08E203B8 @ =gUnk_03000470
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E202A8
	b _08E203B2
_08E202A8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E202B2
	b _08E203B2
_08E202B2:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	ldr r0, [r7]
	str r0, [r4]
	ldr r0, _08E203BC @ =gUnk_03001E20
	ldrh r1, [r0]
	ldr r0, _08E203C0 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #4]
	ldr r6, _08E203C4 @ =gUnk_03002640
	movs r0, #0x20
	strb r0, [r6]
	ldrb r0, [r7, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
_08E202DE:
	lsls r1, r5, #1
	adds r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08E202DE
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
_08E203B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E203B8: .4byte gUnk_03000470
_08E203BC: .4byte gUnk_03001E20
_08E203C0: .4byte 0x000003FF
_08E203C4: .4byte gUnk_03002640

	thumb_func_start sub_08E203C8
sub_08E203C8: @ 0x08E203C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E20450 @ =gUnk_03000470
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E203E4
	b _08E2082A
_08E203E4:
	movs r1, #0
	mov r8, r1
	ldr r2, _08E20454 @ =gUnk_0300041C
	ldrb r2, [r2]
	cmp r8, r2
	blo _08E203F2
	b _08E205FC
_08E203F2:
	ldr r0, _08E20458 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r3, r8
	lsls r6, r3, #7
	cmp r0, r8
	bne _08E2045C
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
	bne _08E2043A
	b _08E205E8
_08E2043A:
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
	b _08E205E8
	.align 2, 0
_08E20450: .4byte gUnk_03000470
_08E20454: .4byte gUnk_0300041C
_08E20458: .4byte 0x04000128
_08E2045C:
	mov r3, r8
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _08E20618 @ =gUnk_03001420
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
	ble _08E20568
	mov r3, sb
	ldrb r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r3]
_08E20568:
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
	beq _08E205A8
_08E20580:
	mov r0, sl
	adds r0, #0xa0
	add r0, ip
	lsls r1, r7, #3
	adds r6, r0, r1
	ldr r0, _08E2061C @ =0x0000FFFF
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
	bne _08E20580
_08E205A8:
	mov r0, ip
	ldrh r2, [r0, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E205E8
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08E205BC
	b _08E207CC
_08E205BC:
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _08E205C8
	b _08E207E4
_08E205C8:
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
	ldr r0, _08E2061C @ =0x0000FFFF
	cmp r1, r0
	bne _08E205E8
	b _08E207FC
_08E205E8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08E20620 @ =gUnk_0300041C
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08E205FC
	b _08E203F2
_08E205FC:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E206DA
	ldr r0, _08E20624 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #4]
	movs r5, #0
	mov r8, r5
	ldr r4, _08E20620 @ =gUnk_0300041C
	b _08E20696
	.align 2, 0
_08E20618: .4byte gUnk_03001420
_08E2061C: .4byte 0x0000FFFF
_08E20620: .4byte gUnk_0300041C
_08E20624: .4byte 0x0000FFFB
_08E20628:
	ldr r0, _08E206B8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r8
	beq _08E2068C
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
	bls _08E2068C
	cmp r1, #1
	bgt _08E206A0
_08E2068C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08E20696:
	ldrb r3, [r4]
	cmp r8, r3
	blo _08E20628
	cmp r5, #0
	beq _08E206C0
_08E206A0:
	mov r0, ip
	ldrh r1, [r0, #4]
	movs r0, #4
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E206BC @ =0x000002AD
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08E206DA
	.align 2, 0
_08E206B8: .4byte 0x04000128
_08E206BC: .4byte 0x000002AD
_08E206C0:
	ldr r1, _08E206D4 @ =0x000002AD
	add r1, ip
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08E206D8
	adds r0, r2, #1
	strb r0, [r1]
	b _08E206DA
	.align 2, 0
_08E206D4: .4byte 0x000002AD
_08E206D8:
	strb r5, [r1]
_08E206DA:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E2075A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E206F0
	b _08E20818
_08E206F0:
	movs r3, #0
	mov r8, r3
	ldr r0, _08E20788 @ =gUnk_0300041C
	mov sb, r0
	ldrb r1, [r0]
	cmp r8, r1
	bhs _08E2075A
_08E206FE:
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
	ldr r0, _08E2078C @ =0x000003FF
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
	blo _08E206FE
_08E2075A:
	mov r0, ip
	ldrh r3, [r0, #4]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08E20818
	ldr r0, _08E20790 @ =0x000002AD
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08E20798
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E20794 @ =gUnk_03000720
	movs r0, #7
	b _08E2080C
	.align 2, 0
_08E20788: .4byte gUnk_0300041C
_08E2078C: .4byte 0x000003FF
_08E20790: .4byte 0x000002AD
_08E20794: .4byte gUnk_03000720
_08E20798:
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
	bne _08E20818
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, ip
	strh r0, [r2, #4]
	ldr r1, _08E207C8 @ =gUnk_03000720
	movs r0, #5
	b _08E2080C
	.align 2, 0
_08E207C8: .4byte gUnk_03000720
_08E207CC:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E207E0 @ =gUnk_03000720
	movs r0, #3
	b _08E2080C
	.align 2, 0
_08E207E0: .4byte gUnk_03000720
_08E207E4:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E207F8 @ =gUnk_03000720
	movs r0, #4
	b _08E2080C
	.align 2, 0
_08E207F8: .4byte gUnk_03000720
_08E207FC:
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	ldr r1, _08E20814 @ =gUnk_03000720
	movs r0, #6
_08E2080C:
	str r0, [r1]
	movs r0, #0
	b _08E2082C
	.align 2, 0
_08E20814: .4byte gUnk_03000720
_08E20818:
	mov r2, ip
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E2082A
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08E2082A:
	movs r0, #1
_08E2082C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E2083C
sub_08E2083C: @ 0x08E2083C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E20858 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E2085C @ =gUnk_03000440
	cmp r0, #0
	beq _08E20860
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E20864
	.align 2, 0
_08E20858: .4byte gUnk_03002560
_08E2085C: .4byte gUnk_03000440
_08E20860:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E20864:
	adds r0, r1, r0
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _08E2094C
	ldr r0, _08E2088C @ =gUnk_030014E4
	mov ip, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08E20894
	ldr r0, _08E20890 @ =0x0000FFFE
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E208C4
	.align 2, 0
_08E2088C: .4byte gUnk_030014E4
_08E20890: .4byte 0x0000FFFE
_08E20894:
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _08E208AC
	ldr r0, _08E208A8 @ =0x0000FFFD
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #2
	b _08E208C8
	.align 2, 0
_08E208A8: .4byte 0x0000FFFD
_08E208AC:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08E208F8
	ldrh r0, [r3, #0x18]
	cmp r0, #8
	bls _08E208DC
	ldr r0, _08E208D4 @ =0x0000FFFF
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #3
_08E208C4:
	ands r0, r1
	ldr r1, _08E208D8 @ =0x0000FFFB
_08E208C8:
	ands r0, r1
	strh r0, [r4, #6]
	movs r0, #1
	str r0, [r3, #0xc]
	b _08E2094C
	.align 2, 0
_08E208D4: .4byte 0x0000FFFF
_08E208D8: .4byte 0x0000FFFB
_08E208DC:
	adds r0, #1
	strh r0, [r3, #0x18]
	b _08E208FA
_08E208E2:
	ldr r0, _08E208F4 @ =0x0000FFFC
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #6]
	str r7, [r3, #0xc]
	b _08E2094C
	.align 2, 0
_08E208F4: .4byte 0x0000FFFC
_08E208F8:
	strh r2, [r3, #0x18]
_08E208FA:
	movs r6, #0
_08E208FC:
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
	beq _08E2092A
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r6
	ands r0, r2
	cmp r0, #0
	bne _08E2092A
	adds r1, r1, r5
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08E208E2
	adds r0, #1
	b _08E2092E
_08E2092A:
	adds r1, r1, r5
	movs r0, #0
_08E2092E:
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08E208FC
	ldr r1, [r3]
	adds r0, r3, #0
	bl sub_08E2C810
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _08E20954 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
_08E2094C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E20954: .4byte 0x0000FFFB

	thumb_func_start sub_08E20958
sub_08E20958: @ 0x08E20958
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08E20988 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08E2098C @ =gUnk_03002640
	movs r5, #0
	adds r0, #0x28
	strb r5, [r0]
	mov r0, ip
	adds r0, #0x29
	strb r5, [r0]
	movs r2, #0
_08E20970:
	ldr r0, _08E20990 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r3, r2, #1
	cmp r0, r2
	bne _08E20994
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	b _08E209E6
	.align 2, 0
_08E20988: .4byte gUnk_03000440
_08E2098C: .4byte gUnk_03002640
_08E20990: .4byte 0x04000128
_08E20994:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, _08E209C8 @ =gUnk_030014E4
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08E209FC
	mov r0, ip
	adds r0, #0x28
	strb r3, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08E209CC @ =gUnk_03001420
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08E20A0E
	ldrb r0, [r6, #0x1c]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _08E209D4
	ldr r5, _08E209D0 @ =0x0000FFFB
	b _08E20A0E
	.align 2, 0
_08E209C8: .4byte gUnk_030014E4
_08E209CC: .4byte gUnk_03001420
_08E209D0: .4byte 0x0000FFFB
_08E209D4:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08E209E6
	cmp r0, #0x20
	blt _08E20A0E
	cmp r0, #0x41
	bgt _08E20A0E
	cmp r0, #0x40
	blt _08E20A0E
_08E209E6:
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
	b _08E20A0E
_08E209FC:
	movs r0, #1
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08E20A0E
	lsls r0, r2, #1
	ldr r1, _08E20A24 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_08E20A0E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08E20970
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E20A24: .4byte 0x04000120

	thumb_func_start sub_08E20A28
sub_08E20A28: @ 0x08E20A28
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08E20A8C @ =gUnk_03000440
	ldr r1, _08E20A90 @ =gUnk_03002640
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08E20A94 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl sub_08E2C7F0
	ldrh r0, [r6, #6]
	ldr r3, _08E20A98 @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08E20A9C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E20AA8
	ldr r0, _08E20AA0 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E20AA8
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E20AA8
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E20AA4 @ =gUnk_02000CC9
	b _08E20ADA
	.align 2, 0
_08E20A8C: .4byte gUnk_03000440
_08E20A90: .4byte gUnk_03002640
_08E20A94: .4byte 0x00000123
_08E20A98: .4byte 0x0000FFFC
_08E20A9C: .4byte 0x04000128
_08E20AA0: .4byte gUnk_030014E4
_08E20AA4: .4byte gUnk_02000CC9
_08E20AA8:
	ldr r3, _08E20AE4 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E20ADC
	ldr r0, _08E20AE8 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E20ADC
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08E20ADC
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08E20AEC @ =gUnk_02000F69
_08E20ADA:
	str r0, [r4]
_08E20ADC:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E20AE4: .4byte 0x04000128
_08E20AE8: .4byte gUnk_030014E4
_08E20AEC: .4byte gUnk_02000F69

	thumb_func_start sub_08E20AF0
sub_08E20AF0: @ 0x08E20AF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08E20B48 @ =gUnk_03000440
	ldr r6, _08E20B4C @ =gUnk_03002640
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r5, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08E20B50 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r7, #1
	strh r7, [r6, #0xc]
	ldr r3, _08E20B54 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E20B34
	ldr r0, _08E20B58 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E20B34
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E20B64
_08E20B34:
	ldrh r0, [r4, #6]
	ldr r1, _08E20B5C @ =0x0000FFFC
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08E20B60 @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E20BE6
	.align 2, 0
_08E20B48: .4byte gUnk_03000440
_08E20B4C: .4byte gUnk_03002640
_08E20B50: .4byte 0x00000123
_08E20B54: .4byte 0x04000128
_08E20B58: .4byte gUnk_030014E4
_08E20B5C: .4byte 0x0000FFFC
_08E20B60: .4byte gUnk_02000C01
_08E20B64:
	adds r0, r5, #0
	bl sub_08E20958
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E20BE6
	adds r0, r4, #0
	adds r0, #0x28
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E20BE4
	cmp r0, #1
	bls _08E20BE4
	ldrh r1, [r4, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E20BD8
	movs r1, #0
_08E20B92:
	ldr r0, _08E20BB0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E20BB4 @ =gUnk_03000448
	adds r4, r1, #1
	cmp r0, r1
	bne _08E20BB8
	adds r1, r2, r3
	adds r0, r6, #4
	movs r2, #4
	bl sub_08E2C7F0
	b _08E20BCC
	.align 2, 0
_08E20BB0: .4byte 0x04000128
_08E20BB4: .4byte gUnk_03000448
_08E20BB8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E20BDC @ =gUnk_03001420
	adds r0, r0, r1
	adds r0, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E2C7F0
_08E20BCC:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E20B92
	ldr r0, _08E20BE0 @ =gUnk_02000DC5
	str r0, [r5]
_08E20BD8:
	movs r0, #1
	b _08E20BE6
	.align 2, 0
_08E20BDC: .4byte gUnk_03001420
_08E20BE0: .4byte gUnk_02000DC5
_08E20BE4:
	movs r0, #0
_08E20BE6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E20BEC
sub_08E20BEC: @ 0x08E20BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _08E20C54 @ =gUnk_03000440
	mov ip, r0
	ldr r4, _08E20C58 @ =gUnk_03002640
	movs r0, #2
	strb r0, [r4]
	ldrb r7, [r5, #0x1c]
	strb r7, [r4, #1]
	ldr r0, _08E20C5C @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _08E20C60 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08E20C40
	ldr r1, _08E20C64 @ =gUnk_030014E4
	mov sb, r1
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08E20C40
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E20C70
_08E20C40:
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _08E20C68 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08E20C6C @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E20D5E
	.align 2, 0
_08E20C54: .4byte gUnk_03000440
_08E20C58: .4byte gUnk_03002640
_08E20C5C: .4byte 0x00000123
_08E20C60: .4byte 0x04000128
_08E20C64: .4byte gUnk_030014E4
_08E20C68: .4byte 0x0000FFFC
_08E20C6C: .4byte gUnk_02000C01
_08E20C70:
	movs r6, #0
	movs r3, #0
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldrb r1, [r0]
	cmp r3, r1
	bhs _08E20D16
	ldr r2, _08E20CC0 @ =gUnk_03001420
	mov sl, r2
_08E20C84:
	ldr r0, _08E20CC4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	beq _08E20CF8
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r2, sb
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08E20D08
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, sl
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #2
	bne _08E20D08
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #1]
	cmp r0, r1
	beq _08E20CCC
	ldr r6, _08E20CC8 @ =0x0000FFFB
	b _08E20D08
	.align 2, 0
_08E20CC0: .4byte gUnk_03001420
_08E20CC4: .4byte 0x04000128
_08E20CC8: .4byte 0x0000FFFB
_08E20CCC:
	ldrh r1, [r2, #2]
	ldr r0, _08E20CD8 @ =0x00000123
	cmp r1, r0
	beq _08E20CE0
	ldr r6, _08E20CDC @ =0x0000FFFA
	b _08E20D08
	.align 2, 0
_08E20CD8: .4byte 0x00000123
_08E20CDC: .4byte 0x0000FFFA
_08E20CE0:
	ldrb r0, [r2, #0xe]
	cmp r0, #0x40
	blt _08E20D08
	cmp r0, #0x41
	ble _08E20CF0
	cmp r0, #0x42
	beq _08E20CF8
	b _08E20D08
_08E20CF0:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	b _08E20D04
_08E20CF8:
	movs r0, #1
	lsls r0, r3
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	movs r1, #0x10
	lsls r1, r3
_08E20D04:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08E20D08:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r3, r2
	blo _08E20C84
_08E20D16:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E20D5E
	movs r3, #0
	mov r2, ip
	adds r2, #0x28
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E20D46
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	b _08E20D40
_08E20D30:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	cmp r3, r0
	bhs _08E20D46
	movs r0, #0x10
	lsls r0, r3
_08E20D40:
	ands r0, r1
	cmp r0, #0
	bne _08E20D30
_08E20D46:
	mov r0, ip
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r3, r0
	bne _08E20D5C
	ldr r0, _08E20D58 @ =gUnk_02000F45
	str r0, [r5]
	movs r0, #2
	b _08E20D5E
	.align 2, 0
_08E20D58: .4byte gUnk_02000F45
_08E20D5C:
	movs r0, #1
_08E20D5E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E20D6C
sub_08E20D6C: @ 0x08E20D6C
	ldr r2, _08E20D88 @ =gUnk_03002640
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08E20D8C @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_08E20D88: .4byte gUnk_03002640
_08E20D8C: .4byte 0x00000123

	thumb_func_start sub_08E20D90
sub_08E20D90: @ 0x08E20D90
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08E20DEC @ =gUnk_03000440
	ldr r1, _08E20DF0 @ =gUnk_03002640
	ldr r6, _08E20DF4 @ =gUnk_03001420
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08E20DF8 @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08E20DFC @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E20DD8
	ldr r0, _08E20E00 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E20DD8
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E20E0C
_08E20DD8:
	ldrh r0, [r3, #6]
	ldr r1, _08E20E04 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08E20E08 @ =gUnk_02000C01
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E20E3C
	.align 2, 0
_08E20DEC: .4byte gUnk_03000440
_08E20DF0: .4byte gUnk_03002640
_08E20DF4: .4byte gUnk_03001420
_08E20DF8: .4byte 0x00000123
_08E20DFC: .4byte 0x04000128
_08E20E00: .4byte gUnk_030014E4
_08E20E04: .4byte 0x0000FFFC
_08E20E08: .4byte gUnk_02000C01
_08E20E0C:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08E20E3A
	adds r0, r4, #0
	bl sub_08E20958
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E20E3C
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08E20E3A
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08E20E3A
	ldr r0, _08E20E44 @ =gUnk_02001021
	str r0, [r4]
_08E20E3A:
	movs r0, #0
_08E20E3C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E20E44: .4byte gUnk_02001021

	thumb_func_start sub_08E20E48
sub_08E20E48: @ 0x08E20E48
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08E20EA0 @ =gUnk_03000440
	ldr r4, _08E20EA4 @ =gUnk_03002640
	ldr r6, _08E20EA8 @ =gUnk_03001420
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _08E20EAC @ =0x00000123
	strh r0, [r4, #2]
	movs r0, #0x41
	strb r0, [r4, #0xe]
	strh r1, [r4, #0xc]
	ldr r3, _08E20EB0 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08E20E8E
	ldr r0, _08E20EB4 @ =gUnk_030014E4
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08E20E8E
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08E20EC0
_08E20E8E:
	ldrh r0, [r7, #6]
	ldr r1, _08E20EB8 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, _08E20EBC @ =gUnk_02000C01
	str r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08E20F32
	.align 2, 0
_08E20EA0: .4byte gUnk_03000440
_08E20EA4: .4byte gUnk_03002640
_08E20EA8: .4byte gUnk_03001420
_08E20EAC: .4byte 0x00000123
_08E20EB0: .4byte 0x04000128
_08E20EB4: .4byte gUnk_030014E4
_08E20EB8: .4byte 0x0000FFFC
_08E20EBC: .4byte gUnk_02000C01
_08E20EC0:
	ldrb r0, [r6]
	cmp r0, #2
	beq _08E20ECC
	movs r0, #1
	rsbs r0, r0, #0
	b _08E20F32
_08E20ECC:
	adds r0, r5, #0
	bl sub_08E20958
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08E20F32
	ldrb r0, [r6, #0xe]
	cmp r0, #0x22
	bne _08E20F30
	movs r1, #0
_08E20EE2:
	ldr r0, _08E20F00 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r1, #3
	ldr r3, _08E20F04 @ =gUnk_03000448
	adds r7, r1, #1
	cmp r0, r1
	bne _08E20F08
	adds r1, r2, r3
	adds r0, r4, #4
	movs r2, #4
	bl sub_08E2C7F0
	b _08E20F1C
	.align 2, 0
_08E20F00: .4byte 0x04000128
_08E20F04: .4byte gUnk_03000448
_08E20F08:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08E20F38 @ =gUnk_03001420
	adds r6, r0, r1
	adds r0, r6, #4
	adds r1, r2, r3
	movs r2, #4
	bl sub_08E2C7F0
_08E20F1C:
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _08E20EE2
	ldr r0, _08E20F3C @ =gUnk_02001119
	str r0, [r5]
	movs r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x42
	strb r0, [r4, #0xe]
_08E20F30:
	movs r0, #0
_08E20F32:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E20F38: .4byte gUnk_03001420
_08E20F3C: .4byte gUnk_02001119

	thumb_func_start sub_08E20F40
sub_08E20F40: @ 0x08E20F40
	push {lr}
	adds r1, r0, #0
	ldr r2, _08E20F64 @ =gUnk_03002640
	ldrh r0, [r1, #0x1a]
	ldrb r3, [r1, #0x1c]
	cmp r0, #0
	bne _08E20F6C
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E20F68 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08E20F80
	.align 2, 0
_08E20F64: .4byte gUnk_03002640
_08E20F68: .4byte 0x00000123
_08E20F6C:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	strb r3, [r2, #1]
	ldr r0, _08E20F84 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08E20F80:
	pop {r1}
	bx r1
	.align 2, 0
_08E20F84: .4byte 0x00000123

	thumb_func_start sub_08E20F88
sub_08E20F88: @ 0x08E20F88
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08E20FE8 @ =0x0000FFFF
	movs r0, #0
	bl sub_08E2A668
	ldr r1, _08E20FEC @ =gUnk_03002994
	ldr r0, _08E20FF0 @ =gUnk_03002720
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E20FF4 @ =gUnk_03005840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E20FF8 @ =gUnk_03005008
	ldr r0, _08E20FFC @ =gUnk_03002934
	ldrb r0, [r0]
	strb r0, [r1]
	bl nullsub_08
	ldr r1, _08E21000 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E21004 @ =gUnk_030014D0
	ldr r0, _08E21008 @ =0x06010000
	str r0, [r1]
	ldr r0, _08E2100C @ =gUnk_020012AD
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08E21010 @ =gUnk_020012DD
	ldr r5, _08E21014 @ =gUnk_03000720
	cmp r1, #0
	beq _08E21018
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r1, r0
	b _08E2101E
	.align 2, 0
_08E20FE8: .4byte 0x0000FFFF
_08E20FEC: .4byte gUnk_03002994
_08E20FF0: .4byte gUnk_03002720
_08E20FF4: .4byte gUnk_03005840
_08E20FF8: .4byte gUnk_03005008
_08E20FFC: .4byte gUnk_03002934
_08E21000: .4byte gUnk_03001418
_08E21004: .4byte gUnk_030014D0
_08E21008: .4byte 0x06010000
_08E2100C: .4byte gUnk_020012AD
_08E21010: .4byte gUnk_020012DD
_08E21014: .4byte gUnk_03000720
_08E21018:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
_08E2101E:
	str r3, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r1, [r5]
	adds r0, #2
	strh r1, [r0]
	bl sub_08E20194
	bl sub_08E2C63C
	str r4, [sp, #4]
	ldr r1, _08E210AC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08E210B0 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08E210B4 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E21048:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E21048
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08E210AC @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08E210B8 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08E210BC @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E21062:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E21062
	ldr r0, _08E210C0 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E210C4 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08E2BD54
	bl sub_08E20010
	bl sub_08E28360
	ldr r0, _08E210C8 @ =0x04000208
	strh r4, [r0]
	movs r3, #0
_08E21086:
	ldr r2, _08E210CC @ =gUnk_03000740
	lsls r0, r3, #2
	adds r2, r0, r2
	ldr r1, _08E210D0 @ =gUnk_02021D50
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xe
	bls _08E21086
	ldr r1, _08E210C8 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E210AC: .4byte 0x040000D4
_08E210B0: .4byte gUnk_03002640
_08E210B4: .4byte 0x85000005
_08E210B8: .4byte gUnk_03001420
_08E210BC: .4byte 0x85000014
_08E210C0: .4byte gUnk_030014E4
_08E210C4: .4byte gUnk_030014E8
_08E210C8: .4byte 0x04000208
_08E210CC: .4byte gUnk_03000740
_08E210D0: .4byte gUnk_02021D50

	thumb_func_start sub_08E210D4
sub_08E210D4: @ 0x08E210D4
	push {lr}
	ldr r0, _08E210F0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E210F4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E210F8
	.align 2, 0
_08E210F0: .4byte gUnk_03002560
_08E210F4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E210F8:
	adds r0, r1, r0
	ldr r1, [r0, #0x40]
	bl sub_08E2C810
	pop {r0}
	bx r0

	thumb_func_start sub_08E21104
sub_08E21104: @ 0x08E21104
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08E20194
	bl sub_08E2C63C
	bl sub_08E28360
	ldr r0, _08E21170 @ =gUnk_03000400
	movs r3, #0
	str r3, [r0]
	ldr r2, _08E21174 @ =gUnk_030013D0
	ldr r0, [r2]
	ldr r1, _08E21178 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	ldr r0, _08E2117C @ =gUnk_03001478
	strh r3, [r0]
	ldr r1, _08E21180 @ =gUnk_03002620
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08E21184 @ =gUnk_03001E40
	ldr r0, _08E21188 @ =0x00001F03
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08E2118C @ =0x040000D4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E21190 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08E21194 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08E21198 @ =gUnk_03002610
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _08E2119C @ =gUnk_02001379
	str r0, [r4, #0x40]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21170: .4byte gUnk_03000400
_08E21174: .4byte gUnk_030013D0
_08E21178: .4byte 0xFFFFFBFF
_08E2117C: .4byte gUnk_03001478
_08E21180: .4byte gUnk_03002620
_08E21184: .4byte gUnk_03001E40
_08E21188: .4byte 0x00001F03
_08E2118C: .4byte 0x040000D4
_08E21190: .4byte 0x8100C000
_08E21194: .4byte 0x81000200
_08E21198: .4byte gUnk_03002610
_08E2119C: .4byte gUnk_02001379

	thumb_func_start sub_08E211A0
sub_08E211A0: @ 0x08E211A0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08E21214 @ =gUnk_03002620
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E21218 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08E2121C @ =0x00001F03
	strh r0, [r1]
	ldr r0, _08E21220 @ =gUnk_03002610
	strh r2, [r0]
	strh r2, [r0, #2]
_08E211BC:
	ldr r4, _08E21224 @ =gUnk_0200D34C
	ldr r1, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r5, _08E21228 @ =0x040000D4
	str r1, [r5]
	lsls r0, r2, #6
	ldr r1, _08E2122C @ =0x0600F800
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08E21230 @ =0x8000001E
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bls _08E211BC
	subs r4, #0x10
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08E2C800
	ldr r0, [r4, #8]
	str r0, [r5]
	ldr r0, _08E21234 @ =gUnk_03002730
	str r0, [r5, #4]
	ldr r0, _08E21238 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _08E2123C @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08E21240 @ =gUnk_0200141D
	str r0, [r6, #0x40]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E21214: .4byte gUnk_03002620
_08E21218: .4byte gUnk_03001E40
_08E2121C: .4byte 0x00001F03
_08E21220: .4byte gUnk_03002610
_08E21224: .4byte gUnk_0200D34C
_08E21228: .4byte 0x040000D4
_08E2122C: .4byte 0x0600F800
_08E21230: .4byte 0x8000001E
_08E21234: .4byte gUnk_03002730
_08E21238: .4byte 0x80000010
_08E2123C: .4byte gUnk_030013D0
_08E21240: .4byte gUnk_0200141D

	thumb_func_start nullsub_59
nullsub_59: @ 0x08E21244
	bx lr
	.align 2, 0

	thumb_func_start sub_08E21248
sub_08E21248: @ 0x08E21248
	push {r4, lr}
	sub sp, #8
	ldr r0, _08E21274 @ =gUnk_02001491
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r1, _08E21278 @ =gUnk_02001521
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E2127C
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r4, r1, r0
	b _08E21282
	.align 2, 0
_08E21274: .4byte gUnk_02001491
_08E21278: .4byte gUnk_02001521
_08E2127C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
_08E21282:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08E212B0 @ =0x01000052
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08E2C7F0
	movs r1, #0
	str r1, [r4, #0x78]
	ldr r0, _08E212B4 @ =gUnk_02001525
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08E21788
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E212B0: .4byte 0x01000052
_08E212B4: .4byte gUnk_02001525

	thumb_func_start sub_08E212B8
sub_08E212B8: @ 0x08E212B8
	push {r4, r5, lr}
	ldr r0, _08E212D4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E212D8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E212DC
	.align 2, 0
_08E212D4: .4byte gUnk_03002560
_08E212D8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E212DC:
	adds r0, r1, r0
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
_08E212EC:
	lsls r2, r5, #1
	adds r1, r4, #0
	adds r1, #0x80
	adds r1, r1, r2
	ldr r3, _08E21344 @ =gUnk_03000470
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
	bls _08E212EC
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _08E21336
	adds r0, r4, #0
	bl sub_08E21890
_08E21336:
	ldr r1, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_08E2C810
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E21344: .4byte gUnk_03000470

	thumb_func_start nullsub_60
nullsub_60: @ 0x08E21348
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2134C
sub_08E2134C: @ 0x08E2134C
	push {r4, lr}
	ldr r3, _08E21374 @ =gUnk_03002620
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r2, r4, #0
	orrs r1, r2
	ldr r2, _08E21378 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _08E2137C @ =gUnk_03002610
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	ldr r1, _08E21380 @ =gUnk_0200155D
	str r1, [r0, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21374: .4byte gUnk_03002620
_08E21378: .4byte 0x0000F9FF
_08E2137C: .4byte gUnk_03002610
_08E21380: .4byte gUnk_0200155D

	thumb_func_start sub_08E21384
sub_08E21384: @ 0x08E21384
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08E21408 @ =gUnk_0200D730
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _08E2140C @ =0x0600C000
	bl sub_08E2C800
	movs r2, #0
	str r2, [sp]
	ldr r1, _08E21410 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E21414 @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _08E21418 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E2141C @ =gUnk_03005030
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _08E21420 @ =gUnk_03001E10
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _08E21424 @ =0x0600E480
_08E213C0:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E213C0
	ldr r3, _08E21428 @ =0x0600E4C0
	movs r2, #0
_08E213D8:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _08E213D8
	ldr r2, _08E2142C @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E21430 @ =gUnk_0200160D
	str r0, [r5, #0x7c]
	add sp, #4
	pop {r4, r5}
	pop {r0}

	thumb_func_start sub_08E21404
sub_08E21404: @ 0x08E21404
	bx r0
	.align 2, 0
_08E21408: .4byte gUnk_0200D730
_08E2140C: .4byte 0x0600C000
_08E21410: .4byte 0x040000D4
_08E21414: .4byte 0x0600CC60
_08E21418: .4byte 0x85000008
_08E2141C: .4byte gUnk_03005030
_08E21420: .4byte gUnk_03001E10
_08E21424: .4byte 0x0600E480
_08E21428: .4byte 0x0600E4C0
_08E2142C: .4byte gUnk_03002620
_08E21430: .4byte gUnk_0200160D

	thumb_func_start sub_08E21434
sub_08E21434: @ 0x08E21434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08E2C588
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08E21454 @ =gUnk_02001631
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21454: .4byte gUnk_02001631

	thumb_func_start sub_08E21458
sub_08E21458: @ 0x08E21458
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08E2147C @ =0xFFFF0000
	cmp r1, r0
	bne _08E21474
	bl sub_08E2C5E0
	ldr r0, _08E21480 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
_08E21474:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2147C: .4byte 0xFFFF0000
_08E21480: .4byte gUnk_0200165D

	thumb_func_start sub_08E21484
sub_08E21484: @ 0x08E21484
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	bl sub_08E20050
	ldr r0, _08E214A4 @ =gUnk_02001681
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E214A4: .4byte gUnk_02001681

	thumb_func_start sub_08E214A8
sub_08E214A8: @ 0x08E214A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08E214D4 @ =0xFFFF0000
	cmp r0, r1
	bne _08E214E0
	ldr r0, _08E214D8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	ldr r0, _08E214DC @ =gUnk_03000720
	str r5, [r0]
	bl sub_08E20F88
	b _08E2156A
	.align 2, 0
_08E214D4: .4byte 0xFFFF0000
_08E214D8: .4byte gUnk_03002560
_08E214DC: .4byte gUnk_03000720
_08E214E0:
	bl sub_08E20130
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08E21534
	bl sub_08E20108
	ldr r1, _08E21518 @ =gUnk_0300041C
	ldr r0, _08E2151C @ =gUnk_03000440
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08E21520 @ =gUnk_03000428
	ldr r0, _08E21524 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _08E21528 @ =gUnk_03000434
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08E2152C @ =gUnk_03000410
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08E21530 @ =gUnk_02001749
	str r0, [r4, #0x7c]
	b _08E2156A
	.align 2, 0
_08E21518: .4byte gUnk_0300041C
_08E2151C: .4byte gUnk_03000440
_08E21520: .4byte gUnk_03000428
_08E21524: .4byte 0x04000128
_08E21528: .4byte gUnk_03000434
_08E2152C: .4byte gUnk_03000410
_08E21530: .4byte gUnk_02001749
_08E21534:
	cmp r0, #1
	bne _08E21550
	adds r0, r4, #0
	adds r0, #0x9c
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08E2156A
	bl sub_08E20120
	b _08E2156A
_08E21550:
	cmp r0, #0
	bge _08E21564
	bl sub_08E20108
	ldr r0, _08E21560 @ =gUnk_0200165D
	str r0, [r4, #0x7c]
	b _08E2156A
	.align 2, 0
_08E21560: .4byte gUnk_0200165D
_08E21564:
	adds r0, r4, #0
	adds r0, #0x9c
	strh r5, [r0]
_08E2156A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08E21570
sub_08E21570: @ 0x08E21570
	ldr r1, _08E21578 @ =gUnk_02001755
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E21578: .4byte gUnk_02001755

	thumb_func_start sub_08E2157C
sub_08E2157C: @ 0x08E2157C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
_08E2158A:
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
	bls _08E2158A
	movs r0, #3
	bl sub_08E2013C
	bl sub_08E201A0
	ldr r0, _08E215C4 @ =gUnk_020017A1
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E215C4: .4byte gUnk_020017A1

	thumb_func_start sub_08E215C8
sub_08E215C8: @ 0x08E215C8
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
	bls _08E215FE
	movs r0, #0
	strh r0, [r2]
	bl sub_08E201B0
	cmp r0, #0
	bne _08E215FA
	bl sub_08E20F88
	b _08E215FE
_08E215FA:
	ldr r0, _08E21604 @ =gUnk_020017E1
	str r0, [r4, #0x7c]
_08E215FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21604: .4byte gUnk_020017E1

	thumb_func_start sub_08E21608
sub_08E21608: @ 0x08E21608
	movs r1, #1
	str r1, [r0, #0x78]
	ldr r1, _08E21614 @ =gUnk_020017F1
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E21614: .4byte gUnk_020017F1

	thumb_func_start sub_08E21618
sub_08E21618: @ 0x08E21618
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E21638
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E21638
	subs r0, #1
	strh r0, [r1]
_08E21638:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E21650
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #2
	beq _08E21650
	adds r0, #1
	strh r0, [r1]
_08E21650:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_08E21840
	ldrh r1, [r5]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08E21674
	ldr r0, _08E2167C @ =gUnk_02001859
	str r0, [r4, #0x7c]
_08E21674:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2167C: .4byte gUnk_02001859

	thumb_func_start sub_08E21680
sub_08E21680: @ 0x08E21680
	adds r2, r0, #0
	adds r2, #0x98
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08E21690 @ =gUnk_0200186D
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E21690: .4byte gUnk_0200186D

	thumb_func_start sub_08E21694
sub_08E21694: @ 0x08E21694
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
	bl sub_08E21840
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08E216C2
	ldr r0, _08E216C8 @ =gUnk_020018A5
	str r0, [r4, #0x7c]
_08E216C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E216C8: .4byte gUnk_020018A5

	thumb_func_start sub_08E216CC
sub_08E216CC: @ 0x08E216CC
	ldr r2, _08E216E4 @ =gUnk_03001478
	movs r3, #0
	movs r1, #0x8f
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x98
	strh r3, [r1]
	ldr r1, _08E216E8 @ =gUnk_020018C5
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08E216E4: .4byte gUnk_03001478
_08E216E8: .4byte gUnk_020018C5

	thumb_func_start sub_08E216EC
sub_08E216EC: @ 0x08E216EC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _08E21718 @ =gUnk_03001478
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
	bls _08E21712
	strh r4, [r5, #4]
	ldr r0, _08E2171C @ =gUnk_020018F9
	str r0, [r3, #0x7c]
_08E21712:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E21718: .4byte gUnk_03001478
_08E2171C: .4byte gUnk_020018F9

	thumb_func_start sub_08E21720
sub_08E21720: @ 0x08E21720
	push {lr}
	sub sp, #4
	ldr r1, _08E2176C @ =gUnk_03000404
	adds r0, #0xa0
	ldrh r0, [r0]
	strb r0, [r1]
	mov r1, sp
	ldr r2, _08E21770 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08E21774 @ =0x01000200
	mov r0, sp
	bl sub_08E2C7F0
	ldr r1, _08E21778 @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08E2177C @ =gUnk_02030000
	ldr r1, _08E21780 @ =0x06008000
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08E2C7F0
	ldr r0, _08E21784 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	bl sub_08E234E8
	bl sub_08E23518
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E2176C: .4byte gUnk_03000404
_08E21770: .4byte 0x00007FFF
_08E21774: .4byte 0x01000200
_08E21778: .4byte gUnk_03001478
_08E2177C: .4byte gUnk_02030000
_08E21780: .4byte 0x06008000
_08E21784: .4byte gUnk_03002560

	thumb_func_start sub_08E21788
sub_08E21788: @ 0x08E21788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08E21840
	ldr r0, _08E2183C @ =0x06010000
	mov sl, r0
	str r0, [r7]
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xc]
	movs r0, #9
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x1c]
	movs r6, #0xf
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r5, #0xc0
	lsls r5, r5, #0xc
	str r5, [r7, #8]
	adds r0, r7, #0
	bl sub_08E2AE38
	adds r1, r7, #0
	adds r1, #0x28
	mov r0, sl
	str r0, [r7, #0x28]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xc]
	movs r0, #0xa
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #0xb
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08E2AE38
	adds r1, r7, #0
	adds r1, #0x50
	mov r0, sl
	str r0, [r7, #0x50]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xc]
	movs r0, #0xb
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	subs r0, #0xc
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	str r5, [r1, #8]
	adds r0, r1, #0
	bl sub_08E2AE38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2183C: .4byte 0x06010000

	thumb_func_start sub_08E21840
sub_08E21840: @ 0x08E21840
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08E21858 @ =gUnk_0200D350
	ldr r4, _08E2185C @ =gUnk_03001DD0
	ldr r2, _08E21860 @ =gUnk_030013D0
	cmp r1, #0
	beq _08E21868
	ldr r1, _08E21864 @ =0x040000D4
	adds r0, #1
	b _08E2186C
	.align 2, 0
_08E21858: .4byte gUnk_0200D350
_08E2185C: .4byte gUnk_03001DD0
_08E21860: .4byte gUnk_030013D0
_08E21864: .4byte 0x040000D4
_08E21868:
	ldr r1, _08E21888 @ =0x040000D4
	adds r0, #2
_08E2186C:
	lsls r0, r0, #5
	adds r0, r0, r3
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _08E2188C @ =0x80000010
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
_08E21888: .4byte 0x040000D4
_08E2188C: .4byte 0x80000010

	thumb_func_start sub_08E21890
sub_08E21890: @ 0x08E21890
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
	bl sub_08E2B640
	pop {r0}
	bx r0

	thumb_func_start sub_08E218B0
sub_08E218B0: @ 0x08E218B0
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
	bl sub_08E21A0C
	str r0, [r4, #0x38]
	str r6, [r5, #0x40]
	str r6, [r4, #0x3c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E218EC
sub_08E218EC: @ 0x08E218EC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08E21904
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_08E21904:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E21916
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08E21916:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08E2197E
	adds r0, r4, #0
	bl sub_08E21988
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E21978
	adds r0, r4, #0
	bl sub_08E2AE38
	ldrh r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	cmp r0, #0
	beq _08E21950
	ldr r0, _08E2194C @ =0x0000FDFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	b _08E21968
	.align 2, 0
_08E2194C: .4byte 0x0000FDFF
_08E21950:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E21960
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08E2196E
_08E21960:
	ldr r0, _08E21984 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
_08E21968:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08E2196E:
	cmp r2, #0
	beq _08E21978
	adds r0, r2, #0
	bl sub_08E218EC
_08E21978:
	adds r0, r4, #0
	bl sub_08E2B640
_08E2197E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21984: .4byte 0x0000FBFF

	thumb_func_start sub_08E21988
sub_08E21988: @ 0x08E21988
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
	bne _08E219C8
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
	bl sub_08E219D0
	ldr r0, [sp]
	asrs r0, r0, #2
	strh r0, [r4, #0x10]
	ldr r0, [sp, #4]
	asrs r0, r0, #2
	strh r0, [r4, #0x12]
_08E219C8:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E219D0
sub_08E219D0: @ 0x08E219D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _08E219E0
	bl sub_08E219D0
_08E219E0:
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x28]
	ldr r1, [r4]
	ldr r5, [r5, #0x2c]
	ldr r6, [r4, #4]
	cmp r2, #0
	beq _08E219FE
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, r1, r0
	str r0, [r4]
	ldr r0, [r2, #4]
	adds r0, r5, r0
	adds r0, r6, r0
	b _08E21A04
_08E219FE:
	adds r0, r1, r3
	str r0, [r4]
	adds r0, r6, r5
_08E21A04:
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E21A0C
sub_08E21A0C: @ 0x08E21A0C
	push {lr}
_08E21A0E:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _08E21A18
	adds r0, r1, #0
	b _08E21A0E
_08E21A18:
	ldr r0, [r0, #0x38]
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E21A20
sub_08E21A20: @ 0x08E21A20
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	ldr r1, _08E21A40 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E21A3A
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08E21A3A:
	pop {r0}
	bx r0
	.align 2, 0
_08E21A40: .4byte 0x0000FEFF

	thumb_func_start sub_08E21A44
sub_08E21A44: @ 0x08E21A44
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
	beq _08E21A7C
	ldr r0, [r2]
	ldr r1, [r0, #0x28]
	adds r1, r4, r1
	str r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r3, r0
	str r0, [r2, #0x30]
_08E21A7C:
	adds r0, r2, #4
	bl sub_08E218EC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E21A88
sub_08E21A88: @ 0x08E21A88
	push {r4, lr}
	ldr r0, _08E21AA4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E21AA8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21AAC
	.align 2, 0
_08E21AA4: .4byte gUnk_03002560
_08E21AA8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21AAC:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E21A44
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E21AE0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E21AD2
	subs r0, #1
	strh r0, [r1]
	b _08E21AF4
_08E21AD2:
	ldr r0, _08E21ADC @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	b _08E21AF4
	.align 2, 0
_08E21ADC: .4byte gUnk_03002560
_08E21AE0:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E21AF4
	ldr r0, _08E21AFC @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
_08E21AF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21AFC: .4byte gUnk_03002560

	thumb_func_start sub_08E21B00
sub_08E21B00: @ 0x08E21B00
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08E21B34 @ =gUnk_02001DF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r4, #0x18
	cmp r1, #0
	beq _08E21B38
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E21B3E
	.align 2, 0
_08E21B34: .4byte gUnk_02001DF9
_08E21B38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E21B3E:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E21B4A
	movs r0, #0
	strb r0, [r2, #3]
	b _08E21B52
_08E21B4A:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E21B52:
	strh r0, [r2]
	ldrb r1, [r2, #3]
	ldr r3, _08E21B68 @ =gUnk_03001478
	cmp r5, #0
	beq _08E21B6C
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xbf
	b _08E21B74
	.align 2, 0
_08E21B68: .4byte gUnk_03001478
_08E21B6C:
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #0xff
_08E21B74:
	strh r0, [r3]
	strb r4, [r2, #2]
	ldr r1, _08E21B8C @ =gUnk_03001478
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
_08E21B8C: .4byte gUnk_03001478

	thumb_func_start sub_08E21B90
sub_08E21B90: @ 0x08E21B90
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08E21BC4 @ =gUnk_02001DF9
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r3, r6, #0x18
	cmp r1, #0
	beq _08E21BC8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E21BCE
	.align 2, 0
_08E21BC4: .4byte gUnk_02001DF9
_08E21BC8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E21BCE:
	adds r2, r0, #0
	cmp r3, #0
	ble _08E21BDA
	movs r0, #0
	strb r0, [r2, #3]
	b _08E21BE2
_08E21BDA:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08E21BE2:
	strh r0, [r2]
	ldrb r3, [r2, #3]
	ldr r4, _08E21BF8 @ =gUnk_03001478
	cmp r5, #0
	beq _08E21BFC
	movs r0, #0x10
	movs r1, #0
	orrs r0, r3
	strb r0, [r2, #3]
	strh r1, [r4]
	b _08E21C04
	.align 2, 0
_08E21BF8: .4byte gUnk_03001478
_08E21BFC:
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #3]
	strh r5, [r4]
_08E21C04:
	strb r6, [r2, #2]
	ldr r1, _08E21C1C @ =gUnk_03001478
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
_08E21C1C: .4byte gUnk_03001478

	thumb_func_start sub_08E21C20
sub_08E21C20: @ 0x08E21C20
	push {r4, lr}
	ldr r4, _08E21C3C @ =gUnk_03002560
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r3, _08E21C40 @ =gUnk_03001478
	cmp r0, #0
	beq _08E21C44
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21C48
	.align 2, 0
_08E21C3C: .4byte gUnk_03002560
_08E21C40: .4byte gUnk_03001478
_08E21C44:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21C48:
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
	beq _08E21CA0
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08E21C86
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08E21C8E
	movs r0, #0x1e
	b _08E21C94
_08E21C86:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E21C92
_08E21C8E:
	strh r2, [r3, #4]
	b _08E21C96
_08E21C92:
	movs r0, #0x1f
_08E21C94:
	strh r0, [r3, #4]
_08E21C96:
	movs r0, #0
	strh r0, [r3, #2]
	ldr r0, [r4]
	bl sub_08E2A6E0
_08E21CA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E21CA8
sub_08E21CA8: @ 0x08E21CA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08E21CE4 @ =gUnk_02001EF1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	lsls r4, r4, #0x18
	cmp r1, #0
	beq _08E21CE8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E21CEE
	.align 2, 0
_08E21CE4: .4byte gUnk_02001EF1
_08E21CE8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E21CEE:
	adds r2, r1, #0
	strh r5, [r2]
	asrs r4, r4, #0x18
	cmp r4, #0
	bge _08E21CFA
	rsbs r4, r4, #0
_08E21CFA:
	strb r4, [r2, #2]
	cmp r6, #0
	beq _08E21D04
	movs r0, #0x10
	b _08E21D06
_08E21D04:
	movs r0, #0x20
_08E21D06:
	strb r0, [r2, #3]
	ldrb r1, [r2, #3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #3]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E21D18
sub_08E21D18: @ 0x08E21D18
	push {r4, lr}
	ldr r0, _08E21D34 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E21D38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21D3C
	.align 2, 0
_08E21D34: .4byte gUnk_03002560
_08E21D38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21D3C:
	adds r1, r1, r0
	adds r4, r1, #0
	ldrb r2, [r4, #3]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08E21D6E
	movs r1, #0xfd
	ands r1, r2
	strb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	movs r1, #2
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08E21D66
	adds r0, r1, #0
	movs r1, #1
	bl sub_08E21B00
	b _08E21D6E
_08E21D66:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08E21B00
_08E21D6E:
	ldrb r1, [r4, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E21DA6
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #3]
	movs r1, #0x10
	ands r1, r0
	ldrb r0, [r4, #2]
	cmp r1, #0
	beq _08E21D9A
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_08E21B00
	b _08E21DA6
_08E21D9A:
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_08E21B00
_08E21DA6:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E21DDE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E21DD4
	ldr r1, _08E21DCC @ =gUnk_03001478
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	ldr r0, _08E21DD0 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	b _08E21DDE
	.align 2, 0
_08E21DCC: .4byte gUnk_03001478
_08E21DD0: .4byte gUnk_03002560
_08E21DD4:
	movs r0, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
_08E21DDE:
	ldrb r0, [r4, #3]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r4, #3]
	ldr r0, _08E21DFC @ =gUnk_03001478
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08E21DF6
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r4, #3]
_08E21DF6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21DFC: .4byte gUnk_03001478

	thumb_func_start sub_08E21E00
sub_08E21E00: @ 0x08E21E00
	push {lr}
	ldr r1, _08E21E18 @ =gUnk_03001478
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08E21E0E
	cmp r0, #0x1f
	bne _08E21E1C
_08E21E0E:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08E21E1C
	movs r0, #0
	b _08E21E1E
	.align 2, 0
_08E21E18: .4byte gUnk_03001478
_08E21E1C:
	movs r0, #1
_08E21E1E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E21E24
sub_08E21E24: @ 0x08E21E24
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E21E54 @ =gUnk_02002061
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08E2A5C4
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E21E58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21E5C
	.align 2, 0
_08E21E54: .4byte gUnk_02002061
_08E21E58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21E5C:
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

	thumb_func_start sub_08E21E88
sub_08E21E88: @ 0x08E21E88
	push {lr}
	ldr r0, _08E21EA4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E21EA8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21EAC
	.align 2, 0
_08E21EA4: .4byte gUnk_03002560
_08E21EA8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21EAC:
	adds r2, r1, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r2, #0xd]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08E21EC4
	adds r0, r1, #1
	strb r0, [r2, #0xd]
	b _08E21EF8
_08E21EC4:
	adds r0, r3, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2, #8]
	cmp r0, r3
	blo _08E21ED8
	strb r1, [r2, #0xc]
_08E21ED8:
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
	bl sub_08E2C7F0
_08E21EF8:
	pop {r0}
	bx r0

	thumb_func_start sub_08E21EFC
sub_08E21EFC: @ 0x08E21EFC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08E21F2C @ =gUnk_02002135
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl sub_08E2A5C4
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	adds r5, r4, #4
	cmp r0, #0
	beq _08E21F30
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21F34
	.align 2, 0
_08E21F2C: .4byte gUnk_02002135
_08E21F30:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21F34:
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

	thumb_func_start sub_08E21F5C
sub_08E21F5C: @ 0x08E21F5C
	push {r4, lr}
	ldr r0, _08E21F78 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E21F7C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E21F80
	.align 2, 0
_08E21F78: .4byte gUnk_03002560
_08E21F7C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E21F80:
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldrb r1, [r3, #0xa]
	ldrh r0, [r0]
	cmp r1, r0
	bhs _08E21F98
	adds r0, r1, #1
	strb r0, [r3, #0xa]
	b _08E21FEA
_08E21F98:
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
	blo _08E21FBC
	movs r0, #0
	strb r0, [r3, #9]
	strh r2, [r3, #4]
_08E21FBC:
	ldrh r0, [r3, #4]
	lsls r0, r0, #1
	ldr r1, [r3]
	adds r0, r1, r0
	ldr r2, _08E21FF0 @ =0x040000D4
	adds r0, #2
	str r0, [r2]
	ldrb r0, [r3, #6]
	lsls r0, r0, #1
	ldr r1, _08E21FF4 @ =gUnk_03002730
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrb r0, [r3, #7]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E21FF8 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08E21FEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E21FF0: .4byte 0x040000D4
_08E21FF4: .4byte gUnk_03002730
_08E21FF8: .4byte gUnk_030013D0

	thumb_func_start sub_08E21FFC
sub_08E21FFC: @ 0x08E21FFC
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
	ldr r0, _08E22084 @ =gUnk_020027E5
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	str r3, [sp]
	bl sub_08E2A5C4
	str r0, [sp, #0x38]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x38]
	ldrh r2, [r0, #6]
	ldr r0, _08E22088 @ =gUnk_0200D350
	mov ip, r0
	ldr r4, _08E2208C @ =gUnk_030013D0
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
	beq _08E22090
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08E22096
	.align 2, 0
_08E22084: .4byte gUnk_020027E5
_08E22088: .4byte gUnk_0200D350
_08E2208C: .4byte gUnk_030013D0
_08E22090:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
_08E22096:
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
	ldr r5, _08E22494 @ =0x000002AE
	adds r0, r1, r5
	movs r2, #0
	mov sl, r2
	strh r6, [r0]
	adds r5, #2
	adds r5, r1, r5
	str r5, [sp, #0x3c]
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08E22498 @ =0x000002B1
	adds r2, r2, r1
	mov r8, r2
	mov r5, sb
	strb r5, [r2]
	ldr r0, _08E2249C @ =0x000002B2
	adds r5, r1, r0
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08E224A0 @ =0x000002B3
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
	ldr r0, _08E224A4 @ =0x000002B6
	adds r0, r0, r1
	mov sb, r0
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _08E22102
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08E22102:
	ldr r1, _08E224A8 @ =0x040000D4
	ldrb r0, [r5]
	lsls r0, r0, #5
	add r0, ip
	str r0, [r1]
	ldr r5, [sp, #0x3c]
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r2, _08E224AC @ =gUnk_03001BF0
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r3, _08E224B0 @ =0x80000010
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
	ldr r5, _08E224AC @ =gUnk_03001BF0
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
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E224B8 @ =0x06010000
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
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E224B8 @ =0x06010000
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
	ldr r0, _08E224BC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	str r6, [sp, #0xc]
	adds r5, #0x88
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E224B8 @ =0x06010000
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
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E224B8 @ =0x06010000
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
	ldr r0, _08E224BC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [sp, #0x50]
	adds r1, r5, #0
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E224B8 @ =0x06010000
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
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E224B8 @ =0x06010000
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
	ldr r0, _08E224BC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E224B8 @ =0x06010000
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
	ldr r2, _08E224B4 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E224B8 @ =0x06010000
	str r2, [r4]
	b _08E224C0
	.align 2, 0
_08E22494: .4byte 0x000002AE
_08E22498: .4byte 0x000002B1
_08E2249C: .4byte 0x000002B2
_08E224A0: .4byte 0x000002B3
_08E224A4: .4byte 0x000002B6
_08E224A8: .4byte 0x040000D4
_08E224AC: .4byte gUnk_03001BF0
_08E224B0: .4byte 0x80000010
_08E224B4: .4byte 0x05000011
_08E224B8: .4byte 0x06010000
_08E224BC: .4byte 0x0000FFEF
_08E224C0:
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
	ldr r0, _08E22600 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4, #0x34]
	str r6, [sp, #0x24]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	ldr r2, _08E22604 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E22608 @ =0x06010000
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
	ldr r2, _08E22604 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E22608 @ =0x06010000
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
	ldr r2, _08E22600 @ =0x0000FFEF
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
_08E22600: .4byte 0x0000FFEF
_08E22604: .4byte 0x05000011
_08E22608: .4byte 0x06010000

	thumb_func_start sub_08E2260C
sub_08E2260C: @ 0x08E2260C
	ldr r0, _08E22618 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E2261C @ =gUnk_020027F9
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08E22618: .4byte gUnk_03002560
_08E2261C: .4byte gUnk_020027F9

	thumb_func_start sub_08E22620
sub_08E22620: @ 0x08E22620
	push {r4, r5, r6, lr}
	ldr r6, _08E2263C @ =gUnk_03002560
	ldr r2, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E22640
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E22644
	.align 2, 0
_08E2263C: .4byte gUnk_03002560
_08E22640:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E22644:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E2265C
	movs r1, #0
	b _08E22660
_08E2265C:
	ldr r0, _08E22680 @ =gUnk_03000470
	ldrh r1, [r0, #0x10]
_08E22660:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrb r3, [r2]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08E226D8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E22684
	movs r0, #1
	orrs r0, r3
	strb r0, [r2]
	b _08E22774
	.align 2, 0
_08E22680: .4byte gUnk_03000470
_08E22684:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08E2269C
	movs r0, #0xfb
	ands r0, r3
	movs r1, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _08E22774
_08E2269C:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08E226BC
	ldr r1, _08E226B4 @ =0x000002AE
	adds r0, r4, r1
	strh r5, [r0]
	ldr r1, [r6]
	ldr r0, _08E226B8 @ =gUnk_020030F1
	b _08E22772
	.align 2, 0
_08E226B4: .4byte 0x000002AE
_08E226B8: .4byte gUnk_020030F1
_08E226BC:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E22774
	ldr r1, _08E226D0 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E226D4 @ =gUnk_02002E01
	b _08E22772
	.align 2, 0
_08E226D0: .4byte 0x000002AE
_08E226D4: .4byte gUnk_02002E01
_08E226D8:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08E22740
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08E2271C
	ldr r1, _08E226FC @ =0x000002AD
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E22704
	ldr r0, _08E22700 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #1
	b _08E2271A
	.align 2, 0
_08E226FC: .4byte 0x000002AD
_08E22700: .4byte 0x000002B2
_08E22704:
	cmp r0, #1
	bne _08E22714
	ldr r0, _08E22710 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #3
	b _08E2271A
	.align 2, 0
_08E22710: .4byte 0x000002B2
_08E22714:
	ldr r0, _08E22734 @ =0x000002B2
	adds r1, r4, r0
	movs r0, #5
_08E2271A:
	strb r0, [r1]
_08E2271C:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E22738
	movs r0, #4
	orrs r0, r1
	movs r1, #0x40
	b _08E2273A
	.align 2, 0
_08E22734: .4byte 0x000002B2
_08E22738:
	movs r0, #1
_08E2273A:
	orrs r0, r1
	strb r0, [r2]
	b _08E22774
_08E22740:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08E22760
	ldr r1, _08E22758 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, [r6]
	ldr r0, _08E2275C @ =gUnk_02002A41
	b _08E22772
	.align 2, 0
_08E22758: .4byte 0x000002AE
_08E2275C: .4byte gUnk_02002A41
_08E22760:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08E22774
	ldr r1, _08E227B4 @ =0x000002AE
	adds r0, r4, r1
	strh r3, [r0]
	ldr r1, [r6]
	ldr r0, _08E227B8 @ =gUnk_02002C21
_08E22772:
	str r0, [r1, #8]
_08E22774:
	adds r0, r4, #0
	bl sub_08E227D0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E227CA
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E227BC
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	b _08E227CA
	.align 2, 0
_08E227B4: .4byte 0x000002AE
_08E227B8: .4byte gUnk_02002C21
_08E227BC:
	adds r0, r4, #4
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E218EC
_08E227CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E227D0
sub_08E227D0: @ 0x08E227D0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08E22808 @ =0x000002B3
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08E22856
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	ldr r1, _08E2280C @ =gUnk_0200D350
	ldr r6, _08E22810 @ =gUnk_03001BF0
	ldr r5, _08E22814 @ =gUnk_030013D0
	cmp r0, #0
	beq _08E2281C
	ldr r2, _08E22818 @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	b _08E22824
	.align 2, 0
_08E22808: .4byte 0x000002B3
_08E2280C: .4byte gUnk_0200D350
_08E22810: .4byte gUnk_03001BF0
_08E22814: .4byte gUnk_030013D0
_08E22818: .4byte 0x000002B2
_08E2281C:
	ldr r2, _08E2285C @ =0x000002B2
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, #1
_08E22824:
	lsls r0, r0, #5
	adds r4, r0, r1
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #2
	eors r0, r1
	strb r0, [r2]
	ldr r1, _08E22860 @ =0x040000D4
	str r4, [r1]
	movs r2, #0xac
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E22864 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_08E22856:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2285C: .4byte 0x000002B2
_08E22860: .4byte 0x040000D4
_08E22864: .4byte 0x80000010

	thumb_func_start sub_08E22868
sub_08E22868: @ 0x08E22868
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08E2288C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E22890
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E22894
	.align 2, 0
_08E2288C: .4byte gUnk_03002560
_08E22890:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E22894:
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
	beq _08E22940
	adds r0, #8
	str r0, [r5, #0x2c]
	adds r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E22938 @ =0x0000F83F
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r5, #0x18]
	ldr r0, _08E2293C @ =0x000002B1
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
	b _08E22996
	.align 2, 0
_08E22938: .4byte 0x0000F83F
_08E2293C: .4byte 0x000002B1
_08E22940:
	subs r0, #8
	str r0, [r5, #0x2c]
	subs r0, r2, #4
	str r0, [r5, #0x30]
	ldr r2, _08E229C8 @ =0x0000F83F
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
	ldr r4, _08E229CC @ =0x000002B1
_08E22996:
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
	beq _08E229D4
	ldr r0, _08E229D0 @ =0x000002B2
	adds r1, r5, r0
	movs r0, #1
	b _08E229DA
	.align 2, 0
_08E229C8: .4byte 0x0000F83F
_08E229CC: .4byte 0x000002B1
_08E229D0: .4byte 0x000002B2
_08E229D4:
	ldr r4, _08E22A38 @ =0x000002B2
	adds r1, r5, r4
	movs r0, #3
_08E229DA:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08E227D0
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E22A00
	adds r0, r5, #4
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08E218EC
_08E22A00:
	ldr r0, _08E22A3C @ =0x000002AE
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E22A26
	ldr r0, _08E22A40 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E22A44 @ =gUnk_020027F9
	str r0, [r1, #8]
	ldrb r0, [r4]
	movs r1, #0x10
	eors r0, r1
	movs r1, #0x20
	eors r0, r1
	strb r0, [r4]
_08E22A26:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E22A38: .4byte 0x000002B2
_08E22A3C: .4byte 0x000002AE
_08E22A40: .4byte gUnk_03002560
_08E22A44: .4byte gUnk_020027F9

	thumb_func_start sub_08E22A48
sub_08E22A48: @ 0x08E22A48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E22A68 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E22A6C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E22A70
	.align 2, 0
_08E22A68: .4byte gUnk_03002560
_08E22A6C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E22A70:
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
	beq _08E22ADC
	adds r0, #8
	str r0, [r4, #0x2c]
	adds r0, r5, #4
	str r0, [r4, #0x30]
	ldr r0, _08E22AD8 @ =0x000002B1
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
	b _08E22B0E
	.align 2, 0
_08E22AD8: .4byte 0x000002B1
_08E22ADC:
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
	ldr r2, _08E22B28 @ =0x000002B1
	adds r1, r4, r2
	ldrb r0, [r1]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	mov r7, r8
_08E22B0E:
	strb r0, [r7]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E22B30
	ldr r2, _08E22B2C @ =0x000002B2
	adds r1, r4, r2
	movs r0, #1
	b _08E22B36
	.align 2, 0
_08E22B28: .4byte 0x000002B1
_08E22B2C: .4byte 0x000002B2
_08E22B30:
	ldr r3, _08E22BB8 @ =0x000002B2
	adds r1, r4, r3
	movs r0, #3
_08E22B36:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08E227D0
	movs r7, #0xab
	lsls r7, r7, #2
	adds r5, r4, r7
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E22B5C
	adds r0, r4, #4
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_08E218EC
_08E22B5C:
	ldr r0, _08E22BBC @ =0x000002AE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E22C18
	ldrb r0, [r5]
	movs r1, #0x10
	ands r1, r0
	ldr r2, _08E22BC0 @ =gUnk_03002560
	mov ip, r2
	ldrh r2, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x5c
	adds r6, r4, #0
	adds r6, #0xa0
	adds r7, r4, #0
	adds r7, #0xe4
	ldr r0, _08E22BC4 @ =gUnk_020027F9
	mov r8, r0
	cmp r1, #0
	beq _08E22BCC
	ldr r1, _08E22BC8 @ =0x0000F83F
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
	b _08E22BF0
	.align 2, 0
_08E22BB8: .4byte 0x000002B2
_08E22BBC: .4byte 0x000002AE
_08E22BC0: .4byte gUnk_03002560
_08E22BC4: .4byte gUnk_020027F9
_08E22BC8: .4byte 0x0000F83F
_08E22BCC:
	ldr r1, _08E22C24 @ =0x0000F83F
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
_08E22BF0:
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
_08E22C18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E22C24: .4byte 0x0000F83F

	thumb_func_start sub_08E22C28
sub_08E22C28: @ 0x08E22C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E22C50 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E22C54 @ =gUnk_0200D74C
	cmp r0, #0
	beq _08E22C58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E22C5C
	.align 2, 0
_08E22C50: .4byte gUnk_03002560
_08E22C54: .4byte gUnk_0200D74C
_08E22C58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E22C5C:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E22E70 @ =0x000002AD
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
	ldr r0, _08E22E74 @ =0x0000F83F
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
	ldr r1, _08E22E78 @ =0x000002B1
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	ldr r2, _08E22E7C @ =0x00000133
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
	ldr r1, _08E22E74 @ =0x0000F83F
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
	ldr r1, _08E22E74 @ =0x0000F83F
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
	ldr r1, _08E22E74 @ =0x0000F83F
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
	ldr r1, _08E22E74 @ =0x0000F83F
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
	ldr r3, _08E22E74 @ =0x0000F83F
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
	bne _08E22E84
	ldr r3, _08E22E80 @ =0x000002B2
	adds r1, r7, r3
	movs r0, #1
	b _08E22E9A
	.align 2, 0
_08E22E70: .4byte 0x000002AD
_08E22E74: .4byte 0x0000F83F
_08E22E78: .4byte 0x000002B1
_08E22E7C: .4byte 0x00000133
_08E22E80: .4byte 0x000002B2
_08E22E84:
	cmp r0, #1
	bne _08E22E94
	ldr r0, _08E22E90 @ =0x000002B2
	adds r1, r7, r0
	movs r0, #3
	b _08E22E9A
	.align 2, 0
_08E22E90: .4byte 0x000002B2
_08E22E94:
	ldr r2, _08E22F04 @ =0x000002B2
	adds r1, r7, r2
	movs r0, #5
_08E22E9A:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E227D0
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E22ED0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E218EC
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E218EC
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E218EC
_08E22ED0:
	ldr r0, _08E22F08 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E22EF2
	ldr r0, _08E22F0C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E22F10 @ =gUnk_020027F9
	str r0, [r1, #8]
	ldrb r1, [r5, #1]
	ldr r2, _08E22F14 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E22EF2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E22F04: .4byte 0x000002B2
_08E22F08: .4byte 0x000002AE
_08E22F0C: .4byte gUnk_03002560
_08E22F10: .4byte gUnk_020027F9
_08E22F14: .4byte 0x000002AD

	thumb_func_start sub_08E22F18
sub_08E22F18: @ 0x08E22F18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E22F40 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E22F44 @ =gUnk_0200D74C
	cmp r0, #0
	beq _08E22F48
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E22F4C
	.align 2, 0
_08E22F40: .4byte gUnk_03002560
_08E22F44: .4byte gUnk_0200D74C
_08E22F48:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E22F4C:
	adds r0, r1, r0
	adds r7, r0, #0
	ldr r1, _08E2315C @ =0x000002AD
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
	ldr r5, _08E23160 @ =0x0000F83F
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
	ldr r1, _08E23164 @ =0x000002B1
	adds r5, r7, r1
	ldrb r1, [r5]
	ldr r2, _08E23168 @ =0x00000133
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
	bne _08E23170
	ldr r2, _08E2316C @ =0x000002B2
	adds r1, r7, r2
	movs r0, #1
	b _08E23186
	.align 2, 0
_08E2315C: .4byte 0x000002AD
_08E23160: .4byte 0x0000F83F
_08E23164: .4byte 0x000002B1
_08E23168: .4byte 0x00000133
_08E2316C: .4byte 0x000002B2
_08E23170:
	cmp r0, #1
	bne _08E23180
	ldr r3, _08E2317C @ =0x000002B2
	adds r1, r7, r3
	movs r0, #3
	b _08E23186
	.align 2, 0
_08E2317C: .4byte 0x000002B2
_08E23180:
	ldr r5, _08E231F0 @ =0x000002B2
	adds r1, r7, r5
	movs r0, #5
_08E23186:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08E227D0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08E231BC
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E218EC
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_08E218EC
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08E218EC
_08E231BC:
	ldr r0, _08E231F4 @ =0x000002AE
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _08E231DE
	ldr r0, _08E231F8 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E231FC @ =gUnk_020027F9
	str r0, [r1, #8]
	ldrb r1, [r6, #2]
	ldr r2, _08E23200 @ =0x000002AD
	adds r0, r7, r2
	strb r1, [r0]
_08E231DE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E231F0: .4byte 0x000002B2
_08E231F4: .4byte 0x000002AE
_08E231F8: .4byte gUnk_03002560
_08E231FC: .4byte gUnk_020027F9
_08E23200: .4byte 0x000002AD

	thumb_func_start sub_08E23204
sub_08E23204: @ 0x08E23204
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E2321A
	movs r0, #0
	b _08E2321C
_08E2321A:
	movs r0, #1
_08E2321C:
	pop {r1}
	bx r1

	thumb_func_start sub_08E23220
sub_08E23220: @ 0x08E23220
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r7, r0, #0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _08E232E4 @ =gUnk_0300041C
	adds r1, r7, #0
	adds r1, #0x90
	adds r2, r7, #0
	adds r2, #0x88
	adds r6, r7, #0
	adds r6, #0x8c
	movs r4, #0x92
	adds r4, r4, r7
	mov r8, r4
	movs r4, #0x96
	adds r4, r4, r7
	mov sb, r4
	movs r4, #0x94
	adds r4, r4, r7
	mov sl, r4
	movs r4, #0x98
	adds r4, r4, r7
	mov ip, r4
	adds r4, r7, #0
	adds r4, #0x9a
	str r4, [sp, #0xc]
	adds r4, #2
	str r4, [sp, #0x10]
	adds r4, #2
	str r4, [sp, #0x14]
	adds r4, #2
	str r4, [sp, #0x18]
	adds r4, #0xc
	str r4, [sp, #0x1c]
	subs r4, #6
	str r4, [sp, #0x20]
	adds r4, #2
	str r4, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	adds r4, #3
	str r4, [sp, #0x2c]
	adds r4, #1
	str r4, [sp, #0x30]
	lsls r4, r5, #1
	str r4, [sp, #0x34]
	mov r4, sp
	adds r4, #4
	str r4, [sp, #0x38]
	adds r4, r7, #0
	adds r4, #0x44
	str r4, [sp, #0x3c]
	adds r4, #0x14
	str r4, [sp, #0x40]
	subs r4, #8
	str r4, [sp, #0x44]
	adds r4, #0xe
	str r4, [sp, #0x48]
	subs r4, #4
	str r4, [sp, #0x4c]
	adds r4, #5
	str r4, [sp, #0x50]
	adds r4, #1
	str r4, [sp, #0x54]
	adds r4, #3
	str r4, [sp, #0x58]
	subs r4, #0xf
	str r4, [sp, #0x5c]
	adds r4, #2
	str r4, [sp, #0x60]
	adds r4, #0x1e
	str r4, [sp, #0x64]
	adds r4, #2
	str r4, [sp, #0x68]
	adds r4, #2
	str r4, [sp, #0x6c]
	adds r4, #2
	str r4, [sp, #0x70]
	adds r4, #6
	str r4, [sp, #0x74]
	adds r4, #4
	str r4, [sp, #0x78]
	subs r4, r5, #2
	str r4, [sp, #0x7c]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08E232E8
	movs r0, #0
	b _08E232EA
	.align 2, 0
_08E232E4: .4byte gUnk_0300041C
_08E232E8:
	movs r0, #1
_08E232EA:
	strh r0, [r1]
	movs r4, #0
	str r4, [r2]
	str r4, [r6]
	mov r0, r8
	strb r4, [r0]
	mov r1, sb
	strh r4, [r1]
	mov r2, sl
	strh r4, [r2]
	mov r3, ip
	strh r4, [r3]
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	movs r0, #0x5a
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	movs r0, #1
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	ldr r3, [sp, #0x18]
	strh r0, [r3]
	movs r0, #3
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	strh r4, [r2]
	ldr r3, [sp, #0x24]
	strh r4, [r3]
	ldr r0, [sp, #0x28]
	strh r4, [r0]
	movs r2, #0
	ldr r1, [sp, #0x2c]
	strb r2, [r1]
	ldr r3, [sp, #0x30]
	strh r4, [r3]
	str r4, [sp]
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _08E23460 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E23464 @ =0x06010000
	mov sl, r0
	str r0, [r7]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r0, _08E23468 @ =gUnk_0200E990
	ldrh r1, [r0, #0x34]
	strh r1, [r7, #0xc]
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	ldr r6, _08E2346C @ =gUnk_0200E946
	ldr r3, [sp, #0x34]
	adds r5, r3, r5
	lsls r5, r5, #2
	adds r2, r5, r6
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r7, #0x10]
	adds r1, r6, #2
	adds r1, r5, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov sb, r0
	str r0, [r7, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	str r0, [r7, #0x28]
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r3, [sp, #8]
	str r3, [r7, #0x38]
	str r4, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, _08E23460 @ =0x05000011
	bl sub_08E2C7F0
	mov r0, sl
	str r0, [r7, #0x44]
	movs r0, #0x88
	lsls r0, r0, #3
	ldr r1, [sp, #0x40]
	strh r0, [r1]
	ldr r1, _08E23470 @ =gUnk_0200EC48
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0x44]
	strh r0, [r2]
	ldrb r0, [r1, #0xa]
	ldr r3, [sp, #0x48]
	strb r0, [r3]
	ldr r0, [sp, #0x4c]
	strh r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x50]
	strb r0, [r1]
	mov r3, r8
	ldr r2, [sp, #0x54]
	strb r3, [r2]
	movs r0, #4
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #8
	adds r1, r5, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	ldr r2, [sp, #0x5c]
	strh r0, [r2]
	adds r6, #0xa
	adds r5, r5, r6
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	ldr r3, [sp, #0x60]
	strh r0, [r3]
	mov r0, sb
	str r0, [r7, #0x4c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x6c]
	movs r3, #0
	ldrsh r0, [r5, r3]
	str r0, [r7, #0x70]
	ldr r0, [sp, #0x64]
	strh r4, [r0]
	ldr r1, [sp, #0x68]
	strh r4, [r1]
	mov r3, r8
	ldr r2, [sp, #0x6c]
	strh r3, [r2]
	ldr r0, [sp, #0x70]
	strh r4, [r0]
	ldr r1, [sp, #0x74]
	str r4, [r1]
	ldr r2, [sp, #0x78]
	str r4, [r2]
	ldr r3, [sp, #8]
	str r3, [r7, #0x7c]
	ldr r4, [sp, #0x7c]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E23450
	ldrh r0, [r7, #0x34]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
	ldr r2, [sp, #0x6c]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
_08E23450:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E23460: .4byte 0x05000011
_08E23464: .4byte 0x06010000
_08E23468: .4byte gUnk_0200E990
_08E2346C: .4byte gUnk_0200E946
_08E23470: .4byte gUnk_0200EC48

	thumb_func_start sub_08E23474
sub_08E23474: @ 0x08E23474
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E234CE
	ldr r3, _08E234D4 @ =gUnk_03005868
	ldr r0, [r3]
	ldr r5, _08E234D8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r4, _08E234DC @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r3]
	lsrs r6, r1, #0x10
	movs r0, #0xf
	ands r6, r0
	ldr r2, _08E234E0 @ =gUnk_0200EDC0
	lsls r0, r7, #4
	adds r0, r6, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r2, ip
	adds r2, #0xad
	strb r0, [r2]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r6, r0, #0x10
	movs r0, #3
	ands r6, r0
	ldr r2, _08E234E4 @ =gUnk_0200EDF0
	lsls r0, r6, #1
	lsls r1, r7, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0xae
	strh r1, [r0]
_08E234CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E234D4: .4byte gUnk_03005868
_08E234D8: .4byte 0x00196225
_08E234DC: .4byte 0x3C6EF35F
_08E234E0: .4byte gUnk_0200EDC0
_08E234E4: .4byte gUnk_0200EDF0

	thumb_func_start sub_08E234E8
sub_08E234E8: @ 0x08E234E8
	ldr r1, _08E23504 @ =0x040000D4
	ldr r0, _08E23508 @ =gUnk_0200EFF0
	str r0, [r1]
	ldr r0, _08E2350C @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08E23510 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08E23514 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08E23504: .4byte 0x040000D4
_08E23508: .4byte gUnk_0200EFF0
_08E2350C: .4byte gUnk_03002730
_08E23510: .4byte 0x80000100
_08E23514: .4byte gUnk_030013D0

	thumb_func_start sub_08E23518
sub_08E23518: @ 0x08E23518
	push {r4, lr}
	sub sp, #8
	ldr r0, _08E2357C @ =gUnk_03005868
	movs r3, #0
	str r3, [r0]
	ldr r1, _08E23580 @ =gUnk_03002620
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E23584 @ =gUnk_03001E40
	ldr r0, _08E23588 @ =0x00001C02
	strh r0, [r1]
	ldr r0, _08E2358C @ =0x00001D02
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08E23590 @ =gUnk_03001478
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _08E23594 @ =gUnk_03002610
	movs r2, #8
	strh r2, [r0]
	movs r1, #0x58
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r0, _08E23598 @ =gUnk_02003861
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r2, #0xf8
	ldr r3, _08E2359C @ =gUnk_020056C9
	str r3, [sp]
	movs r3, #0
	bl sub_08E2A5C4
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldrh r1, [r0, #6]
	cmp r4, #0
	beq _08E235A0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E235A4
	.align 2, 0
_08E2357C: .4byte gUnk_03005868
_08E23580: .4byte gUnk_03002620
_08E23584: .4byte gUnk_03001E40
_08E23588: .4byte 0x00001C02
_08E2358C: .4byte 0x00001D02
_08E23590: .4byte gUnk_03001478
_08E23594: .4byte gUnk_03002610
_08E23598: .4byte gUnk_02003861
_08E2359C: .4byte gUnk_020056C9
_08E235A0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E235A4:
	adds r4, r1, r0
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08E2364C @ =0x010002FC
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E23650 @ =gUnk_02012914
	bl sub_08E21E24
	str r0, [r4, #0x14]
	ldr r0, _08E23654 @ =gUnk_02012920
	bl sub_08E21E24
	str r0, [r4, #0x18]
	ldr r0, _08E23658 @ =gUnk_0201292C
	bl sub_08E21E24
	str r0, [r4, #0x1c]
	ldr r0, _08E2365C @ =gUnk_02012938
	bl sub_08E21E24
	str r0, [r4, #0x20]
	ldr r0, _08E23660 @ =gUnk_02012944
	bl sub_08E21E24
	str r0, [r4, #0x24]
	ldr r0, _08E23664 @ =gUnk_02012950
	bl sub_08E21E24
	str r0, [r4, #0x28]
	ldr r0, _08E23668 @ =gUnk_0201295C
	bl sub_08E21E24
	str r0, [r4, #0x2c]
	ldr r0, _08E2366C @ =gUnk_02012968
	bl sub_08E21E24
	str r0, [r4, #0x30]
	ldr r0, _08E23670 @ =gUnk_02012974
	bl sub_08E21E24
	str r0, [r4, #0x34]
	ldr r0, _08E23674 @ =gUnk_02012980
	bl sub_08E21E24
	str r0, [r4, #0x38]
	ldr r0, _08E23678 @ =gUnk_03000404
	ldrb r1, [r0]
	ldr r2, _08E2367C @ =0x000005F4
	adds r0, r4, r2
	strb r1, [r0]
	ldr r2, _08E23680 @ =gUnk_0200E97E
	ldr r3, _08E23684 @ =gUnk_03000428
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x11]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x13]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2364C: .4byte 0x010002FC
_08E23650: .4byte gUnk_02012914
_08E23654: .4byte gUnk_02012920
_08E23658: .4byte gUnk_0201292C
_08E2365C: .4byte gUnk_02012938
_08E23660: .4byte gUnk_02012944
_08E23664: .4byte gUnk_02012950
_08E23668: .4byte gUnk_0201295C
_08E2366C: .4byte gUnk_02012968
_08E23670: .4byte gUnk_02012974
_08E23674: .4byte gUnk_02012980
_08E23678: .4byte gUnk_03000404
_08E2367C: .4byte 0x000005F4
_08E23680: .4byte gUnk_0200E97E
_08E23684: .4byte gUnk_03000428

	thumb_func_start sub_08E23688
sub_08E23688: @ 0x08E23688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B00
	ldr r3, _08E236C0 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E236C4 @ =gUnk_02003BF1
	mov r4, sp
	adds r4, #4
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _08E236C8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E236CC
	.align 2, 0
_08E236C0: .4byte gUnk_03002560
_08E236C4: .4byte gUnk_02003BF1
_08E236C8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E236CC:
	adds r7, r1, r0
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r5, #0
	str r5, [r7]
	str r5, [r7, #4]
	str r5, [r7, #8]
	str r5, [r7, #0xc]
	ldr r1, _08E23830 @ =0x000005EC
	adds r0, r7, r1
	strh r5, [r0]
	ldr r4, _08E23834 @ =0x000005F6
	adds r0, r7, r4
	strh r5, [r0]
	adds r0, r7, #0
	bl sub_08E23850
	adds r0, r7, #0
	adds r0, #0x40
	str r0, [sp, #8]
	adds r4, r7, #0
	adds r4, #8
	ldrb r3, [r7, #0x10]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08E23220
	movs r1, #0xf0
	adds r1, r1, r7
	mov sb, r1
	ldrb r3, [r7, #0x11]
	mov r0, sb
	adds r1, r4, #0
	movs r2, #1
	bl sub_08E23220
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldrb r3, [r7, #0x12]
	adds r1, r4, #0
	movs r2, #2
	bl sub_08E23220
	movs r1, #0x94
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [sp, #0xc]
	ldrb r3, [r7, #0x13]
	adds r0, r1, #0
	adds r1, r4, #0
	movs r2, #3
	bl sub_08E23220
	ldr r0, _08E23838 @ =0x000005F4
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r0, [sp, #8]
	bl sub_08E23474
	ldrb r1, [r4]
	mov r0, sb
	bl sub_08E23474
	ldrb r1, [r4]
	mov r0, r8
	bl sub_08E23474
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	bl sub_08E23474
	str r5, [sp]
	ldr r1, _08E2383C @ =0x00000564
	adds r4, r7, r1
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08E23840 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E23844 @ =0x06010000
	str r0, [r4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, _08E23848 @ =gUnk_0200ED00
	ldrh r6, [r0, #0x10]
	strh r6, [r4, #0xc]
	ldrb r0, [r0, #0x12]
	mov sl, r0
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	mov sb, r1
	mov r1, sb
	strb r1, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x81
	lsls r1, r1, #4
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #4]
	movs r0, #0xb5
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r2, _08E23840 @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E23844 @ =0x06010000
	str r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	mov r0, sl
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	ldr r0, _08E2384C @ =0x0000FFD8
	strh r0, [r4, #0x12]
	mov r1, r8
	str r1, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	bl sub_08E26B4C
	ldr r0, [sp, #8]
	bl sub_08E26C8C
	movs r0, #0x1c
	bl sub_08E2822C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E23830: .4byte 0x000005EC
_08E23834: .4byte 0x000005F6
_08E23838: .4byte 0x000005F4
_08E2383C: .4byte 0x00000564
_08E23840: .4byte 0x05000011
_08E23844: .4byte 0x06010000
_08E23848: .4byte gUnk_0200ED00
_08E2384C: .4byte 0x0000FFD8

	thumb_func_start sub_08E23850
sub_08E23850: @ 0x08E23850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	adds r5, r0, #0
	movs r4, #0
_08E23860:
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r0, _08E239FC @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r7, #0
	movs r2, #0x90
	lsls r2, r2, #3
	mov sl, r2
	mov r2, sl
	strh r2, [r0, #0x14]
	mov r2, sp
	ldr r0, _08E23A00 @ =gUnk_0200ED60
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r7, [r0, #0x16]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08E2AE38
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08E23860
	ldr r1, _08E239FC @ =0x06010000
	str r1, [sp]
	mov r0, sp
	movs r4, #0
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	mov r1, sp
	ldrb r0, [r1, #0x1b]
	orrs r0, r6
	strb r0, [r1, #0x1b]
	mov r0, sp
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r0, #4
	strb r0, [r1, #0x1f]
	mov r0, sp
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r0, r8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08E2AE38
	add r0, sp, #0x28
	ldr r1, _08E239FC @ =0x06010000
	str r1, [sp, #0x28]
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #1
	strh r1, [r0, #0xc]
	movs r5, #7
	strb r5, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r2, r8
	str r2, [r0, #8]
	bl sub_08E2AE38
	add r0, sp, #0x50
	ldr r1, _08E239FC @ =0x06010000
	str r1, [sp, #0x50]
	mov r2, sl
	strh r2, [r0, #0x14]
	movs r1, #2
	strh r1, [r0, #0xc]
	movs r1, #0x12
	strb r1, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08E2AE38
	add r0, sp, #0x78
	ldr r2, _08E239FC @ =0x06010000
	str r2, [sp, #0x78]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	movs r1, #0x11
	strb r1, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08E2AE38
	add r0, sp, #0xa0
	ldr r2, _08E239FC @ =0x06010000
	str r2, [r0]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0xb
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08E2AE38
	add r0, sp, #0xc8
	ldr r2, _08E239FC @ =0x06010000
	str r2, [r0]
	mov r1, sl
	strh r1, [r0, #0x14]
	movs r1, #3
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	strh r7, [r0, #0x16]
	ldrb r1, [r0, #0x1b]
	orrs r1, r6
	strb r1, [r0, #0x1b]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0xc
	strb r1, [r0, #0x1f]
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x12]
	mov r1, r8
	str r1, [r0, #8]
	bl sub_08E2AE38
	ldr r0, _08E23A04 @ =gUnk_0200F414
	ldr r1, _08E23A08 @ =0x0600E000
	ldr r4, _08E23A0C @ =0x04000200
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E23A10 @ =gUnk_0200FC14
	ldr r1, _08E23A14 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E2C7F0
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E239FC: .4byte 0x06010000
_08E23A00: .4byte gUnk_0200ED60
_08E23A04: .4byte gUnk_0200F414
_08E23A08: .4byte 0x0600E000
_08E23A0C: .4byte 0x04000200
_08E23A10: .4byte gUnk_0200FC14
_08E23A14: .4byte 0x0600E800

	thumb_func_start sub_08E23A18
sub_08E23A18: @ 0x08E23A18
	push {r4, lr}
	ldr r3, _08E23A34 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E23A38
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E23A3C
	.align 2, 0
_08E23A34: .4byte gUnk_03002560
_08E23A38:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E23A3C:
	adds r4, r1, r0
	ldr r0, _08E23B00 @ =0x000005F2
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08E23AB0
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r3]
	ldr r0, _08E23B04 @ =gUnk_02003CE1
	str r0, [r1, #8]
	ldr r0, [r4, #0x6c]
	adds r0, #0x18
	str r0, [r4, #0x6c]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x18
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_08E26B30
	adds r0, r4, #0
	adds r0, #0xf0
	movs r1, #0
	bl sub_08E26B30
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	bl sub_08E26B30
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	bl sub_08E26B30
_08E23AB0:
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_08E218EC
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E218EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E23B00: .4byte 0x000005F2
_08E23B04: .4byte gUnk_02003CE1

	thumb_func_start sub_08E23B08
sub_08E23B08: @ 0x08E23B08
	push {r4, lr}
	ldr r3, _08E23B24 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E23B28
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E23B2C
	.align 2, 0
_08E23B24: .4byte gUnk_03002560
_08E23B28:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E23B2C:
	adds r4, r1, r0
	ldr r0, _08E23C20 @ =0x000005F2
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08E23BCE
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r3]
	ldr r0, _08E23C24 @ =gUnk_02003E01
	str r0, [r1, #8]
	bl sub_08E25CC8
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_08E25A14
	adds r1, r4, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xf0
	movs r1, #1
	bl sub_08E25A14
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	bl sub_08E25A14
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #3
	bl sub_08E25A14
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0xd0
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	bl sub_08E25840
_08E23BCE:
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r4, r2
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_08E218EC
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_08E218EC
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E218EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E23C20: .4byte 0x000005F2
_08E23C24: .4byte gUnk_02003E01

	thumb_func_start sub_08E23C28
sub_08E23C28: @ 0x08E23C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08E23C4C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E23C50
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E23C54
	.align 2, 0
_08E23C4C: .4byte gUnk_03002560
_08E23C50:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E23C54:
	adds r0, r1, r0
	adds r7, r0, #0
	bl sub_08E255E0
	ldr r0, [r7]
	ldrh r1, [r0, #0x12]
	movs r2, #0x10
	ands r2, r1
	ldrh r1, [r0, #6]
	adds r6, r7, #0
	adds r6, #0x40
	adds r5, r7, #0
	adds r5, #0x84
	movs r0, #0xf0
	adds r0, r0, r7
	mov r8, r0
	adds r3, r7, #0
	adds r3, #0xdc
	str r3, [sp]
	adds r0, r7, #0
	adds r0, #0xde
	str r0, [sp, #4]
	cmp r2, #0
	beq _08E23C8C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E23C90
_08E23C8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E23C90:
	adds r0, r1, r0
	bl sub_08E262C4
	cmp r0, #0
	bne _08E23C9C
	b _08E23DAA
_08E23C9C:
	ldr r0, [r7]
	cmp r0, #0
	bne _08E23CA4
	b _08E23DAA
_08E23CA4:
	bl sub_08E2A6E0
	movs r1, #0
	mov sb, r1
	str r1, [r7]
	adds r0, r7, #0
	adds r0, #0x80
	ldr r2, _08E23E40 @ =0x00000564
	adds r1, r7, r2
	str r1, [r0]
	str r6, [r1, #0x3c]
	ldrh r2, [r1, #0x34]
	ldr r4, _08E23E44 @ =0x0000FFEF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0x34]
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r1, r7, r3
	str r1, [r5, #0x40]
	str r5, [r1, #0x3c]
	ldrh r2, [r1, #0x34]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0x34]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08E26B30
	mov r0, r8
	movs r1, #1
	bl sub_08E26B30
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #1
	bl sub_08E26B30
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #1
	bl sub_08E26B30
	ldr r0, _08E23E48 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E23E4C @ =gUnk_02004029
	str r0, [r1, #8]
	movs r3, #0xc8
	adds r3, r3, r7
	mov sl, r3
	ldr r0, [r3]
	bl sub_08E2A6E0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0]
	bl sub_08E2A6E0
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r6, r7, r1
	ldr r0, [r6]
	bl sub_08E2A6E0
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r5, r7, r2
	ldr r0, [r5]
	bl sub_08E2A6E0
	mov r3, sb
	mov r0, sl
	str r3, [r0]
	mov r1, r8
	str r3, [r1]
	str r3, [r6]
	str r3, [r5]
	adds r6, r7, #0
	adds r6, #0xd0
	ldrh r1, [r6]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r6]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r7, r2
	ldrh r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r3, r7, r0
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r3]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r7, r1
	ldrh r0, [r2]
	ands r4, r0
	strh r4, [r2]
	ldrh r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r6]
	ldrh r0, [r5]
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #0x10
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3c
	movs r3, #0
	strb r3, [r0]
	bl sub_08E25904
_08E23DAA:
	adds r4, r7, #0
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08E256A4
	movs r0, #0xf0
	adds r0, r0, r7
	mov r8, r0
	movs r1, #1
	bl sub_08E256A4
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r6, r7, r1
	adds r0, r6, #0
	movs r1, #2
	bl sub_08E256A4
	movs r2, #0x94
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	movs r1, #3
	bl sub_08E256A4
	ldr r3, [sp]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r4, #0
	bl sub_08E2596C
	adds r0, r4, #0
	bl sub_08E218EC
	mov r0, r8
	bl sub_08E218EC
	adds r0, r6, #0
	bl sub_08E218EC
	adds r0, r5, #0
	bl sub_08E218EC
	adds r0, r7, #0
	adds r0, #0x84
	bl sub_08E218EC
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08E218EC
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	bl sub_08E218EC
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r7, r3
	bl sub_08E218EC
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E23E40: .4byte 0x00000564
_08E23E44: .4byte 0x0000FFEF
_08E23E48: .4byte gUnk_03002560
_08E23E4C: .4byte gUnk_02004029

	thumb_func_start sub_08E23E50
sub_08E23E50: @ 0x08E23E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08E23E74 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E23E78
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E23E7C
	.align 2, 0
_08E23E74: .4byte gUnk_03002560
_08E23E78:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E23E7C:
	adds r0, r1, r0
	adds r6, r0, #0
	bl sub_08E255E0
	movs r0, #0xe6
	adds r0, r0, r6
	mov sb, r0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08E23EC4
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r3, r6, r1
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E23EC4
	ldr r2, _08E24070 @ =0x00000564
	adds r1, r6, r2
	ldr r2, _08E24074 @ =gUnk_0200ED00
	ldrh r0, [r2, #0x14]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x16]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
_08E23EC4:
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r7, r6, r0
	ldrh r1, [r7]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08E23EFC
	adds r0, r6, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_08E25750
	adds r0, r6, #0
	adds r0, #0xf0
	bl sub_08E25804
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_08E25804
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r6, r2
	bl sub_08E25804
_08E23EFC:
	ldrh r1, [r7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08E23F0C
	b _08E24090
_08E23F0C:
	ldr r2, _08E24078 @ =gUnk_0200E808
	adds r5, r6, #0
	adds r5, #0x3c
	ldrb r0, [r5]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0x6c]
	subs r0, r0, r1
	str r0, [r6, #0x6c]
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r3, r6, r4
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	adds r4, #0xb0
	adds r3, r6, r4
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r1, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	adds r4, #0xb0
	adds r3, r6, r4
	adds r2, #0xb4
	ldrb r0, [r5]
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	ldr r1, _08E2407C @ =gUnk_0200E8F8
	ldrb r0, [r5]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08E23F90
	b _08E244E2
_08E23F90:
	ldrh r1, [r7]
	ldr r0, _08E24080 @ =0x0000FFEF
	ands r0, r1
	movs r4, #0
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #5
	bl sub_08E26B30
	adds r0, r6, #0
	adds r0, #0xf0
	movs r1, #5
	bl sub_08E26B30
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r1, #5
	bl sub_08E26B30
	movs r3, #0x94
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #5
	bl sub_08E26B30
	strb r4, [r5]
	ldr r4, _08E24070 @ =0x00000564
	adds r0, r6, r4
	bl sub_08E218B0
	movs r7, #0xbb
	lsls r7, r7, #3
	adds r5, r6, r7
	mov r0, r8
	strh r0, [r5]
	ldr r1, _08E24084 @ =0x000005DA
	adds r4, r6, r1
	strh r0, [r4]
	movs r2, #0xb5
	lsls r2, r2, #3
	adds r0, r6, r2
	bl sub_08E218B0
	mov r3, r8
	strh r3, [r5]
	strh r3, [r4]
	movs r4, #0xb2
	lsls r4, r4, #3
	adds r1, r6, r4
	ldr r2, [r1]
	adds r0, r6, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r2, [r1]
	movs r7, #0xcc
	lsls r7, r7, #1
	adds r0, r6, r7
	strh r2, [r0]
	ldr r2, [r1]
	movs r3, #0x92
	lsls r3, r3, #2
	adds r0, r6, r3
	strh r2, [r0]
	ldr r1, [r1]
	movs r4, #0xbe
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r1, [r0]
	ldr r7, _08E24088 @ =0x000005D4
	adds r1, r6, r7
	ldr r0, [r1]
	adds r2, r6, #0
	adds r2, #0xea
	strh r0, [r2]
	ldr r0, [r1]
	subs r3, #0xae
	adds r2, r6, r3
	strh r0, [r2]
	ldr r2, [r1]
	subs r4, #0xae
	adds r0, r6, r4
	strh r2, [r0]
	ldr r1, [r1]
	ldr r7, _08E2408C @ =0x000002FA
	adds r0, r6, r7
	strh r1, [r0]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #2
	orrs r0, r2
	strh r0, [r1]
	subs r3, #4
	adds r1, r6, r3
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	subs r4, #4
	adds r1, r6, r4
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	subs r7, #4
	adds r1, r6, r7
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	b _08E244E2
	.align 2, 0
_08E24070: .4byte 0x00000564
_08E24074: .4byte gUnk_0200ED00
_08E24078: .4byte gUnk_0200E808
_08E2407C: .4byte gUnk_0200E8F8
_08E24080: .4byte 0x0000FFEF
_08E24084: .4byte 0x000005DA
_08E24088: .4byte 0x000005D4
_08E2408C: .4byte 0x000002FA
_08E24090:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08E2409A
	b _08E24260
_08E2409A:
	ldr r0, _08E24118 @ =0x000005EC
	adds r1, r6, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x29
	ble _08E24128
	ldr r4, _08E2411C @ =0x00000596
	adds r0, r6, r4
	strh r2, [r0]
	mov r7, sb
	ldrh r1, [r7]
	ldr r0, _08E24120 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r7]
	ldr r4, _08E24124 @ =gUnk_0200E934
	adds r3, r6, #0
	adds r3, #0x3c
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r6, #0x6c]
	adds r0, r0, r1
	str r0, [r6, #0x6c]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r2, r6, r1
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r7, #0x9f
	lsls r7, r7, #2
	adds r2, r6, r7
	ldrb r0, [r3]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08E24138
	.align 2, 0
_08E24118: .4byte 0x000005EC
_08E2411C: .4byte 0x00000596
_08E24120: .4byte 0x0000FFFD
_08E24124: .4byte gUnk_0200E934
_08E24128:
	cmp r0, #0xe
	bgt _08E24132
	ldr r0, [r6, #0xc]
	subs r0, #0x20
	str r0, [r6, #0xc]
_08E24132:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08E24138:
	adds r0, r6, #0
	adds r0, #0xe6
	ldrh r1, [r0]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E24152
	adds r1, r6, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_08E24152:
	movs r1, #0xcb
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E2416E
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_08E2416E:
	ldr r4, _08E24248 @ =0x00000246
	adds r0, r6, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E24188
	movs r7, #0x92
	lsls r7, r7, #2
	adds r1, r6, r7
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_08E24188:
	ldr r1, _08E2424C @ =0x000002F6
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E241A2
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
_08E241A2:
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r6, r3
	adds r0, r6, #0
	adds r0, #0xe8
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [r1]
	ldr r7, _08E24250 @ =0x000005D4
	adds r1, r6, r7
	adds r0, r6, #0
	adds r0, #0xea
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	adds r4, r6, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	cmp r0, #8
	bls _08E241F6
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #2
	bl sub_08E26B30
	adds r0, r6, #0
	adds r0, #0xf0
	movs r1, #2
	bl sub_08E26B30
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r0, r6, r3
	movs r1, #2
	bl sub_08E26B30
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #2
	bl sub_08E26B30
_08E241F6:
	ldrb r0, [r4]
	cmp r0, #0x11
	bhi _08E241FE
	b _08E244E2
_08E241FE:
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08E24254 @ =0x0000FFDF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r3, #0
_08E24212:
	movs r0, #0xb0
	muls r0, r3, r0
	adds r0, r0, r6
	adds r0, #0x84
	ldr r2, _08E24258 @ =gUnk_0200EC48
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xe]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E24212
	ldr r0, _08E2425C @ =0x0000022A
	bl sub_08E2822C
	bl sub_08E26E90
	str r0, [r6]
	movs r0, #4
	movs r1, #1
	bl sub_08E21B00
	b _08E244E2
	.align 2, 0
_08E24248: .4byte 0x00000246
_08E2424C: .4byte 0x000002F6
_08E24250: .4byte 0x000005D4
_08E24254: .4byte 0x0000FFDF
_08E24258: .4byte gUnk_0200EC48
_08E2425C: .4byte 0x0000022A
_08E24260:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08E2426A
	b _08E244E2
_08E2426A:
	bl sub_08E21E00
	cmp r0, #0
	beq _08E24274
	b _08E244E2
_08E24274:
	adds r7, r6, #0
	adds r7, #0xdc
	ldrh r0, [r7]
	adds r3, r6, #0
	adds r3, #0xe4
	strh r0, [r3]
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sl, r1
	ldrh r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #1
	adds r2, r6, r2
	str r2, [sp, #0x14]
	strh r0, [r2]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r4, r4, r6
	mov sb, r4
	ldrh r0, [r4]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x18]
	strh r0, [r1]
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x1c]
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E242D6
	adds r0, r6, #0
	adds r0, #0xee
	ldrh r1, [r0]
	subs r0, #0xe
	strh r1, [r0]
_08E242D6:
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E242F4
	movs r4, #0xcf
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrh r1, [r0]
	subs r4, #0xe
	adds r0, r6, r4
	strh r1, [r0]
_08E242F4:
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E24310
	ldr r4, _08E245E8 @ =0x0000024E
	adds r0, r6, r4
	ldrh r1, [r0]
	subs r4, #0xe
	adds r0, r6, r4
	strh r1, [r0]
_08E24310:
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08E2432E
	ldr r2, _08E245EC @ =0x000002FE
	adds r0, r6, r2
	ldrh r1, [r0]
	movs r4, #0xbc
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r1, [r0]
_08E2432E:
	movs r0, #0
	ldrsh r4, [r3, r0]
	adds r0, r6, #0
	adds r0, #0xe0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	movs r1, #0xa
	bl sub_08E2C848
	adds r1, r0, #0
	cmp r4, #0
	bge _08E2434A
	adds r4, #7
_08E2434A:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	movs r5, #0
	strh r0, [r7]
	ldr r2, [sp, #0x14]
	movs r3, #0
	ldrsh r4, [r2, r3]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	movs r1, #0xa
	bl sub_08E2C848
	adds r1, r0, #0
	cmp r4, #0
	bge _08E24374
	adds r4, #7
_08E24374:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3]
	ldr r0, [sp, #0x18]
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	movs r1, #0xa
	bl sub_08E2C848
	adds r1, r0, #0
	cmp r4, #0
	bge _08E2439E
	adds r4, #7
_08E2439E:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r4, sb
	strh r0, [r4]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	movs r1, #0xa
	bl sub_08E2C848
	adds r1, r0, #0
	cmp r4, #0
	bge _08E243C8
	adds r4, #7
_08E243C8:
	asrs r0, r4, #3
	adds r0, r1, r0
	lsls r0, r0, #3
	mov r4, r8
	strh r0, [r4]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, _08E245F0 @ =0x00001F3F
	cmp r1, r0
	ble _08E243E4
	movs r3, #1
	str r3, [sp, #0x10]
_08E243E4:
	adds r0, r6, #0
	bl sub_08E26BC4
	ldr r0, _08E245F4 @ =gUnk_02010414
	ldr r1, _08E245F8 @ =0x0600E000
	ldr r4, _08E245FC @ =0x04000200
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E24600 @ =gUnk_02010C14
	ldr r1, _08E24604 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r4, _08E24608 @ =gUnk_03002620
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _08E2460C @ =0x0600F000
	ldr r2, _08E24610 @ =0x05000100
	bl sub_08E2C7F0
	ldrh r1, [r4]
	ldr r0, _08E24614 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r4]
	ldr r4, _08E24618 @ =gUnk_03002610
	strh r5, [r4, #0xa]
	ldr r0, _08E2461C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E24620 @ =gUnk_02004881
	str r0, [r1, #8]
	ldr r0, [r6]
	bl sub_08E2A6E0
	str r5, [r6]
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B00
	add r1, sp, #4
	ldrh r0, [r7]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3]
	strh r0, [r1, #2]
	mov r7, sb
	ldrh r0, [r7]
	strh r0, [r1, #4]
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1, #6]
	adds r0, r6, #0
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E2446A
	adds r0, r1, #0
	ldrh r0, [r0]
	subs r0, #0x78
	strh r0, [r1]
_08E2446A:
	movs r3, #0xce
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E24480
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	subs r0, #0x78
	strh r0, [r1, #2]
_08E24480:
	movs r7, #0x93
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E24496
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #4]
	subs r0, #0x78
	strh r0, [r1, #4]
_08E24496:
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E244AC
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #6]
	subs r0, #0x78
	strh r0, [r1, #6]
_08E244AC:
	add r0, sp, #4
	movs r2, #0
	ldrsh r0, [r0, r2]
	add r1, sp, #4
	movs r3, #2
	ldrsh r1, [r1, r3]
	add r2, sp, #4
	movs r7, #4
	ldrsh r2, [r2, r7]
	add r3, sp, #4
	movs r7, #6
	ldrsh r3, [r3, r7]
	ldr r7, [sp, #0x10]
	str r7, [sp]
	bl sub_08E262E4
	str r0, [r6]
	movs r1, #8
	strh r1, [r4]
	movs r0, #0x58
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	strh r0, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
_08E244E2:
	ldr r7, _08E24618 @ =gUnk_03002610
	ldr r0, [r6, #8]
	asrs r0, r0, #3
	movs r2, #8
	subs r0, r2, r0
	mov sl, r0
	mov r0, sl
	strh r0, [r7]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #3
	movs r3, #0x58
	subs r0, r3, r0
	mov sb, r0
	mov r1, sb
	strh r1, [r7, #2]
	ldr r0, [r6, #8]
	asrs r1, r0, #6
	subs r2, r2, r1
	asrs r0, r0, #3
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #4]
	ldr r0, [r6, #0xc]
	asrs r1, r0, #6
	subs r3, r3, r1
	asrs r0, r0, #3
	subs r3, r3, r0
	mov r8, r3
	mov r3, r8
	strh r3, [r7, #6]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08E2456E
	ldr r5, _08E24624 @ =gUnk_03005868
	ldr r0, [r5]
	ldr r4, _08E24628 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _08E2462C @ =0x3C6EF35F
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	movs r3, #7
	ands r1, r3
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r3
	ldr r3, _08E24630 @ =gUnk_0200E976
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov r4, sl
	adds r1, r4, r2
	strh r1, [r7]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r3, sb
	adds r0, r3, r1
	strh r0, [r7, #2]
	add r2, ip
	strh r2, [r7, #4]
	add r1, r8
	strh r1, [r7, #6]
_08E2456E:
	adds r0, r6, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r6, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r4, #0xd0
	lsls r4, r4, #1
	adds r0, r6, r4
	bl sub_08E218EC
	movs r7, #0x94
	lsls r7, r7, #2
	adds r0, r6, r7
	bl sub_08E218EC
	adds r0, r6, #0
	adds r0, #0x84
	bl sub_08E218EC
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_08E218EC
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r6, r2
	bl sub_08E218EC
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r6, r3
	bl sub_08E218EC
	ldr r4, _08E24634 @ =0x000005DC
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E245D8
	movs r7, #0xb5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_08E218EC
	ldr r1, _08E24638 @ =0x00000564
	adds r0, r6, r1
	bl sub_08E218EC
_08E245D8:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E245E8: .4byte 0x0000024E
_08E245EC: .4byte 0x000002FE
_08E245F0: .4byte 0x00001F3F
_08E245F4: .4byte gUnk_02010414
_08E245F8: .4byte 0x0600E000
_08E245FC: .4byte 0x04000200
_08E24600: .4byte gUnk_02010C14
_08E24604: .4byte 0x0600E800
_08E24608: .4byte gUnk_03002620
_08E2460C: .4byte 0x0600F000
_08E24610: .4byte 0x05000100
_08E24614: .4byte 0x0000DFFF
_08E24618: .4byte gUnk_03002610
_08E2461C: .4byte gUnk_03002560
_08E24620: .4byte gUnk_02004881
_08E24624: .4byte gUnk_03005868
_08E24628: .4byte 0x00196225
_08E2462C: .4byte 0x3C6EF35F
_08E24630: .4byte gUnk_0200E976
_08E24634: .4byte 0x000005DC
_08E24638: .4byte 0x00000564

	thumb_func_start sub_08E2463C
sub_08E2463C: @ 0x08E2463C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0xa8
	movs r1, #0
	ldrsh r3, [r4, r1]
	movs r2, #0xaa
	adds r2, r2, r0
	mov ip, r2
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r2, r3, r1
	cmp r2, #0
	bge _08E24658
	subs r2, r1, r3
_08E24658:
	adds r3, r0, #0
	adds r3, #0xa0
	movs r5, #1
	strh r5, [r3]
	movs r6, #0
	ldrsh r1, [r4, r6]
	mov r4, ip
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r1, r0
	ble _08E24678
	cmp r2, #0x30
	bgt _08E246A2
	cmp r2, #0x20
	bgt _08E2469A
	b _08E24690
_08E24678:
	cmp r2, #0
	bne _08E24682
	movs r0, #5
	strh r0, [r3]
	b _08E246A2
_08E24682:
	cmp r2, #0x10
	bgt _08E2468C
	movs r0, #4
	strh r0, [r3]
	b _08E246A2
_08E2468C:
	cmp r2, #0x20
	bgt _08E24696
_08E24690:
	movs r0, #3
	strh r0, [r3]
	b _08E246A2
_08E24696:
	cmp r2, #0x30
	bgt _08E246A0
_08E2469A:
	movs r0, #2
	strh r0, [r3]
	b _08E246A2
_08E246A0:
	strh r5, [r3]
_08E246A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08E246A8
sub_08E246A8: @ 0x08E246A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08E246CC @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E246D0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E246D4
	.align 2, 0
_08E246CC: .4byte gUnk_03002560
_08E246D0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E246D4:
	adds r0, r1, r0
	adds r4, r0, #0
	ldr r2, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	adds r5, r4, #0
	adds r5, #0xdc
	cmp r0, #0
	beq _08E246F2
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E246F6
_08E246F2:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E246F6:
	adds r0, r1, r0
	bl sub_08E266EC
	cmp r0, #0
	bne _08E24702
	b _08E248EE
_08E24702:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E24776
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, _08E24728 @ =0x00001F3F
	cmp r0, r1
	ble _08E2472C
	movs r0, #0x10
	movs r1, #1
	bl sub_08E21B00
	b _08E24768
	.align 2, 0
_08E24728: .4byte 0x00001F3F
_08E2472C:
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r1
	bgt _08E24756
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	bgt _08E24756
	movs r7, #0xbb
	lsls r7, r7, #2
	adds r0, r4, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r1
	ble _08E24760
_08E24756:
	movs r0, #0x10
	movs r1, #1
	bl sub_08E21B90
	b _08E24768
_08E24760:
	movs r0, #0x10
	movs r1, #1
	bl sub_08E21B00
_08E24768:
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E24776:
	bl sub_08E21E00
	str r0, [sp]
	cmp r0, #0
	beq _08E24782
	b _08E248EE
_08E24782:
	ldr r0, [r4]
	bl sub_08E2A6E0
	ldr r7, [sp]
	str r7, [r4]
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _08E24860 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	movs r2, #0
	adds r6, r4, #0
	adds r6, #0xdc
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r5, _08E24864 @ =0x00001F3F
	cmp r0, r5
	ble _08E247AC
	movs r2, #1
_08E247AC:
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r3, r3, r4
	mov r8, r3
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, r5
	ble _08E247BE
	adds r2, #1
_08E247BE:
	movs r0, #0x8f
	lsls r0, r0, #2
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r5
	ble _08E247D0
	adds r2, #1
_08E247D0:
	movs r3, #0xbb
	lsls r3, r3, #2
	adds r3, r3, r4
	mov sl, r3
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, r5
	ble _08E247E2
	adds r2, #1
_08E247E2:
	ldr r3, _08E24868 @ =gUnk_03002620
	ldrh r1, [r3]
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r0, r7, #0
	orrs r1, r0
	strh r1, [r3]
	cmp r2, #0
	beq _08E248E0
	ldr r2, _08E2486C @ =0x000005F2
	adds r0, r4, r2
	mov r7, sp
	ldrh r7, [r7]
	strh r7, [r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, r5
	ble _08E24886
	ldr r0, _08E24870 @ =0x0000FBFF
	ands r1, r0
	strh r1, [r3]
	adds r0, r4, #0
	bl sub_08E24920
	ldr r0, _08E24874 @ =gUnk_03000400
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	ldr r0, _08E24878 @ =gUnk_03002560
	ldr r2, _08E2487C @ =gUnk_02004C05
	cmp r1, #0
	beq _08E24880
	ldr r0, [r0]
	str r2, [r0, #8]
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	mov r3, r8
	ldrh r2, [r3]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	mov r7, sb
	ldrh r2, [r7]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	mov r0, sl
	ldrh r2, [r0]
	b _08E248C6
	.align 2, 0
_08E24860: .4byte 0x0000FFFD
_08E24864: .4byte 0x00001F3F
_08E24868: .4byte gUnk_03002620
_08E2486C: .4byte 0x000005F2
_08E24870: .4byte 0x0000FBFF
_08E24874: .4byte gUnk_03000400
_08E24878: .4byte gUnk_03002560
_08E2487C: .4byte gUnk_02004C05
_08E24880:
	ldr r0, [r0]
	str r2, [r0, #8]
	b _08E248EE
_08E24886:
	ldr r0, _08E248D8 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E248DC @ =gUnk_02004C05
	str r0, [r1, #8]
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	mov r1, r8
	ldrh r2, [r1]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	mov r3, sb
	ldrh r2, [r3]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	mov r7, sl
	ldrh r2, [r7]
_08E248C6:
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	b _08E248EE
	.align 2, 0
_08E248D8: .4byte gUnk_03002560
_08E248DC: .4byte gUnk_02004C05
_08E248E0:
	adds r0, r4, #0
	bl sub_08E24C20
	ldr r0, _08E24914 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E24918 @ =gUnk_02004F6D
	str r0, [r1, #8]
_08E248EE:
	adds r0, r4, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08E2491C @ =0x00001F3F
	cmp r1, r0
	bgt _08E24902
	movs r0, #0
	bl sub_08E26708
_08E24902:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E24914: .4byte gUnk_03002560
_08E24918: .4byte gUnk_02004F6D
_08E2491C: .4byte 0x00001F3F

	thumb_func_start sub_08E24920
sub_08E24920: @ 0x08E24920
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08E249EC @ =gUnk_02011414
	ldr r1, _08E249F0 @ =0x0600E000
	ldr r4, _08E249F4 @ =0x04000200
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E249F8 @ =gUnk_02011C14
	ldr r1, _08E249FC @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r2, _08E24A00 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08E24A04 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08E24A08 @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08E24A0C @ =0x00001C06
	strh r0, [r1]
	ldr r0, _08E24A10 @ =0x00001D06
	strh r0, [r1, #2]
	ldr r0, _08E24A14 @ =gUnk_03002610
	movs r1, #8
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _08E24A18 @ =0x000005F2
	add r0, r8
	strh r2, [r0]
	movs r7, #0
_08E2496E:
	movs r5, #0
	str r5, [sp]
	lsls r4, r7, #4
	adds r4, r4, r7
	lsls r4, r4, #2
	movs r6, #0x82
	lsls r6, r6, #3
	adds r1, r4, r6
	add r1, r8
	mov r0, sp
	ldr r2, _08E24A1C @ =0x05000011
	bl sub_08E2C7F0
	add r4, r8
	adds r4, r4, r6
	ldr r0, _08E24A20 @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08E24A24 @ =gUnk_0200EC78
	ldrh r0, [r1, #4]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #6]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r1, _08E24A28 @ =gUnk_0200EC90
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r1, [r4, #0x28]
	str r5, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	strh r2, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08E2496E
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E249EC: .4byte gUnk_02011414
_08E249F0: .4byte 0x0600E000
_08E249F4: .4byte 0x04000200
_08E249F8: .4byte gUnk_02011C14
_08E249FC: .4byte 0x0600E800
_08E24A00: .4byte gUnk_03002620
_08E24A04: .4byte 0x0000FBFF
_08E24A08: .4byte gUnk_03001E40
_08E24A0C: .4byte 0x00001C06
_08E24A10: .4byte 0x00001D06
_08E24A14: .4byte gUnk_03002610
_08E24A18: .4byte 0x000005F2
_08E24A1C: .4byte 0x05000011
_08E24A20: .4byte 0x06010000
_08E24A24: .4byte gUnk_0200EC78
_08E24A28: .4byte gUnk_0200EC90

	thumb_func_start sub_08E24A2C
sub_08E24A2C: @ 0x08E24A2C
	push {r4, r5, r6, lr}
	ldr r0, _08E24A48 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E24A4C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E24A50
	.align 2, 0
_08E24A48: .4byte gUnk_03002560
_08E24A4C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E24A50:
	adds r0, r1, r0
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xdc
	ldrh r2, [r6]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E24B00
	bl sub_08E21E00
	cmp r0, #0
	bne _08E24B00
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, _08E24AE0 @ =0x00001F3F
	cmp r1, r0
	ble _08E24AE8
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B00
	ldr r0, _08E24AE4 @ =0x00000231
	bl sub_08E2822C
	b _08E24AF2
	.align 2, 0
_08E24AE0: .4byte 0x00001F3F
_08E24AE4: .4byte 0x00000231
_08E24AE8:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B90
_08E24AF2:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E24B00:
	ldr r2, _08E24B48 @ =0x000005F2
	adds r4, r5, r2
	ldrh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0x78
	ble _08E24B6C
	bl sub_08E21E00
	cmp r0, #0
	bne _08E24B7E
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	ldr r0, _08E24B4C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08E24B50 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08E24B54 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08E24B58 @ =gUnk_03001E40
	ldr r0, _08E24B5C @ =0x00001C02
	strh r0, [r1]
	ldr r0, _08E24B60 @ =0x00001D02
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_08E24C20
	ldr r0, _08E24B64 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E24B68 @ =gUnk_02004F6D
	str r0, [r1, #8]
	b _08E24B7E
	.align 2, 0
_08E24B48: .4byte 0x000005F2
_08E24B4C: .4byte 0x0000FFFD
_08E24B50: .4byte gUnk_03002620
_08E24B54: .4byte 0x0000FBFF
_08E24B58: .4byte gUnk_03001E40
_08E24B5C: .4byte 0x00001C02
_08E24B60: .4byte 0x00001D02
_08E24B64: .4byte gUnk_03002560
_08E24B68: .4byte gUnk_02004F6D
_08E24B6C:
	cmp r1, #0x78
	bne _08E24B7A
	movs r0, #0x10
	movs r1, #1
	bl sub_08E21B00
	ldrh r0, [r4]
_08E24B7A:
	adds r0, #1
	strh r0, [r4]
_08E24B7E:
	ldr r1, _08E24C0C @ =0x000005F2
	adds r4, r5, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x1e
	bne _08E24B90
	ldr r0, _08E24C10 @ =0x00000231
	bl sub_08E2822C
_08E24B90:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	ble _08E24BF0
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r4, _08E24C14 @ =0x00001F3F
	cmp r0, r4
	ble _08E24BFE
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_08E218EC
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	ble _08E24BC2
	ldr r2, _08E24C18 @ =0x00000454
	adds r0, r5, r2
	bl sub_08E218EC
_08E24BC2:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r4
	ble _08E24BDA
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_08E218EC
_08E24BDA:
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	ble _08E24BF0
	ldr r2, _08E24C1C @ =0x000004DC
	adds r0, r5, r2
	bl sub_08E218EC
_08E24BF0:
	adds r0, r5, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08E24C14 @ =0x00001F3F
	cmp r1, r0
	bgt _08E24C04
_08E24BFE:
	movs r0, #0
	bl sub_08E26708
_08E24C04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E24C0C: .4byte 0x000005F2
_08E24C10: .4byte 0x00000231
_08E24C14: .4byte 0x00001F3F
_08E24C18: .4byte 0x00000454
_08E24C1C: .4byte 0x000004DC

	thumb_func_start sub_08E24C20
sub_08E24C20: @ 0x08E24C20
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08E24C94 @ =gUnk_0200F414
	ldr r1, _08E24C98 @ =0x0600E000
	ldr r4, _08E24C9C @ =0x04000200
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E24CA0 @ =gUnk_0200FC14
	ldr r1, _08E24CA4 @ =0x0600E800
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r2, _08E24CA8 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08E24CAC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_08E24CB8
	adds r0, r5, #0
	adds r0, #0xf0
	movs r1, #1
	bl sub_08E24CB8
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #2
	bl sub_08E24CB8
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #3
	bl sub_08E24CB8
	ldr r0, _08E24CB0 @ =gUnk_03002610
	movs r3, #0
	movs r2, #8
	strh r2, [r0]
	movs r1, #0x58
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	ldr r0, _08E24CB4 @ =0x000005F2
	adds r1, r5, r0
	movs r0, #0x1e
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E24C94: .4byte gUnk_0200F414
_08E24C98: .4byte 0x0600E000
_08E24C9C: .4byte 0x04000200
_08E24CA0: .4byte gUnk_0200FC14
_08E24CA4: .4byte 0x0600E800
_08E24CA8: .4byte gUnk_03002620
_08E24CAC: .4byte 0x0000FBFF
_08E24CB0: .4byte gUnk_03002610
_08E24CB4: .4byte 0x000005F2

	thumb_func_start sub_08E24CB8
sub_08E24CB8: @ 0x08E24CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E24D12
	adds r0, r4, #0
	movs r1, #4
	bl sub_08E26B30
	cmp r5, #1
	beq _08E24CF2
	cmp r5, #1
	bgt _08E24CDE
	cmp r5, #0
	beq _08E24CE8
	b _08E24D56
_08E24CDE:
	cmp r5, #2
	beq _08E24CFC
	cmp r5, #3
	beq _08E24D06
	b _08E24D56
_08E24CE8:
	movs r0, #0x78
	str r0, [r4, #0x28]
	movs r0, #0x8a
	lsls r0, r0, #2
	b _08E24D54
_08E24CF2:
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0xc0
	b _08E24D54
_08E24CFC:
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	subs r0, #0x30
	b _08E24D54
_08E24D06:
	movs r0, #0xd2
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	movs r0, #0x8a
	lsls r0, r0, #2
	b _08E24D54
_08E24D12:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08E26B30
	cmp r5, #1
	beq _08E24D36
	cmp r5, #1
	bgt _08E24D28
	cmp r5, #0
	beq _08E24D32
	b _08E24D56
_08E24D28:
	cmp r5, #2
	beq _08E24D40
	cmp r5, #3
	beq _08E24D4A
	b _08E24D56
_08E24D32:
	movs r0, #0x78
	b _08E24D4E
_08E24D36:
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x40
	b _08E24D54
_08E24D40:
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	subs r0, #0xb0
	b _08E24D54
_08E24D4A:
	movs r0, #0xd2
	lsls r0, r0, #2
_08E24D4E:
	str r0, [r4, #0x28]
	movs r0, #0xd4
	lsls r0, r0, #1
_08E24D54:
	str r0, [r4, #0x2c]
_08E24D56:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #6
	strb r0, [r1]
	subs r1, #0x13
	movs r0, #2
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #0x12
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	cmp r5, #1
	beq _08E24D86
	cmp r5, #1
	bgt _08E24D7E
	cmp r5, #0
	beq _08E24D86
	b _08E24D8C
_08E24D7E:
	cmp r5, #2
	beq _08E24D86
	cmp r5, #3
	bne _08E24D8C
_08E24D86:
	movs r0, #0x92
	lsls r0, r0, #2
	str r0, [r4, #0x70]
_08E24D8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E24D94
sub_08E24D94: @ 0x08E24D94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08E24DB4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E24DB8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E24DBC
	.align 2, 0
_08E24DB4: .4byte gUnk_03002560
_08E24DB8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E24DBC:
	adds r0, r1, r0
	adds r4, r0, #0
	bl sub_08E21E00
	cmp r0, #0
	bne _08E24E2C
	movs r0, #8
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B00
	ldr r0, _08E24E4C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E24E50 @ =gUnk_02005141
	str r0, [r1, #8]
	movs r0, #0xbe
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x78
	movs r1, #4
	bl sub_08E271BC
	adds r1, r4, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r1, #4
	bl sub_08E271BC
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #4
	bl sub_08E271BC
	movs r2, #0x8b
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #2
	movs r1, #4
	bl sub_08E271BC
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
_08E24E2C:
	adds r5, r4, #0
	adds r5, #0xec
	ldrb r0, [r5]
	cmp r0, #0
	bne _08E24E60
	adds r0, r4, #0
	adds r0, #0xdc
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08E24E54 @ =0x00001F3F
	cmp r1, r0
	ble _08E24E58
	movs r0, #0x22
	bl sub_08E2822C
	b _08E24E66
	.align 2, 0
_08E24E4C: .4byte gUnk_03002560
_08E24E50: .4byte gUnk_02005141
_08E24E54: .4byte 0x00001F3F
_08E24E58:
	movs r0, #0x13
	bl sub_08E2822C
	b _08E24E66
_08E24E60:
	movs r0, #0x20
	bl sub_08E2822C
_08E24E66:
	adds r0, r4, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	ldrb r2, [r5]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_08E26814
	movs r2, #0xce
	lsls r2, r2, #1
	adds r6, r4, r2
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_08E26814
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r4, r0
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_08E26814
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r1, r1, r4
	mov r8, r1
	ldrb r2, [r1]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_08E26814
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_08E218EC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E218EC
	ldrb r0, [r5]
	cmp r0, #0
	bne _08E24F2A
	adds r0, r4, #0
	adds r0, #0x84
	bl sub_08E218EC
_08E24F2A:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08E24F3A
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	bl sub_08E218EC
_08E24F3A:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08E24F4A
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
_08E24F4A:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _08E24F5C
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08E218EC
_08E24F5C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E24F68
sub_08E24F68: @ 0x08E24F68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08E24F88 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E24F8C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E24F90
	.align 2, 0
_08E24F88: .4byte gUnk_03002560
_08E24F8C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E24F90:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08E21E00
	cmp r0, #0
	bne _08E25076
	ldr r2, [r5, #4]
	cmp r2, #0
	bne _08E24FE2
	ldr r0, _08E24FC0 @ =gUnk_03000470
	ldrh r0, [r0, #0x10]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08E25076
	ldr r0, _08E24FC4 @ =gUnk_03000428
	ldrb r0, [r0]
	ldr r1, _08E24FC8 @ =gUnk_0200E790
	cmp r0, #0
	beq _08E24FCC
	movs r0, #0x32
	str r0, [sp]
	str r3, [sp, #4]
	b _08E24FD2
	.align 2, 0
_08E24FC0: .4byte gUnk_03000470
_08E24FC4: .4byte gUnk_03000428
_08E24FC8: .4byte gUnk_0200E790
_08E24FCC:
	movs r0, #0x32
	str r0, [sp]
	str r2, [sp, #4]
_08E24FD2:
	adds r0, r1, #0
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08E21FFC
	str r0, [r5, #4]
	b _08E25076
_08E24FE2:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E24FF6
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E24FFA
_08E24FF6:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E24FFA:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E23204
	cmp r0, #0
	beq _08E25076
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl sub_08E2A6E0
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08E2A6E0
	movs r2, #0x8b
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_08E2A6E0
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08E2A6E0
	movs r0, #4
	movs r1, #1
	bl sub_08E21B00
	ldr r2, _08E25060 @ =0x000002AD
	adds r0, r4, r2
	ldrb r1, [r0]
	ldr r2, _08E25064 @ =0x000005F4
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	ldr r1, _08E25068 @ =gUnk_03002560
	cmp r0, #0
	beq _08E25070
	ldr r1, [r1]
	ldr r0, _08E2506C @ =gUnk_02005359
	b _08E25074
	.align 2, 0
_08E25060: .4byte 0x000002AD
_08E25064: .4byte 0x000005F4
_08E25068: .4byte gUnk_03002560
_08E2506C: .4byte gUnk_02005359
_08E25070:
	ldr r1, [r1]
	ldr r0, _08E2517C @ =gUnk_020054AD
_08E25074:
	str r0, [r1, #8]
_08E25076:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r2, #0xbb
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_08E26814
	movs r0, #0xce
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_08E26814
	movs r1, #0x93
	lsls r1, r1, #2
	adds r7, r5, r1
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_08E26814
	movs r2, #0xbf
	lsls r2, r2, #2
	adds r2, r2, r5
	mov r8, r2
	ldrb r2, [r2]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_08E26814
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
	movs r2, #0x94
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_08E218EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08E2513E
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_08E218EC
_08E2513E:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08E2514E
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
_08E2514E:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08E2515E
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_08E218EC
_08E2515E:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08E25170
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_08E218EC
_08E25170:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2517C: .4byte gUnk_020054AD

	thumb_func_start sub_08E25180
sub_08E25180: @ 0x08E25180
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08E251A0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E251A4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E251A8
	.align 2, 0
_08E251A0: .4byte gUnk_03002560
_08E251A4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E251A8:
	adds r5, r1, r0
	bl sub_08E21E00
	adds r4, r0, #0
	cmp r4, #0
	bne _08E251C8
	bl sub_08E28360
	ldr r0, _08E252CC @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E252D0 @ =gUnk_02003861
	str r0, [r1, #8]
	ldr r0, [r5, #4]
	bl sub_08E2A6E0
	str r4, [r5, #4]
_08E251C8:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_08E26814
	movs r0, #0xce
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_08E26814
	movs r1, #0x93
	lsls r1, r1, #2
	adds r7, r5, r1
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_08E26814
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	ldrb r2, [r0]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_08E26814
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08E218EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08E25290
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_08E218EC
_08E25290:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08E252A0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
_08E252A0:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08E252B0
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
_08E252B0:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08E252C2
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08E218EC
_08E252C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E252CC: .4byte gUnk_03002560
_08E252D0: .4byte gUnk_02003861

	thumb_func_start sub_08E252D4
sub_08E252D4: @ 0x08E252D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08E252F4 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E252F8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E252FC
	.align 2, 0
_08E252F4: .4byte gUnk_03002560
_08E252F8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E252FC:
	adds r0, r1, r0
	adds r5, r0, #0
	bl sub_08E21E00
	adds r4, r0, #0
	cmp r4, #0
	bne _08E2535E
	ldr r0, [r5, #4]
	bl sub_08E2A6E0
	str r4, [r5, #4]
	ldr r0, _08E25464 @ =gUnk_03000400
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08E25328
	ldr r2, _08E25468 @ =gUnk_03000470
	ldrh r1, [r2, #4]
	ldr r0, _08E2546C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08E25328:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08E21B00
	ldr r2, _08E25470 @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08E25474 @ =gUnk_03002610
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r1, _08E25478 @ =gUnk_03001E40
	ldr r0, _08E2547C @ =0x00001E01
	strh r0, [r1, #4]
	ldr r0, _08E25480 @ =gUnk_02012414
	ldr r1, _08E25484 @ =0x0600F000
	ldr r2, _08E25488 @ =0x04000140
	bl sub_08E2C7F0
	ldr r0, _08E2548C @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E25490 @ =gUnk_0200566D
	str r0, [r1, #8]
_08E2535E:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r2, [r0]
	subs r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	adds r4, r5, #0
	adds r4, #0xec
	ldrb r2, [r4]
	movs r0, #0x1e
	movs r1, #0x30
	bl sub_08E26814
	movs r3, #0xce
	lsls r3, r3, #1
	adds r6, r5, r3
	ldrb r2, [r6]
	movs r0, #0x5a
	movs r1, #0x30
	bl sub_08E26814
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r5, r0
	ldrb r2, [r7]
	movs r0, #0x96
	movs r1, #0x30
	bl sub_08E26814
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r1, r1, r5
	mov r8, r1
	ldrb r2, [r1]
	movs r0, #0xd2
	movs r1, #0x30
	bl sub_08E26814
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0xf0
	bl sub_08E218EC
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r0, r5, r3
	bl sub_08E218EC
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08E218EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08E25426
	adds r0, r5, #0
	adds r0, #0x84
	bl sub_08E218EC
_08E25426:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08E25436
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r5, r3
	bl sub_08E218EC
_08E25436:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08E25446
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
_08E25446:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _08E25458
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08E218EC
_08E25458:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E25464: .4byte gUnk_03000400
_08E25468: .4byte gUnk_03000470
_08E2546C: .4byte 0x0000FFFD
_08E25470: .4byte gUnk_03002620
_08E25474: .4byte gUnk_03002610
_08E25478: .4byte gUnk_03001E40
_08E2547C: .4byte 0x00001E01
_08E25480: .4byte gUnk_02012414
_08E25484: .4byte 0x0600F000
_08E25488: .4byte 0x04000140
_08E2548C: .4byte gUnk_03002560
_08E25490: .4byte gUnk_0200566D

	thumb_func_start sub_08E25494
sub_08E25494: @ 0x08E25494
	push {lr}
	bl sub_08E21E00
	cmp r0, #0
	bne _08E254A2
	bl sub_08E20194
_08E254A2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E254A8
sub_08E254A8: @ 0x08E254A8
	push {lr}
	ldr r3, _08E254C4 @ =gUnk_03002560
	ldr r2, [r3]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E254C8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E254CC
	.align 2, 0
_08E254C4: .4byte gUnk_03002560
_08E254C8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E254CC:
	adds r0, r1, r0
	ldr r1, _08E254EC @ =0x000005F6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _08E254E6
	ldr r0, [r3]
	bl sub_08E2A6E0
_08E254E6:
	pop {r0}
	bx r0
	.align 2, 0
_08E254EC: .4byte 0x000005F6

	thumb_func_start sub_08E254F0
sub_08E254F0: @ 0x08E254F0
	push {r4, r5, lr}
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E25508
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r5, r1, r0
	b _08E2550E
_08E25508:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
_08E2550E:
	ldr r0, [r5, #0x14]
	bl sub_08E2A6E0
	movs r4, #0
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl sub_08E2A6E0
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl sub_08E2A6E0
	str r4, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	bl sub_08E2A6E0
	str r4, [r5, #0x20]
	ldr r0, [r5, #0x24]
	bl sub_08E2A6E0
	str r4, [r5, #0x24]
	ldr r0, [r5, #0x28]
	bl sub_08E2A6E0
	str r4, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	bl sub_08E2A6E0
	str r4, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	bl sub_08E2A6E0
	str r4, [r5, #0x30]
	ldr r0, [r5, #0x34]
	bl sub_08E2A6E0
	str r4, [r5, #0x34]
	ldr r0, [r5, #0x38]
	bl sub_08E2A6E0
	str r4, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E25568
sub_08E25568: @ 0x08E25568
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	ldr r2, _08E255B4 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08E255B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E255BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #0xf
	ands r2, r0
	adds r4, r3, #0
	adds r4, #0x90
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E255C4
	adds r0, r3, #0
	adds r0, #0x9e
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, #0xad
	ldrb r1, [r3]
	cmp r0, r1
	bne _08E255D2
	ldr r0, _08E255C0 @ =gUnk_0200EDC0
	lsls r1, r5, #4
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r3]
	movs r6, #1
	b _08E255D2
	.align 2, 0
_08E255B4: .4byte gUnk_03005868
_08E255B8: .4byte 0x00196225
_08E255BC: .4byte 0x3C6EF35F
_08E255C0: .4byte gUnk_0200EDC0
_08E255C4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E255D2
	ldr r0, _08E255DC @ =0x0000FFDF
	ands r0, r1
	strh r0, [r4]
_08E255D2:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E255DC: .4byte 0x0000FFDF

	thumb_func_start sub_08E255E0
sub_08E255E0: @ 0x08E255E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r3, #0
_08E255F0:
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r0, r3
	ldrb r0, [r0]
	mov ip, r0
	movs r0, #0xb0
	adds r4, r3, #0
	muls r4, r0, r4
	adds r2, r7, r4
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	adds r6, #0xd6
	adds r5, r2, #0
	adds r5, #0xd8
	movs r1, #0xd4
	adds r1, r1, r2
	mov r8, r1
	adds r2, #0xda
	mov sb, r2
	adds r3, #1
	str r3, [sp]
	cmp r0, #0
	beq _08E25658
	ldrh r0, [r6]
	movs r2, #0
	mov sl, r2
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r7, r0
	ldr r3, _08E25654 @ =0x000005F4
	adds r1, r7, r3
	ldrb r1, [r1]
	bl sub_08E25568
	strh r0, [r6]
	ldrh r1, [r5]
	eors r1, r0
	ands r1, r0
	mov r0, r8
	strh r1, [r0]
	mov r2, sl
	mov r1, sb
	strh r2, [r1]
	b _08E25684
	.align 2, 0
_08E25654: .4byte 0x000005F4
_08E25658:
	ldrh r0, [r6]
	strh r0, [r5]
	ldr r2, _08E256A0 @ =gUnk_03000470
	mov r3, ip
	lsls r1, r3, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r6]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x18
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, sb
	strh r0, [r1]
_08E25684:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08E255F0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E256A0: .4byte gUnk_03000470

	thumb_func_start sub_08E256A4
sub_08E256A4: @ 0x08E256A4
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x92
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E256CC
	subs r0, #1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E25748
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	b _08E25748
_08E256CC:
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E25712
	adds r2, r3, #0
	adds r2, #0x9c
	adds r0, r3, #0
	adds r0, #0x9e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc8
	lsls r1, r1, #3
	cmp r0, r1
	ble _08E25700
	strh r1, [r2]
_08E25700:
	movs r0, #0x2d
	mov r4, ip
	strb r0, [r4]
	adds r2, r3, #0
	adds r2, #0xa6
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
_08E25712:
	adds r2, r3, #0
	adds r2, #0xa6
	ldrh r1, [r2]
	movs r4, #1
	movs r0, #1
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x9e
	cmp r0, #0
	beq _08E25734
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08E25748
	b _08E25742
_08E25734:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _08E25748
_08E25742:
	ldrh r0, [r2]
	eors r0, r4
	strh r0, [r2]
_08E25748:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E25750
sub_08E25750: @ 0x08E25750
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0xa6
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E257F8
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E257F8
	adds r0, r4, #0
	bl sub_08E2463C
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _08E25790
	ldr r0, _08E2578C @ =0x00000229
	bl sub_08E2822C
	b _08E25798
	.align 2, 0
_08E2578C: .4byte 0x00000229
_08E25790:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl sub_08E2822C
_08E25798:
	movs r0, #0xb3
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	ldr r0, _08E257D4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	movs r0, #4
	orrs r0, r1
	ldr r1, _08E257D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6]
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r2, _08E257DC @ =0x000005D4
	adds r1, r5, r2
	ldr r2, [r0]
	ldr r0, [r1]
	ldr r3, _08E257E0 @ =gUnk_0200ED00
	cmp r2, r0
	beq _08E257E8
	ldr r0, _08E257E4 @ =0x00000564
	adds r1, r5, r0
	ldrh r0, [r3, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1a]
	b _08E257F2
	.align 2, 0
_08E257D4: .4byte 0x0000F7FF
_08E257D8: .4byte 0x0000FFFD
_08E257DC: .4byte 0x000005D4
_08E257E0: .4byte gUnk_0200ED00
_08E257E4: .4byte 0x00000564
_08E257E8:
	ldr r2, _08E25800 @ =0x00000564
	adds r1, r5, r2
	ldrh r0, [r3, #0x1c]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1e]
_08E257F2:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
_08E257F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E25800: .4byte 0x00000564

	thumb_func_start sub_08E25804
sub_08E25804: @ 0x08E25804
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xa6
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E25836
	adds r0, r2, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E25836
	adds r0, r2, #0
	bl sub_08E2463C
	ldrh r0, [r4]
	movs r1, #4
	orrs r1, r0
	ldr r0, _08E2583C @ =0x0000FFFD
	ands r1, r0
	strh r1, [r4]
_08E25836:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2583C: .4byte 0x0000FFFD

	thumb_func_start sub_08E25840
sub_08E25840: @ 0x08E25840
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _08E258BC @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08E258C0 @ =0x00001E0D
	strh r0, [r1, #4]
	ldr r1, _08E258C4 @ =gUnk_03002610
	strh r2, [r1, #8]
	ldr r0, _08E258C8 @ =0x0000FFBA
	strh r0, [r1, #0xa]
	ldr r2, _08E258CC @ =gUnk_03002620
	ldrh r0, [r2]
	movs r3, #0x90
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E258D0 @ =gUnk_03001E00
	ldr r0, _08E258D4 @ =0x00001018
	strh r0, [r1]
	adds r0, #0x20
	strh r0, [r1, #4]
	movs r0, #4
	strh r0, [r1, #8]
	movs r0, #0x3b
	strh r0, [r1, #0xa]
	ldr r0, _08E258D8 @ =0x22222222
	str r0, [sp]
	ldr r1, _08E258DC @ =0x0600C000
	ldr r4, _08E258E0 @ =0x05000008
	mov r0, sp
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E258E4 @ =0x11111111
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _08E258E8 @ =0x0600C020
	adds r2, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E258EC @ =0xF001F001
	str r0, [sp, #8]
	ldr r1, _08E258F0 @ =0x040000D4
	add r3, sp, #8
	str r3, [r1]
	ldr r0, _08E258F4 @ =0x0600F000
	str r0, [r1, #4]
	ldr r2, _08E258F8 @ =0x85000100
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08E258FC @ =0xF000F000
	str r0, [sp, #8]
	str r3, [r1]
	ldr r0, _08E25900 @ =0x0600F400
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E258BC: .4byte gUnk_03001E40
_08E258C0: .4byte 0x00001E0D
_08E258C4: .4byte gUnk_03002610
_08E258C8: .4byte 0x0000FFBA
_08E258CC: .4byte gUnk_03002620
_08E258D0: .4byte gUnk_03001E00
_08E258D4: .4byte 0x00001018
_08E258D8: .4byte 0x22222222
_08E258DC: .4byte 0x0600C000
_08E258E0: .4byte 0x05000008
_08E258E4: .4byte 0x11111111
_08E258E8: .4byte 0x0600C020
_08E258EC: .4byte 0xF001F001
_08E258F0: .4byte 0x040000D4
_08E258F4: .4byte 0x0600F000
_08E258F8: .4byte 0x85000100
_08E258FC: .4byte 0xF000F000
_08E25900: .4byte 0x0600F400

	thumb_func_start sub_08E25904
sub_08E25904: @ 0x08E25904
	push {lr}
	sub sp, #4
	ldr r2, _08E25944 @ =gUnk_03002620
	ldrh r1, [r2]
	ldr r0, _08E25948 @ =0x0000DBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08E2594C @ =gUnk_03001E40
	movs r2, #0
	ldr r0, _08E25950 @ =0x00001E01
	strh r0, [r1, #4]
	ldr r0, _08E25954 @ =gUnk_03002610
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	str r2, [sp]
	ldr r1, _08E25958 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E2595C @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _08E25960 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	ldr r1, _08E25964 @ =gUnk_03001E00
	ldr r2, _08E25968 @ =0x05000001
	mov r0, sp
	bl sub_08E2C7F0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E25944: .4byte gUnk_03002620
_08E25948: .4byte 0x0000DBFF
_08E2594C: .4byte gUnk_03001E40
_08E25950: .4byte 0x00001E01
_08E25954: .4byte gUnk_03002610
_08E25958: .4byte 0x040000D4
_08E2595C: .4byte 0x0600F000
_08E25960: .4byte 0x85000200
_08E25964: .4byte gUnk_03001E00
_08E25968: .4byte 0x05000001

	thumb_func_start sub_08E2596C
sub_08E2596C: @ 0x08E2596C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08E2C848
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x10
	bls _08E25988
	movs r4, #0x10
_08E25988:
	ldr r0, _08E259C8 @ =gUnk_03002610
	lsls r1, r5, #0x10
	asrs r3, r1, #0x10
	adds r1, r3, #0
	subs r1, #0x38
	strh r1, [r0, #0xa]
	cmp r3, #0x27
	ble _08E2599A
	movs r4, #0x11
_08E2599A:
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E259DC
	adds r2, r6, #0
	adds r2, #0xa6
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E259DC
	ldr r0, _08E259CC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0x27
	ble _08E259D4
	ldr r0, _08E259D0 @ =0x00000229
	bl sub_08E2822C
	b _08E259DC
	.align 2, 0
_08E259C8: .4byte gUnk_03002610
_08E259CC: .4byte 0x0000FFEF
_08E259D0: .4byte 0x00000229
_08E259D4:
	movs r0, #0x8a
	lsls r0, r0, #2
	bl sub_08E2822C
_08E259DC:
	ldr r2, _08E25A00 @ =0x040000D4
	lsls r0, r4, #1
	ldr r1, _08E25A04 @ =gUnk_0200F1F0
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08E25A08 @ =gUnk_03002912
	str r0, [r2, #4]
	ldr r0, _08E25A0C @ =0x80000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E25A10 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E25A00: .4byte 0x040000D4
_08E25A04: .4byte gUnk_0200F1F0
_08E25A08: .4byte gUnk_03002912
_08E25A0C: .4byte 0x80000001
_08E25A10: .4byte gUnk_030013D0

	thumb_func_start sub_08E25A14
sub_08E25A14: @ 0x08E25A14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	ldr r0, _08E25A54 @ =gUnk_02005D8D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl sub_08E2A5C4
	mov sb, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov r2, sb
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E25A58
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E25A5C
	.align 2, 0
_08E25A54: .4byte gUnk_02005D8D
_08E25A58:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E25A5C:
	adds r0, r1, r0
	adds r4, r0, #0
	mov r0, sl
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r6, #0
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r4, #0x48]
	str r6, [r4, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, r4, #4
	adds r7, r4, #0
	adds r7, #0x20
	movs r2, #0x23
	adds r2, r2, r4
	mov r8, r2
	ldr r0, [sp, #8]
	subs r0, #2
	str r0, [sp, #0xc]
	adds r2, r4, #0
	adds r2, #0x58
	str r2, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _08E25B18
	str r6, [sp, #4]
	ldr r2, _08E25B0C @ =0x05000011
	add r0, sp, #4
	bl sub_08E2C7F0
	ldr r0, _08E25B10 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r1, _08E25B14 @ =gUnk_0200EA38
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x10]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #5
	mov r1, r8
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
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08E25B6E
	.align 2, 0
_08E25B0C: .4byte 0x05000011
_08E25B10: .4byte 0x06010000
_08E25B14: .4byte gUnk_0200EA38
_08E25B18:
	str r5, [sp, #4]
	ldr r2, _08E25BA8 @ =0x05000011
	add r0, sp, #4
	bl sub_08E2C7F0
	ldr r0, _08E25BAC @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r1, _08E25BB0 @ =gUnk_0200EA38
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x10]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #5
	mov r2, r8
	strb r0, [r2]
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
_08E25B6E:
	mov r1, sl
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E25B86
	ldrh r1, [r4, #0x38]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x38]
_08E25B86:
	mov r0, sl
	str r0, [r4, #0x54]
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	mov r0, sb
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E25BA8: .4byte 0x05000011
_08E25BAC: .4byte 0x06010000
_08E25BB0: .4byte gUnk_0200EA38

	thumb_func_start sub_08E25BB4
sub_08E25BB4: @ 0x08E25BB4
	push {r4, lr}
	ldr r0, _08E25BD0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E25BD4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E25BD8
	.align 2, 0
_08E25BD0: .4byte gUnk_03002560
_08E25BD4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E25BD8:
	adds r0, r1, r0
	adds r3, r0, #0
	ldr r0, [r3, #0x54]
	adds r0, #0x9c
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08E25BFC @ =0x000005DB
	cmp r1, r0
	ble _08E25C00
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r4, #2
	b _08E25C1A
	.align 2, 0
_08E25BFC: .4byte 0x000005DB
_08E25C00:
	ldr r0, _08E25C0C @ =0x000003E7
	cmp r1, r0
	ble _08E25C10
	movs r4, #2
	b _08E25C1A
	.align 2, 0
_08E25C0C: .4byte 0x000003E7
_08E25C10:
	ldr r0, _08E25C74 @ =0x000001F3
	movs r4, #0
	cmp r1, r0
	ble _08E25C1A
	movs r4, #1
_08E25C1A:
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E25C7C
	ldrh r1, [r3, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08E25CB2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x38]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xfe
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r2, _08E25C78 @ =gUnk_0200EA38
	adds r1, r3, #0
	adds r1, #0x58
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	strh r0, [r3, #0x10]
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	strb r0, [r3, #0x1e]
	movs r0, #0xff
	strb r0, [r3, #0x1f]
	b _08E25CB2
	.align 2, 0
_08E25C74: .4byte 0x000001F3
_08E25C78: .4byte gUnk_0200EA38
_08E25C7C:
	adds r2, r3, #0
	adds r2, #0x58
	ldrb r0, [r2]
	cmp r0, r4
	bhs _08E25CB2
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r4, [r2]
	ldr r1, _08E25CC0 @ =gUnk_0200EA38
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	strh r0, [r3, #0x10]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	strb r0, [r3, #0x1e]
	movs r0, #0xff
	strb r0, [r3, #0x1f]
	ldrh r1, [r3, #0x38]
	ldr r0, _08E25CC4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r3, #0x38]
_08E25CB2:
	adds r0, r3, #0
	bl sub_08E21A44
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E25CC0: .4byte gUnk_0200EA38
_08E25CC4: .4byte 0x0000F7FF

	thumb_func_start sub_08E25CC8
sub_08E25CC8: @ 0x08E25CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r0, _08E25D20 @ =gUnk_020062A5
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08E25D24 @ =gUnk_020064B9
	str r3, [sp]
	movs r3, #0
	bl sub_08E2A5C4
	str r0, [sp, #0x24]
	ldrh r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldr r0, [sp, #0x24]
	ldrh r4, [r0, #6]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x2c]
	adds r0, #4
	str r0, [sp, #0x30]
	adds r0, #4
	str r0, [sp, #0x34]
	adds r0, #4
	str r0, [sp, #0x38]
	adds r0, #4
	str r0, [sp, #0x3c]
	adds r0, #4
	str r0, [sp, #0x40]
	adds r0, #4
	str r0, [sp, #0x44]
	cmp r1, #0
	beq _08E25D28
	lsls r1, r4, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r7, r1, r0
	b _08E25D2E
	.align 2, 0
_08E25D20: .4byte gUnk_020062A5
_08E25D24: .4byte gUnk_020064B9
_08E25D28:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
_08E25D2E:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r4, r7, r1
	movs r5, #0
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08E260B4 @ =0x00000111
	adds r0, r0, r7
	mov sl, r0
	strb r5, [r0]
	adds r1, #2
	adds r1, r7, r1
	str r1, [sp, #0x28]
	strb r5, [r1]
	ldr r1, _08E260B8 @ =0x00000113
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E260C0 @ =0x06010000
	str r0, [r7]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r7, #0x14]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	ldr r1, _08E260C4 @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r0, [r0, #0x30]
	strh r0, [r7, #0xc]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0xc
	strb r1, [r7, #0x1f]
	movs r0, #0x68
	strh r0, [r7, #0x10]
	movs r0, #0x10
	strh r0, [r7, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r7, #8]
	movs r6, #0xd0
	lsls r6, r6, #1
	str r6, [r7, #0x28]
	movs r0, #0x40
	str r0, [r7, #0x2c]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	movs r1, #0x10
	strh r1, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r5, [sp, #8]
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [sp, #0x2c]
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E260C0 @ =0x06010000
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _08E260C4 @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _08E260C4 @ =gUnk_0200EAC8
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0xc
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0x74
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x56
	movs r1, #0x10
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x4c]
	movs r0, #0xe8
	lsls r0, r0, #1
	str r0, [r7, #0x6c]
	movs r1, #0x40
	str r1, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	str r5, [sp, #0xc]
	adds r4, r7, #0
	adds r4, #0x88
	ldr r0, [sp, #0x30]
	adds r1, r4, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E260C0 @ =0x06010000
	str r0, [r4]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	ldr r0, _08E260C4 @ =gUnk_0200EAC8
	adds r0, #0x58
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, _08E260C4 @ =gUnk_0200EAC8
	adds r0, #0x5a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xc
	strb r1, [r4, #0x1f]
	movs r0, #0x7e
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x10]
	adds r4, #0x44
	ldr r0, [sp, #0x34]
	adds r1, r4, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E260C0 @ =0x06010000
	str r0, [r4]
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r4, #0x14]
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _08E260C4 @ =gUnk_0200EAC8
	adds r0, r0, r1
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	ldr r1, _08E260C4 @ =gUnk_0200EAC8
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xc
	strb r1, [r4, #0x1f]
	movs r0, #0x8c
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0x8c
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x14]
	adds r0, #0xd8
	adds r4, r7, r0
	ldr r0, [sp, #0x38]
	adds r1, r4, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E260C0 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08E260C8 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x1c]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x1e]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x7a
	strh r0, [r4, #0x10]
	movs r0, #0x10
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0xf4
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	movs r0, #0x40
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x18]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [sp, #0x3c]
	adds r1, r4, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E260C0 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08E260C8 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x10
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, #8]
	movs r0, #0x40
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [sp, #0x40]
	adds r1, r4, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r1, _08E260C0 @ =0x06010000
	str r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r1, _08E260C8 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r1, #0xb
	strb r1, [r4, #0x1f]
	movs r0, #0x30
	strh r0, [r4, #0x10]
	movs r0, #0x12
	mov r8, r0
	mov r1, r8
	strh r1, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xc0
	str r0, [r4, #0x28]
	movs r1, #0x48
	mov sb, r1
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x20]
	adds r6, r7, r6
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	ldr r2, _08E260BC @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E260C0 @ =0x06010000
	str r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	ldr r1, _08E260C8 @ =gUnk_0200EBE8
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #0xb
	strb r1, [r6, #0x1f]
	movs r0, #0x20
	strh r0, [r6, #0x10]
	mov r0, r8
	strh r0, [r6, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r6, #8]
	movs r0, #0x80
	str r0, [r6, #0x28]
	mov r0, sb
	str r0, [r6, #0x2c]
	strh r5, [r6, #0x30]
	strh r5, [r6, #0x32]
	movs r1, #0x10
	strh r1, [r6, #0x34]
	strh r5, [r6, #0x36]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	ldr r0, [sp, #0x24]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E260B4: .4byte 0x00000111
_08E260B8: .4byte 0x00000113
_08E260BC: .4byte 0x05000011
_08E260C0: .4byte 0x06010000
_08E260C4: .4byte gUnk_0200EAC8
_08E260C8: .4byte gUnk_0200EBE8

	thumb_func_start sub_08E260CC
sub_08E260CC: @ 0x08E260CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08E260F0 @ =gUnk_03002560
	mov r8, r0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r7, _08E260F4 @ =gUnk_0200EAC8
	cmp r0, #0
	beq _08E260F8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E260FC
	.align 2, 0
_08E260F0: .4byte gUnk_03002560
_08E260F4: .4byte gUnk_0200EAC8
_08E260F8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E260FC:
	adds r0, r1, r0
	adds r5, r0, #0
	ldr r1, _08E26234 @ =0x00000113
	adds r1, r1, r5
	mov ip, r1
	ldrb r0, [r1]
	adds r1, r0, #1
	mov r2, ip
	strb r1, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _08E26168
	movs r6, #0
	strb r6, [r2]
	movs r0, #0x89
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E26168
	movs r2, #9
	strb r2, [r4]
	ldr r1, _08E26238 @ =0x00000111
	adds r3, r5, r1
	ldrb r0, [r3]
	subs r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E26168
	strb r2, [r3]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08E26168
	strb r6, [r2]
	strb r6, [r3]
	strb r6, [r4]
	movs r0, #0xa
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08E2623C @ =gUnk_02006419
	str r0, [r1, #8]
_08E26168:
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	strh r0, [r5, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, _08E26238 @ =0x00000111
	adds r2, r5, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0, #0x30]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xcc
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0x44
	bl sub_08E218EC
	adds r0, r5, #0
	adds r0, #0x88
	bl sub_08E218EC
	adds r0, r4, #0
	bl sub_08E218EC
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_08E218EC
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08E218EC
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_08E218EC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E26234: .4byte 0x00000113
_08E26238: .4byte 0x00000111
_08E2623C: .4byte gUnk_02006419

	thumb_func_start sub_08E26240
sub_08E26240: @ 0x08E26240
	push {r4, lr}
	ldr r0, _08E2625C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E26260
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26264
	.align 2, 0
_08E2625C: .4byte gUnk_03002560
_08E26260:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26264:
	adds r4, r1, r0
	ldr r0, _08E262C0 @ =0x00000113
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bne _08E26288
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08E26288:
	adds r0, r4, #0
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_08E218EC
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_08E218EC
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08E218EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E262C0: .4byte 0x00000113

	thumb_func_start sub_08E262C4
sub_08E262C4: @ 0x08E262C4
	push {lr}
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E262DA
	movs r0, #0
	b _08E262DC
_08E262DA:
	movs r0, #1
_08E262DC:
	pop {r1}
	bx r1

	thumb_func_start nullsub_61
nullsub_61: @ 0x08E262E0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E262E4
sub_08E262E4: @ 0x08E262E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	ldr r0, _08E26344 @ =gUnk_02006595
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _08E26348 @ =gUnk_020068DD
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl sub_08E2A5C4
	adds r7, r0, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r7, #6]
	mov r2, sb
	lsls r3, r2, #0x10
	mov r2, r8
	lsls r4, r2, #0x10
	lsls r2, r6, #0x10
	mov ip, r2
	lsls r2, r5, #0x10
	mov sl, r2
	cmp r0, #0
	beq _08E2634C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26350
	.align 2, 0
_08E26344: .4byte gUnk_02006595
_08E26348: .4byte gUnk_020068DD
_08E2634C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26350:
	adds r2, r1, r0
	mov r1, sb
	cmp r3, r4
	bge _08E2635A
	mov r1, r8
_08E2635A:
	lsls r0, r1, #0x10
	cmp r0, ip
	bge _08E26362
	adds r1, r6, #0
_08E26362:
	lsls r0, r1, #0x10
	cmp r0, sl
	bge _08E2636A
	adds r1, r5, #0
_08E2636A:
	movs r4, #0
	movs r0, #0
	subs r1, #0x78
	strh r1, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	adds r3, r2, #0
	adds r3, #0x26
	movs r1, #1
	strb r1, [r3]
	strh r0, [r2, #0x28]
	strh r5, [r2]
	strh r0, [r2, #2]
	strb r4, [r2, #4]
	strh r6, [r2, #8]
	strh r0, [r2, #0xa]
	strb r4, [r2, #0xc]
	mov r1, r8
	strh r1, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r4, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0x18]
	strh r0, [r2, #0x1a]
	strb r4, [r2, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08E263AA
	ldrh r0, [r2, #0x24]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x24]
_08E263AA:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08E263BC
sub_08E263BC: @ 0x08E263BC
	push {r4, r5, r6, lr}
	ldr r0, _08E263D8 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E263DC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E263E0
	.align 2, 0
_08E263D8: .4byte gUnk_03002560
_08E263DC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E263E0:
	adds r0, r1, r0
	adds r4, r0, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r2, #0x22
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	asrs r0, r0, #6
	adds r5, r4, #0
	adds r5, #0x26
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _08E26410 @ =gUnk_03002620
	ldr r3, _08E26414 @ =gUnk_03002610
	cmp r0, #0x10
	ble _08E2641C
	movs r0, #0x10
	strb r0, [r5]
	ldrh r1, [r2]
	ldr r0, _08E26418 @ =0x0000FEFF
	ands r0, r1
	b _08E26426
	.align 2, 0
_08E26410: .4byte gUnk_03002620
_08E26414: .4byte gUnk_03002610
_08E26418: .4byte 0x0000FEFF
_08E2641C:
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	orrs r0, r1
_08E26426:
	strh r0, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08E2644A
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _08E26442
	movs r0, #1
	strb r0, [r5]
	b _08E2644A
_08E26442:
	ldrh r1, [r4, #0x24]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x24]
_08E2644A:
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r6, [r3, #2]
	adds r0, r0, r6
	strh r0, [r3, #2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	strh r0, [r3, #6]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r2, [r4, #0x22]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r6, [r3, #0xa]
	adds r0, r0, r6
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _08E2651C
	movs r0, #0
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08E264AC
	ldr r0, _08E2649C @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E264A4
	ldr r0, _08E264A0 @ =0x00000231
	bl sub_08E2822C
	b _08E264AC
	.align 2, 0
_08E2649C: .4byte gUnk_03002620
_08E264A0: .4byte 0x00000231
_08E264A4:
	movs r0, #0x8c
	lsls r0, r0, #2
	bl sub_08E2822C
_08E264AC:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08E264C6
	movs r0, #0x14
	strb r0, [r4, #4]
	b _08E264C8
_08E264C6:
	strb r1, [r4, #4]
_08E264C8:
	movs r6, #8
	ldrsh r0, [r4, r6]
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08E264E2
	movs r0, #0x14
	strb r0, [r4, #0xc]
	b _08E264E4
_08E264E2:
	strb r1, [r4, #0xc]
_08E264E4:
	movs r6, #0x10
	ldrsh r0, [r4, r6]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08E264FE
	movs r0, #0x14
	strb r0, [r4, #0x14]
	b _08E26500
_08E264FE:
	strb r1, [r4, #0x14]
_08E26500:
	movs r6, #0x18
	ldrsh r0, [r4, r6]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08E2651A
	movs r0, #0x14
	strb r0, [r4, #0x1c]
	b _08E2651C
_08E2651A:
	strb r1, [r4, #0x1c]
_08E2651C:
	ldrb r0, [r5]
	bl sub_08E26708
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _08E2653C
	movs r0, #0
	strb r0, [r4, #4]
	ldrh r0, [r4]
	b _08E26540
_08E2653C:
	ldrh r0, [r4, #2]
	adds r0, r0, r2
_08E26540:
	strh r0, [r4, #2]
	movs r6, #8
	ldrsh r1, [r4, r6]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _08E2655C
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	b _08E26560
_08E2655C:
	ldrh r0, [r4, #0xa]
	adds r0, r0, r2
_08E26560:
	strh r0, [r4, #0xa]
	movs r6, #0x10
	ldrsh r1, [r4, r6]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _08E2657C
	movs r0, #0
	strb r0, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	b _08E26580
_08E2657C:
	ldrh r0, [r4, #0x12]
	adds r0, r0, r2
_08E26580:
	strh r0, [r4, #0x12]
	movs r6, #0x18
	ldrsh r1, [r4, r6]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _08E2659C
	movs r0, #0
	strb r0, [r4, #0x1c]
	ldrh r0, [r4, #0x18]
	b _08E265A0
_08E2659C:
	ldrh r0, [r4, #0x1a]
	adds r0, r0, r2
_08E265A0:
	strh r0, [r4, #0x1a]
	ldr r0, _08E26614 @ =gUnk_03000730
	str r4, [r0]
	ldr r3, _08E26618 @ =gUnk_03001400
	ldr r2, _08E2661C @ =gUnk_03005000
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E26620 @ =gUnk_020069B5
	str r1, [r0]
	ldr r2, _08E26624 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r6, #2
	ldrsh r2, [r4, r6]
	movs r0, #0xa
	bl sub_08E268C0
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r6, #0x1a
	ldrsh r2, [r4, r6]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	ldrh r1, [r4, #0x24]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E2660C
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08E2660C
	ldr r0, _08E26628 @ =gUnk_03002560
	ldr r1, [r0]
	ldr r0, _08E2662C @ =gUnk_02006809
	str r0, [r1, #8]
_08E2660C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E26614: .4byte gUnk_03000730
_08E26618: .4byte gUnk_03001400
_08E2661C: .4byte gUnk_03005000
_08E26620: .4byte gUnk_020069B5
_08E26624: .4byte gUnk_030013D0
_08E26628: .4byte gUnk_03002560
_08E2662C: .4byte gUnk_02006809

	thumb_func_start sub_08E26630
sub_08E26630: @ 0x08E26630
	push {r4, lr}
	ldr r0, _08E2664C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	ldr r2, _08E26650 @ =gUnk_03002610
	cmp r0, #0
	beq _08E26654
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26658
	.align 2, 0
_08E2664C: .4byte gUnk_03002560
_08E26650: .4byte gUnk_03002610
_08E26654:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26658:
	adds r4, r1, r0
	ldrh r1, [r4, #0x24]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r2, #6]
	ldrb r0, [r1]
	bl sub_08E26708
	ldr r0, _08E266D8 @ =gUnk_03000730
	str r4, [r0]
	ldr r3, _08E266DC @ =gUnk_03001400
	ldr r2, _08E266E0 @ =gUnk_03005000
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08E266E4 @ =gUnk_020069B5
	str r1, [r0]
	ldr r2, _08E266E8 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xa
	bl sub_08E268C0
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_08E268C0
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_08E268C0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_08E268C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E266D8: .4byte gUnk_03000730
_08E266DC: .4byte gUnk_03001400
_08E266E0: .4byte gUnk_03005000
_08E266E4: .4byte gUnk_020069B5
_08E266E8: .4byte gUnk_030013D0

	thumb_func_start sub_08E266EC
sub_08E266EC: @ 0x08E266EC
	push {lr}
	ldrh r1, [r0, #0x24]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E266FC
	movs r0, #0
	b _08E266FE
_08E266FC:
	movs r0, #1
_08E266FE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_62
nullsub_62: @ 0x08E26704
	bx lr
	.align 2, 0

	thumb_func_start sub_08E26708
sub_08E26708: @ 0x08E26708
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r0, #1
	movs r4, #0xa0
	subs r4, r4, r0
	lsls r4, r4, #1
	ldr r2, _08E2676C @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08E26770 @ =gUnk_03002658
	ldr r0, _08E26774 @ =0x04000018
	str r0, [r1]
	ldr r1, _08E26778 @ =gUnk_03002930
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08E2677C @ =gUnk_03001414
	mov sb, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldr r6, _08E26780 @ =gUnk_03001E3C
	ldr r1, [r6]
	lsrs r2, r4, #1
	ldr r3, _08E26784 @ =0x001FFFFF
	mov r8, r3
	ands r2, r3
	bl sub_08E2C7F0
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r6]
	adds r1, r1, r4
	lsrs r5, r5, #1
	mov r2, r8
	ands r5, r2
	adds r2, r5, #0
	bl sub_08E2C7F0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2676C: .4byte gUnk_030013D0
_08E26770: .4byte gUnk_03002658
_08E26774: .4byte 0x04000018
_08E26778: .4byte gUnk_03002930
_08E2677C: .4byte gUnk_03001414
_08E26780: .4byte gUnk_03001E3C
_08E26784: .4byte 0x001FFFFF

	thumb_func_start sub_08E26788
sub_08E26788: @ 0x08E26788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	lsls r0, r0, #0xb
	ldr r1, _08E267D4 @ =0x06000004
	adds r0, r0, r1
	mov r3, r8
	lsls r1, r3, #4
	adds r5, r0, r1
	movs r6, #0
	adds r7, r2, #5
	cmp r6, r7
	bhs _08E267C8
	rsbs r0, r2, #0
	adds r4, r0, #0
	adds r4, #0x17
_08E267AA:
	mov r1, r8
	lsls r0, r1, #7
	lsls r1, r4, #2
	ldr r2, _08E267D8 @ =gUnk_0200F214
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #2
	bl sub_08E2C7F0
	adds r5, #0x40
	adds r4, #1
	adds r6, #1
	cmp r6, r7
	blo _08E267AA
_08E267C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E267D4: .4byte 0x06000004
_08E267D8: .4byte gUnk_0200F214

	thumb_func_start sub_08E267DC
sub_08E267DC: @ 0x08E267DC
	push {r4, lr}
	ldr r0, _08E26810 @ =gUnk_03000730
	ldr r4, [r0]
	ldrb r2, [r4, #4]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08E26788
	ldrb r2, [r4, #0xc]
	movs r0, #0x1e
	movs r1, #1
	bl sub_08E26788
	ldrb r2, [r4, #0x14]
	movs r0, #0x1e
	movs r1, #2
	bl sub_08E26788
	ldrb r2, [r4, #0x1c]
	movs r0, #0x1e
	movs r1, #3
	bl sub_08E26788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E26810: .4byte gUnk_03000730

	thumb_func_start sub_08E26814
sub_08E26814: @ 0x08E26814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x48
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	adds r5, r0, #0
	movs r1, #0
	mov r8, r1
	cmp r0, #0
	beq _08E2683E
	lsls r0, r0, #0x15
	movs r1, #0xe0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
_08E2683E:
	movs r4, #0
	str r4, [sp, #0x44]
	add r0, sp, #0x44
	ldr r2, _08E268B4 @ =0x05000011
	mov r1, sp
	bl sub_08E2C7F0
	ldr r0, _08E268B8 @ =0x06010000
	str r0, [sp]
	mov r1, sp
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r2, sp
	ldr r1, _08E268BC @ =gUnk_0200ECA0
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x10]
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r4, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r0, #0xc
	strb r0, [r1, #0x1f]
	mov r0, sp
	lsls r3, r6, #2
	strh r6, [r0, #0x10]
	lsls r1, r7, #2
	add r1, r8
	asrs r0, r1, #2
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	strh r5, [r0, #0x34]
	strh r4, [r0, #0x36]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r4, [sp, #0x40]
	bl sub_08E218EC
	add sp, #0x48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E268B4: .4byte 0x05000011
_08E268B8: .4byte 0x06010000
_08E268BC: .4byte gUnk_0200ECA0

	thumb_func_start sub_08E268C0
sub_08E268C0: @ 0x08E268C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x124
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _08E26B1C @ =0x000003E7
	cmp r7, r0
	bls _08E268EE
	adds r7, r0, #0
_08E268EE:
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r7, #0
	bl sub_08E2C8E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r5, #0x64
	adds r0, r7, #0
	movs r1, #0x64
	bl sub_08E2C8E0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r5, r0
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08E2C8E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	mov r8, r1
	add r0, r8
	lsls r0, r0, #1
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r0, sp, #0x110
	movs r5, #0
	str r5, [r0]
	add r6, sp, #0xcc
	adds r1, r6, #0
	ldr r2, _08E26B20 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E26B24 @ =0x06010000
	str r2, [r6]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	lsls r4, r4, #2
	ldr r1, _08E26B28 @ =gUnk_0200EAC8
	adds r4, r4, r1
	ldrh r0, [r4, #0x30]
	strh r0, [r6, #0xc]
	adds r4, #0x32
	ldrb r0, [r4]
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r2, #0x10
	strb r2, [r6, #0x1c]
	movs r0, #0xc
	strb r0, [r6, #0x1f]
	ldr r1, [sp, #0x120]
	lsls r0, r1, #2
	strh r1, [r6, #0x10]
	mov r1, sl
	lsls r1, r1, #2
	mov sl, r1
	asrs r1, r1, #2
	mov sb, r1
	strh r1, [r6, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r6, #8]
	str r0, [r6, #0x28]
	mov r0, sl
	str r0, [r6, #0x2c]
	strh r5, [r6, #0x30]
	strh r5, [r6, #0x32]
	movs r1, #0x10
	strh r1, [r6, #0x34]
	strh r5, [r6, #0x36]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	add r0, sp, #0x114
	str r5, [r0]
	add r4, sp, #0x88
	adds r1, r4, #0
	ldr r2, _08E26B20 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E26B24 @ =0x06010000
	str r2, [r4]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, _08E26B28 @ =gUnk_0200EAC8
	add r8, r1
	mov r2, r8
	ldrh r0, [r2, #0x30]
	strh r0, [r4, #0xc]
	movs r0, #0x32
	add r8, r0
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #0xc
	strb r0, [r4, #0x1f]
	ldr r0, [sp, #0x120]
	adds r0, #0xa
	lsls r1, r0, #2
	strh r0, [r4, #0x10]
	mov r2, sb
	strh r2, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r1, [r4, #0x28]
	mov r1, sl
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r2, #0x10
	strh r2, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add r0, sp, #0x118
	str r5, [r0]
	add r1, sp, #0x44
	mov r8, r1
	ldr r2, _08E26B20 @ =0x05000011
	bl sub_08E2C7F0
	ldr r2, _08E26B24 @ =0x06010000
	str r2, [sp, #0x44]
	add r0, sp, #0x58
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0]
	lsls r0, r7, #2
	ldr r2, _08E26B28 @ =gUnk_0200EAC8
	adds r0, r0, r2
	ldrh r2, [r0, #0x30]
	add r1, sp, #0x50
	strh r2, [r1]
	adds r0, #0x32
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x5e
	strb r1, [r0]
	subs r0, #4
	strh r5, [r0]
	mov r1, sp
	adds r1, #0x5f
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	add r0, sp, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r2, #0xc
	strb r2, [r0]
	ldr r1, [sp, #0x120]
	adds r1, #0x14
	lsls r2, r1, #2
	add r0, sp, #0x54
	strh r1, [r0]
	adds r0, #2
	mov r1, sb
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #0x4c]
	str r2, [sp, #0x6c]
	mov r1, sl
	str r1, [sp, #0x70]
	add r0, sp, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	add r0, sp, #0x78
	movs r2, #0x10
	strh r2, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [sp, #0x7c]
	add r0, sp, #0x80
	str r5, [r0]
	add r0, sp, #0x84
	str r5, [r0]
	add r0, sp, #0x11c
	str r5, [r0]
	mov r1, sp
	ldr r2, _08E26B20 @ =0x05000011
	bl sub_08E2C7F0
	ldr r0, _08E26B24 @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	mov r1, sp
	ldr r0, _08E26B28 @ =gUnk_0200EAC8
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldr r2, _08E26B2C @ =gUnk_0200EB26
	ldrb r0, [r2]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r5, [r0, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0xc
	strb r2, [r0, #0x1f]
	mov r1, sp
	ldr r0, [sp, #0x120]
	adds r0, #0x22
	lsls r2, r0, #2
	strh r0, [r1, #0x10]
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0x28]
	mov r1, sl
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r5, [r0, #0x30]
	strh r5, [r0, #0x32]
	movs r2, #0x10
	strh r2, [r0, #0x34]
	strh r5, [r0, #0x36]
	str r5, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x40]
	bl sub_08E218EC
	mov r0, r8
	bl sub_08E218EC
	adds r0, r4, #0
	bl sub_08E218EC
	adds r0, r6, #0
	bl sub_08E218EC
	add sp, #0x124
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E26B1C: .4byte 0x000003E7
_08E26B20: .4byte 0x05000011
_08E26B24: .4byte 0x06010000
_08E26B28: .4byte gUnk_0200EAC8
_08E26B2C: .4byte gUnk_0200EB26

	thumb_func_start sub_08E26B30
sub_08E26B30: @ 0x08E26B30
	lsls r1, r1, #0x18
	ldr r2, _08E26B48 @ =gUnk_0200E990
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	ldrh r2, [r1, #0x1c]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #0x1e]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_08E26B48: .4byte gUnk_0200E990

	thumb_func_start sub_08E26B4C
sub_08E26B4C: @ 0x08E26B4C
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	ldr r1, _08E26B80 @ =gUnk_03002658
	ldr r0, _08E26B84 @ =0x04000018
	str r0, [r1]
	ldr r1, _08E26B88 @ =gUnk_03002930
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08E26B8C @ =gUnk_03001414
	ldr r4, [r0]
	ldr r0, _08E26B90 @ =gUnk_03001E3C
	ldr r1, [r0]
_08E26B66:
	lsrs r0, r2, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r1]
	adds r1, #2
	cmp r3, #9
	bls _08E26BB0
	cmp r3, #0x13
	bls _08E26BB4
	cmp r3, #0x27
	bhi _08E26B94
	adds r2, #2
	b _08E26BB6
	.align 2, 0
_08E26B80: .4byte gUnk_03002658
_08E26B84: .4byte 0x04000018
_08E26B88: .4byte gUnk_03002930
_08E26B8C: .4byte gUnk_03001414
_08E26B90: .4byte gUnk_03001E3C
_08E26B94:
	cmp r3, #0x3b
	bhi _08E26B9C
	subs r2, #2
	b _08E26BB6
_08E26B9C:
	cmp r3, #0x59
	bhi _08E26BA4
	adds r2, #1
	b _08E26BB6
_08E26BA4:
	cmp r3, #0x77
	bhi _08E26BAC
	subs r2, #1
	b _08E26BB6
_08E26BAC:
	cmp r3, #0x8b
	bhi _08E26BB4
_08E26BB0:
	adds r2, #3
	b _08E26BB6
_08E26BB4:
	subs r2, #3
_08E26BB6:
	adds r3, #1
	cmp r3, #0x9f
	bls _08E26B66
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E26BC4
sub_08E26BC4: @ 0x08E26BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r1, sp
	adds r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r1]
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	movs r4, #0xbb
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r5, #0
	mov ip, r5
_08E26BFA:
	movs r7, #0
	mov r8, r7
	mov r7, sp
	mov sb, sp
	mov r2, sp
	mov r0, sp
	ldrh r3, [r0, #6]
	movs r4, #6
	ldrsh r1, [r0, r4]
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08E26C18
	adds r3, r4, #0
_08E26C18:
	mov r0, sb
	ldrh r2, [r0, #2]
	lsls r1, r3, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	bge _08E26C26
	adds r3, r2, #0
_08E26C26:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r7]
	movs r4, #0
	ldrsh r1, [r7, r4]
	cmp r0, r1
	bge _08E26C36
	adds r3, r2, #0
_08E26C36:
	adds r5, r3, #0
	movs r4, #0
	mov r2, sp
_08E26C3C:
	movs r0, #0xb0
	muls r0, r4, r0
	adds r3, r6, r0
	adds r1, r3, #0
	adds r1, #0xdc
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r1, r7]
	cmp r0, r1
	bne _08E26C68
	adds r0, r3, #0
	adds r0, #0xec
	movs r1, #0
	mov r3, ip
	strb r3, [r0]
	strh r1, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08E26C68:
	adds r2, #2
	adds r4, #1
	cmp r4, #3
	bls _08E26C3C
	mov r0, ip
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _08E26BFA
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08E26C8C
sub_08E26C8C: @ 0x08E26C8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _08E26CC4 @ =gUnk_02006FED
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	cmp r1, #0
	beq _08E26CC8
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E26CCE
	.align 2, 0
_08E26CC4: .4byte gUnk_02006FED
_08E26CC8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
_08E26CCE:
	adds r4, r0, #0
	adds r0, #0x54
	movs r7, #0
	strh r7, [r0]
	ldr r0, _08E26D88 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08E26D8C @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xc
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
	ldr r0, _08E26D90 @ =0xFFFFFF00
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
	beq _08E26D9C
	str r7, [sp, #4]
	ldr r2, _08E26D94 @ =0x05000011
	add r0, sp, #4
	bl sub_08E2C7F0
	ldr r0, _08E26D98 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
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
	movs r0, #0xb
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
	b _08E26DF2
	.align 2, 0
_08E26D88: .4byte 0xFFFF0000
_08E26D8C: .4byte 0xFF00FFFF
_08E26D90: .4byte 0xFFFFFF00
_08E26D94: .4byte 0x05000011
_08E26D98: .4byte 0x06010000
_08E26D9C:
	str r5, [sp, #4]
	ldr r2, _08E26E0C @ =0x05000011
	add r0, sp, #4
	bl sub_08E2C7F0
	ldr r0, _08E26E10 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
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
	movs r0, #0xb
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
_08E26DF2:
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
_08E26E0C: .4byte 0x05000011
_08E26E10: .4byte 0x06010000

	thumb_func_start sub_08E26E14
sub_08E26E14: @ 0x08E26E14
	push {r4, lr}
	ldr r0, _08E26E30 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E26E34
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26E38
	.align 2, 0
_08E26E30: .4byte gUnk_03002560
_08E26E34:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26E38:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E21A44
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08E26E5A
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08E26E78 @ =0xFFFFFF00
	str r0, [r4, #0x4c]
_08E26E5A:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E26E84
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E26E7C
	subs r0, #1
	strh r0, [r1]
	b _08E26E84
	.align 2, 0
_08E26E78: .4byte 0xFFFFFF00
_08E26E7C:
	ldr r0, _08E26E8C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
_08E26E84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E26E8C: .4byte gUnk_03002560

	thumb_func_start sub_08E26E90
sub_08E26E90: @ 0x08E26E90
	push {lr}
	sub sp, #4
	ldr r0, _08E26EBC @ =gUnk_020070AD
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl sub_08E2A5C4
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E26EC0
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26EC4
	.align 2, 0
_08E26EBC: .4byte gUnk_020070AD
_08E26EC0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26EC4:
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E26ED4
sub_08E26ED4: @ 0x08E26ED4
	push {r4, r5, lr}
	ldr r0, _08E26EF0 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E26EF4
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E26EF8
	.align 2, 0
_08E26EF0: .4byte gUnk_03002560
_08E26EF4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E26EF8:
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08E26F3A
	movs r0, #0
	strh r0, [r2]
	movs r5, #0x92
	lsls r5, r5, #2
	movs r0, #0x78
	adds r1, r5, #0
	bl sub_08E26F40
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r4, #0x8a
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_08E26F40
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_08E26F40
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_08E26F40
_08E26F3A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08E26F40
sub_08E26F40: @ 0x08E26F40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08E26F78 @ =gUnk_02007309
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08E26F7C @ =gUnk_03005868
	cmp r1, #0
	beq _08E26F80
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E26F86
	.align 2, 0
_08E26F78: .4byte gUnk_02007309
_08E26F7C: .4byte gUnk_03005868
_08E26F80:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E26F86:
	adds r4, r1, #0
	ldr r1, [r3]
	ldr r0, _08E27044 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08E27048 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	movs r6, #0
	str r6, [r4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x14
	strh r0, [r2]
	adds r2, #2
	movs r0, #1
	strh r0, [r2]
	str r5, [r4, #0x48]
	str r7, [r4, #0x4c]
	ldrh r2, [r2]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, r4, #4
	lsls r7, r1, #2
	movs r1, #0x20
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _08E27058
	str r6, [sp, #4]
	ldr r2, _08E2704C @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl sub_08E2C7F0
	ldr r0, _08E27050 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _08E27054 @ =gUnk_0200EE08
	adds r0, r7, r0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x10]
	adds r0, #0x42
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
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
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08E270BA
	.align 2, 0
_08E27044: .4byte 0x00196225
_08E27048: .4byte 0x3C6EF35F
_08E2704C: .4byte 0x05000011
_08E27050: .4byte 0x06010000
_08E27054: .4byte gUnk_0200EE08
_08E27058:
	str r5, [sp, #4]
	ldr r2, _08E270E4 @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl sub_08E2C7F0
	ldr r0, _08E270E8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _08E270EC @ =gUnk_0200EE08
	adds r0, r7, r0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x10]
	adds r0, #0x42
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #4
	mov r1, sb
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
_08E270BA:
	ldr r6, _08E270F0 @ =gUnk_03005868
	ldr r0, [r6]
	ldr r3, _08E270F4 @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _08E270F8 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	movs r0, #0xf
	ands r5, r0
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E270FC
	strh r5, [r4, #0x34]
	b _08E27100
	.align 2, 0
_08E270E4: .4byte 0x05000011
_08E270E8: .4byte 0x06010000
_08E270EC: .4byte gUnk_0200EE08
_08E270F0: .4byte gUnk_03005868
_08E270F4: .4byte 0x00196225
_08E270F8: .4byte 0x3C6EF35F
_08E270FC:
	rsbs r0, r5, #0
	strh r0, [r4, #0x34]
_08E27100:
	ldr r1, [r6]
	ldr r0, _08E27128 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E2712C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E27128: .4byte 0x00196225
_08E2712C: .4byte 0x3C6EF35F

	thumb_func_start sub_08E27130
sub_08E27130: @ 0x08E27130
	push {r4, r5, lr}
	ldr r0, _08E2714C @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E27150
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E27154
	.align 2, 0
_08E2714C: .4byte gUnk_03002560
_08E27150:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E27154:
	adds r5, r1, r0
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_08E21A44
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E2717C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E27190
	subs r0, #1
	strh r0, [r1]
	b _08E271B0
_08E2717C:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08E27190
	ldr r1, [r5, #0x48]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08E271A0
_08E27190:
	ldr r0, _08E2719C @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	b _08E271B0
	.align 2, 0
_08E2719C: .4byte gUnk_03002560
_08E271A0:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	ble _08E271B0
	ldr r0, _08E271B8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
_08E271B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E271B8: .4byte gUnk_03002560

	thumb_func_start sub_08E271BC
sub_08E271BC: @ 0x08E271BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08E271F0 @ =gUnk_02007405
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl sub_08E2A5C4
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r3, #6]
	ldr r4, _08E271F4 @ =gUnk_03005868
	cmp r0, #0
	beq _08E271F8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E271FC
	.align 2, 0
_08E271F0: .4byte gUnk_02007405
_08E271F4: .4byte gUnk_03005868
_08E271F8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E271FC:
	adds r2, r1, r0
	ldr r1, [r4]
	ldr r0, _08E27224 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E27228 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r4]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r2, #2]
	strb r5, [r2, #3]
	str r6, [r2, #4]
	adds r0, r3, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E27224: .4byte 0x00196225
_08E27228: .4byte 0x3C6EF35F

	thumb_func_start sub_08E2722C
sub_08E2722C: @ 0x08E2722C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E27248 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E2724C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E27250
	.align 2, 0
_08E27248: .4byte gUnk_03002560
_08E2724C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E27250:
	adds r7, r1, r0
	ldrh r0, [r7]
	subs r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08E272AC
	ldr r6, _08E272B4 @ =gUnk_03005868
	ldr r0, [r6]
	ldr r5, _08E272B8 @ =0x00196225
	adds r3, r0, #0
	muls r3, r5, r3
	ldr r4, _08E272BC @ =0x3C6EF35F
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	ands r1, r0
	ldr r2, _08E272C0 @ =gUnk_0200EFE8
	ldrb r0, [r7, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r7]
	adds r2, r3, #0
	muls r2, r5, r2
	adds r2, r2, r4
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	lsls r3, r0, #2
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08E272A4
	rsbs r3, r3, #0
_08E272A4:
	ldr r0, [r7, #4]
	adds r0, r0, r3
	bl sub_08E272C4
_08E272AC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E272B4: .4byte gUnk_03005868
_08E272B8: .4byte 0x00196225
_08E272BC: .4byte 0x3C6EF35F
_08E272C0: .4byte gUnk_0200EFE8

	thumb_func_start sub_08E272C4
sub_08E272C4: @ 0x08E272C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08E272FC @ =gUnk_0200764D
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl sub_08E2A5C4
	ldrh r2, [r0, #0x12]
	movs r1, #0x10
	ands r1, r2
	ldrh r2, [r0, #6]
	ldr r3, _08E27300 @ =gUnk_03005868
	cmp r1, #0
	beq _08E27304
	lsls r1, r2, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	b _08E2730A
	.align 2, 0
_08E272FC: .4byte gUnk_0200764D
_08E27300: .4byte gUnk_03005868
_08E27304:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
_08E2730A:
	adds r4, r1, #0
	ldr r1, [r3]
	ldr r0, _08E273C4 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08E273C8 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	movs r6, #0
	str r6, [r4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x96
	strh r0, [r2]
	adds r2, #2
	movs r0, #1
	strh r0, [r2]
	str r5, [r4, #0x48]
	str r6, [r4, #0x4c]
	ldrh r2, [r2]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, r4, #4
	lsls r7, r1, #2
	movs r1, #0x20
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x23
	adds r0, r0, r4
	mov sb, r0
	cmp r5, #0
	beq _08E273D8
	str r6, [sp, #4]
	ldr r2, _08E273CC @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl sub_08E2C7F0
	ldr r0, _08E273D0 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _08E273D4 @ =gUnk_0200EF88
	adds r0, r7, r0
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #7
	mov r1, sb
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
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
	b _08E27434
	.align 2, 0
_08E273C4: .4byte 0x00196225
_08E273C8: .4byte 0x3C6EF35F
_08E273CC: .4byte 0x05000011
_08E273D0: .4byte 0x06010000
_08E273D4: .4byte gUnk_0200EF88
_08E273D8:
	str r5, [sp, #4]
	ldr r2, _08E2745C @ =0x05000011
	add r0, sp, #4
	adds r1, r3, #0
	bl sub_08E2C7F0
	ldr r0, _08E27460 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r0, _08E27464 @ =gUnk_0200EF88
	adds r0, r7, r0
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	movs r0, #0x10
	mov r1, r8
	strb r0, [r1]
	movs r0, #7
	mov r1, sb
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
_08E27434:
	ldr r2, _08E27468 @ =gUnk_03005868
	ldr r1, [r2]
	ldr r0, _08E2746C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08E27470 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strh r0, [r4, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2745C: .4byte 0x05000011
_08E27460: .4byte 0x06010000
_08E27464: .4byte gUnk_0200EF88
_08E27468: .4byte gUnk_03005868
_08E2746C: .4byte 0x00196225
_08E27470: .4byte 0x3C6EF35F

	thumb_func_start sub_08E27474
sub_08E27474: @ 0x08E27474
	push {r4, lr}
	ldr r0, _08E27490 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r2, #6]
	cmp r0, #0
	beq _08E27494
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	b _08E27498
	.align 2, 0
_08E27490: .4byte gUnk_03002560
_08E27494:
	movs r0, #0xc0
	lsls r0, r0, #0x12
_08E27498:
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08E21A44
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E274CC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08E274BE
	subs r0, #1
	strh r0, [r1]
	b _08E274DE
_08E274BE:
	ldr r0, _08E274C8 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
	b _08E274DE
	.align 2, 0
_08E274C8: .4byte gUnk_03002560
_08E274CC:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	ble _08E274DE
	ldr r0, _08E274E4 @ =gUnk_03002560
	ldr r0, [r0]
	bl sub_08E2A6E0
_08E274DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E274E4: .4byte gUnk_03002560

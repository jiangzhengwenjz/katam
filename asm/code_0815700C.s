	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815700C
sub_0815700C: @ 0x0815700C
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08157018
sub_08157018: @ 0x08157018
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08157028
sub_08157028: @ 0x08157028
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_0815703C
sub_0815703C: @ 0x0815703C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x10]
	adds r2, r2, r3
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08157058
sub_08157058: @ 0x08157058
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08157064
sub_08157064: @ 0x08157064
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrh r0, [r0, #6]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr

	thumb_func_start sub_0815707C
sub_0815707C: @ 0x0815707C
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08157084
sub_08157084: @ 0x08157084
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _0815709C @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_0815709C: .4byte 0xFFFFCFFF

	thumb_func_start sub_081570A0
sub_081570A0: @ 0x081570A0
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_081570B0
sub_081570B0: @ 0x081570B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, r5, #1
	lsrs r5, r0, #1
	movs r4, #0
	ldr r1, _081570EC @ =gUnk_03002488
	ldrh r0, [r1]
	lsrs r0, r0, #1
	mov sb, r1
	cmp r4, r0
	bhs _0815714E
	ldr r0, _081570F0 @ =gUnk_030064B0
	mov r8, r0
_081570D2:
	lsls r1, r4, #1
	mov r2, r8
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, #0
	bne _08157134
	movs r3, #0
	ldr r7, _081570EC @ =gUnk_03002488
	mov ip, r7
	ldr r0, _081570F0 @ =gUnk_030064B0
	mov sl, r0
	ldr r6, _081570F4 @ =gUnk_0203ADE4
	b _081570FE
	.align 2, 0
_081570EC: .4byte gUnk_03002488
_081570F0: .4byte gUnk_030064B0
_081570F4: .4byte gUnk_0203ADE4
_081570F8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_081570FE:
	cmp r3, r5
	bhs _0815711C
	adds r2, r4, r3
	mov r7, ip
	ldrh r0, [r7]
	lsrs r0, r0, #1
	cmp r2, r0
	blt _08157112
	ldr r0, [r6]
	b _08157152
_08157112:
	lsls r0, r2, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _081570F8
_0815711C:
	cmp r3, r5
	bne _0815713E
	mov r2, r8
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _08157130 @ =gUnk_03002540
	lsls r1, r4, #6
	ldr r0, [r0]
	adds r0, r0, r1
	b _08157152
	.align 2, 0
_08157130: .4byte gUnk_03002540
_08157134:
	ldr r7, _08157160 @ =0x0000FFFF
	adds r0, r4, r7
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0815713E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #1
	cmp r4, r0
	blo _081570D2
_0815714E:
	ldr r0, _08157164 @ =gUnk_0203ADE4
	ldr r0, [r0]
_08157152:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08157160: .4byte 0x0000FFFF
_08157164: .4byte gUnk_0203ADE4

	thumb_func_start sub_08157168
sub_08157168: @ 0x08157168
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08157184 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08157188 @ =gUnk_030064B0
	str r0, [r1, #4]
	ldr r0, _0815718C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08157184: .4byte 0x040000D4
_08157188: .4byte gUnk_030064B0
_0815718C: .4byte 0x81000200

	thumb_func_start sub_08157190
sub_08157190: @ 0x08157190
	push {lr}
	adds r1, r0, #0
	ldr r0, _081571B4 @ =gUnk_0203ADE4
	ldr r0, [r0]
	cmp r0, r1
	beq _081571B0
	ldr r0, _081571B8 @ =gUnk_03002540
	ldr r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x10
	ldr r1, _081571BC @ =gUnk_030064B0
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_081571B0:
	pop {r0}
	bx r0
	.align 2, 0
_081571B4: .4byte gUnk_0203ADE4
_081571B8: .4byte gUnk_03002540
_081571BC: .4byte gUnk_030064B0

	thumb_func_start sub_081571C0
sub_081571C0: @ 0x081571C0
	push {r4, r5, r6, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _08157204 @ =gUnk_03002488
	ldrh r0, [r0]
	lsrs r0, r0, #1
	cmp r3, r0
	bhs _081571FA
	ldr r6, _08157208 @ =gUnk_030064B0
	adds r4, r0, #0
	ldr r0, _0815720C @ =0x0000FFFF
	adds r5, r0, #0
_081571D8:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _081571F0
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, r5
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_081571F0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _081571D8
_081571FA:
	lsls r0, r3, #0x11
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08157204: .4byte gUnk_03002488
_08157208: .4byte gUnk_030064B0
_0815720C: .4byte 0x0000FFFF

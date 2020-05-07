	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081387B0
sub_081387B0: @ 0x081387B0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _0813882C @ =0x01000080
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, _08138830 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _08138834 @ =gDispCnt
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08138838 @ =gBgCntRegs
	ldr r0, _0813883C @ =0x00001D09
	strh r0, [r1, #2]
	movs r2, #0
	add r6, sp, #8
	ldr r4, _08138840 @ =gBgScrollRegs
	adds r5, r4, #2
	movs r3, #0
_081387EE:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r5
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _081387EE
	ldr r0, _08138844 @ =sub_0813887C
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08138848 @ =nullsub_33
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl sub_08152B00
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813884C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08138854
	.align 2, 0
_0813882C: .4byte 0x01000080
_08138830: .4byte gBldRegs
_08138834: .4byte gDispCnt
_08138838: .4byte gBgCntRegs
_0813883C: .4byte 0x00001D09
_08138840: .4byte gBgScrollRegs
_08138844: .4byte sub_0813887C
_08138848: .4byte nullsub_33
_0813884C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08138854:
	movs r0, #0
	strh r0, [r6]
	ldr r2, _08138874 @ =0x01000008
	adds r0, r6, #0
	adds r1, r4, #0
	bl CpuSet
	bl m4aMPlayAllStop
	ldr r0, _08138878 @ =sub_081388C4
	str r0, [r4, #8]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08138874: .4byte 0x01000008
_08138878: .4byte sub_081388C4

	thumb_func_start sub_08030C94
sub_0813887C: @ 0x0813887C
	push {lr}
	ldr r0, _08138898 @ =gUnk_030035D0
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813889C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081388A4
	.align 2, 0
_08138898: .4byte gUnk_030035D0
_0813889C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081388A4:
	ldrh r1, [r2, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081388B4
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_081388B4:
	ldr r1, [r2, #8]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start nullsub_33
nullsub_33: @ 0x081388C0
	bx lr
	.align 2, 0

	thumb_func_start sub_081388C4
sub_081388C4: @ 0x081388C4
	ldr r1, _081388CC @ =sub_081388D0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_081388CC: .4byte sub_081388D0

	thumb_func_start sub_081388D0
sub_081388D0: @ 0x081388D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_081389A8
	movs r0, #1
	movs r1, #0xc6
	movs r2, #0
	bl sub_08138A30
	movs r0, #0xc6
	movs r1, #0x50
	movs r2, #0x50
	movs r3, #0x30
	bl sub_08138AA4
	ldr r0, _08138904 @ =gUnk_083877EE
	ldrh r0, [r0, #0x1e]
	movs r1, #0
	strh r0, [r4, #0xc]
	strh r1, [r4, #0xe]
	ldr r0, _08138908 @ =sub_0813890C
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08138904: .4byte gUnk_083877EE
_08138908: .4byte sub_0813890C

	thumb_func_start sub_0813890C
sub_0813890C: @ 0x0813890C
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	adds r0, #1
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _08138938
	ldr r4, _08138934 @ =gBldRegs
	ldrh r1, [r2, #0xe]
	movs r0, #0x14
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #4]
	b _0813894A
	.align 2, 0
_08138934: .4byte gBldRegs
_08138938:
	ldr r1, _08138950 @ =gBldRegs
	movs r0, #0
	strh r0, [r1, #4]
	ldrh r0, [r2, #4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r0, _08138954 @ =sub_08138958
	str r0, [r2, #8]
_0813894A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08138950: .4byte gBldRegs
_08138954: .4byte sub_08138958

	thumb_func_start sub_08138958
sub_08138958: @ 0x08138958
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xc]
	subs r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08138970
	movs r0, #0
	strh r0, [r1, #0xe]
	ldr r0, _08138974 @ =sub_08138978
	str r0, [r1, #8]
_08138970:
	pop {r0}
	bx r0
	.align 2, 0
_08138974: .4byte sub_08138978

	thumb_func_start sub_08138978
sub_08138978: @ 0x08138978
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r5, [r4]
	ldr r0, _08138998 @ =gUnk_030035D0
	ldr r0, [r0]
	bl sub_08152C3C
	ldrh r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0813899C
	bl sub_08149CE4
	b _081389A2
	.align 2, 0
_08138998: .4byte gUnk_030035D0
_0813899C:
	adds r0, r5, #0
	bl sub_08145B64
_081389A2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_081389A8
sub_081389A8: @ 0x081389A8
	push {r4, lr}
	movs r4, #0
_081389AC:
	adds r0, r4, #0
	bl sub_081389D4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _081389AC
	movs r4, #0
_081389BE:
	adds r0, r4, #0
	bl sub_081389FC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _081389BE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_081389D4
sub_081389D4: @ 0x081389D4
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _081389F8 @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_081389F8: .4byte 0x01002000

	thumb_func_start sub_081389FC
sub_081389FC: @ 0x081389FC
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08138A28 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08138A2C @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08138A28: .4byte 0x000001FF
_08138A2C: .4byte 0x01000400

	thumb_func_start sub_08138A30
sub_08138A30: @ 0x08138A30
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _08138A9C @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r4, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _08138AA0 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r0, r0, #0x18
	movs r3, #0x1f
	ands r0, r3
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r6, r0, r2
	lsls r1, r1, #0xe
	adds r1, r1, r3
	adds r0, r4, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _08138A96
_08138A7A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08138A7A
_08138A96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138A9C: .4byte gUnk_082D7850
_08138AA0: .4byte gBgCntRegs

	thumb_func_start sub_08138AA4
sub_08138AA4: @ 0x08138AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov ip, r5
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov r8, r6
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	mov sb, r7
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	adds r3, r2, #0
	cmp r2, #0
	beq _08138B2A
	ldr r0, _08138AF0 @ =gUnk_03002440
	mov sl, r0
	ldr r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _08138AF8
	ldr r1, _08138AF4 @ =gUnk_082D7850
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r6, #1
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	adds r1, r7, #0
	bl sub_08158334
	b _08138B2A
	.align 2, 0
_08138AF0: .4byte gUnk_03002440
_08138AF4: .4byte gUnk_082D7850
_08138AF8:
	ldr r2, _08138B38 @ =0x040000D4
	ldr r1, _08138B3C @ =gUnk_082D7850
	mov r5, ip
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r5, r8
	lsls r1, r5, #1
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	str r0, [r2]
	mov r1, sb
	lsls r0, r1, #1
	ldr r1, _08138B40 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	mov r5, sl
	str r4, [r5]
_08138B2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138B38: .4byte 0x040000D4
_08138B3C: .4byte gUnk_082D7850
_08138B40: .4byte gBgPalette

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateLeverWall
CreateLeverWall: @ 0x080255B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080255E8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080255EC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080255F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080255F8
	.align 2, 0
_080255E8: .4byte ObjectMain
_080255EC: .4byte ObjectDestroy
_080255F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080255F8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _08025638 @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _0802563C @ =gUnk_08351648
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
_08025638: .4byte gUnk_02018F40
_0802563C: .4byte gUnk_08351648

	thumb_func_start sub_08025640
sub_08025640: @ 0x08025640
	ldr r1, _08025648 @ =sub_0802544C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08025648: .4byte sub_0802544C

	thumb_func_start nullsub_115
nullsub_115: @ 0x0802564C
	bx lr
	.align 2, 0

	thumb_func_start sub_08025650
sub_08025650: @ 0x08025650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	movs r3, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x48]
	mov r7, sp
	adds r7, #0x1c
	str r7, [sp, #0x40]
	add r0, sp, #0x3c
	mov sl, r0
	adds r7, #0x22
	str r7, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	mov sb, r0
	ldr r6, [sp, #0x48]
	ldr r5, [sp, #0x40]
	ldr r7, _080256BC @ =gUnk_082DEB28
	mov r8, r7
	ldr r0, _080256C0 @ =gUnk_082DEB60
	mov ip, r0
	add r4, sp, #0x20
_0802568A:
	cmp r3, sb
	bhs _080256D0
	lsls r1, r3, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #4
	ldr r0, _080256C4 @ =gUnk_082DEB10
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r1, r3, #2
	adds r2, r6, r1
	ldr r0, _080256C8 @ =gUnk_082DEB18
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	lsls r1, r3, #3
	adds r2, r5, r1
	mov r7, r8
	adds r0, r1, r7
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	ldr r0, _080256CC @ =gUnk_082DEB2C
	b _080256FC
	.align 2, 0
_080256BC: .4byte gUnk_082DEB28
_080256C0: .4byte gUnk_082DEB60
_080256C4: .4byte gUnk_082DEB10
_080256C8: .4byte gUnk_082DEB18
_080256CC: .4byte gUnk_082DEB2C
_080256D0:
	lsls r1, r3, #1
	mov r2, sp
	adds r2, r2, r1
	adds r2, #4
	ldr r0, _0802577C @ =gUnk_082DEB48
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	lsls r1, r3, #2
	adds r2, r6, r1
	ldr r0, _08025780 @ =gUnk_082DEB50
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	lsls r1, r3, #3
	adds r2, r5, r1
	mov r7, ip
	adds r0, r1, r7
	ldr r0, [r0]
	str r0, [r2]
	adds r2, r4, r1
	ldr r0, _08025784 @ =gUnk_082DEB64
_080256FC:
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802568A
	ldr r7, _08025788 @ =0x00007FFF
	adds r4, r7, #0
	mov r0, sl
	strh r4, [r0]
	ldr r5, _0802578C @ =0x01000100
	ldr r1, _08025790 @ =gBgPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r7, [sp, #0x44]
	strh r4, [r7]
	ldr r1, _08025794 @ =gObjPalette
	ldr r0, [sp, #0x44]
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08025798 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0802579C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	movs r1, #0
	add r2, sp, #4
	ldr r3, [sp, #0x40]
	bl sub_080332BC
	ldr r3, [sp, #0x4c]
	cmp r3, #3
	bhi _0802576C
	ldr r4, _080257A0 @ =gUnk_02038590
	movs r2, #0xf4
	ldr r1, _080257A4 @ =0x000003C9
_0802575A:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r0, r0, r4
	strh r1, [r0, #0x18]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0802575A
_0802576C:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802577C: .4byte gUnk_082DEB48
_08025780: .4byte gUnk_082DEB50
_08025784: .4byte gUnk_082DEB64
_08025788: .4byte 0x00007FFF
_0802578C: .4byte 0x01000100
_08025790: .4byte gBgPalette
_08025794: .4byte gObjPalette
_08025798: .4byte gUnk_03002440
_0802579C: .4byte gBldRegs
_080257A0: .4byte gUnk_02038590
_080257A4: .4byte 0x000003C9

	thumb_func_start sub_080257A8
sub_080257A8: @ 0x080257A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _080258D4 @ =gBldRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x40
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x40
	ldr r1, _080258DC @ =0x00001F03
	ldr r2, _080258E0 @ =gBgCntRegs
	strh r1, [r2]
	ldr r1, _080258E4 @ =gBgScrollRegs
	mov r8, r1
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080258E8 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080258EC @ =0x0000028A
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r2, #0x1e
	strh r2, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x6a
	mov r2, sb
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	movs r1, #8
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	ldr r6, _080258F0 @ =0x00007FFF
	strh r6, [r0, #0x34]
	strh r6, [r0, #0x36]
	bl sub_08153060
	ldr r0, _080258F4 @ =gUnk_082D7850
	mov sl, r0
	ldr r0, _080258F8 @ =0x00000A28
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r1, _080258D8 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	ldr r1, _080258FC @ =gUnk_082DEB80
	ldr r0, _08025900 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _08025904 @ =0x00001E0A
	ldr r2, _080258E0 @ =gBgCntRegs
	strh r0, [r2, #2]
	mov r0, r8
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _08025908 @ =0x06008000
	mov r8, r1
	str r1, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0802590C @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r2, #0x1e
	strh r2, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x19
	strh r0, [r7, #0x2e]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, r8
	bl LZ77UnCompVram
	ldr r2, _080258D8 @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _080258D8 @ =gDispCnt
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, _08025910 @ =sub_08025B58
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080258D4: .4byte gBldRegs
_080258D8: .4byte gDispCnt
_080258DC: .4byte 0x00001F03
_080258E0: .4byte gBgCntRegs
_080258E4: .4byte gBgScrollRegs
_080258E8: .4byte 0x0600F800
_080258EC: .4byte 0x0000028A
_080258F0: .4byte 0x00007FFF
_080258F4: .4byte gUnk_082D7850
_080258F8: .4byte 0x00000A28
_080258FC: .4byte gUnk_082DEB80
_08025900: .4byte gUnk_08D60A80
_08025904: .4byte 0x00001E0A
_08025908: .4byte 0x06008000
_0802590C: .4byte 0x0600F000
_08025910: .4byte sub_08025B58

	thumb_func_start sub_08025914
sub_08025914: @ 0x08025914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r1, _08025A40 @ =gBldRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x40
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x40
	ldr r1, _08025A48 @ =0x00001F03
	ldr r2, _08025A4C @ =gBgCntRegs
	strh r1, [r2]
	ldr r1, _08025A50 @ =gBgScrollRegs
	mov r8, r1
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08025A54 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08025A58 @ =0x0000028B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r2, #0x1e
	strh r2, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x6a
	mov r2, sb
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	adds r1, #1
	strb r2, [r1]
	movs r1, #8
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	ldr r6, _08025A5C @ =0x00007FFF
	strh r6, [r0, #0x34]
	strh r6, [r0, #0x36]
	bl sub_08153060
	ldr r0, _08025A60 @ =gUnk_082D7850
	mov sl, r0
	ldr r0, _08025A64 @ =0x00000A2C
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r1, _08025A44 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	ldr r1, _08025A68 @ =gUnk_082DEB8C
	ldr r0, _08025A6C @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	ldr r0, _08025A70 @ =0x00001E0A
	ldr r2, _08025A4C @ =gBgCntRegs
	strh r0, [r2, #2]
	mov r0, r8
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _08025A74 @ =0x06008000
	mov r8, r1
	str r1, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _08025A78 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r2, #0x1e
	strh r2, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #9
	strh r0, [r7, #0x2e]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	strh r6, [r7, #0x34]
	strh r6, [r7, #0x36]
	adds r0, r7, #0
	bl sub_08153060
	lsls r5, r5, #2
	add r5, sl
	ldr r0, [r5]
	ldr r0, [r0, #8]
	mov r1, r8
	bl LZ77UnCompVram
	ldr r2, _08025A44 @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08025A44 @ =gDispCnt
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, _08025A7C @ =sub_08025BA4
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025A40: .4byte gBldRegs
_08025A44: .4byte gDispCnt
_08025A48: .4byte 0x00001F03
_08025A4C: .4byte gBgCntRegs
_08025A50: .4byte gBgScrollRegs
_08025A54: .4byte 0x0600F800
_08025A58: .4byte 0x0000028B
_08025A5C: .4byte 0x00007FFF
_08025A60: .4byte gUnk_082D7850
_08025A64: .4byte 0x00000A2C
_08025A68: .4byte gUnk_082DEB8C
_08025A6C: .4byte gUnk_08D60A80
_08025A70: .4byte 0x00001E0A
_08025A74: .4byte 0x06008000
_08025A78: .4byte 0x0600F000
_08025A7C: .4byte sub_08025BA4

	thumb_func_start sub_08025A80
sub_08025A80: @ 0x08025A80
	push {lr}
	sub sp, #4
	ldr r0, _08025AAC @ =sub_08025B20
	movs r1, #0
	str r1, [sp]
	movs r1, #0x88
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025AB0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025AB8
	.align 2, 0
_08025AAC: .4byte sub_08025B20
_08025AB0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025AB8:
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, _08025ACC @ =sub_080257A8
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08025ACC: .4byte sub_080257A8

	thumb_func_start sub_08025AD0
sub_08025AD0: @ 0x08025AD0
	push {lr}
	sub sp, #4
	ldr r0, _08025AFC @ =sub_08025B6C
	movs r1, #0
	str r1, [sp]
	movs r1, #0x88
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B08
	.align 2, 0
_08025AFC: .4byte sub_08025B6C
_08025B00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B08:
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, _08025B1C @ =sub_08025914
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08025B1C: .4byte sub_08025914

	thumb_func_start sub_08025B20
sub_08025B20: @ 0x08025B20
	push {lr}
	ldr r0, _08025B3C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B48
	.align 2, 0
_08025B3C: .4byte gCurTask
_08025B40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B48:
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start sub_08025B58
sub_08025B58: @ 0x08025B58
	adds r2, r0, #0
	adds r2, #0x84
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x80
	ldr r1, _08025B68 @ =sub_08025BB8
	str r1, [r0]
	bx lr
	.align 2, 0
_08025B68: .4byte sub_08025BB8

	thumb_func_start sub_08025B6C
sub_08025B6C: @ 0x08025B6C
	push {lr}
	ldr r0, _08025B88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08025B94
	.align 2, 0
_08025B88: .4byte gCurTask
_08025B8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08025B94:
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start sub_08025BA4
sub_08025BA4: @ 0x08025BA4
	adds r2, r0, #0
	adds r2, #0x84
	movs r1, #0
	strh r1, [r2]
	adds r0, #0x80
	ldr r1, _08025BB4 @ =sub_08025BFC
	str r1, [r0]
	bx lr
	.align 2, 0
_08025BB4: .4byte sub_08025BFC

	thumb_func_start sub_08025BB8
sub_08025BB8: @ 0x08025BB8
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025BE8
	ldr r0, _08025BE0 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	subs r1, #4
	ldr r0, _08025BE4 @ =sub_08025C40
	str r0, [r1]
	b _08025BF0
	.align 2, 0
_08025BE0: .4byte gBldRegs
_08025BE4: .4byte sub_08025C40
_08025BE8:
	ldr r1, _08025BF8 @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08025BF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025BF8: .4byte gBldRegs

	thumb_func_start sub_08025BFC
sub_08025BFC: @ 0x08025BFC
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025C2C
	ldr r0, _08025C24 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	subs r1, #4
	ldr r0, _08025C28 @ =sub_08025C64
	str r0, [r1]
	b _08025C34
	.align 2, 0
_08025C24: .4byte gBldRegs
_08025C28: .4byte sub_08025C64
_08025C2C:
	ldr r1, _08025C3C @ =gBldRegs
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #4]
_08025C34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C3C: .4byte gBldRegs

	thumb_func_start sub_08025C40
sub_08025C40: @ 0x08025C40
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	adds r4, #0x80
	ldr r0, _08025C60 @ =sub_08025C88
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C60: .4byte sub_08025C88

	thumb_func_start sub_08025C64
sub_08025C64: @ 0x08025C64
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x27
	bl m4aSongNumStart
	adds r4, #0x80
	ldr r0, _08025C84 @ =sub_08025CCC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025C84: .4byte sub_08025CCC

	thumb_func_start sub_08025C88
sub_08025C88: @ 0x08025C88
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bhi _08025CAC
	ldr r0, _08025CC0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08025CBA
_08025CAC:
	ldr r0, _08025CC4 @ =0x0000021E
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _08025CC8 @ =sub_08025D10
	str r0, [r1]
_08025CBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025CC0: .4byte gPressedKeys
_08025CC4: .4byte 0x0000021E
_08025CC8: .4byte sub_08025D10

	thumb_func_start sub_08025CCC
sub_08025CCC: @ 0x08025CCC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x12
	cmp r0, r1
	bhi _08025CF0
	ldr r0, _08025D04 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08025CFE
_08025CF0:
	ldr r0, _08025D08 @ =0x0000021E
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _08025D0C @ =sub_08025D30
	str r0, [r1]
_08025CFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025D04: .4byte gPressedKeys
_08025D08: .4byte 0x0000021E
_08025D0C: .4byte sub_08025D30

	thumb_func_start sub_08025D10
sub_08025D10: @ 0x08025D10
	ldr r2, _08025D28 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x84
	strh r3, [r1]
	adds r0, #0x80
	ldr r1, _08025D2C @ =sub_08025D50
	str r1, [r0]
	bx lr
	.align 2, 0
_08025D28: .4byte gBldRegs
_08025D2C: .4byte sub_08025D50

	thumb_func_start sub_08025D30
sub_08025D30: @ 0x08025D30
	ldr r2, _08025D48 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x84
	strh r3, [r1]
	adds r0, #0x80
	ldr r1, _08025D4C @ =sub_08025D8C
	str r1, [r0]
	bx lr
	.align 2, 0
_08025D48: .4byte gBldRegs
_08025D4C: .4byte sub_08025D8C

	thumb_func_start sub_08025D50
sub_08025D50: @ 0x08025D50
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025D80
	ldr r1, _08025D78 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r1, r3, #0
	adds r1, #0x80
	ldr r0, _08025D7C @ =sub_08025DC8
	str r0, [r1]
	b _08025D84
	.align 2, 0
_08025D78: .4byte gBldRegs
_08025D7C: .4byte sub_08025DC8
_08025D80:
	ldr r0, _08025D88 @ =gBldRegs
	strh r2, [r0, #4]
_08025D84:
	pop {r0}
	bx r0
	.align 2, 0
_08025D88: .4byte gBldRegs

	thumb_func_start sub_08025D8C
sub_08025D8C: @ 0x08025D8C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08025DBC
	ldr r1, _08025DB4 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r1, r3, #0
	adds r1, #0x80
	ldr r0, _08025DB8 @ =sub_08025DE4
	str r0, [r1]
	b _08025DC0
	.align 2, 0
_08025DB4: .4byte gBldRegs
_08025DB8: .4byte sub_08025DE4
_08025DBC:
	ldr r0, _08025DC4 @ =gBldRegs
	strh r2, [r0, #4]
_08025DC0:
	pop {r0}
	bx r0
	.align 2, 0
_08025DC4: .4byte gBldRegs

	thumb_func_start sub_08025DC8
sub_08025DC8: @ 0x08025DC8
	push {lr}
	bl m4aMPlayAllStop
	ldr r0, _08025DE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #3
	bl sub_08138D64
	pop {r0}
	bx r0
	.align 2, 0
_08025DE0: .4byte gCurTask

	thumb_func_start sub_08025DE4
sub_08025DE4: @ 0x08025DE4
	push {lr}
	bl m4aMPlayAllStop
	ldr r0, _08025DFC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #3
	bl sub_08138D64
	pop {r0}
	bx r0
	.align 2, 0
_08025DFC: .4byte gCurTask

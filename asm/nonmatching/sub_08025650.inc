	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	.text

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
	ldr r2, _08025798 @ =gMainFlags
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
_08025798: .4byte gMainFlags
_0802579C: .4byte gBldRegs
_080257A0: .4byte gUnk_02038590
_080257A4: .4byte 0x000003C9

	.syntax divided

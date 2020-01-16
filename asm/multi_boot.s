	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MultiBootMain
MultiBootMain: @ 0x0815770C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _08157724
	b _08157B42
_08157724:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0xf
	bls _08157738
	subs r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1]
	b _08157B42
_08157738:
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _08157770
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0815776C @ =0x04000128
	ldrh r0, [r0]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _08157770
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	movs r0, #8
	eors r0, r5
	b _08157B44
	.align 2, 0
_0815776C: .4byte 0x04000128
_08157770:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _081577C6
	adds r0, r7, #0
	bl MultiBootHandShake
	adds r5, r0, #0
	cmp r5, #0
	beq _08157784
	b _08157B44
_08157784:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _08157796
	adds r0, r7, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	bne _08157796
	b _08157B0E
_08157796:
	adds r0, r7, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _081577A2
	b _08157B42
_081577A2:
	ldrh r0, [r7, #0x16]
	adds r1, r0, #0
	cmp r1, #0
	bne _081577C0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	movs r0, #0x71
	b _08157B44
_081577C0:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _08157B42
_081577C6:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _081577CE
	b _08157908
_081577CE:
	cmp r0, #2
	bgt _081577DC
	cmp r0, #0
	beq _081577EA
	cmp r0, #1
	beq _081578AA
	b _08157A50
_081577DC:
	cmp r0, #0xd0
	bne _081577E2
	b _08157954
_081577E2:
	cmp r0, #0xd1
	bne _081577E8
	b _081579F2
_081577E8:
	b _08157A50
_081577EA:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _08157830 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _08157834 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _08157812
	adds r4, r1, #0
	ldr r1, _08157838 @ =0x04000126
_08157802:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _08157812
	ldrh r0, [r1]
	cmp r0, r4
	beq _08157802
_08157812:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _08157830 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08157840
	ldr r0, _0815783C @ =0x00007208
	b _08157866
	.align 2, 0
_08157830: .4byte 0x04000120
_08157834: .4byte 0x0000FFFF
_08157838: .4byte 0x04000126
_0815783C: .4byte 0x00007208
_08157840:
	subs r5, #1
	cmp r5, #0
	beq _0815786E
	lsls r0, r5, #1
	ldr r1, _08157898 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08157840
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_08157866:
	cmp r4, r0
	beq _08157840
	movs r3, #0
	strb r3, [r7, #0x1d]
_0815786E:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _0815787E
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
_0815787E:
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0815789C
	ldrb r0, [r7, #0x1d]
	ldrb r2, [r7, #0x1e]
	cmp r0, r2
	beq _081578A2
	adds r0, r7, #0
	bl MultiBootStartProbe
	b _081578AA
	.align 2, 0
_08157898: .4byte 0x04000120
_0815789C:
	subs r0, #1
	ldr r1, [sp]
	strb r0, [r1]
_081578A2:
	ldrb r1, [r7, #0x1e]
	movs r2, #0xc4
	lsls r2, r2, #7
	b _081579AE
_081578AA:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _08157900 @ =gUnk_03000014
_081578B8:
	lsls r0, r5, #1
	ldr r2, _08157904 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _081578E2
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _081578E2
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_081578E2:
	adds r5, r2, #0
	cmp r5, #0
	bne _081578B8
	ldrb r0, [r7, #0x1d]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _081578A2
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r2, ip
	ldrb r1, [r2]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _081579AE
	.align 2, 0
_08157900: .4byte gUnk_03000014
_08157904: .4byte 0x04000120
_08157908:
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	mov r4, ip
	movs r6, #1
	ldr r1, _0815794C @ =gUnk_03000014
	mov sb, r1
	ldr r2, _08157950 @ =0x04000120
	mov r8, r2
_0815791C:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _08157942
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _08157942
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_08157942:
	adds r5, r2, #0
	cmp r5, #0
	bne _0815791C
	b _08157AB8
	.align 2, 0
_0815794C: .4byte gUnk_03000014
_08157950: .4byte 0x04000120
_08157954:
	movs r3, #1
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x19
	movs r1, #0
	mov r8, r1
	ldr r2, _081579BC @ =gUnk_03000014
	mov sb, r2
_0815796A:
	lsls r0, r5, #1
	ldr r1, _081579C0 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	adds r0, r6, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0815799E
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _08157992
	b _08157B14
_08157992:
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r4, r0
	bne _0815799E
	movs r3, #0
_0815799E:
	adds r5, r2, #0
	cmp r5, #0
	bne _0815796A
	cmp r3, #0
	bne _081579C4
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_081579AE:
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r7, #0
	bl MultiBootSend
	b _08157B44
	.align 2, 0
_081579BC: .4byte gUnk_03000014
_081579C0: .4byte 0x04000120
_081579C4:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	adds r1, r6, #2
_081579CE:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _081579CE
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl MultiBootSend
	b _08157B44
_081579F2:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _08157A30 @ =0x04000126
	movs r3, #1
_081579FC:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08157A12
	asrs r0, r4, #8
	cmp r0, #0x73
	beq _08157A12
	b _08157B2A
_08157A12:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _081579FC
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _08157A34
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _08157B42
	.align 2, 0
_08157A30: .4byte 0x04000126
_08157A34:
	movs r0, #0
	strb r0, [r7, #0x1e]
	strb r0, [r7, #0x18]
	strb r0, [r7, #0x1d]
	movs r1, #0xf
	ldr r2, [sp]
	strb r1, [r2]
	mov r1, sl
	strb r0, [r1]
	strh r0, [r7, #0x16]
	movs r0, #0x1e
	strb r0, [r2]
	movs r0, #0x70
	b _08157B44
_08157A50:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r0, #1
	mov sb, r0
_08157A5E:
	mov r1, r8
	ldrb r6, [r1]
	adds r0, r6, #0
	asrs r0, r5
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08157A98
	lsls r0, r5, #1
	ldr r1, _08157AB4 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _08157A92
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _08157A98
_08157A92:
	eors r6, r3
	mov r2, r8
	strb r6, [r2]
_08157A98:
	subs r5, #1
	cmp r5, #0
	bne _08157A5E
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _08157AB8
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _081578A2
	.align 2, 0
_08157AB4: .4byte 0x04000120
_08157AB8:
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08157AD6
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	movs r0, #0x50
	b _08157B44
_08157AD6:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _08157AE6
	b _081578A2
_08157AE6:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl MultiBootSend
	adds r5, r0, #0
	cmp r5, #0
	bne _08157B44
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _08157B42
_08157B0E:
	bl MultiBootWaitSendDone
	b _08157738
_08157B14:
	mov r1, r8
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r0, sl
	strb r1, [r0]
	mov r1, r8
	b _08157B3C
_08157B2A:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r0, sl
	strb r1, [r0]
_08157B3C:
	strh r1, [r7, #0x16]
	movs r0, #0x60
	b _08157B44
_08157B42:
	movs r0, #0
_08157B44:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start MultiBootSend
MultiBootSend: @ 0x08157B54
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08157B80 @ =0x04000128
	ldrh r0, [r3]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _08157B88
	ldr r0, _08157B84 @ =0x0400012A
	strh r1, [r0]
	ldrh r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08157BA6
	.align 2, 0
_08157B80: .4byte 0x04000128
_08157B84: .4byte 0x0400012A
_08157B88:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_08157BA6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start MultiBootStartProbe
MultiBootStartProbe: @ 0x08157BAC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _08157BD0
	movs r0, #0
	strb r0, [r2, #0x1e]
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r1, #0xf
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	strb r0, [r1]
	strh r0, [r2, #0x16]
	b _08157BDC
_08157BD0:
	adds r1, r2, #0
	adds r1, #0x4a
	strb r0, [r1]
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0x18]
_08157BDC:
	pop {r0}
	bx r0

	thumb_func_start MultiBootStartMaster
MultiBootStartMaster: @ 0x08157BE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08157C10
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08157C10
	mov r6, ip
	adds r6, #0x4a
	ldrb r2, [r6]
	cmp r2, #0
	beq _08157C2C
_08157C10:
	movs r0, #0
	mov r2, ip
	strb r0, [r2, #0x1e]
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x1d]
	adds r2, #0x4a
	movs r1, #0xf
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x48
	strb r0, [r1]
	mov r1, ip
	strh r0, [r1, #0x16]
	b _08157CD6
_08157C2C:
	mov r0, ip
	str r7, [r0, #0x20]
	adds r5, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r5, r0
	subs r0, #0xf0
	adds r1, r5, r0
	ldr r0, _08157C58 @ =0x0003FF00
	cmp r1, r0
	bls _08157C5C
	mov r1, ip
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x1d]
	movs r0, #0xf
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x48
	strb r2, [r0]
	strh r2, [r1, #0x16]
	b _08157CD6
	.align 2, 0
_08157C58: .4byte 0x0003FF00
_08157C5C:
	adds r0, r7, r5
	mov r2, ip
	str r0, [r2, #0x24]
	mov r0, r8
	lsls r1, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _08157CC0
	lsls r0, r0, #2
	ldr r1, _08157C80 @ =_08157C84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08157C80: .4byte _08157C84
_08157C84: @ jump table
	.4byte _08157CA8 @ case 0
	.4byte _08157CA8 @ case 1
	.4byte _08157CA8 @ case 2
	.4byte _08157CA8 @ case 3
	.4byte _08157CB2 @ case 4
	.4byte _08157CB8 @ case 5
	.4byte _08157CB8 @ case 6
	.4byte _08157CB8 @ case 7
	.4byte _08157CB8 @ case 8
_08157CA8:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _08157CBE
_08157CB2:
	movs r0, #0x38
	adds r4, r3, #0
	b _08157CBE
_08157CB8:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_08157CBE:
	orrs r4, r0
_08157CC0:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1c]
	movs r0, #0xd0
	strb r0, [r1, #0x18]
_08157CD6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MultiBootHandShake
MultiBootHandShake: @ 0x08157CE0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0xe0
	beq _08157CFC
	cmp r0, #0xe0
	blt _08157D0C
	cmp r0, #0xe8
	bgt _08157D0C
	cmp r0, #0xe7
	blt _08157D0C
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	b _08157D6C
_08157CFC:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r2, #0x18]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r2]
	b _08157D5E
_08157D0C:
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	movs r6, #1
	ldr r1, _08157D68 @ =0x04000126
_08157D14:
	ldrh r0, [r1]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08157D28
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08157CFC
_08157D28:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08157D14
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	ldrh r0, [r2]
	str r0, [r2, #4]
	cmp r1, #0
	bne _08157D56
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #4]
	lsls r1, r1, #5
	str r1, [r2]
_08157D56:
	ldr r0, [r2]
	lsrs r0, r0, #5
	str r0, [r2]
_08157D5C:
	ldrh r1, [r2]
_08157D5E:
	adds r0, r2, #0
	bl MultiBootSend
	b _08157DD6
	.align 2, 0
_08157D68: .4byte 0x04000126
_08157D6C:
	lsls r0, r4, #1
	ldr r1, _08157DB4 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08157D88
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08157DB8
_08157D88:
	subs r4, #1
	cmp r4, #0
	bne _08157D6C
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _08157DD4
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2]
	str r1, [r2, #4]
	b _08157D5C
	.align 2, 0
_08157DB4: .4byte 0x04000120
_08157DB8:
	movs r0, #0
	strb r0, [r2, #0x1e]
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r1, #0xf
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	strb r0, [r1]
	strh r0, [r2, #0x16]
	movs r0, #0x71
	b _08157DD6
_08157DD4:
	movs r0, #0
_08157DD6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start MultiBootInit
MultiBootInit: @ 0x08157DDC
	adds r2, r0, #0
	movs r0, #0
	strb r0, [r2, #0x1e]
	strb r0, [r2, #0x18]
	strb r0, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r1, #0xf
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	strb r0, [r1]
	strh r0, [r2, #0x16]
	bx lr

	thumb_func_start MultiBootCheckComplete
MultiBootCheckComplete: @ 0x08157DF8
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _08157E04
	movs r0, #0
	b _08157E06
_08157E04:
	movs r0, #1
_08157E06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiBootWaitSendDone
MultiBootWaitSendDone: @ 0x08157E0C
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _08157E4C @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08157E30
	ldr r5, _08157E50 @ =0x0000795C
	movs r4, #0x80
_08157E20:
	adds r2, #1
	cmp r2, r5
	bgt _08157E30
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08157E20
_08157E30:
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _08157E42
	movs r1, #0xd
	cmp r2, #8
	beq _08157E42
	movs r1, #4
_08157E42:
	subs r0, r0, r1
	bgt _08157E42
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08157E4C: .4byte 0x04000128
_08157E50: .4byte 0x0000795C

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801E630
sub_0801E630: @ 0x0801E630
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801E664 @ =sub_0801FD58
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0801E668 @ =nullsub_29
	str r3, [sp]
	movs r3, #0
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E66C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801E674
	.align 2, 0
_0801E664: .4byte sub_0801FD58
_0801E668: .4byte nullsub_29
_0801E66C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801E674:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801E6B8 @ =0x010000BE
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801E6BC @ =sub_0801ED94
	str r0, [r1]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r2, [r0]
	ldr r1, _0801E6C0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E6B8: .4byte 0x010000BE
_0801E6BC: .4byte sub_0801ED94
_0801E6C0: .4byte gBldRegs

	thumb_func_start sub_0801E6C4
sub_0801E6C4: @ 0x0801E6C4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801E6F8 @ =sub_0801F1F4
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0801E6FC @ =nullsub_110
	str r3, [sp]
	movs r3, #0
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E700
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801E708
	.align 2, 0
_0801E6F8: .4byte sub_0801F1F4
_0801E6FC: .4byte nullsub_110
_0801E700:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801E708:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0801E748 @ =0x010000BE
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801E74C @ =sub_0801F2E8
	str r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0801E750 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E748: .4byte 0x010000BE
_0801E74C: .4byte sub_0801F2E8
_0801E750: .4byte gBldRegs

	thumb_func_start sub_0801E754
sub_0801E754: @ 0x0801E754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	ldr r1, _0801E7B8 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0801E7BC @ =gUnk_082DE8AC
	ldr r0, _0801E7C0 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	mov r3, sb
	lsls r0, r3, #1
	add r0, sb
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r4, [r1]
	ldr r1, _0801E7C4 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _0801E7C8 @ =0x00001F0B
	strh r0, [r1]
	ldr r0, _0801E7CC @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	ldr r5, _0801E7D0 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0801E7D8
	ldr r0, _0801E7D4 @ =gUnk_082D7850
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	adds r2, r4, #0
	b _0801E7F6
	.align 2, 0
_0801E7B8: .4byte gDispCnt
_0801E7BC: .4byte gUnk_082DE8AC
_0801E7C0: .4byte gUnk_08D60A80
_0801E7C4: .4byte gBgCntRegs
_0801E7C8: .4byte 0x00001F0B
_0801E7CC: .4byte gBgScrollRegs
_0801E7D0: .4byte gUnk_03002440
_0801E7D4: .4byte gUnk_082D7850
_0801E7D8:
	ldr r1, _0801E964 @ =0x040000D4
	ldr r0, _0801E968 @ =gUnk_082D7850
	lsls r2, r4, #2
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _0801E96C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0801E970 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0801E7F6:
	ldr r4, _0801E968 @ =gUnk_082D7850
	adds r4, r2, r4
	ldr r0, [r4]
	ldr r0, [r0, #8]
	ldr r1, _0801E974 @ =0x06008000
	bl LZ77UnCompVram
	movs r6, #0
	mov r0, sb
	lsls r0, r0, #1
	str r0, [sp, #8]
	add r1, sp, #4
	mov sl, r1
	ldr r1, _0801E964 @ =0x040000D4
	movs r5, #0
	ldr r2, _0801E978 @ =0x8000001E
	ldr r3, _0801E97C @ =0x0600F800
_0801E818:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	adds r0, r0, r5
	str r0, [r1]
	str r3, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x3c
	adds r3, #0x40
	adds r6, #1
	cmp r6, #0x13
	bls _0801E818
	ldr r2, _0801E980 @ =gUnk_082DE93C
	ldr r3, _0801E984 @ =gUnk_08D60A80
	mov r8, r3
	ldrh r0, [r3]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	add r1, sb
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0801E968 @ =gUnk_082D7850
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldr r6, _0801E988 @ =gBgCntRegs
	movs r4, #0
	ldr r1, _0801E98C @ =0x00001E0E
	strh r1, [r6, #2]
	ldr r5, _0801E990 @ =gBgScrollRegs
	strh r4, [r5, #4]
	ldr r1, _0801E994 @ =0x0600CC80
	bl LZ77UnCompVram
	str r4, [sp]
	ldr r1, _0801E964 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0801E998 @ =0x0600DF20
	str r0, [r1, #4]
	ldr r0, _0801E99C @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xf9
	mov r3, sl
	strh r0, [r3]
	str r3, [r1]
	ldr r0, _0801E9A0 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0801E9A4 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801E9A8 @ =0x0600F1D6
	mov ip, r0
	movs r0, #0
	adds r6, r5, #0
_0801E890:
	movs r2, #0
	adds r5, r0, #1
	lsls r4, r0, #5
	lsls r3, r0, #3
_0801E898:
	adds r1, r4, r2
	lsls r1, r1, #1
	add r1, ip
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, #0x64
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0801E898
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0801E890
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	add r1, sb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0801E9AC @ =gUnk_082DE90C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0801E968 @ =gUnk_082D7850
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	movs r4, #0
	ldr r1, _0801E9B0 @ =0x00005C0D
	ldr r2, _0801E988 @ =gBgCntRegs
	strh r1, [r2, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	ldr r1, _0801E9B4 @ =0x0600C000
	bl LZ77UnCompVram
	str r4, [sp]
	ldr r0, _0801E964 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	ldr r1, _0801E9B8 @ =0x0600CC60
	str r1, [r0, #4]
	ldr r1, _0801E99C @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	movs r1, #0x63
	mov r2, sl
	strh r1, [r2]
	str r2, [r0]
	ldr r1, _0801E9BC @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _0801E9C0 @ =0x81000800
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	ldr r1, _0801E9C4 @ =0x0600E480
	str r1, [r0, #4]
	ldr r2, _0801E9C8 @ =0x80000020
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r5, #0
	adds r1, #0x80
	str r1, [r0]
	ldr r1, _0801E9CC @ =0x0600E4C0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r1, r5, #0
	adds r1, #0x40
	str r1, [r0]
	ldr r1, _0801E9D0 @ =0x0600EC80
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	adds r5, #0xc0
	str r5, [r0]
	ldr r1, _0801E9D4 @ =0x0600ECC0
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0801E9D8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E964: .4byte 0x040000D4
_0801E968: .4byte gUnk_082D7850
_0801E96C: .4byte gBgPalette
_0801E970: .4byte 0x80000100
_0801E974: .4byte 0x06008000
_0801E978: .4byte 0x8000001E
_0801E97C: .4byte 0x0600F800
_0801E980: .4byte gUnk_082DE93C
_0801E984: .4byte gUnk_08D60A80
_0801E988: .4byte gBgCntRegs
_0801E98C: .4byte 0x00001E0E
_0801E990: .4byte gBgScrollRegs
_0801E994: .4byte 0x0600CC80
_0801E998: .4byte 0x0600DF20
_0801E99C: .4byte 0x85000008
_0801E9A0: .4byte 0x0600F000
_0801E9A4: .4byte 0x81000400
_0801E9A8: .4byte 0x0600F1D6
_0801E9AC: .4byte gUnk_082DE90C
_0801E9B0: .4byte 0x00005C0D
_0801E9B4: .4byte 0x0600C000
_0801E9B8: .4byte 0x0600CC60
_0801E9BC: .4byte 0x0600E000
_0801E9C0: .4byte 0x81000800
_0801E9C4: .4byte 0x0600E480
_0801E9C8: .4byte 0x80000020
_0801E9CC: .4byte 0x0600E4C0
_0801E9D0: .4byte 0x0600EC80
_0801E9D4: .4byte 0x0600ECC0
_0801E9D8: .4byte gDispCnt

	thumb_func_start sub_0801E9DC
sub_0801E9DC: @ 0x0801E9DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp]
	ldrh r0, [r0]
	movs r1, #0
	bl sub_0801EC2C
	ldr r3, _0801EC14 @ =gUnk_08D60AAC
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	movs r5, #0xa8
	lsls r5, r5, #1
	add r5, sl
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r1, _0801EC1C @ =0x06010000
	mov sb, r1
	bl LZ77UnCompVram
	mov r7, sl
	adds r7, #0x80
	mov r0, sb
	str r0, [r7]
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x14]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC20 @ =gUnk_082DE99C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC24 @ =gUnk_082DE99E
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r0, #0xf
	strb r0, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	mov r8, r1
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	adds r7, #0x28
	mov r0, sb
	str r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x14]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC20 @ =gUnk_082DE99C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC24 @ =gUnk_082DE99E
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r6, #0xe
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	mov r0, r8
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, #0x28
	mov r1, sb
	str r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC20 @ =gUnk_082DE99C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC24 @ =gUnk_082DE99E
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	mov r0, r8
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, #0x28
	mov r1, sb
	str r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC20 @ =gUnk_082DE99C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC24 @ =gUnk_082DE99E
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #7
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r0, #0xf
	strb r0, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	mov r1, r8
	str r1, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	movs r7, #0x90
	lsls r7, r7, #1
	add r7, sl
	mov r0, sb
	str r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x14]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC20 @ =gUnk_082DE99C
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldr r0, _0801EC18 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0801EC24 @ =gUnk_082DE99E
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #7
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r0, #0xf
	strb r0, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	ldr r0, _0801EC28 @ =0x000C0400
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	ldr r0, [sp]
	ldrh r1, [r0]
	mov r0, sl
	bl sub_0801FD30
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EC14: .4byte gUnk_08D60AAC
_0801EC18: .4byte gUnk_08D60A80
_0801EC1C: .4byte 0x06010000
_0801EC20: .4byte gUnk_082DE99C
_0801EC24: .4byte gUnk_082DE99E
_0801EC28: .4byte 0x000C0400

	thumb_func_start sub_0801EC2C
sub_0801EC2C: @ 0x0801EC2C
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _0801EC50 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0801EC58
	ldr r0, _0801EC54 @ =gUnk_082DE69C
	movs r1, #0xe0
	movs r2, #0x10
	bl sub_0815828C
	b _0801EC6E
	.align 2, 0
_0801EC50: .4byte gUnk_03002440
_0801EC54: .4byte gUnk_082DE69C
_0801EC58:
	ldr r1, _0801EC88 @ =0x040000D4
	ldr r0, _0801EC8C @ =gUnk_082DE69C
	str r0, [r1]
	ldr r0, _0801EC90 @ =gUnk_03002E20
	str r0, [r1, #4]
	ldr r0, _0801EC94 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0801EC6E:
	cmp r5, #0
	beq _0801ECAC
	ldr r5, _0801EC98 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0801EC9C
	lsls r0, r4, #1
	adds r0, #1
	lsls r0, r0, #5
	b _0801ECBE
	.align 2, 0
_0801EC88: .4byte 0x040000D4
_0801EC8C: .4byte gUnk_082DE69C
_0801EC90: .4byte gUnk_03002E20
_0801EC94: .4byte 0x80000010
_0801EC98: .4byte gUnk_03002440
_0801EC9C:
	ldr r2, _0801ECA8 @ =0x040000D4
	lsls r0, r4, #1
	adds r0, #1
	lsls r0, r0, #5
	b _0801ECDA
	.align 2, 0
_0801ECA8: .4byte 0x040000D4
_0801ECAC:
	ldr r5, _0801ECCC @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0801ECD4
	lsls r0, r4, #6
	adds r0, #0x40
_0801ECBE:
	ldr r1, _0801ECD0 @ =gUnk_082DE69C
	adds r0, r0, r1
	movs r1, #0xf0
	movs r2, #0x10
	bl sub_0815828C
	b _0801ECF0
	.align 2, 0
_0801ECCC: .4byte gUnk_03002440
_0801ECD0: .4byte gUnk_082DE69C
_0801ECD4:
	ldr r2, _0801ECF8 @ =0x040000D4
	lsls r0, r4, #6
	adds r0, #0x40
_0801ECDA:
	ldr r1, _0801ECFC @ =gUnk_082DE69C
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801ED00 @ =gUnk_03002E40
	str r0, [r2, #4]
	ldr r0, _0801ED04 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r5]
_0801ECF0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ECF8: .4byte 0x040000D4
_0801ECFC: .4byte gUnk_082DE69C
_0801ED00: .4byte gUnk_03002E40
_0801ED04: .4byte 0x80000010

	thumb_func_start sub_0801ED08
sub_0801ED08: @ 0x0801ED08
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xa
	strh r0, [r1, #0x10]
	movs r4, #0xa0
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	bl sub_0815604C
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0x56
	strh r0, [r1, #0x10]
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	bl sub_0815604C
	adds r1, r5, #0
	adds r1, #0xd0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	bl sub_0815604C
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801ED58
	cmp r0, #1
	beq _0801ED68
	adds r1, r5, #0
	adds r1, #0xf8
	strh r4, [r1, #0x10]
	movs r0, #0x98
	strh r0, [r1, #0x12]
	b _0801ED86
_0801ED58:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x50
	strh r0, [r1, #0x10]
	movs r0, #0x98
	strh r0, [r1, #0x12]
	b _0801ED86
_0801ED68:
	adds r1, r5, #0
	adds r1, #0xf8
	movs r0, #0x50
	strh r0, [r1, #0x10]
	movs r4, #0x98
	strh r4, [r1, #0x12]
	adds r0, r1, #0
	bl sub_0815604C
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x9e
	strh r0, [r1, #0x10]
	strh r4, [r1, #0x12]
_0801ED86:
	adds r0, r1, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801ED94
sub_0801ED94: @ 0x0801ED94
	push {r4, lr}
	mov ip, r0
	ldr r1, _0801EDC4 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0801EDC8 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0801EDCC @ =0x00001F0A
	strh r0, [r3]
	ldr r1, _0801EDD0 @ =gBgScrollRegs
	strh r2, [r1]
	strh r2, [r1, #2]
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r0, #3
	beq _0801EDD8
	ldr r0, _0801EDD4 @ =0x00001C0D
	b _0801EDDA
	.align 2, 0
_0801EDC4: .4byte gDispCnt
_0801EDC8: .4byte gBgCntRegs
_0801EDCC: .4byte 0x00001F0A
_0801EDD0: .4byte gBgScrollRegs
_0801EDD4: .4byte 0x00001C0D
_0801EDD8:
	ldr r0, _0801EDF0 @ =0x00001C01
_0801EDDA:
	strh r0, [r3, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	movs r1, #0xaa
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _0801EDF4 @ =sub_0801EDF8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EDF0: .4byte 0x00001C01
_0801EDF4: .4byte sub_0801EDF8

	thumb_func_start sub_0801EDF8
sub_0801EDF8: @ 0x0801EDF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r5, r6, r0
	ldr r0, [r5]
	cmp r0, #3
	beq _0801EE20
	adds r0, r6, #0
	bl sub_0801E9DC
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
_0801EE20:
	ldr r3, _0801EF3C @ =gUnk_082DE8AC
	ldr r0, _0801EF40 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r4, [r1]
	ldr r0, _0801EF44 @ =0x06008000
	str r0, [r6, #4]
	movs r1, #0
	mov r8, r1
	movs r7, #0
	strh r7, [r6, #0xa]
	ldr r0, _0801EF48 @ =0x0600F800
	str r0, [r6, #0xc]
	strh r7, [r6, #0x18]
	strh r7, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	strh r7, [r6, #0x1e]
	strh r7, [r6, #0x20]
	strh r7, [r6, #0x22]
	strh r7, [r6, #0x24]
	movs r2, #0x1e
	strh r2, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	adds r0, r6, #0
	adds r0, #0x2a
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #8
	strh r0, [r6, #0x2e]
	strh r7, [r6, #0x30]
	strh r7, [r6, #0x32]
	ldr r2, _0801EF4C @ =0x00007FFF
	mov sb, r2
	mov r0, sb
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x36]
	adds r0, r6, #0
	bl sub_08153060
	lsls r4, r4, #2
	ldr r1, _0801EF50 @ =gUnk_082D7850
	adds r4, r4, r1
	ldr r0, [r4]
	ldr r0, [r0, #8]
	ldr r1, [r6, #4]
	bl LZ77UnCompVram
	ldr r2, _0801EF54 @ =gDispCnt
	mov sl, r2
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sl
	strh r0, [r1]
	ldr r0, [r5]
	cmp r0, #3
	bne _0801EF24
	ldr r1, _0801EF58 @ =gUnk_082DE8DC
	ldr r2, _0801EF40 @ =gUnk_08D60A80
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, #0x24
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r4, r6, #0
	adds r4, #0x40
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r7, [r4, #0xa]
	ldr r0, _0801EF5C @ =0x0600E000
	str r0, [r4, #0xc]
	strh r7, [r4, #0x18]
	strh r7, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	strh r7, [r4, #0x1e]
	strh r7, [r4, #0x20]
	strh r7, [r4, #0x22]
	strh r7, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r1, #0x14
	strh r1, [r4, #0x28]
	adds r0, r6, #0
	adds r0, #0x6a
	mov r2, r8
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #0x19
	strh r0, [r4, #0x2e]
	strh r7, [r4, #0x30]
	strh r7, [r4, #0x32]
	mov r0, sb
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08153060
	lsls r5, r5, #2
	ldr r1, _0801EF50 @ =gUnk_082D7850
	adds r5, r5, r1
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	mov r2, sl
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sl
	strh r0, [r1]
_0801EF24:
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _0801EF60 @ =sub_0801FDB8
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF3C: .4byte gUnk_082DE8AC
_0801EF40: .4byte gUnk_08D60A80
_0801EF44: .4byte 0x06008000
_0801EF48: .4byte 0x0600F800
_0801EF4C: .4byte 0x00007FFF
_0801EF50: .4byte gUnk_082D7850
_0801EF54: .4byte gDispCnt
_0801EF58: .4byte gUnk_082DE8DC
_0801EF5C: .4byte 0x0600E000
_0801EF60: .4byte sub_0801FDB8

	thumb_func_start sub_0801EF64
sub_0801EF64: @ 0x0801EF64
	push {lr}
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801EF98 @ =gBldRegs
	cmp r0, #0
	bne _0801EFAA
	strh r0, [r3]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #3
	beq _0801EFA0
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801EF9C @ =sub_0801FDD4
	b _0801EFA8
	.align 2, 0
_0801EF98: .4byte gBldRegs
_0801EF9C: .4byte sub_0801FDD4
_0801EFA0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801EFBC @ =sub_0801FDE4
_0801EFA8:
	str r0, [r1]
_0801EFAA:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0801EFBC: .4byte sub_0801FDE4

	thumb_func_start sub_0801EFC0
sub_0801EFC0: @ 0x0801EFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801EFE8
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801EFE8
	ldr r0, _0801F074 @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801EFE8:
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F00C
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801F00C
	ldr r0, _0801F074 @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801F00C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	ldr r0, _0801F070 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801F080
	ldr r0, _0801F078 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F07C @ =sub_0801FE10
	b _0801F09E
	.align 2, 0
_0801F070: .4byte gPressedKeys
_0801F074: .4byte 0x0000021D
_0801F078: .4byte 0x0000021F
_0801F07C: .4byte sub_0801FE10
_0801F080:
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F0A0
	ldr r0, _0801F0A8 @ =0x0000021E
	bl m4aSongNumStart
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F0AC @ =sub_0801FDF4
_0801F09E:
	str r0, [r1]
_0801F0A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0A8: .4byte 0x0000021E
_0801F0AC: .4byte sub_0801FDF4

	thumb_func_start sub_0801F0B0
sub_0801F0B0: @ 0x0801F0B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801F10C
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801F114 @ =sub_0801FE10
	str r0, [r1]
_0801F10C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F114: .4byte sub_0801FE10

	thumb_func_start sub_0801F118
sub_0801F118: @ 0x0801F118
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	ldr r1, _0801F18C @ =gUnk_0203AD14
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801F190 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0801F194 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _0801F198 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _0801F19C @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0801F1A0 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0801F1A4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801F1A8 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801F1AC @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F1B0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08138D64
	b _0801F1E8
	.align 2, 0
_0801F18C: .4byte gUnk_0203AD14
_0801F190: .4byte 0x00007FFF
_0801F194: .4byte 0x040000D4
_0801F198: .4byte gBgPalette
_0801F19C: .4byte 0x81000100
_0801F1A0: .4byte gObjPalette
_0801F1A4: .4byte gUnk_03002440
_0801F1A8: .4byte gBldRegs
_0801F1AC: .4byte gCurGameState
_0801F1B0:
	cmp r4, #1
	beq _0801F1CC
	cmp r4, #1
	blo _0801F1C2
	cmp r4, #2
	beq _0801F1D6
	cmp r4, #3
	beq _0801F1E0
	b _0801F1E8
_0801F1C2:
	bl sub_08134C58
	bl sub_08134D64
	b _0801F1E8
_0801F1CC:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801F1E8
_0801F1D6:
	bl sub_0812F814
	bl sub_0812F91C
	b _0801F1E8
_0801F1E0:
	ldr r0, _0801F1F0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	bl sub_08025650
_0801F1E8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F1F0: .4byte gUnk_0203AD30

	thumb_func_start sub_0801F1F4
sub_0801F1F4: @ 0x0801F1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801F218 @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F21C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801F224
	.align 2, 0
_0801F218: .4byte gCurGameState
_0801F21C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801F224:
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r7, #0xb0
	lsls r7, r7, #1
	adds r7, r7, r4
	mov sl, r7
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, _0801F2A4 @ =gUnk_020382E8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	movs r7, #8
	rsbs r7, r7, #0
	adds r7, r7, r5
	mov r8, r7
_0801F25C:
	lsls r1, r3, #1
	mov r0, ip
	adds r2, r0, r1
	mov r7, sb
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sl
	adds r2, r0, r1
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801F25C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F2CA
	ldr r0, _0801F2A8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F2AC
	adds r0, r4, #0
	bl sub_0801ED08
	b _0801F2CA
	.align 2, 0
_0801F2A4: .4byte gUnk_020382E8
_0801F2A8: .4byte gUnk_0203AD3C
_0801F2AC:
	movs r7, #0xbc
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r4, r0
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_0815604C
_0801F2CA:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F2E8
sub_0801F2E8: @ 0x0801F2E8
	push {r4, lr}
	mov ip, r0
	ldr r1, _0801F318 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0801F31C @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0801F320 @ =0x00001F0A
	strh r0, [r3]
	ldr r1, _0801F324 @ =gBgScrollRegs
	strh r2, [r1]
	strh r2, [r1, #2]
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F32C
	ldr r0, _0801F328 @ =0x00001C0D
	b _0801F32E
	.align 2, 0
_0801F318: .4byte gDispCnt
_0801F31C: .4byte gBgCntRegs
_0801F320: .4byte 0x00001F0A
_0801F324: .4byte gBgScrollRegs
_0801F328: .4byte 0x00001C0D
_0801F32C:
	ldr r0, _0801F344 @ =0x00001C01
_0801F32E:
	strh r0, [r3, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	movs r1, #0xaa
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _0801F348 @ =sub_0801F34C
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F344: .4byte 0x00001C01
_0801F348: .4byte sub_0801F34C

	thumb_func_start sub_0801F34C
sub_0801F34C: @ 0x0801F34C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F376
	adds r0, r6, #0
	bl sub_0801E9DC
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
_0801F376:
	ldr r3, _0801F494 @ =gUnk_082DE8AC
	ldr r0, _0801F498 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r4, [r1]
	ldr r5, _0801F49C @ =0x06008000
	str r5, [r6, #4]
	movs r1, #0
	mov sb, r1
	movs r7, #0
	strh r7, [r6, #0xa]
	ldr r0, _0801F4A0 @ =0x0600F800
	str r0, [r6, #0xc]
	strh r7, [r6, #0x18]
	strh r7, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	strh r7, [r6, #0x1e]
	strh r7, [r6, #0x20]
	strh r7, [r6, #0x22]
	strh r7, [r6, #0x24]
	movs r2, #0x1e
	strh r2, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	adds r0, r6, #0
	adds r0, #0x2a
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #8
	strh r0, [r6, #0x2e]
	strh r7, [r6, #0x30]
	strh r7, [r6, #0x32]
	ldr r2, _0801F4A4 @ =0x00007FFF
	mov sl, r2
	mov r0, sl
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x36]
	adds r0, r6, #0
	bl sub_08153060
	lsls r4, r4, #2
	ldr r1, _0801F4A8 @ =gUnk_082D7850
	adds r4, r4, r1
	ldr r0, [r4]
	ldr r0, [r0, #8]
	adds r1, r5, #0
	bl LZ77UnCompVram
	ldr r2, _0801F4AC @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0801F4AC @ =gDispCnt
	strh r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #3
	bne _0801F47C
	ldr r1, _0801F4B0 @ =gUnk_082DE8DC
	ldr r2, _0801F498 @ =gUnk_08D60A80
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, #0x24
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r4, r6, #0
	adds r4, #0x40
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	strh r7, [r4, #0xa]
	ldr r0, _0801F4B4 @ =0x0600E000
	str r0, [r4, #0xc]
	strh r7, [r4, #0x18]
	strh r7, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	strh r7, [r4, #0x1e]
	strh r7, [r4, #0x20]
	strh r7, [r4, #0x22]
	strh r7, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r1, #0x14
	strh r1, [r4, #0x28]
	adds r0, r6, #0
	adds r0, #0x6a
	mov r2, sb
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #0x19
	strh r0, [r4, #0x2e]
	strh r7, [r4, #0x30]
	strh r7, [r4, #0x32]
	mov r0, sl
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08153060
	lsls r5, r5, #2
	ldr r1, _0801F4A8 @ =gUnk_082D7850
	adds r5, r5, r1
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	ldr r2, _0801F4AC @ =gDispCnt
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0801F4AC @ =gDispCnt
	strh r0, [r1]
_0801F47C:
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, _0801F4B8 @ =sub_0801F4BC
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F494: .4byte gUnk_082DE8AC
_0801F498: .4byte gUnk_08D60A80
_0801F49C: .4byte 0x06008000
_0801F4A0: .4byte 0x0600F800
_0801F4A4: .4byte 0x00007FFF
_0801F4A8: .4byte gUnk_082D7850
_0801F4AC: .4byte gDispCnt
_0801F4B0: .4byte gUnk_082DE8DC
_0801F4B4: .4byte 0x0600E000
_0801F4B8: .4byte sub_0801F4BC

	thumb_func_start sub_0801F4BC
sub_0801F4BC: @ 0x0801F4BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #3
	beq _0801F560
	ldr r0, _0801F574 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F560
	ldr r3, _0801F578 @ =gUnk_082D7850
	ldr r2, _0801F57C @ =gUnk_082DE8DC
	ldr r0, _0801F580 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r4, [r1, #0x18]
	ldr r1, _0801F584 @ =0x0600C000
	bl LZ77UnCompVram
	movs r2, #0
	str r2, [sp]
	ldr r1, _0801F588 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801F58C @ =0x0600CC60
	str r0, [r1, #4]
	ldr r0, _0801F590 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801F594 @ =gUnk_030060A0
	movs r0, #0x63
	strb r0, [r1, #1]
	ldr r1, _0801F598 @ =gUnk_03002E80
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x12
	strb r0, [r1, #7]
	ldr r3, _0801F59C @ =0x0600E480
_0801F526:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _0801F526
	ldr r3, _0801F5A0 @ =0x0600E4C0
	movs r2, #0
	ldr r5, _0801F5A4 @ =gDispCnt
_0801F540:
	lsls r0, r2, #1
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x3c]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1d
	bls _0801F540
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_0801F560:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, _0801F5A8 @ =sub_0801FE3C
	str r0, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F574: .4byte gUnk_0203AD3C
_0801F578: .4byte gUnk_082D7850
_0801F57C: .4byte gUnk_082DE8DC
_0801F580: .4byte gUnk_08D60A80
_0801F584: .4byte 0x0600C000
_0801F588: .4byte 0x040000D4
_0801F58C: .4byte 0x0600CC60
_0801F590: .4byte 0x85000008
_0801F594: .4byte gUnk_030060A0
_0801F598: .4byte gUnk_03002E80
_0801F59C: .4byte 0x0600E480
_0801F5A0: .4byte 0x0600E4C0
_0801F5A4: .4byte gDispCnt
_0801F5A8: .4byte sub_0801FE3C

	thumb_func_start sub_0801F5AC
sub_0801F5AC: @ 0x0801F5AC
	push {lr}
	adds r2, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801F5E0 @ =gBldRegs
	cmp r0, #0
	bne _0801F5F2
	strh r0, [r3]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #3
	beq _0801F5E8
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801F5E4 @ =sub_0801FE58
	b _0801F5F0
	.align 2, 0
_0801F5E0: .4byte gBldRegs
_0801F5E4: .4byte sub_0801FE58
_0801F5E8:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0801F604 @ =sub_0801FE68
_0801F5F0:
	str r0, [r1]
_0801F5F2:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0801F604: .4byte sub_0801FE68

	thumb_func_start sub_0801F608
sub_0801F608: @ 0x0801F608
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801F634
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801F634
	ldr r0, _0801F6BC @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801F634:
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F65C
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801F65C
	ldr r0, _0801F6BC @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801F65C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F6B6
	ldr r0, _0801F6C0 @ =0x0000021E
	bl m4aSongNumStart
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801F6C4 @ =sub_0801FE78
	str r0, [r1]
_0801F6B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6BC: .4byte 0x0000021D
_0801F6C0: .4byte 0x0000021E
_0801F6C4: .4byte sub_0801FE78

	thumb_func_start sub_0801F6C8
sub_0801F6C8: @ 0x0801F6C8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801F724
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801F72C @ =sub_0801FE94
	str r0, [r1]
_0801F724:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F72C: .4byte sub_0801FE94

	thumb_func_start sub_0801F730
sub_0801F730: @ 0x0801F730
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, [r0]
	ldr r1, _0801F7A0 @ =gUnk_0203AD14
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801F7A4 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0801F7A8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0801F7AC @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _0801F7B0 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0801F7B4 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0801F7B8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801F7BC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801F7C0 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	cmp r4, #1
	beq _0801F7CE
	cmp r4, #1
	blo _0801F7C4
	cmp r4, #2
	beq _0801F7D8
	cmp r4, #3
	beq _0801F7E2
	b _0801F7EA
	.align 2, 0
_0801F7A0: .4byte gUnk_0203AD14
_0801F7A4: .4byte 0x00007FFF
_0801F7A8: .4byte 0x040000D4
_0801F7AC: .4byte gBgPalette
_0801F7B0: .4byte 0x81000100
_0801F7B4: .4byte gObjPalette
_0801F7B8: .4byte gUnk_03002440
_0801F7BC: .4byte gBldRegs
_0801F7C0: .4byte gCurGameState
_0801F7C4:
	bl sub_08134C58
	bl sub_08134D64
	b _0801F7EA
_0801F7CE:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801F7EA
_0801F7D8:
	bl sub_0812F814
	bl sub_0812F91C
	b _0801F7EA
_0801F7E2:
	ldr r0, _0801F7F4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	bl sub_08025650
_0801F7EA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7F4: .4byte gUnk_0203AD30

	thumb_func_start sub_0801F7F8
sub_0801F7F8: @ 0x0801F7F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801F81C @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F820
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801F828
	.align 2, 0
_0801F81C: .4byte gCurGameState
_0801F820:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801F828:
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r1, r1, r4
	mov ip, r1
	movs r7, #0xb0
	lsls r7, r7, #1
	adds r7, r7, r4
	mov sl, r7
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, _0801F8A8 @ =gUnk_020382E8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r5
	mov sb, r1
	movs r7, #8
	rsbs r7, r7, #0
	adds r7, r7, r5
	mov r8, r7
_0801F860:
	lsls r1, r3, #1
	mov r0, ip
	adds r2, r0, r1
	mov r7, sb
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sl
	adds r2, r0, r1
	mov r7, r8
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _0801F860
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F8CE
	ldr r0, _0801F8AC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F8B0
	adds r0, r4, #0
	bl sub_0801ED08
	b _0801F8CE
	.align 2, 0
_0801F8A8: .4byte gUnk_020382E8
_0801F8AC: .4byte gUnk_0203AD3C
_0801F8B0:
	movs r7, #0xbc
	lsls r7, r7, #1
	adds r0, r4, r7
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r4, r0
	movs r1, #0xa8
	strh r1, [r0, #0x10]
	movs r1, #0xa0
	strh r1, [r0, #0x12]
	bl sub_0815604C
_0801F8CE:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F8EC
sub_0801F8EC: @ 0x0801F8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r4, _0801F9C0 @ =gUnk_082D7850
	ldr r3, _0801F9C4 @ =gUnk_082DE96C
	ldr r0, _0801F9C8 @ =gUnk_08D60A80
	ldrh r1, [r0]
	lsls r1, r1, #1
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, r8
	ldr r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldr r2, _0801F9CC @ =gBgCntRegs
	movs r4, #0
	ldr r1, _0801F9D0 @ =0x00001E0E
	strh r1, [r2, #2]
	ldr r1, _0801F9D4 @ =gBgScrollRegs
	strh r4, [r1, #4]
	ldr r1, _0801F9D8 @ =0x0600CC80
	bl LZ77UnCompVram
	str r4, [sp]
	ldr r1, _0801F9DC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0801F9E0 @ =0x0600DF20
	str r0, [r1, #4]
	ldr r0, _0801F9E4 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r2, sp, #4
	movs r0, #0xf9
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _0801F9E8 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0801F9EC @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _0801F9F0 @ =0x0600F1D6
	movs r0, #0
	ldr r1, _0801F9F4 @ =gDispCnt
	mov ip, r1
	ldr r2, _0801F9F8 @ =sub_08020058
	mov sb, r2
_0801F962:
	movs r2, #0
	adds r5, r0, #1
	lsls r4, r0, #5
	lsls r3, r0, #3
_0801F96A:
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, #0x64
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _0801F96A
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0801F962
	mov r1, ip
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	add r0, r8
	mov r2, sb
	str r2, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F9C0: .4byte gUnk_082D7850
_0801F9C4: .4byte gUnk_082DE96C
_0801F9C8: .4byte gUnk_08D60A80
_0801F9CC: .4byte gBgCntRegs
_0801F9D0: .4byte 0x00001E0E
_0801F9D4: .4byte gBgScrollRegs
_0801F9D8: .4byte 0x0600CC80
_0801F9DC: .4byte 0x040000D4
_0801F9E0: .4byte 0x0600DF20
_0801F9E4: .4byte 0x85000008
_0801F9E8: .4byte 0x0600F000
_0801F9EC: .4byte 0x81000400
_0801F9F0: .4byte 0x0600F1D6
_0801F9F4: .4byte gDispCnt
_0801F9F8: .4byte sub_08020058

	thumb_func_start sub_0801F9FC
sub_0801F9FC: @ 0x0801F9FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0801FA28 @ =0xFFFF0000
	cmp r0, r1
	bne _0801FA34
	ldr r0, _0801FA2C @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	ldr r0, _0801FA30 @ =gUnk_02038580
	str r5, [r0]
	bl sub_08032E98
	b _0801FAD0
	.align 2, 0
_0801FA28: .4byte 0xFFFF0000
_0801FA2C: .4byte gCurGameState
_0801FA30: .4byte gUnk_02038580
_0801FA34:
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0801FA90
	bl sub_08031C3C
	ldr r1, _0801FA74 @ =gUnk_0203AD30
	ldr r0, _0801FA78 @ =gUnk_020382A0
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801FA7C @ =gUnk_0203AD3C
	ldr r0, _0801FA80 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r1]
	ldr r1, _0801FA84 @ =gUnk_0203AD44
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0801FA88 @ =gUnk_0203AD24
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FA8C @ =sub_0801FEFC
	str r0, [r1]
	b _0801FAD0
	.align 2, 0
_0801FA74: .4byte gUnk_0203AD30
_0801FA78: .4byte gUnk_020382A0
_0801FA7C: .4byte gUnk_0203AD3C
_0801FA80: .4byte 0x04000128
_0801FA84: .4byte gUnk_0203AD44
_0801FA88: .4byte gUnk_0203AD24
_0801FA8C: .4byte sub_0801FEFC
_0801FA90:
	cmp r0, #1
	bne _0801FAAE
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _0801FAD0
	bl sub_08031C54
	b _0801FAD0
_0801FAAE:
	cmp r0, #0
	bge _0801FAC8
	bl sub_08031C3C
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _0801FAC4 @ =sub_08020094
	str r0, [r1]
	b _0801FAD0
	.align 2, 0
_0801FAC4: .4byte sub_08020094
_0801FAC8:
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
_0801FAD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801FAD8
sub_0801FAD8: @ 0x0801FAD8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801FB04
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801FB04
	ldr r0, _0801FB8C @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0801FB04:
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801FB2C
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #2
	beq _0801FB2C
	ldr r0, _0801FB8C @ =0x0000021D
	bl m4aSongNumStart
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801FB2C:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r1, [r2]
	adds r3, r5, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r1, [r1]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FB86
	ldr r0, _0801FB90 @ =0x0000021E
	bl m4aSongNumStart
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, _0801FB94 @ =sub_0801FF0C
	str r0, [r1]
_0801FB86:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB8C: .4byte 0x0000021D
_0801FB90: .4byte 0x0000021E
_0801FB94: .4byte sub_0801FF0C

	thumb_func_start sub_0801FB98
sub_0801FB98: @ 0x0801FB98
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xef
	movs r0, #0xe
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	subs r3, #0x28
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, #0x9f
	movs r1, #0xf
	strb r1, [r0]
	ldrh r0, [r2]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #1
	ands r1, r2
	bl sub_0801EC2C
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801FBF4
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, _0801FBFC @ =sub_0801FF28
	str r0, [r1]
_0801FBF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBFC: .4byte sub_0801FF28

	thumb_func_start sub_0801FC00
sub_0801FC00: @ 0x0801FC00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r6, [r0]
	ldr r1, _0801FC64 @ =gUnk_0203AD14
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1]
	mov r0, sp
	ldr r1, _0801FC68 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0801FC6C @ =gBgPalette
	ldr r5, _0801FC70 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0801FC74 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0801FC78 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0801FC7C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x1f
	strh r0, [r1, #4]
	ldr r0, _0801FC80 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	cmp r6, #1
	beq _0801FC8E
	cmp r6, #1
	blo _0801FC84
	cmp r6, #2
	beq _0801FC98
	b _0801FCA0
	.align 2, 0
_0801FC64: .4byte gUnk_0203AD14
_0801FC68: .4byte 0x00007FFF
_0801FC6C: .4byte gBgPalette
_0801FC70: .4byte 0x01000100
_0801FC74: .4byte gObjPalette
_0801FC78: .4byte gUnk_03002440
_0801FC7C: .4byte gBldRegs
_0801FC80: .4byte gCurGameState
_0801FC84:
	bl sub_08134C58
	bl sub_08134D64
	b _0801FCA0
_0801FC8E:
	bl sub_0812A670
	bl sub_0812A77C
	b _0801FCA0
_0801FC98:
	bl sub_0812F814
	bl sub_0812F91C
_0801FCA0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

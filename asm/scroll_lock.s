	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0811D508
sub_0811D508: @ 0x0811D508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	movs r0, #0
	b _0811D664
_0811D524:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	mov sb, r1
	ldr r2, _0811D5B4 @ =gKirbys
	add r2, sb
	mov r8, r2
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	beq _0811D542
	b _0811D648
_0811D542:
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D5C0
	ldr r0, _0811D5B8 @ =gKirbys+0xC
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D5CC
	movs r2, #1
	mov r0, sl
	lsls r2, r0
	ldr r0, [r6, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D5A2
	orrs r0, r2
	str r0, [r6, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D5BC @ =gCurLevelInfo+0x1EC
	adds r0, r0, r3
	str r1, [r0]
_0811D5A2:
	mov r0, r8
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r6, #0
	bl sub_0811C7D0
	b _0811D5CC
	.align 2, 0
_0811D5B4: .4byte gKirbys
_0811D5B8: .4byte gKirbys+0xC
_0811D5BC: .4byte gCurLevelInfo+0x1EC
_0811D5C0:
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5CC:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D63C @ =gKirbys
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D5FE
	adds r0, r7, #0
	mov r1, sl
	bl sub_0811DB48
	movs r1, #0x10
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5FE:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D65C
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D640 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D644 @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D65C
	subs r0, #1
	str r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	b _0811D65C
	.align 2, 0
_0811D63C: .4byte gKirbys
_0811D640: .4byte gCurLevelInfo
_0811D644: .4byte 0x0000065E
_0811D648:
	movs r0, #0x10
	mov r1, sl
	lsls r0, r1
	ldr r1, [r6, #4]
	bics r1, r0
	movs r0, #1
	mov r2, sl
	lsls r0, r2
	bics r1, r0
	str r1, [r6, #4]
_0811D65C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0811D664:
	mov sl, r0
	ldr r0, _0811D688 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bhs _0811D670
	b _0811D524
_0811D670:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D688: .4byte gUnk_0203AD44

	thumb_func_start sub_0811D68C
sub_0811D68C: @ 0x0811D68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0811D6BA
	b _0811D818
_0811D6BA:
	movs r0, #0
	mov sb, r0
	ldr r0, _0811D760 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	blo _0811D6C8
	b _0811D986
_0811D6C8:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
	ldr r6, _0811D764 @ =gKirbys
	add r6, r8
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0811D6E4
	b _0811D7F0
_0811D6E4:
	mov r3, sl
	ldr r1, [r3, #0x40]
	ldr r2, [r3, #0x44]
	mov r5, sl
	adds r5, #0xb0
	ldr r4, [r5]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D770
	ldr r0, _0811D768 @ =gKirbys+0xC
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D77C
	movs r2, #1
	mov r0, sb
	lsls r2, r0
	ldr r0, [r7, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D746
	orrs r0, r2
	str r0, [r7, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D76C @ =gCurLevelInfo+0x1EC
	adds r0, r0, r3
	str r1, [r0]
_0811D746:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0811D77A
	.align 2, 0
_0811D760: .4byte gUnk_0203AD44
_0811D764: .4byte gKirbys
_0811D768: .4byte gKirbys+0xC
_0811D76C: .4byte gCurLevelInfo+0x1EC
_0811D770:
	movs r1, #1
	mov r0, sb
	lsls r1, r0
	ldr r0, [r7, #4]
	bics r0, r1
_0811D77A:
	str r0, [r7, #4]
_0811D77C:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D7E4 @ =gKirbys
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D7A2
	mov r0, sl
	mov r1, sb
	bl sub_0811DB48
_0811D7A2:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D7FC
	adds r1, r0, #0
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D7E8 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D7EC @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D7FC
	subs r0, #1
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #8]
	b _0811D7FC
	.align 2, 0
_0811D7E4: .4byte gKirbys
_0811D7E8: .4byte gCurLevelInfo
_0811D7EC: .4byte 0x0000065E
_0811D7F0:
	movs r1, #1
	mov r3, sb
	lsls r1, r3
	ldr r0, [r7, #4]
	bics r0, r1
	str r0, [r7, #4]
_0811D7FC:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0811D814 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0811D810
	b _0811D6C8
_0811D810:
	b _0811D986
	.align 2, 0
_0811D814: .4byte gUnk_0203AD44
_0811D818:
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _0811D8AA
	ldr r4, _0811D898 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x7c
	adds r6, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0x84
	adds r5, r2, r0
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xa0
	adds r1, r2, r1
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r2, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0811D8AA
	cmp r0, #0
	ble _0811D89C
	ldr r1, [r5]
	ldr r0, [r7, #0x4c]
	cmp r1, r0
	ble _0811D8AA
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	b _0811D8AA
	.align 2, 0
_0811D898: .4byte gCurLevelInfo
_0811D89C:
	ldr r1, [r6]
	ldr r0, _0811D91C @ =0x000007FF
	cmp r1, r0
	bgt _0811D8AA
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
_0811D8AA:
	adds r0, r7, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0811D932
	ldr r5, _0811D920 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	adds r6, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	adds r1, r2, r1
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D932
	cmp r0, #0
	ble _0811D924
	ldr r1, [r6]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	ble _0811D932
	b _0811D92E
	.align 2, 0
_0811D91C: .4byte 0x000007FF
_0811D920: .4byte gCurLevelInfo
_0811D924:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0811D9A0 @ =0x000007FF
	cmp r1, r0
	bgt _0811D932
_0811D92E:
	movs r0, #0
	strb r0, [r4]
_0811D932:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0811D986
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0811D986
	mov r0, sl
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0811D986
	adds r1, r0, #0
	ldr r3, _0811D9A4 @ =gCurLevelInfo
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811D9A8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D986
	subs r0, #1
	str r0, [r1]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_0811D986:
	mov r1, sl
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D9A0: .4byte 0x000007FF
_0811D9A4: .4byte gCurLevelInfo
_0811D9A8: .4byte 0x0000065E

	thumb_func_start sub_0811D9AC
sub_0811D9AC: @ 0x0811D9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811D9D0
	ldrh r0, [r7, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0811D9D8
_0811D9D0:
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0811D9D8:
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r3, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	mov sl, r0
	ldrb r4, [r1, #3]
	str r4, [sp]
	ldr r2, _0811DA24 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r4, [sp, #8]
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r4, _0811DA28 @ =0x0000065E
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r1, #0x22]
	movs r0, #8
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _0811DB10
	movs r6, #0
	ldr r0, _0811DA2C @ =gUnk_0203AD44
	mov r8, r0
	b _0811DB0A
	.align 2, 0
_0811DA24: .4byte gCurLevelInfo
_0811DA28: .4byte 0x0000065E
_0811DA2C: .4byte gUnk_0203AD44
_0811DA30:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0811DB40 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sb
	bne _0811DB02
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x7c
	adds r5, r2, r0
	ldr r1, [r3, #0x38]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DB02
	mov r0, ip
	adds r0, #0x80
	adds r4, r2, r0
	ldr r1, [r3, #0x3c]
	ldr r0, [r4]
	cmp r1, r0
	bne _0811DB02
	ldr r0, [r3, #0x18]
	str r0, [r5]
	ldr r0, [r3, #0x1c]
	str r0, [r4]
	mov r0, ip
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r3, #0x18]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r3, #0x1c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	ldr r4, _0811DB44 @ =gCurLevelInfo+0x1EC
	adds r1, r2, r4
	movs r0, #0
	str r0, [r1]
_0811DB02:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, r8
_0811DB0A:
	ldrb r0, [r0]
	cmp r6, r0
	blo _0811DA30
_0811DB10:
	adds r0, r7, #0
	bl ObjectDestroy
	mov r1, sl
	cmp r1, #0
	bne _0811DB22
	ldr r4, [sp, #8]
	cmp r4, #0xff
	beq _0811DB2E
_0811DB22:
	mov r0, sl
	ldr r1, [sp]
	ldr r2, [sp, #4]
	movs r3, #1
	bl sub_08001678
_0811DB2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811DB40: .4byte gKirbys
_0811DB44: .4byte gCurLevelInfo+0x1EC

	thumb_func_start sub_0811DB48
sub_0811DB48: @ 0x0811DB48
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r4, [r1]
	adds r0, #0x60
	ldr r2, _0811DC38 @ =gKirbys
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r1, r5, r1
	adds r1, r1, r2
	adds r1, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0811DC30
	ldr r3, _0811DC3C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x7c
	adds r6, r2, r0
	ldr r1, [r4, #0x38]
	ldr r0, [r6]
	cmp r1, r0
	bne _0811DC30
	adds r0, r3, #0
	adds r0, #0x80
	adds r5, r2, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DC30
	ldr r0, [r4, #0x18]
	str r0, [r6]
	ldr r0, [r4, #0x1c]
	str r0, [r5]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r4, #0x18]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r4, #0x1c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0]
_0811DC30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811DC38: .4byte gKirbys
_0811DC3C: .4byte gCurLevelInfo

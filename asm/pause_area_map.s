	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081278D4
sub_081278D4: @ 0x081278D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	ldr r1, _08127930 @ =gDispCnt
	ldr r2, _08127934 @ =0x00001741
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08127938 @ =gBgCntRegs
	movs r3, #0
	ldr r0, _0812793C @ =0x00001606
	strh r0, [r1]
	ldr r0, _08127940 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08127944 @ =0x0000D881
	strh r0, [r1, #4]
	ldr r0, _08127948 @ =gBgScrollRegs
	movs r1, #8
	strh r1, [r0, #2]
	strh r1, [r0]
	strh r3, [r0, #6]
	strh r3, [r0, #4]
	strh r3, [r0, #0xa]
	strh r3, [r0, #8]
	ldr r0, _0812794C @ =sub_08127FCC
	ldr r1, _08127950 @ =0x00000714
	movs r2, #0x80
	lsls r2, r2, #5
	str r3, [sp]
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08127954
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812795C
	.align 2, 0
_08127930: .4byte gDispCnt
_08127934: .4byte 0x00001741
_08127938: .4byte gBgCntRegs
_0812793C: .4byte 0x00001606
_08127940: .4byte 0x00001708
_08127944: .4byte 0x0000D881
_08127948: .4byte gBgScrollRegs
_0812794C: .4byte sub_08127FCC
_08127950: .4byte 0x00000714
_08127954:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812795C:
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r3, #0xdc
	lsls r3, r3, #3
	adds r2, r7, r3
	ldrh r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0x48
	str r5, [sp, #0x4c]
	adds r6, r7, #0
	adds r6, #0x74
	str r6, [sp, #0x24]
	adds r0, r7, #0
	adds r0, #0x6c
	str r0, [sp, #0x18]
	adds r1, r7, #0
	adds r1, #0x7a
	str r1, [sp, #0x2c]
	adds r2, r7, #0
	adds r2, #0x76
	str r2, [sp, #0x28]
	adds r2, r5, #0
	adds r3, r7, #0
	adds r3, #0x7b
	str r3, [sp, #0x30]
	adds r5, #0x34
	str r5, [sp, #0x34]
	adds r6, #0xb
	str r6, [sp, #0x38]
	adds r0, #4
	str r0, [sp, #0x1c]
	subs r1, #8
	str r1, [sp, #0x20]
_081279B8:
	adds r0, r7, #0
	adds r0, #0x48
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08127A08 @ =gUnk_083611D0
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	movs r6, #0
	lsls r3, r4, #0x18
	adds r0, r7, #0
	adds r0, #0x88
	str r0, [sp, #0x3c]
	adds r1, r7, #0
	adds r1, #0x8a
	str r1, [sp, #0x40]
	adds r0, #4
	str r0, [sp, #0x44]
	adds r1, #4
	str r1, [sp, #0x48]
	movs r0, #0x90
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0xc0
	adds r1, r1, r7
	mov sb, r1
	movs r0, #0xf0
	adds r0, r0, r7
	mov r8, r0
	adds r1, r7, #0
	adds r1, #0x60
	str r1, [sp, #0x14]
	adds r0, r7, #0
	adds r0, #0x5e
	str r0, [sp, #0x10]
	subs r1, #4
	str r1, [sp, #0x50]
	b _08127A0E
	.align 2, 0
_08127A08: .4byte gUnk_083611D0
_08127A0C:
	adds r6, #1
_08127A0E:
	ldr r0, _08127B14 @ =gUnk_083611E6
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r6, r0
	bge _08127A36
	ldr r1, _08127B18 @ =gUnk_08361220
	adds r0, r5, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	str r2, [sp, #0x54]
	str r3, [sp, #0x58]
	bl sub_08002A5C
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	cmp r0, #0
	beq _08127A0C
	movs r0, #1
	strb r0, [r2]
_08127A36:
	lsrs r0, r3, #0x18
	str r2, [sp, #0x54]
	bl sub_08019EEC
	ldr r2, [sp, #0x54]
	cmp r0, #0
	beq _08127A48
	movs r0, #2
	strb r0, [r2]
_08127A48:
	adds r2, #1
	adds r4, #1
	cmp r4, #9
	ble _081279B8
	movs r1, #0
	movs r4, #1
	ldr r2, [sp, #0x4c]
_08127A56:
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08127A64
	adds r1, #1
_08127A64:
	adds r4, #1
	cmp r4, #9
	ble _08127A56
	cmp r1, #1
	bgt _08127A90
	ldr r1, _08127B1C @ =gUnk_0203ACC0
	ldrh r0, [r1, #0xe]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x22]
	orrs r0, r2
	strh r0, [r1, #0x22]
	ldrh r0, [r1, #0x36]
	orrs r0, r2
	strh r0, [r1, #0x36]
	adds r1, #0x4a
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
_08127A90:
	adds r0, r7, #0
	bl sub_08126CEC
	bl sub_08126C48
	movs r5, #0xdc
	lsls r5, r5, #3
	adds r0, r7, r5
	movs r4, #0
	movs r3, #0
	strh r3, [r0]
	ldr r6, _08127B20 @ =0x000006E2
	adds r0, r7, r6
	strh r3, [r0]
	ldr r0, _08127B24 @ =gUnk_0203AD50
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r2, #0xda
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	adds r5, #6
	adds r0, r7, r5
	strb r1, [r0]
	adds r6, #6
	adds r1, r7, r6
	ldrb r0, [r2, #4]
	lsls r0, r0, #3
	str r0, [r1]
	ldr r0, _08127B28 @ =0x000006EC
	adds r1, r7, r0
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	str r0, [r1]
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r7, r1
	strh r3, [r0]
	ldr r2, _08127B1C @ =gUnk_0203ACC0
	ldr r0, _08127B2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #4
	ldr r2, _08127B30 @ =0x000006F2
	adds r1, r7, r2
	strh r0, [r1]
	ldr r3, _08127B34 @ =0x000006E4
	adds r1, r7, r3
	strh r0, [r1]
	adds r5, #1
	adds r0, r7, r5
	strb r4, [r0]
	adds r0, r7, #0
	bl sub_0812752C
	movs r5, #0
	b _08127B58
	.align 2, 0
_08127B14: .4byte gUnk_083611E6
_08127B18: .4byte gUnk_08361220
_08127B1C: .4byte gUnk_0203ACC0
_08127B20: .4byte 0x000006E2
_08127B24: .4byte gUnk_0203AD50
_08127B28: .4byte 0x000006EC
_08127B2C: .4byte gUnk_0203AD3C
_08127B30: .4byte 0x000006F2
_08127B34: .4byte 0x000006E4
_08127B38:
	movs r0, #0x34
	adds r1, r5, #0
	muls r1, r0, r1
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r1, r6
	adds r0, r7, r0
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r1, r7, r1
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	bl sub_08126B58
	adds r5, #1
_08127B58:
	ldr r0, _08127CC0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	blt _08127B38
	adds r0, r7, #0
	bl sub_08126F04
	ldr r0, _08127CC4 @ =gUnk_08D60A80
	ldrh r3, [r0]
	ldr r5, _08127CC8 @ =0x06012000
	str r5, [r7, #0x60]
	movs r2, #0
	movs r5, #0xe0
	lsls r5, r5, #1
	ldr r6, [sp, #0x24]
	strh r5, [r6]
	ldr r1, _08127CCC @ =gUnk_08363748
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	mov ip, r0
	ldrh r0, [r0, #0x34]
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x36
	ldrb r0, [r0]
	ldr r3, [sp, #0x2c]
	strb r0, [r3]
	ldr r6, [sp, #0x28]
	strh r2, [r6]
	movs r0, #0xff
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	movs r4, #0x10
	ldr r3, [sp, #0x34]
	strb r4, [r3]
	movs r3, #8
	ldr r6, [sp, #0x38]
	strb r3, [r6]
	movs r0, #0xa
	ldr r1, [sp, #0x1c]
	strh r0, [r1]
	movs r0, #0x50
	ldr r6, [sp, #0x20]
	strh r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r7, #0x68]
	movs r0, #0xa0
	ldr r6, [sp, #0x3c]
	strh r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #3
	ldr r6, [sp, #0x40]
	strh r0, [r6]
	ldr r6, [sp, #0x44]
	strh r2, [r6]
	ldr r0, [sp, #0x48]
	strh r2, [r0]
	ldr r6, _08127CC8 @ =0x06012000
	mov r0, sl
	str r6, [r0]
	strh r5, [r0, #0x14]
	mov r6, ip
	ldrh r6, [r6, #0x28]
	strh r6, [r0, #0xc]
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	mov r6, sl
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	strb r4, [r6, #0x1c]
	strb r3, [r6, #0x1f]
	movs r0, #0x78
	strh r0, [r6, #0x10]
	movs r0, #0x14
	strh r0, [r6, #0x12]
	str r1, [r6, #8]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r6, #0x2a]
	strh r2, [r6, #0x2c]
	strh r2, [r6, #0x2e]
	ldr r6, _08127CC8 @ =0x06012000
	mov r0, sb
	str r6, [r0]
	strh r5, [r0, #0x14]
	mov r6, ip
	ldrh r6, [r6, #0x2c]
	strh r6, [r0, #0xc]
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	mov r6, sb
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	strb r4, [r6, #0x1c]
	strb r3, [r6, #0x1f]
	movs r0, #0xe6
	strh r0, [r6, #0x10]
	movs r0, #0x50
	strh r0, [r6, #0x12]
	str r1, [r6, #8]
	movs r0, #0xe6
	lsls r0, r0, #4
	strh r0, [r6, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r6, #0x2a]
	strh r2, [r6, #0x2c]
	strh r2, [r6, #0x2e]
	ldr r6, _08127CC8 @ =0x06012000
	mov r0, r8
	str r6, [r0]
	strh r5, [r0, #0x14]
	mov r5, ip
	ldrh r0, [r5, #0x30]
	mov r6, r8
	strh r0, [r6, #0xc]
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	strb r4, [r6, #0x1c]
	strb r3, [r6, #0x1f]
	movs r0, #0x78
	strh r0, [r6, #0x10]
	movs r0, #0x8c
	strh r0, [r6, #0x12]
	str r1, [r6, #8]
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r6, #0x28]
	movs r0, #0x8c
	lsls r0, r0, #4
	strh r0, [r6, #0x2a]
	strh r2, [r6, #0x2c]
	strh r2, [r6, #0x2e]
	ldr r0, [sp, #0x14]
	bl sub_08155128
	mov r0, sl
	bl sub_08155128
	mov r0, sb
	bl sub_08155128
	mov r0, r8
	bl sub_08155128
	ldr r3, _08127CD0 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08127CD8
	ldr r0, _08127CD4 @ =gUnk_0835ADCC
	movs r1, #0
	movs r2, #0x40
	bl sub_08158334
	b _08127CEE
	.align 2, 0
_08127CC0: .4byte gUnk_0203AD44
_08127CC4: .4byte gUnk_08D60A80
_08127CC8: .4byte 0x06012000
_08127CCC: .4byte gUnk_08363748
_08127CD0: .4byte gUnk_03002440
_08127CD4: .4byte gUnk_0835ADCC
_08127CD8:
	ldr r1, _08127D18 @ =0x040000D4
	ldr r0, _08127D1C @ =gUnk_0835ADCC
	str r0, [r1]
	ldr r0, _08127D20 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08127D24 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08127CEE:
	ldr r4, _08127D28 @ =gUnk_03002440
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08127D34
	ldr r2, _08127D2C @ =0x000006E6
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08127D30 @ =gUnk_08D61280
	adds r0, r0, r1
	movs r1, #0x40
	movs r2, #5
	bl sub_08158334
	b _08127D58
	.align 2, 0
_08127D18: .4byte 0x040000D4
_08127D1C: .4byte gUnk_0835ADCC
_08127D20: .4byte gBgPalette
_08127D24: .4byte 0x80000040
_08127D28: .4byte gUnk_03002440
_08127D2C: .4byte 0x000006E6
_08127D30: .4byte gUnk_08D61280
_08127D34:
	ldr r2, _08127D74 @ =0x040000D4
	ldr r5, _08127D78 @ =0x000006E6
	adds r0, r7, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08127D7C @ =gUnk_08D61280
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08127D80 @ =gUnk_03003820
	str r0, [r2, #4]
	ldr r0, _08127D84 @ =0x80000005
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_08127D58:
	ldr r3, _08127D88 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08127D90
	ldr r0, _08127D8C @ =gUnk_08D6126C
	movs r1, #0x50
	movs r2, #0xa
	bl sub_08158334
	b _08127DA6
	.align 2, 0
_08127D74: .4byte 0x040000D4
_08127D78: .4byte 0x000006E6
_08127D7C: .4byte gUnk_08D61280
_08127D80: .4byte gUnk_03003820
_08127D84: .4byte 0x80000005
_08127D88: .4byte gUnk_03002440
_08127D8C: .4byte gUnk_08D6126C
_08127D90:
	ldr r1, _08127E60 @ =0x040000D4
	ldr r0, _08127E64 @ =gUnk_08D6126C
	str r0, [r1]
	ldr r0, _08127E68 @ =gUnk_03003840
	str r0, [r1, #4]
	ldr r0, _08127E6C @ =0x8000000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08127DA6:
	ldr r0, _08127E70 @ =gUnk_0835AECC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08127E74 @ =0x04001000
	bl CpuSet
	ldr r0, _08127E78 @ =gUnk_08D616E4
	ldr r1, _08127E7C @ =0x06002000
	ldr r2, _08127E80 @ =0x04000100
	bl CpuSet
	ldr r0, _08127E84 @ =gUnk_08D612E4
	ldr r1, _08127E88 @ =0x06002400
	ldr r2, _08127E8C @ =0x04000040
	bl CpuSet
	ldr r0, _08127E90 @ =0x0000FFFF
	ldr r6, [sp, #0x10]
	strh r0, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x50]
	strh r0, [r1]
	movs r2, #0
	mov r8, r2
	ldr r3, _08127E94 @ =0x000006FC
	adds r5, r7, r3
	ldr r0, _08127E98 @ =0x000006F4
	adds r6, r7, r0
	ldr r3, _08127E9C @ =gUnk_083610E8
	mov sb, r2
_08127DE4:
	ldrh r4, [r3]
	lsls r4, r4, #1
	ldr r0, _08127EA0 @ =gUnk_083610EC
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	str r3, [sp, #0x58]
	bl CpuSet
	adds r4, #6
	str r4, [r5]
	mov r1, sb
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	adds r5, #0x10
	adds r6, #0x10
	ldr r3, [sp, #0x58]
	adds r3, #2
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #1
	bls _08127DE4
	adds r0, r7, #0
	bl sub_08126DDC
	ldr r1, _08127EA4 @ =0x000006E6
	adds r0, r7, r1
	ldrb r5, [r0]
	ldr r2, [sp, #0x4c]
	adds r0, r2, r5
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r2, _08127EA8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08127EAC @ =gBgCntRegs
	movs r2, #0
	ldr r0, _08127EB0 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08127EB4 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r3, _08127EB8 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08127EC0
	ldr r0, _08127EBC @ =gUnk_08361DF4
	movs r1, #0x70
	movs r2, #0x10
	bl sub_08158334
	b _08127ED6
	.align 2, 0
_08127E60: .4byte 0x040000D4
_08127E64: .4byte gUnk_08D6126C
_08127E68: .4byte gUnk_03003840
_08127E6C: .4byte 0x8000000A
_08127E70: .4byte gUnk_0835AECC
_08127E74: .4byte 0x04001000
_08127E78: .4byte gUnk_08D616E4
_08127E7C: .4byte 0x06002000
_08127E80: .4byte 0x04000100
_08127E84: .4byte gUnk_08D612E4
_08127E88: .4byte 0x06002400
_08127E8C: .4byte 0x04000040
_08127E90: .4byte 0x0000FFFF
_08127E94: .4byte 0x000006FC
_08127E98: .4byte 0x000006F4
_08127E9C: .4byte gUnk_083610E8
_08127EA0: .4byte gUnk_083610EC
_08127EA4: .4byte 0x000006E6
_08127EA8: .4byte gDispCnt
_08127EAC: .4byte gBgCntRegs
_08127EB0: .4byte 0x00001708
_08127EB4: .4byte gBgScrollRegs
_08127EB8: .4byte gUnk_03002440
_08127EBC: .4byte gUnk_08361DF4
_08127EC0:
	ldr r1, _08127FA0 @ =0x040000D4
	ldr r0, _08127FA4 @ =gUnk_08361DF4
	str r0, [r1]
	ldr r0, _08127FA8 @ =gUnk_03003880
	str r0, [r1, #4]
	ldr r0, _08127FAC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08127ED6:
	ldr r0, _08127FB0 @ =gUnk_08362104
	ldr r1, _08127FB4 @ =0x06009000
	bl LZ77UnCompVram
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081270B8
	adds r0, r7, #0
	bl sub_081275F8
	movs r5, #0xdc
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r3, _08127FB8 @ =gUnk_083611F1
	ldrb r0, [r4, #6]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #8]
	cmp r0, r1
	bgt _08127F06
	str r1, [r4, #8]
_08127F06:
	ldrb r0, [r4, #6]
	lsls r2, r0, #2
	adds r0, r3, #1
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bgt _08127F1A
	str r1, [r4, #0xc]
_08127F1A:
	adds r0, r3, #2
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _08127F2A
	str r1, [r4, #8]
_08127F2A:
	adds r0, r3, #3
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #0xc]
	cmp r0, r1
	blt _08127F3A
	str r1, [r4, #0xc]
_08127F3A:
	ldrh r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08127F6E
	movs r6, #4
	ldrsh r2, [r4, r6]
	movs r0, #8
	ldrsh r3, [r4, r0]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	ldr r0, _08127FBC @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	bl sub_081548A8
	ldrh r1, [r4, #0x10]
	ldr r0, _08127FC0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x10]
_08127F6E:
	ldrh r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldr r0, _08127FC4 @ =gUnk_0203ACC0
	ldr r3, _08127FC8 @ =0x0000FCFF
	adds r2, r0, #0
	adds r2, #0xe
	movs r4, #3
_08127F80:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08127F80
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08127FA0: .4byte 0x040000D4
_08127FA4: .4byte gUnk_08361DF4
_08127FA8: .4byte gUnk_03003880
_08127FAC: .4byte 0x80000010
_08127FB0: .4byte gUnk_08362104
_08127FB4: .4byte 0x06009000
_08127FB8: .4byte gUnk_083611F1
_08127FBC: .4byte gBgAffineRegs
_08127FC0: .4byte 0x0000FFFE
_08127FC4: .4byte gUnk_0203ACC0
_08127FC8: .4byte 0x0000FCFF

	thumb_func_start sub_08127FCC
sub_08127FCC: @ 0x08127FCC
	push {r4, lr}
	ldr r0, _08127FE8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08127FEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08127FF4
	.align 2, 0
_08127FE8: .4byte gCurTask
_08127FEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08127FF4:
	ldr r2, _0812803C @ =gUnk_0203ACC0
	ldrh r1, [r2, #0xe]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08128026
	ldrh r1, [r2, #0x22]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08128026
	ldrh r1, [r2, #0x36]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08128026
	adds r0, r2, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08128048
_08128026:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
	bl sub_08124EC8
	ldr r0, _08128040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08128044 @ =sub_081287F4
	str r0, [r1, #8]
	b _08128066
	.align 2, 0
_0812803C: .4byte gUnk_0203ACC0
_08128040: .4byte gCurTask
_08128044: .4byte sub_081287F4
_08128048:
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	movs r0, #0x80
	movs r1, #0x7f
	bl sub_0803D280
	ldr r0, _0812806C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08128070 @ =sub_0812824C
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_08127760
_08128066:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812806C: .4byte gCurTask
_08128070: .4byte sub_0812824C

	thumb_func_start sub_08128074
sub_08128074: @ 0x08128074
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r4, #0
_08128084:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803E558
	adds r4, #1
	cmp r4, #3
	bls _08128084
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r5, _081281F8 @ =gUnk_083611F1
	ldrb r0, [r4, #6]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #8]
	cmp r0, r1
	bgt _081280AC
	str r1, [r4, #8]
_081280AC:
	ldrb r0, [r4, #6]
	lsls r2, r0, #2
	adds r1, r5, #1
	mov r8, r1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #0xc]
	cmp r0, r1
	bgt _081280C2
	str r1, [r4, #0xc]
_081280C2:
	adds r3, r5, #2
	mov sb, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _081280D4
	str r1, [r4, #8]
_081280D4:
	adds r0, r5, #3
	mov sl, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #0xc]
	cmp r0, r1
	blt _081280E6
	str r1, [r4, #0xc]
_081280E6:
	ldrh r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812811A
	movs r1, #4
	ldrsh r2, [r4, r1]
	movs r0, #8
	ldrsh r3, [r4, r0]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	ldr r0, _081281FC @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	bl sub_081548A8
	ldrh r1, [r4, #0x10]
	ldr r0, _08128200 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x10]
_0812811A:
	ldr r3, _08128204 @ =0x000006E6
	adds r0, r6, r3
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0812819C
	ldr r0, [r6, #0x40]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bls _0812819C
	movs r0, #0xdd
	lsls r0, r0, #3
	adds r7, r6, r0
	lsls r4, r2, #2
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r7]
	cmp r1, r0
	ble _08128156
	adds r0, r6, #0
	adds r0, #0x60
	bl sub_0815604C
_08128156:
	ldr r1, _08128208 @ =0x000006EC
	adds r5, r6, r1
	mov r3, r8
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r5]
	cmp r1, r0
	ble _08128170
	adds r0, r6, #0
	adds r0, #0x90
	bl sub_0815604C
_08128170:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r7]
	cmp r1, r0
	bge _08128186
	adds r0, r6, #0
	adds r0, #0xc0
	bl sub_0815604C
_08128186:
	mov r3, sl
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r5]
	cmp r1, r0
	bge _0812819C
	adds r0, r6, #0
	adds r0, #0xf0
	bl sub_0815604C
_0812819C:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x5e
	ldr r0, _0812820C @ =0x000006F4
	adds r4, r6, r0
_081281A6:
	adds r0, r4, #0
	bl sub_08127834
	adds r4, #0x10
	adds r5, #1
	cmp r5, #1
	bls _081281A6
	adds r0, r6, #0
	bl sub_08126DDC
	adds r0, r6, #0
	bl sub_08127010
	ldr r0, [r6, #0x40]
	adds r0, #1
	str r0, [r6, #0x40]
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08128234
	adds r1, r6, #0
	adds r1, #0x5c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r5, r1, #0
	ldr r6, _08128210 @ =gUnk_08D61B20
	ldr r2, _08128214 @ =gUnk_08D612E4
_081281E2:
	adds r1, r5, #0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r0, r6
	ldrb r4, [r0]
	cmp r4, #0xff
	bne _08128218
	movs r0, #0
	strh r0, [r1]
	b _081281E2
	.align 2, 0
_081281F8: .4byte gUnk_083611F1
_081281FC: .4byte gBgAffineRegs
_08128200: .4byte 0x0000FFFE
_08128204: .4byte 0x000006E6
_08128208: .4byte 0x000006EC
_0812820C: .4byte 0x000006F4
_08128210: .4byte gUnk_08D61B20
_08128214: .4byte gUnk_08D612E4
_08128218:
	lsls r0, r4, #8
	adds r0, r0, r2
	ldr r1, _08128244 @ =0x06002400
	ldr r2, _08128248 @ =0x04000040
	bl CpuSet
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, r0, r6
	ldrb r4, [r0]
	strh r4, [r7]
_08128234:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08128244: .4byte 0x06002400
_08128248: .4byte 0x04000040

	thumb_func_start sub_0812824C
sub_0812824C: @ 0x0812824C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08128270 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08128274
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812827C
	.align 2, 0
_08128270: .4byte gCurTask
_08128274:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812827C:
	adds r7, r0, #0
	ldr r2, _081282CC @ =gUnk_0203ACC0
	ldrh r1, [r2, #0xe]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _081282B6
	ldrh r1, [r5, #0x22]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _081282B6
	ldrh r1, [r5, #0x36]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _081282B6
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _081282D8
_081282B6:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
	bl sub_08124EC8
	ldr r0, _081282D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081282D4 @ =sub_081287F4
	str r0, [r1, #8]
	b _08128428
	.align 2, 0
_081282CC: .4byte gUnk_0203ACC0
_081282D0: .4byte gCurTask
_081282D4: .4byte sub_081287F4
_081282D8:
	adds r0, r7, #0
	adds r0, #0x47
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	bne _081282E8
	b _08128448
_081282E8:
	adds r2, r7, #0
	adds r2, #0x44
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _081282FC
	b _08128428
_081282FC:
	strh r3, [r2]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _08128338
	ldr r2, _08128334 @ =0x000006E6
	adds r0, r7, r2
	ldrb r1, [r0]
	adds r3, r1, #0
	movs r0, #0x48
	adds r0, r0, r7
	mov r8, r0
	mov r2, r8
_08128318:
	adds r1, #1
	cmp r1, #9
	ble _08128320
	movs r1, #1
_08128320:
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0812835E
	cmp r1, r3
	bne _08128318
	b _0812835E
	.align 2, 0
_08128334: .4byte 0x000006E6
_08128338:
	ldr r1, _081283E0 @ =0x000006E6
	adds r0, r7, r1
	ldrb r1, [r0]
	adds r3, r1, #0
	movs r2, #0x48
	adds r2, r2, r7
	mov r8, r2
_08128346:
	subs r1, #1
	cmp r1, #0
	bgt _0812834E
	movs r1, #9
_0812834E:
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0812835E
	cmp r1, r3
	bne _08128346
_0812835E:
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, _081283E0 @ =0x000006E6
	adds r4, r7, r3
	movs r5, #0
	strb r6, [r4]
	adds r0, r7, #0
	bl sub_081275F8
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r2, r7, r0
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	movs r0, #0x80
	movs r1, #0x7f
	bl sub_0803D280
	adds r0, r7, #0
	bl sub_08126F04
	adds r0, r7, #0
	bl sub_0812752C
	adds r0, r7, #0
	bl sub_08127760
	ldrb r6, [r4]
	mov r1, r8
	adds r0, r1, r6
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r2, _081283E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _081283E8 @ =gBgCntRegs
	ldr r0, _081283EC @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _081283F0 @ =gBgScrollRegs
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r3, _081283F4 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _081283FC
	ldr r0, _081283F8 @ =gUnk_08361DF4
	movs r1, #0x70
	movs r2, #0x10
	bl sub_08158334
	b _08128412
	.align 2, 0
_081283E0: .4byte 0x000006E6
_081283E4: .4byte gDispCnt
_081283E8: .4byte gBgCntRegs
_081283EC: .4byte 0x00001708
_081283F0: .4byte gBgScrollRegs
_081283F4: .4byte gUnk_03002440
_081283F8: .4byte gUnk_08361DF4
_081283FC:
	ldr r1, _08128430 @ =0x040000D4
	ldr r0, _08128434 @ =gUnk_08361DF4
	str r0, [r1]
	ldr r0, _08128438 @ =gUnk_03003880
	str r0, [r1, #4]
	ldr r0, _0812843C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08128412:
	ldr r0, _08128440 @ =gUnk_08362104
	ldr r1, _08128444 @ =0x06009000
	bl LZ77UnCompVram
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_081270B8
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
_08128428:
	adds r0, r7, #0
	bl sub_08128074
	b _08128678
	.align 2, 0
_08128430: .4byte 0x040000D4
_08128434: .4byte gUnk_08361DF4
_08128438: .4byte gUnk_03003880
_0812843C: .4byte 0x80000010
_08128440: .4byte gUnk_08362104
_08128444: .4byte 0x06009000
_08128448:
	ldr r2, _0812848C @ =gUnk_0203AD3C
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r3, [r0, #0xa]
	ldrh r4, [r0, #8]
	ldr r0, _08128490 @ =0x000006E6
	adds r1, r7, r0
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #2
	beq _08128472
	b _081285C4
_08128472:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08128498
	ldr r2, _08128494 @ =0x000006EC
	adds r1, r7, r2
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	movs r3, #0xdc
	lsls r3, r3, #3
	adds r2, r7, r3
	b _081284B0
	.align 2, 0
_0812848C: .4byte gUnk_0203AD3C
_08128490: .4byte 0x000006E6
_08128494: .4byte 0x000006EC
_08128498:
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _081284B8
	ldr r0, _081284E0 @ =0x000006EC
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	movs r1, #0xdc
	lsls r1, r1, #3
	adds r2, r7, r1
_081284B0:
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
_081284B8:
	ldrb r0, [r6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r1, [r1, #0xa]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081284E4
	movs r2, #0xdd
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	movs r3, #0xdc
	lsls r3, r3, #3
	adds r2, r7, r3
	b _081284FE
	.align 2, 0
_081284E0: .4byte 0x000006EC
_081284E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08128506
	movs r0, #0xdd
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #4
	str r0, [r1]
	movs r1, #0xdc
	lsls r1, r1, #3
	adds r2, r7, r1
_081284FE:
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
_08128506:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08128544
	ldr r3, _08128530 @ =0x000006E7
	adds r2, r7, r3
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0812853C
	ldr r1, _08128534 @ =0x000006F2
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08128538
	movs r0, #0xff
	b _08128542
	.align 2, 0
_08128530: .4byte 0x000006E7
_08128534: .4byte 0x000006F2
_08128538:
	movs r0, #1
	b _08128542
_0812853C:
	movs r0, #0
	ldrsb r0, [r2, r0]
	rsbs r0, r0, #0
_08128542:
	strb r0, [r2]
_08128544:
	ldr r3, _0812856C @ =0x000006E7
	adds r2, r7, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _081285C4
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08128574
	ldr r0, _08128570 @ =0x000006F2
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bne _0812858C
	b _08128588
	.align 2, 0
_0812856C: .4byte 0x000006E7
_08128570: .4byte 0x000006F2
_08128574:
	ldr r1, _08128600 @ =0x000006F2
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	bne _0812858C
_08128588:
	movs r0, #0
	strb r0, [r2]
_0812858C:
	ldr r2, _08128600 @ =0x000006F2
	adds r3, r7, r2
	ldrh r1, [r3]
	subs r2, #0xe
	adds r0, r7, r2
	strh r1, [r0]
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r2, r7, r0
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
	ldr r1, _08128604 @ =0x000006E7
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _081285C4
	ldrb r0, [r6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r0, [r3]
	lsrs r0, r0, #4
	strb r0, [r1, #0x13]
_081285C4:
	ldrb r2, [r6]
	movs r0, #0x34
	muls r0, r2, r0
	adds r0, r7, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08128632
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r2, [r0, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08128632
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08128608
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	b _0812860E
	.align 2, 0
_08128600: .4byte 0x000006F2
_08128604: .4byte 0x000006E7
_08128608:
	movs r0, #0xff
	mov r2, sb
	strb r0, [r2]
_0812860E:
	ldr r0, _08128684 @ =gUnk_0203ACC0
	ldr r3, _08128688 @ =0x0000FCFF
	adds r2, r0, #0
	adds r2, #0xe
	movs r6, #3
_08128618:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #0x14
	subs r6, #1
	cmp r6, #0
	bge _08128618
	movs r0, #0x20
	movs r1, #1
	movs r2, #2
	bl sub_08128BEC
_08128632:
	adds r0, r7, #0
	bl sub_08128074
	ldr r0, _08128684 @ =gUnk_0203ACC0
	adds r4, r0, #0
	adds r4, #0xd
	adds r5, r0, #0
	movs r6, #3
_08128642:
	ldrh r1, [r5, #0xe]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0812866E
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0812866E
	movs r0, #0
	ldrsb r0, [r4, r0]
	str r0, [r7, #0x58]
	movs r0, #0x20
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _0812868C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08128690 @ =sub_08128788
	str r0, [r1, #8]
_0812866E:
	adds r4, #0x14
	adds r5, #0x14
	subs r6, #1
	cmp r6, #0
	bge _08128642
_08128678:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08128684: .4byte gUnk_0203ACC0
_08128688: .4byte 0x0000FCFF
_0812868C: .4byte gCurTask
_08128690: .4byte sub_08128788

	thumb_func_start sub_08128694
sub_08128694: @ 0x08128694
	push {r4, lr}
	ldr r2, _081286B8 @ =gUnk_02020EE0
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r2, [r0]
	ldr r1, _081286BC @ =gUnk_08D6CD0C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #9
	bne _081286C0
	movs r0, #2
	b _081286E4
	.align 2, 0
_081286B8: .4byte gUnk_02020EE0
_081286BC: .4byte gUnk_08D6CD0C
_081286C0:
	cmp r0, #0xa
	bne _081286CC
	movs r0, #3
	b _081286E4
_081286C8:
	movs r0, #1
	b _081286E4
_081286CC:
	movs r1, #0
	movs r3, #0x83
	lsls r3, r3, #1
	ldr r0, _081286EC @ =gUnk_08361220
_081286D4:
	ldrh r4, [r0]
	cmp r2, r4
	beq _081286C8
	adds r0, #8
	adds r1, #1
	cmp r1, r3
	ble _081286D4
	movs r0, #0
_081286E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_081286EC: .4byte gUnk_08361220

	thumb_func_start sub_081286F0
sub_081286F0: @ 0x081286F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _0812872C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08128730 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _08128734 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08128738 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r3, _0812873C @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08128744
	ldr r0, _08128740 @ =gUnk_08361DF4
	movs r1, #0x70
	movs r2, #0x10
	bl sub_08158334
	b _0812875A
	.align 2, 0
_0812872C: .4byte gDispCnt
_08128730: .4byte gBgCntRegs
_08128734: .4byte 0x00001708
_08128738: .4byte gBgScrollRegs
_0812873C: .4byte gUnk_03002440
_08128740: .4byte gUnk_08361DF4
_08128744:
	ldr r1, _08128770 @ =0x040000D4
	ldr r0, _08128774 @ =gUnk_08361DF4
	str r0, [r1]
	ldr r0, _08128778 @ =gUnk_03003880
	str r0, [r1, #4]
	ldr r0, _0812877C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812875A:
	ldr r0, _08128780 @ =gUnk_08362104
	ldr r1, _08128784 @ =0x06009000
	bl LZ77UnCompVram
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_081270B8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08128770: .4byte 0x040000D4
_08128774: .4byte gUnk_08361DF4
_08128778: .4byte gUnk_03003880
_0812877C: .4byte 0x80000010
_08128780: .4byte gUnk_08362104
_08128784: .4byte 0x06009000

	thumb_func_start sub_08128788
sub_08128788: @ 0x08128788
	push {r4, lr}
	ldr r0, _081287A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081287A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081287B0
	.align 2, 0
_081287A4: .4byte gCurTask
_081287A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081287B0:
	adds r4, r0, #0
	bl sub_0812A304
	cmp r0, #0
	bne _081287E2
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _081287C8
	movs r0, #0
	bl sub_08125A4C
	b _081287D0
_081287C8:
	cmp r0, #1
	bne _081287D0
	bl sub_08124430
_081287D0:
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _081287F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081287E2:
	adds r0, r4, #0
	bl sub_08128074
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081287F0: .4byte gCurTask

	thumb_func_start sub_081287F4
sub_081287F4: @ 0x081287F4
	push {r4, lr}
	ldr r0, _08128810 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08128814
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812881C
	.align 2, 0
_08128810: .4byte gCurTask
_08128814:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812881C:
	adds r0, r4, #0
	bl sub_08128074
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0x12
	ble _08128854
	ldr r2, _0812885C @ =gUnk_0203ACC0
	ldr r0, _08128860 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08128864 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08039670
_08128854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812885C: .4byte gUnk_0203ACC0
_08128860: .4byte gUnk_0203AD3C
_08128864: .4byte gCurTask

	thumb_func_start sub_08128868
sub_08128868: @ 0x08128868
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _081288D4 @ =gUnk_08D61220
	lsls r1, r0, #3
	adds r0, r4, #2
	adds r0, r1, r0
	ldrh r3, [r0]
	adds r0, r4, #6
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r3, r0
	bhi _081288C6
	adds r5, r1, #0
	adds r0, r4, #4
	adds r1, r5, r0
	mov ip, r1
	mov sb, r2
	mov r8, r0
	adds r6, r5, r4
_08128892:
	ldrh r2, [r6]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r4, _081288D8 @ =0x0600B800
	adds r0, r0, r4
	adds r1, r1, r0
	adds r3, #1
	mov r7, ip
	ldrh r7, [r7]
	cmp r2, r7
	bhi _081288BE
	movs r0, #0xe1
	lsls r0, r0, #7
	adds r4, r0, #0
	mov r7, r8
	adds r0, r5, r7
_081288B2:
	strh r4, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r0]
	cmp r2, r7
	bls _081288B2
_081288BE:
	mov r0, sb
	ldrh r0, [r0]
	cmp r3, r0
	bls _08128892
_081288C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081288D4: .4byte gUnk_08D61220
_081288D8: .4byte 0x0600B800

	thumb_func_start sub_081288DC
sub_081288DC: @ 0x081288DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081288F4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_081288F4:
	ldrh r2, [r4, #0x34]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08128908
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08128908:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08128974
	adds r0, r4, #0
	bl sub_0812A254
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0812896E
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	beq _08128944
	ldrh r0, [r4, #0x34]
	ldr r1, _08128940 @ =0x0000FDFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4, #0x34]
	b _08128964
	.align 2, 0
_08128940: .4byte 0x0000FDFF
_08128944:
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08128956
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08128964
_08128956:
	ldr r0, _0812897C @ =0x0000FBFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08128964:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0812896E
	bl sub_081288DC
_0812896E:
	adds r0, r4, #0
	bl sub_081564D8
_08128974:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812897C: .4byte 0x0000FBFF

	thumb_func_start sub_08128980
sub_08128980: @ 0x08128980
	push {r4, r5, lr}
	ldr r0, _0812899C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081289A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081289A8
	.align 2, 0
_0812899C: .4byte gCurTask
_081289A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081289A8:
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x48]
	adds r3, r0, r1
	str r3, [r4, #0x48]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x4c]
	adds r2, r0, r1
	str r2, [r4, #0x4c]
	str r3, [r4, #0x2c]
	str r2, [r4, #0x30]
	adds r5, r4, #0
	adds r5, #0x52
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081289DC
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r1, r3, r1
	str r1, [r4, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r2, r0
	str r0, [r4, #0x30]
_081289DC:
	adds r0, r4, #4
	bl sub_081288DC
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08128A0C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _081289FC
	subs r0, #1
	strh r0, [r1]
	b _08128A20
_081289FC:
	ldr r0, _08128A08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08128A20
	.align 2, 0
_08128A08: .4byte gCurTask
_08128A0C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08128A20
	ldr r0, _08128A28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08128A20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08128A28: .4byte gCurTask

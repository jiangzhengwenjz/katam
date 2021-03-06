	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08110C68
sub_08110C68: @ 0x08110C68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _08110CB0 @ =sub_08110DEC
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08110CB4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r1, _08110CB8 @ =0x0000012D
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _08110CD2
	cmp r1, #1
	bgt _08110CBC
	cmp r1, #0
	beq _08110CC6
	b _08110CF0
	.align 2, 0
_08110CB0: .4byte sub_08110DEC
_08110CB4: .4byte 0xFFFFFBFF
_08110CB8: .4byte 0x0000012D
_08110CBC:
	cmp r1, #2
	beq _08110CD8
	cmp r1, #3
	beq _08110CE4
	b _08110CF0
_08110CC6:
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #6
	b _08110CEE
_08110CD2:
	movs r0, #0xc0
	lsls r0, r0, #5
	b _08110CE8
_08110CD8:
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #6
	b _08110CEE
_08110CE4:
	movs r0, #0xe8
	lsls r0, r0, #8
_08110CE8:
	str r0, [r4, #0x40]
	movs r0, #0x84
	lsls r0, r0, #8
_08110CEE:
	str r0, [r4, #0x44]
_08110CF0:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldr r2, _08110DC8 @ =0x00000127
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08110D18
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08110D24
_08110D18:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #2
	bne _08110D2E
_08110D24:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	str r0, [r4, #0x40]
_08110D2E:
	ldr r0, _08110DCC @ =0x0000012D
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #0
	strb r0, [r2]
	ldr r0, [r4, #0x44]
	ldr r2, _08110DD0 @ =0xFFFF9200
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r1, _08110DD4 @ =gKirbys
	ldr r0, _08110DD8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r5, #0xd4
	lsls r5, r5, #1
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08110DC2
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110D84
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08110DC2
_08110D84:
	ldr r1, _08110DDC @ =gUnk_08D60FA4
	ldr r4, _08110DE0 @ =gSongTable
	ldr r2, _08110DE4 @ =0x00000D44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08110DAA
	movs r1, #0xd4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110DC2
_08110DAA:
	cmp r3, #0
	beq _08110DBC
	ldr r0, _08110DE8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110DC2
_08110DBC:
	adds r0, r5, #0
	bl m4aSongNumStart
_08110DC2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08110DC8: .4byte 0x00000127
_08110DCC: .4byte 0x0000012D
_08110DD0: .4byte 0xFFFF9200
_08110DD4: .4byte gKirbys
_08110DD8: .4byte gUnk_0203AD3C
_08110DDC: .4byte gUnk_08D60FA4
_08110DE0: .4byte gSongTable
_08110DE4: .4byte 0x00000D44
_08110DE8: .4byte gUnk_0203AD10

	thumb_func_start sub_08110DEC
sub_08110DEC: @ 0x08110DEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08110E5A
	ldr r0, _08110E24 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08110E28 @ =sub_08110C10
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08110E2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08110E34
	.align 2, 0
_08110E24: .4byte 0xFFFFFDFF
_08110E28: .4byte sub_08110C10
_08110E2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08110E34:
	str r0, [r4, #8]
	ldr r1, [r4, #0x44]
	ldr r0, _08110E48 @ =0x000057FF
	cmp r1, r0
	bgt _08110E4C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _08110E52
	.align 2, 0
_08110E48: .4byte 0x000057FF
_08110E4C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_08110E52:
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08110E5A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08110E60
sub_08110E60: @ 0x08110E60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08110F00 @ =sub_081144EC
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08110F04 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08110F08 @ =gKirbys
	ldr r0, _08110F0C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08110EF8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110EBC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08110EF8
_08110EBC:
	ldr r1, _08110F10 @ =gUnk_08D60FA4
	ldr r4, _08110F14 @ =gSongTable
	ldr r2, _08110F18 @ =0x00000D3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08110EE0
	ldr r1, _08110F1C @ =0x00000D38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110EF8
_08110EE0:
	cmp r3, #0
	beq _08110EF2
	ldr r0, _08110F20 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110EF8
_08110EF2:
	ldr r0, _08110F24 @ =0x000001A7
	bl m4aSongNumStart
_08110EF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08110F00: .4byte sub_081144EC
_08110F04: .4byte 0xFFFFFBFF
_08110F08: .4byte gKirbys
_08110F0C: .4byte gUnk_0203AD3C
_08110F10: .4byte gUnk_08D60FA4
_08110F14: .4byte gSongTable
_08110F18: .4byte 0x00000D3C
_08110F1C: .4byte 0x00000D38
_08110F20: .4byte gUnk_0203AD10
_08110F24: .4byte 0x000001A7

	thumb_func_start sub_08110F28
sub_08110F28: @ 0x08110F28
	adds r2, r0, #0
	ldr r0, _08110F7C @ =sub_08114578
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #8
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	movs r0, #0x40
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x91
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	bx lr
	.align 2, 0
_08110F7C: .4byte sub_08114578

	thumb_func_start sub_08110F80
sub_08110F80: @ 0x08110F80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r5, [r7, #0x70]
	mov sb, r5
	mov r8, r7
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	ands r0, r2
	cmp r0, #0
	bne _08110FAC
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08110FCA
_08110FAC:
	ldr r1, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08110FCA
	adds r0, r7, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_0809DA30
_08110FCA:
	ldr r0, _081110FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r7, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r3, [r6]
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08110FE4
	b _081111B4
_08110FE4:
	adds r1, r7, #0
	adds r1, #0x80
	ldrh r2, [r1]
	mov r0, r8
	adds r0, #0xe4
	strh r2, [r0]
	ldr r2, _08111100 @ =0x0000270F
	strh r2, [r1]
	movs r4, #0
	ldrsh r3, [r0, r4]
	mov sl, r1
	str r0, [sp]
	mov r4, r8
	adds r4, #0xe3
	cmp r3, r2
	bne _08111006
	b _0811115C
_08111006:
	ldr r1, _08111104 @ =gKirbys
	ldr r0, _08111108 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811106E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0811102E
	ldrb r0, [r6]
	cmp r0, r2
	bne _0811106E
_0811102E:
	ldr r1, _0811110C @ =gUnk_08D60FA4
	ldr r6, _08111110 @ =gSongTable
	ldr r2, _08111114 @ =0x00000D84
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111054
	movs r4, #0xd8
	lsls r4, r4, #4
	adds r0, r6, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811106E
_08111054:
	cmp r3, #0
	beq _08111066
	ldr r0, _08111118 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811106E
_08111066:
	movs r0, #0xd8
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811106E:
	mov r4, r8
	adds r4, #0xe3
	movs r1, #0
	movs r0, #8
	strb r0, [r4]
	movs r0, #0x97
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r0, #1
	strb r0, [r2]
	ldr r2, _0811111C @ =0x00000137
	adds r0, r5, r2
	strb r1, [r0]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r5, r3
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, #0xf3
	adds r6, r5, r0
	mov r1, sl
	ldrb r0, [r1]
	ldr r2, [sp]
	ldrb r1, [r2]
	subs r0, r0, r1
	ldrb r3, [r6]
	adds r0, r0, r3
	strb r0, [r6]
	mov r2, sb
	adds r2, #0x80
	mov r0, sl
	ldrh r1, [r0]
	ldr r3, [sp]
	ldrh r0, [r3]
	subs r1, r1, r0
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sb
	bl sub_08034E14
	mov r0, sb
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _0811115C
	ldrb r2, [r6]
	ldr r0, _08111120 @ =gUnk_0203AD30
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #5
	cmp r2, r0
	blt _0811115C
	adds r0, r7, #0
	bl sub_08110F28
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r7, r0
	bne _08111124
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r0, [r0]
	bl sub_08110E60
	b _08111128
	.align 2, 0
_081110FC: .4byte gUnk_03000510
_08111100: .4byte 0x0000270F
_08111104: .4byte gKirbys
_08111108: .4byte gUnk_0203AD3C
_0811110C: .4byte gUnk_08D60FA4
_08111110: .4byte gSongTable
_08111114: .4byte 0x00000D84
_08111118: .4byte gUnk_0203AD10
_0811111C: .4byte 0x00000137
_08111120: .4byte gUnk_0203AD30
_08111124:
	bl sub_08110E60
_08111128:
	ldr r0, _08111154 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	ldr r4, _08111158 @ =0x0000012D
	adds r1, r5, r4
	strb r0, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	movs r0, #4
	mov r3, r8
	strb r0, [r3]
	b _081111B4
	.align 2, 0
_08111154: .4byte 0x00000129
_08111158: .4byte 0x0000012D
_0811115C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _081111AC
	ldr r1, _081111A8 @ =gUnk_08357384
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	mov r2, sb
	adds r2, #0x54
	strb r1, [r2]
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x54
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _081111B4
	movs r2, #0x97
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	b _081111B4
	.align 2, 0
_081111A8: .4byte gUnk_08357384
_081111AC:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
_081111B4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081111C4
sub_081111C4: @ 0x081111C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xb4
	ldr r2, [r5]
	cmp r2, #0
	bne _081111D4
	b _0811130E
_081111D4:
	adds r1, r6, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #7
	bhi _0811121E
	lsls r0, r0, #2
	ldr r1, _081111E8 @ =_081111EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081111E8: .4byte _081111EC
_081111EC: @ jump table
	.4byte _0811120C @ case 0
	.4byte _0811120C @ case 1
	.4byte _08111212 @ case 2
	.4byte _08111218 @ case 3
	.4byte _0811120C @ case 4
	.4byte _0811120C @ case 5
	.4byte _0811120C @ case 6
	.4byte _0811120C @ case 7
_0811120C:
	movs r0, #0x19
	strb r0, [r5, #0x1a]
	b _08111222
_08111212:
	movs r0, #0x1a
	strb r0, [r5, #0x1a]
	b _08111222
_08111218:
	movs r0, #0x1b
	strb r0, [r5, #0x1a]
	b _08111222
_0811121E:
	adds r0, r2, #0
	b _08111236
_08111222:
	ldr r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08111240
	ldr r0, [r5]
	cmp r0, #0
	beq _0811130E
_08111236:
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
	b _0811130E
_08111240:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08111254
	ldr r0, [r5, #8]
	ldr r1, _08111250 @ =0xFFFFFBFF
	ands r0, r1
	b _08111258
	.align 2, 0
_08111250: .4byte 0xFFFFFBFF
_08111254:
	ldr r0, [r5, #8]
	orrs r0, r2
_08111258:
	str r0, [r5, #8]
	ldr r0, [r6, #8]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08111278
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _08111278
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	bl sub_08155128
_08111278:
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	ldr r3, _081112F8 @ =gCurLevelInfo
	ldr r7, _081112FC @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r0, ip
	strh r0, [r5, #0x10]
	ldr r1, [r6, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0811130E
	ldr r2, _08111300 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811130E
	ldr r1, _08111304 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08111308
	adds r0, r5, #0
	bl sub_081564D8
	b _0811130E
	.align 2, 0
_081112F8: .4byte gCurLevelInfo
_081112FC: .4byte gUnk_0203AD3C
_08111300: .4byte gKirbys
_08111304: .4byte gUnk_0203AD18
_08111308:
	adds r0, r5, #0
	bl sub_0815604C
_0811130E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08111314
sub_08111314: @ 0x08111314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r5
	adds r6, r5, #0
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	movs r4, #0
	ldr r1, _08111358 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _0811135C @ =gUnk_020229E0
	mov ip, r7
	mov r7, sl
	adds r7, #0x87
	str r7, [sp]
	movs r7, #0x56
	adds r7, r7, r5
	mov sl, r7
	b _08111374
	.align 2, 0
_08111358: .4byte gUnk_020229D4
_0811135C: .4byte gUnk_020229E0
_08111360:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0811137C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08111374:
	cmp r0, #0
	bne _08111360
	orrs r2, r3
	str r2, [r1]
_0811137C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r4, sb
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd1
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r7, [sp]
	ldrb r0, [r7]
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
	bl CreateObject
	str r5, [r0, #0x70]
	movs r4, #0x82
	lsls r4, r4, #1
	adds r1, r6, r4
	str r0, [r1]
	bl sub_08113BAC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081113EC
sub_081113EC: @ 0x081113EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08111420 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08111424 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111428
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111430
	.align 2, 0
_08111420: .4byte ObjectMain
_08111424: .4byte ObjectDestroy
_08111428:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111430:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0x85
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r1, r6
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	ldr r1, _08111514 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _08111518 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #0xe
	rsbs r1, r1, #0
	subs r2, #6
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r1, _0811151C @ =gKirbys
	ldr r0, _08111520 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811150A
	ldrb r0, [r4]
	cmp r0, #0
	bne _081114CE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811150A
_081114CE:
	ldr r1, _08111524 @ =gUnk_08D60FA4
	ldr r5, _08111528 @ =gSongTable
	ldr r2, _0811152C @ =0x00000DA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081114F4
	movs r1, #0xda
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811150A
_081114F4:
	cmp r3, #0
	beq _08111502
	ldr r0, _08111530 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _0811150A
_08111502:
	movs r0, #0xda
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811150A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08111514: .4byte 0x001080A0
_08111518: .4byte sub_0809F840
_0811151C: .4byte gKirbys
_08111520: .4byte gUnk_0203AD3C
_08111524: .4byte gUnk_08D60FA4
_08111528: .4byte gSongTable
_0811152C: .4byte 0x00000DA4
_08111530: .4byte gUnk_0203AD10

	thumb_func_start sub_08111534
sub_08111534: @ 0x08111534
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, _081115D0 @ =sub_08114714
	str r0, [r3, #0x78]
	movs r0, #0x12
	strh r0, [r3, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x24]
	ldr r1, _081115D4 @ =gKirbys
	ldr r0, _081115D8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081115C8
	ldrb r0, [r3]
	cmp r0, #0
	bne _0811158C
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081115C8
_0811158C:
	ldr r1, _081115DC @ =gUnk_08D60FA4
	ldr r4, _081115E0 @ =gSongTable
	ldr r2, _081115E4 @ =0x00000DAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081115B0
	ldr r1, _081115E8 @ =0x00000DA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081115C8
_081115B0:
	cmp r3, #0
	beq _081115C2
	ldr r0, _081115EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081115C8
_081115C2:
	ldr r0, _081115F0 @ =0x000001B5
	bl m4aSongNumStart
_081115C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081115D0: .4byte sub_08114714
_081115D4: .4byte gKirbys
_081115D8: .4byte gUnk_0203AD3C
_081115DC: .4byte gUnk_08D60FA4
_081115E0: .4byte gSongTable
_081115E4: .4byte 0x00000DAC
_081115E8: .4byte 0x00000DA8
_081115EC: .4byte gUnk_0203AD10
_081115F0: .4byte 0x000001B5

	thumb_func_start sub_081115F4
sub_081115F4: @ 0x081115F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x85
	ldrb r6, [r0]
	cmp r6, #1
	beq _0811161A
	cmp r6, #1
	bgt _0811160C
	cmp r6, #0
	beq _08111664
	b _08111614
_0811160C:
	cmp r6, #2
	beq _08111648
	cmp r6, #3
	beq _08111692
_08111614:
	adds r4, r5, #0
	adds r4, #0x52
	b _0811173E
_0811161A:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r6, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0803E2B0
	b _0811173E
_08111648:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xec
	lsls r0, r0, #3
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r6, [r0]
	b _081116F4
_08111664:
	adds r1, r5, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	strh r6, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r2, [r0]
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xe
	bl sub_0803E2B0
	b _0811173E
_08111692:
	adds r0, r5, #0
	bl sub_0803D46C
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, _081116C0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _081116C4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _081116C8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r2, r1, #0x10
	ands r2, r6
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _081116CC
	movs r1, #1
	movs r0, #3
	b _081116D0
	.align 2, 0
_081116C0: .4byte gRngVal
_081116C4: .4byte 0x00196225
_081116C8: .4byte 0x3C6EF35F
_081116CC:
	movs r1, #3
	movs r0, #1
_081116D0:
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _0811170A
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xec
	lsls r0, r0, #3
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r4]
	adds r1, #0x33
	movs r0, #2
	strb r0, [r1]
_081116F4:
	movs r1, #0xd
	rsbs r1, r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xd
	bl sub_0803E2B0
	b _0811173E
_0811170A:
	subs r0, r2, r1
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x52
	cmp r0, #0
	bge _0811173E
	adds r2, r5, #0
	adds r2, #0x50
	movs r3, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	strh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r3, [r0]
	subs r1, #0xe
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xe
	bl sub_0803E2B0
_0811173E:
	ldr r1, [r5, #0x44]
	ldr r0, _08111770 @ =0x000057FF
	cmp r1, r0
	bgt _0811174C
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
_0811174C:
	ldr r1, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08111774
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08111784
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811178C
	.align 2, 0
_08111770: .4byte 0x000057FF
_08111774:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08111784
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811178C
_08111784:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0811178C:
	str r0, [r5, #8]
	ldr r0, _08111808 @ =sub_08114708
	str r0, [r5, #0x78]
	movs r0, #0x12
	strh r0, [r5, #4]
	ldr r1, _0811180C @ =gKirbys
	ldr r0, _08111810 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08111800
	ldrb r0, [r5]
	cmp r0, #0
	bne _081117C2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111800
_081117C2:
	ldr r1, _08111814 @ =gUnk_08D60FA4
	ldr r4, _08111818 @ =gSongTable
	ldr r2, _0811181C @ =0x0000053C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081117E8
	movs r1, #0xa7
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111800
_081117E8:
	cmp r3, #0
	beq _081117FA
	ldr r0, _08111820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08111800
_081117FA:
	movs r0, #0xa7
	bl m4aSongNumStart
_08111800:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08111808: .4byte sub_08114708
_0811180C: .4byte gKirbys
_08111810: .4byte gUnk_0203AD3C
_08111814: .4byte gUnk_08D60FA4
_08111818: .4byte gSongTable
_0811181C: .4byte 0x0000053C
_08111820: .4byte gUnk_0203AD10

	thumb_func_start DarkMindForm2CreateLaserShower
DarkMindForm2CreateLaserShower: @ 0x08111824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	mov sb, r5
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _08111850 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _08111854 @ =gUnk_020229E0
	b _0811186C
	.align 2, 0
_08111850: .4byte gUnk_020229D4
_08111854: .4byte gUnk_020229E0
_08111858:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08111874
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0811186C:
	cmp r0, #0
	bne _08111858
	orrs r2, r3
	str r2, [r1]
_08111874:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd2
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r4, r0, #0
	str r6, [r4, #0x70]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, sb
	str r4, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_081122A0
	adds r0, r4, #0
	movs r1, #1
	bl sub_081122A0
	adds r0, r6, #0
	movs r1, #0
	bl sub_081126C0
	adds r0, r6, #0
	movs r1, #1
	bl sub_081126C0
	ldr r1, _0811196C @ =gKirbys
	ldr r0, _08111970 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08111960
	ldrb r0, [r5]
	cmp r0, #0
	bne _08111920
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111960
_08111920:
	ldr r1, _08111974 @ =gUnk_08D60FA4
	ldr r4, _08111978 @ =gSongTable
	ldr r2, _0811197C @ =0x00000D94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111946
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111960
_08111946:
	cmp r3, #0
	beq _08111958
	ldr r0, _08111980 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08111960
_08111958:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_08111960:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811196C: .4byte gKirbys
_08111970: .4byte gUnk_0203AD3C
_08111974: .4byte gUnk_08D60FA4
_08111978: .4byte gSongTable
_0811197C: .4byte 0x00000D94
_08111980: .4byte gUnk_0203AD10

	thumb_func_start sub_08111984
sub_08111984: @ 0x08111984
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _081119B8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081119BC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081119C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081119C8
	.align 2, 0
_081119B8: .4byte ObjectMain
_081119BC: .4byte ObjectDestroy
_081119C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081119C8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0x85
	movs r3, #0
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r1, r6
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	ldr r1, _08111AC4 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _08111AC8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #0x18
	rsbs r1, r1, #0
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #0x18
	bl sub_0803E2B0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_08113BEC
	adds r0, r4, #0
	bl sub_08111B88
	ldr r1, _08111ACC @ =gKirbys
	ldr r0, _08111AD0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08111ABA
	ldrb r0, [r4]
	cmp r0, #0
	bne _08111A82
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111ABA
_08111A82:
	ldr r1, _08111AD4 @ =gUnk_08D60FA4
	ldr r5, _08111AD8 @ =gSongTable
	ldr r2, _08111ADC @ =0x00000D9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111AA6
	ldr r1, _08111AE0 @ =0x00000D98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111ABA
_08111AA6:
	cmp r3, #0
	beq _08111AB4
	ldr r0, _08111AE4 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _08111ABA
_08111AB4:
	ldr r0, _08111AE8 @ =0x000001B3
	bl m4aSongNumStart
_08111ABA:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08111AC4: .4byte 0x001080A0
_08111AC8: .4byte sub_0809F840
_08111ACC: .4byte gKirbys
_08111AD0: .4byte gUnk_0203AD3C
_08111AD4: .4byte gUnk_08D60FA4
_08111AD8: .4byte gSongTable
_08111ADC: .4byte 0x00000D9C
_08111AE0: .4byte 0x00000D98
_08111AE4: .4byte gUnk_0203AD10
_08111AE8: .4byte 0x000001B3

	thumb_func_start sub_08111AEC
sub_08111AEC: @ 0x08111AEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r5, [r2]
	cmp r5, #1
	beq _08111B38
	cmp r5, #1
	bgt _08111B0E
	cmp r5, #0
	beq _08111B14
	b _08111B82
_08111B0E:
	cmp r5, #2
	beq _08111B72
	b _08111B82
_08111B14:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08111B82
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r4, #8]
	ldr r1, _08111B34 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #5
	adds r1, r4, #0
	bl sub_0806FE64
	b _08111B82
	.align 2, 0
_08111B34: .4byte 0xFFFFFDFF
_08111B38:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08111B6A
	adds r0, r6, #0
	movs r1, #0x2c
	movs r2, #0x8d
	bl sub_080A8C28
	ldr r0, [r6, #8]
	eors r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	movs r1, #0x2c
	movs r2, #0x8d
	bl sub_080A8C28
	ldr r0, [r6, #8]
	eors r0, r5
	str r0, [r6, #8]
_08111B6A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	b _08111B82
_08111B72:
	ldr r1, [r4, #8]
	ands r5, r1
	cmp r5, #0
	beq _08111B82
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
_08111B82:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08111B88
sub_08111B88: @ 0x08111B88
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08111BB8 @ =sub_08111C5C
	ldr r2, _08111BBC @ =0x00001001
	ldr r1, _08111BC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111BC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08111BCC
	.align 2, 0
_08111BB8: .4byte sub_08111C5C
_08111BBC: .4byte 0x00001001
_08111BC0: .4byte sub_0803DCCC
_08111BC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08111BCC:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r5, r4, #0
	adds r5, #0x42
	movs r6, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _08111C40 @ =0x00000399
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r4, #0x2b
	strb r6, [r4]
	ldr r2, _08111C44 @ =gKirbys
	ldr r0, _08111C48 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _08111C50
	ldr r5, _08111C4C @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08111C52
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08111C52
	.align 2, 0
_08111C40: .4byte 0x00000399
_08111C44: .4byte gKirbys
_08111C48: .4byte gUnk_0203AD3C
_08111C4C: .4byte 0x0000039A
_08111C50:
	strb r6, [r4]
_08111C52:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08111C5C
sub_08111C5C: @ 0x08111C5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _08111C80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111C84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111C8C
	.align 2, 0
_08111C80: .4byte gCurTask
_08111C84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111C8C:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08111CA6
	ldr r0, [r2]
	bl TaskDestroy
	b _08111EE6
_08111CA6:
	ldr r0, [r7, #8]
	ands r0, r3
	cmp r0, #0
	beq _08111CB6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08111EE6
_08111CB6:
	movs r0, #4
	adds r3, r0, #0
	orrs r3, r1
	strh r3, [r5, #6]
	ldr r2, _08111D28 @ =gKirbys
	ldr r0, _08111D2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _08111D70
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08111D38
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08111D96
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08111D30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08111D34 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08111D96
	.align 2, 0
_08111D28: .4byte gKirbys
_08111D2C: .4byte gUnk_0203AD3C
_08111D30: .4byte 0xFFF7FFFF
_08111D34: .4byte 0x0400000A
_08111D38:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08111D96
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08111D68 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08111D6C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08111D96
	.align 2, 0
_08111D68: .4byte 0xFFF7FFFF
_08111D6C: .4byte 0x0400000A
_08111D70:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08111D8C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08111D8C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_08111D8C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08111D96:
	ldr r2, _08111DD8 @ =gKirbys
	ldr r0, _08111DDC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _08111DE4
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08111DEC
	ldr r6, _08111DE0 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08111DEC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08111DEC
	.align 2, 0
_08111DD8: .4byte gKirbys
_08111DDC: .4byte gUnk_0203AD3C
_08111DE0: .4byte 0x0000039A
_08111DE4:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08111DEC:
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _08111E10
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	b _08111E16
_08111E10:
	ldrh r1, [r5, #6]
	ldr r0, _08111E68 @ =0x0000FBFF
	ands r0, r1
_08111E16:
	strh r0, [r5, #6]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _08111E70
	ldrb r0, [r3]
	cmp r0, #0
	beq _08111E36
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08111E36
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_08111E36:
	cmp r3, #0
	beq _08111E70
	ldr r0, _08111E6C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08111EE0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08111EE0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08111EE6
	.align 2, 0
_08111E68: .4byte 0x0000FBFF
_08111E6C: .4byte gUnk_03000510
_08111E70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08111ED8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _08111EB0
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #4
_08111EB0:
	ldr r0, _08111EDC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08111EE0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08111EE0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08111EE6
	.align 2, 0
_08111ED8: .4byte gKirbys
_08111EDC: .4byte gUnk_03000510
_08111EE0:
	adds r0, r5, #0
	bl sub_0806FAC8
_08111EE6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08111EF4
sub_08111EF4: @ 0x08111EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	ldr r0, _08111F28 @ =sub_08112024
	ldr r2, _08111F2C @ =0x00003501
	ldr r1, _08111F30 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111F34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111F3C
	.align 2, 0
_08111F28: .4byte sub_08112024
_08111F2C: .4byte 0x00003501
_08111F30: .4byte sub_0803DCCC
_08111F34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111F3C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _08111F82
	ldr r0, [r4, #0x34]
	ldr r1, _08111FF4 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, _08111FF8 @ =0xFFFFE400
	adds r0, r0, r1
	str r0, [r4, #0x38]
_08111F82:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r1, r0
	bne _08111FA0
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, _08111FF8 @ =0xFFFFE400
	adds r0, r0, r1
	str r0, [r4, #0x38]
_08111FA0:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _08111FFC @ =0x00000399
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08112000 @ =gKirbys
	ldr r0, _08112004 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0811200C
	ldr r6, _08112008 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112010
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _08112010
	.align 2, 0
_08111FF4: .4byte 0xFFFFE000
_08111FF8: .4byte 0xFFFFE400
_08111FFC: .4byte 0x00000399
_08112000: .4byte gKirbys
_08112004: .4byte gUnk_0203AD3C
_08112008: .4byte 0x0000039A
_0811200C:
	mov r1, r8
	strb r1, [r5]
_08112010:
	movs r0, #0x20
	strh r0, [r4, #4]
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08112024
sub_08112024: @ 0x08112024
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _08112048 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811204C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08112054
	.align 2, 0
_08112048: .4byte gCurTask
_0811204C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08112054:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08112070
	ldr r0, [r2]
	bl TaskDestroy
	b _08112294
_08112070:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _08112082
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _08112294
_08112082:
	ldr r2, _081120EC @ =gKirbys
	ldr r0, _081120F0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _08112134
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081120FC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0811215A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x24
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _081120F4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _081120F8 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0811215A
	.align 2, 0
_081120EC: .4byte gKirbys
_081120F0: .4byte gUnk_0203AD3C
_081120F4: .4byte 0xFFF7FFFF
_081120F8: .4byte 0x0400000A
_081120FC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0811215A
	movs r0, #0x24
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811212C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08112130 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0811215A
	.align 2, 0
_0811212C: .4byte 0xFFF7FFFF
_08112130: .4byte 0x0400000A
_08112134:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08112150
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08112150
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_08112150:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0811215A:
	ldr r2, _0811219C @ =gKirbys
	ldr r0, _081121A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _081121A8
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _081121B0
	ldr r6, _081121A4 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081121B0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _081121B0
	.align 2, 0
_0811219C: .4byte gKirbys
_081121A0: .4byte gUnk_0203AD3C
_081121A4: .4byte 0x0000039A
_081121A8:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_081121B0:
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0811220C
	ldrb r0, [r3]
	cmp r0, #0
	beq _081121D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _081121D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_081121D6:
	cmp r3, #0
	beq _0811220C
	ldr r0, _08112208 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112278
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112278
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08112294
	.align 2, 0
_08112208: .4byte gUnk_03000510
_0811220C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08112270 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _0811224A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #4
_0811224A:
	ldr r0, _08112274 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112278
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112278
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08112294
	.align 2, 0
_08112270: .4byte gKirbys
_08112274: .4byte gUnk_03000510
_08112278:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811228E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08112294
_0811228E:
	adds r0, r5, #0
	bl sub_0806FAC8
_08112294:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081122A0
sub_081122A0: @ 0x081122A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _081122DC @ =sub_081123CC
	ldr r2, _081122E0 @ =0x00003501
	ldr r1, _081122E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081122E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081122F0
	.align 2, 0
_081122DC: .4byte sub_081123CC
_081122E0: .4byte 0x00003501
_081122E4: .4byte sub_0803DCCC
_081122E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081122F0:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _0811237C @ =0x00000399
	movs r0, #0x2a
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	mov r1, sb
	cmp r1, #0
	beq _08112340
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08112340:
	ldr r2, _08112380 @ =gKirbys
	ldr r0, _08112384 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0811238C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08112390
	ldr r7, _08112388 @ =0x0000039A
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112390
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	b _0811238E
	.align 2, 0
_0811237C: .4byte 0x00000399
_08112380: .4byte gKirbys
_08112384: .4byte gUnk_0203AD3C
_08112388: .4byte 0x0000039A
_0811238C:
	mov r0, r8
_0811238E:
	strb r0, [r5]
_08112390:
	movs r0, #0x20
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081123A8
	ldr r0, [r6, #0x40]
	ldr r1, _081123A4 @ =0xFFFFEC00
	b _081123AE
	.align 2, 0
_081123A4: .4byte 0xFFFFEC00
_081123A8:
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
_081123AE:
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	movs r1, #0x8d
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_081123CC
sub_081123CC: @ 0x081123CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _081123F0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081123F4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081123FC
	.align 2, 0
_081123F0: .4byte gCurTask
_081123F4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081123FC:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08112418
	ldr r0, [r2]
	bl TaskDestroy
	b _081126A6
_08112418:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0811242A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _081126A6
_0811242A:
	ldr r2, _08112494 @ =gKirbys
	ldr r0, _08112498 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _081124DC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081124A4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08112502
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811249C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _081124A0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08112502
	.align 2, 0
_08112494: .4byte gKirbys
_08112498: .4byte gUnk_0203AD3C
_0811249C: .4byte 0xFFF7FFFF
_081124A0: .4byte 0x0400000A
_081124A4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08112502
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _081124D4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081124D8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08112502
	.align 2, 0
_081124D4: .4byte 0xFFF7FFFF
_081124D8: .4byte 0x0400000A
_081124DC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081124F8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081124F8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081124F8:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08112502:
	ldr r2, _08112544 @ =gKirbys
	ldr r0, _08112548 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _08112550
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08112558
	ldr r6, _0811254C @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112558
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08112558
	.align 2, 0
_08112544: .4byte gKirbys
_08112548: .4byte gUnk_0203AD3C
_0811254C: .4byte 0x0000039A
_08112550:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08112558:
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r7]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _08112576
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	b _0811257C
_08112576:
	ldrh r1, [r5, #6]
	ldr r0, _081125CC @ =0x0000FBFF
	ands r0, r1
_0811257C:
	strh r0, [r5, #6]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _081125D4
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811259C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0811259C
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0811259C:
	cmp r3, #0
	beq _081125D4
	ldr r0, _081125D0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112640
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112640
	adds r0, r5, #0
	bl sub_0803DBC8
	b _081126A6
	.align 2, 0
_081125CC: .4byte 0x0000FBFF
_081125D0: .4byte gUnk_03000510
_081125D4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08112638 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _08112612
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #4
_08112612:
	ldr r0, _0811263C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112640
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112640
	adds r0, r4, #0
	bl sub_0803DBC8
	b _081126A6
	.align 2, 0
_08112638: .4byte gKirbys
_0811263C: .4byte gUnk_03000510
_08112640:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081126A0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08112668
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r2, _08112664 @ =0xFFFFEC00
	adds r0, r0, r2
	b _08112672
	.align 2, 0
_08112664: .4byte 0xFFFFEC00
_08112668:
	mov r6, r8
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
_08112672:
	str r0, [r5, #0x34]
	mov r2, r8
	ldr r0, [r2, #0x44]
	movs r6, #0x8d
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r5, #0x38]
	ldr r2, _081126B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081126B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081126BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_081126A0:
	adds r0, r5, #0
	bl sub_0806FAC8
_081126A6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081126B4: .4byte gRngVal
_081126B8: .4byte 0x00196225
_081126BC: .4byte 0x3C6EF35F

	thumb_func_start sub_081126C0
sub_081126C0: @ 0x081126C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, _08112700 @ =sub_08112880
	ldr r2, _08112704 @ =0x00003501
	ldr r1, _08112708 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811270C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08112714
	.align 2, 0
_08112700: .4byte sub_08112880
_08112704: .4byte 0x00003501
_08112708: .4byte sub_0803DCCC
_0811270C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08112714:
	adds r6, r0, #0
	mov r8, r6
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r6]
	mov r2, sb
	ldr r0, [r2, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r6, #0x38]
	str r2, [r6, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r6, #4]
	movs r7, #0
	ldr r0, _08112820 @ =gRngVal
	mov ip, r0
	ldr r1, _08112824 @ =0x3C6EF35F
	mov sl, r1
_08112746:
	lsls r5, r7, #3
	mov r4, r8
	adds r4, #0x48
	adds r4, r4, r5
	mov r2, ip
	ldr r0, [r2]
	ldr r1, _08112828 @ =0x00196225
	adds r3, r0, #0
	muls r3, r1, r3
	add r3, sl
	str r3, [r2]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	mov r2, sb
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	mov r1, r8
	adds r1, #0x4c
	adds r1, r1, r5
	ldr r0, [r2, #0x44]
	movs r2, #0x8d
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r1]
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #0x68
	adds r1, r1, r0
	ldr r2, _08112828 @ =0x00196225
	adds r0, r3, #0
	muls r0, r2, r0
	add r0, sl
	mov r2, ip
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08112746
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _081127B4
	movs r1, #0x29
	str r1, [sp, #0xc]
_081127B4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r3, _0811282C @ =0x00000399
	ldr r2, [sp, #0xc]
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	movs r3, #0
	strb r3, [r4]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _081127E0
	ldrh r1, [r6, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r6, #6]
_081127E0:
	ldr r2, _08112830 @ =gKirbys
	ldr r0, _08112834 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811283C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811283E
	ldr r5, _08112838 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0811283E
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0811283E
	.align 2, 0
_08112820: .4byte gRngVal
_08112824: .4byte 0x3C6EF35F
_08112828: .4byte 0x00196225
_0811282C: .4byte 0x00000399
_08112830: .4byte gKirbys
_08112834: .4byte gUnk_0203AD3C
_08112838: .4byte 0x0000039A
_0811283C:
	strb r3, [r4]
_0811283E:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08112854
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r2, _08112850 @ =0xFFFFEC00
	b _0811285C
	.align 2, 0
_08112850: .4byte 0xFFFFEC00
_08112854:
	mov r1, sb
	ldr r0, [r1, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #5
_0811285C:
	adds r0, r0, r2
	str r0, [r6, #0x34]
	mov r1, sb
	ldr r0, [r1, #0x44]
	movs r2, #0x8d
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r6, #0x38]
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08112880
sub_08112880: @ 0x08112880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r2, _081128A8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081128AC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081128B4
	.align 2, 0
_081128A8: .4byte gCurTask
_081128AC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081128B4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x28]
	str r5, [sp, #0x2c]
	adds r7, r0, #0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081128D4
	ldr r0, [r2]
	bl TaskDestroy
	b _08112D48
_081128D4:
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _081128E4
	adds r0, r1, #0
	orrs r0, r3
	b _08112D46
_081128E4:
	ldr r2, _0811294C @ =gKirbys
	ldr r0, _08112950 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x34]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08112994
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0811295C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081129BA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #1
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08112954 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08112958 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _081129BA
	.align 2, 0
_0811294C: .4byte gKirbys
_08112950: .4byte gUnk_0203AD3C
_08112954: .4byte 0xFFF7FFFF
_08112958: .4byte 0x0400000A
_0811295C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081129BA
	movs r0, #1
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811298C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08112990 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081129BA
	.align 2, 0
_0811298C: .4byte 0xFFF7FFFF
_08112990: .4byte 0x0400000A
_08112994:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081129B0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081129B0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081129B0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081129BA:
	ldr r2, _081129FC @ =gKirbys
	ldr r0, _08112A00 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x34]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08112A08
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08112A10
	ldr r6, _08112A04 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112A10
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08112A10
	.align 2, 0
_081129FC: .4byte gKirbys
_08112A00: .4byte gUnk_0203AD3C
_08112A04: .4byte 0x0000039A
_08112A08:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08112A10:
	ldr r0, [sp, #0x28]
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	ldr r0, _08112A7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r1, [sp, #0x28]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112A80
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08112A80
	ldr r6, [r5, #0x34]
	ldr r7, [r5, #0x38]
	movs r0, #0
	mov r8, r0
	ldr r4, [sp, #0x2c]
	adds r4, #0x48
	ldr r1, [sp, #0x2c]
	adds r1, #0x4c
	mov sb, r1
_08112A52:
	mov r2, r8
	lsls r1, r2, #3
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r5, #0x34]
	add r1, sb
	ldr r0, [r1]
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl sub_0803DBC8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08112A52
	str r6, [r5, #0x34]
	str r7, [r5, #0x38]
	b _08112D48
	.align 2, 0
_08112A7C: .4byte gUnk_03000510
_08112A80:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08112A98
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08112A9C
_08112A98:
	movs r0, #1
	strh r0, [r5, #4]
_08112A9C:
	ldrh r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08112AB4
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08112ABE
_08112AB4:
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08112B44 @ =0xFFFFFBFF
	ands r1, r2
_08112ABE:
	str r1, [r0, #8]
	mov sl, r0
	ldrh r4, [r5, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x28
	adds r2, r2, r5
	mov r8, r2
	cmp r3, #0
	bne _08112B62
	adds r0, r5, #0
	adds r0, #0x27
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08112AF0
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _08112B06
_08112AF0:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08112B06
	strb r3, [r5, #1]
	strh r3, [r5, #2]
	ldr r0, _08112B48 @ =0x0000FFFB
	ands r0, r4
	strh r0, [r5, #6]
_08112B06:
	mov r0, sl
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08112B4C
	ldrh r0, [r5, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08112B62
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08112B62
	movs r0, #0xff
	strb r0, [r6]
	ldrh r1, [r5, #6]
	ldr r0, _08112B48 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
	strb r3, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sl
	bl sub_08155128
	b _08112B62
	.align 2, 0
_08112B44: .4byte 0xFFFFFBFF
_08112B48: .4byte 0x0000FFFB
_08112B4C:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r1, [r5, #6]
	ldr r0, _08112BFC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_08112B62:
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	ldr r4, _08112C00 @ =gCurLevelInfo
	ldr r3, _08112C04 @ =gUnk_0203AD3C
	ldrb r0, [r3]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r3]
	muls r0, r7, r0
	adds r3, r4, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08112BBC
	mov r0, sb
	strb r0, [r6]
	strb r0, [r2]
_08112BBC:
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #0x2c]
	adds r2, #0x4c
	mov sb, r2
	ldr r0, [sp, #0x2c]
	adds r0, #0x68
	str r0, [sp, #0x38]
	str r4, [sp, #0x30]
_08112BCE:
	mov r1, r8
	lsls r2, r1, #3
	mov r0, sb
	adds r6, r0, r2
	lsls r0, r1, #1
	ldr r1, [sp, #0x38]
	adds r7, r1, r0
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r6]
	mov ip, r2
	cmp r0, #0
	bge _08112C58
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08112C08
	movs r0, #0
	strh r0, [r7]
	b _08112D1E
	.align 2, 0
_08112BFC: .4byte 0x0000FFFD
_08112C00: .4byte gCurLevelInfo
_08112C04: .4byte gUnk_0203AD3C
_08112C08:
	ldr r4, [sp, #0x2c]
	adds r4, #0x48
	add r4, ip
	ldr r2, _08112CFC @ =gRngVal
	ldr r0, [r2]
	ldr r1, _08112D00 @ =0x00196225
	adds r3, r0, #0
	muls r3, r1, r3
	ldr r2, _08112D04 @ =0x3C6EF35F
	adds r3, r3, r2
	ldr r0, _08112CFC @ =gRngVal
	str r3, [r0]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r2, #0x44]
	movs r1, #0x8d
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r6]
	ldr r2, _08112D00 @ =0x00196225
	adds r0, r3, #0
	muls r0, r2, r0
	ldr r1, _08112D04 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08112CFC @ =gRngVal
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	strh r0, [r7]
_08112C58:
	ldr r1, [sp, #0x2c]
	adds r1, #0x48
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r6, _08112D08 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	ldr r1, [sp, #0x30]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r5, #0x1c]
	mov r1, sb
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r6]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	ldr r2, _08112D0C @ =gUnk_02023540
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x1e]
	ldrh r4, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _08112D1E
	ldr r2, _08112D10 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x34]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08112D1E
	ldr r1, _08112D14 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08112D18
	mov r0, sl
	bl sub_081564D8
	b _08112D1E
	.align 2, 0
_08112CFC: .4byte gRngVal
_08112D00: .4byte 0x00196225
_08112D04: .4byte 0x3C6EF35F
_08112D08: .4byte gUnk_0203AD3C
_08112D0C: .4byte gUnk_02023540
_08112D10: .4byte gKirbys
_08112D14: .4byte gUnk_0203AD18
_08112D18:
	mov r0, sl
	bl sub_0815604C
_08112D1E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08112D2E
	b _08112BCE
_08112D2E:
	ldr r2, [sp, #0x2c]
	ldr r0, [r2, #0x68]
	cmp r0, #0
	bne _08112D48
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	bne _08112D48
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
_08112D46:
	strh r0, [r5, #6]
_08112D48:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08112D58
sub_08112D58: @ 0x08112D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	mov r8, r6
	ldr r3, [r6, #0x70]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r6, #0x44]
	asrs r5, r0, #8
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r1, r0
	bgt _08112E18
	ldr r1, _08112DAC @ =gRngVal
	ldr r2, [r1]
	ldr r0, _08112DB0 @ =0x00196225
	muls r0, r2, r0
	ldr r7, _08112DB4 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _08112DB8 @ =0x00005554
	adds r4, r1, #0
	cmp r2, r0
	bhi _08112DBC
	movs r1, #0
	b _08112DC6
	.align 2, 0
_08112DAC: .4byte gRngVal
_08112DB0: .4byte 0x00196225
_08112DB4: .4byte 0x3C6EF35F
_08112DB8: .4byte 0x00005554
_08112DBC:
	ldr r0, _08112DF4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08112DC6
	movs r1, #1
_08112DC6:
	str r1, [sp]
	mov r0, r8
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08112DF8 @ =0x00000139
	adds r1, r3, r2
	ldrb r1, [r1]
	cmp r0, r1
	bge _08112E18
	ldr r1, [r4]
	ldr r0, _08112DFC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08112E00 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r4]
	lsrs r2, r0, #0x10
	ldr r0, _08112E04 @ =0x00005554
	cmp r2, r0
	bhi _08112E08
	movs r1, #0
	b _08112E12
	.align 2, 0
_08112DF4: .4byte 0x0000AAA9
_08112DF8: .4byte 0x00000139
_08112DFC: .4byte 0x00196225
_08112E00: .4byte 0x3C6EF35F
_08112E04: .4byte 0x00005554
_08112E08:
	ldr r0, _08112E54 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08112E12
	movs r1, #1
_08112E12:
	movs r0, #1
	ands r1, r0
	mov sl, r1
_08112E18:
	movs r4, #0
	ldr r1, _08112E58 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	mov r7, ip
	adds r7, #4
	str r7, [sp, #0xc]
	subs r7, r5, #4
	str r7, [sp, #8]
	movs r7, #0x87
	add r7, r8
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r6
	mov r8, r7
	mov r7, sl
	lsls r7, r7, #0x18
	mov sl, r7
	mov r7, ip
	subs r7, #4
	str r7, [sp, #4]
	adds r5, #4
	str r5, [sp, #0x10]
	adds r5, r6, #0
	adds r5, #0x60
	str r5, [sp, #0x14]
	b _08112E70
	.align 2, 0
_08112E54: .4byte 0x0000AAA9
_08112E58: .4byte gUnk_020229D4
_08112E5C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112E78
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08112E70:
	cmp r0, #0
	bne _08112E5C
	orrs r2, r3
	str r2, [r1]
_08112E78:
	ldr r0, _08112EF8 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r7, sp
	ldrh r7, [r7, #0xc]
	strh r7, [r1, #6]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	mov r3, sl
	cmp r3, #0
	beq _08112EE4
	bl sub_08114784
_08112EE4:
	movs r4, #0
	ldr r1, _08112EFC @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _08112F00
	orrs r2, r5
	b _08112F1A
	.align 2, 0
_08112EF8: .4byte gUnk_020229E0
_08112EFC: .4byte gUnk_020229D4
_08112F00:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112F1C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08112F00
	orrs r2, r3
_08112F1A:
	str r2, [r1]
_08112F1C:
	ldr r0, _08112FA0 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r1, #6]
	mov r7, sp
	ldrh r7, [r7, #8]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	strb r5, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	subs r1, #0x1b
	strb r5, [r1]
	mov r3, sl
	cmp r3, #0
	beq _08112F8C
	bl sub_08114784
_08112F8C:
	movs r4, #0
	ldr r1, _08112FA4 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _08112FA8
	orrs r2, r5
	b _08112FC2
	.align 2, 0
_08112FA0: .4byte gUnk_020229E0
_08112FA4: .4byte gUnk_020229D4
_08112FA8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112FC4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08112FA8
	orrs r2, r3
_08112FC2:
	str r2, [r1]
_08112FC4:
	ldr r5, _08113044 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r7, #1
	strb r7, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r1, #6]
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r1]
	mov r4, sl
	cmp r4, #0
	beq _08113032
	bl sub_08114784
_08113032:
	movs r4, #0
	ldr r1, _08113048 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	bne _0811304C
	orrs r2, r7
	b _08113066
	.align 2, 0
_08113044: .4byte gUnk_020229E0
_08113048: .4byte gUnk_020229D4
_0811304C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08113068
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0811304C
	orrs r2, r3
_08113066:
	str r2, [r1]
_08113068:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r5, sp
	ldrh r5, [r5, #0xc]
	strh r5, [r1, #6]
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldrb r0, [r5]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	subs r1, #0x1b
	strb r4, [r1]
	mov r3, sl
	cmp r3, #0
	beq _081130D8
	bl sub_08114784
_081130D8:
	ldr r1, _0811314C @ =gKirbys
	ldr r0, _08113150 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r4, [sp, #0x14]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0811313C
	ldrb r0, [r6]
	cmp r0, #0
	bne _08113100
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, r2
	bne _0811313C
_08113100:
	ldr r1, _08113154 @ =gUnk_08D60FA4
	ldr r4, _08113158 @ =gSongTable
	ldr r7, _0811315C @ =0x00000DBC
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08113124
	ldr r1, _08113160 @ =0x00000DB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811313C
_08113124:
	cmp r3, #0
	beq _08113136
	ldr r0, _08113164 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811313C
_08113136:
	ldr r0, _08113168 @ =0x000001B7
	bl m4aSongNumStart
_0811313C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811314C: .4byte gKirbys
_08113150: .4byte gUnk_0203AD3C
_08113154: .4byte gUnk_08D60FA4
_08113158: .4byte gSongTable
_0811315C: .4byte 0x00000DBC
_08113160: .4byte 0x00000DB8
_08113164: .4byte gUnk_0203AD10
_08113168: .4byte 0x000001B7

	thumb_func_start CreateDarkMindMirrorCutter
CreateDarkMindMirrorCutter: @ 0x0811316C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081131A0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081131A4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081131A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _081131B0
	.align 2, 0
_081131A0: .4byte ObjectMain
_081131A4: .4byte ObjectDestroy
_081131A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_081131B0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x85
	movs r4, #0
	strb r4, [r0]
	ldr r1, [r5, #8]
	movs r0, #0x40
	orrs r1, r0
	adds r0, #0xc0
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	ldr r0, [r5, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #7
	orrs r0, r2
	ldr r2, _08113234 @ =0x001080A0
	orrs r0, r2
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _08113238 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r2, #4
	rsbs r2, r2, #0
	str r3, [sp]
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_08113C10
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08113234: .4byte 0x001080A0
_08113238: .4byte sub_0809F840

	thumb_func_start sub_0811323C
sub_0811323C: @ 0x0811323C
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08113262
	cmp r0, #1
	beq _0811326C
	movs r3, #0xa0
	lsls r3, r3, #3
	movs r4, #0x80
	lsls r4, r4, #3
	b _08113274
_08113262:
	movs r3, #0xa0
	lsls r3, r3, #2
	movs r4, #0x80
	lsls r4, r4, #2
	b _08113274
_0811326C:
	movs r3, #0xf0
	lsls r3, r3, #2
	movs r4, #0xc0
	lsls r4, r4, #2
_08113274:
	ldr r2, _081132C4 @ =gUnk_08D5FE14
	mov r5, ip
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r0, #0x60
	ldr r1, _081132C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x50
	strh r0, [r3]
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r2, r0, #8
	mov r1, ip
	adds r1, #0x52
	strh r2, [r1]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _081132DA
	cmp r0, #2
	bgt _081132CC
	cmp r0, #1
	beq _081132D2
	b _081132EA
	.align 2, 0
_081132C4: .4byte gUnk_08D5FE14
_081132C8: .4byte 0x000003FF
_081132CC:
	cmp r0, #3
	beq _081132E6
	b _081132EA
_081132D2:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _081132EA
_081132DA:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	b _081132E8
_081132E6:
	rsbs r0, r2, #0
_081132E8:
	strh r0, [r1]
_081132EA:
	mov r5, ip
	ldrh r0, [r5, #4]
	adds r0, #0x10
	strh r0, [r5, #4]
	ldr r1, _0811330C @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08113306
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_08113306:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811330C: .4byte 0xFFFFFC00

	thumb_func_start sub_08113310
sub_08113310: @ 0x08113310
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r3, [r0, #0x70]
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldrh r1, [r1, #4]
	ldr r0, _08113334 @ =0xFFFFFE00
	ands r0, r1
	cmp r0, #0
	beq _08113338
	mov r1, ip
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #0x2f
	b _08113340
	.align 2, 0
_08113334: .4byte 0xFFFFFE00
_08113338:
	mov r1, ip
	adds r1, #0xa2
	ldrh r0, [r1]
	adds r0, #0x10
_08113340:
	strh r0, [r1]
	mov r2, ip
	adds r2, #0xa0
	ldrh r0, [r1]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	ldr r0, [r3, #0x40]
	mov r1, ip
	str r0, [r1, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r1, #0x44]
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r6, r1, #0
	cmp r0, #1
	beq _08113384
	cmp r0, #1
	ble _08113370
	cmp r0, #2
	beq _081133C4
	cmp r0, #3
	beq _081133DC
_08113370:
	movs r4, #0
	ldrsh r3, [r2, r4]
	ldr r2, _08113380 @ =gUnk_08D5FE14
	mov r0, ip
	movs r4, #4
	ldrsh r1, [r0, r4]
	b _081133F2
	.align 2, 0
_08113380: .4byte gUnk_08D5FE14
_08113384:
	movs r0, #0
	ldrsh r4, [r2, r0]
	ldr r3, _081133BC @ =gUnk_08D5FE14
	mov r2, ip
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _081133C0 @ =0x000003FF
	ands r1, r2
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	b _08113414
	.align 2, 0
_081133BC: .4byte gUnk_08D5FE14
_081133C0: .4byte 0x000003FF
_081133C4:
	movs r1, #0
	ldrsh r3, [r2, r1]
	ldr r2, _081133D8 @ =gUnk_08D5FE14
	mov r4, ip
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r4, #0x80
	lsls r4, r4, #2
	b _081133EC
	.align 2, 0
_081133D8: .4byte gUnk_08D5FE14
_081133DC:
	movs r0, #0
	ldrsh r3, [r2, r0]
	ldr r2, _0811344C @ =gUnk_08D5FE14
	mov r4, ip
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r4, #0xc0
	lsls r4, r4, #2
_081133EC:
	adds r1, r1, r4
	ldr r0, _08113450 @ =0x000003FF
	ands r1, r0
_081133F2:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
_08113414:
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #0x10
	strh r0, [r3, #4]
	ldr r1, _08113454 @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08113458
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	b _081134E0
	.align 2, 0
_0811344C: .4byte gUnk_08D5FE14
_08113450: .4byte 0x000003FF
_08113454: .4byte 0xFFFFFC00
_08113458:
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _081134E0
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _081134DA
	ldr r1, _081134E8 @ =gKirbys
	ldr r0, _081134EC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081134DA
	mov r4, ip
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811349E
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081134DA
_0811349E:
	ldr r1, _081134F0 @ =gUnk_08D60FA4
	ldr r4, _081134F4 @ =gSongTable
	ldr r2, _081134F8 @ =0x00000DBC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081134C2
	ldr r1, _081134FC @ =0x00000DB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081134DA
_081134C2:
	cmp r3, #0
	beq _081134D4
	ldr r0, _08113500 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081134DA
_081134D4:
	ldr r0, _08113504 @ =0x000001B7
	bl m4aSongNumStart
_081134DA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_081134E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081134E8: .4byte gKirbys
_081134EC: .4byte gUnk_0203AD3C
_081134F0: .4byte gUnk_08D60FA4
_081134F4: .4byte gSongTable
_081134F8: .4byte 0x00000DBC
_081134FC: .4byte 0x00000DB8
_08113500: .4byte gUnk_0203AD10
_08113504: .4byte 0x000001B7

	thumb_func_start sub_08113508
sub_08113508: @ 0x08113508
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	beq _08113522
	bl sub_081138D0
	movs r0, #0
	b _08113598
_08113522:
	ldr r0, _0811354C @ =sub_081135A8
	ldr r2, _08113550 @ =0x0000FFFE
	ldr r1, _08113554 @ =sub_081147B0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08113558
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08113560
	.align 2, 0
_0811354C: .4byte sub_081135A8
_08113550: .4byte 0x0000FFFE
_08113554: .4byte sub_081147B0
_08113558:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08113560:
	movs r0, #0
	strh r0, [r2, #2]
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	strh r0, [r2]
	strh r6, [r2, #4]
	movs r0, #8
	strh r0, [r2, #6]
	str r5, [r2, #8]
	ldrh r1, [r1]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _081135A0 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _081135A4 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	adds r0, r4, #0
_08113598:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081135A0: .4byte 0x0000FFFF
_081135A4: .4byte 0x00003FFF

	thumb_func_start sub_081135A8
sub_081135A8: @ 0x081135A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _081135D0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _081135D4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081135DC
	.align 2, 0
_081135D0: .4byte gCurTask
_081135D4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081135DC:
	adds r2, r0, #0
	ldr r4, [r2, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08113630
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r2, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	ldr r1, _08113624 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113628 @ =0x00003FFF
	strh r1, [r0, #6]
	ldr r0, _0811362C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081136EC
	.align 2, 0
_08113624: .4byte 0x0000FFFF
_08113628: .4byte 0x00003FFF
_0811362C: .4byte gCurTask
_08113630:
	movs r5, #0
	movs r3, #0
	ldr r0, _08113694 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08113684
	ldr r1, _08113698 @ =gKirbys
	mov sb, r1
	ldrh r7, [r2]
	ldr r1, _0811369C @ =gUnk_02026D50
	mov r8, r1
	adds r6, r0, #0
	ldr r0, _081136A0 @ =gCurLevelInfo
	mov ip, r0
_0811364C:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _0811367A
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	add r0, ip
	ldr r1, _081136A4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0811367A
	movs r5, #1
_0811367A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _0811364C
_08113684:
	cmp r5, #0
	bne _081136A8
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _081136EC
	.align 2, 0
_08113694: .4byte gUnk_0203AD44
_08113698: .4byte gKirbys
_0811369C: .4byte gUnk_02026D50
_081136A0: .4byte gCurLevelInfo
_081136A4: .4byte 0x0000065E
_081136A8:
	ldrh r0, [r2, #6]
	subs r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081136EC
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r1, _081136FC @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113700 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _08113704 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08113708 @ =sub_0811370C
	str r0, [r1, #8]
_081136EC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081136FC: .4byte 0x0000FFFF
_08113700: .4byte 0x00003FFF
_08113704: .4byte gCurTask
_08113708: .4byte sub_0811370C

	thumb_func_start sub_0811370C
sub_0811370C: @ 0x0811370C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113734 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	beq _08113738
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08113740
	.align 2, 0
_08113734: .4byte gCurTask
_08113738:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08113740:
	adds r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0811375C
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08113798
_0811375C:
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _081137F0
	mov r1, ip
	ldr r0, [r1]
	bl sub_081138D0
	ldr r2, _08113790 @ =gKirbys
	ldr r0, _08113794 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08113844
	b _08113858
	.align 2, 0
_08113790: .4byte gKirbys
_08113794: .4byte gUnk_0203AD3C
_08113798:
	movs r2, #0
	movs r3, #0
	ldr r0, _081137FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _081137EC
	ldr r1, _08113800 @ =gKirbys
	mov sl, r1
	ldrh r7, [r5]
	ldr r1, _08113804 @ =gUnk_02026D50
	mov sb, r1
	adds r6, r0, #0
	ldr r0, _08113808 @ =gCurLevelInfo
	mov r8, r0
_081137B4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _081137E2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	add r0, r8
	ldr r1, _0811380C @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081137E2
	movs r2, #1
_081137E2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _081137B4
_081137EC:
	cmp r2, #0
	bne _08113810
_081137F0:
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _081138B8
	.align 2, 0
_081137FC: .4byte gUnk_0203AD44
_08113800: .4byte gKirbys
_08113804: .4byte gUnk_02026D50
_08113808: .4byte gCurLevelInfo
_0811380C: .4byte 0x0000065E
_08113810:
	ldr r0, _0811384C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811386C
	ldr r2, _08113850 @ =gKirbys
	ldr r0, _08113854 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113858
_08113844:
	bl sub_08113A90
	b _081138B8
	.align 2, 0
_0811384C: .4byte gUnk_03000510
_08113850: .4byte gKirbys
_08113854: .4byte gUnk_0203AD3C
_08113858:
	ldr r0, _08113868 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _081138B8
	.align 2, 0
_08113868: .4byte gUnk_0203AD20
_0811386C:
	ldr r2, _08113890 @ =gKirbys
	ldr r0, _08113894 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113898
	bl sub_08113A90
	b _081138A4
	.align 2, 0
_08113890: .4byte gKirbys
_08113894: .4byte gUnk_0203AD3C
_08113898:
	ldr r0, _081138C8 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_081138A4:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081138B8
	ldr r0, _081138CC @ =gCurTask
	ldr r0, [r0]
	bl sub_081138D0
_081138B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081138C8: .4byte gUnk_0203AD20
_081138CC: .4byte gCurTask

	thumb_func_start sub_081138D0
sub_081138D0: @ 0x081138D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081138EA
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081138F2
_081138EA:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081138F2:
	ldr r3, [r2, #8]
	ldr r1, [r4, #8]
	ldr r0, _08113930 @ =sub_0811370C
	cmp r1, r0
	bne _0811392A
	movs r0, #9
	strh r0, [r2, #6]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _08113934 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113938 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _0811393C @ =sub_08113940
	str r0, [r4, #8]
_0811392A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113930: .4byte sub_0811370C
_08113934: .4byte 0x0000FFFF
_08113938: .4byte 0x00003FFF
_0811393C: .4byte sub_08113940

	thumb_func_start sub_08113940
sub_08113940: @ 0x08113940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113968 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _0811396C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08113974
	.align 2, 0
_08113968: .4byte gCurTask
_0811396C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08113974:
	adds r2, r0, #0
	ldr r0, [r2, #8]
	mov ip, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _081139DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _081139CC
	ldr r1, _081139E0 @ =gKirbys
	mov sb, r1
	ldrh r6, [r2]
	ldr r1, _081139E4 @ =gUnk_02026D50
	mov r8, r1
	adds r5, r0, #0
	ldr r7, _081139E8 @ =gCurLevelInfo
_08113994:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _081139C2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _081139EC @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081139C2
	movs r4, #1
_081139C2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _08113994
_081139CC:
	cmp r4, #0
	bne _081139F0
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08113A7C
	.align 2, 0
_081139DC: .4byte gUnk_0203AD44
_081139E0: .4byte gKirbys
_081139E4: .4byte gUnk_02026D50
_081139E8: .4byte gCurLevelInfo
_081139EC: .4byte 0x0000065E
_081139F0:
	ldrh r0, [r2, #6]
	subs r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113A44
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r1, _08113A38 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113A3C @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _08113A40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08113A7C
	.align 2, 0
_08113A38: .4byte 0x0000FFFF
_08113A3C: .4byte 0x00003FFF
_08113A40: .4byte gCurTask
_08113A44:
	ldr r2, _08113A68 @ =gKirbys
	ldr r0, _08113A6C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113A70
	bl sub_08113A90
	b _08113A7C
	.align 2, 0
_08113A68: .4byte gKirbys
_08113A6C: .4byte gUnk_0203AD3C
_08113A70:
	ldr r0, _08113A8C @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08113A7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08113A8C: .4byte gUnk_0203AD20

	thumb_func_start sub_08113A90
sub_08113A90: @ 0x08113A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113B5C @ =gUnk_0203AD20
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	movs r6, #0
	ldr r0, _08113B60 @ =gUnk_030024F0
	mov sb, r0
	ldrb r0, [r0]
	cmp r6, r0
	bhi _08113B4E
	ldr r1, _08113B64 @ =gUnk_030031C0
	mov ip, r1
	movs r3, #0xff
	mov r8, r3
	movs r0, #0xc0
	lsls r0, r0, #8
	mov sl, r0
_08113ABE:
	lsls r4, r6, #3
	mov r3, ip
	adds r1, r4, r3
	ldrh r2, [r1, #2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	eors r2, r0
	strh r2, [r1, #2]
	ldrh r3, [r1]
	mov r1, r8
	ands r1, r3
	movs r0, #0xa0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sl
	ands r2, r0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsrs r5, r2, #0x1e
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08113AFC
	cmp r1, #0
	beq _08113AFC
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08113AFC:
	mov r1, ip
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08113B22
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08113B22
	lsls r0, r5, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r5, r0, #0x18
_08113B22:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #8
	lsls r1, r0
	subs r1, r7, r1
	mov r0, r8
	ands r1, r0
	mov r0, ip
	adds r3, r4, r0
	ldrh r2, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, sb
	ldrb r1, [r1]
	cmp r6, r1
	bls _08113ABE
_08113B4E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08113B5C: .4byte gUnk_0203AD20
_08113B60: .4byte gUnk_030024F0
_08113B64: .4byte gUnk_030031C0

	thumb_func_start sub_08113B68
sub_08113B68: @ 0x08113B68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113B94 @ =sub_0810F428
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08113B98
	movs r0, #0
	b _08113B9C
	.align 2, 0
_08113B94: .4byte sub_0810F428
_08113B98:
	movs r0, #0x80
	lsls r0, r0, #2
_08113B9C:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08113BAC
sub_08113BAC: @ 0x08113BAC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r2, _08113BE4 @ =sub_08114708
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	ldr r1, _08113BE8 @ =0x00000127
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08113BDC
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08113BDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113BE4: .4byte sub_08114708
_08113BE8: .4byte 0x00000127

	thumb_func_start sub_08113BEC
sub_08113BEC: @ 0x08113BEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113C0C @ =sub_08111AEC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113C0C: .4byte sub_08111AEC

	thumb_func_start sub_08113C10
sub_08113C10: @ 0x08113C10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113C30 @ =sub_0811323C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113C30: .4byte sub_0811323C

	thumb_func_start sub_08113C34
sub_08113C34: @ 0x08113C34
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	ldr r2, _08113C80 @ =gUnk_08D64A24
	ldr r0, _08113C84 @ =gRoomProps
	ldr r3, _08113C88 @ =0x00008F8E
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [r0, #0x18]
	lsrs r1, r1, #0xd
	ldr r0, _08113C8C @ =0x06000540
	adds r1, r1, r0
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r5, r2, #0
_08113C58:
	movs r2, #0
	adds r4, r0, #1
_08113C5C:
	ldrh r0, [r3]
	eors r0, r5
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08113C5C
	subs r1, #0x80
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08113C58
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113C80: .4byte gUnk_08D64A24
_08113C84: .4byte gRoomProps
_08113C88: .4byte 0x00008F8E
_08113C8C: .4byte 0x06000540

	thumb_func_start sub_08113C90
sub_08113C90: @ 0x08113C90
	ldr r1, _08113C98 @ =gUnk_02022EA0
	movs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08113C98: .4byte gUnk_02022EA0

	thumb_func_start sub_08113C9C
sub_08113C9C: @ 0x08113C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113CC8 @ =sub_08113CCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x7a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113CC8: .4byte sub_08113CCC

	thumb_func_start sub_08113CCC
sub_08113CCC: @ 0x08113CCC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113CE2
	adds r0, r1, #0
	bl sub_08113CE8
_08113CE2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08113CE8
sub_08113CE8: @ 0x08113CE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113D28 @ =sub_0810BFC0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	strh r2, [r4, #4]
	subs r1, #0x19
	movs r0, #0x7a
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113D28: .4byte sub_0810BFC0

	thumb_func_start sub_08113D2C
sub_08113D2C: @ 0x08113D2C
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113D46
	adds r0, r1, #0
	bl sub_0810C9C8
	b _08113D64
_08113D46:
	adds r1, #0xe4
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _08113D5C
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_08113D5C:
	ldrh r1, [r1]
	adds r0, r2, #0
	adds r0, #0xf0
	strh r1, [r0]
_08113D64:
	pop {r0}
	bx r0

	thumb_func_start sub_08113D68
sub_08113D68: @ 0x08113D68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113DDC @ =gKirbys
	ldr r0, _08113DE0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113D90
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_0814F274
_08113D90:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08113DB0
	adds r0, r4, #0
	bl sub_080700D8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r0, [r4, #8]
	ldr r1, _08113DE4 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
_08113DB0:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08113DC2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_08113DC2:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113DD4
	adds r0, r4, #0
	bl sub_0810C4AC
_08113DD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113DDC: .4byte gKirbys
_08113DE0: .4byte gUnk_0203AD3C
_08113DE4: .4byte 0xFFFFDFFF

	thumb_func_start sub_08113DE8
sub_08113DE8: @ 0x08113DE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113E10 @ =sub_0810BD28
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113E10: .4byte sub_0810BD28

	thumb_func_start sub_08113E14
sub_08113E14: @ 0x08113E14
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x15
	ble _08113E2C
	adds r0, r1, #0
	bl sub_08113E30
_08113E2C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113E30
sub_08113E30: @ 0x08113E30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _08113E6C @ =sub_0810CD98
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08113E70 @ =0x00000129
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08113E74
	adds r0, r4, #0
	bl sub_0810CEB0
	b _08113E8C
	.align 2, 0
_08113E6C: .4byte sub_0810CD98
_08113E70: .4byte 0x00000129
_08113E74:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08113E84
	adds r0, r4, #0
	bl sub_0810D234
	b _08113E8C
_08113E84:
	ldr r0, _08113E94 @ =0x00000135
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
_08113E8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113E94: .4byte 0x00000135

	thumb_func_start sub_08113E98
sub_08113E98: @ 0x08113E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113EDC @ =sub_08113EE8
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08113EE0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08113ED4
	ldr r0, _08113EE4 @ =0x00000129
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_08113ED4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113EDC: .4byte sub_08113EE8
_08113EE0: .4byte 0x00000135
_08113EE4: .4byte 0x00000129

	thumb_func_start sub_08113EE8
sub_08113EE8: @ 0x08113EE8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113EFC
	adds r0, r2, #0
	bl sub_0810D6C0
_08113EFC:
	pop {r0}
	bx r0

	thumb_func_start sub_08113F00
sub_08113F00: @ 0x08113F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113F30 @ =sub_08113F38
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08113F34 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113F30: .4byte sub_08113F38
_08113F34: .4byte 0x00000135

	thumb_func_start sub_08113F38
sub_08113F38: @ 0x08113F38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113F4C
	adds r0, r2, #0
	bl sub_0810ABC0
_08113F4C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113F50
sub_08113F50: @ 0x08113F50
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113F80 @ =sub_08113F88
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08113F84 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113F80: .4byte sub_08113F88
_08113F84: .4byte 0x00000135

	thumb_func_start sub_08113F88
sub_08113F88: @ 0x08113F88
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113F9C
	adds r0, r2, #0
	bl sub_08113FA0
_08113F9C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113FA0
sub_08113FA0: @ 0x08113FA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113FD8 @ =sub_0810D0EC
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r1, [r4, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _08113FDC
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
	b _08113FE2
	.align 2, 0
_08113FD8: .4byte sub_0810D0EC
_08113FDC:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
_08113FE2:
	strb r0, [r1]
	ldr r0, _08113FF4 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113FF4: .4byte 0x00000135

	thumb_func_start sub_08113FF8
sub_08113FF8: @ 0x08113FF8
	adds r3, r0, #0
	ldr r0, _08114018 @ =sub_0810D1D0
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_08114018: .4byte sub_0810D1D0

	thumb_func_start sub_0811401C
sub_0811401C: @ 0x0811401C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811404C @ =sub_08114054
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08114050 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811404C: .4byte sub_08114054
_08114050: .4byte 0x00000135

	thumb_func_start sub_08114054
sub_08114054: @ 0x08114054
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114068
	adds r0, r2, #0
	bl sub_0810D430
_08114068:
	pop {r0}
	bx r0

	thumb_func_start sub_0811406C
sub_0811406C: @ 0x0811406C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811409C @ =sub_081140A4
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _081140A0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811409C: .4byte sub_081140A4
_081140A0: .4byte 0x00000135

	thumb_func_start sub_081140A4
sub_081140A4: @ 0x081140A4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081140B8
	adds r0, r2, #0
	bl sub_0810D870
_081140B8:
	pop {r0}
	bx r0

	thumb_func_start sub_081140BC
sub_081140BC: @ 0x081140BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081140EC @ =sub_0810DB14
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _081140F0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08111EF4
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081140EC: .4byte sub_0810DB14
_081140F0: .4byte 0x00000135

	thumb_func_start sub_081140F4
sub_081140F4: @ 0x081140F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114128 @ =sub_0810DC2C
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, _0811412C @ =0x00000129
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #0xc
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114128: .4byte sub_0810DC2C
_0811412C: .4byte 0x00000129

	thumb_func_start sub_08114130
sub_08114130: @ 0x08114130
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114168 @ =sub_0810E7D0
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _0811416C @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114168: .4byte sub_0810E7D0
_0811416C: .4byte 0x00000135

	thumb_func_start sub_08114170
sub_08114170: @ 0x08114170
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081141A4 @ =sub_081141AC
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
	ldr r0, _081141A8 @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081141A4: .4byte sub_081141AC
_081141A8: .4byte 0x00000135

	thumb_func_start sub_081141AC
sub_081141AC: @ 0x081141AC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081141CA
	adds r0, r2, #0
	bl sub_0810E110
_081141CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081141D0
sub_081141D0: @ 0x081141D0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081141EE
	adds r0, r2, #0
	bl sub_0810E354
_081141EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081141F4
sub_081141F4: @ 0x081141F4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114210
	adds r0, r4, #0
	bl sub_080700D8
	adds r0, r4, #0
	bl sub_08114218
_08114210:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114218
sub_08114218: @ 0x08114218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114248 @ =sub_08114250
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0811424C @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114248: .4byte sub_08114250
_0811424C: .4byte 0x00000135

	thumb_func_start sub_08114250
sub_08114250: @ 0x08114250
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114264
	adds r0, r2, #0
	bl sub_08114268
_08114264:
	pop {r0}
	bx r0

	thumb_func_start sub_08114268
sub_08114268: @ 0x08114268
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081142A8 @ =sub_0810EB30
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	ldr r0, _081142AC @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081142A8: .4byte sub_0810EB30
_081142AC: .4byte 0x00000135

	thumb_func_start sub_081142B0
sub_081142B0: @ 0x081142B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _081142E4 @ =sub_0810EC0C
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _081142E8 @ =0x00007DFF
	cmp r1, r0
	bgt _081142EC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _081142F2
	.align 2, 0
_081142E4: .4byte sub_0810EC0C
_081142E8: .4byte 0x00007DFF
_081142EC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_081142F2:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, #0xe6
	adds r2, r5, r0
	movs r0, #0xa
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114310
sub_08114310: @ 0x08114310
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114340 @ =sub_08114348
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08114344 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114340: .4byte sub_08114348
_08114344: .4byte 0x00000135

	thumb_func_start sub_08114348
sub_08114348: @ 0x08114348
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811435C
	adds r0, r2, #0
	bl sub_08114360
_0811435C:
	pop {r0}
	bx r0

	thumb_func_start sub_08114360
sub_08114360: @ 0x08114360
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081143A4 @ =sub_0810ECB4
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, #0xe6
	adds r1, r4, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _081143A8 @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081143A4: .4byte sub_0810ECB4
_081143A8: .4byte 0x00000135

	thumb_func_start sub_081143AC
sub_081143AC: @ 0x081143AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081143EC @ =sub_0810EDA0
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r5, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08107254
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	adds r4, #0x9e
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081143EC: .4byte sub_0810EDA0

	thumb_func_start sub_081143F0
sub_081143F0: @ 0x081143F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811441C @ =sub_08114420
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	strb r2, [r0]
	movs r0, #0x1c
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811441C: .4byte sub_08114420

	thumb_func_start sub_08114420
sub_08114420: @ 0x08114420
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0811449A
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811449A
	subs r1, #8
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08114478
	lsls r0, r0, #2
	ldr r1, _0811445C @ =_08114460
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811445C: .4byte _08114460
_08114460: @ jump table
	.4byte _08114478 @ case 0
	.4byte _0811448C @ case 1
	.4byte _0811448C @ case 2
	.4byte _08114494 @ case 3
	.4byte _08114494 @ case 4
	.4byte _08114494 @ case 5
_08114478:
	ldr r0, _08114488 @ =0x00000129
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08110E60
	b _0811449A
	.align 2, 0
_08114488: .4byte 0x00000129
_0811448C:
	adds r0, r2, #0
	bl sub_08110A20
	b _0811449A
_08114494:
	adds r0, r2, #0
	bl sub_0810FB68
_0811449A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081144A0
sub_081144A0: @ 0x081144A0
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081144E6
	ldr r0, _081144D0 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xe1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _081144D4
	cmp r1, #1
	beq _081144DC
	b _081144E2
	.align 2, 0
_081144D0: .4byte 0xFFFFFDFF
_081144D4:
	adds r0, r2, #0
	bl sub_0810F4A0
	b _081144E2
_081144DC:
	adds r0, r2, #0
	bl sub_0810F77C
_081144E2:
	movs r0, #0
	strb r0, [r4]
_081144E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_081144EC
sub_081144EC: @ 0x081144EC
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114522
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811451C
	subs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08110C68
	b _08114522
_0811451C:
	adds r0, r2, #0
	bl sub_08114528
_08114522:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114528
sub_08114528: @ 0x08114528
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114550 @ =sub_08114554
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0xe0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114550: .4byte sub_08114554

	thumb_func_start sub_08114554
sub_08114554: @ 0x08114554
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _08114574
	adds r0, r3, #0
	bl sub_0810F9D4
_08114574:
	pop {r0}
	bx r0

	thumb_func_start sub_08114578
sub_08114578: @ 0x08114578
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114594
	adds r0, r4, #0
	bl sub_08112D58
	adds r0, r4, #0
	bl sub_0811459C
_08114594:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811459C
sub_0811459C: @ 0x0811459C
	adds r3, r0, #0
	ldr r0, _081145C4 @ =sub_081145C8
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_081145C4: .4byte sub_081145C8

	thumb_func_start sub_081145C8
sub_081145C8: @ 0x081145C8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #0x10
	strh r0, [r2, #4]
	ldr r1, _081145E8 @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081145E2
	adds r0, r2, #0
	bl sub_08110E60
_081145E2:
	pop {r0}
	bx r0
	.align 2, 0
_081145E8: .4byte 0xFFFFFC00

	thumb_func_start sub_081145EC
sub_081145EC: @ 0x081145EC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x70]
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08114618
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114618
	adds r0, r3, #0
	bl sub_08110E60
_08114618:
	pop {r0}
	bx r0

	thumb_func_start sub_0811461C
sub_0811461C: @ 0x0811461C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811463C @ =sub_08110C10
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08114640
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08114648
	.align 2, 0
_0811463C: .4byte sub_08110C10
_08114640:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08114648:
	str r0, [r4, #8]
	ldr r1, [r4, #0x44]
	ldr r0, _0811465C @ =0x000057FF
	cmp r1, r0
	bgt _08114660
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _08114666
	.align 2, 0
_0811465C: .4byte 0x000057FF
_08114660:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_08114666:
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08114674
sub_08114674: @ 0x08114674
	ldr r1, _08114688 @ =sub_0811468C
	str r1, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	movs r1, #0x16
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_08114688: .4byte sub_0811468C

	thumb_func_start sub_0811468C
sub_0811468C: @ 0x0811468C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081146AA
	adds r0, r2, #0
	bl sub_08110E60
_081146AA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081146B0
sub_081146B0: @ 0x081146B0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r3, _08114700 @ =0x00000399
	movs r0, #0x19
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x28
	bl sub_080708DC
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08114704 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	adds r4, #0xd3
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081146F8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
_081146F8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08114700: .4byte 0x00000399
_08114704: .4byte 0x0000039A

	thumb_func_start sub_08114708
sub_08114708: @ 0x08114708
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08114714
sub_08114714: @ 0x08114714
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114738
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2, #0x24]
	adds r0, r2, #0
	bl sub_081115F4
_08114738:
	pop {r0}
	bx r0

	thumb_func_start sub_0811473C
sub_0811473C: @ 0x0811473C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x56
	ldr r1, _0811477C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08114770
	ldr r0, _08114780 @ =0x000001B3
	bl m4aSongNumStop
_08114770:
	adds r0, r4, #0
	bl sub_080700D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811477C: .4byte gUnk_0203AD3C
_08114780: .4byte 0x000001B3

	thumb_func_start sub_08114784
sub_08114784: @ 0x08114784
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081147AC @ =sub_08113310
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081147AC: .4byte sub_08113310

	thumb_func_start sub_081147B0
sub_081147B0: @ 0x081147B0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081147CA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081147D2
_081147CA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081147D2:
	ldr r2, [r0, #8]
	ldr r3, _081147EC @ =gUnk_0203AD20
	ldr r0, [r3]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	adds r2, #0xdc
	movs r0, #0
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081147EC: .4byte gUnk_0203AD20

	thumb_func_start sub_081147F0
sub_081147F0: @ 0x081147F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811480A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08114812
_0811480A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08114812:
	adds r5, r0, #0
	adds r5, #0xb4
	ldr r0, [r5]
	cmp r0, #0
	beq _08114824
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_08114824:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateDarkMindTrigger
CreateDarkMindTrigger: @ 0x08114830
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08114864 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08114868 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811486C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08114874
	.align 2, 0
_08114864: .4byte ObjectMain
_08114868: .4byte ObjectDestroy
_0811486C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08114874:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	adds r5, r6, #0
	adds r5, #0xb4
	str r1, [r5]
	subs r0, #5
	ldrh r0, [r0]
	adds r3, r6, #0
	adds r3, #0xba
	movs r4, #0
	strh r0, [r3]
	adds r0, r6, #0
	adds r0, #0xbc
	strh r1, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r0, [r6, #8]
	orrs r0, r2
	str r0, [r6, #8]
	ldr r1, [r6, #0x5c]
	subs r2, #9
	ands r1, r2
	movs r0, #3
	orrs r1, r0
	ldr r0, [r6, #0x68]
	ands r0, r2
	str r0, [r6, #0x68]
	ldr r0, _0811493C @ =0x001080A0
	orrs r1, r0
	str r1, [r6, #0x5c]
	subs r2, #6
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0x28
	rsbs r1, r1, #0
	movs r2, #0x1e
	rsbs r2, r2, #0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x28
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _08114940 @ =sub_0811643C
	str r0, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_081171BC
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08114944
	adds r0, r6, #0
	bl sub_081188EC
	b _0811494A
	.align 2, 0
_0811493C: .4byte 0x001080A0
_08114940: .4byte sub_0811643C
_08114944:
	adds r0, r6, #0
	bl sub_0811889C
_0811494A:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08114954
sub_08114954: @ 0x08114954
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114980 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114984 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114988 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0811498C
	adds r0, r3, #0
	bl sub_0811530C
	b _081149D8
	.align 2, 0
_08114980: .4byte gRngVal
_08114984: .4byte 0x00196225
_08114988: .4byte 0x3C6EF35F
_0811498C:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0811499E
	adds r0, r3, #0
	bl sub_081187F4
	b _081149D8
_0811499E:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _081149B0
	adds r0, r3, #0
	bl sub_08118828
	b _081149D8
_081149B0:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _081149C2
	adds r0, r3, #0
	bl sub_08115814
	b _081149D8
_081149C2:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _081149D2
	adds r0, r3, #0
	bl sub_08118868
	b _081149D8
_081149D2:
	adds r0, r3, #0
	bl sub_08114BA0
_081149D8:
	pop {r0}
	bx r0

	thumb_func_start sub_081149DC
sub_081149DC: @ 0x081149DC
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114A04 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114A08 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114A0C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, #3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114A10
	adds r0, r3, #0
	bl sub_08118678
	b _08114A46
	.align 2, 0
_08114A04: .4byte gRngVal
_08114A08: .4byte 0x00196225
_08114A0C: .4byte 0x3C6EF35F
_08114A10:
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A1E
	adds r0, r3, #0
	bl sub_081186B8
	b _08114A46
_08114A1E:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A30
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114A46
_08114A30:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114A40
	adds r0, r3, #0
	bl sub_08114954
	b _08114A46
_08114A40:
	adds r0, r3, #0
	bl sub_08114BA0
_08114A46:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114A4C
sub_08114A4C: @ 0x08114A4C
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114A78 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114A7C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114A80 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A84
	adds r0, r3, #0
	bl sub_081186B8
	b _08114AAC
	.align 2, 0
_08114A78: .4byte gRngVal
_08114A7C: .4byte 0x00196225
_08114A80: .4byte 0x3C6EF35F
_08114A84:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A96
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114AAC
_08114A96:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114AA6
	adds r0, r3, #0
	bl sub_08114954
	b _08114AAC
_08114AA6:
	adds r0, r3, #0
	bl sub_08118678
_08114AAC:
	pop {r0}
	bx r0

	thumb_func_start sub_08114AB0
sub_08114AB0: @ 0x08114AB0
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114ADC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114AE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114AE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114AE8
	adds r0, r3, #0
	bl sub_08114BA0
	b _08114B22
	.align 2, 0
_08114ADC: .4byte gRngVal
_08114AE0: .4byte 0x00196225
_08114AE4: .4byte 0x3C6EF35F
_08114AE8:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114AFA
	adds r0, r3, #0
	bl sub_08118678
	b _08114B22
_08114AFA:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114B0C
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114B22
_08114B0C:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114B1C
	adds r0, r3, #0
	bl sub_08114954
	b _08114B22
_08114B1C:
	adds r0, r3, #0
	bl sub_081186B8
_08114B22:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114B28
sub_08114B28: @ 0x08114B28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08114B94
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08114B94
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	movs r7, #0x1c
	ldrsh r0, [r4, r7]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08114B94
	ldr r0, [r5, #8]
	ldr r1, _08114B9C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08114BA0
_08114B94:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08114B9C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08114BA0
sub_08114BA0: @ 0x08114BA0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08114BBC
	ldr r1, [r4, #0x7c]
	ldr r0, _08114C28 @ =sub_081164E0
	cmp r1, r0
	beq _08114BBC
	adds r0, r4, #0
	bl sub_08118990
_08114BBC:
	ldr r2, _08114C2C @ =sub_08114C44
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _08114C30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114C34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114C38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _08114C3C @ =gUnk_08351530
	ldr r0, _08114C40 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0xc8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _08114C22
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #4]
_08114C22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114C28: .4byte sub_081164E0
_08114C2C: .4byte sub_08114C44
_08114C30: .4byte gRngVal
_08114C34: .4byte 0x00196225
_08114C38: .4byte 0x3C6EF35F
_08114C3C: .4byte gUnk_08351530
_08114C40: .4byte gUnk_0203AD30

	thumb_func_start sub_08114C44
sub_08114C44: @ 0x08114C44
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldr r1, [r3, #0x44]
	movs r0, #0xe8
	lsls r0, r0, #6
	cmp r1, r0
	ble _08114C64
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
	b _08114CB2
_08114C64:
	ldr r0, _08114C74 @ =0x000025FF
	cmp r1, r0
	bgt _08114C7C
	adds r1, r3, #0
	adds r1, #0x52
	ldr r0, _08114C78 @ =0x0000FF30
	strh r0, [r1]
	b _08114CB2
	.align 2, 0
_08114C74: .4byte 0x000025FF
_08114C78: .4byte 0x0000FF30
_08114C7C:
	ldr r2, _08114CB8 @ =gUnk_08357ABC
	movs r0, #0x85
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114CB2
	adds r0, r3, #0
	bl sub_081149DC
_08114CB2:
	pop {r0}
	bx r0
	.align 2, 0
_08114CB8: .4byte gUnk_08357ABC

	thumb_func_start sub_08114CBC
sub_08114CBC: @ 0x08114CBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldr r2, _08114D2C @ =gUnk_08357ABC
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x52
	movs r4, #0
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r3, [r6, #0x40]
	ldr r0, _08114D30 @ =0xFFFFF000
	adds r1, r3, r0
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	cmp r1, r2
	ble _08114D62
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08114D48
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x28
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _08114D34 @ =0xFFFFFDC0
	adds r7, r0, #0
	cmp r2, r1
	bge _08114D3C
	ldr r0, _08114D38 @ =0x0000FDC0
	strh r0, [r7]
	b _08114E00
	.align 2, 0
_08114D2C: .4byte gUnk_08357ABC
_08114D30: .4byte 0xFFFFF000
_08114D34: .4byte 0xFFFFFDC0
_08114D38: .4byte 0x0000FDC0
_08114D3C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r2, r0
	ble _08114E00
	strh r0, [r7]
	b _08114E00
_08114D48:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	adds r7, r1, #0
	cmp r0, r2
	bgt _08114DB4
	b _08114DB8
_08114D62:
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, r1
	cmp r0, r2
	bge _08114DC8
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08114D9C
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08114D98 @ =0xFFFFFDC0
	adds r7, r1, #0
	cmp r0, r2
	blt _08114DB4
	movs r1, #0x90
	lsls r1, r1, #2
	cmp r0, r1
	ble _08114E00
	strh r1, [r7]
	b _08114E00
	.align 2, 0
_08114D98: .4byte 0xFFFFFDC0
_08114D9C:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	adds r7, r1, #0
	cmp r0, r2
	ble _08114DB8
_08114DB4:
	strh r2, [r7]
	b _08114E00
_08114DB8:
	ldr r1, _08114DC4 @ =0xFFFFFDC0
	cmp r0, r1
	bge _08114E00
	strh r1, [r7]
	b _08114E00
	.align 2, 0
_08114DC4: .4byte 0xFFFFFDC0
_08114DC8:
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r7, r0, #0
	cmp r1, #0
	bge _08114DE6
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08114DF4
	b _08114DF2
_08114DE6:
	adds r0, r2, #0
	subs r0, #0x12
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08114DF4
_08114DF2:
	strh r4, [r7]
_08114DF4:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _08114E00
	movs r0, #1
	strh r0, [r6, #4]
_08114E00:
	ldr r1, [r6, #0x40]
	ldr r0, _08114E34 @ =0x00001FFF
	cmp r1, r0
	bgt _08114E10
	adds r0, #1
	str r0, [r6, #0x40]
	movs r0, #1
	strh r0, [r6, #4]
_08114E10:
	ldr r0, [r6, #0x40]
	movs r1, #0xd8
	lsls r1, r1, #8
	cmp r0, r1
	ble _08114E20
	str r1, [r6, #0x40]
	movs r0, #1
	strh r0, [r6, #4]
_08114E20:
	ldrh r0, [r6, #4]
	subs r1, r0, #1
	strh r1, [r6, #4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08114E38
	adds r0, r6, #0
	bl sub_08114A4C
	b _08114FCA
	.align 2, 0
_08114E34: .4byte 0x00001FFF
_08114E38:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _08114E42
	b _08114FCA
_08114E42:
	ldr r2, _08114F00 @ =gRngVal
	ldr r0, [r2]
	ldr r4, _08114F04 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08114F08 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _08114E5C
	b _08114FCA
_08114E5C:
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, _08114F08 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	ands r5, r3
	cmp r5, #0
	beq _08114F28
	ldr r2, _08114F0C @ =0xFFFFFD60
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #2
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldr r1, _08114F10 @ =gKirbys
	ldr r0, _08114F14 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08114EAC
	b _08114FCA
_08114EAC:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08114EBE
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _08114EBE
	b _08114FCA
_08114EBE:
	ldr r1, _08114F18 @ =gUnk_08D60FA4
	ldr r4, _08114F1C @ =gSongTable
	ldr r2, _08114F20 @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08114EE4
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08114FCA
_08114EE4:
	cmp r3, #0
	beq _08114EF6
	ldr r0, _08114F24 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08114FCA
_08114EF6:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08114FCA
	.align 2, 0
_08114F00: .4byte gRngVal
_08114F04: .4byte 0x00196225
_08114F08: .4byte 0x3C6EF35F
_08114F0C: .4byte 0xFFFFFD60
_08114F10: .4byte gKirbys
_08114F14: .4byte gUnk_0203AD3C
_08114F18: .4byte gUnk_08D60FA4
_08114F1C: .4byte gSongTable
_08114F20: .4byte 0x00000D54
_08114F24: .4byte gUnk_0203AD10
_08114F28:
	ldr r4, _08114FD8 @ =0xFFFFFD60
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_08117A9C
	movs r3, #0xc
	rsbs r3, r3, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08117A9C
	strh r5, [r7]
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldr r1, _08114FDC @ =gKirbys
	ldr r0, _08114FE0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08114FCA
	ldrb r0, [r6]
	cmp r0, #0
	bne _08114F8A
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08114FCA
_08114F8A:
	ldr r1, _08114FE4 @ =gUnk_08D60FA4
	ldr r4, _08114FE8 @ =gSongTable
	ldr r2, _08114FEC @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08114FB0
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08114FCA
_08114FB0:
	cmp r3, #0
	beq _08114FC2
	ldr r0, _08114FF0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08114FCA
_08114FC2:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08114FCA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08114FD8: .4byte 0xFFFFFD60
_08114FDC: .4byte gKirbys
_08114FE0: .4byte gUnk_0203AD3C
_08114FE4: .4byte gUnk_08D60FA4
_08114FE8: .4byte gSongTable
_08114FEC: .4byte 0x00000D54
_08114FF0: .4byte gUnk_0203AD10

	thumb_func_start sub_08114FF4
sub_08114FF4: @ 0x08114FF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811509C @ =sub_081150C0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #8
	strb r0, [r1]
	adds r1, #1
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, _081150A0 @ =gKirbys
	ldr r0, _081150A4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115096
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811505A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115096
_0811505A:
	ldr r1, _081150A8 @ =gUnk_08D60FA4
	ldr r4, _081150AC @ =gSongTable
	ldr r2, _081150B0 @ =0x00000D3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811507E
	ldr r1, _081150B4 @ =0x00000D38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115096
_0811507E:
	cmp r3, #0
	beq _08115090
	ldr r0, _081150B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115096
_08115090:
	ldr r0, _081150BC @ =0x000001A7
	bl m4aSongNumStart
_08115096:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811509C: .4byte sub_081150C0
_081150A0: .4byte gKirbys
_081150A4: .4byte gUnk_0203AD3C
_081150A8: .4byte gUnk_08D60FA4
_081150AC: .4byte gSongTable
_081150B0: .4byte 0x00000D3C
_081150B4: .4byte 0x00000D38
_081150B8: .4byte gUnk_0203AD10
_081150BC: .4byte 0x000001A7

	thumb_func_start sub_081150C0
sub_081150C0: @ 0x081150C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811512E
	subs r0, #1
	strb r0, [r1]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0811517A
	adds r0, r4, #0
	bl sub_08118A60
	ldr r2, _08115104 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115108 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811510C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08115110
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	b _08115118
	.align 2, 0
_08115104: .4byte gRngVal
_08115108: .4byte 0x00196225
_0811510C: .4byte 0x3C6EF35F
_08115110:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #2
_08115118:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _0811517A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _0811517A
_0811512E:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _08115140
	subs r0, #1
	strb r0, [r1]
	b _0811517A
_08115140:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0811515E
	adds r0, r3, #0
	adds r0, #0x60
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811516C
	b _0811516A
_0811515E:
	adds r0, r3, #0
	subs r0, #0x60
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811516C
_0811516A:
	strh r5, [r2]
_0811516C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0811517A
	adds r0, r4, #0
	bl sub_08114AB0
_0811517A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08115180
sub_08115180: @ 0x08115180
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115224 @ =sub_08115240
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #5
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_08118A60
	ldr r1, _08115228 @ =gKirbys
	ldr r0, _0811522C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811521E
	ldrb r0, [r4]
	cmp r0, #0
	bne _081151DE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811521E
_081151DE:
	ldr r1, _08115230 @ =gUnk_08D60FA4
	ldr r4, _08115234 @ =gSongTable
	ldr r2, _08115238 @ =0x00000C04
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115204
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811521E
_08115204:
	cmp r3, #0
	beq _08115216
	ldr r0, _0811523C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811521E
_08115216:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811521E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115224: .4byte sub_08115240
_08115228: .4byte gKirbys
_0811522C: .4byte gUnk_0203AD3C
_08115230: .4byte gUnk_08D60FA4
_08115234: .4byte gSongTable
_08115238: .4byte 0x00000C04
_0811523C: .4byte gUnk_0203AD10

	thumb_func_start sub_08115240
sub_08115240: @ 0x08115240
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x52
	ldr r1, _08115280 @ =0xFFFFFED8
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfa
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _0811526A
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
_0811526A:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811527C
	adds r0, r3, #0
	bl sub_08118734
_0811527C:
	pop {r0}
	bx r0
	.align 2, 0
_08115280: .4byte 0xFFFFFED8

	thumb_func_start sub_08115284
sub_08115284: @ 0x08115284
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	cmp r0, r3
	ble _081152A8
	strh r3, [r1]
_081152A8:
	ldr r1, [r2, #0x44]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152E2
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152D6
	movs r0, #0xa4
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152CC
	ldrh r0, [r2, #4]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x50
	b _081152E8
_081152CC:
	ldrh r1, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	b _081152EA
_081152D6:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r1, r2, #0
	adds r1, #0x50
	b _081152E8
_081152E2:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
_081152E8:
	strh r0, [r1]
_081152EA:
	ldr r1, [r2, #0x44]
	ldr r0, _08115308 @ =0x000027FF
	cmp r1, r0
	bgt _08115304
	adds r0, #1
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08114AB0
_08115304:
	pop {r0}
	bx r0
	.align 2, 0
_08115308: .4byte 0x000027FF

	thumb_func_start sub_0811530C
sub_0811530C: @ 0x0811530C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115360 @ =sub_08115370
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	ldr r2, _08115364 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115368 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811536C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	cmp r0, #1
	bhi _0811535A
	movs r0, #1
	strh r0, [r4, #4]
_0811535A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115360: .4byte sub_08115370
_08115364: .4byte gRngVal
_08115368: .4byte 0x00196225
_0811536C: .4byte 0x3C6EF35F

	thumb_func_start sub_08115370
sub_08115370: @ 0x08115370
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r2, r6, #0
	adds r2, #0x54
	ldr r0, _0811542C @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081153AA
	b _081154F6
_081153AA:
	ldr r1, _08115430 @ =gKirbys
	ldr r0, _08115434 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115416
	ldrb r0, [r6]
	cmp r0, #0
	bne _081153D6
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115416
_081153D6:
	ldr r1, _08115438 @ =gUnk_08D60FA4
	ldr r4, _0811543C @ =gSongTable
	ldr r2, _08115440 @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081153FC
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115416
_081153FC:
	cmp r3, #0
	beq _0811540E
	ldr r0, _08115444 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115416
_0811540E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115416:
	adds r0, r6, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	blt _081154BC
	cmp r0, #1
	ble _08115448
	cmp r0, #2
	beq _08115494
	b _081154BC
	.align 2, 0
_0811542C: .4byte gUnk_0203AD40
_08115430: .4byte gKirbys
_08115434: .4byte gUnk_0203AD3C
_08115438: .4byte gUnk_08D60FA4
_0811543C: .4byte gSongTable
_08115440: .4byte 0x00000D54
_08115444: .4byte gUnk_0203AD10
_08115448:
	ldr r2, _0811548C @ =0xFFFFFD80
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	ldr r2, _08115490 @ =sub_08114CBC
	adds r0, r6, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r6, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	movs r0, #0x3c
	strh r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r6, #0
	bl sub_0803D46C
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	b _081154F6
	.align 2, 0
_0811548C: .4byte 0xFFFFFD80
_08115490: .4byte sub_08114CBC
_08115494:
	ldr r5, _081154B8 @ =0xFFFFFD80
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_08117A9C
	movs r3, #0xc
	rsbs r3, r3, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_08117A9C
	b _081154F0
	.align 2, 0
_081154B8: .4byte 0xFFFFFD80
_081154BC:
	ldr r4, _08115500 @ =0xFFFFFD80
	movs r5, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0xa0
	adds r2, r4, #0
	movs r3, #8
	bl sub_08117A9C
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08117A9C
	movs r1, #0xa0
	rsbs r1, r1, #0
	movs r3, #8
	rsbs r3, r3, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08117A9C
_081154F0:
	adds r0, r6, #0
	bl sub_0811879C
_081154F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08115500: .4byte 0xFFFFFD80

	thumb_func_start sub_08115504
sub_08115504: @ 0x08115504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08115554
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _08115550 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08115612
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	strh r0, [r1]
	b _08115612
	.align 2, 0
_08115550: .4byte gUnk_0203AD40
_08115554:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _081155DC
	ldr r1, _08115618 @ =gKirbys
	ldr r0, _0811561C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081155D0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115590
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081155D0
_08115590:
	ldr r1, _08115620 @ =gUnk_08D60FA4
	ldr r5, _08115624 @ =gSongTable
	ldr r2, _08115628 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081155B6
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081155D0
_081155B6:
	cmp r3, #0
	beq _081155C8
	ldr r0, _0811562C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081155D0
_081155C8:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081155D0:
	ldr r2, _08115630 @ =0xFFFFFA00
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08117964
_081155DC:
	adds r2, r4, #0
	adds r2, #0x55
	ldr r0, _08115634 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08115612
	adds r0, r4, #0
	bl sub_08114BA0
	ldrh r0, [r4, #4]
	adds r0, #0x12
	strh r0, [r4, #4]
_08115612:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08115618: .4byte gKirbys
_0811561C: .4byte gUnk_0203AD3C
_08115620: .4byte gUnk_08D60FA4
_08115624: .4byte gSongTable
_08115628: .4byte 0x00000D54
_0811562C: .4byte gUnk_0203AD10
_08115630: .4byte 0xFFFFFA00
_08115634: .4byte gUnk_0203AD40

	thumb_func_start sub_08115638
sub_08115638: @ 0x08115638
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08115730
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _081156D0 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811567A
	b _081157EE
_0811567A:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	strh r0, [r1]
	ldr r2, _081156D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081156D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081156DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _081156E0 @ =0x00005554
	cmp r2, r0
	bls _081156F8
	ldr r0, _081156E4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _081156A2
	movs r1, #1
_081156A2:
	cmp r1, #0
	beq _081156F8
	ldr r1, [r4, #0x40]
	ldr r0, _081156E8 @ =0x00005FFF
	cmp r1, r0
	ble _081156EC
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	bgt _081156C2
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _081156EC
_081156C2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_081156D0: .4byte gUnk_0203AD40
_081156D4: .4byte gRngVal
_081156D8: .4byte 0x00196225
_081156DC: .4byte 0x3C6EF35F
_081156E0: .4byte 0x00005554
_081156E4: .4byte 0x0000AAA9
_081156E8: .4byte 0x00005FFF
_081156EC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _081157EE
_081156F8:
	adds r0, r4, #0
	bl sub_08118A60
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _0811571C @ =0x00007FFF
	cmp r1, r0
	bgt _08115720
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_0811571C: .4byte 0x00007FFF
_08115720:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811572C @ =0x0000FDC0
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_0811572C: .4byte 0x0000FDC0
_08115730:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _081157B8
	ldr r1, _081157F4 @ =gKirbys
	ldr r0, _081157F8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081157AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811576C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081157AC
_0811576C:
	ldr r1, _081157FC @ =gUnk_08D60FA4
	ldr r5, _08115800 @ =gSongTable
	ldr r2, _08115804 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115792
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081157AC
_08115792:
	cmp r3, #0
	beq _081157A4
	ldr r0, _08115808 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081157AC
_081157A4:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081157AC:
	ldr r2, _0811580C @ =0xFFFFFC00
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
_081157B8:
	adds r2, r4, #0
	adds r2, #0x55
	ldr r0, _08115810 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _081157EE
	adds r0, r4, #0
	bl sub_08114BA0
	ldrh r0, [r4, #4]
	adds r0, #0x12
	strh r0, [r4, #4]
_081157EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081157F4: .4byte gKirbys
_081157F8: .4byte gUnk_0203AD3C
_081157FC: .4byte gUnk_08D60FA4
_08115800: .4byte gSongTable
_08115804: .4byte 0x00000D54
_08115808: .4byte gUnk_0203AD10
_0811580C: .4byte 0xFFFFFC00
_08115810: .4byte gUnk_0203AD40

	thumb_func_start sub_08115814
sub_08115814: @ 0x08115814
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115884 @ =sub_0811589C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r3, r4, #0
	adds r3, #0x85
	strb r2, [r3]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _08115888 @ =gUnk_08351530
	ldr r0, _0811588C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0xc8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _0811587C
	ldr r2, _08115890 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115894 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08115898 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	strb r0, [r3]
_0811587C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115884: .4byte sub_0811589C
_08115888: .4byte gUnk_08351530
_0811588C: .4byte gUnk_0203AD30
_08115890: .4byte gRngVal
_08115894: .4byte 0x00196225
_08115898: .4byte 0x3C6EF35F

	thumb_func_start sub_0811589C
sub_0811589C: @ 0x0811589C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #6
	bls _081158BA
	b _08115E22
_081158BA:
	lsls r0, r0, #2
	ldr r1, _081158C4 @ =_081158C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081158C4: .4byte _081158C8
_081158C8: @ jump table
	.4byte _081158E4 @ case 0
	.4byte _081159D0 @ case 1
	.4byte _08115A00 @ case 2
	.4byte _08115B00 @ case 3
	.4byte _08115BFC @ case 4
	.4byte _08115D08 @ case 5
	.4byte _08115E04 @ case 6
_081158E4:
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _081159B0 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	mov r2, r8
	adds r2, #0xb4
	ldr r0, [r2]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	adds r6, r2, #0
	cmp r0, #0
	beq _08115912
	b _08115E22
_08115912:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #4
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r1, _081159B4 @ =gKirbys
	ldr r0, _081159B8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811598C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811594C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811598C
_0811594C:
	ldr r1, _081159BC @ =gUnk_08D60FA4
	ldr r5, _081159C0 @ =gSongTable
	ldr r2, _081159C4 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115972
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811598C
_08115972:
	cmp r3, #0
	beq _08115984
	ldr r0, _081159C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811598C
_08115984:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811598C:
	ldr r2, _081159CC @ =0xFFFFFEC0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0x41
	strb r1, [r0]
	b _08115E22
	.align 2, 0
_081159B0: .4byte gUnk_0203AD40
_081159B4: .4byte gKirbys
_081159B8: .4byte gUnk_0203AD3C
_081159BC: .4byte gUnk_08D60FA4
_081159C0: .4byte gSongTable
_081159C4: .4byte 0x00000D54
_081159C8: .4byte gUnk_0203AD10
_081159CC: .4byte 0xFFFFFEC0
_081159D0:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081159E2
	b _08115E22
_081159E2:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	subs r1, #0x19
	movs r0, #0xa0
	lsls r0, r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r0, #8
	strb r0, [r2]
	b _08115E22
_08115A00:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115A16
	b _08115E22
_08115A16:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115AB6
	ldr r1, _08115AE0 @ =gKirbys
	ldr r0, _08115AE4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115A96
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115A56
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115A96
_08115A56:
	ldr r1, _08115AE8 @ =gUnk_08D60FA4
	ldr r5, _08115AEC @ =gSongTable
	ldr r2, _08115AF0 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115A7C
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115A96
_08115A7C:
	cmp r3, #0
	beq _08115A8E
	ldr r0, _08115AF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115A96
_08115A8E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115A96:
	ldr r2, _08115AF8 @ =0xFFFFFE70
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115AB6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115AC6
	b _08115E22
_08115AC6:
	adds r1, r4, #0
	adds r1, #0x85
	ldr r0, _08115AFC @ =0xFFFFFD80
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #3
	b _08115CD8
	.align 2, 0
_08115AE0: .4byte gKirbys
_08115AE4: .4byte gUnk_0203AD3C
_08115AE8: .4byte gUnk_08D60FA4
_08115AEC: .4byte gSongTable
_08115AF0: .4byte 0x00000D54
_08115AF4: .4byte gUnk_0203AD10
_08115AF8: .4byte 0xFFFFFE70
_08115AFC: .4byte 0xFFFFFD80
_08115B00:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115B16
	b _08115E22
_08115B16:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115BB6
	ldr r1, _08115BE0 @ =gKirbys
	ldr r0, _08115BE4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115B96
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115B56
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115B96
_08115B56:
	ldr r1, _08115BE8 @ =gUnk_08D60FA4
	ldr r5, _08115BEC @ =gSongTable
	ldr r2, _08115BF0 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115B7C
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115B96
_08115B7C:
	cmp r3, #0
	beq _08115B8E
	ldr r0, _08115BF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115B96
_08115B8E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115B96:
	ldr r2, _08115BF8 @ =0xFFFFFDE8
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115BB6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115BC6
	b _08115E22
_08115BC6:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x80
	lsls r0, r0, #3
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	b _08115CD8
	.align 2, 0
_08115BE0: .4byte gKirbys
_08115BE4: .4byte gUnk_0203AD3C
_08115BE8: .4byte gUnk_08D60FA4
_08115BEC: .4byte gSongTable
_08115BF0: .4byte 0x00000D54
_08115BF4: .4byte gUnk_0203AD10
_08115BF8: .4byte 0xFFFFFDE8
_08115BFC:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115C12
	b _08115E22
_08115C12:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115CB2
	ldr r1, _08115CE8 @ =gKirbys
	ldr r0, _08115CEC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115C92
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115C52
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115C92
_08115C52:
	ldr r1, _08115CF0 @ =gUnk_08D60FA4
	ldr r5, _08115CF4 @ =gSongTable
	ldr r2, _08115CF8 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115C78
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115C92
_08115C78:
	cmp r3, #0
	beq _08115C8A
	ldr r0, _08115CFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115C92
_08115C8A:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115C92:
	ldr r2, _08115D00 @ =0xFFFFFCC0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115CB2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115CC2
	b _08115E22
_08115CC2:
	adds r1, r4, #0
	adds r1, #0x85
	ldr r0, _08115D04 @ =0xFFFFFA80
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #5
_08115CD8:
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08118A60
	b _08115E22
	.align 2, 0
_08115CE8: .4byte gKirbys
_08115CEC: .4byte gUnk_0203AD3C
_08115CF0: .4byte gUnk_08D60FA4
_08115CF4: .4byte gSongTable
_08115CF8: .4byte 0x00000D54
_08115CFC: .4byte gUnk_0203AD10
_08115D00: .4byte 0xFFFFFCC0
_08115D04: .4byte 0xFFFFFA80
_08115D08:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115D1E
	b _08115E22
_08115D1E:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115DBE
	ldr r1, _08115DE8 @ =gKirbys
	ldr r0, _08115DEC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115D9E
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115D5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115D9E
_08115D5E:
	ldr r1, _08115DF0 @ =gUnk_08D60FA4
	ldr r5, _08115DF4 @ =gSongTable
	ldr r2, _08115DF8 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115D84
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115D9E
_08115D84:
	cmp r3, #0
	beq _08115D96
	ldr r0, _08115DFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115D9E
_08115D96:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115D9E:
	ldr r2, _08115E00 @ =0xFFFFF9C0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115DBE:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08115E22
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x80
	lsls r0, r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #0x10
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #6
	strb r0, [r1]
	b _08115E22
	.align 2, 0
_08115DE8: .4byte gKirbys
_08115DEC: .4byte gUnk_0203AD3C
_08115DF0: .4byte gUnk_08D60FA4
_08115DF4: .4byte gSongTable
_08115DF8: .4byte 0x00000D54
_08115DFC: .4byte gUnk_0203AD10
_08115E00: .4byte 0xFFFFF9C0
_08115E04:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08115E22
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08114BA0
_08115E22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08115E2C
sub_08115E2C: @ 0x08115E2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #9
	bls _08115E46
	b _08116436
_08115E46:
	lsls r0, r0, #2
	ldr r1, _08115E50 @ =_08115E54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08115E50: .4byte _08115E54
_08115E54: @ jump table
	.4byte _08115E7C @ case 0
	.4byte _08115EB0 @ case 1
	.4byte _08115F60 @ case 2
	.4byte _0811600C @ case 3
	.4byte _081160B8 @ case 4
	.4byte _08116160 @ case 5
	.4byte _0811620C @ case 6
	.4byte _081162B8 @ case 7
	.4byte _08116368 @ case 8
	.4byte _0811641C @ case 9
_08115E7C:
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _08115EAC @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115EA8
	b _08116436
_08115EA8:
	movs r0, #8
	b _08116376
	.align 2, 0
_08115EAC: .4byte gUnk_0203AD40
_08115EB0:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115EBE
	b _08116436
_08115EBE:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08115F40 @ =gKirbys
	ldr r0, _08115F44 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115F38
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115EF8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115F38
_08115EF8:
	ldr r1, _08115F48 @ =gUnk_08D60FA4
	ldr r5, _08115F4C @ =gSongTable
	ldr r2, _08115F50 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115F1E
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115F38
_08115F1E:
	cmp r3, #0
	beq _08115F30
	ldr r0, _08115F54 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115F38
_08115F30:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115F38:
	ldr r1, _08115F58 @ =0x000001FD
	ldr r2, _08115F5C @ =0xFFFFFE03
	b _081163F2
	.align 2, 0
_08115F40: .4byte gKirbys
_08115F44: .4byte gUnk_0203AD3C
_08115F48: .4byte gUnk_08D60FA4
_08115F4C: .4byte gSongTable
_08115F50: .4byte 0x00000D54
_08115F54: .4byte gUnk_0203AD10
_08115F58: .4byte 0x000001FD
_08115F5C: .4byte 0xFFFFFE03
_08115F60:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115F6E
	b _08116436
_08115F6E:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08115FF0 @ =gKirbys
	ldr r0, _08115FF4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08115FE8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115FA8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115FE8
_08115FA8:
	ldr r1, _08115FF8 @ =gUnk_08D60FA4
	ldr r5, _08115FFC @ =gSongTable
	ldr r2, _08116000 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115FCE
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115FE8
_08115FCE:
	cmp r3, #0
	beq _08115FE0
	ldr r0, _08116004 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115FE8
_08115FE0:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115FE8:
	ldr r2, _08116008 @ =0xFFFFFD30
	adds r0, r4, #0
	movs r1, #0
	b _081163F4
	.align 2, 0
_08115FF0: .4byte gKirbys
_08115FF4: .4byte gUnk_0203AD3C
_08115FF8: .4byte gUnk_08D60FA4
_08115FFC: .4byte gSongTable
_08116000: .4byte 0x00000D54
_08116004: .4byte gUnk_0203AD10
_08116008: .4byte 0xFFFFFD30
_0811600C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811601A
	b _08116436
_0811601A:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0811609C @ =gKirbys
	ldr r0, _081160A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116094
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116054
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116094
_08116054:
	ldr r1, _081160A4 @ =gUnk_08D60FA4
	ldr r5, _081160A8 @ =gSongTable
	ldr r2, _081160AC @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811607A
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116094
_0811607A:
	cmp r3, #0
	beq _0811608C
	ldr r0, _081160B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116094
_0811608C:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116094:
	ldr r2, _081160B4 @ =0xFFFFFE03
	adds r0, r4, #0
	adds r1, r2, #0
	b _081163F4
	.align 2, 0
_0811609C: .4byte gKirbys
_081160A0: .4byte gUnk_0203AD3C
_081160A4: .4byte gUnk_08D60FA4
_081160A8: .4byte gSongTable
_081160AC: .4byte 0x00000D54
_081160B0: .4byte gUnk_0203AD10
_081160B4: .4byte 0xFFFFFE03
_081160B8:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081160C6
	b _08116436
_081160C6:
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08116144 @ =gKirbys
	ldr r0, _08116148 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116140
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116100
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116140
_08116100:
	ldr r1, _0811614C @ =gUnk_08D60FA4
	ldr r5, _08116150 @ =gSongTable
	ldr r2, _08116154 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116126
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116140
_08116126:
	cmp r3, #0
	beq _08116138
	ldr r0, _08116158 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116140
_08116138:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116140:
	ldr r1, _0811615C @ =0xFFFFFD93
	b _081163F0
	.align 2, 0
_08116144: .4byte gKirbys
_08116148: .4byte gUnk_0203AD3C
_0811614C: .4byte gUnk_08D60FA4
_08116150: .4byte gSongTable
_08116154: .4byte 0x00000D54
_08116158: .4byte gUnk_0203AD10
_0811615C: .4byte 0xFFFFFD93
_08116160:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811616E
	b _08116436
_0811616E:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _081161F0 @ =gKirbys
	ldr r0, _081161F4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081161E8
	ldrb r0, [r4]
	cmp r0, #0
	bne _081161A8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081161E8
_081161A8:
	ldr r1, _081161F8 @ =gUnk_08D60FA4
	ldr r5, _081161FC @ =gSongTable
	ldr r2, _08116200 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081161CE
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081161E8
_081161CE:
	cmp r3, #0
	beq _081161E0
	ldr r0, _08116204 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081161E8
_081161E0:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081161E8:
	ldr r2, _08116208 @ =0xFFFFFE03
	adds r0, r4, #0
	adds r1, r2, #0
	b _081163F4
	.align 2, 0
_081161F0: .4byte gKirbys
_081161F4: .4byte gUnk_0203AD3C
_081161F8: .4byte gUnk_08D60FA4
_081161FC: .4byte gSongTable
_08116200: .4byte 0x00000D54
_08116204: .4byte gUnk_0203AD10
_08116208: .4byte 0xFFFFFE03
_0811620C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811621A
	b _08116436
_0811621A:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0811629C @ =gKirbys
	ldr r0, _081162A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116294
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116254
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116294
_08116254:
	ldr r1, _081162A4 @ =gUnk_08D60FA4
	ldr r5, _081162A8 @ =gSongTable
	ldr r2, _081162AC @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811627A
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116294
_0811627A:
	cmp r3, #0
	beq _0811628C
	ldr r0, _081162B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116294
_0811628C:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116294:
	ldr r2, _081162B4 @ =0xFFFFFD30
	adds r0, r4, #0
	movs r1, #0
	b _081163F4
	.align 2, 0
_0811629C: .4byte gKirbys
_081162A0: .4byte gUnk_0203AD3C
_081162A4: .4byte gUnk_08D60FA4
_081162A8: .4byte gSongTable
_081162AC: .4byte 0x00000D54
_081162B0: .4byte gUnk_0203AD10
_081162B4: .4byte 0xFFFFFD30
_081162B8:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081162C6
	b _08116436
_081162C6:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08116348 @ =gKirbys
	ldr r0, _0811634C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116340
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116300
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116340
_08116300:
	ldr r1, _08116350 @ =gUnk_08D60FA4
	ldr r5, _08116354 @ =gSongTable
	ldr r2, _08116358 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116326
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116340
_08116326:
	cmp r3, #0
	beq _08116338
	ldr r0, _0811635C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116340
_08116338:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116340:
	ldr r1, _08116360 @ =0x000001FD
	ldr r2, _08116364 @ =0xFFFFFE03
	b _081163F2
	.align 2, 0
_08116348: .4byte gKirbys
_0811634C: .4byte gUnk_0203AD3C
_08116350: .4byte gUnk_08D60FA4
_08116354: .4byte gSongTable
_08116358: .4byte 0x00000D54
_0811635C: .4byte gUnk_0203AD10
_08116360: .4byte 0x000001FD
_08116364: .4byte 0xFFFFFE03
_08116368:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08116436
	movs r0, #4
_08116376:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _081163FC @ =gKirbys
	ldr r0, _08116400 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081163EE
	ldrb r0, [r4]
	cmp r0, #0
	bne _081163AE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081163EE
_081163AE:
	ldr r1, _08116404 @ =gUnk_08D60FA4
	ldr r5, _08116408 @ =gSongTable
	ldr r2, _0811640C @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081163D4
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081163EE
_081163D4:
	cmp r3, #0
	beq _081163E6
	ldr r0, _08116410 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081163EE
_081163E6:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081163EE:
	ldr r1, _08116414 @ =0x0000026D
_081163F0:
	ldr r2, _08116418 @ =0xFFFFFE98
_081163F2:
	adds r0, r4, #0
_081163F4:
	movs r3, #0
	bl sub_08117964
	b _08116436
	.align 2, 0
_081163FC: .4byte gKirbys
_08116400: .4byte gUnk_0203AD3C
_08116404: .4byte gUnk_08D60FA4
_08116408: .4byte gSongTable
_0811640C: .4byte 0x00000D54
_08116410: .4byte gUnk_0203AD10
_08116414: .4byte 0x0000026D
_08116418: .4byte 0xFFFFFE98
_0811641C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08116436
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08114BA0
_08116436:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0811643C
sub_0811643C: @ 0x0811643C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _081164D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _081164CC
	adds r6, r4, #0
	adds r6, #0xba
	adds r5, r4, #0
	adds r5, #0x80
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08116486
	ldr r1, _081164D8 @ =gUnk_08357ACC
	adds r0, r4, #0
	bl sub_080860A8
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08034E14
_08116486:
	ldrh r0, [r5]
	strh r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081164CC
	ldr r5, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_08034E14
	ldrb r0, [r5]
	cmp r0, #0
	bne _081164CC
	ldr r2, [r5, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _081164CC
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _081164CC
	adds r0, r5, #0
	bl sub_08052E2C
	ldr r1, _081164DC @ =gUnk_08357AD4
	adds r0, r4, #0
	bl sub_080860A8
_081164CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081164D4: .4byte gUnk_03000510
_081164D8: .4byte gUnk_08357ACC
_081164DC: .4byte gUnk_08357AD4

	thumb_func_start sub_081164E0
sub_081164E0: @ 0x081164E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	ldr r1, [r6, #0x78]
	ldr r0, _0811655C @ =sub_08116E74
	cmp r1, r0
	beq _08116500
	ldr r0, _08116560 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08116500
	adds r0, r6, #0
	bl sub_08116DE4
_08116500:
	ldr r0, _08116564 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r5, r4, #0
	adds r5, #0x56
	movs r0, #1
	ldrb r1, [r5]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811651A
	b _0811664C
_0811651A:
	adds r0, r4, #0
	bl sub_08116C54
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0811652E
	b _0811664C
_0811652E:
	ldr r3, [r4, #0x6c]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08116568
	ldr r2, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0811654A
	b _0811664C
_0811654A:
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _0811664C
	adds r0, r3, #0
	bl sub_08052E2C
	b _0811664C
	.align 2, 0
_0811655C: .4byte sub_08116E74
_08116560: .4byte gUnk_0203AD10
_08116564: .4byte gUnk_03000510
_08116568:
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08117C84
	ldr r1, _081165F4 @ =gKirbys
	ldr r0, _081165F8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081165DC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811659C
	ldrb r0, [r5]
	cmp r0, r2
	bne _081165DC
_0811659C:
	ldr r1, _081165FC @ =gUnk_08D60FA4
	ldr r5, _08116600 @ =gSongTable
	ldr r2, _08116604 @ =0x00000D84
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081165C2
	movs r1, #0xd8
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081165DC
_081165C2:
	cmp r3, #0
	beq _081165D4
	ldr r0, _08116608 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081165DC
_081165D4:
	movs r0, #0xd8
	lsls r0, r0, #1
	bl m4aSongNumStart
_081165DC:
	ldr r0, _08116608 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0811660C
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	b _0811664C
	.align 2, 0
_081165F4: .4byte gKirbys
_081165F8: .4byte gUnk_0203AD3C
_081165FC: .4byte gUnk_08D60FA4
_08116600: .4byte gSongTable
_08116604: .4byte 0x00000D84
_08116608: .4byte gUnk_0203AD10
_0811660C:
	adds r1, r6, #0
	adds r1, #0xbe
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0811664C
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _0811664C
	adds r1, #2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	subs r0, #0xa
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #9
	bls _0811664C
	subs r0, #0xa
	strb r0, [r1]
_0811664C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08116654
sub_08116654: @ 0x08116654
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _081167D8 @ =gUnk_08357B14
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x54
	strb r0, [r3]
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r0, #1
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x55
	adds r2, r2, r4
	mov ip, r2
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	mov r3, ip
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0811671C
	ldr r1, _081167DC @ =gKirbys
	ldr r0, _081167E0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811671C
	ldrb r0, [r4]
	cmp r0, #0
	bne _081166E0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811671C
_081166E0:
	ldr r1, _081167E4 @ =gUnk_08D60FA4
	ldr r5, _081167E8 @ =gSongTable
	ldr r2, _081167EC @ =0x0000129C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116704
	ldr r1, _081167F0 @ =0x00001298
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811671C
_08116704:
	cmp r3, #0
	beq _08116716
	ldr r0, _081167F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811671C
_08116716:
	ldr r0, _081167F8 @ =0x00000253
	bl m4aSongNumStart
_0811671C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r5, r4, #0
	adds r5, #0x9f
	movs r2, #0x83
	adds r2, r2, r4
	mov r8, r2
	adds r6, r4, #0
	adds r6, #0x50
	movs r3, #0x52
	adds r3, r3, r4
	mov ip, r3
	cmp r1, #0
	bne _0811681E
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r3, _081167FC @ =gUnk_083573F0
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0811675E
	subs r0, r1, #1
	strb r0, [r5]
_0811675E:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08116782
	mov r0, r8
	strb r1, [r0]
_08116782:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08116800
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _081167B0
	mov r0, sb
	strh r0, [r6]
_081167B0:
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _0811681E
	mov r0, ip
	strh r2, [r0]
	b _0811681E
	.align 2, 0
_081167D8: .4byte gUnk_08357B14
_081167DC: .4byte gKirbys
_081167E0: .4byte gUnk_0203AD3C
_081167E4: .4byte gUnk_08D60FA4
_081167E8: .4byte gSongTable
_081167EC: .4byte 0x0000129C
_081167F0: .4byte 0x00001298
_081167F4: .4byte gUnk_0203AD10
_081167F8: .4byte 0x00000253
_081167FC: .4byte gUnk_083573F0
_08116800:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
_0811681E:
	ldr r2, _08116904 @ =gUnk_083573F0
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r1, r0, #1
	strb r1, [r7]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _081168CA
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _081168CA
	ldr r1, _08116908 @ =gKirbys
	ldr r0, _0811690C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081168CA
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811688A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081168CA
_0811688A:
	ldr r1, _08116910 @ =gUnk_08D60FA4
	ldr r6, _08116914 @ =gSongTable
	ldr r2, _08116918 @ =0x00001204
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081168B0
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081168CA
_081168B0:
	cmp r3, #0
	beq _081168C2
	ldr r0, _0811691C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081168CA
_081168C2:
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
_081168CA:
	ldr r2, _08116904 @ =gUnk_083573F0
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _081168F8
	ldrb r0, [r7]
	cmp r0, #0
	bne _081168F8
	adds r0, r4, #0
	bl sub_080700D8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_081168F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08116904: .4byte gUnk_083573F0
_08116908: .4byte gKirbys
_0811690C: .4byte gUnk_0203AD3C
_08116910: .4byte gUnk_08D60FA4
_08116914: .4byte gSongTable
_08116918: .4byte 0x00001204
_0811691C: .4byte gUnk_0203AD10

	thumb_func_start sub_08116920
sub_08116920: @ 0x08116920
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081169C8
	movs r6, #0
	ldr r0, _081169D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	bhs _081169C2
	ldr r0, _081169D8 @ =gUnk_083573D0
	mov r8, r0
	add r1, r8
	mov sb, r1
_08116954:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _081169DC @ =gKirbys
	adds r4, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _081169B4
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081169B4
	adds r0, r4, #0
	bl sub_080525C0
	ldr r1, _081169E0 @ =gUnk_08D6112C
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080531B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r4, #0x40]
	add r1, sb
	ldr r0, [r1]
	str r0, [r4, #0x44]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_081169B4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _081169D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _08116954
_081169C2:
	adds r0, r5, #0
	bl sub_08118928
_081169C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081169D4: .4byte gUnk_0203AD44
_081169D8: .4byte gUnk_083573D0
_081169DC: .4byte gKirbys
_081169E0: .4byte gUnk_08D6112C

	thumb_func_start sub_081169E4
sub_081169E4: @ 0x081169E4
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r4, _08116A9C @ =gUnk_08357648
	cmp r0, #0
	bne _08116AC4
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08116A1C
	subs r0, r1, #1
	strb r0, [r3]
_08116A1C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08116A42
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_08116A42:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08116AA0
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _08116A70
	mov r0, ip
	adds r0, #0x50
	strh r2, [r0]
_08116A70:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _08116AC4
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _08116AC4
	.align 2, 0
_08116A9C: .4byte gUnk_08357648
_08116AA0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
_08116AC4:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08116B20
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _08116B20
	mov r0, ip
	bl sub_08116BC0
	b _08116B9A
_08116B20:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9e
	bne _08116B9A
	ldr r1, _08116BA0 @ =gKirbys
	ldr r0, _08116BA4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116B9A
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _08116B5E
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116B9A
_08116B5E:
	ldr r1, _08116BA8 @ =gUnk_08D60FA4
	ldr r4, _08116BAC @ =gSongTable
	ldr r5, _08116BB0 @ =0x0000100C
	adds r0, r4, r5
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116B82
	ldr r1, _08116BB4 @ =0x00001008
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116B9A
_08116B82:
	cmp r3, #0
	beq _08116B94
	ldr r0, _08116BB8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116B9A
_08116B94:
	ldr r0, _08116BBC @ =0x00000201
	bl m4aSongNumStart
_08116B9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08116BA0: .4byte gKirbys
_08116BA4: .4byte gUnk_0203AD3C
_08116BA8: .4byte gUnk_08D60FA4
_08116BAC: .4byte gSongTable
_08116BB0: .4byte 0x0000100C
_08116BB4: .4byte 0x00001008
_08116BB8: .4byte gUnk_0203AD10
_08116BBC: .4byte 0x00000201

	thumb_func_start sub_08116BC0
sub_08116BC0: @ 0x08116BC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _08116BF8 @ =sub_08118964
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #0x40
	strh r1, [r5, #4]
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _08116BF2
	movs r0, #0
	strb r0, [r1, #9]
_08116BF2:
	movs r6, #0
	b _08116C3C
	.align 2, 0
_08116BF8: .4byte sub_08118964
_08116BFC:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08116C4C @ =gKirbys
	adds r4, r1, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08116C36
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116C36
	adds r0, r4, #0
	bl sub_08052BB4
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_08116C36:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08116C3C:
	ldr r0, _08116C50 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _08116BFC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08116C4C: .4byte gKirbys
_08116C50: .4byte gUnk_0203AD44

	thumb_func_start sub_08116C54
sub_08116C54: @ 0x08116C54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r2, _08116DD0 @ =gUnk_08357B14
	movs r0, #0xbc
	adds r0, r0, r6
	mov sl, r0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x54
	strb r0, [r1]
	mov r3, sl
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r0, #1
	asrs r0, r0, #2
	movs r3, #3
	ands r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x55
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r1]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	mov r4, sl
	ldrh r1, [r4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08116D16
	movs r2, #0xa6
	lsls r2, r2, #2
	ldr r4, _08116DD4 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _08116DD8 @ =0x00196225
	mov sb, r1
	mov r3, sb
	muls r3, r0, r3
	ldr r5, _08116DDC @ =0x3C6EF35F
	adds r3, r3, r5
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #1
	ands r3, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	adds r7, r0, #0
	ldr r0, [r4]
	mov r2, sb
	muls r2, r0, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r3, #0x1f
	mov r8, r3
	ands r1, r3
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, sb
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	mov r4, r8
	ands r0, r4
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
	adds r0, r6, #0
	bl sub_08117F6C
_08116D16:
	mov r0, sl
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08116DB6
	adds r0, r6, #0
	bl sub_08117C84
	ldr r5, _08116DD4 @ =gRngVal
	ldr r0, [r5]
	ldr r1, _08116DD8 @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r4, _08116DDC @ =0x3C6EF35F
	mov sb, r4
	adds r3, r0, r4
	str r3, [r5]
	lsrs r0, r3, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08116D9A
	ldr r2, _08116DE0 @ =0x00000292
	mov r4, r8
	muls r4, r3, r4
	adds r3, r4, #0
	ldr r0, _08116DDC @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r5]
	lsrs r3, r3, #0x10
	ands r3, r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	adds r7, r0, #0
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	ldr r1, _08116DDC @ =0x3C6EF35F
	adds r2, r2, r1
	str r2, [r5]
	lsrs r1, r2, #0x10
	movs r4, #0x1f
	ands r1, r4
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	ldr r1, _08116DDC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
_08116D9A:
	ldr r0, [r5]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r4, #3
	ands r0, r4
	cmp r0, #0
	bne _08116DB6
	adds r0, r6, #0
	bl sub_08117C84
_08116DB6:
	adds r1, r6, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08116DD0: .4byte gUnk_08357B14
_08116DD4: .4byte gRngVal
_08116DD8: .4byte 0x00196225
_08116DDC: .4byte 0x3C6EF35F
_08116DE0: .4byte 0x00000292

	thumb_func_start sub_08116DE4
sub_08116DE4: @ 0x08116DE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08116E30 @ =sub_08116E74
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _08116E34 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r2]
	ldr r0, [r4, #0x44]
	ldr r1, _08116E38 @ =0xFFFFB600
	adds r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xc0
	ble _08116E3C
	movs r0, #0xc0
	strh r0, [r2]
	b _08116E46
	.align 2, 0
_08116E30: .4byte sub_08116E74
_08116E34: .4byte 0xEFFFFFFF
_08116E38: .4byte 0xFFFFB600
_08116E3C:
	movs r1, #0xc0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08116E46
	strh r1, [r2]
_08116E46:
	adds r1, r4, #0
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xc0
	ble _08116E58
	movs r0, #0xc0
	strh r0, [r1]
	b _08116E62
_08116E58:
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _08116E62
	strh r2, [r1]
_08116E62:
	ldr r0, _08116E70 @ =gUnk_030016A0
	movs r1, #0x10
	bl m4aMPlayFadeOut
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08116E70: .4byte gUnk_030016A0

	thumb_func_start sub_08116E74
sub_08116E74: @ 0x08116E74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _08116EEC @ =gUnk_08357B14
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x54
	movs r6, #0
	strb r0, [r3]
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r0, #1
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x55
	adds r2, r2, r4
	mov ip, r2
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08116C54
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08116F06
	cmp r0, #0
	ble _08116EF4
	ldr r1, [r4, #0x40]
	ldr r0, _08116EF0 @ =0x00007FFF
	cmp r1, r0
	ble _08116F06
	adds r0, #1
	str r0, [r4, #0x40]
	b _08116F04
	.align 2, 0
_08116EEC: .4byte gUnk_08357B14
_08116EF0: .4byte 0x00007FFF
_08116EF4:
	cmp r0, #0
	bge _08116F06
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	bgt _08116F06
	str r1, [r4, #0x40]
_08116F04:
	strh r6, [r2]
_08116F06:
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0
	beq _08116F3A
	cmp r1, #0
	ble _08116F26
	ldr r0, [r4, #0x44]
	movs r1, #0x94
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08116F3A
	str r1, [r4, #0x44]
	b _08116F36
_08116F26:
	cmp r1, #0
	bge _08116F3A
	ldr r1, [r4, #0x44]
	ldr r0, _08116FC8 @ =0x000049FF
	cmp r1, r0
	ble _08116F3A
	adds r0, #1
	str r0, [r4, #0x44]
_08116F36:
	movs r0, #0
	strh r0, [r3]
_08116F3A:
	movs r0, #4
	ldrsh r2, [r4, r0]
	ldr r0, _08116FCC @ =0x0000012B
	cmp r2, r0
	ble _08116F48
	movs r0, #0
	str r0, [r4, #0x7c]
_08116F48:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08116F5C
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	bgt _08116F64
_08116F5C:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	ble _08116FD0
_08116F64:
	adds r1, r4, #0
	adds r1, #0x54
	movs r0, #0
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x55
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r1]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08116FFC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08116FF4
	adds r1, r5, #0
	adds r1, #0xbf
	ldrb r0, [r1]
	adds r0, #3
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08116FF4
	adds r2, r5, #0
	adds r2, #0xc0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _08116FF4
	subs r0, #0xa
	strb r0, [r2]
	b _08116FF4
	.align 2, 0
_08116FC8: .4byte 0x000049FF
_08116FCC: .4byte 0x0000012B
_08116FD0:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08116FF4
	ldr r1, [r4, #0x44]
	movs r0, #0x94
	lsls r0, r0, #7
	cmp r1, r0
	bne _08116FF4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08116FF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08116FFC
sub_08116FFC: @ 0x08116FFC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081170B0 @ =sub_08118A00
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	str r0, [r4, #0x7c]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_08033540
	ldr r1, _081170B4 @ =gUnk_08350E34
	adds r0, r4, #0
	bl sub_080860A8
	ldr r1, _081170B8 @ =gKirbys
	ldr r0, _081170BC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081170A8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08117068
	ldrb r0, [r5]
	cmp r0, r2
	bne _081170A8
_08117068:
	ldr r1, _081170C0 @ =gUnk_08D60FA4
	ldr r4, _081170C4 @ =gSongTable
	ldr r2, _081170C8 @ =0x00000BE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811708E
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081170A8
_0811708E:
	cmp r3, #0
	beq _081170A0
	ldr r0, _081170CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081170A8
_081170A0:
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
_081170A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081170B0: .4byte sub_08118A00
_081170B4: .4byte gUnk_08350E34
_081170B8: .4byte gKirbys
_081170BC: .4byte gUnk_0203AD3C
_081170C0: .4byte gUnk_08D60FA4
_081170C4: .4byte gSongTable
_081170C8: .4byte 0x00000BE4
_081170CC: .4byte gUnk_0203AD10

	thumb_func_start sub_081170D0
sub_081170D0: @ 0x081170D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08117190 @ =sub_08118A1C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08117194 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_080335B4
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_08098184
	ldr r2, _08117198 @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811719C @ =gKirbys
	ldr r0, _081171A0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08117188
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811714C
	ldrb r0, [r5]
	cmp r0, r2
	bne _08117188
_0811714C:
	ldr r1, _081171A4 @ =gUnk_08D60FA4
	ldr r4, _081171A8 @ =gSongTable
	ldr r2, _081171AC @ =0x00000BDC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08117170
	ldr r1, _081171B0 @ =0x00000BD8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08117188
_08117170:
	cmp r3, #0
	beq _08117182
	ldr r0, _081171B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08117188
_08117182:
	ldr r0, _081171B8 @ =0x0000017B
	bl m4aSongNumStart
_08117188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08117190: .4byte sub_08118A1C
_08117194: .4byte 0xFFFFDFFF
_08117198: .4byte 0x00000299
_0811719C: .4byte gKirbys
_081171A0: .4byte gUnk_0203AD3C
_081171A4: .4byte gUnk_08D60FA4
_081171A8: .4byte gSongTable
_081171AC: .4byte 0x00000BDC
_081171B0: .4byte 0x00000BD8
_081171B4: .4byte gUnk_0203AD10
_081171B8: .4byte 0x0000017B

	thumb_func_start sub_081171BC
sub_081171BC: @ 0x081171BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _081171F0 @ =sub_08117298
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _081171F4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081171F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117200
	.align 2, 0
_081171F0: .4byte sub_08117298
_081171F4: .4byte sub_0803DCCC
_081171F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117200:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	movs r7, #0xe7
	lsls r7, r7, #2
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x2a
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _0811727C @ =gKirbys
	ldr r0, _08117280 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08117284
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08117288
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _08117288
	.align 2, 0
_0811727C: .4byte gKirbys
_08117280: .4byte gUnk_0203AD3C
_08117284:
	mov r1, r8
	strb r1, [r5]
_08117288:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08117298
sub_08117298: @ 0x08117298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _081172BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081172C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081172C8
	.align 2, 0
_081172BC: .4byte gCurTask
_081172C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081172C8:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081172E2
	ldr r0, [r2]
	bl TaskDestroy
	b _08117522
_081172E2:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _081172F2
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _08117522
_081172F2:
	ldr r2, _0811735C @ =gKirbys
	ldr r0, _08117360 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _081173A4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0811736C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081173CA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x2a
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08117364 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08117368 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _081173CA
	.align 2, 0
_0811735C: .4byte gKirbys
_08117360: .4byte gUnk_0203AD3C
_08117364: .4byte 0xFFF7FFFF
_08117368: .4byte 0x0400000A
_0811736C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081173CA
	movs r0, #0x2a
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811739C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081173A0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081173CA
	.align 2, 0
_0811739C: .4byte 0xFFF7FFFF
_081173A0: .4byte 0x0400000A
_081173A4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081173C0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081173C0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081173C0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081173CA:
	ldr r2, _08117410 @ =gKirbys
	ldr r0, _08117414 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _08117418
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08117420
	movs r6, #0xe7
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08117420
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08117420
	.align 2, 0
_08117410: .4byte gKirbys
_08117414: .4byte gUnk_0203AD3C
_08117418:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08117420:
	ldrh r0, [r5, #6]
	ldr r2, _081174A0 @ =0x0000FBFA
	ands r2, r0
	strh r2, [r5, #6]
	ldr r1, [r7, #8]
	ldr r0, _081174A4 @ =0x00000404
	ands r1, r0
	orrs r1, r2
	strh r1, [r5, #6]
	ldr r0, [r7, #8]
	movs r2, #1
	eors r0, r2
	ands r0, r2
	orrs r1, r0
	strh r1, [r5, #6]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _081174AC
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811746E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0811746E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0811746E:
	cmp r3, #0
	beq _081174AC
	ldr r0, _081174A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811751C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811751C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08117522
	.align 2, 0
_081174A0: .4byte 0x0000FBFA
_081174A4: .4byte 0x00000404
_081174A8: .4byte gUnk_03000510
_081174AC:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08117514 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _081174EC
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #4
_081174EC:
	ldr r0, _08117518 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811751C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811751C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08117522
	.align 2, 0
_08117514: .4byte gKirbys
_08117518: .4byte gUnk_03000510
_0811751C:
	adds r0, r5, #0
	bl sub_0806FAC8
_08117522:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08117530
sub_08117530: @ 0x08117530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r2, _08117558 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811755C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117564
	.align 2, 0
_08117558: .4byte gCurTask
_0811755C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117564:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sl, r0
	mov r3, sl
	adds r1, r3, #0
	str r1, [sp]
	ldrh r4, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08117586
	ldr r0, [r2]
	bl TaskDestroy
	b _08117954
_08117586:
	mov r0, sl
	ldr r3, [r0, #8]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0811759A
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r7, #6]
	b _08117954
_0811759A:
	ldr r0, _081176F0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _081175BC
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _081175C2
_081175BC:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_081175C2:
	movs r1, #4
	ldrsh r0, [r7, r1]
	ldrh r2, [r7, #4]
	cmp r0, #6
	ble _081175E0
	mov r3, sl
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _081175E0
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
_081175E0:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _081175EA
	b _08117954
_081175EA:
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x10]
	ldr r0, [r1, #0x18]
	str r0, [r7, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0x18]
	ldrh r0, [r1, #0x1e]
	strh r0, [r7, #0x1a]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	ldrh r0, [r1, #0x26]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x26
	str r2, [sp, #4]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x27
	str r3, [sp, #8]
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r1, #0x28
	adds r1, r1, r7
	mov sb, r1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2d
	ldrb r0, [r0]
	movs r2, #0x29
	adds r2, r2, r7
	mov r8, r2
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x2a
	strb r0, [r6]
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2b
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _081176F4 @ =gCurLevelInfo
	ldr r1, _081176F8 @ =gUnk_0203AD3C
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, _081176F8 @ =gUnk_0203AD3C
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	ldr r1, [sp, #4]
	str r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r2, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	cmp r0, #0
	bne _0811770C
	ldr r2, _081176FC @ =gKirbys
	ldr r0, _081176F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811770C
	ldr r1, _08117700 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08117704
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0811770C
	.align 2, 0
_081176F0: .4byte gUnk_03000510
_081176F4: .4byte gCurLevelInfo
_081176F8: .4byte gUnk_0203AD3C
_081176FC: .4byte gKirbys
_08117700: .4byte gUnk_0203AD18
_08117704:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_0811770C:
	mov r1, sl
	ldr r3, [r1, #0x48]
	str r3, [r7, #0x34]
	ldr r4, [r1, #0x4c]
	str r4, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	asrs r3, r3, #8
	ldr r2, _08117794 @ =gCurLevelInfo
	ldr r6, _08117798 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	asrs r4, r4, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _081177AC
	ldr r2, _0811779C @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081177AC
	ldr r1, _081177A0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _081177A4
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081177AC
	.align 2, 0
_08117794: .4byte gCurLevelInfo
_08117798: .4byte gUnk_0203AD3C
_0811779C: .4byte gKirbys
_081177A0: .4byte gUnk_0203AD18
_081177A4:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_081177AC:
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r7, #0x38]
	ldr r1, [sp]
	adds r1, #0xb4
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	str r0, [r7, #0xc]
	ldr r0, [r1]
	ldr r0, [r0, #0x10]
	str r0, [r7, #0x10]
	ldr r0, [r1]
	ldr r0, [r0, #0x14]
	str r0, [r7, #0x14]
	ldr r0, [r1]
	ldrh r0, [r0, #0x18]
	strh r0, [r7, #0x18]
	ldr r0, [r1]
	ldrh r0, [r0, #0x1a]
	strh r0, [r7, #0x1a]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	ldr r0, [r1]
	ldrh r0, [r0, #0x22]
	strh r0, [r7, #0x22]
	ldr r0, [r1]
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x27
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, #0x28
	ldrb r0, [r0]
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x29
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, #0x2a
	ldrb r0, [r0]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x2b
	ldrb r0, [r0]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _0811789C @ =gCurLevelInfo
	ldr r5, _081178A0 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	strh r6, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _081178B4
	ldr r2, _081178A4 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081178B4
	ldr r1, _081178A8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _081178AC
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081178B4
	.align 2, 0
_0811789C: .4byte gCurLevelInfo
_081178A0: .4byte gUnk_0203AD3C
_081178A4: .4byte gKirbys
_081178A8: .4byte gUnk_0203AD18
_081178AC:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_081178B4:
	mov r2, sl
	ldr r3, [r2, #0x48]
	str r3, [r7, #0x34]
	ldr r4, [r2, #0x4c]
	str r4, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	asrs r3, r3, #8
	ldr r2, _0811793C @ =gCurLevelInfo
	ldr r6, _08117940 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	asrs r4, r4, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08117954
	ldr r2, _08117944 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08117954
	ldr r1, _08117948 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _0811794C
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08117954
	.align 2, 0
_0811793C: .4byte gCurLevelInfo
_08117940: .4byte gUnk_0203AD3C
_08117944: .4byte gKirbys
_08117948: .4byte gUnk_0203AD18
_0811794C:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_08117954:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08117964
sub_08117964: @ 0x08117964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r5
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r7, r0, #8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	str r0, [sp]
	cmp r3, #0
	beq _081179C2
	ldr r2, _081179E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081179E8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081179EC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r7, r7, r1
	lsls r1, r1, #4
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_081179C2:
	movs r4, #0
	ldr r1, _081179F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	lsls r6, r6, #0x10
	mov sl, r6
	movs r6, #0x87
	add ip, r6
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	mov r6, r8
	lsls r6, r6, #0x10
	mov r8, r6
	b _08117A08
	.align 2, 0
_081179E4: .4byte gRngVal
_081179E8: .4byte 0x00196225
_081179EC: .4byte 0x3C6EF35F
_081179F0: .4byte gUnk_020229D4
_081179F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08117A10
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08117A08:
	cmp r0, #0
	bne _081179F4
	orrs r2, r3
	str r2, [r1]
_08117A10:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _08117A94 @ =gUnk_020229E0
	adds r1, r1, r0
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	mov r4, sp
	ldrh r4, [r4]
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd4
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r6, ip
	ldrb r0, [r6]
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	adds r4, r0, #0
	str r5, [r4, #0x70]
	mov r6, sl
	asrs r1, r6, #0x10
	mov r0, r8
	asrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_08118600
	ldr r1, [r5, #0x78]
	ldr r0, _08117A98 @ =sub_08115E2C
	cmp r1, r0
	beq _08117A82
	adds r0, r4, #0
	bl sub_08106AD0
_08117A82:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08117A94: .4byte gUnk_020229E0
_08117A98: .4byte sub_08115E2C

	thumb_func_start sub_08117A9C
sub_08117A9C: @ 0x08117A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, r6, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08117AD8
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	b _08117AE2
_08117AD8:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
_08117AE2:
	mov ip, r1
	ldr r1, [r6, #0x44]
	asrs r1, r1, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov sl, r1
	movs r5, #0
	ldr r1, _08117B20 @ =gUnk_020229D4
	movs r2, #1
	ldr r3, [r1]
	adds r0, r3, #0
	ands r0, r2
	ldr r7, _08117B24 @ =gUnk_020229E0
	adds r4, #0x87
	str r4, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x56
	str r4, [sp]
	mov r4, sb
	lsls r4, r4, #0x10
	mov sb, r4
	mov r4, r8
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r0, #0
	bne _08117B28
	orrs r3, r2
	str r3, [r1]
	b _08117B44
	.align 2, 0
_08117B20: .4byte gUnk_020229D4
_08117B24: .4byte gUnk_020229E0
_08117B28:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _08117B44
	movs r3, #1
	lsls r3, r5
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08117B28
	orrs r2, r3
	str r2, [r1]
_08117B44:
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	mov r4, sl
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd4
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #4]
	ldrb r0, [r4]
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
	ldr r2, [sp]
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r4, r0, #0
	mov r0, sb
	asrs r1, r0, #0x10
	mov r0, r8
	asrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_08118600
	adds r0, r4, #0
	bl sub_08106AD0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08117BBC
sub_08117BBC: @ 0x08117BBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08117BF0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08117BF4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117BF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08117C00
	.align 2, 0
_08117BF0: .4byte ObjectMain
_08117BF4: .4byte ObjectDestroy
_08117BF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08117C00:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r1, [r6, #0x5c]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	movs r0, #3
	orrs r1, r0
	ldr r0, [r6, #0x68]
	ands r0, r2
	str r0, [r6, #0x68]
	ldr r0, _08117C7C @ =0x001080A0
	orrs r1, r0
	str r1, [r6, #0x5c]
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08117C80 @ =sub_08118AD4
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08117C7C: .4byte 0x001080A0
_08117C80: .4byte sub_08118AD4

	thumb_func_start sub_08117C84
sub_08117C84: @ 0x08117C84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08117CBC @ =sub_08117DA0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08117CC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117CC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117CCC
	.align 2, 0
_08117CBC: .4byte sub_08117DA0
_08117CC0: .4byte sub_0803DCCC
_08117CC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117CCC:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	mov sb, r0
	mov r1, sb
	strb r1, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r4, _08117D58 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08117D5C @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08117D60 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0x3f
	ands r1, r0
	subs r0, #0xbf
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0x1f
	mov r8, r0
	ands r1, r0
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r1, r5
	str r1, [r4]
	lsrs r0, r1, #0x10
	mov r2, r8
	ands r0, r2
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	mov r1, sb
	ands r0, r1
	cmp r0, #2
	beq _08117D64
	cmp r0, #3
	beq _08117D68
	movs r4, #9
	b _08117D6A
	.align 2, 0
_08117D58: .4byte gRngVal
_08117D5C: .4byte 0x00196225
_08117D60: .4byte 0x3C6EF35F
_08117D64:
	movs r4, #0xa
	b _08117D6A
_08117D68:
	movs r4, #0xb
_08117D6A:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _08117D98 @ =0x06012000
	ldr r3, _08117D9C @ =0x00000291
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08117D98: .4byte 0x06012000
_08117D9C: .4byte 0x00000291

	thumb_func_start sub_08117DA0
sub_08117DA0: @ 0x08117DA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08117DC4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08117DC8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117DD0
	.align 2, 0
_08117DC4: .4byte gCurTask
_08117DC8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117DD0:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08117DEC
	ldr r0, [r5]
	bl TaskDestroy
	b _08117F60
_08117DEC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08117E38
	ldrb r0, [r1]
	cmp r0, #0
	beq _08117E04
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08117E04
	str r2, [r3, #0x44]
	movs r1, #0
_08117E04:
	cmp r1, #0
	beq _08117E38
	ldr r0, _08117E34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08117EA8
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08117EA8
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08117F60
	.align 2, 0
_08117E34: .4byte gUnk_03000510
_08117E38:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08117EA0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08117E7A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #4
_08117E7A:
	ldr r0, _08117EA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08117EA8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08117EA8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08117F60
	.align 2, 0
_08117EA0: .4byte gKirbys
_08117EA4: .4byte gUnk_03000510
_08117EA8:
	ldr r0, _08117F30 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #0x3e]
	mov r8, r7
	ldrh r1, [r3, #4]
	mov ip, r1
	cmp r0, #0
	beq _08117EF4
	ldr r6, _08117F34 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08117F38 @ =gUnk_02026D50
_08117EC2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08117EEC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08117F06
_08117EEC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08117EC2
_08117EF4:
	movs r0, #1
	cmp r0, #0
	beq _08117F06
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08117F06:
	ldrh r1, [r3, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	mov r0, r8
	subs r0, #0x10
	strh r0, [r3, #0x3e]
	mov r0, ip
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08117F3C
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r3, #6]
	b _08117F60
	.align 2, 0
_08117F30: .4byte gUnk_0203AD44
_08117F34: .4byte gCurLevelInfo
_08117F38: .4byte gUnk_02026D50
_08117F3C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08117F5A
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08117F5A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08117F60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08117F6C
sub_08117F6C: @ 0x08117F6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08117FA0 @ =sub_08118064
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08117FA4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117FA8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08117FB0
	.align 2, 0
_08117FA0: .4byte sub_08118064
_08117FA4: .4byte sub_0803DCCC
_08117FA8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08117FB0:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #0
	mov r8, r0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08118050 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08118054 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08118058 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r0, [r7, #0x3e]
	muls r2, r5, r2
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r6, #0x1f
	ands r0, r6
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r6
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0811805C @ =0x06012000
	ldr r3, _08118060 @ =0x000002A6
	mov r0, r8
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08118050: .4byte gRngVal
_08118054: .4byte 0x00196225
_08118058: .4byte 0x3C6EF35F
_0811805C: .4byte 0x06012000
_08118060: .4byte 0x000002A6

	thumb_func_start sub_08118064
sub_08118064: @ 0x08118064
	push {r4, r5, r6, r7, lr}
	ldr r2, _08118084 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08118088
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08118090
	.align 2, 0
_08118084: .4byte gCurTask
_08118088:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08118090:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _081180AC
	ldr r0, [r5]
	bl TaskDestroy
	b _08118218
_081180AC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _081180F8
	ldrb r0, [r1]
	cmp r0, #0
	beq _081180C4
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _081180C4
	str r2, [r3, #0x44]
	movs r1, #0
_081180C4:
	cmp r1, #0
	beq _081180F8
	ldr r0, _081180F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08118168
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08118168
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08118218
	.align 2, 0
_081180F4: .4byte gUnk_03000510
_081180F8:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08118160 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0811813A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #4
_0811813A:
	ldr r0, _08118164 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08118168
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08118168
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08118218
	.align 2, 0
_08118160: .4byte gKirbys
_08118164: .4byte gUnk_03000510
_08118168:
	ldr r0, _081181E8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #0x3e]
	mov ip, r7
	cmp r0, #0
	beq _081181B0
	ldr r6, _081181EC @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _081181F0 @ =gUnk_02026D50
_0811817E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _081181A8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _081181C2
_081181A8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0811817E
_081181B0:
	movs r0, #1
	cmp r0, #0
	beq _081181C2
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_081181C2:
	ldrh r1, [r3, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	mov r0, ip
	subs r0, #0xc
	strh r0, [r3, #0x3e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081181F4
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r3, #6]
	b _08118218
	.align 2, 0
_081181E8: .4byte gUnk_0203AD44
_081181EC: .4byte gCurLevelInfo
_081181F0: .4byte gUnk_02026D50
_081181F4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08118212
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08118212:
	adds r0, r3, #0
	bl sub_0806FAC8
_08118218:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08118220
sub_08118220: @ 0x08118220
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08118258 @ =sub_08118310
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0811825C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08118260
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08118268
	.align 2, 0
_08118258: .4byte sub_08118310
_0811825C: .4byte sub_0803DCCC
_08118260:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08118268:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r2, #0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #1
	movs r0, #0xe0
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x38]
	strh r6, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r5, _081182F4 @ =0x00000389
	movs r0, #2
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r2, #2
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, #0x2b
	mov r0, r8
	strb r0, [r4]
	ldr r2, _081182F8 @ =gKirbys
	ldr r0, _081182FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _08118300
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08118304
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08118304
	.align 2, 0
_081182F4: .4byte 0x00000389
_081182F8: .4byte gKirbys
_081182FC: .4byte gUnk_0203AD3C
_08118300:
	mov r1, r8
	strb r1, [r4]
_08118304:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08118310
sub_08118310: @ 0x08118310
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _08118338 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811833C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08118344
	.align 2, 0
_08118338: .4byte gCurTask
_0811833C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08118344:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08118362
	ldr r0, [r2]
	bl TaskDestroy
	b _081185EE
_08118362:
	adds r1, r6, #0
	cmp r6, #0
	beq _081183AC
	ldrb r0, [r6]
	cmp r0, #0
	beq _0811837A
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _0811837A
	str r3, [r5, #0x44]
	movs r1, #0
_0811837A:
	cmp r1, #0
	beq _081183AC
	ldr r0, _081183A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811841C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811841C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _081185EE
	.align 2, 0
_081183A8: .4byte gUnk_03000510
_081183AC:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08118414 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _081183EE
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #4
_081183EE:
	ldr r0, _08118418 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811841C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811841C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _081185EE
	.align 2, 0
_08118414: .4byte gKirbys
_08118418: .4byte gUnk_03000510
_0811841C:
	ldr r0, _081184EC @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r5
	mov r8, r1
	ldr r3, [r5, #0xc]
	movs r2, #0x26
	adds r2, r2, r5
	mov sb, r2
	adds r7, r5, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _08118478
	ldr r4, _081184F0 @ =gCurLevelInfo
	mov sl, r4
	ldrh r1, [r1]
	str r1, [sp, #0x28]
	ldr r2, _081184F4 @ =gUnk_02026D50
	mov ip, r2
_08118442:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r4, sl
	adds r1, r0, r4
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _08118470
	ldr r4, _081184F8 @ =0x0000065E
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0811848A
_08118470:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08118442
_08118478:
	movs r0, #1
	cmp r0, #0
	beq _0811848A
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0811848A:
	ldr r2, _081184FC @ =gKirbys
	ldr r0, _08118500 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _08118540
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0811850C
	cmp r3, #0
	bne _08118566
	ldrh r1, [r5, #0x18]
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #2
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08118504 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08118508 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08118566
	.align 2, 0
_081184EC: .4byte gUnk_0203AD44
_081184F0: .4byte gCurLevelInfo
_081184F4: .4byte gUnk_02026D50
_081184F8: .4byte 0x0000065E
_081184FC: .4byte gKirbys
_08118500: .4byte gUnk_0203AD3C
_08118504: .4byte 0xFFF7FFFF
_08118508: .4byte 0x0400000A
_0811850C:
	cmp r3, #0
	bne _08118566
	movs r0, #2
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08118538 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0811853C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08118566
	.align 2, 0
_08118538: .4byte 0xFFF7FFFF
_0811853C: .4byte 0x0400000A
_08118540:
	cmp r3, #0
	beq _0811855C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0811855C
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_0811855C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08118566:
	ldr r2, _081185A4 @ =gKirbys
	ldr r0, _081185A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _081185B0
	ldrb r0, [r7]
	cmp r0, #0
	bne _081185B4
	ldr r4, _081185AC @ =0x00000389
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081185B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _081185B2
	.align 2, 0
_081185A4: .4byte gKirbys
_081185A8: .4byte gUnk_0203AD3C
_081185AC: .4byte 0x00000389
_081185B0:
	movs r0, #0
_081185B2:
	strb r0, [r7]
_081185B4:
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #1
	beq _081185CE
	cmp r0, #2
	beq _081185DC
	adds r0, r6, #0
	adds r0, #0xbe
	ldrb r0, [r0]
	adds r0, #2
	mov r4, sb
	strb r0, [r4]
	b _081185E8
_081185CE:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	adds r0, #2
	mov r7, sb
	strb r0, [r7]
	b _081185E8
_081185DC:
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	adds r0, #2
	mov r1, sb
	strb r0, [r1]
_081185E8:
	adds r0, r5, #0
	bl sub_0806FAC8
_081185EE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08118600
sub_08118600: @ 0x08118600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r2, _08118668 @ =sub_08118AC8
	movs r1, #0
	bl ObjectSetFunc
	ldr r2, _0811866C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08118670 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08118674 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r5, #0
	adds r2, #0x83
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r6, [r0]
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r5, #8]
	cmp r4, #0
	bne _08118658
	cmp r6, #0
	bne _08118658
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #8]
_08118658:
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08118668: .4byte sub_08118AC8
_0811866C: .4byte gRngVal
_08118670: .4byte 0x00196225
_08118674: .4byte 0x3C6EF35F

	thumb_func_start sub_08118678
sub_08118678: @ 0x08118678
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081186B4 @ =sub_08114CBC
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r4, #0xac
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081186B4: .4byte sub_08114CBC

	thumb_func_start sub_081186B8
sub_081186B8: @ 0x081186B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081186EC @ =sub_081186F0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x1c
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081186EC: .4byte sub_081186F0

	thumb_func_start sub_081186F0
sub_081186F0: @ 0x081186F0
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x54
	ldr r0, _08118730 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811872C
	adds r0, r3, #0
	bl sub_08115180
_0811872C:
	pop {r0}
	bx r0
	.align 2, 0
_08118730: .4byte gUnk_0203AD40

	thumb_func_start sub_08118734
sub_08118734: @ 0x08118734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118770 @ =sub_08115284
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08118774 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08118778 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811877C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08118788
	ldr r1, [r4, #0x40]
	ldr r0, _08118780 @ =0x000077FF
	cmp r1, r0
	bgt _08118784
	movs r0, #0x90
	lsls r0, r0, #1
	b _08118786
	.align 2, 0
_08118770: .4byte sub_08115284
_08118774: .4byte gRngVal
_08118778: .4byte 0x00196225
_0811877C: .4byte 0x3C6EF35F
_08118780: .4byte 0x000077FF
_08118784:
	ldr r0, _08118798 @ =0x0000FEE0
_08118786:
	strh r0, [r4, #4]
_08118788:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118798: .4byte 0x0000FEE0

	thumb_func_start sub_0811879C
sub_0811879C: @ 0x0811879C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081187CC @ =sub_081187D0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081187CC: .4byte sub_081187D0

	thumb_func_start sub_081187D0
sub_081187D0: @ 0x081187D0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081187EE
	adds r0, r2, #0
	bl sub_08114BA0
_081187EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081187F4
sub_081187F4: @ 0x081187F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118824 @ =sub_08115504
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118824: .4byte sub_08115504

	thumb_func_start sub_08118828
sub_08118828: @ 0x08118828
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118864 @ =sub_08115638
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118864: .4byte sub_08115638

	thumb_func_start sub_08118868
sub_08118868: @ 0x08118868
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118898 @ =sub_08115E2C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118898: .4byte sub_08115E2C

	thumb_func_start sub_0811889C
sub_0811889C: @ 0x0811889C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081188E8 @ =sub_08116654
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080700D8
	movs r0, #4
	adds r1, r4, #0
	bl sub_0806FE64
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r4, #0x24]
	adds r4, #0xb4
	ldr r0, [r4]
	strh r1, [r0, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081188E8: .4byte sub_08116654

	thumb_func_start sub_081188EC
sub_081188EC: @ 0x081188EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118920 @ =sub_08116920
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r0, _08118924 @ =0xFFFFEC00
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118920: .4byte sub_08116920
_08118924: .4byte 0xFFFFEC00

	thumb_func_start sub_08118928
sub_08118928: @ 0x08118928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811895C @ =sub_081169E4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r0, _08118960 @ =0xFFFFEC00
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811895C: .4byte sub_081169E4
_08118960: .4byte 0xFFFFEC00

	thumb_func_start sub_08118964
sub_08118964: @ 0x08118964
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08118988
	ldr r0, _0811898C @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_08114BA0
_08118988:
	pop {r0}
	bx r0
	.align 2, 0
_0811898C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08118990
sub_08118990: @ 0x08118990
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r3, #0x40
	orrs r0, r3
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, _081189D4 @ =sub_081164E0
	str r0, [r4, #0x7c]
	ldr r2, _081189D8 @ =gUnk_0203AD10
	ldr r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _081189DC
	orrs r1, r3
	str r1, [r2]
	b _081189FA
	.align 2, 0
_081189D4: .4byte sub_081164E0
_081189D8: .4byte gUnk_0203AD10
_081189DC:
	movs r0, #0x20
	orrs r1, r0
	str r1, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08118220
	adds r0, r4, #0
	movs r1, #1
	bl sub_08118220
	adds r0, r4, #0
	movs r1, #2
	bl sub_08118220
_081189FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08118A00
sub_08118A00: @ 0x08118A00
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _08118A18
	adds r0, r1, #0
	bl sub_081170D0
_08118A18:
	pop {r0}
	bx r0

	thumb_func_start sub_08118A1C
sub_08118A1C: @ 0x08118A1C
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	ldrh r1, [r0, #4]
	adds r1, #1
	strh r1, [r0, #4]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08118A56
	ldr r0, _08118A48 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08118A50
	ldr r0, _08118A4C @ =sub_08025A80
	bl sub_08020428
	b _08118A56
	.align 2, 0
_08118A48: .4byte gUnk_0203AD10
_08118A4C: .4byte sub_08025A80
_08118A50:
	ldr r0, _08118A5C @ =sub_0802B4A8
	bl sub_08020428
_08118A56:
	pop {r0}
	bx r0
	.align 2, 0
_08118A5C: .4byte sub_0802B4A8

	thumb_func_start sub_08118A60
sub_08118A60: @ 0x08118A60
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08118A90 @ =sub_08117530
	ldr r2, _08118A94 @ =0x00000FFF
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08118A98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08118AA0
	.align 2, 0
_08118A90: .4byte sub_08117530
_08118A94: .4byte 0x00000FFF
_08118A98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08118AA0:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08118AC8
sub_08118AC8: @ 0x08118AC8
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08118AD4
sub_08118AD4: @ 0x08118AD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809F840
	ldr r0, _08118B44 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08118B3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08118B3C
	ldr r3, [r4, #0x6c]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08118B3C
	ldr r2, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08118B3C
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _08118B3C
	adds r0, r3, #0
	bl sub_08052E2C
	ldr r0, _08118B48 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	bne _08118B3C
	ldr r1, _08118B4C @ =gUnk_08357AD4
	adds r0, r4, #0
	bl sub_080860A8
_08118B3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118B44: .4byte gUnk_03000510
_08118B48: .4byte gUnk_0203AD10
_08118B4C: .4byte gUnk_08357AD4

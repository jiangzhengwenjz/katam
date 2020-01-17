	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08152A18
sub_08152A18: @ 0x08152A18
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08152AB4 @ =gUnk_030035D0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08152AB8 @ =gUnk_03002EBC
	str r1, [r0]
	ldr r0, _08152ABC @ =gUnk_03002E7C
	str r1, [r0]
	ldr r0, _08152AC0 @ =gUnk_03002E98
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08152AC4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08152AC8 @ =gUnk_030019F0
	str r2, [r1, #4]
	ldr r0, _08152ACC @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08152AD0 @ =gUnk_03002560
	ldr r3, _08152AD4 @ =0x000009EC
	adds r2, r2, r3
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r1, r3
_08152A4C:
	str r2, [r0]
	subs r2, #0x14
	subs r0, #4
	cmp r0, r1
	bge _08152A4C
	bl sub_08152F88
	adds r4, r0, #0
	cmp r4, #0
	beq _08152AF4
	ldr r0, _08152AD8 @ =nullsub_143
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08152F88
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08152AF4
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08152ADC @ =nullsub_144
	str r0, [r4, #8]
	ldr r0, _08152AE0 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08152AE4 @ =gUnk_03002500
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08152AE8 @ =gUnk_03006CC4
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08152AEC @ =gUnk_03003A20
	strh r5, [r1]
	ldr r0, _08152AF0 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08152AF6
	.align 2, 0
_08152AB4: .4byte gUnk_030035D0
_08152AB8: .4byte gUnk_03002EBC
_08152ABC: .4byte gUnk_03002E7C
_08152AC0: .4byte gUnk_03002E98
_08152AC4: .4byte 0x040000D4
_08152AC8: .4byte gUnk_030019F0
_08152ACC: .4byte 0x85000080
_08152AD0: .4byte gUnk_03002560
_08152AD4: .4byte 0x000009EC
_08152AD8: .4byte nullsub_143
_08152ADC: .4byte nullsub_144
_08152AE0: .4byte 0x0000FFFF
_08152AE4: .4byte gUnk_03002500
_08152AE8: .4byte gUnk_03006CC4
_08152AEC: .4byte gUnk_03003A20
_08152AF0: .4byte 0x00002604
_08152AF4:
	movs r0, #0
_08152AF6:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08152B00
sub_08152B00: @ 0x08152B00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r4, #0
	movs r3, #0
	ldr r6, _08152B38 @ =gUnk_03002E7C
	ldr r2, [r6]
	cmp r2, #0x7f
	bgt _08152B30
	ldr r1, _08152B3C @ =gUnk_03002560
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #1
	str r0, [r6]
	adds r4, r1, #0
_08152B30:
	cmp r4, #0
	bne _08152B44
	ldr r0, _08152B40 @ =gUnk_03002500
	b _08152C30
	.align 2, 0
_08152B38: .4byte gUnk_03002E7C
_08152B3C: .4byte gUnk_03002560
_08152B40: .4byte gUnk_03002500
_08152B44:
	mov r0, ip
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r1, r8
	strh r1, [r4, #0x10]
	strh r7, [r4, #0x12]
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _08152BB0
	cmp r5, #0
	bne _08152B62
	strh r3, [r4, #6]
	b _08152B72
_08152B62:
	adds r0, r5, #0
	bl sub_08159088
	movs r7, #0xfe
	lsls r7, r7, #0x18
	adds r0, r0, r7
	lsrs r0, r0, #2
	strh r0, [r4, #6]
_08152B72:
	ldr r3, _08152B8C @ =gUnk_0203ADE4
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08152B90
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08152B98
	.align 2, 0
_08152B8C: .4byte gUnk_0203ADE4
_08152B90:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08152B98:
	ldr r0, [r3]
	cmp r0, r1
	bne _08152BDA
	ldr r0, _08152BAC @ =0x0000FFEF
	ands r0, r2
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl sub_08152DD8
	b _08152BD8
	.align 2, 0
_08152BAC: .4byte 0x0000FFEF
_08152BB0:
	adds r0, r5, #0
	bl sub_08152DD8
	strh r0, [r4, #6]
	cmp r5, #0
	beq _08152BDA
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08152BDA
	ldrh r0, [r4, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl sub_08159088
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #2
_08152BD8:
	strh r0, [r4, #6]
_08152BDA:
	ldr r0, _08152C14 @ =gUnk_030035D0
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08152C18 @ =gUnk_03002560
	ldr r3, [r0]
	ldrh r1, [r3, #4]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r1, r2
	cmp r0, r2
	beq _08152C2E
	lsls r0, r4, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _08152C1C @ =gUnk_03002EBC
_08152BF6:
	adds r1, r1, r2
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08152C20
	strh r4, [r1, #2]
	ldrh r0, [r3, #4]
	strh r0, [r4, #4]
	strh r3, [r4, #2]
	strh r4, [r3, #4]
	ldr r0, [r5]
	ldrh r0, [r0, #2]
	cmp r6, r0
	bne _08152C2E
	str r4, [r5]
	b _08152C2E
	.align 2, 0
_08152C14: .4byte gUnk_030035D0
_08152C18: .4byte gUnk_03002560
_08152C1C: .4byte gUnk_03002EBC
_08152C20:
	adds r3, r1, #0
	ldrh r1, [r3, #4]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r0, r1, r7
	cmp r0, r2
	bne _08152BF6
_08152C2E:
	adds r0, r4, #0
_08152C30:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08152C3C
sub_08152C3C: @ 0x08152C3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08152CE0
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08152CE0
	cmp r0, r5
	beq _08152CE0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08152C6A
	adds r0, r4, #0
	bl _call_via_r1
_08152C6A:
	ldr r1, _08152CB0 @ =gUnk_03002EBC
	ldr r0, [r1]
	ldrh r2, [r4, #4]
	cmp r4, r0
	bne _08152C7A
	adds r0, r2, r5
	str r0, [r1]
	ldrh r2, [r4, #4]
_08152C7A:
	ldr r1, _08152CB4 @ =gUnk_03002E98
	ldr r0, [r1]
	cmp r4, r0
	bne _08152C86
	adds r0, r2, r5
	str r0, [r1]
_08152C86:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	adds r0, r2, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08152CC0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08152CB8
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_081590EC
	b _08152CC0
	.align 2, 0
_08152CB0: .4byte gUnk_03002EBC
_08152CB4: .4byte gUnk_03002E98
_08152CB8:
	ldrh r0, [r4, #6]
	adds r0, r0, r5
	bl sub_08152E40
_08152CC0:
	ldr r2, _08152CE8 @ =gUnk_03002560
	ldr r1, _08152CEC @ =gUnk_03002E7C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08152CF0 @ =nullsub_145
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08152CE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08152CE8: .4byte gUnk_03002560
_08152CEC: .4byte gUnk_03002E7C
_08152CF0: .4byte nullsub_145

	thumb_func_start sub_08152CF4
sub_08152CF4: @ 0x08152CF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08152D64 @ =gUnk_030035D0
	ldr r0, _08152D68 @ =gUnk_03002560
	ldr r3, [r0]
	str r3, [r2]
	ldr r0, _08152D6C @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _08152D7C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r3, r0
	beq _08152DBC
	ldr r6, _08152D70 @ =gUnk_03002EBC
	mov r5, r8
_08152D1E:
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [r6]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08152D3A
	ldr r0, [r2, #8]
	bl _call_via_r0
_08152D3A:
	ldr r0, [r6]
	str r0, [r5]
	ldr r4, _08152D74 @ =gUnk_030068D4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08152D56
	ldr r0, _08152D78 @ =gUnk_03002558
	ldrb r0, [r0]
	cmp r0, #1
	bne _08152D52
	bl m4aSoundMain
_08152D52:
	movs r0, #0
	strb r0, [r4]
_08152D56:
	ldr r1, [r5]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08152D1E
	b _08152DBC
	.align 2, 0
_08152D64: .4byte gUnk_030035D0
_08152D68: .4byte gUnk_03002560
_08152D6C: .4byte gUnk_03002440
_08152D70: .4byte gUnk_03002EBC
_08152D74: .4byte gUnk_030068D4
_08152D78: .4byte gUnk_03002558
_08152D7C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r3, r0
	beq _08152DBC
	ldr r7, _08152DD0 @ =gUnk_03002EBC
	mov r5, r8
	adds r6, r0, #0
_08152D8A:
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	adds r0, r0, r6
	str r0, [r7]
	ldrh r1, [r2, #0x12]
	movs r0, #5
	ands r0, r1
	cmp r0, #4
	bne _08152DA2
	ldr r0, [r2, #8]
	bl _call_via_r0
_08152DA2:
	ldr r0, [r7]
	str r0, [r5]
	ldr r4, _08152DD4 @ =gUnk_030068D4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08152DB6
	bl m4aSoundMain
	movs r0, #0
	strb r0, [r4]
_08152DB6:
	ldr r0, [r5]
	cmp r0, r6
	bne _08152D8A
_08152DBC:
	movs r1, #0
	mov r0, r8
	str r1, [r0]
	ldr r0, _08152DD0 @ =gUnk_03002EBC
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152DD0: .4byte gUnk_03002EBC
_08152DD4: .4byte gUnk_030068D4

	thumb_func_start sub_08152DD8
sub_08152DD8: @ 0x08152DD8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08152E38
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08152E24 @ =gUnk_03003A20
_08152DF2:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08152E28
	cmp r0, r1
	beq _08152E1A
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08152E28
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08152E1A:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08152E3A
	.align 2, 0
_08152E24: .4byte gUnk_03003A20
_08152E28:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08152E38
	adds r3, r1, #0
	b _08152DF2
_08152E38:
	movs r0, #0
_08152E3A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08152E40
sub_08152E40: @ 0x08152E40
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r1, _08152EB8 @ =gUnk_03003A20
	adds r3, r1, #0
	cmp r2, r1
	beq _08152E5C
	movs r4, #0xc0
	lsls r4, r4, #0x12
_08152E52:
	adds r1, r3, #0
	ldrh r0, [r1]
	adds r3, r0, r4
	cmp r2, r3
	bne _08152E52
_08152E5C:
	ldrh r4, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08152E6A
	rsbs r0, r4, #0
	strh r0, [r2, #2]
_08152E6A:
	movs r4, #2
	ldrsh r0, [r1, r4]
	adds r0, r1, r0
	cmp r0, r2
	bne _08152E8A
	ldrh r4, [r1, #2]
	movs r5, #2
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _08152E8A
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	adds r0, r4, r0
	strh r0, [r1, #2]
	adds r2, r1, #0
_08152E8A:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08152EB0
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08152EB0
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08152EB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08152EB8: .4byte gUnk_03003A20

	thumb_func_start sub_08152EBC
sub_08152EBC: @ 0x08152EBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08152F04 @ =gUnk_03003A20
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	beq _08152F7E
	mov r8, r1
	ldr r0, _08152F08 @ =0x040000D4
	mov ip, r0
_08152ED6:
	ldrh r4, [r2, #2]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08152F70
	ldrh r1, [r2]
	mov r3, r8
	adds r0, r1, r3
	ldrh r3, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08152F10
	adds r0, r4, r3
	strh r0, [r2, #2]
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	b _08152F76
	.align 2, 0
_08152F04: .4byte gUnk_03003A20
_08152F08: .4byte 0x040000D4
_08152F0C:
	strh r6, [r1, #6]
	b _08152F3C
_08152F10:
	ldr r0, _08152F68 @ =gUnk_03000004
	adds r5, r1, r0
	adds r6, r2, #4
	movs r0, #2
	ldrsh r7, [r2, r0]
	strh r3, [r2, #2]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2]
	movs r3, #0
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08152F6C @ =gUnk_030019F0
_08152F2E:
	ldrh r0, [r1, #6]
	cmp r0, r4
	beq _08152F0C
	adds r1, #0x14
	adds r3, #1
	cmp r3, #0x7f
	ble _08152F2E
_08152F3C:
	mov r0, ip
	str r5, [r0]
	str r6, [r0, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r0, #4
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	mov r3, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r5, #2
	ldrsh r1, [r2, r5]
	adds r1, r2, r1
	ldrh r0, [r2]
	strh r0, [r1]
	strh r7, [r1, #2]
	adds r2, r1, #0
	strh r2, [r2]
	b _08152F76
	.align 2, 0
_08152F68: .4byte gUnk_03000004
_08152F6C: .4byte gUnk_030019F0
_08152F70:
	ldrh r0, [r2]
	mov r1, r8
	adds r2, r0, r1
_08152F76:
	ldrh r0, [r2]
	add r0, r8
	cmp r0, r8
	bne _08152ED6
_08152F7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08152F88
sub_08152F88: @ 0x08152F88
	push {lr}
	ldr r3, _08152FA0 @ =gUnk_03002E7C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08152FA8
	ldr r1, _08152FA4 @ =gUnk_03002560
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08152FAA
	.align 2, 0
_08152FA0: .4byte gUnk_03002E7C
_08152FA4: .4byte gUnk_03002560
_08152FA8:
	movs r0, #0
_08152FAA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08152FB0
sub_08152FB0: @ 0x08152FB0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08153008 @ =gUnk_03002560
	ldr r2, [r0]
	ldrh r0, [r0]
	ldr r3, _0815300C @ =gUnk_03002E98
	cmp r0, #0
	beq _0815301C
_08152FC6:
	ldrh r0, [r2, #0x10]
	cmp r0, r4
	blo _08153010
	movs r4, #0
	ldr r5, _0815300C @ =gUnk_03002E98
_08152FD0:
	ldrh r0, [r2, #0x10]
	cmp r0, r6
	bhs _08153002
	ldrh r0, [r2, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08153008 @ =gUnk_03002560
	ldr r0, [r1]
	cmp r2, r0
	beq _08152FF4
	ldr r0, [r1, #4]
	cmp r2, r0
	beq _08152FF4
	adds r0, r2, #0
	bl sub_08152C3C
_08152FF4:
	ldr r0, _0815300C @ =gUnk_03002E98
	ldr r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, #0
	cmp r2, r1
	bne _08152FD0
_08153002:
	str r4, [r3]
	b _08153020
	.align 2, 0
_08153008: .4byte gUnk_03002560
_0815300C: .4byte gUnk_03002E98
_08153010:
	ldrh r0, [r2, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	cmp r0, #0
	bne _08152FC6
_0815301C:
	movs r0, #0
	str r0, [r3]
_08153020:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08153028
sub_08153028: @ 0x08153028
	push {r4, lr}
	movs r3, #0
	ldr r1, _08153034 @ =gUnk_03003A20
	movs r2, #0xc0
	lsls r2, r2, #0x12
	b _0815303A
	.align 2, 0
_08153034: .4byte gUnk_03003A20
_08153038:
	adds r1, r0, #0
_0815303A:
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08153044
	subs r3, r3, r0
_08153044:
	ldrh r0, [r1]
	adds r0, r0, r2
	cmp r0, r2
	bne _08153038
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start nullsub_143
nullsub_143: @ 0x08153054
	bx lr
	.align 2, 0

	thumb_func_start nullsub_144
nullsub_144: @ 0x08153058
	bx lr
	.align 2, 0

	thumb_func_start nullsub_145
nullsub_145: @ 0x0815305C
	bx lr
	.align 2, 0

	thumb_func_start sub_08153060
sub_08153060: @ 0x08153060
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r1, _08153100 @ =gUnk_03002E60
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldrh r0, [r6]
	strh r0, [r4, #0x14]
	ldrh r0, [r6, #2]
	strh r0, [r4, #0x16]
	ldr r5, [r6, #8]
	ldrh r7, [r6, #0xc]
	ldrh r1, [r4, #0x2e]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081530C8
	ldr r3, _08153104 @ =gUnk_03002EC0
	ldr r2, _08153108 @ =gUnk_030039A4
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r7, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x2e]
	movs r1, #8
	eors r0, r1
	strh r0, [r4, #0x2e]
_081530C8:
	ldr r7, [r6, #0x10]
	ldrh r5, [r6, #0x16]
	ldrh r0, [r6, #0x14]
	movs r1, #0x2a
	adds r1, r1, r4
	mov ip, r1
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0815313A
	ldr r0, _0815310C @ =gUnk_03002440
	mov r8, r0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _08153110
	mov r0, ip
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r0, r7, #0
	bl sub_08158334
	b _08153132
	.align 2, 0
_08153100: .4byte gUnk_03002E60
_08153104: .4byte gUnk_03002EC0
_08153108: .4byte gUnk_030039A4
_0815310C: .4byte gUnk_03002440
_08153110:
	ldr r2, _08153174 @ =0x040000D4
	str r7, [r2]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r1, _08153178 @ =gUnk_030037A0
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r5, r0
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	mov r0, r8
	str r3, [r0]
_08153132:
	ldrh r0, [r4, #0x2e]
	movs r1, #0x10
	eors r0, r1
	strh r0, [r4, #0x2e]
_0815313A:
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x2e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08153154
	ldr r0, [r6, #0x1c]
	str r0, [r4, #0x38]
	ldrh r0, [r6, #0x20]
	strh r0, [r4, #0x3c]
	ldrh r0, [r6, #0x22]
	strh r0, [r4, #0x3e]
_08153154:
	ldr r1, _0815317C @ =gUnk_03002400
	ldr r2, _08153180 @ =gUnk_03003790
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08153174: .4byte 0x040000D4
_08153178: .4byte gUnk_030037A0
_0815317C: .4byte gUnk_03002400
_08153180: .4byte gUnk_03003790

	thumb_func_start sub_08153184
sub_08153184: @ 0x08153184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _081531BC @ =gUnk_03003A04
	ldr r1, _081531C0 @ =gUnk_03003790
	ldrb r2, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r1, [r4]
	cmp r2, r1
	bne _081531A8
	bl _08153C96
_081531A8:
	ldr r0, _081531C4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081531C8
	movs r0, #0
	bl _08153C98
	.align 2, 0
_081531BC: .4byte gUnk_03003A04
_081531C0: .4byte gUnk_03003790
_081531C4: .4byte 0x04000004
_081531C8:
	ldr r0, _08153228 @ =0x04000006
	ldrh r0, [r0]
	ldr r2, _0815322C @ =gUnk_03002400
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _081531F4
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x34]
	cmp r1, r0
	bne _081531F4
	bl _08153C8A
_081531F4:
	ldrh r3, [r6, #0x14]
	str r3, [sp]
	movs r3, #3
	adds r4, r3, #0
	ands r4, r2
	ldr r7, [sp]
	cmp r4, #1
	bls _08153238
	ldr r0, _08153230 @ =gUnk_03003690
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08153238
	ldr r1, _08153234 @ =gUnk_03002EB0
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r3, r0, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #1
	b _08153256
	.align 2, 0
_08153228: .4byte 0x04000006
_0815322C: .4byte gUnk_03002400
_08153230: .4byte gUnk_03003690
_08153234: .4byte gUnk_03002EB0
_08153238:
	movs r1, #0x20
	str r1, [sp, #0xc]
	ldr r0, _0815332C @ =gUnk_03002EB0
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r3, r0, #0xe
	cmp r3, #1
	beq _0815324E
	cmp r3, #3
	bne _08153254
_0815324E:
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #4]
_08153254:
	movs r0, #2
_08153256:
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	mov sb, r0
	ands r0, r2
	cmp r0, #0
	beq _08153274
	b _08153654
_08153274:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0815327E
	b _08153544
_0815327E:
	ldrh r0, [r6, #0x24]
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r4, [r6, #0x22]
	mov r8, r4
	ldr r4, [sp, #8]
	mov r0, r8
	muls r0, r4, r0
	adds r4, r1, r0
	ldrh r5, [r6, #0x28]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _081532A4
	b _081533B0
_081532A4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08153334
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08153330 @ =0x0000FFFF
	cmp r5, r7
	bne _081532DA
	bl _08153C7A
_081532DA:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	adds r3, r7, #0
	mov sl, r3
_081532E6:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08153318
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_081532FA:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _081532FA
_08153318:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _081532E6
	bl _08153C7A
	.align 2, 0
_0815332C: .4byte gUnk_03002EB0
_08153330: .4byte 0x0000FFFF
_08153334:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _081533AC @ =0x0000FFFF
	cmp r5, r7
	bne _0815335E
	bl _08153C7A
_0815335E:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	adds r3, r7, #0
	mov sl, r3
_0815336A:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _0815339C
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_0815337E:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _0815337E
_0815339C:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _0815336A
	bl _08153C7A
	.align 2, 0
_081533AC: .4byte 0x0000FFFF
_081533B0:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08153434
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08153430 @ =0x0000FFFF
	cmp r5, r3
	bne _081533E0
	bl _08153C7A
_081533E0:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_081533EC:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _0815341E
	movs r0, #0x80
	lsls r0, r0, #4
	mov sb, r0
_08153400:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08153400
_0815341E:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _081533EC
	bl _08153C7A
	.align 2, 0
_08153430: .4byte 0x0000FFFF
_08153434:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _081534E0
	ldr r2, [sp, #8]
	cmp r2, #2
	bne _081534E0
	mov r3, sb
	mov r0, r8
	subs r3, r3, r0
	mov sb, r3
	cmp r3, #0
	ble _081534E0
	ldrh r0, [r6, #0x26]
	add r0, r8
	adds r3, r0, #0
	subs r3, #0x20
	cmp r3, #0
	ble _081534E0
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	lsls r0, r0, #1
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	lsls r0, r0, #1
	adds r2, r1, r0
	mov r1, sb
	lsls r1, r1, #1
	mov sb, r1
	lsls r3, r3, #1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _081534D8 @ =0x0000FFFF
	cmp r5, r7
	bne _08153482
	bl _08153C7A
_08153482:
	ldr r1, _081534DC @ =0x040000D4
	mov r0, sb
	asrs r0, r0, #1
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	asrs r3, r3, #1
	mov ip, r3
	orrs r3, r0
	mov ip, r3
_0815349C:
	str r2, [r1]
	str r4, [r1, #4]
	mov r7, r8
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	mov r3, sb
	adds r0, r2, r3
	str r0, [r1]
	ldr r7, [sp, #4]
	adds r0, r4, r7
	str r0, [r1, #4]
	mov r0, ip
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0xc]
	adds r4, r4, r3
	ldr r0, [sp]
	ldr r3, [sp, #8]
	adds r7, r0, #0
	muls r7, r3, r7
	mov sl, r7
	add r2, sl
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _081534D8 @ =0x0000FFFF
	cmp r5, r7
	bne _0815349C
	b _08153C7A
	.align 2, 0
_081534D8: .4byte 0x0000FFFF
_081534DC: .4byte 0x040000D4
_081534E0:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _0815353C @ =0x0000FFFF
	cmp r5, r3
	bne _08153502
	b _08153C7A
_08153502:
	ldr r1, _08153540 @ =0x040000D4
	movs r7, #0x80
	lsls r7, r7, #0x18
	mov r8, r7
	mov sb, r3
	ldr r0, [sp]
	ldr r7, [sp, #8]
	adds r3, r0, #0
	muls r3, r7, r3
_08153514:
	str r2, [r1]
	str r4, [r1, #4]
	ldrh r0, [r6, #0x26]
	ldr r7, [sp, #8]
	muls r0, r7, r0
	asrs r0, r0, #1
	mov r7, r8
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	adds r2, r2, r3
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	bne _08153514
	b _08153C7A
	.align 2, 0
_0815353C: .4byte 0x0000FFFF
_08153540: .4byte 0x040000D4
_08153544:
	ldrh r1, [r6, #0x1e]
	str r1, [sp, #0x10]
	ldrh r2, [r6, #0x20]
	str r2, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	blt _08153558
	b _08153C7A
_08153558:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x18]
	ldrh r1, [r6, #0x14]
	adds r7, r0, #0
	adds r0, r7, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	mov r2, sl
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _08153584
	adds r1, r0, #0
_08153584:
	ldr r4, [sp, #8]
	adds r3, r1, #0
	muls r3, r4, r3
	str r3, [sp, #0x20]
	movs r7, #0
	mov sb, r7
	add r1, sl
	str r1, [sp, #0x38]
	cmp sb, r8
	bge _08153644
_08153598:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x18]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r4, [sp, #0xc]
	mov r1, sb
	muls r1, r4, r1
	adds r0, r0, r1
	ldrh r7, [r6, #0x22]
	adds r0, r0, r7
	mov r1, sl
	muls r1, r3, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _081535FC
	mov r5, r8
_081535FC:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _0815363E
	ldr r2, _08153650 @ =0x040000D4
	ldr r1, [sp, #0x20]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r7, [sp]
	ldr r0, [sp, #8]
	adds r4, r7, #0
	muls r4, r0, r4
	mov ip, r4
_08153624:
	ldr r4, [sp, #0x40]
	str r4, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r7, [sp, #0xc]
	adds r3, r3, r7
	add r4, ip
	str r4, [sp, #0x40]
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _08153624
_0815363E:
	ldrh r0, [r6, #0x28]
	cmp sb, r0
	blt _08153598
_08153644:
	ldr r1, [sp, #0x38]
	mov sl, r1
	ldrh r2, [r6, #0x26]
	cmp sl, r2
	blt _08153558
	b _08153C7A
	.align 2, 0
_08153650: .4byte 0x040000D4
_08153654:
	movs r0, #0x40
	ands r0, r2
	ldrh r3, [r6, #0x30]
	ldr r1, _08153724 @ =gUnk_03003680
	mov sb, r1
	lsls r4, r4, #2
	mov r8, r4
	cmp r0, #0
	bne _081536A0
	adds r2, r7, #0
	lsls r0, r7, #3
	ldrh r4, [r6, #0x16]
	ldrh r5, [r6, #0x32]
	cmp r3, r0
	blt _08153684
_08153672:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x30]
	subs r0, r0, r1
	strh r0, [r6, #0x30]
	ldrh r1, [r6, #0x30]
	adds r2, r7, #0
	lsls r0, r7, #3
	cmp r1, r0
	bge _08153672
_08153684:
	adds r2, r4, #0
	lsls r0, r2, #3
	ldrh r3, [r6, #0x30]
	cmp r5, r0
	blt _081536A0
_0815368E:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r6, #0x32]
	ldrh r1, [r6, #0x32]
	adds r2, r4, #0
	lsls r0, r2, #3
	cmp r1, r0
	bge _0815368E
_081536A0:
	mov r0, r8
	add r0, sb
	movs r2, #7
	ands r3, r2
	strh r3, [r0]
	mov r1, sb
	adds r1, #2
	add r1, r8
	ldrh r0, [r6, #0x32]
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r6, #0x34]
	ldrh r4, [r6, #0x30]
	lsrs r2, r4, #3
	lsrs r0, r0, #3
	cmp r0, r2
	bne _081536D0
	ldrh r1, [r6, #0x36]
	ldrh r0, [r6, #0x32]
	lsrs r1, r1, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _081536D0
	b _08153C7A
_081536D0:
	ldrh r1, [r6, #0x2e]
	movs r0, #0x40
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _081536DE
	b _08153B60
_081536DE:
	ldrh r0, [r6, #0x1e]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r2, [r6, #0x20]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x24]
	ldr r4, [sp, #0xc]
	muls r0, r4, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldr r7, [sp, #8]
	muls r0, r7, r0
	adds r4, r1, r0
	ldrh r0, [r6, #0x26]
	ldr r1, [sp, #0x10]
	adds r2, r1, r0
	adds r1, r2, #1
	ldrh r7, [r6, #0x14]
	mov sb, r0
	cmp r1, r7
	ble _08153728
	subs r0, r7, #1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0815372C
	.align 2, 0
_08153724: .4byte gUnk_03003680
_08153728:
	movs r2, #0
	mov r8, r2
_0815372C:
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08153742
	b _08153848
_08153742:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _081537CC
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, sb
	subs r0, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	mov sl, r3
	ldr r7, _081537C8 @ =0x0000FFFF
	cmp r5, r7
	bne _08153778
	b _08153942
_08153778:
	ldr r1, [sp]
	ldr r3, [sp, #8]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	mov ip, r7
_08153784:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _081537B6
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_08153798:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08153798
_081537B6:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08153784
	b _08153942
	.align 2, 0
_081537C8: .4byte 0x0000FFFF
_081537CC:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, sb
	subs r0, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	mov sl, r3
	ldr r7, _08153844 @ =0x0000FFFF
	cmp r5, r7
	bne _081537F6
	b _08153942
_081537F6:
	ldr r1, [sp]
	ldr r3, [sp, #8]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	mov ip, r7
_08153802:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08153834
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_08153816:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08153816
_08153834:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08153802
	b _08153942
	.align 2, 0
_08153844: .4byte 0x0000FFFF
_08153848:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _081538D0
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r7, r8
	lsls r7, r7, #0x10
	mov sl, r7
	ldr r0, _081538CC @ =0x0000FFFF
	cmp r5, r0
	beq _08153942
	ldr r3, [sp]
	ldr r7, [sp, #8]
	adds r1, r3, #0
	muls r1, r7, r1
	mov r8, r1
	mov ip, r0
_08153888:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _081538BA
	movs r0, #0x80
	lsls r0, r0, #4
	mov sb, r0
_0815389C:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _0815389C
_081538BA:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08153888
	b _08153942
	.align 2, 0
_081538CC: .4byte 0x0000FFFF
_081538D0:
	ldr r2, [sp, #0x14]
	adds r0, r2, #0
	muls r0, r7, r0
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r7, [sp, #0x10]
	adds r1, r7, #0
	muls r1, r3, r1
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r1, _081539F8 @ =0x0000FFFF
	cmp r5, r1
	beq _08153942
	ldr r3, _081539FC @ =0x040000D4
	asrs r0, r0, #0x10
	subs r0, #1
	mov r8, r0
	mov ip, r1
	movs r7, #0x80
	lsls r7, r7, #0x18
	mov sb, r7
	ldr r1, [sp]
	ldr r7, [sp, #8]
	adds r0, r1, #0
	muls r0, r7, r0
	str r0, [sp, #0x40]
_08153914:
	str r2, [r3]
	str r4, [r3, #4]
	ldrh r0, [r6, #0x26]
	mov r1, r8
	subs r0, r0, r1
	ldr r7, [sp, #8]
	muls r0, r7, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r1, sb
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r7, [sp, #0xc]
	adds r4, r4, r7
	ldr r0, [sp, #0x40]
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08153914
_08153942:
	mov r1, sl
	asrs r7, r1, #0x10
	cmp r7, #0
	bne _0815394C
	b _08153C7A
_0815394C:
	ldrh r0, [r6, #0x24]
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldrh r2, [r6, #0x14]
	adds r0, r0, r2
	ldr r3, [sp, #0x10]
	subs r0, r0, r3
	ldr r4, [sp, #8]
	muls r0, r4, r0
	adds r4, r1, r0
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r1, [r6, #0x2e]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08153A74
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08153A00
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r2, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r7, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _081539F8 @ =0x0000FFFF
	cmp r5, r3
	bne _081539A8
	b _08153C7A
_081539A8:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_081539B4:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _081539E6
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_081539C8:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _081539C8
_081539E6:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _081539B4
	b _08153C7A
	.align 2, 0
_081539F8: .4byte 0x0000FFFF
_081539FC: .4byte 0x040000D4
_08153A00:
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	muls r0, r2, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r7, #1
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08153A70 @ =0x0000FFFF
	cmp r5, r3
	bne _08153A24
	b _08153C7A
_08153A24:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_08153A30:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08153A62
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_08153A44:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08153A44
_08153A62:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _08153A30
	b _08153C7A
	.align 2, 0
_08153A70: .4byte 0x0000FFFF
_08153A74:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08153AF8
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r2, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08153AF4 @ =0x0000FFFF
	cmp r5, r3
	bne _08153A9C
	b _08153C7A
_08153A9C:
	mov r0, sl
	str r0, [sp, #0x30]
	mov sl, r7
	ldr r3, [sp]
	ldr r7, [sp, #8]
	adds r1, r3, #0
	muls r1, r7, r1
	mov r8, r1
_08153AAC:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	cmp r3, sl
	bge _08153AE0
	movs r1, #0x80
	lsls r1, r1, #4
	mov sb, r1
	ldr r0, [sp, #0x30]
	asrs r0, r0, #0x10
	mov ip, r0
_08153AC4:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	blt _08153AC4
_08153AE0:
	adds r4, r5, #0
	mov r3, r8
	subs r2, r2, r3
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08153AF4 @ =0x0000FFFF
	cmp r5, r7
	bne _08153AAC
	b _08153C7A
	.align 2, 0
_08153AF4: .4byte 0x0000FFFF
_08153AF8:
	ldr r1, [sp, #0x14]
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08153B58 @ =0x0000FFFF
	cmp r5, r3
	bne _08153B16
	b _08153C7A
_08153B16:
	ldr r3, _08153B5C @ =0x040000D4
	ldr r1, [sp, #8]
	adds r0, r7, #0
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	ldr r1, [sp]
	ldr r7, [sp, #8]
	adds r0, r1, #0
	muls r0, r7, r0
	mov sb, r0
_08153B3A:
	str r2, [r3]
	str r4, [r3, #4]
	mov r0, r8
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r4, r4, r1
	add r2, sb
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08153B58 @ =0x0000FFFF
	cmp r5, r7
	bne _08153B3A
	b _08153C7A
	.align 2, 0
_08153B58: .4byte 0x0000FFFF
_08153B5C: .4byte 0x040000D4
_08153B60:
	lsrs r0, r4, #3
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r2, [r6, #0x20]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	bge _08153C7A
_08153B84:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x24]
	ldrh r1, [r6, #0x14]
	adds r7, r0, #0
	adds r0, r7, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x28]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	mov r2, sl
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _08153BB0
	adds r1, r0, #0
_08153BB0:
	ldr r4, [sp, #8]
	adds r3, r1, #0
	muls r3, r4, r3
	str r3, [sp, #0x2c]
	movs r7, #0
	mov sb, r7
	add r1, sl
	str r1, [sp, #0x34]
	cmp sb, r8
	bge _08153C70
_08153BC4:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x24]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r4, [sp, #0xc]
	mov r1, sb
	muls r1, r4, r1
	adds r0, r0, r1
	ldrh r7, [r6, #0x22]
	adds r0, r0, r7
	mov r1, sl
	muls r1, r3, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _08153C28
	mov r5, r8
_08153C28:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _08153C6A
	ldr r2, _08153CA8 @ =0x040000D4
	ldr r1, [sp, #0x2c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r7, [sp]
	ldr r0, [sp, #8]
	adds r4, r7, #0
	muls r4, r0, r4
	mov ip, r4
_08153C50:
	ldr r4, [sp, #0x40]
	str r4, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r7, [sp, #0xc]
	adds r3, r3, r7
	add r4, ip
	str r4, [sp, #0x40]
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _08153C50
_08153C6A:
	ldrh r0, [r6, #0x28]
	cmp sb, r0
	blt _08153BC4
_08153C70:
	ldr r1, [sp, #0x34]
	mov sl, r1
	ldrh r2, [r6, #0x26]
	cmp sl, r2
	blt _08153B84
_08153C7A:
	ldr r0, _08153CAC @ =0x04000006
	ldrh r0, [r0]
	ldrh r0, [r6, #0x30]
	strh r0, [r6, #0x34]
	ldrh r0, [r6, #0x32]
	strh r0, [r6, #0x36]
	ldr r3, _08153CB0 @ =gUnk_03003A04
	ldr r4, _08153CB4 @ =gUnk_03003790
_08153C8A:
	ldrb r0, [r3]
	ldrb r7, [r4]
	cmp r0, r7
	beq _08153C96
	bl _081531A8
_08153C96:
	movs r0, #1
_08153C98:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08153CA8: .4byte 0x040000D4
_08153CAC: .4byte 0x04000006
_08153CB0: .4byte gUnk_03003A04
_08153CB4: .4byte gUnk_03003790

	thumb_func_start sub_08153CB8
sub_08153CB8: @ 0x08153CB8
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #0x1c]
	ldr r1, _08153D14 @ =gUnk_03002E60
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _08153D6A
	mov r2, ip
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r0, #1
	movs r5, #0
	strb r0, [r2]
	movs r4, #0xff
	ldrb r1, [r3, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _08153D6A
	strb r5, [r2]
	subs r2, #1
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r3, #6]
	ands r0, r4
	cmp r1, r0
	bhi _08153CFA
	strb r5, [r2]
_08153CFA:
	ldrh r5, [r3, #4]
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08153D24
	ldrb r0, [r2]
	cmp r0, #0
	bne _08153D18
	ldr r4, [r3, #8]
	b _08153D32
	.align 2, 0
_08153D14: .4byte gUnk_03002E60
_08153D18:
	ldr r1, [r3, #8]
	ldr r0, [r3, #0xc]
	adds r1, r1, r0
	ldrb r0, [r2]
	subs r0, #1
	b _08153D2E
_08153D24:
	mov r4, ip
	ldr r1, [r4, #4]
	ldr r0, [r3, #0xc]
	adds r1, r1, r0
	ldrb r0, [r2]
_08153D2E:
	muls r0, r5, r0
	adds r4, r1, r0
_08153D32:
	ldr r3, _08153D70 @ =gUnk_03002EC0
	ldr r2, _08153D74 @ =gUnk_030039A4
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r4, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	mov r4, ip
	ldr r1, [r4, #4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r5, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
_08153D6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08153D70: .4byte gUnk_03002EC0
_08153D74: .4byte gUnk_030039A4

	thumb_func_start sub_08153D78
sub_08153D78: @ 0x08153D78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08153D8C
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08153DA0
_08153D8C:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08153DB0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08153DA0:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08153DB4
	movs r0, #0
	b _08153E5C
	.align 2, 0
_08153DB0: .4byte 0xFFFFBFFF
_08153DB4:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08153DCC
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08153E5A
_08153DC8:
	adds r0, r1, #0
	b _08153E5C
_08153DCC:
	ldr r0, _08153E64 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _08153E36
	ldr r6, _08153E68 @ =gUnk_08D5FDE4
_08153DF0:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _08153E2A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08153DC8
	ldr r0, _08153E64 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_08153E2A:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _08153DF0
_08153E36:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_08153E5A:
	movs r0, #1
_08153E5C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08153E64: .4byte gUnk_03003674
_08153E68: .4byte gUnk_08D5FDE4

	thumb_func_start sub_08153E6C
sub_08153E6C: @ 0x08153E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r3, #0
	mov sb, r3
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x18]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	ldr r0, [r5, #8]
	ldr r1, _08153EF0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _08153EF4 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _08153F70
_08153EAE:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _08153F24
	ldr r0, _08153EF8 @ =gUnk_08D5FDE4
	mov r8, r0
_08153EBE:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08153EC8
	mov sb, r3
_08153EC8:
	mvns r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r1, #1
	beq _08153F18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08153EFC
	adds r0, r1, #0
	b _08153F72
	.align 2, 0
_08153EF0: .4byte 0xFFFFBFFF
_08153EF4: .4byte gUnk_03003674
_08153EF8: .4byte gUnk_08D5FDE4
_08153EFC:
	ldr r0, _08153F50 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r5, #0xe]
	adds r7, r1, #0
_08153F18:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _08153EBE
_08153F24:
	ldr r0, [r4]
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r4]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r5, #0x16]
	mov r0, sb
	cmp r0, #0
	beq _08153F54
	cmp r6, #0
	ble _08153F54
	adds r0, r6, #0
	mov r1, sb
	str r3, [sp]
	bl Mod
	adds r6, r0, #0
	ldr r3, [sp]
	b _08153F58
	.align 2, 0
_08153F50: .4byte gUnk_03003674
_08153F54:
	ldr r0, [r4]
	adds r3, r3, r0
_08153F58:
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	adds r0, #2
	strh r0, [r5, #0xe]
	cmp r6, #0
	bge _08153EAE
_08153F70:
	movs r0, #1
_08153F72:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08153F80
sub_08153F80: @ 0x08153F80
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08153FFA
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _08153FB4
	ldr r0, _08153FB0 @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _08153FC2
	.align 2, 0
_08153FB0: .4byte gUnk_03003674
_08153FB4:
	ldr r0, _08154004 @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_08153FC2:
	lsrs r6, r0, #0x10
	ldr r3, _08154008 @ =gUnk_03002EC0
	ldr r2, _0815400C @ =gUnk_030039A4
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r6, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
_08153FFA:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08154004: .4byte gUnk_03003674
_08154008: .4byte gUnk_03002EC0
_0815400C: .4byte gUnk_030039A4

	thumb_func_start sub_08154010
sub_08154010: @ 0x08154010
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08154090
	ldr r1, [r5, #4]
	ldr r6, _08154058 @ =gUnk_03002440
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _08154060
	ldr r0, _0815405C @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r1, [r3, #0x1f]
	lsls r1, r1, #4
	ldrb r2, [r5, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #8]
	bl sub_08158334
	b _08154090
	.align 2, 0
_08154058: .4byte gUnk_03002440
_0815405C: .4byte gUnk_03003674
_08154060:
	ldr r2, _08154098 @ =0x040000D4
	ldr r0, _0815409C @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _081540A0 @ =gUnk_030037A0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	str r4, [r6]
_08154090:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08154098: .4byte 0x040000D4
_0815409C: .4byte gUnk_03003674
_081540A0: .4byte gUnk_030037A0

	thumb_func_start sub_081540A4
sub_081540A4: @ 0x081540A4
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _081540E0 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _081540E4 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _081540E8
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0815413E
	.align 2, 0
_081540E0: .4byte 0x040000D4
_081540E4: .4byte 0x84000002
_081540E8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08154116
	adds r2, r4, r3
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x27
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	eors r0, r1
	strb r0, [r2]
_08154116:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0815413E
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_0815413E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08154148
sub_08154148: @ 0x08154148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _08154194 @ =gUnk_03006030
	ldr r1, _08154198 @ =gUnk_030068B0
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r6, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [r6, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08154174
	b _08154352
_08154174:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _081541A0
	ldr r0, _0815419C @ =gUnk_03003674
	ldr r0, [r0]
	ldrh r1, [r6, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _081541B4
	.align 2, 0
_08154194: .4byte gUnk_03006030
_08154198: .4byte gUnk_030068B0
_0815419C: .4byte gUnk_03003674
_081541A0:
	ldr r0, _08154260 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_081541B4:
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r7, r0, #0xf
	cmp r7, #1
	bls _081541CE
	ldr r0, _08154264 @ =gUnk_03003690
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08154200
_081541CE:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #0x10
	bl Mod
	ldr r4, _08154268 @ =gUnk_03003680
	lsls r5, r7, #2
	adds r1, r5, r4
	strh r0, [r1]
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #8
	bl Mod
	adds r4, #2
	adds r5, r5, r4
	strh r0, [r5]
_08154200:
	ldr r0, _0815426C @ =gUnk_03002EB0
	lsls r3, r7, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	ldr r2, _08154270 @ =0x0000FFFC
	ands r2, r0
	strh r2, [r3]
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #0xc
	orrs r0, r2
	strh r0, [r3]
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08154226
	b _08154352
_08154226:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08154234
	b _08154352
_08154234:
	ldr r0, _08154274 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _08154278 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _08154260 @ =gUnk_03003674
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _0815427C
	movs r0, #0x20
	mov ip, r0
	ldr r2, [r2, #0x10]
	b _08154282
	.align 2, 0
_08154260: .4byte gUnk_03003674
_08154264: .4byte gUnk_03003690
_08154268: .4byte gUnk_03003680
_0815426C: .4byte gUnk_03002EB0
_08154270: .4byte 0x0000FFFC
_08154274: .4byte 0xFBFFFFFF
_08154278: .4byte 0x00FFFFFF
_0815427C:
	movs r1, #0x40
	mov ip, r1
	ldr r2, [r2, #0x14]
_08154282:
	mov r8, r2
	mov r3, ip
	mov r2, sl
	adds r2, #4
	mov sl, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r1, r8
	adds r2, r1, r0
	ldr r6, [r6]
	movs r7, #1
	ldr r0, [sp]
	cmp r7, r0
	bhs _08154318
	ldr r1, _081542CC @ =gUnk_03002EC0
	mov sb, r1
	ldr r5, _081542D0 @ =gUnk_030039A4
_081542A6:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _081542D4
	mov r1, ip
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0815430C
	.align 2, 0
_081542CC: .4byte gUnk_03002EC0
_081542D0: .4byte gUnk_030039A4
_081542D4:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, ip
	adds r2, r4, #0
_0815430C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _081542A6
_08154318:
	ldr r0, _08154364 @ =gUnk_030039A4
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08154368 @ =gUnk_03002EC0
	adds r0, r0, r1
	str r2, [r0]
	ldr r2, _08154364 @ =gUnk_030039A4
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08154368 @ =gUnk_03002EC0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08154368 @ =gUnk_03002EC0
	adds r0, r0, r1
	strh r3, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
_08154352:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08154364: .4byte gUnk_030039A4
_08154368: .4byte gUnk_03002EC0

	thumb_func_start sub_0815436C
sub_0815436C: @ 0x0815436C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r0, _0815438C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08154390
	movs r0, #0
	b _0815488E
	.align 2, 0
_0815438C: .4byte 0x04000004
_08154390:
	ldr r0, _081543E0 @ =gUnk_030068B0
	ldrb r1, [r0]
	cmp r1, #0
	bne _0815439A
	b _0815488C
_0815439A:
	movs r6, #0
	cmp r6, r1
	blo _081543A2
	b _08154886
_081543A2:
	lsls r0, r6, #2
	ldr r1, _081543E4 @ =gUnk_03006030
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r6, #1
	str r2, [sp, #0x3c]
	cmp r3, r0
	bne _081543BC
	b _08154876
_081543BC:
	lsrs r0, r3, #0x1c
	cmp r0, #0
	bne _081543EC
	ldr r4, _081543E8 @ =gUnk_03003674
	ldr r0, [r4]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	adds r7, r4, #0
	b _08154402
	.align 2, 0
_081543E0: .4byte gUnk_030068B0
_081543E4: .4byte gUnk_03006030
_081543E8: .4byte gUnk_03003674
_081543EC:
	ldr r7, _08154578 @ =gUnk_03003674
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r3, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_08154402:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r4, r0, #0xf
	lsls r0, r4, #1
	ldr r5, _0815457C @ =gUnk_03002EB0
	adds r0, r0, r5
	ldrh r3, [r0]
	movs r0, #0xc
	ands r0, r3
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0815443C
	movs r0, #6
	str r0, [sp, #0x28]
_0815443C:
	cmp r4, #1
	bhi _08154442
	b _081545FE
_08154442:
	ldr r0, _08154580 @ =gUnk_03003690
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08154450
	b _081545FE
_08154450:
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r1, sl
	ldrh r0, [r1]
	ldr r1, _08154584 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r3, r4
	blo _0815448E
	b _08154876
_0815448E:
	mov sb, sp
	ldr r5, [sp, #0x10]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
_08154498:
	ldr r1, _08154588 @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _0815458C @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrh r2, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r2, _08154590 @ =gUnk_08D6084C
	adds r0, r1, r2
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r4, _08154594 @ =gUnk_08D6084D
	adds r1, r1, r4
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	mov r4, ip
	ldr r5, [sp, #0xc]
	movs r6, #0x12
	ldrsh r1, [r5, r6]
	mov r7, sl
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	subs r5, r1, r0
	ldr r6, [sp, #0xc]
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	mov r2, sl
	movs r6, #8
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	movs r0, #0xff
	ands r0, r3
	adds r0, r5, r0
	asrs r0, r0, #3
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r7, r2, r0
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r5, [sp, #0x14]
	subs r1, r1, r5
	ldr r6, [sp, #0x28]
	lsrs r1, r6
	mov r0, sb
	ldrh r2, [r0, #4]
	ldr r0, _08154598 @ =0x000003FF
	ands r0, r2
	adds r5, r1, r0
	movs r1, #0xff
	ands r5, r1
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r4, #0
	beq _081545EA
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_08154548:
	mov r4, sb
	ldrh r0, [r4, #2]
	ldr r1, _0815459C @ =0x000001FF
	ands r1, r0
	add r1, r8
	asrs r1, r1, #3
	adds r2, r7, r1
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _081545C2
	movs r4, #1
_0815456A:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	bne _081545A0
	str r5, [sp, #0x24]
	b _081545AE
	.align 2, 0
_08154578: .4byte gUnk_03003674
_0815457C: .4byte gUnk_03002EB0
_08154580: .4byte gUnk_03003690
_08154584: .4byte 0x00003FFF
_08154588: .4byte 0x040000D4
_0815458C: .4byte 0x80000003
_08154590: .4byte gUnk_08D6084C
_08154594: .4byte gUnk_08D6084D
_08154598: .4byte 0x000003FF
_0815459C: .4byte 0x000001FF
_081545A0:
	lsls r0, r5, #8
	ldr r1, [sp, #0x24]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	strh r0, [r2]
_081545AE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #1
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _0815456A
_081545C2:
	adds r0, r2, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081545DA
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r2]
_081545DA:
	ldr r4, [sp, #0x34]
	adds r7, r7, r4
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08154548
_081545EA:
	ldr r5, [sp, #0x40]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r6, sl
	ldrh r6, [r6, #2]
	cmp r0, r6
	bhs _081545FC
	b _08154498
_081545FC:
	b _08154876
_081545FE:
	movs r0, #0x20
	str r0, [sp, #0x10]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08154618
	movs r1, #0x40
	str r1, [sp, #0x10]
_08154618:
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r2, sl
	ldrh r0, [r2]
	ldr r1, _081546D8 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	ldrh r5, [r2, #2]
	cmp r4, r5
	blo _08154648
	b _08154876
_08154648:
	mov sb, sp
_0815464A:
	ldr r1, _081546DC @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _081546E0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	ldrh r3, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r4, _081546E4 @ =gUnk_08D6084C
	adds r0, r1, r4
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r5, _081546E8 @ =gUnk_08D6084D
	adds r1, r1, r5
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	ldr r4, _081546EC @ =0x000001FF
	ands r4, r3
	movs r6, #0xff
	ands r6, r2
	ldr r7, [sp, #0xc]
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0xc
	mov r1, sb
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2, #4]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xb
	movs r5, #1
	ands r1, r5
	mov r7, sl
	ldrh r0, [r7]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _0815470E
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	eors r0, r3
	strh r0, [r2, #2]
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _081546F0
	ldr r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	b _08154700
	.align 2, 0
_081546D8: .4byte 0x00003FFF
_081546DC: .4byte 0x040000D4
_081546E0: .4byte 0x80000003
_081546E4: .4byte gUnk_08D6084C
_081546E8: .4byte gUnk_08D6084D
_081546EC: .4byte 0x000001FF
_081546F0:
	ldr r7, [sp, #0xc]
	movs r1, #0x12
	ldrsh r0, [r7, r1]
	mov r2, sl
	ldrh r1, [r2, #6]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_08154700:
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #8
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	b _0815471C
_0815470E:
	ldr r5, [sp, #0xc]
	movs r7, #0x12
	ldrsh r1, [r5, r7]
	mov r2, sl
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
_0815471C:
	ldr r7, [sp, #0xc]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xa
	mov r2, sl
	ldrh r0, [r2]
	lsrs r0, r0, #0xe
	eors r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08154778
	mov r7, sb
	ldrh r0, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r7, #2]
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0815475A
	ldr r7, [sp, #0xc]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #8
	ldrsh r1, [r3, r2]
	b _0815476A
_0815475A:
	ldr r3, [sp, #0xc]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	mov r2, sl
	ldrh r1, [r2, #4]
	movs r3, #8
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_0815476A:
	adds r0, r0, r1
	subs r0, #8
	mov r8, r0
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
	b _08154788
_08154778:
	ldr r7, [sp, #0xc]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov r8, r1
_08154788:
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	adds r0, #8
	ands r5, r0
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	movs r2, #2
	str r2, [sp, #0x2c]
	cmp r0, #0
	beq _081547AC
	movs r3, #0xfe
	str r3, [sp, #0x2c]
_081547AC:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _081547BE
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x19
	rsbs r0, r0, #0
	b _081547C2
_081547BE:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x19
_081547C2:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	asrs r0, r0, #2
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	ldr r3, [sp, #0x18]
	adds r7, r3, r0
	ldr r5, [sp, #0xc]
	ldr r1, [r5]
	ldr r6, [sp, #0x14]
	subs r1, r1, r6
	ldr r0, [sp, #0x28]
	lsrs r1, r0
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _081548A0 @ =0x0000F3FF
	ands r0, r2
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r2
	lsrs r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r1, #0
	beq _08154864
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	asrs r0, r0, #2
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_08154822:
	ldr r3, [sp, #0x38]
	adds r2, r7, r3
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _08154856
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_0815483E:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r1, [r2]
	adds r2, r2, r4
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _0815483E
_08154856:
	add r7, r8
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08154822
_08154864:
	ldr r2, [sp, #0x40]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _08154876
	b _0815464A
_08154876:
	ldr r4, [sp, #0x3c]
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _081548A4 @ =gUnk_030068B0
	ldrb r5, [r5]
	cmp r6, r5
	bhs _08154886
	b _081543A2
_08154886:
	movs r0, #0
	ldr r6, _081548A4 @ =gUnk_030068B0
	strb r0, [r6]
_0815488C:
	movs r0, #1
_0815488E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_081548A0: .4byte 0x0000F3FF
_081548A4: .4byte gUnk_030068B0

	thumb_func_start sub_081548A8
sub_081548A8: @ 0x081548A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #9
	mov r3, sb
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	mov r1, sb
	bl Div
	ldr r1, _081549D0 @ =gUnk_08D5FE14
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	str r1, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3]
	adds r0, r7, #0
	mov r1, sb
	bl Div
	lsls r4, r4, #1
	add r4, sl
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x38]
	strh r0, [r1, #2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x38]
	strh r0, [r2, #6]
	lsls r6, r6, #0x10
	rsbs r6, r6, #0
	mov r3, r8
	lsls r3, r3, #0x10
	rsbs r3, r3, #0
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	asrs r6, r6, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	asrs r2, r2, #0x10
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r3, r3, #8
	adds r1, r1, r3
	ldr r2, [sp, #0x38]
	str r1, [r2, #8]
	movs r3, #4
	ldrsh r0, [r2, r3]
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0xc]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081549D0: .4byte gUnk_08D5FE14

	thumb_func_start sub_081549D4
sub_081549D4: @ 0x081549D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, [r5, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _08154A08
	ldr r0, _08154A04 @ =gUnk_03003674
	ldr r0, [r0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	b _08154A1A
	.align 2, 0
_08154A04: .4byte gUnk_03003674
_08154A08:
	ldr r0, _08154B0C @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
_08154A1A:
	ldrh r0, [r1, #8]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0xa]
	strh r0, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #9
	movs r0, #2
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldr r1, _08154B10 @ =gUnk_08D5FE14
	mov r8, r1
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #2
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #2]
	movs r0, #4
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #4]
	movs r3, #4
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #6]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #8]
	movs r3, #4
	ldrsh r1, [r6, r3]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #6
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #0xc]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08154B0C: .4byte gUnk_03003674
_08154B10: .4byte gUnk_08D5FE14

	thumb_func_start sub_08154B14
sub_08154B14: @ 0x08154B14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov r8, r0
	mov r1, sp
	str r1, [sp, #0x10]
_08154B28:
	mov r2, r8
	lsls r0, r2, #2
	ldr r1, _08154BE0 @ =gUnk_03002E80
	adds r1, #1
	adds r4, r0, r1
	ldr r6, _08154BE4 @ =gUnk_03002E83
	adds r6, r0, r6
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r2, [r6]
	mov ip, r2
	mov sl, r0
	cmp r1, ip
	bne _08154B5A
	ldr r0, _08154BE0 @ =gUnk_03002E80
	add r0, sl
	ldr r1, _08154BE8 @ =gUnk_03002E82
	add r1, sl
	ldrb r0, [r0]
	mov r7, r8
	adds r7, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _08154B5A
	b _08154D46
_08154B5A:
	ldr r2, _08154BEC @ =gUnk_03002EB0
	mov r6, r8
	lsls r3, r6, #1
	adds r0, r3, r2
	ldrh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r6
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r4, [r4]
	ldr r0, _08154BE0 @ =gUnk_03002E80
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r0, r8
	cmp r0, #1
	bls _08154C6C
	ldr r0, _08154BF0 @ =gUnk_03003690
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08154C6C
	ldr r1, [sp, #8]
	adds r5, r5, r1
	lsrs r2, r6, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r2
	lsrs r3, r0, #0x10
	mov r2, ip
	cmp r2, #0xff
	bne _08154BFC
	ldr r0, _08154BF4 @ =gUnk_030060A0
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	ldr r2, _08154BF8 @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r6, [sp, #0xc]
	ldrb r0, [r6]
	subs r0, r0, r4
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r2, sp, #4
	mov sb, r2
	b _08154CC4
	.align 2, 0
_08154BE0: .4byte gUnk_03002E80
_08154BE4: .4byte gUnk_03002E83
_08154BE8: .4byte gUnk_03002E82
_08154BEC: .4byte gUnk_03002EB0
_08154BF0: .4byte gUnk_03003690
_08154BF4: .4byte gUnk_030060A0
_08154BF8: .4byte 0x040000D4
_08154BFC:
	add r6, sp, #4
	mov sb, r6
	mov r7, r8
	adds r7, #1
	cmp r4, ip
	bls _08154C0A
	b _08154D30
_08154C0A:
	ldr r0, _08154C60 @ =gUnk_030060A0
	add r0, r8
	mov ip, r0
	ldr r2, _08154C64 @ =0x040000D4
	ldr r1, _08154C68 @ =gUnk_03002E82
	add r1, sl
	mov r8, r1
	ldr r6, [sp, #0xc]
	str r6, [sp, #0x14]
_08154C1C:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, r8
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r1, r6
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _08154C1C
	b _08154D30
	.align 2, 0
_08154C60: .4byte gUnk_030060A0
_08154C64: .4byte 0x040000D4
_08154C68: .4byte gUnk_03002E82
_08154C6C:
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r5, r5, r0
	movs r3, #0x20
	adds r0, r2, r7
	ldrh r0, [r0]
	lsrs r2, r0, #0xe
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08154C86
	movs r3, #0x40
_08154C86:
	ldr r1, _08154CCC @ =gUnk_03002E82
	add r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08154CDC
	ldr r0, _08154CD0 @ =gUnk_030060A0
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r3, #1
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2]
	mov r6, sp
	ldr r1, _08154CD4 @ =0x040000D4
	str r6, [r1]
	str r0, [r1, #4]
	ldr r0, _08154CD8 @ =gUnk_03002E83
	add r0, sl
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r3, r0
	lsls r0, r0, #1
	asrs r0, r0, #1
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r6, sp, #4
	mov sb, r6
_08154CC4:
	mov r7, r8
	adds r7, #1
	b _08154D30
	.align 2, 0
_08154CCC: .4byte gUnk_03002E82
_08154CD0: .4byte gUnk_030060A0
_08154CD4: .4byte 0x040000D4
_08154CD8: .4byte gUnk_03002E83
_08154CDC:
	ldr r0, _08154D64 @ =gUnk_03002E83
	add r0, sl
	add r2, sp, #4
	mov sb, r2
	mov r7, r8
	adds r7, #1
	ldrb r6, [r0]
	cmp r4, r6
	bhi _08154D30
	ldr r2, _08154D68 @ =gUnk_030060A0
	add r8, r2
	ldr r2, _08154D6C @ =0x040000D4
	mov ip, r1
	str r0, [sp, #0x14]
	lsls r3, r3, #1
_08154CFA:
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, ip
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _08154CFA
_08154D30:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sb
	ldr r2, _08154D6C @ =0x040000D4
	str r1, [r2]
	ldr r0, _08154D70 @ =gUnk_03002E80
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _08154D74 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08154D46:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08154D52
	b _08154B28
_08154D52:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08154D64: .4byte gUnk_03002E83
_08154D68: .4byte gUnk_030060A0
_08154D6C: .4byte 0x040000D4
_08154D70: .4byte gUnk_03002E80
_08154D74: .4byte 0x85000001

	thumb_func_start sub_08154D78
sub_08154D78: @ 0x08154D78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r5, #0
	ldr r1, _08154E14 @ =gUnk_03002EB0
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0xc
	ands r0, r4
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	lsrs r3, r3, #0xa
	adds r0, r0, r3
	lsrs r2, r2, #0xf
	adds r6, r0, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08154E02
_08154DCA:
	lsls r4, r5, #5
	ldr r0, [sp]
	adds r4, r0, r4
	adds r0, r7, r5
	ldrb r0, [r0]
	lsls r0, r0, #5
	add r0, sl
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	mov r2, r8
	subs r4, r4, r2
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	lsls r1, r5, #1
	adds r1, r6, r1
	mov r2, sb
	lsls r0, r2, #0xc
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08154DCA
_08154E02:
	lsls r0, r5, #5
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08154E14: .4byte gUnk_03002EB0

	thumb_func_start sub_08154E18
sub_08154E18: @ 0x08154E18
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08154E24
sub_08154E24: @ 0x08154E24
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08154E34
sub_08154E34: @ 0x08154E34
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08154E48
sub_08154E48: @ 0x08154E48
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

	thumb_func_start sub_08154E64
sub_08154E64: @ 0x08154E64
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08154E70
sub_08154E70: @ 0x08154E70
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

	thumb_func_start sub_08154E88
sub_08154E88: @ 0x08154E88
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08154E90
sub_08154E90: @ 0x08154E90
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08154E9C
sub_08154E9C: @ 0x08154E9C
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08154EA8
sub_08154EA8: @ 0x08154EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r1, [r6, #0x26]
	cmp r0, r1
	bge _08154FD2
_08154EE2:
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	adds r4, r2, r0
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x14]
	ldrh r1, [r6, #0x14]
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x18]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _08154F10
	adds r1, r0, #0
_08154F10:
	mov r0, sl
	muls r0, r1, r0
	str r0, [sp, #0x1c]
	movs r2, #0
	mov sb, r2
	ldr r0, [sp, #0x10]
	adds r1, r0, r1
	str r1, [sp, #0x20]
	cmp sb, r8
	bge _08154FC8
_08154F24:
	ldr r4, [sp, #4]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x14]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r6, #0x14]
	muls r0, r1, r0
	adds r2, r0, #0
	muls r2, r3, r2
	adds r0, r4, #0
	muls r0, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, sl
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r7, r0, r1
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r2, [sp, #8]
	mov r1, sb
	muls r1, r2, r1
	adds r0, r0, r1
	ldrh r1, [r6, #0x22]
	adds r0, r0, r1
	ldr r2, [sp, #0x10]
	mov r1, sl
	muls r1, r2, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _08154F88
	mov r5, r8
_08154F88:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _08154FC2
	ldr r2, _08154FE4 @ =0x040000D4
	ldr r1, [sp, #0x1c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, [sp, #0xc]
	mov r4, sl
	muls r4, r0, r4
_08154FAC:
	str r7, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [sp, #8]
	adds r3, r3, r0
	adds r7, r7, r4
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _08154FAC
_08154FC2:
	ldrh r1, [r6, #0x28]
	cmp sb, r1
	blt _08154F24
_08154FC8:
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x10]
	ldrh r0, [r6, #0x26]
	cmp r2, r0
	blt _08154EE2
_08154FD2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08154FE4: .4byte 0x040000D4

	thumb_func_start sub_08154FE8
sub_08154FE8: @ 0x08154FE8
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08155018 @ =gUnk_08D60814
	mov r0, sp
	movs r2, #8
	bl memcpy
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _0815501C
	movs r0, #1
	rsbs r0, r0, #0
	b _0815509E
	.align 2, 0
_08155018: .4byte gUnk_08D60814
_0815501C:
	cmp r1, #0
	bgt _08155028
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08155028:
	cmp r2, #0
	bgt _08155038
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08155038:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08155058
	lsls r0, r1, #0x17
	lsrs r5, r0, #0x10
	cmp r2, #0
	bne _08155050
	adds r2, r5, #0
	b _08155076
_08155050:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _0815506E
_08155058:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	lsrs r4, r0, #0x10
	cmp r1, #0
	bne _0815506A
	adds r2, r4, #0
	b _08155076
_0815506A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_0815506E:
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08155076:
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08155090
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08155090:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_0815509E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_081550A8
sub_081550A8: @ 0x081550A8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #0
	movs r5, #0xf0
	lsls r5, r5, #8
_081550B6:
	adds r0, r3, #0
	ands r0, r5
	lsrs r0, r0, #0xc
	cmp r0, #9
	bls _081550C6
	adds r1, r4, r2
	adds r0, #0x57
	b _081550CA
_081550C6:
	adds r1, r4, r2
	adds r0, #0x30
_081550CA:
	strb r0, [r1]
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _081550B6
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081550E8
sub_081550E8: @ 0x081550E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r5, #0
_081550F2:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #2
	lsls r1, r0
	orrs r6, r1
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _081550F2
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08155128
sub_08155128: @ 0x08155128
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _0815513C
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08155150
_0815513C:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08155160 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08155150:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08155164
	movs r0, #0
	b _0815520C
	.align 2, 0
_08155160: .4byte 0xFFFFBFFF
_08155164:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0815517C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _0815520A
_08155178:
	adds r0, r1, #0
	b _0815520C
_0815517C:
	ldr r0, _08155214 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _081551E6
	ldr r6, _08155218 @ =gUnk_08D6081C
_081551A0:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _081551DA
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08155178
	ldr r0, _08155214 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_081551DA:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _081551A0
_081551E6:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_0815520A:
	movs r0, #1
_0815520C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08155214: .4byte gUnk_03003674
_08155218: .4byte gUnk_08D6081C

	thumb_func_start sub_0815521C
sub_0815521C: @ 0x0815521C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	mov r8, r0
	ldr r0, _08155270 @ =gUnk_030039A4
	ldrb r0, [r0]
	mov sb, r0
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x18]
	mov r1, r8
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	ldr r0, [r5, #8]
	ldr r1, _08155274 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _08155278 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _08155348
	b _081552F8
	.align 2, 0
_08155270: .4byte gUnk_030039A4
_08155274: .4byte 0xFFFFBFFF
_08155278: .4byte gUnk_03003674
_0815527C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08155288
	ldr r0, [sp]
	mov sl, r0
_08155288:
	ldr r0, _081552D8 @ =gUnk_08D6081C
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, _081552DC @ =gUnk_030039A4
	ldrb r1, [r3]
	cmp sb, r1
	beq _081552AC
	mov r0, sb
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_081552AC:
	cmp r2, #1
	beq _081552F8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081552E4
	ldr r0, _081552E0 @ =gUnk_03003674
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r5, #0xe]
	adds r7, r1, #0
	b _081552F8
	.align 2, 0
_081552D8: .4byte gUnk_08D6081C
_081552DC: .4byte gUnk_030039A4
_081552E0: .4byte gUnk_03003674
_081552E4:
	mov r0, r8
	cmp r0, #0
	beq _081552F4
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_081552F4:
	adds r0, r2, #0
	b _0815535C
_081552F8:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _0815527C
	ldr r0, [r4]
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r4]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r5, #0x16]
	mov r1, sl
	cmp r1, #0
	beq _08155328
	cmp r6, #0
	ble _08155328
	adds r0, r6, #0
	bl Mod
	adds r6, r0, #0
	b _08155330
_08155328:
	ldr r0, [r4]
	ldr r1, [sp]
	adds r1, r1, r0
	str r1, [sp]
_08155330:
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	adds r0, #2
	strh r0, [r5, #0xe]
	cmp r6, #0
	bge _081552F8
_08155348:
	mov r0, r8
	cmp r0, #0
	beq _0815535A
	ldr r0, _0815536C @ =gUnk_030039A4
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_0815535A:
	movs r0, #1
_0815535C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0815536C: .4byte gUnk_030039A4

	thumb_func_start sub_08155370
sub_08155370: @ 0x08155370
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _081553EA
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _081553A4
	ldr r0, _081553A0 @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _081553B2
	.align 2, 0
_081553A0: .4byte gUnk_03003674
_081553A4:
	ldr r0, _081553F4 @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_081553B2:
	lsrs r6, r0, #0x10
	ldr r3, _081553F8 @ =gUnk_03002EC0
	ldr r2, _081553FC @ =gUnk_030039A4
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r6, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
_081553EA:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081553F4: .4byte gUnk_03003674
_081553F8: .4byte gUnk_03002EC0
_081553FC: .4byte gUnk_030039A4

	thumb_func_start sub_08155400
sub_08155400: @ 0x08155400
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08155480
	ldr r1, [r5, #4]
	ldr r6, _08155448 @ =gUnk_03002440
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08155450
	ldr r0, _0815544C @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r1, [r3, #0x1f]
	lsls r1, r1, #4
	ldrb r2, [r5, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #8]
	bl sub_0815828C
	b _08155480
	.align 2, 0
_08155448: .4byte gUnk_03002440
_0815544C: .4byte gUnk_03003674
_08155450:
	ldr r2, _08155488 @ =0x040000D4
	ldr r0, _0815548C @ =gUnk_03003674
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08155490 @ =gUnk_03002C60
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r4, r0
	str r4, [r6]
_08155480:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08155488: .4byte 0x040000D4
_0815548C: .4byte gUnk_03003674
_08155490: .4byte gUnk_03002C60

	thumb_func_start sub_08155494
sub_08155494: @ 0x08155494
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _081554D0 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _081554D4 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _081554D8
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0815553C
	.align 2, 0
_081554D0: .4byte 0x040000D4
_081554D4: .4byte 0x84000002
_081554D8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0815550C
	adds r2, r4, r3
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x27
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r5, ip
	strb r1, [r5]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r5]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r5]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_0815550C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0815553C
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_0815553C:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08155544
sub_08155544: @ 0x08155544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xb
	ldr r0, _081555FC @ =gUnk_030060B6
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _08155600 @ =gUnk_08D5FE14
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r6]
	mov r0, sl
	mov r1, r8
	bl Div
	lsls r4, r4, #1
	adds r4, r4, r7
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	mov r0, sl
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081555FC: .4byte gUnk_030060B6
_08155600: .4byte gUnk_08D5FE14

	thumb_func_start sub_08155604
sub_08155604: @ 0x08155604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08155620
	b _0815588E
_08155620:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _08155644
	ldr r0, _08155640 @ =gUnk_03003674
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r6, r1, r0
	b _08155658
	.align 2, 0
_08155640: .4byte gUnk_03003674
_08155644:
	ldr r0, _081557F8 @ =gUnk_03003674
	ldr r1, [r0]
	ldr r5, [sp, #0x24]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r6, r0, r1
_08155658:
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _081557FC @ =gUnk_030060B6
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldr r2, _08155800 @ =gUnk_08D5FE14
	ldrh r0, [r7]
	ldr r1, _08155804 @ =0x000003FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	movs r0, #0xa
	add r0, sp
	mov sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	strh r0, [r1]
	add r2, sp, #0xc
	mov r8, r2
	ldrh r0, [r7, #2]
	strh r0, [r2]
	movs r3, #0xe
	add r3, sp
	mov sb, r3
	ldrh r0, [r7, #4]
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r7, r2]
	str r1, [sp, #0x2c]
	cmp r1, #0
	bge _08155748
	rsbs r0, r0, #0
	mov r3, r8
	strh r0, [r3]
_08155748:
	movs r5, #4
	ldrsh r0, [r7, r5]
	ldrh r1, [r7, #4]
	mov ip, r1
	cmp r0, #0
	bge _0815575C
	mov r2, ip
	rsbs r0, r2, #0
	mov r3, sb
	strh r0, [r3]
_0815575C:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	mov r5, sl
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	add r3, sp, #4
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	mov r2, sp
	adds r2, #6
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r5, sb
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r0, sp, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #0x1c
	strh r1, [r0]
	adds r0, #2
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x10]
	movs r5, #8
	ldrsh r0, [r7, r5]
	str r0, [sp, #0x14]
	adds r7, r4, #0
	mov r8, r3
	mov sb, r2
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _08155808
	ldrh r4, [r6, #8]
	ldrh r2, [r6, #4]
	b _08155814
	.align 2, 0
_081557F8: .4byte gUnk_03003674
_081557FC: .4byte gUnk_030060B6
_08155800: .4byte gUnk_08D5FE14
_08155804: .4byte 0x000003FF
_08155808:
	ldrh r1, [r6, #4]
	ldrh r0, [r6, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_08155814:
	mov r1, ip
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _08155822
	ldrh r3, [r6, #0xa]
	ldrh r5, [r6, #6]
	b _0815582E
_08155822:
	ldrh r1, [r6, #6]
	ldrh r0, [r6, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_0815582E:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x24]
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r3, #0x12]
_0815588E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081558A0
sub_081558A0: @ 0x081558A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081558BC
	b _08155C28
_081558BC:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _081558E4
	ldr r0, _081558E0 @ =gUnk_03003674
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _081558FA
	.align 2, 0
_081558E0: .4byte gUnk_03003674
_081558E4:
	ldr r0, _08155B78 @ =gUnk_03003674
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_081558FA:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _08155B7C @ =gUnk_030060B6
	adds r4, r4, r0
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x28]
	ldrh r0, [r7]
	ldr r2, _08155B80 @ =gUnk_03002544
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _08155B84 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _08155B88 @ =gUnk_08D5FE14
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	movs r6, #0xa
	add r6, sp
	mov r8, r6
	ldrh r0, [r7]
	ldr r3, _08155B80 @ =gUnk_03002544
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	add r6, sp, #0xc
	movs r5, #2
	ldrsh r1, [r7, r5]
	ldr r2, _08155B8C @ =gUnk_030023F0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r7, r5]
	ldr r2, _08155B90 @ =gUnk_030068B4
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _08155A10
	movs r2, #2
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	ldr r3, _08155B8C @ =gUnk_030023F0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
_08155A10:
	movs r4, #4
	ldrsh r0, [r7, r4]
	ldr r5, _08155B90 @ =gUnk_030068B4
	ldrh r3, [r5]
	ldrh r2, [r7, #4]
	mov r1, sp
	strh r2, [r1, #0x34]
	cmp r0, #0
	bge _08155A34
	movs r4, #4
	ldrsh r0, [r7, r4]
	rsbs r0, r0, #0
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r5, sl
	strh r0, [r5]
	ldr r0, _08155B90 @ =gUnk_030068B4
	ldrh r3, [r0]
_08155A34:
	mov r2, sp
	ldr r4, [sp, #0x28]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	str r5, [sp, #0x30]
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	add r1, sp, #4
	mov ip, r1
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, ip
	strh r0, [r5]
	mov r6, sp
	adds r6, #6
	str r6, [sp, #0x38]
	ldr r0, [sp, #0x28]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	add r5, sp, #0x18
	ldr r1, _08155B80 @ =gUnk_03002544
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r4, _08155B88 @ =gUnk_08D5FE14
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _08155B8C @ =gUnk_030023F0
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r2, sp
	adds r2, #0x1a
	ldr r1, _08155B80 @ =gUnk_03002544
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r4, sp, #0x1c
	ldr r6, _08155B80 @ =gUnk_03002544
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08155B88 @ =gUnk_08D5FE14
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, sp
	adds r3, #0x1e
	ldrh r0, [r6]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _08155B90 @ =gUnk_030068B4
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #6
	ldrsh r1, [r7, r5]
	muls r1, r0, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #8
	ldrsh r2, [r7, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08155B94 @ =gUnk_0300254C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #6
	ldrsh r1, [r7, r4]
	muls r1, r0, r1
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #8
	ldrsh r2, [r7, r5]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08155B98 @ =gUnk_0300367C
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r7, [sp, #0x30]
	mov r8, ip
	ldr r6, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _08155B9C
	mov r1, sb
	ldrh r4, [r1, #8]
	ldrh r2, [r1, #4]
	b _08155BAA
	.align 2, 0
_08155B78: .4byte gUnk_03003674
_08155B7C: .4byte gUnk_030060B6
_08155B80: .4byte gUnk_03002544
_08155B84: .4byte 0x000003FF
_08155B88: .4byte gUnk_08D5FE14
_08155B8C: .4byte gUnk_030023F0
_08155B90: .4byte gUnk_030068B4
_08155B94: .4byte gUnk_0300254C
_08155B98: .4byte gUnk_0300367C
_08155B9C:
	mov r2, sb
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_08155BAA:
	mov r3, sp
	ldrh r3, [r3, #0x34]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _08155BBC
	mov r5, sb
	ldrh r3, [r5, #0xa]
	ldrh r5, [r5, #6]
	b _08155BCA
_08155BBC:
	mov r0, sb
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_08155BCA:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r2, #0x12]
_08155C28:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08155C38
sub_08155C38: @ 0x08155C38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08155C54
	b _0815603C
_08155C54:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _08155C7C
	ldr r0, _08155C78 @ =gUnk_03003674
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _08155C92
	.align 2, 0
_08155C78: .4byte gUnk_03003674
_08155C7C:
	ldr r0, _08155F88 @ =gUnk_03003674
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_08155C92:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _08155F8C @ =gUnk_030060B6
	adds r4, r4, r0
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x28]
	ldrh r0, [r6]
	ldr r2, _08155F90 @ =gUnk_03002544
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _08155F94 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _08155F98 @ =gUnk_08D5FE14
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	movs r7, #0xa
	add r7, sp
	mov r8, r7
	ldrh r0, [r6]
	ldr r3, _08155F90 @ =gUnk_03002544
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	add r7, sp, #0xc
	movs r5, #2
	ldrsh r1, [r6, r5]
	ldr r2, _08155F9C @ =gUnk_030023F0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r6, r5]
	ldr r2, _08155FA0 @ =gUnk_030068B4
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _08155DA8
	movs r2, #2
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	ldr r3, _08155F9C @ =gUnk_030023F0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
_08155DA8:
	movs r4, #4
	ldrsh r0, [r6, r4]
	ldr r5, _08155FA0 @ =gUnk_030068B4
	ldrh r4, [r5]
	ldrh r2, [r6, #4]
	mov r1, sp
	strh r2, [r1, #0x3c]
	cmp r0, #0
	bge _08155DCA
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r4, sl
	strh r0, [r4]
	ldrh r4, [r5]
_08155DCA:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	str r0, [sp, #0x30]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x30]
	strh r0, [r3]
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x34]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r3, sp
	adds r3, #6
	str r3, [sp, #0x38]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _08155F90 @ =gUnk_03002544
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _08155F98 @ =gUnk_08D5FE14
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, _08155F9C @ =gUnk_030023F0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _08155FA4 @ =gUnk_030068B8
	movs r5, #0
	ldrsh r1, [r3, r5]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x1a
	add r2, sp
	mov ip, r2
	ldr r5, _08155F90 @ =gUnk_03002544
	ldrh r0, [r5]
	lsls r0, r0, #1
	ldr r1, _08155F98 @ =gUnk_08D5FE14
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldr r5, _08155F9C @ =gUnk_030023F0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1]
	add r5, sp, #0x1c
	ldr r2, _08155F90 @ =gUnk_03002544
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _08155F98 @ =gUnk_08D5FE14
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r4, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x1e
	ldr r7, _08155F90 @ =gUnk_03002544
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _08155F98 @ =gUnk_08D5FE14
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _08155FA0 @ =gUnk_030068B4
	ldrh r1, [r7]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	ldrsh r2, [r6, r7]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08155FA8 @ =gUnk_0300254C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	muls r1, r0, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r2, [r6, r4]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08155FAC @ =gUnk_0300367C
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x38]
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ble _08155FB0
	mov r2, sb
	ldrh r4, [r2, #8]
	ldrh r2, [r2, #4]
	b _08155FBE
	.align 2, 0
_08155F88: .4byte gUnk_03003674
_08155F8C: .4byte gUnk_030060B6
_08155F90: .4byte gUnk_03002544
_08155F94: .4byte 0x000003FF
_08155F98: .4byte gUnk_08D5FE14
_08155F9C: .4byte gUnk_030023F0
_08155FA0: .4byte gUnk_030068B4
_08155FA4: .4byte gUnk_030068B8
_08155FA8: .4byte gUnk_0300254C
_08155FAC: .4byte gUnk_0300367C
_08155FB0:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_08155FBE:
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _08155FD0
	mov r0, sb
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _08155FDE
_08155FD0:
	mov r3, sb
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_08155FDE:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r5, [sp, #0x24]
	strh r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r5, #0x12]
_0815603C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0815604C
sub_0815604C: @ 0x0815604C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r4, #0
	str r4, [sp, #0x24]
	mov r0, sb
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0815607C
	b _081564C0
_0815607C:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _081560A4
	ldr r3, _081560A0 @ =gUnk_03003674
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _081560BA
	.align 2, 0
_081560A0: .4byte gUnk_03003674
_081560A4:
	ldr r3, _08156158 @ =gUnk_03003674
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_081560BA:
	mov r4, r8
	ldrh r0, [r4, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	mov sl, r1
	mov r0, sb
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _081560F4
	ldr r0, _0815615C @ =gUnk_030023F4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp]
	subs r4, r4, r1
	str r4, [sp]
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
_081560F4:
	mov r0, r8
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	mov r1, r8
	ldrh r1, [r1, #6]
	str r1, [sp, #8]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08156160
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r1, [sp, #0x14]
	orrs r1, r0
	str r1, [sp, #0x14]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _081561D6
	ldr r1, [sp, #4]
	lsrs r0, r1, #1
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
	ldr r1, [sp, #8]
	lsrs r0, r1, #1
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	str r0, [sp, #4]
	lsls r1, r1, #1
	str r1, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	b _081561D6
	.align 2, 0
_08156158: .4byte gUnk_03003674
_0815615C: .4byte gUnk_030023F4
_08156160:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0815617C
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	b _08156188
_0815617C:
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_08156188:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _081561A4
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #4]
	subs r0, r4, r0
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	b _081561B0
_081561A4:
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
_081561B0:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _081561C6
	movs r0, #1
	str r0, [sp, #0x20]
_081561C6:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _081561D6
	movs r1, #1
	str r1, [sp, #0x24]
_081561D6:
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _081561FE
	ldr r1, [sp]
	adds r0, r1, r4
	cmp r0, #0
	bge _081561E6
	b _081564C0
_081561E6:
	cmp r1, #0xf0
	ble _081561EC
	b _081564C0
_081561EC:
	ldr r0, [sp, #8]
	add r0, sl
	cmp r0, #0
	bge _081561F6
	b _081564C0
_081561F6:
	mov r4, sl
	cmp r4, #0xa0
	ble _081561FE
	b _081564C0
_081561FE:
	mov r0, sb
	ldrb r1, [r0, #0x1f]
	lsls r1, r1, #0xc
	ldr r4, [sp, #0x1c]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _081563B8 @ =gUnk_030024F0
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _08156248
	b _08156370
_08156248:
	mov r4, sb
	ldrh r0, [r4, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_08156D84
	adds r4, r0, #0
	ldr r0, _081563BC @ =gUnk_03006CC4
	ldr r0, [r0]
	cmp r0, r4
	bne _08156266
	b _081564C0
_08156266:
	mov r3, r8
	ldrh r0, [r3]
	ldr r2, _081563C0 @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r2, _081563C4 @ =0x040000D4
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _081563C8 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r4, #2]
	ldr r3, _081563CC @ =0x000001FF
	adds r0, r3, #0
	adds r7, r0, #0
	ands r7, r1
	ldrh r2, [r4]
	ldrb r5, [r4]
	movs r0, #0xfe
	lsls r0, r0, #8
	adds r3, r0, #0
	ands r3, r1
	strh r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	strh r1, [r4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orrs r0, r2
	cmp r0, #0
	beq _08156306
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	adds r6, r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _081562E6
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r2, #1
	ldr r1, _081563D0 @ =gUnk_08D6084D
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	subs r5, r0, r5
_081562E6:
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _08156306
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r6, #1
	ldr r3, _081563D4 @ =gUnk_08D6084C
	adds r0, r0, r3
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	subs r7, r0, r7
_08156306:
	mov r3, sl
	adds r2, r3, r5
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r4]
	adds r2, r2, r0
	ldr r1, [sp]
	adds r0, r1, r7
	ldr r3, _081563CC @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	orrs r2, r3
	strh r2, [r4]
	ldr r1, [sp, #0x18]
	orrs r0, r1
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r3, [sp, #0x1c]
	orrs r3, r0
	strh r3, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _0815634C
	ldr r2, _081563D8 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r4, #4]
_0815634C:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _081563DC @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _08156370
	b _08156248
_08156370:
	mov r4, sb
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0815637C
	b _081564C0
_0815637C:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0815638A
	b _081564C0
_0815638A:
	ldr r0, _081563E0 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r4, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _081563E4 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _081563E8 @ =gUnk_03003674
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _081563EC
	movs r3, #0x20
	mov r8, r3
	ldr r2, [r2, #0x10]
	b _081563F2
	.align 2, 0
_081563B8: .4byte gUnk_030024F0
_081563BC: .4byte gUnk_03006CC4
_081563C0: .4byte 0x00003FFF
_081563C4: .4byte 0x040000D4
_081563C8: .4byte 0x80000003
_081563CC: .4byte 0x000001FF
_081563D0: .4byte gUnk_08D6084D
_081563D4: .4byte gUnk_08D6084C
_081563D8: .4byte 0x000003FF
_081563DC: .4byte 0xF9FF0000
_081563E0: .4byte 0xFBFFFFFF
_081563E4: .4byte 0x00FFFFFF
_081563E8: .4byte gUnk_03003674
_081563EC:
	movs r4, #0x40
	mov r8, r4
	ldr r2, [r2, #0x14]
_081563F2:
	mov ip, r2
	mov r3, r8
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	muls r0, r3, r0
	mov r4, ip
	adds r2, r4, r0
	mov r0, sb
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x28]
	cmp r7, r1
	bhs _08156488
	ldr r4, _0815643C @ =gUnk_03002EC0
	mov sb, r4
	ldr r5, _08156440 @ =gUnk_030039A4
_08156418:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, ip
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _08156444
	mov r4, r8
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0815647C
	.align 2, 0
_0815643C: .4byte gUnk_03002EC0
_08156440: .4byte gUnk_030039A4
_08156444:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, r8
	adds r2, r4, #0
_0815647C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blo _08156418
_08156488:
	ldr r4, _081564D0 @ =gUnk_030039A4
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _081564D4 @ =gUnk_03002EC0
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _081564D4 @ =gUnk_03002EC0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _081564D4 @ =gUnk_03002EC0
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r4]
_081564C0:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081564D0: .4byte gUnk_030039A4
_081564D4: .4byte gUnk_03002EC0

	thumb_func_start sub_081564D8
sub_081564D8: @ 0x081564D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0
	str r3, [sp, #0x2c]
	movs r4, #0
	str r4, [sp, #0x30]
	mov r0, sl
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08156508
	b _08156988
_08156508:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _08156530
	ldr r3, _0815652C @ =gUnk_03003674
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _08156546
	.align 2, 0
_0815652C: .4byte gUnk_03003674
_08156530:
	ldr r3, _081565E4 @ =gUnk_03003674
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_08156546:
	mov r4, sb
	ldrh r0, [r4, #2]
	mov r1, sl
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp, #8]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	str r1, [sp, #0xc]
	mov r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _08156580
	ldr r0, _081565E8 @ =gUnk_030023F4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp, #8]
	subs r4, r4, r1
	str r4, [sp, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
_08156580:
	mov r0, sb
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _081565EC
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r1, [sp, #0x20]
	orrs r1, r0
	str r1, [sp, #0x20]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x24]
	orrs r4, r0
	str r4, [sp, #0x24]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08156662
	ldr r1, [sp, #0x10]
	lsrs r0, r1, #1
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
	ldr r1, [sp, #0x14]
	lsrs r0, r1, #1
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r4, [sp, #0x20]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	b _08156662
	.align 2, 0
_081565E4: .4byte gUnk_03003674
_081565E8: .4byte gUnk_030023F4
_081565EC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08156608
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	b _08156614
_08156608:
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
_08156614:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08156630
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x10]
	subs r0, r4, r0
	ldr r1, [sp, #8]
	subs r1, r1, r0
	str r1, [sp, #8]
	b _0815663C
_08156630:
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
_0815663C:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, sb
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _08156652
	movs r0, #1
	str r0, [sp, #0x2c]
_08156652:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08156662
	movs r1, #1
	str r1, [sp, #0x30]
_08156662:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0815668A
	ldr r1, [sp, #8]
	adds r0, r1, r4
	cmp r0, #0
	bge _08156672
	b _08156988
_08156672:
	cmp r1, #0xf0
	ble _08156678
	b _08156988
_08156678:
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x14]
	adds r0, r4, r1
	cmp r0, #0
	bge _08156684
	b _08156988
_08156684:
	cmp r4, #0xa0
	ble _0815668A
	b _08156988
_0815668A:
	mov r4, sl
	ldrb r1, [r4, #0x1f]
	lsls r1, r1, #0xc
	ldr r0, [sp, #0x28]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x20]
	orrs r4, r0
	str r4, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, _0815687C @ =gUnk_030024F0
	ldrb r0, [r0]
	mov r1, sl
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _081566D4
	b _08156834
_081566D4:
	ldr r4, _08156880 @ =0x040000D4
	mov r8, r4
	mov r4, sp
_081566DA:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _08156884 @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0x18]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	mov r2, r8
	str r0, [r2]
	mov r3, sp
	str r3, [r2, #4]
	ldr r0, _08156888 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	ldr r1, _0815688C @ =0x000001FF
	adds r0, r1, #0
	adds r6, r0, #0
	ands r6, r2
	cmp r6, #0xff
	ble _08156712
	ldr r3, _08156890 @ =0xFFFFFE00
	adds r6, r6, r3
_08156712:
	ldrh r0, [r4]
	ldrb r5, [r4]
	cmp r5, #0x7f
	ble _0815671E
	ldr r1, _08156894 @ =0xFFFFFF00
	adds r5, r5, r1
_0815671E:
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r3, r1, #0
	ands r3, r2
	strh r3, [r4, #2]
	ands r1, r0
	strh r1, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	adds r0, r3, #0
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	ldr r2, _08156898 @ =gUnk_08D6084C
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov ip, r1
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	orrs r0, r1
	cmp r0, #0
	beq _08156788
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	beq _0815676E
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r1, r3, #0
	eors r1, r0
	strh r1, [r4, #2]
	ldr r2, [sp, #0x14]
	subs r0, r2, r7
	subs r5, r0, r5
_0815676E:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _08156788
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	ldr r3, [sp, #0x10]
	mov r1, ip
	subs r0, r3, r1
	subs r6, r0, r6
_08156788:
	ldr r2, [sp, #0xc]
	adds r1, r2, r5
	adds r0, r1, r7
	cmp r0, #0
	blt _08156820
	cmp r1, #0xa0
	bgt _08156820
	ldr r3, [sp, #8]
	adds r2, r3, r6
	mov r3, ip
	adds r0, r2, r3
	cmp r0, #0
	blt _08156820
	cmp r2, #0xf0
	bgt _08156820
	movs r0, #0xff
	ands r1, r0
	ldrh r0, [r4]
	adds r1, r1, r0
	ldr r3, _0815688C @ =0x000001FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #2]
	adds r0, r0, r2
	ldr r2, [sp, #0x20]
	orrs r1, r2
	strh r1, [r4]
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r2, [sp, #0x28]
	orrs r2, r0
	strh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r1, r0
	cmp r1, #0
	beq _081567E4
	ldr r0, _0815689C @ =0x000003FF
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	adds r0, r2, r0
	strh r0, [r4, #4]
_081567E4:
	mov r1, sl
	ldr r0, [r1]
	ldr r2, _081568A0 @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	ldrh r3, [r4, #4]
	adds r0, r0, r3
	strh r0, [r4, #4]
	ldrh r0, [r1, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_08156D84
	adds r1, r0, #0
	ldr r0, _081568A4 @ =gUnk_03006CC4
	ldr r0, [r0]
	cmp r0, r1
	bne _08156810
	b _08156988
_08156810:
	mov r3, sp
	mov r0, r8
	str r3, [r0]
	str r1, [r0, #4]
	ldr r0, _08156888 @ =0x80000003
	mov r1, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08156820:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _08156834
	b _081566DA
_08156834:
	mov r3, sl
	ldr r0, [r3, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08156840
	b _08156988
_08156840:
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0815684E
	b _08156988
_0815684E:
	ldr r0, _081568A8 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r3, #8]
	mov r4, sb
	ldr r0, [r4, #0xc]
	ldr r1, _081568AC @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, _081568B0 @ =gUnk_03003674
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _081568B4
	movs r0, #0x20
	mov r8, r0
	ldr r2, [r2, #0x10]
	b _081568BA
	.align 2, 0
_0815687C: .4byte gUnk_030024F0
_08156880: .4byte 0x040000D4
_08156884: .4byte 0x00003FFF
_08156888: .4byte 0x80000003
_0815688C: .4byte 0x000001FF
_08156890: .4byte 0xFFFFFE00
_08156894: .4byte 0xFFFFFF00
_08156898: .4byte gUnk_08D6084C
_0815689C: .4byte 0x000003FF
_081568A0: .4byte 0xF9FF0000
_081568A4: .4byte gUnk_03006CC4
_081568A8: .4byte 0xFBFFFFFF
_081568AC: .4byte 0x00FFFFFF
_081568B0: .4byte gUnk_03003674
_081568B4:
	movs r1, #0x40
	mov r8, r1
	ldr r2, [r2, #0x14]
_081568BA:
	mov sb, r2
	mov r3, r8
	mov r2, ip
	adds r2, #4
	mov ip, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r4, sb
	adds r2, r4, r0
	mov r0, sl
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x34]
	cmp r7, r1
	bhs _08156950
	ldr r4, _08156904 @ =gUnk_03002EC0
	mov sl, r4
	ldr r5, _08156908 @ =gUnk_030039A4
_081568E0:
	mov r1, ip
	adds r1, #4
	mov ip, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, sb
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _0815690C
	mov r4, r8
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08156944
	.align 2, 0
_08156904: .4byte gUnk_03002EC0
_08156908: .4byte gUnk_030039A4
_0815690C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, r8
	adds r2, r4, #0
_08156944:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r7, r0
	blo _081568E0
_08156950:
	ldr r4, _08156998 @ =gUnk_030039A4
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0815699C @ =gUnk_03002EC0
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0815699C @ =gUnk_03002EC0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0815699C @ =gUnk_03002EC0
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r4]
_08156988:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156998: .4byte gUnk_030039A4
_0815699C: .4byte gUnk_03002EC0

	thumb_func_start sub_081569A0
sub_081569A0: @ 0x081569A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081569C2
	b _08156D58
_081569C2:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _081569E8
	ldr r0, _081569E4 @ =gUnk_03003674
	ldr r0, [r0]
	mov r3, sb
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	b _081569FE
	.align 2, 0
_081569E4: .4byte gUnk_03003674
_081569E8:
	ldr r0, _08156A74 @ =gUnk_03003674
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_081569FE:
	mov r5, sl
	ldrh r0, [r5, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	str r0, [sp]
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	str r0, [sp, #4]
	ldr r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08156A36
	ldr r2, _08156A78 @ =gUnk_030023F4
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	movs r5, #2
	ldrsh r1, [r2, r5]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
_08156A36:
	mov r0, sl
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sl
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08156A7C
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08156AC0
	ldr r2, [sp, #0x10]
	lsrs r1, r2, #1
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	mov r3, sl
	ldrh r1, [r3, #6]
	lsrs r1, r1, #1
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	lsls r2, r2, #1
	str r2, [sp, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #1
	str r4, [sp, #0x14]
	b _08156AC0
	.align 2, 0
_08156A74: .4byte gUnk_03003674
_08156A78: .4byte gUnk_030023F4
_08156A7C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08156A92
	mov r5, sl
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #0x14]
	subs r1, r2, r1
	b _08156A98
_08156A92:
	mov r4, sl
	movs r5, #0xa
	ldrsh r1, [r4, r5]
_08156A98:
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08156AB4
	mov r0, sl
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x10]
	subs r1, r3, r1
	b _08156ABA
_08156AB4:
	mov r4, sl
	movs r5, #8
	ldrsh r1, [r4, r5]
_08156ABA:
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
_08156AC0:
	mov r0, sb
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp, #0x24]
	mov r3, sb
	movs r4, #0x12
	ldrsh r1, [r3, r4]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp]
	ldr r5, [sp, #0x10]
	adds r0, r0, r5
	cmp r0, #0
	bge _08156AE4
	b _08156D58
_08156AE4:
	ldr r0, [sp]
	cmp r0, #0xf0
	ble _08156AEC
	b _08156D58
_08156AEC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #0
	bge _08156AF8
	b _08156D58
_08156AF8:
	ldr r0, [sp, #4]
	cmp r0, #0xa0
	ble _08156B00
	b _08156D58
_08156B00:
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _08156B0E
	b _08156D58
_08156B0E:
	ldr r0, _08156BCC @ =gUnk_03003674
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	mov r5, sb
	ldrh r0, [r5, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_08156D84
	adds r6, r0, #0
	ldr r0, _08156BD0 @ =gUnk_03006CC4
	ldr r0, [r0]
	cmp r0, r6
	bne _08156B3C
	b _08156D58
_08156B3C:
	ldr r2, _08156BD4 @ =0x040000D4
	mov r3, sl
	ldrh r0, [r3]
	ldr r5, _08156BD8 @ =0x00003FFF
	adds r1, r5, #0
	ands r1, r0
	ldr r0, [sp, #0x18]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r4, r0
	str r0, [r2]
	str r6, [r2, #4]
	ldr r0, _08156BDC @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r6, #2]
	ldr r2, _08156BE0 @ =0x000001FF
	adds r0, r2, #0
	adds r3, r0, #0
	ands r3, r1
	str r3, [sp, #0x1c]
	ldrh r0, [r6]
	ldrb r4, [r6]
	str r4, [sp, #0x20]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r1
	movs r5, #0
	strh r3, [r6, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r6]
	mov r1, sb
	ldrb r0, [r1, #0x1f]
	lsls r0, r0, #0xc
	ldrh r4, [r6, #4]
	adds r0, r0, r4
	strh r0, [r6, #4]
	ldr r4, [r1, #8]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08156BE4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	orrs r2, r5
	strh r2, [r6]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08156BBA
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r2, r0
	strh r2, [r6]
_08156BBA:
	mov r5, sb
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	ldrh r1, [r6, #2]
	orrs r0, r1
	strh r0, [r6, #2]
	b _08156C58
	.align 2, 0
_08156BCC: .4byte gUnk_03003674
_08156BD0: .4byte gUnk_03006CC4
_08156BD4: .4byte 0x040000D4
_08156BD8: .4byte 0x00003FFF
_08156BDC: .4byte 0x80000003
_08156BE0: .4byte 0x000001FF
_08156BE4:
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r2, #0
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	lsrs r1, r4, #0xb
	movs r4, #1
	ands r1, r4
	mov r5, sl
	ldrh r0, [r5]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _08156C26
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r0, _08156D68 @ =gUnk_08D6084C
	lsls r1, r2, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r3, [sp, #0x20]
	subs r3, r0, r3
	str r3, [sp, #0x20]
_08156C26:
	mov r5, sb
	ldr r1, [r5, #8]
	lsrs r1, r1, #0xa
	mov r3, sl
	ldrh r0, [r3]
	lsrs r0, r0, #0xe
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08156C58
	ldrh r0, [r6, #2]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r4, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r1, _08156D68 @ =gUnk_08D6084C
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r5, [sp, #0x10]
	subs r0, r5, r0
	ldr r1, [sp, #0x1c]
	subs r1, r0, r1
	str r1, [sp, #0x1c]
_08156C58:
	mov r3, sb
	ldr r2, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrh r0, [r6]
	orrs r2, r0
	strh r2, [r6]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r3, r0, #2
	ldrh r0, [r6, #4]
	orrs r3, r0
	strh r3, [r6, #4]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r6]
	ldr r0, [sp]
	ldr r5, [sp, #0x1c]
	adds r0, r0, r5
	ldr r4, _08156D6C @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	ldrh r5, [r6, #2]
	adds r0, r0, r5
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _08156CB2
	ldr r2, _08156D70 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r6, #4]
_08156CB2:
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _08156D74 @ =0xF9FF0000
	adds r0, r0, r4
	lsrs r0, r0, #5
	ldrh r5, [r6, #4]
	adds r0, r0, r5
	strh r0, [r6, #4]
	movs r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bhs _08156D44
	ldr r1, _08156D78 @ =0x040000D4
	mov r8, r1
_08156CCE:
	mov r2, sb
	ldrh r0, [r2, #0x14]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_08156D84
	adds r5, r0, #0
	ldr r0, _08156D7C @ =gUnk_03006CC4
	ldr r0, [r0]
	cmp r0, r6
	beq _08156D58
	mov r4, r8
	str r6, [r4]
	str r5, [r4, #4]
	ldr r0, _08156D80 @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r4, [r5, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r4, r0
	strh r4, [r5, #2]
	ldrh r2, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r5]
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	ldrh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r0, [r3]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	ldr r2, _08156D6C @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r4, r4, r0
	strh r4, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r7, r3
	blo _08156CCE
_08156D44:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r0, r4
	bhs _08156D58
	b _08156B0E
_08156D58:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156D68: .4byte gUnk_08D6084C
_08156D6C: .4byte 0x000001FF
_08156D70: .4byte 0x000003FF
_08156D74: .4byte 0xF9FF0000
_08156D78: .4byte 0x040000D4
_08156D7C: .4byte gUnk_03006CC4
_08156D80: .4byte 0x80000003

	thumb_func_start sub_08156D84
sub_08156D84: @ 0x08156D84
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08156D90
	movs r5, #0x1f
_08156D90:
	ldr r0, _08156DA4 @ =gUnk_030024F0
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	bge _08156DAC
	ldr r0, _08156DA8 @ =gUnk_03006CC4
	ldr r0, [r0]
	b _08156E08
	.align 2, 0
_08156DA4: .4byte gUnk_030024F0
_08156DA8: .4byte gUnk_03006CC4
_08156DAC:
	ldr r0, _08156DD0 @ =gUnk_03002450
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08156DDC
	ldr r1, _08156DD4 @ =gUnk_030031C0
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
	ldr r0, _08156DD8 @ =gUnk_03006080
	adds r0, r5, r0
	ldrb r1, [r4]
	strb r1, [r0]
	b _08156DFA
	.align 2, 0
_08156DD0: .4byte gUnk_03002450
_08156DD4: .4byte gUnk_030031C0
_08156DD8: .4byte gUnk_03006080
_08156DDC:
	ldr r3, _08156E10 @ =gUnk_030031C0
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #6]
	ldr r2, _08156E14 @ =gUnk_03006080
	adds r2, r5, r2
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r1, [r4]
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
_08156DFA:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _08156E18 @ =gUnk_030031B8
	adds r0, r0, r1
_08156E08:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08156E10: .4byte gUnk_030031C0
_08156E14: .4byte gUnk_03006080
_08156E18: .4byte gUnk_030031B8

	thumb_func_start sub_08156E1C
sub_08156E1C: @ 0x08156E1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r5, _08156ECC @ =gUnk_030060B0
	movs r0, #0
	mov sb, r0
	movs r3, #0
	ldr r1, _08156ED0 @ =gUnk_03003A00
	mov sl, r1
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0xc]
_08156E3A:
	ldr r1, _08156ED4 @ =gUnk_03002450
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r6, r3, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08156E82
	ldr r4, _08156ED8 @ =0x040000D4
	mov r8, r1
	ldr r0, _08156EDC @ =gUnk_030035F0
	mov ip, r0
	ldr r7, _08156EE0 @ =gUnk_030031C0
_08156E58:
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	adds r3, r3, r7
	str r3, [r4]
	str r5, [r4, #4]
	ldr r0, _08156EE4 @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, #8
	add r2, ip
	mov r1, sb
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	strb r1, [r2]
	ldrb r0, [r3, #6]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	cmp r0, r8
	bne _08156E58
_08156E82:
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _08156E3A
	ldr r2, _08156EE8 @ =gUnk_03002440
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08156EF4
	ldr r0, _08156EEC @ =gUnk_030024F0
	ldrb r3, [r0]
	lsls r0, r3, #3
	ldr r1, _08156ECC @ =gUnk_030060B0
	adds r5, r0, r1
	mov r2, sl
	ldrb r0, [r2]
	cmp r3, r0
	bge _08156F80
	mov r4, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r7, r1, #0
	ldr r1, _08156ED8 @ =0x040000D4
	ldr r6, _08156EF0 @ =0x81000003
_08156EB4:
	strh r7, [r4]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #8
	adds r3, #1
	ldrb r0, [r2]
	cmp r3, r0
	blt _08156EB4
	b _08156F80
	.align 2, 0
_08156ECC: .4byte gUnk_030060B0
_08156ED0: .4byte gUnk_03003A00
_08156ED4: .4byte gUnk_03002450
_08156ED8: .4byte 0x040000D4
_08156EDC: .4byte gUnk_030035F0
_08156EE0: .4byte gUnk_030031C0
_08156EE4: .4byte 0x80000003
_08156EE8: .4byte gUnk_03002440
_08156EEC: .4byte gUnk_030024F0
_08156EF0: .4byte 0x81000003
_08156EF4:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08156F7C
	ldr r1, _08156F68 @ =gUnk_030024F0
	ldrb r0, [r1]
	subs r3, r0, #1
	lsls r0, r3, #3
	ldr r2, _08156F6C @ =gUnk_030060B0
	adds r5, r0, r2
	cmp r3, #0
	blt _08156F2E
	ldr r2, _08156F70 @ =0x040000D4
	ldr r6, _08156F74 @ =0x80000003
	ldr r0, _08156F6C @ =gUnk_030060B0
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r1, r5, #0
_08156F1C:
	str r1, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #8
	subs r3, #1
	subs r4, #8
	cmp r3, #0
	bge _08156F1C
_08156F2E:
	ldr r2, _08156F68 @ =gUnk_030024F0
	ldrb r1, [r2]
	movs r0, #0x80
	subs r0, r0, r1
	mov r1, sl
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r1]
	cmp r3, r0
	bge _08156F80
	mov r5, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r7, r2, #0
	ldr r1, _08156F70 @ =0x040000D4
	adds r4, r0, #0
	ldr r6, _08156F78 @ =0x81000003
	ldr r2, _08156F6C @ =gUnk_030060B0
_08156F52:
	strh r7, [r5]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _08156F52
	b _08156F80
	.align 2, 0
_08156F68: .4byte gUnk_030024F0
_08156F6C: .4byte gUnk_030060B0
_08156F70: .4byte 0x040000D4
_08156F74: .4byte 0x80000003
_08156F78: .4byte 0x81000003
_08156F7C:
	mov r1, sl
	strb r0, [r1]
_08156F80:
	movs r0, #0
	ldr r2, _08156FB4 @ =gUnk_030024F0
	strb r0, [r2]
	ldr r1, _08156FB8 @ =gUnk_03002440
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08156FC8
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08156FBC @ =0x05000008
	ldr r1, _08156FC0 @ =gUnk_03002450
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _08156FC4 @ =gUnk_03006080
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl CpuSet
	b _08156FEC
	.align 2, 0
_08156FB4: .4byte gUnk_030024F0
_08156FB8: .4byte gUnk_03002440
_08156FBC: .4byte 0x05000008
_08156FC0: .4byte gUnk_03002450
_08156FC4: .4byte gUnk_03006080
_08156FC8:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08156FFC @ =0x040000D4
	ldr r2, [sp, #0xc]
	str r2, [r0]
	ldr r2, _08157000 @ =gUnk_03002450
	str r2, [r0, #4]
	ldr r2, _08157004 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	str r1, [r0]
	ldr r1, _08157008 @ =gUnk_03006080
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08156FEC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08156FFC: .4byte 0x040000D4
_08157000: .4byte gUnk_03002450
_08157004: .4byte 0x85000008
_08157008: .4byte gUnk_03006080

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

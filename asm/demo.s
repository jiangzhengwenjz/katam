	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08025E00
sub_08025E00: @ 0x08025E00
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _08025E94 @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldr r1, _08025E98 @ =gPressedKeys
	mov ip, r1
	cmp r3, r0
	bhs _08025E3E
	ldr r4, _08025E9C @ =gUnk_02038990
	ldr r7, _08025EA0 @ =0x000003FF
	adds r5, r0, #0
	adds r6, r4, #2
_08025E1A:
	lsls r1, r2, #9
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	orrs r3, r0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blo _08025E1A
_08025E3E:
	mov r0, ip
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08025E52
	movs r0, #8
	ands r3, r0
	cmp r3, #0
	beq _08025EBE
_08025E52:
	ldr r0, _08025EA4 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	ldr r2, _08025EA8 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08025EAC @ =gUnk_03000554
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08025EB8
	movs r2, #0
	strb r2, [r1]
	ldr r1, _08025EB0 @ =gUnk_03000558
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08025E8C
	strb r2, [r1]
_08025E8C:
	ldr r0, _08025EB4 @ =CreateLogo
	bl sub_08020428
	b _08025EBE
	.align 2, 0
_08025E94: .4byte gUnk_0203AD30
_08025E98: .4byte gPressedKeys
_08025E9C: .4byte gUnk_02038990
_08025EA0: .4byte 0x000003FF
_08025EA4: .4byte gCurGameState
_08025EA8: .4byte gUnk_03002440
_08025EAC: .4byte gUnk_03000554
_08025EB0: .4byte gUnk_03000558
_08025EB4: .4byte CreateLogo
_08025EB8:
	ldr r0, _08025EC4 @ =CreateTitleScreen
	bl sub_08020428
_08025EBE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025EC4: .4byte CreateTitleScreen

	thumb_func_start CreateDemo
CreateDemo: @ 0x08025EC8
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08025EF8 @ =sub_08025F50
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r2, #1
	movs r3, #4
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025EFC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08025F04
	.align 2, 0
_08025EF8: .4byte sub_08025F50
_08025EFC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08025F04:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08025F24 @ =0x01000004
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08025F28 @ =sub_08025F84
	str r0, [r4]
	strh r5, [r4, #4]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F24: .4byte 0x01000004
_08025F28: .4byte sub_08025F84

	thumb_func_start sub_08025F2C
sub_08025F2C: @ 0x08025F2C
	ldr r0, _08025F44 @ =gUnk_03000558
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08025F48 @ =gUnk_03000554
	ldr r2, _08025F4C @ =0x0000FFFF
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08025F44: .4byte gUnk_03000558
_08025F48: .4byte gUnk_03000554
_08025F4C: .4byte 0x0000FFFF

	thumb_func_start sub_08025F50
sub_08025F50: @ 0x08025F50
	push {lr}
	ldr r0, _08025F6C @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025F70
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08025F78
	.align 2, 0
_08025F6C: .4byte gCurGameState
_08025F70:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08025F78:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025F84
sub_08025F84: @ 0x08025F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldrh r1, [r0, #4]
	movs r0, #0x4c
	muls r1, r0, r1
	ldr r0, _0802602C @ =gUnk_082EAB98
	adds r5, r1, r0
	movs r0, #1
	bl sub_0800AC00
	bl sub_08020490
	movs r4, #0
_08025FA8:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_080204B0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08025FA8
	movs r4, #0
	ldr r0, _08026030 @ =gUnk_0203AD10
	mov sb, r0
	ldr r1, _08026034 @ =gUnk_0203AD2C
	mov sl, r1
	adds r7, r5, #0
	adds r7, #0x14
	movs r0, #0x1c
	adds r0, r0, r5
	mov ip, r0
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r3, _08026038 @ =gUnk_0203AD1C
	movs r2, #0xff
_08025FDE:
	adds r0, r4, r3
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08025FDE
	movs r0, #0x10
	mov r1, sb
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r1, #0
	mov r1, sl
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _0802603C @ =gUnk_030068D8
	str r0, [r1]
	str r6, [sp]
	movs r0, #4
	movs r1, #0
	adds r2, r7, #0
	mov r3, ip
	bl sub_080332BC
	ldr r0, _08026040 @ =sub_08025E00
	mov r1, r8
	str r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802602C: .4byte gUnk_082EAB98
_08026030: .4byte gUnk_0203AD10
_08026034: .4byte gUnk_0203AD2C
_08026038: .4byte gUnk_0203AD1C
_0802603C: .4byte gUnk_030068D8
_08026040: .4byte sub_08025E00

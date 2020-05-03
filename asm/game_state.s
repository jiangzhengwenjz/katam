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

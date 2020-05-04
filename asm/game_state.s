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

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08128A2C
sub_08128A2C: @ 0x08128A2C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08128A60 @ =sub_08128B5C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08128A64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08128A6C
	.align 2, 0
_08128A60: .4byte sub_08128B5C
_08128A64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08128A6C:
	adds r2, r0, #0
	lsls r0, r4, #0x18
	cmp r0, #0
	ble _08128A7A
	movs r0, #0
	strb r0, [r2, #3]
	b _08128A82
_08128A7A:
	movs r0, #1
	strb r0, [r2, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08128A82:
	strh r0, [r2]
	cmp r5, #0
	beq _08128A9C
	ldrb r1, [r2, #3]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, _08128A98 @ =gBldRegs
	movs r0, #0xbf
	b _08128AA8
	.align 2, 0
_08128A98: .4byte gBldRegs
_08128A9C:
	ldrb r1, [r2, #3]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, _08128AC0 @ =gBldRegs
	movs r0, #0xff
_08128AA8:
	strh r0, [r1]
	strb r4, [r2, #2]
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08128AC0: .4byte gBldRegs

	thumb_func_start sub_08128AC4
sub_08128AC4: @ 0x08128AC4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08128AF8 @ =sub_08128B5C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08128AFC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08128B04
	.align 2, 0
_08128AF8: .4byte sub_08128B5C
_08128AFC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08128B04:
	adds r3, r0, #0
	lsls r0, r5, #0x18
	cmp r0, #0
	ble _08128B12
	movs r0, #0
	strb r0, [r3, #3]
	b _08128B1A
_08128B12:
	movs r0, #1
	strb r0, [r3, #3]
	movs r0, #0xf8
	lsls r0, r0, #1
_08128B1A:
	strh r0, [r3]
	cmp r4, #0
	beq _08128B34
	ldrb r1, [r3, #3]
	movs r0, #0x10
	movs r2, #0
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _08128B30 @ =gBldRegs
	strh r2, [r0]
	b _08128B40
	.align 2, 0
_08128B30: .4byte gBldRegs
_08128B34:
	ldrb r0, [r3, #3]
	movs r1, #0x20
	orrs r1, r0
	strb r1, [r3, #3]
	ldr r0, _08128B58 @ =gBldRegs
	strh r4, [r0]
_08128B40:
	adds r1, r0, #0
	strb r5, [r3, #2]
	movs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r3]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08128B58: .4byte gBldRegs

	thumb_func_start sub_08128B5C
sub_08128B5C: @ 0x08128B5C
	push {r4, lr}
	ldr r2, _08128B7C @ =gCurGameState
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08128B80
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08128B88
	.align 2, 0
_08128B7C: .4byte gCurGameState
_08128B80:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08128B88:
	movs r0, #2
	ldrsb r0, [r3, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r2, _08128BC8 @ =gBldRegs
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	lsrs r0, r0, #4
	strh r0, [r2, #4]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08128BE6
	ldrb r1, [r3, #3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08128BCC
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08128BD4
	movs r0, #0x1e
	b _08128BDA
	.align 2, 0
_08128BC8: .4byte gBldRegs
_08128BCC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08128BD8
_08128BD4:
	strh r3, [r2, #4]
	b _08128BDC
_08128BD8:
	movs r0, #0x1f
_08128BDA:
	strh r0, [r2, #4]
_08128BDC:
	movs r0, #0
	strh r0, [r2, #2]
	ldr r0, [r4]
	bl GameStateDestroy
_08128BE6:
	pop {r4}
	pop {r0}
	bx r0

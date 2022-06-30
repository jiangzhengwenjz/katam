	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x0200CAB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _0200CB34 @ =0x04000208
	strh r6, [r3]
	ldr r2, _0200CB38 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200CB3C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _0200CB40 @ =gUnk_03007470
	ldr r2, _0200CB44 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _0200CB48 @ =0x04000128
	ldr r0, _0200CB4C @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _0200CB26
	ldr r0, _0200CB50 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_0200CB06:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _0200CB06
	ldr r1, _0200CB40 @ =gUnk_03007470
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _0200CB48 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_0200CB26:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200CB34: .4byte 0x04000208
_0200CB38: .4byte 0x04000200
_0200CB3C: .4byte 0x0000FF3F
_0200CB40: .4byte gUnk_03007470
_0200CB44: .4byte 0x05000006
_0200CB48: .4byte 0x04000128
_0200CB4C: .4byte 0x00002003
_0200CB50: .4byte 0x0400010C

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x0200CB54
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _0200CB6C @ =gUnk_03007470
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _0200CB62
	b _0200CD2E
_0200CB62:
	lsls r0, r0, #2
	ldr r1, _0200CB70 @ =_0200CB74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0200CB6C: .4byte gUnk_03007470
_0200CB70: .4byte _0200CB74
_0200CB74: @ jump table
	.4byte _0200CB88 @ case 0
	.4byte _0200CBA0 @ case 1
	.4byte _0200CC3C @ case 2
	.4byte _0200CCB8 @ case 3
	.4byte _0200CD24 @ case 4
_0200CB88:
	ldr r0, [r5]
	ldr r1, _0200CB9C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _0200CB94
	b _0200CD2E
_0200CB94:
	movs r0, #1
	strb r0, [r5, #1]
	b _0200CD2E
	.align 2, 0
_0200CB9C: .4byte 0x00FF00FF
_0200CBA0:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200CBB0
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _0200CBAE
	b _0200CD2E
_0200CBAE:
	b _0200CBBA
_0200CBB0:
	ldr r1, _0200CBF0 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_0200CBBA:
	ldr r0, _0200CBF4 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _0200CBF8 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _0200CC08
	ldr r2, _0200CBF0 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200CBFC @ =0x0400010C
	ldr r0, _0200CC00 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _0200CC04 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _0200CC28
	.align 2, 0
_0200CBF0: .4byte 0x04000128
_0200CBF4: .4byte 0x04000120
_0200CBF8: .4byte 0x04000202
_0200CBFC: .4byte 0x0400010C
_0200CC00: .4byte 0x00C0F318
_0200CC04: .4byte 0x04000208
_0200CC08:
	ldr r2, _0200CC34 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0200CC38 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0200CC28:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0200CD2E
	.align 2, 0
_0200CC34: .4byte 0x04000128
_0200CC38: .4byte 0x04000208
_0200CC3C:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200CC4C
	adds r3, r0, #0
	b _0200CC52
_0200CC4C:
	cmp r6, #0
	bge _0200CC52
	movs r3, #0
_0200CC52:
	cmp r2, #0
	beq _0200CC58
	str r3, [r2]
_0200CC58:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0200CC9A
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _0200CC7E
_0200CC66:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, #1
	str r2, [r4, #0x14]
	cmp r2, r3
	blt _0200CC66
_0200CC7E:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _0200CCA2
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0200CC9A
	movs r0, #1
	strb r0, [r5, #3]
_0200CC9A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _0200CCAA
_0200CCA2:
	ldr r0, _0200CCB4 @ =gUnk_03007470
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _0200CD2E
_0200CCAA:
	ldr r1, _0200CCB4 @ =gUnk_03007470
	movs r0, #3
	strb r0, [r1, #1]
	b _0200CD2E
	.align 2, 0
_0200CCB4: .4byte gUnk_03007470
_0200CCB8:
	ldr r3, _0200CD08 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200CD0C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200CD10 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0200CD14 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _0200CD18 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _0200CCF6
	ldr r1, _0200CD1C @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_0200CCF6:
	ldr r1, _0200CD20 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _0200CD2A
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0200CD2E
	.align 2, 0
_0200CD08: .4byte 0x04000208
_0200CD0C: .4byte 0x04000200
_0200CD10: .4byte 0x0000FF3F
_0200CD14: .4byte 0x04000128
_0200CD18: .4byte 0x04000120
_0200CD1C: .4byte 0x0400010C
_0200CD20: .4byte 0x04000202
_0200CD24:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0200CD2E
_0200CD2A:
	movs r0, #1
	b _0200CD38
_0200CD2E:
	ldr r1, _0200CD40 @ =gUnk_03007470
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_0200CD38:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0200CD40: .4byte gUnk_03007470

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x0200CD44
	push {r4, r5, lr}
	ldr r2, _0200CD68 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _0200CD6C @ =gUnk_03007470
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _0200CD74
	ldr r0, _0200CD70 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _0200CDBC
	b _0200CDAA
	.align 2, 0
_0200CD68: .4byte 0x04000120
_0200CD6C: .4byte gUnk_03007470
_0200CD70: .4byte 0x04000128
_0200CD74:
	ldr r1, _0200CD84 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _0200CD8C
	ldr r0, _0200CD88 @ =0xFEFEFEFE
	str r0, [r2]
	b _0200CDD2
	.align 2, 0
_0200CD84: .4byte 0x0400010E
_0200CD88: .4byte 0xFEFEFEFE
_0200CD8C:
	ldr r0, _0200CDA0 @ =0x00001FFF
	cmp r3, r0
	bgt _0200CDA4
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0200CDD2
	.align 2, 0
_0200CDA0: .4byte 0x00001FFF
_0200CDA4:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _0200CDD2
_0200CDAA:
	ldr r0, _0200CDB8 @ =0xFEFEFEFE
	cmp r4, r0
	beq _0200CDD2
	subs r0, r1, #1
	str r0, [r5, #8]
	b _0200CDD2
	.align 2, 0
_0200CDB8: .4byte 0xFEFEFEFE
_0200CDBC:
	ldr r0, _0200CDCC @ =0x00001FFF
	cmp r3, r0
	bgt _0200CDD0
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _0200CDD2
	.align 2, 0
_0200CDCC: .4byte 0x00001FFF
_0200CDD0:
	str r4, [r5, #0xc]
_0200CDD2:
	ldr r1, [r5, #8]
	ldr r0, _0200CDFC @ =0x00002002
	cmp r1, r0
	bgt _0200CDF4
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _0200CDF4
	ldr r2, _0200CE00 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0200CE04 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0200CDF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200CDFC: .4byte 0x00002002
_0200CE00: .4byte 0x04000128
_0200CE04: .4byte 0x0400010E

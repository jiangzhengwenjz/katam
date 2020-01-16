	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x08157E54
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08157E70 @ =gSio32MultiLoadArea
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #4
	bls _08157E64
	b _0815802A
_08157E64:
	lsls r0, r1, #2
	ldr r1, _08157E74 @ =_08157E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08157E70: .4byte gSio32MultiLoadArea
_08157E74: .4byte _08157E78
_08157E78: @ jump table
	.4byte _08157E8C @ case 0
	.4byte _08157EA4 @ case 1
	.4byte _08157F40 @ case 2
	.4byte _08157FB2 @ case 3
	.4byte _08158020 @ case 4
_08157E8C:
	ldr r0, [r5]
	ldr r1, _08157EA0 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08157E98
	b _0815802A
_08157E98:
	movs r0, #1
	strb r0, [r5, #1]
	b _0815802A
	.align 2, 0
_08157EA0: .4byte 0x00FF00FF
_08157EA4:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08157EB4
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08157EB2
	b _0815802A
_08157EB2:
	b _08157EBE
_08157EB4:
	ldr r1, _08157EF4 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08157EBE:
	ldr r0, _08157EF8 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08157EFC @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08157F0C
	ldr r2, _08157EF4 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08157F00 @ =0x0400010C
	ldr r0, _08157F04 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08157F08 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08157F2C
	.align 2, 0
_08157EF4: .4byte 0x04000128
_08157EF8: .4byte 0x04000120
_08157EFC: .4byte 0x04000202
_08157F00: .4byte 0x0400010C
_08157F04: .4byte 0x00C0F318
_08157F08: .4byte 0x04000208
_08157F0C:
	ldr r2, _08157F38 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08157F3C @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08157F2C:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0815802A
	.align 2, 0
_08157F38: .4byte 0x04000128
_08157F3C: .4byte 0x04000208
_08157F40:
	ldr r6, [r5, #8]
	adds r4, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08157F50
	adds r4, r0, #0
	b _08157F56
_08157F50:
	cmp r6, #0
	bge _08157F56
	movs r4, #0
_08157F56:
	cmp r2, #0
	beq _08157F5C
	str r4, [r2]
_08157F5C:
	ldrb r0, [r5]
	cmp r0, #1
	beq _08157F9E
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bge _08157F82
	adds r3, r5, #0
	ldr r7, [r5, #4]
_08157F6C:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _08157F6C
_08157F82:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08157FA6
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08157F9E
	movs r0, #1
	strb r0, [r5, #3]
_08157F9E:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08157FAC
_08157FA6:
	ldrb r0, [r5, #2]
	cmp r0, #0x8c
	bne _0815802A
_08157FAC:
	movs r0, #3
	strb r0, [r5, #1]
	b _0815802A
_08157FB2:
	ldr r3, _08158004 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08158008 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0815800C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08158010 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08158014 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08157FF0
	ldr r1, _08158018 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08157FF0:
	ldr r0, _0815801C @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08158026
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0815802A
	.align 2, 0
_08158004: .4byte 0x04000208
_08158008: .4byte 0x04000200
_0815800C: .4byte 0x0000FF3F
_08158010: .4byte 0x04000128
_08158014: .4byte 0x04000120
_08158018: .4byte 0x0400010C
_0815801C: .4byte 0x04000202
_08158020:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0815802A
_08158026:
	movs r0, #1
	b _08158032
_0815802A:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	movs r0, #0
_08158032:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x08158038
	push {r4, r5, lr}
	ldr r2, _0815805C @ =0x04000120
	ldr r3, [r2]
	ldr r5, _08158060 @ =gSio32MultiLoadArea
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _08158068
	ldr r0, _08158064 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _081580B4
	b _081580A2
	.align 2, 0
_0815805C: .4byte 0x04000120
_08158060: .4byte gSio32MultiLoadArea
_08158064: .4byte 0x04000128
_08158068:
	ldr r1, _0815807C @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _08158084
	ldr r0, _08158080 @ =0xFEFEFEFE
	str r0, [r2]
	b _081580CA
	.align 2, 0
_0815807C: .4byte 0x0400010E
_08158080: .4byte 0xFEFEFEFE
_08158084:
	ldr r0, _08158098 @ =0x00001FFF
	cmp r1, r0
	bgt _0815809C
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _081580CA
	.align 2, 0
_08158098: .4byte 0x00001FFF
_0815809C:
	ldr r0, [r4, #0xc]
	str r0, [r2]
	b _081580CA
_081580A2:
	ldr r0, _081580B0 @ =0xFEFEFEFE
	cmp r3, r0
	beq _081580CA
	subs r0, r2, #1
	str r0, [r5, #8]
	b _081580CA
	.align 2, 0
_081580B0: .4byte 0xFEFEFEFE
_081580B4:
	ldr r0, _081580C4 @ =0x00001FFF
	cmp r2, r0
	bgt _081580C8
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _081580CA
	.align 2, 0
_081580C4: .4byte 0x00001FFF
_081580C8:
	str r3, [r4, #0xc]
_081580CA:
	ldr r1, [r4, #8]
	ldr r0, _081580F4 @ =0x00002002
	cmp r1, r0
	bgt _081580EC
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _081580EC
	ldr r2, _081580F8 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _081580FC @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_081580EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081580F4: .4byte 0x00002002
_081580F8: .4byte 0x04000128
_081580FC: .4byte 0x0400010E

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x08158100
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _0815817C @ =0x04000208
	strh r6, [r3]
	ldr r2, _08158180 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158184 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _08158188 @ =gSio32MultiLoadArea
	ldr r2, _0815818C @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08158190 @ =0x04000128
	ldr r0, _08158194 @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _0815816E
	ldr r0, _08158198 @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08158150:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08158150
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _08158190 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_0815816E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815817C: .4byte 0x04000208
_08158180: .4byte 0x04000200
_08158184: .4byte 0x0000FF3F
_08158188: .4byte gSio32MultiLoadArea
_0815818C: .4byte 0x05000006
_08158190: .4byte 0x04000128
_08158194: .4byte 0x00002003
_08158198: .4byte 0x0400010C

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08159158
sub_08159158: @ 0x08159158
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08159174
	movs r2, #1
	rsbs r2, r2, #0
_08159166:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08159166
_08159174:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0815917C
sub_0815917C: @ 0x0815917C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _081591A8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _081591AC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _081591B0 @ =sub_08159158
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _081591B4 @ =sub_0815917C
	ldr r1, _081591B0 @ =sub_08159158
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _081591C4
	.align 2, 0
_081591A8: .4byte 0x04000204
_081591AC: .4byte 0x0000FFFC
_081591B0: .4byte sub_08159158
_081591B4: .4byte sub_0815917C
_081591B8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_081591C4:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081591B8
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0815A2A4
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081591E0
sub_081591E0: @ 0x081591E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08159218 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0815921C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08159210
	adds r1, r0, #0
_08159202:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _08159202
_08159210:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08159218: .4byte 0x04000204
_0815921C: .4byte 0x0000FFFC

	thumb_func_start sub_08159220
sub_08159220: @ 0x08159220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _08159246
	movs r2, #1
	rsbs r2, r2, #0
_08159230:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08159240
	subs r0, r3, #1
	b _08159248
_08159240:
	subs r4, #1
	cmp r4, r2
	bne _08159230
_08159246:
	movs r0, #0
_08159248:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08159250
sub_08159250: @ 0x08159250
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _0815927C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08159280 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08159284 @ =sub_08159220
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _08159288 @ =sub_08159250
	ldr r1, _08159284 @ =sub_08159220
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08159298
	.align 2, 0
_0815927C: .4byte 0x04000204
_08159280: .4byte 0x0000FFFC
_08159284: .4byte sub_08159220
_08159288: .4byte sub_08159250
_0815928C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08159298:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0815928C
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0815A2A4
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_081592B4
sub_081592B4: @ 0x081592B4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _081592C6
_081592C0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_081592C6:
	cmp r7, #2
	bhi _081592E4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_081591E0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08159250
	adds r3, r0, #0
	cmp r3, #0
	bne _081592C0
_081592E4:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateShooty
CreateShooty: @ 0x080C0D98
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C0DCC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C0DD0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0DD4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C0DDC
	.align 2, 0
_080C0DCC: .4byte ObjectMain
_080C0DD0: .4byte ObjectDestroy
_080C0DD4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C0DDC:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C0E06
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080C0E0E
_080C0E06:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C0E0E:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080C0E6C @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C0E6C: .4byte gUnk_08351648

	thumb_func_start sub_080C0E70
sub_080C0E70: @ 0x080C0E70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xc
	bls _080C0E86
	b _080C137C
_080C0E86:
	cmp r0, #0xb
	bne _080C0EA0
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C0EA0
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r5, #8]
_080C0EA0:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C0EF4
	cmp r0, #1
	bne _080C0EB0
	b _080C1030
_080C0EB0:
	ldr r2, _080C0EF0 @ =gUnk_083552C0
	adds r3, r5, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	mov r8, r2
	adds r4, r3, #0
	adds r7, r5, #0
	adds r7, #0x9e
	cmp r0, #0
	beq _080C0ED6
	b _080C1170
_080C0ED6:
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	beq _080C0EEE
	b _080C1234
_080C0EEE:
	b _080C116C
	.align 2, 0
_080C0EF0: .4byte gUnk_083552C0
_080C0EF4:
	ldr r3, _080C0FE4 @ =gUnk_08354FA8
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	mov r8, r0
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	adds r4, r2, #0
	adds r7, r5, #0
	adds r7, #0x9e
	cmp r0, #0
	bne _080C0F34
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	bne _080C1006
	movs r0, #0xff
	strb r0, [r4]
_080C0F34:
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	bne _080C1006
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C0F64
	subs r0, r1, #1
	strb r0, [r4]
_080C0F64:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C0F88
	mov r0, sb
	strb r1, [r0]
_080C0F88:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C0FE8
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
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C0FB6
	mov r0, r8
	strh r0, [r6]
_080C0FB6:
	ldrb r2, [r4]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C1006
	mov r1, r8
	mov r0, ip
	strh r1, [r0]
	b _080C1006
	.align 2, 0
_080C0FE4: .4byte gUnk_08354FA8
_080C0FE8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	mov r2, ip
	strh r0, [r2]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
_080C1006:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r3, ip
	strh r0, [r3]
	b _080C125C
_080C1030:
	ldr r3, _080C1120 @ =gUnk_08355134
	adds r2, r5, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	mov r8, r0
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	adds r4, r2, #0
	adds r7, r5, #0
	adds r7, #0x9e
	cmp r0, #0
	bne _080C1070
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	bne _080C1142
	movs r0, #0xff
	strb r0, [r4]
_080C1070:
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	bne _080C1142
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C10A0
	subs r0, r1, #1
	strb r0, [r4]
_080C10A0:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C10C4
	mov r0, sb
	strb r1, [r0]
_080C10C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C1124
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
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C10F2
	mov r0, r8
	strh r0, [r6]
_080C10F2:
	ldrb r2, [r4]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C1142
	mov r1, r8
	mov r0, ip
	strh r1, [r0]
	b _080C1142
	.align 2, 0
_080C1120: .4byte gUnk_08355134
_080C1124:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	mov r2, ip
	strh r0, [r2]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
_080C1142:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #4]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r3, ip
	strh r0, [r3]
	b _080C125C
_080C116C:
	movs r0, #0xff
	strb r0, [r4]
_080C1170:
	ldrb r0, [r7]
	movs r1, #0x83
	adds r1, r1, r5
	mov sb, r1
	adds r6, r5, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r5
	mov ip, r2
	cmp r0, #0
	bne _080C1234
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C11A0
	subs r0, r1, #1
	strb r0, [r4]
_080C11A0:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C11C4
	mov r3, sb
	strb r1, [r3]
_080C11C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C1216
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080C11EE
	strh r2, [r6]
_080C11EE:
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080C1234
	mov r0, ip
	strh r2, [r0]
	b _080C1234
_080C1216:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r6]
_080C1234:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #4]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #6]
	mov r3, ip
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r1, ip
	strh r0, [r1]
_080C125C:
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0xb
	bne _080C126C
	b _080C1412
_080C126C:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C127A
	b _080C1412
_080C127A:
	movs r0, #0x1e
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r5, #0x40]
	subs r2, r3, r0
	adds r4, r1, #0
	cmp r2, #0
	blt _080C129C
	ldr r0, _080C1298 @ =0x00001FFF
	cmp r2, r0
	ble _080C12A4
	b _080C12DA
	.align 2, 0
_080C1298: .4byte 0x00001FFF
_080C129C:
	subs r1, r0, r3
	ldr r0, _080C1314 @ =0x00001FFF
	cmp r1, r0
	bgt _080C12DA
_080C12A4:
	ldr r2, _080C1318 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C131C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080C1320 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C12DA
	movs r2, #0
	movs r0, #0xf
	mov r1, sb
	strb r0, [r1]
	ldrh r1, [r6]
	adds r0, r5, #0
	adds r0, #0xa0
	strh r1, [r0]
	mov r3, ip
	ldrh r0, [r3]
	adds r1, r5, #0
	adds r1, #0xa2
	strh r0, [r1]
	strh r2, [r6]
	strh r2, [r3]
_080C12DA:
	ldr r0, [r4]
	ldr r3, [r5, #0x40]
	ldr r2, [r0, #0x40]
	cmp r3, r2
	ble _080C12EE
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C1300
_080C12EE:
	cmp r3, r2
	blt _080C12F4
	b _080C1412
_080C12F4:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1300
	b _080C1412
_080C1300:
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	ldr r1, [r5, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C1328
	ldr r0, _080C1324 @ =0x000017FF
	cmp r2, r0
	ble _080C1330
	b _080C1412
	.align 2, 0
_080C1314: .4byte 0x00001FFF
_080C1318: .4byte gRngVal
_080C131C: .4byte 0x00196225
_080C1320: .4byte 0x3C6EF35F
_080C1324: .4byte 0x000017FF
_080C1328:
	subs r1, r1, r0
	ldr r0, _080C136C @ =0x000017FF
	cmp r1, r0
	bgt _080C1412
_080C1330:
	ldr r2, _080C1370 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C1374 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C1378 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1412
	movs r2, #0
	movs r0, #0xd
	mov r3, sb
	strb r0, [r3]
	ldrh r1, [r6]
	adds r0, r5, #0
	adds r0, #0xa0
	strh r1, [r0]
	mov r0, ip
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa2
	strh r1, [r0]
	strh r2, [r6]
	mov r1, ip
	strh r2, [r1]
	b _080C1412
	.align 2, 0
_080C136C: .4byte 0x000017FF
_080C1370: .4byte gRngVal
_080C1374: .4byte 0x00196225
_080C1378: .4byte 0x3C6EF35F
_080C137C:
	cmp r0, #0xf
	bne _080C1396
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C13BC
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080C1CA0
	b _080C13BC
_080C1396:
	cmp r0, #0x10
	bne _080C13BC
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C13BC
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
	adds r0, #0x52
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
_080C13BC:
	adds r4, r5, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #0xd
	bne _080C13D6
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C1412
	movs r0, #0xe
	strb r0, [r4]
	b _080C1412
_080C13D6:
	cmp r0, #0xe
	bne _080C1412
	ldrb r0, [r5, #1]
	cmp r0, #6
	bne _080C13E6
	adds r0, r5, #0
	bl sub_080C1818
_080C13E6:
	ldrb r0, [r5, #1]
	cmp r0, #0x18
	bne _080C13F2
	adds r0, r5, #0
	bl sub_080C1818
_080C13F2:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C1412
	movs r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
	adds r0, #0x52
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
_080C1412:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1420
sub_080C1420: @ 0x080C1420
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	bge _080C1448
	ldr r2, _080C1444 @ =sub_080C1658
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080C1452
	.align 2, 0
_080C1444: .4byte sub_080C1658
_080C1448:
	ldr r2, _080C1470 @ =sub_080C14A4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080C1452:
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C1474
	movs r0, #1
	orrs r2, r0
	b _080C147A
	.align 2, 0
_080C1470: .4byte sub_080C14A4
_080C1474:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C147A:
	str r2, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1494
	rsbs r0, r3, #0
	strh r0, [r2]
_080C1494:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x64
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C14A4
sub_080C14A4: @ 0x080C14A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xb
	bne _080C14C8
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C14C8
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080C14C8:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x44]
	ldr r0, [r0, #0x44]
	adds r5, r1, #0
	cmp r2, r0
	ble _080C14EE
	subs r1, #0x5a
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C1504
	b _080C1502
_080C14EE:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C156C @ =0xFFFFFEB0
	cmp r0, r2
	bge _080C1504
_080C1502:
	strh r2, [r1]
_080C1504:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	ldr r1, _080C1570 @ =0x02570000
	cmp r0, r1
	bgt _080C1544
	ldr r0, [r5]
	ldr r3, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r3, r1
	ldr r2, [r4, #0x40]
	ldr r1, [r4, #8]
	cmp r2, r0
	ble _080C152C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C153C
_080C152C:
	ldr r6, _080C1574 @ =0xFFFFC000
	adds r0, r3, r6
	cmp r2, r0
	bge _080C1544
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C1588
_080C153C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
_080C1544:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1588
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080C1578 @ =0xFFFFFF00
	cmp r2, r0
	bge _080C157C
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080C15A6
	.align 2, 0
_080C156C: .4byte 0xFFFFFEB0
_080C1570: .4byte 0x02570000
_080C1574: .4byte 0xFFFFC000
_080C1578: .4byte 0xFFFFFF00
_080C157C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080C15A6
	strh r0, [r1]
	b _080C15A6
_080C1588:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080C15A4
	ldr r2, _080C15C4 @ =0xFFFFFF00
	cmp r0, r2
	bge _080C15A6
_080C15A4:
	strh r2, [r1]
_080C15A6:
	adds r0, r4, #0
	bl sub_080C1FE4
	ldr r0, [r4, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r5]
	ldr r1, [r1, #0x44]
	cmp r0, r1
	bge _080C15CC
	ldr r0, _080C15C8 @ =sub_080C1658
	str r0, [r4, #0x78]
	b _080C1642
	.align 2, 0
_080C15C4: .4byte 0xFFFFFF00
_080C15C8: .4byte sub_080C1658
_080C15CC:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C1642
	movs r0, #0x3c
	strb r0, [r1]
	ldr r0, [r5]
	ldr r3, [r4, #0x40]
	ldr r2, [r0, #0x40]
	cmp r3, r2
	ble _080C15F4
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C1602
_080C15F4:
	cmp r3, r2
	bge _080C1642
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C1642
_080C1602:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C161C
	ldr r0, _080C1618 @ =0x00003FFF
	cmp r2, r0
	ble _080C1624
	b _080C1642
	.align 2, 0
_080C1618: .4byte 0x00003FFF
_080C161C:
	subs r1, r1, r0
	ldr r0, _080C1648 @ =0x00003FFF
	cmp r1, r0
	bgt _080C1642
_080C1624:
	ldr r2, _080C164C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C1650 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080C1654 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1642
	adds r0, r4, #0
	bl sub_080C20B8
_080C1642:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C1648: .4byte 0x00003FFF
_080C164C: .4byte gRngVal
_080C1650: .4byte 0x00196225
_080C1654: .4byte 0x3C6EF35F

	thumb_func_start sub_080C1658
sub_080C1658: @ 0x080C1658
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xb
	bne _080C167C
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C167C
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
_080C167C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	ldr r1, _080C16E4 @ =0x02570000
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, r1
	bgt _080C16C0
	ldr r0, [r5]
	ldr r3, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, r1
	ldr r2, [r4, #0x40]
	ldr r1, [r4, #8]
	cmp r2, r0
	ble _080C16A8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C16B8
_080C16A8:
	ldr r6, _080C16E8 @ =0xFFFFF000
	adds r0, r3, r6
	cmp r2, r0
	bge _080C16C0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C1700
_080C16B8:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
_080C16C0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1700
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080C16EC @ =0xFFFFFE80
	cmp r2, r0
	bge _080C16F4
	ldr r0, _080C16F0 @ =0x0000FE80
	strh r0, [r1]
	b _080C171E
	.align 2, 0
_080C16E4: .4byte 0x02570000
_080C16E8: .4byte 0xFFFFF000
_080C16EC: .4byte 0xFFFFFE80
_080C16F0: .4byte 0x0000FE80
_080C16F4:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r2, r0
	ble _080C171E
	strh r0, [r1]
	b _080C171E
_080C1700:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080C171C
	ldr r2, _080C1738 @ =0xFFFFFE80
	cmp r0, r2
	bge _080C171E
_080C171C:
	strh r2, [r1]
_080C171E:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C173C
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C174A
	b _080C1746
	.align 2, 0
_080C1738: .4byte 0xFFFFFE80
_080C173C:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C174A
_080C1746:
	movs r0, #0
	strh r0, [r1]
_080C174A:
	adds r0, r4, #0
	bl sub_080C1FE4
	ldr r0, [r4, #0x44]
	movs r6, #0xc0
	lsls r6, r6, #6
	adds r0, r0, r6
	ldr r1, [r5]
	ldr r1, [r1, #0x44]
	cmp r0, r1
	ble _080C176C
	ldr r0, _080C1768 @ =sub_080C14A4
	str r0, [r4, #0x78]
	b _080C17BE
	.align 2, 0
_080C1768: .4byte sub_080C14A4
_080C176C:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C17BE
	movs r0, #0x3c
	strb r0, [r1]
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C1798
	ldr r0, _080C1794 @ =0x00003FFF
	cmp r2, r0
	ble _080C17A0
	b _080C17BE
	.align 2, 0
_080C1794: .4byte 0x00003FFF
_080C1798:
	subs r1, r1, r0
	ldr r0, _080C17C4 @ =0x00003FFF
	cmp r1, r0
	bgt _080C17BE
_080C17A0:
	ldr r2, _080C17C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C17CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C17D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C17BE
	adds r0, r4, #0
	bl sub_080C2144
_080C17BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C17C4: .4byte 0x00003FFF
_080C17C8: .4byte gRngVal
_080C17CC: .4byte 0x00196225
_080C17D0: .4byte 0x3C6EF35F

	thumb_func_start sub_080C17D4
sub_080C17D4: @ 0x080C17D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080C1FE4
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x19
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080C1804 @ =0xFD760000
	cmp r0, r1
	bge _080C17F2
	ldr r0, _080C1808 @ =0x0000FD76
	strh r0, [r2]
_080C17F2:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	ble _080C180C
	adds r0, r4, #0
	bl sub_080C21BC
	b _080C1810
	.align 2, 0
_080C1804: .4byte 0xFD760000
_080C1808: .4byte 0x0000FD76
_080C180C:
	adds r0, r1, #1
	strh r0, [r4, #4]
_080C1810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1818
sub_080C1818: @ 0x080C1818
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080C1850 @ =sub_080C1A1C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C1854 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C1858
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C1860
	.align 2, 0
_080C1850: .4byte sub_080C1A1C
_080C1854: .4byte sub_0803DCCC
_080C1858:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C1860:
	adds r4, r0, #0
	bl sub_0803E380
	movs r7, #0
	movs r6, #2
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r7, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C196C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C18B6
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C18B6:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080C1970 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	strh r7, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C18F8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C18F8:
	movs r2, #2
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, _080C1974 @ =0x00000337
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r2, sb
	strb r2, [r5]
	ldr r2, _080C1978 @ =gKirbys
	ldr r0, _080C197C @ =gUnk_0203AD3C
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
	bne _080C1984
	ldr r6, _080C1980 @ =0x0000030A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C1988
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080C1988
	.align 2, 0
_080C196C: .4byte gUnk_03000510
_080C1970: .4byte 0x20000043
_080C1974: .4byte 0x00000337
_080C1978: .4byte gKirbys
_080C197C: .4byte gUnk_0203AD3C
_080C1980: .4byte 0x0000030A
_080C1984:
	mov r2, sb
	strb r2, [r5]
_080C1988:
	ldr r1, _080C1A04 @ =gKirbys
	ldr r0, _080C1A08 @ =gUnk_0203AD3C
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
	bne _080C19F4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C19B4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C19F4
_080C19B4:
	ldr r1, _080C1A0C @ =gUnk_08D60FA4
	ldr r4, _080C1A10 @ =gSongTable
	ldr r2, _080C1A14 @ =0x00000A84
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C19DA
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C19F4
_080C19DA:
	cmp r3, #0
	beq _080C19EC
	ldr r0, _080C1A18 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C19F4
_080C19EC:
	movs r0, #0xa8
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C19F4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1A04: .4byte gKirbys
_080C1A08: .4byte gUnk_0203AD3C
_080C1A0C: .4byte gUnk_08D60FA4
_080C1A10: .4byte gSongTable
_080C1A14: .4byte 0x00000A84
_080C1A18: .4byte gUnk_0203AD10

	thumb_func_start sub_080C1A1C
sub_080C1A1C: @ 0x080C1A1C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080C1A3C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C1A40
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C1A48
	.align 2, 0
_080C1A3C: .4byte gCurTask
_080C1A40:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C1A48:
	adds r5, r0, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C1A56
	b _080C1C96
_080C1A56:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x56
	ldr r6, _080C1A88 @ =gCurLevelInfo
	cmp r0, #0
	bne _080C1ACA
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080C1A90
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, _080C1A8C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C1A92
	.align 2, 0
_080C1A88: .4byte gCurLevelInfo
_080C1A8C: .4byte 0x0000065E
_080C1A90:
	movs r1, #0xff
_080C1A92:
	cmp r1, #0xff
	beq _080C1ACA
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C1B64 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080C1B68 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C1ACA:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C1AF2
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080C1AF2:
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r2, [r5, #0x40]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080C1B34
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080C1B34
	adds r0, r6, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080C1B34
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080C1B34
	adds r0, r5, #0
	bl sub_0806FC70
_080C1B34:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C1B4A
	ldr r3, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _080C1B6C
_080C1B4A:
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080C1C96
	.align 2, 0
_080C1B64: .4byte gUnk_02022EB0
_080C1B68: .4byte gUnk_02022F50
_080C1B6C:
	ldr r2, _080C1BD4 @ =gKirbys
	ldr r0, _080C1BD8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080C1C1C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080C1BE4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C1C3C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C1BDC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C1BE0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080C1C3C
	.align 2, 0
_080C1BD4: .4byte gKirbys
_080C1BD8: .4byte gUnk_0203AD3C
_080C1BDC: .4byte 0xFFF7FFFF
_080C1BE0: .4byte 0x0400000A
_080C1BE4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C1C3C
	movs r0, #0xc
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C1C14 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C1C18 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C1C3C
	.align 2, 0
_080C1C14: .4byte 0xFFF7FFFF
_080C1C18: .4byte 0x0400000A
_080C1C1C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080C1C32
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r3
	cmp r4, #0
	bne _080C1C32
	bl VramFree
	str r4, [r5, #0x10]
_080C1C32:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C1C3C:
	ldr r2, _080C1C7C @ =gKirbys
	ldr r0, _080C1C80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080C1C88
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C1C90
	ldr r6, _080C1C84 @ =0x0000030A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C1C90
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080C1C90
	.align 2, 0
_080C1C7C: .4byte gKirbys
_080C1C80: .4byte gUnk_0203AD3C
_080C1C84: .4byte 0x0000030A
_080C1C88:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080C1C90:
	adds r0, r5, #0
	bl sub_0806F8BC
_080C1C96:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1CA0
sub_080C1CA0: @ 0x080C1CA0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _080C1CB4 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C1CB8 @ =gUnk_020229E0
	b _080C1CD0
	.align 2, 0
_080C1CB4: .4byte gUnk_020229D4
_080C1CB8: .4byte gUnk_020229E0
_080C1CBC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C1CD8
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C1CD0:
	cmp r0, #0
	bne _080C1CBC
	orrs r2, r3
	str r2, [r1]
_080C1CD8:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xda
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
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080C1D42
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
_080C1D42:
	ldr r0, [r1, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateShootyBomb
CreateShootyBomb: @ 0x080C1D54
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C1D88 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C1D8C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C1D90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080C1D98
	.align 2, 0
_080C1D88: .4byte ObjectMain
_080C1D8C: .4byte ObjectDestroy
_080C1D90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080C1D98:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, _080C1E2C @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080C1E30 @ =sub_0809F840
	str r0, [r5, #0x7c]
	subs r2, #2
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080C1E34 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C1E2C: .4byte 0x20000043
_080C1E30: .4byte sub_0809F840
_080C1E34: .4byte gUnk_08351648

	thumb_func_start sub_080C1E38
sub_080C1E38: @ 0x080C1E38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C1EB8 @ =sub_080C1ED4
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, _080C1EBC @ =gKirbys
	ldr r0, _080C1EC0 @ =gUnk_0203AD3C
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
	bne _080C1EB0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C1E70
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C1EB0
_080C1E70:
	ldr r1, _080C1EC4 @ =gUnk_08D60FA4
	ldr r4, _080C1EC8 @ =gSongTable
	ldr r2, _080C1ECC @ =0x00000A34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C1E96
	movs r1, #0xa3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C1EB0
_080C1E96:
	cmp r3, #0
	beq _080C1EA8
	ldr r0, _080C1ED0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C1EB0
_080C1EA8:
	movs r0, #0xa3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C1EB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C1EB8: .4byte sub_080C1ED4
_080C1EBC: .4byte gKirbys
_080C1EC0: .4byte gUnk_0203AD3C
_080C1EC4: .4byte gUnk_08D60FA4
_080C1EC8: .4byte gSongTable
_080C1ECC: .4byte 0x00000A34
_080C1ED0: .4byte gUnk_0203AD10

	thumb_func_start sub_080C1ED4
sub_080C1ED4: @ 0x080C1ED4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080C1F70 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C1F74 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080C1F2C
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080C1F2C
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080C1F2C
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080C1F2C
	adds r0, r4, #0
	bl sub_0806FC70
_080C1F2C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x58]
	movs r1, #0xc
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x62
	cmp r0, #0
	beq _080C1F54
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	bge _080C1F54
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080C1F54:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080C1F6A
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C1F6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C1F70: .4byte 0xFFFFFEFF
_080C1F74: .4byte gCurLevelInfo

	thumb_func_start sub_080C1F78
sub_080C1F78: @ 0x080C1F78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080C1FE4
	adds r5, r4, #0
	adds r5, #0x52
	ldrh r0, [r5]
	adds r0, #0x19
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r6, _080C1FD0 @ =0x0000028A
	cmp r0, r6
	ble _080C1F96
	strh r6, [r5]
_080C1F96:
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	ble _080C1FD8
	ldr r2, _080C1FD4 @ =sub_080C17D4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	strh r0, [r2]
	strh r6, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1FC4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C1FC4:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	b _080C1FDC
	.align 2, 0
_080C1FD0: .4byte 0x0000028A
_080C1FD4: .4byte sub_080C17D4
_080C1FD8:
	adds r0, r1, #1
	strh r0, [r4, #4]
_080C1FDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1FE4
sub_080C1FE4: @ 0x080C1FE4
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xb
	beq _080C2040
	adds r0, r1, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080C2006
	movs r0, #4
	b _080C203E
_080C2006:
	cmp r1, #0xc0
	ble _080C200E
	movs r0, #3
	b _080C203E
_080C200E:
	cmp r1, #0x40
	ble _080C2016
	movs r0, #2
	b _080C203E
_080C2016:
	ldr r0, _080C2020 @ =0xFFFFFEC0
	cmp r1, r0
	bge _080C2024
	movs r0, #8
	b _080C203E
	.align 2, 0
_080C2020: .4byte 0xFFFFFEC0
_080C2024:
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C2030
	movs r0, #7
	b _080C203E
_080C2030:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C203C
	movs r0, #1
	b _080C203E
_080C203C:
	movs r0, #0
_080C203E:
	strb r0, [r2]
_080C2040:
	pop {r0}
	bx r0

	thumb_func_start sub_080C2044
sub_080C2044: @ 0x080C2044
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080C206C
	adds r0, r4, #0
	bl sub_080C1420
	b _080C20B0
_080C206C:
	ldr r2, _080C208C @ =sub_080C0E70
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C2090
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C2098
	.align 2, 0
_080C208C: .4byte sub_080C0E70
_080C2090:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C2098:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C20AC
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #6
	strb r0, [r1]
_080C20AC:
	movs r0, #0x78
	strh r0, [r4, #4]
_080C20B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C20B8
sub_080C20B8: @ 0x080C20B8
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xd
	strb r1, [r2]
	ldr r1, _080C20D0 @ =sub_080C20D4
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080C20D0: .4byte sub_080C20D4

	thumb_func_start sub_080C20D4
sub_080C20D4: @ 0x080C20D4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xd
	bne _080C20F2
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2138
	movs r0, #0xe
	strb r0, [r2]
	b _080C2138
_080C20F2:
	cmp r0, #0xe
	bne _080C2138
	ldrb r0, [r4, #1]
	cmp r0, #6
	bne _080C2102
	adds r0, r4, #0
	bl sub_080C1818
_080C2102:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	bne _080C210E
	adds r0, r4, #0
	bl sub_080C1818
_080C210E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2138
	ldr r1, [r4, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	bge _080C2134
	ldr r0, _080C2130 @ =sub_080C1658
	b _080C2136
	.align 2, 0
_080C2130: .4byte sub_080C1658
_080C2134:
	ldr r0, _080C2140 @ =sub_080C14A4
_080C2136:
	str r0, [r4, #0x78]
_080C2138:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2140: .4byte sub_080C14A4

	thumb_func_start sub_080C2144
sub_080C2144: @ 0x080C2144
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0xf
	strb r1, [r2]
	ldr r1, _080C215C @ =sub_080C2160
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080C215C: .4byte sub_080C2160

	thumb_func_start sub_080C2160
sub_080C2160: @ 0x080C2160
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xf
	bne _080C2184
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C21B4
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r2, #0
	bl sub_080C1CA0
	b _080C21B4
_080C2184:
	cmp r0, #0x10
	bne _080C21B4
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C21B4
	ldr r1, [r2, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	bge _080C21B0
	ldr r0, _080C21AC @ =sub_080C1658
	b _080C21B2
	.align 2, 0
_080C21AC: .4byte sub_080C1658
_080C21B0:
	ldr r0, _080C21B8 @ =sub_080C14A4
_080C21B2:
	str r0, [r2, #0x78]
_080C21B4:
	pop {r0}
	bx r0
	.align 2, 0
_080C21B8: .4byte sub_080C14A4

	thumb_func_start sub_080C21BC
sub_080C21BC: @ 0x080C21BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C21F8 @ =sub_080C1F78
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080C21FC @ =0x0000FD76
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C21E8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C21E8:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C21F8: .4byte sub_080C1F78
_080C21FC: .4byte 0x0000FD76

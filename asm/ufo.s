	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateUFO
CreateUFO: @ 0x080C49B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C49EC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C49F0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C49F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C49FC
	.align 2, 0
_080C49EC: .4byte ObjectMain
_080C49F0: .4byte ObjectDestroy
_080C49F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C49FC:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4A26
	ldr r0, [r5, #8]
	orrs r0, r2
	b _080C4A2E
_080C4A26:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C4A2E:
	str r0, [r5, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r0, [r5, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C4A78
	ldr r1, _080C4A74 @ =gUnk_08355660
	adds r0, r5, #0
	bl sub_08088398
	b _080C4A80
	.align 2, 0
_080C4A74: .4byte gUnk_08355660
_080C4A78:
	ldr r1, _080C4AC4 @ =gUnk_0835564C
	adds r0, r5, #0
	bl sub_08085CE8
_080C4A80:
	ldr r2, _080C4AC8 @ =gUnk_08351648
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
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C4ABA
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #8]
_080C4ABA:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C4AC4: .4byte gUnk_0835564C
_080C4AC8: .4byte gUnk_08351648

	thumb_func_start sub_080C4ACC
sub_080C4ACC: @ 0x080C4ACC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4B2C @ =sub_080C4B70
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	strh r0, [r4, #4]
	ldr r2, _080C4B30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C4B34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C4B38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080C4B3C @ =0x00001999
	cmp r2, r0
	blt _080C4B20
	adds r3, r0, #0
_080C4B0E:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	bhi _080C4B20
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _080C4B0E
_080C4B20:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _080C4B40
	adds r0, r1, #5
	b _080C4B42
	.align 2, 0
_080C4B2C: .4byte sub_080C4B70
_080C4B30: .4byte gRngVal
_080C4B34: .4byte 0x00196225
_080C4B38: .4byte 0x3C6EF35F
_080C4B3C: .4byte 0x00001999
_080C4B40:
	adds r0, r1, #2
_080C4B42:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r2, [r3]
	lsrs r0, r2, #4
	adds r0, r1, r0
	movs r1, #0xf
	ands r0, r1
	ands r1, r2
	lsls r0, r0, #4
	orrs r1, r0
	strb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bhi _080C4B68
	adds r0, r1, #1
	strb r0, [r3]
_080C4B68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4B70
sub_080C4B70: @ 0x080C4B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C4B92
	b _080C4CB2
_080C4B92:
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsls r2, r0, #1
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #3
	bne _080C4BC0
	adds r0, r7, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldr r1, [r1, #0x40]
	movs r3, #0xe0
	lsls r3, r3, #6
	mov sl, r0
	ldr r2, [r7, #0x40]
	cmp r1, r2
	ble _080C4BBC
	movs r3, #0xc8
	lsls r3, r3, #8
_080C4BBC:
	movs r1, #0
	b _080C4BE4
_080C4BC0:
	ldr r1, _080C4C5C @ =gUnk_0835562C
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x10
	movs r2, #0xac
	adds r2, r2, r7
	mov sl, r2
	ldr r2, [r7, #0x40]
_080C4BE4:
	mov r4, sl
	ldr r0, [r4]
	lsls r3, r3, #0x10
	mov r8, r3
	asrs r3, r3, #0x10
	mov r8, r3
	ldr r4, [r0, #0x40]
	add r4, r8
	subs r4, r4, r2
	asrs r4, r4, #8
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r1, r1, #0x10
	ldr r0, [r0, #0x44]
	adds r0, r0, r1
	ldr r5, [r7, #0x44]
	subs r5, r5, r0
	asrs r5, r5, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r4, r4, #6
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #6
	adds r1, #2
	strh r0, [r1]
	mov r4, sl
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	add r0, r8
	ldr r1, [r7, #0x40]
	subs r2, r0, r1
	mov r3, sb
	cmp r2, #0
	blt _080C4C64
	ldr r0, _080C4C60 @ =0x000007FF
	cmp r2, r0
	ble _080C4C6C
	b _080C4CB2
	.align 2, 0
_080C4C5C: .4byte gUnk_0835562C
_080C4C60: .4byte 0x000007FF
_080C4C64:
	subs r1, r1, r0
	ldr r0, _080C4C88 @ =0x000007FF
	cmp r1, r0
	bgt _080C4CB2
_080C4C6C:
	mov r1, sl
	ldr r0, [r1]
	asrs r1, r3, #0x10
	ldr r0, [r0, #0x44]
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C4C90
	ldr r0, _080C4C8C @ =0x000003FF
	cmp r2, r0
	ble _080C4C98
	b _080C4CB2
	.align 2, 0
_080C4C88: .4byte 0x000007FF
_080C4C8C: .4byte 0x000003FF
_080C4C90:
	subs r1, r1, r0
	ldr r0, _080C4CA8 @ =0x000003FF
	cmp r1, r0
	bgt _080C4CB2
_080C4C98:
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #3
	bne _080C4CAC
	adds r0, r7, #0
	bl sub_080C5340
	b _080C4CB2
	.align 2, 0
_080C4CA8: .4byte 0x000003FF
_080C4CAC:
	adds r0, r7, #0
	bl sub_080C4CC0
_080C4CB2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4CC0
sub_080C4CC0: @ 0x080C4CC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4D0C @ =sub_080C4D10
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r3, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, #1
	strh r0, [r4, #4]
	cmp r0, #2
	ble _080C4CF0
	movs r0, #0
	strh r0, [r4, #4]
_080C4CF0:
	ldrb r0, [r2]
	adds r1, r0, #4
	strb r1, [r2]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #8
	bls _080C4D04
	movs r0, #0xf3
	ands r1, r0
	strb r1, [r2]
_080C4D04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4D0C: .4byte sub_080C4D10

	thumb_func_start sub_080C4D10
sub_080C4D10: @ 0x080C4D10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080C4D2C
	b _080C4ECC
_080C4D2C:
	ldr r2, _080C4E18 @ =gUnk_083555D8
	mov r3, ip
	adds r3, #0x9f
	ldrb r7, [r3]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	movs r5, #0x9e
	add r5, ip
	mov r8, r5
	cmp r0, #0
	bne _080C4D62
	ldrb r0, [r5]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080C4E48
	movs r0, #0xff
	strb r0, [r3]
_080C4D62:
	mov r1, r8
	ldrb r0, [r1]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080C4E48
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C4D8C
	subs r0, r1, #1
	strb r0, [r3]
_080C4D8C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, r8
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C4DB4
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080C4DB4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C4E1C
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080C4DEE
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4DEE
	rsbs r0, r2, #0
	strh r0, [r4]
_080C4DEE:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r5, ip
	adds r5, #0x52
	cmp r1, r0
	beq _080C4E48
	strh r2, [r5]
	b _080C4E48
	.align 2, 0
_080C4E18: .4byte gUnk_083555D8
_080C4E1C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4E68
	rsbs r0, r2, #0
	strh r0, [r4]
_080C4E48:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4E68
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080C4E7A
_080C4E68:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080C4E7A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r1, r8
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
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C4EBA
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080C4EBA
	mov r2, ip
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	b _080C4ED2
_080C4EBA:
	mov r0, ip
	ldr r3, [r0, #0x58]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080C4ED2
	strh r3, [r4]
	strh r3, [r5]
	b _080C4ED2
_080C4ECC:
	mov r0, ip
	bl sub_080C4ACC
_080C4ED2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4EDC
sub_080C4EDC: @ 0x080C4EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080C4F14 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C4F18 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C4F1C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C4F24
	.align 2, 0
_080C4F14: .4byte sub_08070580
_080C4F18: .4byte sub_0803DCCC
_080C4F1C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C4F24:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r2, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _080C4FF4 @ =gUnk_03000510
	mov ip, r1
	ldrb r1, [r1, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov r8, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _080C4F7C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C4F7C:
	ldr r0, _080C4FF8 @ =sub_080C5190
	str r0, [r4, #0x78]
	ldr r1, _080C4FFC @ =sub_080C53C0
	str r1, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strh r2, [r0]
	subs r0, #0x27
	strb r5, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _080C5000 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r7, ip
	ldrb r1, [r7, #4]
	adds r0, r5, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, r8
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080C4FD4
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r4, #8]
_080C4FD4:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080C5008
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	ldr r7, _080C5004 @ =0xFFFFF800
	adds r0, r0, r7
	b _080C5016
	.align 2, 0
_080C4FF4: .4byte gUnk_03000510
_080C4FF8: .4byte sub_080C5190
_080C4FFC: .4byte sub_080C53C0
_080C5000: .4byte 0x20000043
_080C5004: .4byte 0xFFFFF800
_080C5008:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
_080C5016:
	str r0, [r4, #0x40]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r0, _080C50A8 @ =0x00000326
	mov r8, r0
	movs r0, #4
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	mov r3, r8
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	movs r1, #0
	mov ip, r1
	mov r2, ip
	strb r2, [r5]
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080C50BE
	ldr r2, _080C50AC @ =gKirbys
	ldr r0, _080C50B0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r3, [r7]
	cmp r0, r3
	bne _080C50B8
	ldr r0, _080C50B4 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C5102
	adds r0, r6, #0
	b _080C50EE
	.align 2, 0
_080C50A8: .4byte 0x00000326
_080C50AC: .4byte gKirbys
_080C50B0: .4byte gUnk_0203AD3C
_080C50B4: .4byte gUnk_08351648
_080C50B8:
	mov r2, ip
	strb r2, [r5]
	b _080C5102
_080C50BE:
	ldr r2, _080C50F8 @ =gKirbys
	ldr r0, _080C50FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080C5100
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C5102
	mov r0, r8
_080C50EE:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080C5102
	.align 2, 0
_080C50F8: .4byte gKirbys
_080C50FC: .4byte gUnk_0203AD3C
_080C5100:
	strb r3, [r5]
_080C5102:
	ldr r1, _080C5178 @ =gKirbys
	ldr r0, _080C517C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080C516A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C512A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C516A
_080C512A:
	ldr r1, _080C5180 @ =gUnk_08D60FA4
	ldr r4, _080C5184 @ =gSongTable
	ldr r2, _080C5188 @ =0x000009E4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C5150
	movs r7, #0x9e
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C516A
_080C5150:
	cmp r3, #0
	beq _080C5162
	ldr r0, _080C518C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C516A
_080C5162:
	movs r0, #0x9e
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C516A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5178: .4byte gKirbys
_080C517C: .4byte gUnk_0203AD3C
_080C5180: .4byte gUnk_08D60FA4
_080C5184: .4byte gSongTable
_080C5188: .4byte 0x000009E4
_080C518C: .4byte gUnk_0203AD10

	thumb_func_start sub_080C5190
sub_080C5190: @ 0x080C5190
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	ldr r2, _080C5200 @ =gKirbys
	ldr r0, _080C5204 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C5248
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C5210
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C526C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C5208 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C520C @ =0x0400000A
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
	b _080C526C
	.align 2, 0
_080C5200: .4byte gKirbys
_080C5204: .4byte gUnk_0203AD3C
_080C5208: .4byte 0xFFF7FFFF
_080C520C: .4byte 0x0400000A
_080C5210:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C526C
	movs r0, #4
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C5240 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C5244 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C526C
	.align 2, 0
_080C5240: .4byte 0xFFF7FFFF
_080C5244: .4byte 0x0400000A
_080C5248:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080C5262
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080C5262
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080C5262:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C526C:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080C52BE
	ldr r2, _080C52A8 @ =gKirbys
	ldr r0, _080C52AC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C52B4
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C5316
	ldr r0, _080C52B0 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r6, [r0]
	b _080C52E6
	.align 2, 0
_080C52A8: .4byte gKirbys
_080C52AC: .4byte gUnk_0203AD3C
_080C52B0: .4byte gUnk_08351648
_080C52B4:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080C5316
_080C52BE:
	ldr r2, _080C5304 @ =gKirbys
	ldr r0, _080C5308 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C5310
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C5316
	ldr r6, _080C530C @ =0x00000326
_080C52E6:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C5316
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080C5316
	.align 2, 0
_080C5304: .4byte gKirbys
_080C5308: .4byte gUnk_0203AD3C
_080C530C: .4byte 0x00000326
_080C5310:
	adds r0, r5, #0
	adds r0, #0x2f
	strb r3, [r0]
_080C5316:
	adds r0, r5, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C5336
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5336
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #1
	b _080C5338
_080C5336:
	movs r0, #0
_080C5338:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080C5340
sub_080C5340: @ 0x080C5340
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C5378 @ =sub_080C5398
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
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
	ble _080C537C
	movs r0, #1
	orrs r2, r0
	b _080C5382
	.align 2, 0
_080C5378: .4byte sub_080C5398
_080C537C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C5382:
	str r2, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5398
sub_080C5398: @ 0x080C5398
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C53AE
	adds r0, r2, #0
	bl sub_080C4ACC
	b _080C53BA
_080C53AE:
	ldrb r0, [r2, #1]
	cmp r0, #0x17
	bne _080C53BA
	adds r0, r2, #0
	bl sub_080C4EDC
_080C53BA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C53C0
sub_080C53C0: @ 0x080C53C0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2a
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	ldr r1, _080C53E8 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080C53EC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080C53E8: .4byte 0xFFFFFDFF
_080C53EC: .4byte 0xFFFFFEFF

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateTwister
CreateTwister: @ 0x080BBD38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BBD6C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BBD70 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BBD74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BBD7C
	.align 2, 0
_080BBD6C: .4byte ObjectMain
_080BBD70: .4byte ObjectDestroy
_080BBD74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BBD7C:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BBD9C
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080BBDA4
_080BBD9C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BBDA4:
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
	ldr r2, _080BBE04 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BBE04: .4byte gUnk_08351648

	thumb_func_start sub_080BBE08
sub_080BBE08: @ 0x080BBE08
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r3, [r2, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r2, #8]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	bne _080BBEB4
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080BBE3E
	eors r3, r5
	str r3, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BBE3E:
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _080BBE7C
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BBE62
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _080BBE74
	b _080BBE70
_080BBE62:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8c
	ble _080BBE74
_080BBE70:
	strb r5, [r1]
	strh r4, [r2, #4]
_080BBE74:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	b _080BBEB4
_080BBE7C:
	ldr r0, [r2, #8]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	beq _080BBEB4
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080BBEB4
	ldrb r0, [r1]
	cmp r0, #2
	beq _080BBEAE
	strb r3, [r1]
	strh r4, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x52
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
	b _080BBEB4
_080BBEAE:
	adds r0, r2, #0
	bl sub_080BBEBC
_080BBEB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BBEBC
sub_080BBEBC: @ 0x080BBEBC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080BBEE0 @ =sub_080BBF54
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BBEE4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080BBEEC
	.align 2, 0
_080BBEE0: .4byte sub_080BBF54
_080BBEE4:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BBEEC:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	movs r4, #8
	rsbs r4, r4, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080BBF32
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #1
	orrs r1, r2
	b _080BBF3C
_080BBF32:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
_080BBF3C:
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r0, [r2]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x78
	strh r0, [r5, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080BBF54
sub_080BBF54: @ 0x080BBF54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0x40
	mov sb, r1
	cmp r0, #0
	beq _080BBF7C
	movs r2, #0xc0
	mov sb, r2
_080BBF7C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080BBF88
	b _080BC0FA
_080BBF88:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080BBFC6
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080BBFC6:
	ldr r3, [r4, #0x44]
	ldr r1, _080BBFF4 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #2
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080BBFF8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _080BC03C
	movs r0, #0x40
	strh r0, [r1]
	b _080BC03C
	.align 2, 0
_080BBFF4: .4byte 0xFFFFF000
_080BBFF8:
	cmp r3, r0
	bge _080BC016
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x40
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080BC03C
	strh r2, [r1]
	b _080BC03C
_080BC016:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080BC030
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BC03C
	b _080BC03A
_080BC030:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BC03C
_080BC03A:
	strh r7, [r1]
_080BC03C:
	ldr r3, [r4, #0x40]
	ldr r2, _080BC080 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080BC088
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x99
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080BC07A
	b _080BC206
_080BC07A:
	ldr r2, _080BC084 @ =0xFFFFFD00
	b _080BC228
	.align 2, 0
_080BC080: .4byte 0xFFFFF000
_080BC084: .4byte 0xFFFFFD00
_080BC088:
	cmp r3, r0
	ble _080BC0DC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080BC0BC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x99
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BC0B8 @ =0xFFFFFD00
	cmp r0, r2
	bge _080BC0B0
	b _080BC206
_080BC0B0:
	movs r2, #0xc0
	lsls r2, r2, #2
	b _080BC202
	.align 2, 0
_080BC0B8: .4byte 0xFFFFFD00
_080BC0BC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x99
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080BC0D4
	b _080BC206
_080BC0D4:
	ldr r2, _080BC0D8 @ =0xFFFFFD00
	b _080BC228
	.align 2, 0
_080BC0D8: .4byte 0xFFFFFD00
_080BC0DC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080BC0EC
	b _080BC24E
_080BC0EC:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080BC0F8
	b _080BC25C
_080BC0F8:
	b _080BC258
_080BC0FA:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080BC136
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080BC136:
	ldr r3, [r4, #0x44]
	ldr r1, _080BC164 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	adds r0, #2
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080BC168
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _080BC1AC
	movs r0, #0x40
	strh r0, [r1]
	b _080BC1AC
	.align 2, 0
_080BC164: .4byte 0xFFFFF000
_080BC168:
	cmp r3, r0
	bge _080BC186
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x40
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080BC1AC
	strh r2, [r1]
	b _080BC1AC
_080BC186:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080BC1A0
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BC1AC
	b _080BC1AA
_080BC1A0:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BC1AC
_080BC1AA:
	strh r7, [r1]
_080BC1AC:
	ldr r3, [r4, #0x40]
	ldr r2, _080BC1D4 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080BC1D8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080BC210
	.align 2, 0
_080BC1D4: .4byte 0xFFFFF000
_080BC1D8:
	cmp r3, r0
	ble _080BC234
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080BC210
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x66
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BC20C @ =0xFFFFFE00
	cmp r0, r2
	blt _080BC206
	movs r2, #0x80
	lsls r2, r2, #2
_080BC202:
	cmp r0, r2
	ble _080BC25C
_080BC206:
	strh r2, [r1]
	b _080BC25C
	.align 2, 0
_080BC20C: .4byte 0xFFFFFE00
_080BC210:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x66
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080BC206
	ldr r2, _080BC230 @ =0xFFFFFE00
_080BC228:
	cmp r0, r2
	bge _080BC25C
	b _080BC206
	.align 2, 0
_080BC230: .4byte 0xFFFFFE00
_080BC234:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080BC24E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BC25C
	b _080BC258
_080BC24E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BC25C
_080BC258:
	movs r0, #0
	strh r0, [r1]
_080BC25C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BC2C0
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC27E
	adds r0, r4, #0
	bl sub_080BC4A8
	b _080BC32E
_080BC27E:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r3, r0, r1
	cmp r3, #0
	blt _080BC29C
	ldr r0, _080BC298 @ =0x00003FFF
	cmp r3, r0
	ble _080BC2A4
	b _080BC2B4
	.align 2, 0
_080BC298: .4byte 0x00003FFF
_080BC29C:
	subs r1, r1, r0
	ldr r0, _080BC2B0 @ =0x00003FFF
	cmp r1, r0
	bgt _080BC2B4
_080BC2A4:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	movs r0, #0x78
	b _080BC2B6
	.align 2, 0
_080BC2B0: .4byte 0x00003FFF
_080BC2B4:
	movs r0, #0x28
_080BC2B6:
	strh r0, [r4, #4]
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080BC2C0:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BC32E
	ldr r1, _080BC33C @ =gUnk_02020EE0
	ldr r0, _080BC340 @ =gUnk_0203AD3C
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
	bne _080BC32E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BC2F2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BC32E
_080BC2F2:
	ldr r1, _080BC344 @ =gUnk_08D60FA4
	ldr r4, _080BC348 @ =gSongTable
	ldr r5, _080BC34C @ =0x00000A1C
	adds r0, r4, r5
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BC316
	ldr r1, _080BC350 @ =0x00000A18
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BC32E
_080BC316:
	cmp r3, #0
	beq _080BC328
	ldr r0, _080BC354 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC32E
_080BC328:
	ldr r0, _080BC358 @ =0x00000143
	bl m4aSongNumStart
_080BC32E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC33C: .4byte gUnk_02020EE0
_080BC340: .4byte gUnk_0203AD3C
_080BC344: .4byte gUnk_08D60FA4
_080BC348: .4byte gSongTable
_080BC34C: .4byte 0x00000A1C
_080BC350: .4byte 0x00000A18
_080BC354: .4byte gUnk_0203AD10
_080BC358: .4byte 0x00000143

	thumb_func_start sub_080BC35C
sub_080BC35C: @ 0x080BC35C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080BC3DC
	adds r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080BC432
	ldr r2, _080BC3D4 @ =sub_080BBE08
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #5
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080BC3D8 @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	str r0, [r4, #0x5c]
	b _080BC432
	.align 2, 0
_080BC3D4: .4byte sub_080BBE08
_080BC3D8: .4byte 0xFFFFFEBF
_080BC3DC:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0xe7
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #2
	cmp r0, r5
	ble _080BC3F4
	strh r5, [r2]
_080BC3F4:
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC432
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, r5
	bne _080BC432
	ldr r0, [r4, #0x58]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080BC432
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r4, #8]
	ldr r1, _080BC43C @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	str r2, [r4, #0x5c]
_080BC432:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BC43C: .4byte 0xFFFFFEBF

	thumb_func_start sub_080BC440
sub_080BC440: @ 0x080BC440
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080BC4A0 @ =sub_080BBE08
	movs r1, #0
	bl ObjectSetFunc
	movs r1, #5
	rsbs r1, r1, #0
	movs r5, #6
	rsbs r5, r5, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080BC4A4 @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC4A0: .4byte sub_080BBE08
_080BC4A4: .4byte 0xFFFFFEBF

	thumb_func_start sub_080BC4A8
sub_080BC4A8: @ 0x080BC4A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC4C0 @ =sub_080BC35C
	movs r1, #2
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BC4C0: .4byte sub_080BC35C

	thumb_func_start CreateWheelie
CreateWheelie: @ 0x080BC4C4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BC4F8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BC4FC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BC500
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BC508
	.align 2, 0
_080BC4F8: .4byte ObjectMain
_080BC4FC: .4byte ObjectDestroy
_080BC500:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BC508:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BC528
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080BC530
_080BC528:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BC530:
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
	ldr r2, _080BC590 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BC590: .4byte gUnk_08351648

	thumb_func_start sub_080BC594
sub_080BC594: @ 0x080BC594
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC5C8 @ =sub_080BC604
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080BC5D2
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC5CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080BC5D0
	.align 2, 0
_080BC5C8: .4byte sub_080BC604
_080BC5CC:
	movs r0, #0xc0
	lsls r0, r0, #1
_080BC5D0:
	strh r0, [r1]
_080BC5D2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC5E6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BC5E6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080BC5FA
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080BC5FA:
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC604
sub_080BC604: @ 0x080BC604
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bls _080BC626
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	b _080BC708
_080BC626:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080BC644
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080BC644
	adds r0, r4, #0
	bl sub_080BC720
	b _080BC708
_080BC644:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC65A
	adds r0, r4, #0
	bl sub_080BC9B0
	b _080BC708
_080BC65A:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BC66A
	adds r0, r4, #0
	bl sub_080BCBB8
	b _080BC708
_080BC66A:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BC708
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BC708
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC692
	movs r0, #0xf
	b _080BC694
_080BC692:
	movs r0, #0x1e
_080BC694:
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080BC6B8
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC6C4
	b _080BC6C2
_080BC6B8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC6C4
_080BC6C2:
	movs r5, #1
_080BC6C4:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BC6DC
	ldr r0, _080BC6D8 @ =0x00001FFF
	cmp r2, r0
	ble _080BC6E4
	b _080BC6E6
	.align 2, 0
_080BC6D8: .4byte 0x00001FFF
_080BC6DC:
	subs r1, r1, r0
	ldr r0, _080BC710 @ =0x00001FFF
	cmp r1, r0
	bgt _080BC6E6
_080BC6E4:
	movs r5, #1
_080BC6E6:
	cmp r5, #0
	beq _080BC708
	ldr r2, _080BC714 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC718 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC71C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC708
	adds r0, r4, #0
	bl sub_080BCB78
_080BC708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC710: .4byte 0x00001FFF
_080BC714: .4byte gRngVal
_080BC718: .4byte 0x00196225
_080BC71C: .4byte 0x3C6EF35F

	thumb_func_start sub_080BC720
sub_080BC720: @ 0x080BC720
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC754 @ =sub_080BC790
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC758
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	adds r2, r1, #0
	cmp r0, #0
	beq _080BC776
	movs r0, #0xe0
	lsls r0, r0, #2
	b _080BC774
	.align 2, 0
_080BC754: .4byte sub_080BC790
_080BC758:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	adds r2, r1, #0
	cmp r0, #0
	beq _080BC776
	movs r0, #0xc0
	lsls r0, r0, #2
_080BC774:
	strh r0, [r2]
_080BC776:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC786
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BC786:
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BC790
sub_080BC790: @ 0x080BC790
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC7B2
	adds r0, r4, #0
	bl sub_080BC9B0
	b _080BC860
_080BC7B2:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC7C2
	adds r0, r4, #0
	bl sub_080BCBB8
	b _080BC860
_080BC7C2:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BC860
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BC860
	movs r5, #0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC7EA
	movs r0, #0xf
	b _080BC7EC
_080BC7EA:
	movs r0, #0x1e
_080BC7EC:
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	ble _080BC810
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC81C
	b _080BC81A
_080BC810:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC81C
_080BC81A:
	movs r5, #1
_080BC81C:
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BC834
	ldr r0, _080BC830 @ =0x00001FFF
	cmp r2, r0
	ble _080BC83C
	b _080BC83E
	.align 2, 0
_080BC830: .4byte 0x00001FFF
_080BC834:
	subs r1, r1, r0
	ldr r0, _080BC868 @ =0x00001FFF
	cmp r1, r0
	bgt _080BC83E
_080BC83C:
	movs r5, #1
_080BC83E:
	cmp r5, #0
	beq _080BC860
	ldr r2, _080BC86C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC870 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC874 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC860
	adds r0, r4, #0
	bl sub_080BCB78
_080BC860:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BC868: .4byte 0x00001FFF
_080BC86C: .4byte gRngVal
_080BC870: .4byte 0x00196225
_080BC874: .4byte 0x3C6EF35F

	thumb_func_start sub_080BC878
sub_080BC878: @ 0x080BC878
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080BC898
	adds r0, r2, #0
	adds r0, #0xc
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BC8A8
	b _080BC8A4
_080BC898:
	adds r0, r2, #0
	subs r0, #0xc
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BC8A8
_080BC8A4:
	movs r0, #0
	strh r0, [r1]
_080BC8A8:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC8E0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080BC8DA
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080BC8DA
	adds r0, r4, #0
	bl sub_080BC928
	b _080BC920
_080BC8DA:
	adds r0, r4, #0
	bl sub_080897A0
_080BC8E0:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC8F6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080BC8F6:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080BC91A
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BC920
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	b _080BC920
_080BC91A:
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080BC920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC928
sub_080BC928: @ 0x080BC928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BC958 @ =sub_080BCB94
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080BC95C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BC960 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BC964 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BC968 @ =0x00005554
	cmp r2, r0
	bhi _080BC96C
	movs r1, #0
	b _080BC976
	.align 2, 0
_080BC958: .4byte sub_080BCB94
_080BC95C: .4byte gRngVal
_080BC960: .4byte 0x00196225
_080BC964: .4byte 0x3C6EF35F
_080BC968: .4byte 0x00005554
_080BC96C:
	ldr r0, _080BC984 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BC976
	movs r1, #1
_080BC976:
	cmp r1, #1
	beq _080BC992
	cmp r1, #1
	bgt _080BC988
	cmp r1, #0
	beq _080BC98E
	b _080BC9A8
	.align 2, 0
_080BC984: .4byte 0x0000AAA9
_080BC988:
	cmp r1, #2
	beq _080BC996
	b _080BC9A8
_080BC98E:
	movs r0, #5
	b _080BC9A6
_080BC992:
	movs r0, #0x23
	b _080BC9A6
_080BC996:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC9A4
	movs r0, #0xf
	b _080BC9A6
_080BC9A4:
	movs r0, #0x41
_080BC9A6:
	strh r0, [r4, #4]
_080BC9A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BC9B0
sub_080BC9B0: @ 0x080BC9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BCA48 @ =sub_080BCA64
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080BCA4C @ =gUnk_02020EE0
	ldr r0, _080BCA50 @ =gUnk_0203AD3C
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
	bne _080BCA40
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BCA00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BCA40
_080BCA00:
	ldr r1, _080BCA54 @ =gUnk_08D60FA4
	ldr r4, _080BCA58 @ =gSongTable
	ldr r2, _080BCA5C @ =0x00000A24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BCA26
	movs r1, #0xa2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BCA40
_080BCA26:
	cmp r3, #0
	beq _080BCA38
	ldr r0, _080BCA60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BCA40
_080BCA38:
	movs r0, #0xa2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080BCA40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCA48: .4byte sub_080BCA64
_080BCA4C: .4byte gUnk_02020EE0
_080BCA50: .4byte gUnk_0203AD3C
_080BCA54: .4byte gUnk_08D60FA4
_080BCA58: .4byte gSongTable
_080BCA5C: .4byte 0x00000A24
_080BCA60: .4byte gUnk_0203AD10

	thumb_func_start sub_080BCA64
sub_080BCA64: @ 0x080BCA64
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r4, #4
	orrs r0, r4
	str r0, [r2, #8]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080BCA8A
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r3]
_080BCA8A:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCAC0
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	bne _080BCABC
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BCABC
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080BC720
	b _080BCAC0
_080BCABC:
	movs r0, #5
	strb r0, [r3]
_080BCAC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BCAC8
sub_080BCAC8: @ 0x080BCAC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080BCAEE
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080BCAEE:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCB0E
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BCB0E:
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BCB6C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080BCB4C
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BCB54
	ldr r2, _080BCB48 @ =sub_080BC878
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
	b _080BCB6C
	.align 2, 0
_080BCB48: .4byte sub_080BC878
_080BCB4C:
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BCB5C
_080BCB54:
	adds r0, r4, #0
	bl sub_080BC720
	b _080BCB6C
_080BCB5C:
	ldr r2, _080BCB74 @ =sub_080BC878
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
_080BCB6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BCB74: .4byte sub_080BC878

	thumb_func_start sub_080BCB78
sub_080BCB78: @ 0x080BCB78
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BCB90 @ =sub_080BC878
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_080897A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCB90: .4byte sub_080BC878

	thumb_func_start sub_080BCB94
sub_080BCB94: @ 0x080BCB94
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BCBB2
	adds r0, r2, #0
	bl sub_080BC720
_080BCBB2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BCBB8
sub_080BCBB8: @ 0x080BCBB8
	push {lr}
	ldr r2, _080BCBC8 @ =sub_080BCAC8
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080BCBC8: .4byte sub_080BCAC8

	thumb_func_start CreateBatty
CreateBatty: @ 0x080BCBCC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BCC00 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BCC04 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BCC08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BCC10
	.align 2, 0
_080BCC00: .4byte ObjectMain
_080BCC04: .4byte ObjectDestroy
_080BCC08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BCC10:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BCC30
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BCC38
_080BCC30:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BCC38:
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
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080BCC7C
	adds r0, r4, #0
	bl sub_080BD458
	b _080BCC96
_080BCC7C:
	ldr r2, _080BCCAC @ =gUnk_08351648
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
_080BCC96:
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
_080BCCAC: .4byte gUnk_08351648

	thumb_func_start sub_080BCCB0
sub_080BCCB0: @ 0x080BCCB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080BCDC4 @ =gUnk_08354978
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r0, [r5]
	mov r8, r0
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	adds r7, r2, #0
	cmp r0, #0
	bne _080BCD00
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r5, #0
	mov sb, r0
	adds r6, r4, #0
	adds r6, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BCDF4
	movs r0, #0xff
	strb r0, [r3]
_080BCD00:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r3, r5, #0
	mov sb, r0
	adds r6, r4, #0
	adds r6, #0x50
	movs r5, #0x52
	adds r5, r5, r4
	mov ip, r5
	cmp r1, #0
	bne _080BCDF4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BCD32
	subs r0, r1, #1
	strb r0, [r3]
_080BCD32:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BCD5A
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BCD5A:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BCDC8
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080BCD92
	strh r2, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCD92
	rsbs r0, r2, #0
	strh r0, [r6]
_080BCD92:
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r5, #2
	ldrsh r0, [r0, r5]
	movs r5, #0x52
	adds r5, r5, r4
	mov ip, r5
	cmp r1, r0
	beq _080BCDF4
	strh r2, [r5]
	b _080BCDF4
	.align 2, 0
_080BCDC4: .4byte gUnk_08354978
_080BCDC8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCE12
	rsbs r0, r2, #0
	strh r0, [r6]
_080BCDF4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BCE12
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r6]
	b _080BCE24
_080BCE12:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
_080BCE24:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	mov r3, ip
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r5, ip
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _080BCE80
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080BCE60
	cmp r0, #1
	bne _080BCE62
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_080BCE60:
	strh r0, [r6]
_080BCE62:
	ldr r0, [r1]
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	beq _080BCE70
	cmp r0, #1
	beq _080BCE76
	b _080BCE80
_080BCE70:
	mov r2, ip
	strh r0, [r2]
	b _080BCE80
_080BCE76:
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r3]
_080BCE80:
	ldr r1, _080BCED0 @ =gUnk_08354A14
	mov r5, sb
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r3, ip
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r5, ip
	strh r0, [r5]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080BCF18
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BCED8
	ldr r0, _080BCED4 @ =0x00003BFF
	cmp r2, r0
	ble _080BCEE0
	b _080BCF0C
	.align 2, 0
_080BCED0: .4byte gUnk_08354A14
_080BCED4: .4byte 0x00003BFF
_080BCED8:
	subs r1, r0, r3
	ldr r0, _080BCEF4 @ =0x00003BFF
	cmp r1, r0
	bgt _080BCF0C
_080BCEE0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BCEF8
	ldr r0, _080BCEF4 @ =0x00003BFF
	cmp r2, r0
	ble _080BCF00
	b _080BCF0C
	.align 2, 0
_080BCEF4: .4byte 0x00003BFF
_080BCEF8:
	subs r1, r1, r0
	ldr r0, _080BCF08 @ =0x00003BFF
	cmp r1, r0
	bgt _080BCF0C
_080BCF00:
	adds r0, r4, #0
	bl sub_080BD418
	b _080BCF18
	.align 2, 0
_080BCF08: .4byte 0x00003BFF
_080BCF0C:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	movs r0, #0
	strh r0, [r4, #4]
_080BCF18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080BCF24
sub_080BCF24: @ 0x080BCF24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BCFE0
	movs r0, #0xac
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0]
	ldr r4, [r1, #0x40]
	ldr r0, [r7, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r5, [r7, #0x44]
	ldr r0, [r1, #0x44]
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
	lsls r2, r4, #8
	mov sb, r2
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	adds r2, r0, #0
	lsls r3, r2, #8
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	mov r5, r8
	cmp r0, #0
	beq _080BCFAE
	movs r2, #0x1a
	mov r0, sb
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	b _080BCFC0
_080BCFAE:
	lsls r0, r4, #0xb
	add r0, sb
	lsrs r0, r0, #7
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	lsls r0, r2, #0xb
	adds r0, r0, r3
	lsrs r0, r0, #7
_080BCFC0:
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BCFD6
	ldr r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	b _080BCFDE
_080BCFD6:
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BCFDE:
	str r0, [r7, #8]
_080BCFE0:
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _080BD034 @ =gUnk_08354A14
	adds r3, r7, #0
	adds r3, #0x9f
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BD028
	adds r0, r7, #0
	bl sub_080BD48C
_080BD028:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD034: .4byte gUnk_08354A14

	thumb_func_start sub_080BD038
sub_080BD038: @ 0x080BD038
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfe
	bls _080BD07C
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080BD07C:
	ldr r3, [r4, #0x44]
	ldr r2, _080BD0B0 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa2
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	ble _080BD0B4
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080BD104
	strh r2, [r5]
	b _080BD104
	.align 2, 0
_080BD0B0: .4byte 0xFFFFFC00
_080BD0B4:
	cmp r3, r0
	bge _080BD0D8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BD0D4 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080BD104
	strh r2, [r5]
	b _080BD104
	.align 2, 0
_080BD0D4: .4byte 0xFFFFFE80
_080BD0D8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080BD0F6
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BD104
	b _080BD102
_080BD0F6:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BD104
_080BD102:
	strh r6, [r5]
_080BD104:
	ldr r3, [r4, #0x40]
	ldr r2, _080BD140 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080BD144
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080BD194
	b _080BD198
	.align 2, 0
_080BD140: .4byte 0xFFFFFC00
_080BD144:
	cmp r3, r0
	ble _080BD1A8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080BD17C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080BD178 @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	blt _080BD194
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080BD1D6
	strh r1, [r3]
	b _080BD1D6
	.align 2, 0
_080BD178: .4byte 0xFFFFFE80
_080BD17C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	ble _080BD198
_080BD194:
	strh r2, [r3]
	b _080BD1D6
_080BD198:
	ldr r1, _080BD1A4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080BD1D6
	strh r1, [r3]
	b _080BD1D6
	.align 2, 0
_080BD1A4: .4byte 0xFFFFFE80
_080BD1A8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _080BD1C6
	adds r0, r2, #0
	adds r0, #0x80
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BD1D6
	b _080BD1D2
_080BD1C6:
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BD1D6
_080BD1D2:
	movs r0, #0
	strh r0, [r3]
_080BD1D6:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD1F8
	ldr r0, _080BD1F4 @ =0x000003FF
	cmp r2, r0
	ble _080BD200
	b _080BD278
	.align 2, 0
_080BD1F4: .4byte 0x000003FF
_080BD1F8:
	subs r1, r1, r0
	ldr r0, _080BD218 @ =0x000003FF
	cmp r1, r0
	bgt _080BD278
_080BD200:
	movs r6, #0
	ldrsh r0, [r7, r6]
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD21C
	ldr r0, _080BD218 @ =0x000003FF
	cmp r2, r0
	ble _080BD224
	b _080BD278
	.align 2, 0
_080BD218: .4byte 0x000003FF
_080BD21C:
	subs r1, r1, r0
	ldr r0, _080BD238 @ =0x000003FF
	cmp r1, r0
	bgt _080BD278
_080BD224:
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080BD23C
	adds r0, r4, #0
	bl sub_080BD4D4
	b _080BD2A8
	.align 2, 0
_080BD238: .4byte 0x000003FF
_080BD23C:
	movs r0, #0
	strh r0, [r3]
	strh r0, [r5]
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bgt _080BD256
	cmp r0, #1
	blt _080BD256
	adds r0, r4, #0
	bl sub_080BD418
	b _080BD2A8
_080BD256:
	ldr r2, _080BD274 @ =sub_080BCCB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080BD2A8
	.align 2, 0
_080BD274: .4byte sub_080BCCB0
_080BD278:
	ldr r1, _080BD2B0 @ =gUnk_08354A14
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r4, [r3]
	adds r0, r0, r4
	strh r0, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r6, [r5]
	adds r0, r0, r6
	strh r0, [r5]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
_080BD2A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD2B0: .4byte gUnk_08354A14

	thumb_func_start sub_080BD2B4
sub_080BD2B4: @ 0x080BD2B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080BD37C
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080BD3BA
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r2, r3]
	adds r5, r0, #0
	cmp r1, #0
	bne _080BD2F0
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _080BD2F0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080BD31E
_080BD2F0:
	adds r6, r7, #0
	adds r6, #0xac
	ldr r0, [r6]
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	ldr r5, [r5]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov r8, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, r8
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BD36C
	b _080BD364
_080BD31E:
	adds r1, r7, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r7, #0x40]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _080BD33C
	ldr r0, _080BD338 @ =0x00003BFF
	cmp r2, r0
	ble _080BD344
	b _080BD36C
	.align 2, 0
_080BD338: .4byte 0x00003BFF
_080BD33C:
	subs r1, r0, r3
	ldr r0, _080BD358 @ =0x00003BFF
	cmp r1, r0
	bgt _080BD36C
_080BD344:
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	ldr r1, [r7, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD35C
	ldr r0, _080BD358 @ =0x00003BFF
	cmp r2, r0
	ble _080BD364
	b _080BD36C
	.align 2, 0
_080BD358: .4byte 0x00003BFF
_080BD35C:
	subs r1, r1, r0
	ldr r0, _080BD378 @ =0x00003BFF
	cmp r1, r0
	bgt _080BD36C
_080BD364:
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
_080BD36C:
	adds r0, r7, #0
	bl sub_0803D368
	str r0, [r6]
	movs r0, #0
	b _080BD3B8
	.align 2, 0
_080BD378: .4byte 0x00003BFF
_080BD37C:
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD3BA
	ldr r2, _080BD3C8 @ =sub_080BCF24
	adds r0, r7, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r7, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080BD3B8
	movs r0, #0xf0
_080BD3B8:
	strh r0, [r7, #4]
_080BD3BA:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD3C8: .4byte sub_080BCF24

	thumb_func_start sub_080BD3CC
sub_080BD3CC: @ 0x080BD3CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bgt _080BD3F0
	cmp r0, #1
	blt _080BD3F0
	adds r0, r4, #0
	bl sub_080BD418
	b _080BD40C
_080BD3F0:
	ldr r2, _080BD414 @ =sub_080BCCB0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080BD40C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD414: .4byte sub_080BCCB0

	thumb_func_start sub_080BD418
sub_080BD418: @ 0x080BD418
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BD454 @ =sub_080BCF24
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080BD44C
	movs r0, #0xf0
_080BD44C:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD454: .4byte sub_080BCF24

	thumb_func_start sub_080BD458
sub_080BD458: @ 0x080BD458
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080BD488 @ =sub_080BD2B4
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD488: .4byte sub_080BD2B4

	thumb_func_start sub_080BD48C
sub_080BD48C: @ 0x080BD48C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BD4D0 @ =sub_080BD038
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD4D0: .4byte sub_080BD038

	thumb_func_start sub_080BD4D4
sub_080BD4D4: @ 0x080BD4D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080BD520 @ =sub_080BD524
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x1e
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BD520: .4byte sub_080BD524

	thumb_func_start sub_080BD524
sub_080BD524: @ 0x080BD524
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD538
	adds r0, r2, #0
	bl sub_080BD458
_080BD538:
	pop {r0}
	bx r0

	thumb_func_start CreateMetalGuardian
CreateMetalGuardian: @ 0x080BD53C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BD570 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BD574 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BD578
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BD580
	.align 2, 0
_080BD570: .4byte ObjectMain
_080BD574: .4byte ObjectDestroy
_080BD578:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BD580:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BD5A0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BD5A8
_080BD5A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BD5A8:
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
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BD600
	adds r0, r4, #0
	bl sub_080BE25C
	b _080BD61A
_080BD600:
	ldr r2, _080BD630 @ =gUnk_08351648
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
_080BD61A:
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
_080BD630: .4byte gUnk_08351648

	thumb_func_start sub_080BD634
sub_080BD634: @ 0x080BD634
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0x83
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #2
	beq _080BD64C
	b _080BD834
_080BD64C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080BD744 @ =gUnk_08354A74
	adds r3, r4, #0
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
	movs r1, #0x9e
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080BD68C
	ldrb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0
	bne _080BD774
	movs r0, #0xff
	strb r0, [r3]
_080BD68C:
	mov r7, sb
	ldrb r0, [r7]
	adds r5, r4, #0
	adds r5, #0x50
	movs r1, #0x52
	adds r1, r1, r4
	mov ip, r1
	cmp r0, #0
	bne _080BD774
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
	bne _080BD6B8
	subs r0, r1, #1
	strb r0, [r3]
_080BD6B8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, sb
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BD6DE
	mov r7, r8
	strb r1, [r7]
_080BD6DE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BD748
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BD716
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD716
	rsbs r0, r2, #0
	strh r0, [r5]
_080BD716:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BD774
	strh r2, [r7]
	b _080BD774
	.align 2, 0
_080BD744: .4byte gUnk_08354A74
_080BD748:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD792
	rsbs r0, r2, #0
	strh r0, [r5]
_080BD774:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD792
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BD7A4
_080BD792:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BD7A4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080BD7D0
	b _080BD976
_080BD7D0:
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080BD820 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BD824 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080BD828 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080BD82C @ =0x00005554
	cmp r2, r0
	bls _080BD7FA
	ldr r0, _080BD830 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080BD7F4
	movs r1, #1
_080BD7F4:
	cmp r1, #0
	beq _080BD7FA
	b _080BD976
_080BD7FA:
	adds r1, r4, #0
	adds r1, #0x83
	movs r2, #0
	movs r0, #3
	strb r0, [r1]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	mov r0, ip
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	strh r2, [r5]
	mov r1, ip
	strh r2, [r1]
	b _080BD976
	.align 2, 0
_080BD820: .4byte gRngVal
_080BD824: .4byte 0x00196225
_080BD828: .4byte 0x3C6EF35F
_080BD82C: .4byte 0x00005554
_080BD830: .4byte 0x0000AAA9
_080BD834:
	cmp r0, #3
	bne _080BD920
	ldr r0, [r4, #8]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080BD84A
	b _080BD976
_080BD84A:
	mov r7, r8
	strb r2, [r7]
	ldr r2, _080BD870 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BD874 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BD878 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD87C
	adds r0, r4, #0
	bl sub_080BDE7C
	b _080BD976
	.align 2, 0
_080BD870: .4byte gRngVal
_080BD874: .4byte 0x00196225
_080BD878: .4byte 0x3C6EF35F
_080BD87C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080BDA70
	adds r0, r4, #0
	movs r1, #1
	bl sub_080BDA70
	adds r0, r4, #0
	movs r1, #2
	bl sub_080BDA70
	ldr r1, _080BD900 @ =gUnk_02020EE0
	ldr r0, _080BD904 @ =gUnk_0203AD3C
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
	bne _080BD976
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BD8C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BD976
_080BD8C0:
	ldr r1, _080BD908 @ =gUnk_08D60FA4
	ldr r4, _080BD90C @ =gSongTable
	ldr r2, _080BD910 @ =0x00000ABC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BD8E4
	ldr r7, _080BD914 @ =0x00000AB8
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BD976
_080BD8E4:
	cmp r3, #0
	beq _080BD8F6
	ldr r0, _080BD918 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BD976
_080BD8F6:
	ldr r0, _080BD91C @ =0x00000157
	bl m4aSongNumStart
	b _080BD976
	.align 2, 0
_080BD900: .4byte gUnk_02020EE0
_080BD904: .4byte gUnk_0203AD3C
_080BD908: .4byte gUnk_08D60FA4
_080BD90C: .4byte gSongTable
_080BD910: .4byte 0x00000ABC
_080BD914: .4byte 0x00000AB8
_080BD918: .4byte gUnk_0203AD10
_080BD91C: .4byte 0x00000157
_080BD920:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bhi _080BD956
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD948
	ldr r1, _080BD944 @ =gUnk_08354BA0
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x54
	strb r0, [r1]
	b _080BD956
	.align 2, 0
_080BD944: .4byte gUnk_08354BA0
_080BD948:
	ldr r1, _080BD984 @ =gUnk_08354BA0
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080BD956:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD976
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, #0x1d
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
	adds r0, #0x52
	ldrh r1, [r0]
	subs r0, #0x50
	strh r1, [r0]
_080BD976:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD984: .4byte gUnk_08354BA0

	thumb_func_start sub_080BD988
sub_080BD988: @ 0x080BD988
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080BD9AA
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080BD9AA:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BD9C8
	ldr r0, _080BD9C4 @ =0x00003FFF
	cmp r2, r0
	ble _080BD9D0
	b _080BD9F6
	.align 2, 0
_080BD9C4: .4byte 0x00003FFF
_080BD9C8:
	subs r1, r0, r3
	ldr r0, _080BD9E4 @ =0x00003FFF
	cmp r1, r0
	bgt _080BD9F6
_080BD9D0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BD9E8
	ldr r0, _080BD9E4 @ =0x00003FFF
	cmp r2, r0
	ble _080BD9F0
	b _080BD9F6
	.align 2, 0
_080BD9E4: .4byte 0x00003FFF
_080BD9E8:
	subs r1, r1, r0
	ldr r0, _080BD9FC @ =0x00003FFF
	cmp r1, r0
	bgt _080BD9F6
_080BD9F0:
	adds r0, r4, #0
	bl sub_080BE284
_080BD9F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BD9FC: .4byte 0x00003FFF

	thumb_func_start sub_080BDA00
sub_080BDA00: @ 0x080BDA00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080BDA1C
	strh r2, [r1]
_080BDA1C:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #2
	beq _080BDA32
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BDA32
	strb r1, [r2]
_080BDA32:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080BDA66
	ldr r2, _080BDA6C @ =sub_080BD634
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x5a
	strh r0, [r4, #4]
_080BDA66:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BDA6C: .4byte sub_080BD634

	thumb_func_start sub_080BDA70
sub_080BDA70: @ 0x080BDA70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080BDAB0 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BDAB4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BDAB8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BDAC0
	.align 2, 0
_080BDAB0: .4byte sub_08070580
_080BDAB4: .4byte sub_0803DCCC
_080BDAB8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BDAC0:
	adds r5, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	str r7, [r5, #0x70]
	movs r4, #0
	mov r1, ip
	strh r1, [r5, #4]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r2, _080BDBC8 @ =gUnk_03000510
	mov sb, r2
	ldrb r1, [r2, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r2, [r3]
	lsls r0, r2
	movs r2, #0x10
	mov r8, r2
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _080BDB1A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080BDB1A:
	ldr r0, _080BDBCC @ =sub_080BDD1C
	str r0, [r5, #0x78]
	ldr r1, _080BDBD0 @ =sub_080BE2C4
	str r1, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	mov r1, ip
	str r1, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strh r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x63
	strb r6, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080BDBD4 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	mov r0, sb
	ldrb r1, [r0, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, r8
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080BDB7E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r5, #8]
_080BDB7E:
	mov r0, sl
	cmp r0, #1
	beq _080BDBDC
	cmp r0, #2
	beq _080BDC38
	adds r4, r5, #0
	adds r4, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x52
	mov r1, ip
	strh r1, [r0]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDBD8 @ =0x00000311
	movs r0, #8
	b _080BDC72
	.align 2, 0
_080BDBC8: .4byte gUnk_03000510
_080BDBCC: .4byte sub_080BDD1C
_080BDBD0: .4byte sub_080BE2C4
_080BDBD4: .4byte 0x20000043
_080BDBD8: .4byte 0x00000311
_080BDBDC:
	adds r4, r5, #0
	adds r4, #0x50
	ldr r0, _080BDC30 @ =0x000005A2
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDC34 @ =0x00000311
	movs r0, #9
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_080708DC
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x18]
	b _080BDC80
	.align 2, 0
_080BDC30: .4byte 0x000005A2
_080BDC34: .4byte 0x00000311
_080BDC38:
	adds r4, r5, #0
	adds r4, #0x50
	ldr r0, _080BDCA0 @ =0x000005A2
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x52
	ldr r0, _080BDCA4 @ =0x0000FA5E
	strh r0, [r1]
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0xa
	bl sub_0803E2B0
	movs r2, #1
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r3, #0x12
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r3, _080BDCA8 @ =0x00000311
	movs r0, #9
_080BDC72:
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_080708DC
_080BDC80:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BDCB0
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x40]
	ldr r2, _080BDCAC @ =0xFFFFF800
	adds r0, r0, r2
	b _080BDCB8
	.align 2, 0
_080BDCA0: .4byte 0x000005A2
_080BDCA4: .4byte 0x0000FA5E
_080BDCA8: .4byte 0x00000311
_080BDCAC: .4byte 0xFFFFF800
_080BDCB0:
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_080BDCB8:
	str r0, [r5, #0x40]
	adds r4, r5, #0
	adds r4, #0x2f
	movs r3, #0
	strb r3, [r4]
	ldr r2, _080BDCFC @ =gUnk_02020EE0
	ldr r0, _080BDD00 @ =gUnk_0203AD3C
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
	bne _080BDD08
	ldr r5, _080BDD04 @ =0x00000311
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BDD0A
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BDD0A
	.align 2, 0
_080BDCFC: .4byte gUnk_02020EE0
_080BDD00: .4byte gUnk_0203AD3C
_080BDD04: .4byte 0x00000311
_080BDD08:
	strb r3, [r4]
_080BDD0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BDD1C
sub_080BDD1C: @ 0x080BDD1C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r2, _080BDD8C @ =gUnk_02020EE0
	ldr r0, _080BDD90 @ =gUnk_0203AD3C
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
	bne _080BDDD4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BDD9C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BDDF8
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
	ldr r1, _080BDD94 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BDD98 @ =0x0400000A
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
	b _080BDDF8
	.align 2, 0
_080BDD8C: .4byte gUnk_02020EE0
_080BDD90: .4byte gUnk_0203AD3C
_080BDD94: .4byte 0xFFF7FFFF
_080BDD98: .4byte 0x0400000A
_080BDD9C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BDDF8
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BDDCC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BDDD0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BDDF8
	.align 2, 0
_080BDDCC: .4byte 0xFFF7FFFF
_080BDDD0: .4byte 0x0400000A
_080BDDD4:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080BDDEE
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080BDDEE
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080BDDEE:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080BDDF8:
	ldr r2, _080BDE3C @ =gUnk_02020EE0
	ldr r0, _080BDE40 @ =gUnk_0203AD3C
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
	bne _080BDE48
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BDE50
	ldr r6, _080BDE44 @ =0x00000311
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BDE50
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BDE50
	.align 2, 0
_080BDE3C: .4byte gUnk_02020EE0
_080BDE40: .4byte gUnk_0203AD3C
_080BDE44: .4byte 0x00000311
_080BDE48:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080BDE50:
	adds r0, r5, #0
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BDE70
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BDE70
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #1
	b _080BDE72
_080BDE70:
	movs r0, #0
_080BDE72:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BDE7C
sub_080BDE7C: @ 0x080BDE7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080BDEB4 @ =sub_08070580
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080BDEB8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BDEBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BDEC4
	.align 2, 0
_080BDEB4: .4byte sub_08070580
_080BDEB8: .4byte sub_0803DCCC
_080BDEBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BDEC4:
	adds r4, r0, #0
	bl sub_0803E380
	movs r2, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r1, _080BDF9C @ =gUnk_03000510
	mov r8, r1
	ldrb r1, [r1, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r7, #0x10
	mov ip, r7
	orrs r0, r7
	ands r1, r0
	cmp r1, #0
	beq _080BDF1C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BDF1C:
	ldr r0, _080BDFA0 @ =sub_080BE0E8
	str r0, [r4, #0x78]
	ldr r1, _080BDFA4 @ =sub_080BE2A8
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
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x63
	strb r6, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, _080BDFA8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r7, r8
	ldrb r1, [r7, #4]
	adds r0, r6, #0
	ldrb r3, [r3]
	lsls r0, r3
	mov r3, ip
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _080BDF80
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r2, r0
	str r2, [r4, #8]
_080BDF80:
	ldr r0, [r5, #8]
	ands r0, r6
	cmp r0, #0
	beq _080BDFB0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	ldr r7, _080BDFAC @ =0xFFFFF800
	adds r0, r0, r7
	b _080BDFC8
	.align 2, 0
_080BDF9C: .4byte gUnk_03000510
_080BDFA0: .4byte sub_080BE0E8
_080BDFA4: .4byte sub_080BE2A8
_080BDFA8: .4byte 0x20000043
_080BDFAC: .4byte 0xFFFFF800
_080BDFB0:
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080BDFC8:
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
	ldr r7, _080BE048 @ =0x00000311
	movs r0, #7
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	adds r3, r7, #0
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080BE04C @ =gUnk_02020EE0
	ldr r0, _080BE050 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r2, [r6]
	cmp r0, r2
	bne _080BE054
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BE056
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080BE056
	.align 2, 0
_080BE048: .4byte 0x00000311
_080BE04C: .4byte gUnk_02020EE0
_080BE050: .4byte gUnk_0203AD3C
_080BE054:
	strb r3, [r5]
_080BE056:
	ldr r1, _080BE0C8 @ =gUnk_02020EE0
	ldr r0, _080BE0CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080BE0BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE07E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE0BA
_080BE07E:
	ldr r1, _080BE0D0 @ =gUnk_08D60FA4
	ldr r4, _080BE0D4 @ =gSongTable
	ldr r3, _080BE0D8 @ =0x000009CC
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE0A2
	ldr r7, _080BE0DC @ =0x000009C8
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE0BA
_080BE0A2:
	cmp r3, #0
	beq _080BE0B4
	ldr r0, _080BE0E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE0BA
_080BE0B4:
	ldr r0, _080BE0E4 @ =0x00000139
	bl m4aSongNumStart
_080BE0BA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE0C8: .4byte gUnk_02020EE0
_080BE0CC: .4byte gUnk_0203AD3C
_080BE0D0: .4byte gUnk_08D60FA4
_080BE0D4: .4byte gSongTable
_080BE0D8: .4byte 0x000009CC
_080BE0DC: .4byte 0x000009C8
_080BE0E0: .4byte gUnk_0203AD10
_080BE0E4: .4byte 0x00000139

	thumb_func_start sub_080BE0E8
sub_080BE0E8: @ 0x080BE0E8
	push {r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r3, [r5, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r5, #8]
	ldr r2, _080BE15C @ =gUnk_02020EE0
	ldr r0, _080BE160 @ =gUnk_0203AD3C
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
	bne _080BE1A4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _080BE16C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BE1C4
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
	ldr r1, _080BE164 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080BE168 @ =0x0400000A
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
	b _080BE1C4
	.align 2, 0
_080BE15C: .4byte gUnk_02020EE0
_080BE160: .4byte gUnk_0203AD3C
_080BE164: .4byte 0xFFF7FFFF
_080BE168: .4byte 0x0400000A
_080BE16C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080BE1C4
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080BE19C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080BE1A0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080BE1C4
	.align 2, 0
_080BE19C: .4byte 0xFFF7FFFF
_080BE1A0: .4byte 0x0400000A
_080BE1A4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _080BE1BA
	movs r4, #0x80
	lsls r4, r4, #7
	ands r4, r3
	cmp r4, #0
	bne _080BE1BA
	bl sub_08157190
	str r4, [r5, #0x10]
_080BE1BA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080BE1C4:
	ldr r2, _080BE208 @ =gUnk_02020EE0
	ldr r0, _080BE20C @ =gUnk_0203AD3C
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
	bne _080BE214
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE21C
	ldr r5, _080BE210 @ =0x00000311
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080BE21C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080BE21C
	.align 2, 0
_080BE208: .4byte gUnk_02020EE0
_080BE20C: .4byte gUnk_0203AD3C
_080BE210: .4byte 0x00000311
_080BE214:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080BE21C:
	movs r0, #0
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BE228
sub_080BE228: @ 0x080BE228
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE258 @ =sub_080BD634
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE258: .4byte sub_080BD634

	thumb_func_start sub_080BE25C
sub_080BE25C: @ 0x080BE25C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE280 @ =sub_080BD988
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE280: .4byte sub_080BD988

	thumb_func_start sub_080BE284
sub_080BE284: @ 0x080BE284
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE2A4 @ =sub_080BDA00
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE2A4: .4byte sub_080BDA00

	thumb_func_start sub_080BE2A8
sub_080BE2A8: @ 0x080BE2A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08073D2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080BE2C4
sub_080BE2C4: @ 0x080BE2C4
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2a
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	adds r1, #0x5e
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	ldr r1, _080BE2F0 @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080BE2F4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080BE2F0: .4byte 0xFFFFFDFF
_080BE2F4: .4byte 0xFFFFFEFF

	thumb_func_start CreateRocky
CreateRocky: @ 0x080BE2F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080BE32C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BE330 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BE334
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BE33C
	.align 2, 0
_080BE32C: .4byte ObjectMain
_080BE330: .4byte ObjectDestroy
_080BE334:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BE33C:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BE35C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BE364
_080BE35C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BE364:
	str r0, [r4, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	beq _080BE3A6
	cmp r0, #1
	ble _080BE39E
	cmp r0, #2
	beq _080BE3AE
_080BE39E:
	adds r0, r4, #0
	bl sub_080BE8C8
	b _080BE3B4
_080BE3A6:
	adds r0, r4, #0
	bl sub_080BE9A8
	b _080BE3B4
_080BE3AE:
	adds r0, r4, #0
	bl sub_080BE9D8
_080BE3B4:
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

	thumb_func_start sub_080BE3C8
sub_080BE3C8: @ 0x080BE3C8
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080BE3E8
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080BE3F8
	b _080BE3F4
_080BE3E8:
	adds r0, r2, #0
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080BE3F8
_080BE3F4:
	movs r0, #0
	strh r0, [r1]
_080BE3F8:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE404
sub_080BE404: @ 0x080BE404
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BE420
	adds r0, r4, #0
	bl sub_080BE8F0
	b _080BE4B4
_080BE420:
	ldrb r1, [r4, #1]
	movs r0, #0x1f
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0x1f
	bne _080BE436
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BE436:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080BE44A
	adds r0, r4, #0
	bl sub_080BE978
_080BE44A:
	ldr r0, [r5]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	adds r3, r0, #0
	cmp r1, #0
	blt _080BE464
	ldr r0, _080BE460 @ =0x000031FF
	cmp r1, r0
	ble _080BE46C
	b _080BE4B4
	.align 2, 0
_080BE460: .4byte 0x000031FF
_080BE464:
	subs r1, r3, r2
	ldr r0, _080BE480 @ =0x000031FF
	cmp r1, r0
	bgt _080BE4B4
_080BE46C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE488
	ldr r0, _080BE484 @ =0x00000FFF
	cmp r2, r0
	ble _080BE490
	b _080BE4B4
	.align 2, 0
_080BE480: .4byte 0x000031FF
_080BE484: .4byte 0x00000FFF
_080BE488:
	subs r1, r1, r0
	ldr r0, _080BE4A4 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE4B4
_080BE490:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	cmp r3, r0
	ble _080BE4A8
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080BE4B2
	.align 2, 0
_080BE4A4: .4byte 0x00000FFF
_080BE4A8:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080BE4B2:
	strb r0, [r2]
_080BE4B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE4BC
sub_080BE4BC: @ 0x080BE4BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BE4F0
	ldr r1, _080BE4EC @ =gUnk_08354BA8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r5, r1, #0
	b _080BE506
	.align 2, 0
_080BE4EC: .4byte gUnk_08354BA8
_080BE4F0:
	ldr r1, _080BE580 @ =gUnk_08354BA8
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r5, r0, #0
_080BE506:
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080BE51C
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080BE51C:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080BE52A
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080BE52A:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BE53A
	adds r0, r4, #0
	bl sub_080BE978
_080BE53A:
	ldrh r1, [r4, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080BE55C
	ldr r2, _080BE584 @ =sub_080BE404
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #0
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080BE55C:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0
	beq _080BE5E8
	adds r1, #0x27
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BE58C
	ldr r0, _080BE588 @ =0x000031FF
	cmp r2, r0
	ble _080BE594
	b _080BE670
	.align 2, 0
_080BE580: .4byte gUnk_08354BA8
_080BE584: .4byte sub_080BE404
_080BE588: .4byte 0x000031FF
_080BE58C:
	subs r1, r0, r3
	ldr r0, _080BE5A8 @ =0x000031FF
	cmp r1, r0
	bgt _080BE670
_080BE594:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE5B0
	ldr r0, _080BE5AC @ =0x00000FFF
	cmp r2, r0
	ble _080BE5B8
	b _080BE670
	.align 2, 0
_080BE5A8: .4byte 0x000031FF
_080BE5AC: .4byte 0x00000FFF
_080BE5B0:
	subs r1, r1, r0
	ldr r0, _080BE5D8 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE670
_080BE5B8:
	ldr r2, _080BE5DC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BE5E0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BE5E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BE658
	ldrh r0, [r4, #4]
	strb r0, [r6]
	b _080BE670
	.align 2, 0
_080BE5D8: .4byte 0x00000FFF
_080BE5DC: .4byte gRngVal
_080BE5E0: .4byte 0x00196225
_080BE5E4: .4byte 0x3C6EF35F
_080BE5E8:
	movs r2, #4
	ldrsh r0, [r4, r2]
	ldrb r1, [r1]
	subs r0, r0, r1
	cmp r0, #0x3c
	ble _080BE670
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080BE614
	ldr r0, _080BE610 @ =0x000031FF
	cmp r2, r0
	ble _080BE61C
	b _080BE670
	.align 2, 0
_080BE610: .4byte 0x000031FF
_080BE614:
	subs r1, r0, r3
	ldr r0, _080BE630 @ =0x000031FF
	cmp r1, r0
	bgt _080BE670
_080BE61C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BE638
	ldr r0, _080BE634 @ =0x00000FFF
	cmp r2, r0
	ble _080BE640
	b _080BE670
	.align 2, 0
_080BE630: .4byte 0x000031FF
_080BE634: .4byte 0x00000FFF
_080BE638:
	subs r1, r1, r0
	ldr r0, _080BE660 @ =0x00000FFF
	cmp r1, r0
	bgt _080BE670
_080BE640:
	ldr r2, _080BE664 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BE668 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BE66C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BE670
_080BE658:
	adds r0, r4, #0
	bl sub_080BE67C
	b _080BE676
	.align 2, 0
_080BE660: .4byte 0x00000FFF
_080BE664: .4byte gRngVal
_080BE668: .4byte 0x00196225
_080BE66C: .4byte 0x3C6EF35F
_080BE670:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080BE676:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE67C
sub_080BE67C: @ 0x080BE67C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE728 @ =sub_080BE74C
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xba
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE6B8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080BE6B8:
	ldr r1, _080BE72C @ =gUnk_02020EE0
	ldr r0, _080BE730 @ =gUnk_0203AD3C
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
	bne _080BE720
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE6E4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE720
_080BE6E4:
	ldr r1, _080BE734 @ =gUnk_08D60FA4
	ldr r4, _080BE738 @ =gSongTable
	ldr r2, _080BE73C @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE708
	ldr r1, _080BE740 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE720
_080BE708:
	cmp r3, #0
	beq _080BE71A
	ldr r0, _080BE744 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE720
_080BE71A:
	ldr r0, _080BE748 @ =0x00000145
	bl m4aSongNumStart
_080BE720:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE728: .4byte sub_080BE74C
_080BE72C: .4byte gUnk_02020EE0
_080BE730: .4byte gUnk_0203AD3C
_080BE734: .4byte gUnk_08D60FA4
_080BE738: .4byte gSongTable
_080BE73C: .4byte 0x00000A2C
_080BE740: .4byte 0x00000A28
_080BE744: .4byte gUnk_0203AD10
_080BE748: .4byte 0x00000145

	thumb_func_start sub_080BE74C
sub_080BE74C: @ 0x080BE74C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080BE778
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080BE770 @ =0xF0010000
	cmp r0, r1
	bge _080BE78E
	ldr r0, _080BE774 @ =0x0000F001
	strh r0, [r2]
	b _080BE78E
	.align 2, 0
_080BE770: .4byte 0xF0010000
_080BE774: .4byte 0x0000F001
_080BE778:
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080BE78E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080BE7A6
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BE7AC
_080BE7A6:
	adds r0, r4, #0
	bl sub_080BE928
_080BE7AC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE7B8
sub_080BE7B8: @ 0x080BE7B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE86E
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r1, #0x48
	strh r0, [r1]
	ldr r1, _080BE87C @ =gUnk_02020EE0
	ldr r0, _080BE880 @ =gUnk_0203AD3C
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
	bne _080BE852
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BE812
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BE852
_080BE812:
	ldr r1, _080BE884 @ =gUnk_08D60FA4
	ldr r5, _080BE888 @ =gSongTable
	ldr r2, _080BE88C @ =0x000009F4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BE838
	movs r1, #0x9f
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BE852
_080BE838:
	cmp r3, #0
	beq _080BE84A
	ldr r0, _080BE890 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE852
_080BE84A:
	movs r0, #0x9f
	lsls r0, r0, #1
	bl m4aSongNumStart
_080BE852:
	ldr r2, _080BE894 @ =sub_080BE404
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080BE86E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE87C: .4byte gUnk_02020EE0
_080BE880: .4byte gUnk_0203AD3C
_080BE884: .4byte gUnk_08D60FA4
_080BE888: .4byte gSongTable
_080BE88C: .4byte 0x000009F4
_080BE890: .4byte gUnk_0203AD10
_080BE894: .4byte sub_080BE404

	thumb_func_start sub_080BE898
sub_080BE898: @ 0x080BE898
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080BE8B6
	cmp r0, #1
	ble _080BE8AE
	cmp r0, #2
	beq _080BE8BE
_080BE8AE:
	adds r0, r1, #0
	bl sub_080BE8C8
	b _080BE8C4
_080BE8B6:
	adds r0, r1, #0
	bl sub_080BE9A8
	b _080BE8C4
_080BE8BE:
	adds r0, r1, #0
	bl sub_080BE9D8
_080BE8C4:
	pop {r0}
	bx r0

	thumb_func_start sub_080BE8C8
sub_080BE8C8: @ 0x080BE8C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE8EC @ =sub_080BE404
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE8EC: .4byte sub_080BE404

	thumb_func_start sub_080BE8F0
sub_080BE8F0: @ 0x080BE8F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE914 @ =sub_080BE4BC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080BE918
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080BE920
	.align 2, 0
_080BE914: .4byte sub_080BE4BC
_080BE918:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BE920:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BE928
sub_080BE928: @ 0x080BE928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE94C @ =sub_080BE95C
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BE950
	movs r0, #8
	b _080BE952
	.align 2, 0
_080BE94C: .4byte sub_080BE95C
_080BE950:
	movs r0, #0x10
_080BE952:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE95C
sub_080BE95C: @ 0x080BE95C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080BE972
	adds r0, r1, #0
	bl sub_080BE978
_080BE972:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BE978
sub_080BE978: @ 0x080BE978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9A4 @ =sub_080BE7B8
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE9A4: .4byte sub_080BE7B8

	thumb_func_start sub_080BE9A8
sub_080BE9A8: @ 0x080BE9A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9C8 @ =sub_080BE9CC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE9C8: .4byte sub_080BE9CC

	thumb_func_start sub_080BE9CC
sub_080BE9CC: @ 0x080BE9CC
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080BE9D8
sub_080BE9D8: @ 0x080BE9D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BE9F8 @ =sub_080BE9FC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE9F8: .4byte sub_080BE9FC

	thumb_func_start sub_080BE9FC
sub_080BE9FC: @ 0x080BE9FC
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start CreateHeavyKnight
CreateHeavyKnight: @ 0x080BEA08
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BEA3C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BEA40 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BEA44
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080BEA4C
	.align 2, 0
_080BEA3C: .4byte ObjectMain
_080BEA40: .4byte ObjectDestroy
_080BEA44:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080BEA4C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xc
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #9
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080BEAE4 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BEADA
	adds r0, r6, #0
	bl sub_080BF914
_080BEADA:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BEAE4: .4byte gUnk_08351648

	thumb_func_start sub_080BEAE8
sub_080BEAE8: @ 0x080BEAE8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BEB00
	adds r0, r4, #0
	bl sub_080BFC28
	b _080BED30
_080BEB00:
	ldr r3, _080BEB6C @ =gUnk_08354C08
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r5, [r2]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	cmp r0, #0
	bne _080BEB2C
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BEB2C
	movs r0, #0xff
	strb r0, [r6]
_080BEB2C:
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r7, r1, #0
	cmp r0, #1
	bhi _080BEBE4
	movs r0, #2
	ands r2, r0
	adds r5, r4, #0
	adds r5, #0xac
	cmp r2, #0
	beq _080BEB56
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BEB56:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BEB74
	ldr r0, _080BEB70 @ =0x000059FF
	cmp r2, r0
	ble _080BEB7C
	b _080BEBDC
	.align 2, 0
_080BEB6C: .4byte gUnk_08354C08
_080BEB70: .4byte 0x000059FF
_080BEB74:
	subs r1, r1, r0
	ldr r0, _080BEBA4 @ =0x000059FF
	cmp r1, r0
	bgt _080BEBDC
_080BEB7C:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080BEBA8 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080BEBAC @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080BEBB0 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #3
	ands r0, r3
	cmp r0, #3
	bne _080BEBB4
	adds r0, r4, #0
	bl sub_080BFD58
	b _080BED30
	.align 2, 0
_080BEBA4: .4byte 0x000059FF
_080BEBA8: .4byte gRngVal
_080BEBAC: .4byte 0x00196225
_080BEBB0: .4byte 0x3C6EF35F
_080BEBB4:
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, _080BEBD0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #3
	bne _080BEBD4
	adds r0, r4, #0
	bl sub_080BFCC0
	b _080BED30
	.align 2, 0
_080BEBD0: .4byte 0x3C6EF35F
_080BEBD4:
	adds r0, r4, #0
	bl sub_080BFD0C
	b _080BED30
_080BEBDC:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080BEBE4:
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BEBEE
	b _080BED30
_080BEBEE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r7, _080BECA8 @ =gUnk_08354C08
	mov ip, r0
	adds r5, r4, #0
	adds r5, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	bne _080BECD6
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BEC1E
	subs r0, r1, #1
	strb r0, [r6]
_080BEC1E:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BEC46
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BEC46:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080BECAC
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080BEC7E
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEC7E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEC7E:
	ldrb r2, [r6]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, r0
	beq _080BECD6
	strh r2, [r3]
	b _080BECD6
	.align 2, 0
_080BECA8: .4byte gUnk_08354C08
_080BECAC:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BECF4
	rsbs r0, r2, #0
	strh r0, [r5]
_080BECD6:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BECF4
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BED06
_080BECF4:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080BED06:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	mov r3, ip
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BED30
	movs r0, #0
	strh r0, [r5]
_080BED30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BED38
sub_080BED38: @ 0x080BED38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080BEE5C @ =gUnk_08354C8C
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r3, [r5]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BED6C
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BED6C
	movs r0, #0xff
	strb r0, [r5]
_080BED6C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BED88
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080BED88:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BED96
	b _080BEEEA
_080BED96:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r6, _080BEE5C @ =gUnk_08354C8C
	adds r3, r4, #0
	adds r3, #0x9f
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080BEE8C
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
	bne _080BEDCC
	subs r0, r1, #1
	strb r0, [r3]
_080BEDCC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BEDF4
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BEDF4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BEE60
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BEE2C
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEE2C
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEE2C:
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
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BEE8C
	mov r0, r8
	strh r0, [r7]
	b _080BEE8C
	.align 2, 0
_080BEE5C: .4byte gUnk_08354C8C
_080BEE60:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEEAA
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEE8C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEEAA
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BEEBC
_080BEEAA:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BEEBC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BEEEA
	movs r0, #0
	strh r0, [r5]
_080BEEEA:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _080BEF36
	ldr r2, _080BEF18 @ =sub_080BEAE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BEF1C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BEF24
	.align 2, 0
_080BEF18: .4byte sub_080BEAE8
_080BEF1C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BEF24:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080BEF4A
_080BEF36:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BEF4A
	adds r0, r4, #0
	bl sub_080BFC28
_080BEF4A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BEF58
sub_080BEF58: @ 0x080BEF58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BEFD6
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r3, [r0]
	cmp r3, #3
	bne _080BEFD6
	ldr r2, _080BEF94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BEF98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BEF9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #3
	bne _080BEFA0
	adds r0, r4, #0
	bl sub_080BFD0C
	b _080BF18A
	.align 2, 0
_080BEF94: .4byte gRngVal
_080BEF98: .4byte 0x00196225
_080BEF9C: .4byte 0x3C6EF35F
_080BEFA0:
	ldr r2, _080BEFC0 @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BEFC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BEFCC
	.align 2, 0
_080BEFC0: .4byte sub_080BED38
_080BEFC4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BEFCC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF186
_080BEFD6:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080BEFEE
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BEFEE
	adds r0, r4, #0
	bl sub_080BF654
_080BEFEE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080BF0B4 @ =gUnk_08354D10
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF0E4
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
	bne _080BF024
	subs r0, r1, #1
	strb r0, [r3]
_080BF024:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF04A
	mov r0, r8
	strb r1, [r0]
_080BF04A:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF0B8
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF082
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF082
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF082:
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
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF0E4
	mov r0, r8
	strh r0, [r7]
	b _080BF0E4
	.align 2, 0
_080BF0B4: .4byte gUnk_08354D10
_080BF0B8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF102
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF0E4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF102
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF114
_080BF102:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF114:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF14C
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF14E
_080BF14C:
	strh r6, [r5]
_080BF14E:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF18A
	ldr r2, _080BF17C @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF180
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF188
	.align 2, 0
_080BF17C: .4byte sub_080BFC60
_080BF180:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF186:
	ands r0, r1
_080BF188:
	str r0, [r4, #8]
_080BF18A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF198
sub_080BF198: @ 0x080BF198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BF252
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080BF252
	ldr r2, _080BF1F8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BF1FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BF200 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080BF21A
	ldr r2, _080BF204 @ =sub_080BEF58
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF208
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF210
	.align 2, 0
_080BF1F8: .4byte gRngVal
_080BF1FC: .4byte 0x00196225
_080BF200: .4byte 0x3C6EF35F
_080BF204: .4byte sub_080BEF58
_080BF208:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF210:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF402
_080BF21A:
	ldr r2, _080BF23C @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF240
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF248
	.align 2, 0
_080BF23C: .4byte sub_080BED38
_080BF240:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF248:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF402
_080BF252:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #5
	bne _080BF26A
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF26A
	adds r0, r4, #0
	bl sub_080BF654
_080BF26A:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r4, #0
	adds r5, #0x50
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080BF330 @ =gUnk_08354D58
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF360
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
	bne _080BF2A0
	subs r0, r1, #1
	strb r0, [r3]
_080BF2A0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF2C6
	mov r0, r8
	strb r1, [r0]
_080BF2C6:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF334
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF2FE
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF2FE
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF2FE:
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
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF360
	mov r0, r8
	strh r0, [r7]
	b _080BF360
	.align 2, 0
_080BF330: .4byte gUnk_08354D58
_080BF334:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF37E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF360:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF37E
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF390
_080BF37E:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF390:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF3C8
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF3CA
_080BF3C8:
	strh r6, [r5]
_080BF3CA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF406
	ldr r2, _080BF3F8 @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF3FC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF404
	.align 2, 0
_080BF3F8: .4byte sub_080BFC60
_080BF3FC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF402:
	ands r0, r1
_080BF404:
	str r0, [r4, #8]
_080BF406:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF414
sub_080BF414: @ 0x080BF414
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080BF464 @ =gUnk_08354DA0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BF47E
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BF47E
	ldr r2, _080BF468 @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF46C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF474
	.align 2, 0
_080BF464: .4byte gUnk_08354DA0
_080BF468: .4byte sub_080BED38
_080BF46C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF474:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF642
_080BF47E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #5
	bne _080BF496
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF496
	adds r0, r4, #0
	bl sub_080BF654
_080BF496:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _080BF4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF4AA
	adds r0, r4, #0
	bl sub_080BF654
_080BF4AA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r6, _080BF570 @ =gUnk_08354DA0
	adds r3, r4, #0
	adds r3, #0x9f
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF5A0
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
	bne _080BF4E0
	subs r0, r1, #1
	strb r0, [r3]
_080BF4E0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF506
	mov r0, r8
	strb r1, [r0]
_080BF506:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF574
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF53E
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF53E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF53E:
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
	mov r8, r2
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF5A0
	mov r0, r8
	strh r0, [r7]
	b _080BF5A0
	.align 2, 0
_080BF570: .4byte gUnk_08354DA0
_080BF574:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF5BE
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF5A0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF5BE
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF5D0
_080BF5BE:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF5D0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF608
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF60A
_080BF608:
	strh r6, [r5]
_080BF60A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF646
	ldr r2, _080BF638 @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF63C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF644
	.align 2, 0
_080BF638: .4byte sub_080BFC60
_080BF63C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF642:
	ands r0, r1
_080BF644:
	str r0, [r4, #8]
_080BF646:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF654
sub_080BF654: @ 0x080BF654
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080BF684 @ =sub_080BF7D0
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BF688
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF690
	.align 2, 0
_080BF684: .4byte sub_080BF7D0
_080BF688:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF690:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080BF710 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BF6E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BF6E0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080BF714 @ =0x50400400
	str r2, [r4, #8]
	ldr r0, _080BF718 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BF720
	ldr r0, [r4, #0x40]
	ldr r1, _080BF71C @ =0xFFFFD800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080BF72C
	.align 2, 0
_080BF710: .4byte gUnk_03000510
_080BF714: .4byte 0x50400400
_080BF718: .4byte 0x20000043
_080BF71C: .4byte 0xFFFFD800
_080BF720:
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080BF72C:
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080BF7B0 @ =gUnk_02020EE0
	ldr r0, _080BF7B4 @ =gUnk_0203AD3C
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
	bne _080BF7A8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BF76C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BF7A8
_080BF76C:
	ldr r1, _080BF7B8 @ =gUnk_08D60FA4
	ldr r4, _080BF7BC @ =gSongTable
	ldr r2, _080BF7C0 @ =0x00000AAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BF790
	ldr r1, _080BF7C4 @ =0x00000AA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BF7A8
_080BF790:
	cmp r3, #0
	beq _080BF7A2
	ldr r0, _080BF7C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BF7A8
_080BF7A2:
	ldr r0, _080BF7CC @ =0x00000155
	bl m4aSongNumStart
_080BF7A8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF7B0: .4byte gUnk_02020EE0
_080BF7B4: .4byte gUnk_0203AD3C
_080BF7B8: .4byte gUnk_08D60FA4
_080BF7BC: .4byte gSongTable
_080BF7C0: .4byte 0x00000AAC
_080BF7C4: .4byte 0x00000AA8
_080BF7C8: .4byte gUnk_0203AD10
_080BF7CC: .4byte 0x00000155

	thumb_func_start sub_080BF7D0
sub_080BF7D0: @ 0x080BF7D0
	push {r4, r5, r6, lr}
	ldr r2, _080BF7EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BF7F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF7F8
	.align 2, 0
_080BF7EC: .4byte gCurTask
_080BF7F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF7F8:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _080BF812
	ldr r0, [r2]
	bl TaskDestroy
	b _080BF90C
_080BF812:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BF820
	orrs r1, r5
	str r1, [r4, #8]
	b _080BF90C
_080BF820:
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _080BF85C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080BF90C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080BF860
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080BF90A
	.align 2, 0
_080BF85C: .4byte gUnk_03000510
_080BF860:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BF8D2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080BF8D2
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080BF898
	ldr r2, _080BF890 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080BF894 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080BF89A
	.align 2, 0
_080BF890: .4byte gUnk_02023530
_080BF894: .4byte 0x0000065E
_080BF898:
	movs r1, #0xff
_080BF89A:
	cmp r1, #0xff
	beq _080BF8D2
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080BF8EC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080BF8F0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080BF8D2:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF8F8
	ldr r0, [r4, #0x40]
	ldr r2, _080BF8F4 @ =0xFFFFD800
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080BF90A
	.align 2, 0
_080BF8EC: .4byte gUnk_02022EB0
_080BF8F0: .4byte gUnk_02022F50
_080BF8F4: .4byte 0xFFFFD800
_080BF8F8:
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF90A:
	str r0, [r4, #8]
_080BF90C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF914
sub_080BF914: @ 0x080BF914
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080BF944 @ =sub_080BF9EC
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BF948
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF950
	.align 2, 0
_080BF944: .4byte sub_080BF9EC
_080BF948:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF950:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080BF9E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BF9A0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BF9A0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080BF9E4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r2, _080BF9E8 @ =0x42110400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BF9C2
	orrs r2, r3
_080BF9C2:
	str r2, [r4, #8]
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x40
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF9E0: .4byte gUnk_03000510
_080BF9E4: .4byte 0x20000043
_080BF9E8: .4byte 0x42110400

	thumb_func_start sub_080BF9EC
sub_080BF9EC: @ 0x080BF9EC
	push {r4, r5, r6, lr}
	ldr r2, _080BFA08 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BFA0C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BFA14
	.align 2, 0
_080BFA08: .4byte gCurTask
_080BFA0C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BFA14:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r1, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080BFA2E
	ldr r0, [r2]
	bl TaskDestroy
	b _080BFBD2
_080BFA2E:
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BFA3C
	orrs r1, r3
	str r1, [r5, #8]
	b _080BFBD2
_080BFA3C:
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080BFA78 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BFA68
	b _080BFBD2
_080BFA68:
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _080BFA7C
	ldr r0, [r5, #8]
	orrs r0, r6
	b _080BFA84
	.align 2, 0
_080BFA78: .4byte gUnk_03000510
_080BFA7C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFA84:
	str r0, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080BFA94
	b _080BFBD2
_080BFA94:
	subs r0, #2
	ldrb r0, [r0]
	cmp r0, #6
	bls _080BFA9E
	b _080BFBD2
_080BFA9E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080BFB5E
	ldr r2, [r5, #0x6c]
	ldr r0, _080BFB04 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080BFB5E
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _080BFB5E
	ldr r2, _080BFB08 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFB0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFB10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080BFB18
	ldr r2, _080BFB14 @ =sub_080BEF58
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFB44
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFB4C
	.align 2, 0
_080BFB04: .4byte 0xFFFBFFFF
_080BFB08: .4byte gRngVal
_080BFB0C: .4byte 0x00196225
_080BFB10: .4byte 0x3C6EF35F
_080BFB14: .4byte sub_080BEF58
_080BFB18:
	ldr r2, _080BFB40 @ =sub_080BF198
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFB44
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFB4C
	.align 2, 0
_080BFB40: .4byte sub_080BF198
_080BFB44:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFB4C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r6]
	b _080BFBD2
_080BFB5E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BFBD2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080BFBD2
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080BFB98
	ldr r2, _080BFB90 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080BFB94 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080BFB9A
	.align 2, 0
_080BFB90: .4byte gUnk_02023530
_080BFB94: .4byte 0x0000065E
_080BFB98:
	movs r1, #0xff
_080BFB9A:
	cmp r1, #0xff
	beq _080BFBD2
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080BFBD8 @ =gUnk_02022EB0
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
	ldr r2, _080BFBDC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080BFBD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BFBD8: .4byte gUnk_02022EB0
_080BFBDC: .4byte gUnk_02022F50

	thumb_func_start sub_080BFBE0
sub_080BFBE0: @ 0x080BFBE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFC04 @ =sub_080BEAE8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFC08
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFC10
	.align 2, 0
_080BFC04: .4byte sub_080BEAE8
_080BFC08:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFC10:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFC28
sub_080BFC28: @ 0x080BFC28
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFC4C @ =sub_080BFC60
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFC50
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFC58
	.align 2, 0
_080BFC4C: .4byte sub_080BFC60
_080BFC50:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFC58:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BFC60
sub_080BFC60: @ 0x080BFC60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BFCB8
	ldr r2, _080BFC9C @ =sub_080BEAE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFCA0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFCA8
	.align 2, 0
_080BFC9C: .4byte sub_080BEAE8
_080BFCA0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFCA8:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080BFCB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFCC0
sub_080BFCC0: @ 0x080BFCC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFCEC @ =sub_080BEF58
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFCF0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFCF8
	.align 2, 0
_080BFCEC: .4byte sub_080BEF58
_080BFCF0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFCF8:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFD0C
sub_080BFD0C: @ 0x080BFD0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFD38 @ =sub_080BF198
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFD3C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFD44
	.align 2, 0
_080BFD38: .4byte sub_080BF198
_080BFD3C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFD44:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFD58
sub_080BFD58: @ 0x080BFD58
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFD84 @ =sub_080BF414
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFD88
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFD90
	.align 2, 0
_080BFD84: .4byte sub_080BF414
_080BFD88:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFD90:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateGiantRocky
CreateGiantRocky: @ 0x080BFDA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BFDD8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BFDDC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BFDE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BFDE8
	.align 2, 0
_080BFDD8: .4byte ObjectMain
_080BFDDC: .4byte ObjectDestroy
_080BFDE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BFDE8:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0x64
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x5c]
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFE32
	movs r0, #1
	orrs r2, r0
	b _080BFE38
_080BFE32:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BFE38:
	str r2, [r6, #8]
	movs r4, #8
	rsbs r4, r4, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r5, #0xa
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080BFE9C @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BFE9C: .4byte gUnk_08351648

	thumb_func_start sub_080BFEA0
sub_080BFEA0: @ 0x080BFEA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r1, [r4, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _080BFF58
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldr r3, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r3, r1
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	blt _080BFED8
	ldr r0, _080BFED4 @ =0x00004FFF
	cmp r2, r0
	ble _080BFEE0
	b _080BFF50
	.align 2, 0
_080BFED4: .4byte 0x00004FFF
_080BFED8:
	subs r1, r6, r3
	ldr r0, _080BFEF4 @ =0x00004FFF
	cmp r1, r0
	bgt _080BFF50
_080BFEE0:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BFEF8
	ldr r0, _080BFEF4 @ =0x00004FFF
	cmp r2, r0
	ble _080BFF00
	b _080BFF50
	.align 2, 0
_080BFEF4: .4byte 0x00004FFF
_080BFEF8:
	subs r1, r1, r0
	ldr r0, _080BFF14 @ =0x00004FFF
	cmp r1, r0
	bgt _080BFF50
_080BFF00:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	cmp r6, r0
	ble _080BFF18
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _080BFF22
	.align 2, 0
_080BFF14: .4byte 0x00004FFF
_080BFF18:
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_080BFF22:
	strb r0, [r2]
	ldr r2, _080BFF44 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFF48 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFF4C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080BFF50
	adds r0, r4, #0
	bl sub_080C046C
	b _080BFF6C
	.align 2, 0
_080BFF44: .4byte gRngVal
_080BFF48: .4byte 0x00196225
_080BFF4C: .4byte 0x3C6EF35F
_080BFF50:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BFF58:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BFF6C
	adds r0, r4, #0
	bl sub_080C0514
_080BFF6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFF74
sub_080BFF74: @ 0x080BFF74
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFFCC @ =sub_080C0088
	movs r1, #2
	bl ObjectSetFunc
	ldr r2, _080BFFD0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFFD4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFFD8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080BFFA2
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
_080BFFA2:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x40
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BFFDC
	orrs r2, r3
	b _080BFFE2
	.align 2, 0
_080BFFCC: .4byte sub_080C0088
_080BFFD0: .4byte gRngVal
_080BFFD4: .4byte 0x00196225
_080BFFD8: .4byte 0x3C6EF35F
_080BFFDC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080BFFE2:
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BFFF8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080BFFF8:
	ldr r1, _080C0068 @ =gUnk_02020EE0
	ldr r0, _080C006C @ =gUnk_0203AD3C
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
	bne _080C0060
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C0024
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C0060
_080C0024:
	ldr r1, _080C0070 @ =gUnk_08D60FA4
	ldr r4, _080C0074 @ =gSongTable
	ldr r2, _080C0078 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C0048
	ldr r1, _080C007C @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C0060
_080C0048:
	cmp r3, #0
	beq _080C005A
	ldr r0, _080C0080 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C0060
_080C005A:
	ldr r0, _080C0084 @ =0x00000145
	bl m4aSongNumStart
_080C0060:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0068: .4byte gUnk_02020EE0
_080C006C: .4byte gUnk_0203AD3C
_080C0070: .4byte gUnk_08D60FA4
_080C0074: .4byte gSongTable
_080C0078: .4byte 0x00000A2C
_080C007C: .4byte 0x00000A28
_080C0080: .4byte gUnk_0203AD10
_080C0084: .4byte 0x00000145

	thumb_func_start sub_080C0088
sub_080C0088: @ 0x080C0088
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C00A8
	adds r3, r2, #0
	adds r3, #0x52
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #0x82
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C00A8
	strh r1, [r3]
_080C00A8:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _080C00D4
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080C00CC @ =0xF0010000
	cmp r0, r1
	bge _080C00DA
	ldr r0, _080C00D0 @ =0x0000F001
	strh r0, [r2]
	b _080C00DA
	.align 2, 0
_080C00CC: .4byte 0xF0010000
_080C00D0: .4byte 0x0000F001
_080C00D4:
	adds r0, r2, #0
	bl sub_080C04D4
_080C00DA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C00E0
sub_080C00E0: @ 0x080C00E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C0102
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080C0134 @ =0xFFFFFC00
	cmp r1, r0
	bge _080C0102
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r2]
_080C0102:
	movs r1, #4
	ldrsh r4, [r5, r1]
	cmp r4, #0
	beq _080C013C
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C01F8
	ldr r2, _080C0138 @ =sub_080BFEA0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x14
	strh r1, [r0]
	ldr r0, [r5, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #8]
	b _080C01F8
	.align 2, 0
_080C0134: .4byte 0xFFFFFC00
_080C0138: .4byte sub_080BFEA0
_080C013C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C01F8
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	ldr r1, _080C0200 @ =gUnk_02020EE0
	ldr r0, _080C0204 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C01F2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C01B2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C01F2
_080C01B2:
	ldr r1, _080C0208 @ =gUnk_08D60FA4
	ldr r4, _080C020C @ =gSongTable
	ldr r2, _080C0210 @ =0x00000AB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C01D8
	movs r1, #0xab
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C01F2
_080C01D8:
	cmp r3, #0
	beq _080C01EA
	ldr r0, _080C0214 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C01F2
_080C01EA:
	movs r0, #0xab
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C01F2:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080C01F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0200: .4byte gUnk_02020EE0
_080C0204: .4byte gUnk_0203AD3C
_080C0208: .4byte gUnk_08D60FA4
_080C020C: .4byte gSongTable
_080C0210: .4byte 0x00000AB4
_080C0214: .4byte gUnk_0203AD10

	thumb_func_start sub_080C0218
sub_080C0218: @ 0x080C0218
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C0248 @ =sub_080C0320
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C024C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C0254
	.align 2, 0
_080C0248: .4byte sub_080C0320
_080C024C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C0254:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C02E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C02A4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C02A4:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080C02E8 @ =0x20000043
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x66
	strh r6, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C02EC
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080C02F4
	.align 2, 0
_080C02E4: .4byte gUnk_03000510
_080C02E8: .4byte 0x20000043
_080C02EC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C02F4:
	str r0, [r4, #8]
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E2B0
	ldr r0, [r5, #8]
	ldr r1, _080C031C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C031C: .4byte 0xEFFFFFFF

	thumb_func_start sub_080C0320
sub_080C0320: @ 0x080C0320
	push {r4, r5, r6, r7, lr}
	ldr r0, _080C033C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0340
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C0348
	.align 2, 0
_080C033C: .4byte gCurTask
_080C0340:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C0348:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r0, [r4, #8]
	movs r7, #0x80
	lsls r7, r7, #5
	ands r0, r7
	cmp r0, #0
	beq _080C035E
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
_080C035E:
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x56
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0402
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080C039A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
	b _080C0402
_080C039A:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C0402
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080C03C8
	ldr r2, _080C03C0 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C03C4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C03CA
	.align 2, 0
_080C03C0: .4byte gUnk_02023530
_080C03C4: .4byte 0x0000065E
_080C03C8:
	movs r1, #0xff
_080C03CA:
	cmp r1, #0xff
	beq _080C0402
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C0408 @ =gUnk_02022EB0
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
	ldr r2, _080C040C @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C0402:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0408: .4byte gUnk_02022EB0
_080C040C: .4byte gUnk_02022F50

	thumb_func_start sub_080C0410
sub_080C0410: @ 0x080C0410
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080C042E
	cmp r0, #1
	ble _080C0426
	cmp r0, #2
	beq _080C0436
_080C0426:
	adds r0, r1, #0
	bl sub_080C0440
	b _080C043C
_080C042E:
	adds r0, r1, #0
	bl sub_080C0548
	b _080C043C
_080C0436:
	adds r0, r1, #0
	bl sub_080C0578
_080C043C:
	pop {r0}
	bx r0

	thumb_func_start sub_080C0440
sub_080C0440: @ 0x080C0440
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0468 @ =sub_080BFEA0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x14
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0468: .4byte sub_080BFEA0

	thumb_func_start sub_080C046C
sub_080C046C: @ 0x080C046C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C04A4 @ =sub_080C04B8
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C04A8
	orrs r2, r3
	b _080C04AE
	.align 2, 0
_080C04A4: .4byte sub_080C04B8
_080C04A8:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C04AE:
	str r2, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C04B8
sub_080C04B8: @ 0x080C04B8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C04D0
	adds r0, r1, #0
	bl sub_080BFF74
_080C04D0:
	pop {r0}
	bx r0

	thumb_func_start sub_080C04D4
sub_080C04D4: @ 0x080C04D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C04F4 @ =sub_080C04F8
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C04F4: .4byte sub_080C04F8

	thumb_func_start sub_080C04F8
sub_080C04F8: @ 0x080C04F8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080C0510
	adds r0, r1, #0
	bl sub_080C0514
_080C0510:
	pop {r0}
	bx r0

	thumb_func_start sub_080C0514
sub_080C0514: @ 0x080C0514
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0544 @ =sub_080C00E0
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080C0218
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0544: .4byte sub_080C00E0

	thumb_func_start sub_080C0548
sub_080C0548: @ 0x080C0548
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0568 @ =sub_080C056C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0568: .4byte sub_080C056C

	thumb_func_start sub_080C056C
sub_080C056C: @ 0x080C056C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C0578
sub_080C0578: @ 0x080C0578
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0598 @ =sub_080C059C
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0598: .4byte sub_080C059C

	thumb_func_start sub_080C059C
sub_080C059C: @ 0x080C059C
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start CreateFoley
CreateFoley: @ 0x080C05A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C05DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C05E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C05E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C05EC
	.align 2, 0
_080C05DC: .4byte ObjectMain
_080C05E0: .4byte ObjectDestroy
_080C05E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C05EC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
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
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D5CC
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C063E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080C063E:
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080C0668 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C0668: .4byte gUnk_08351648

	thumb_func_start sub_080C066C
sub_080C066C: @ 0x080C066C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080C068A
	b _080C07CC
_080C068A:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	adds r5, r4, #0
	adds r5, #0x9f
	ldr r6, _080C074C @ =gUnk_08354EEC
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080C077C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C06C0
	subs r0, r1, #1
	strb r0, [r5]
_080C06C0:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C06E8
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080C06E8:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C0750
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080C0720
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0720
	rsbs r0, r2, #0
	strh r0, [r3]
_080C0720:
	ldrb r2, [r5]
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080C077C
	strh r2, [r7]
	b _080C077C
	.align 2, 0
_080C074C: .4byte gUnk_08354EEC
_080C0750:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C079A
	rsbs r0, r2, #0
	strh r0, [r3]
_080C077C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C079A
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r3]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r3]
	b _080C07AC
_080C079A:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_080C07AC:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	b _080C098C
_080C07CC:
	ldr r3, _080C08C0 @ =gUnk_08354E98
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r7, [r2]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	movs r1, #0x9e
	adds r1, r1, r4
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	bne _080C0806
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0
	bne _080C08F0
	movs r0, #0xff
	strb r0, [r5]
_080C0806:
	mov r7, r8
	ldrb r0, [r7]
	adds r3, r4, #0
	adds r3, #0x50
	movs r1, #0x52
	adds r1, r1, r4
	mov ip, r1
	cmp r0, #0
	bne _080C08F0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C0832
	subs r0, r1, #1
	strb r0, [r5]
_080C0832:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, r8
	strb r0, [r2]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C085A
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080C085A:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C08C4
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
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080C0892
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0892
	rsbs r0, r2, #0
	strh r0, [r3]
_080C0892:
	ldrb r2, [r5]
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080C08F0
	strh r2, [r7]
	b _080C08F0
	.align 2, 0
_080C08C0: .4byte gUnk_08354E98
_080C08C4:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C090E
	rsbs r0, r2, #0
	strh r0, [r3]
_080C08F0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C090E
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r3]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r3]
	b _080C0920
_080C090E:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_080C0920:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080C098C
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C095E
	cmp r0, #1
	beq _080C0962
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C0966
_080C095E:
	movs r0, #0x80
	b _080C0966
_080C0962:
	movs r0, #0x80
	lsls r0, r0, #1
_080C0966:
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080C097E
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080C097E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080C098C
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080C098C:
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0xf
	bne _080C09A2
	adds r0, r4, #0
	bl sub_0803D5CC
	str r0, [r5]
_080C09A2:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C09BC
	ldr r0, _080C09B8 @ =0x000027FF
	cmp r2, r0
	ble _080C09C4
	b _080C09D0
	.align 2, 0
_080C09B8: .4byte 0x000027FF
_080C09BC:
	subs r1, r1, r0
	ldr r0, _080C09CC @ =0x000027FF
	cmp r1, r0
	bgt _080C09D0
_080C09C4:
	adds r0, r4, #0
	bl sub_080C09E0
	b _080C09D6
	.align 2, 0
_080C09CC: .4byte 0x000027FF
_080C09D0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C09D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C09E0
sub_080C09E0: @ 0x080C09E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0A78 @ =sub_080C0D18
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x82
	movs r1, #0
	movs r0, #0x2e
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080C0BD0
	ldr r1, _080C0A7C @ =gUnk_02020EE0
	ldr r0, _080C0A80 @ =gUnk_0203AD3C
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
	bne _080C0A72
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C0A36
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C0A72
_080C0A36:
	ldr r1, _080C0A84 @ =gUnk_08D60FA4
	ldr r4, _080C0A88 @ =gSongTable
	ldr r2, _080C0A8C @ =0x00000A7C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C0A5A
	ldr r1, _080C0A90 @ =0x00000A78
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C0A72
_080C0A5A:
	cmp r3, #0
	beq _080C0A6C
	ldr r0, _080C0A94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C0A72
_080C0A6C:
	ldr r0, _080C0A98 @ =0x0000014F
	bl m4aSongNumStart
_080C0A72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0A78: .4byte sub_080C0D18
_080C0A7C: .4byte gUnk_02020EE0
_080C0A80: .4byte gUnk_0203AD3C
_080C0A84: .4byte gUnk_08D60FA4
_080C0A88: .4byte gSongTable
_080C0A8C: .4byte 0x00000A7C
_080C0A90: .4byte 0x00000A78
_080C0A94: .4byte gUnk_0203AD10
_080C0A98: .4byte 0x0000014F

	thumb_func_start sub_080C0A9C
sub_080C0A9C: @ 0x080C0A9C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C0AD0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C0AD4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0AD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C0AE0
	.align 2, 0
_080C0AD0: .4byte ObjectMain
_080C0AD4: .4byte ObjectDestroy
_080C0AD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C0AE0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldr r2, _080C0B58 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C0B58: .4byte gUnk_08351648

	thumb_func_start sub_080C0B5C
sub_080C0B5C: @ 0x080C0B5C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	cmp r0, r3
	ble _080C0B80
	strh r3, [r1]
_080C0B80:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0BAC
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C0BA8 @ =0xFFFFFD00
	cmp r0, r2
	blt _080C0BC4
	cmp r0, r3
	ble _080C0BC6
_080C0BA2:
	strh r3, [r1]
	b _080C0BC6
	.align 2, 0
_080C0BA8: .4byte 0xFFFFFD00
_080C0BAC:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	bgt _080C0BA2
	ldr r2, _080C0BCC @ =0xFFFFFD00
	cmp r0, r2
	bge _080C0BC6
_080C0BC4:
	strh r2, [r1]
_080C0BC6:
	pop {r0}
	bx r0
	.align 2, 0
_080C0BCC: .4byte 0xFFFFFD00

	thumb_func_start sub_080C0BD0
sub_080C0BD0: @ 0x080C0BD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r7, r0, #0
	subs r7, #8
	movs r4, #0
	ldr r1, _080C0BF4 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C0BF8 @ =gUnk_020229E0
	b _080C0C10
	.align 2, 0
_080C0BF4: .4byte gUnk_020229D4
_080C0BF8: .4byte gUnk_020229E0
_080C0BFC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C0C18
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C0C10:
	cmp r0, #0
	bne _080C0BFC
	orrs r2, r3
	str r2, [r1]
_080C0C18:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x9d
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C0C6C
sub_080C0C6C: @ 0x080C0C6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0CB4 @ =sub_080C066C
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
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C0CAC
	ldr r0, [r4, #8]
	ldr r1, _080C0CB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080C0CAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CB4: .4byte sub_080C066C
_080C0CB8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080C0CBC
sub_080C0CBC: @ 0x080C0CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0CE8 @ =sub_080C0D68
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080C0CEC @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CE8: .4byte sub_080C0D68
_080C0CEC: .4byte 0xFFFFFEBF

	thumb_func_start sub_080C0CF0
sub_080C0CF0: @ 0x080C0CF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0D14 @ =sub_080C0B5C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0D14: .4byte sub_080C0B5C

	thumb_func_start sub_080C0D18
sub_080C0D18: @ 0x080C0D18
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0xa
	ble _080C0D34
	adds r0, r3, #0
	bl sub_080C0CBC
	b _080C0D5E
_080C0D34:
	ldr r1, _080C0D64 @ =gUnk_08350BCC
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r2, [r0]
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080C0D5E:
	pop {r0}
	bx r0
	.align 2, 0
_080C0D64: .4byte gUnk_08350BCC

	thumb_func_start sub_080C0D68
sub_080C0D68: @ 0x080C0D68
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080C0D90
	adds r0, r4, #0
	bl sub_08073D2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C0D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

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
	ldr r2, _080C1978 @ =gUnk_02020EE0
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
_080C1978: .4byte gUnk_02020EE0
_080C197C: .4byte gUnk_0203AD3C
_080C1980: .4byte 0x0000030A
_080C1984:
	mov r2, sb
	strb r2, [r5]
_080C1988:
	ldr r1, _080C1A04 @ =gUnk_02020EE0
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
_080C1A04: .4byte gUnk_02020EE0
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
	ldr r6, _080C1A88 @ =gUnk_02023530
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
_080C1A88: .4byte gUnk_02023530
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
	ldr r2, _080C1BD4 @ =gUnk_02020EE0
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
_080C1BD4: .4byte gUnk_02020EE0
_080C1BD8: .4byte gUnk_0203AD3C
_080C1BDC: .4byte 0xFFF7FFFF
_080C1BE0: .4byte 0x0400000A
_080C1BE4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C1C3C
	movs r0, #0xc
	bl sub_081570B0
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
	bl sub_08157190
	str r4, [r5, #0x10]
_080C1C32:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C1C3C:
	ldr r2, _080C1C7C @ =gUnk_02020EE0
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
_080C1C7C: .4byte gUnk_02020EE0
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

	thumb_func_start sub_080C1D54
sub_080C1D54: @ 0x080C1D54
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
	ldr r1, _080C1EBC @ =gUnk_02020EE0
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
_080C1EBC: .4byte gUnk_02020EE0
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
	ldr r2, _080C1F74 @ =gUnk_02023530
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
_080C1F74: .4byte gUnk_02023530

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

	thumb_func_start CreateNoddy
CreateNoddy: @ 0x080C2200
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C2234 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C2238 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C223C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C2244
	.align 2, 0
_080C2234: .4byte ObjectMain
_080C2238: .4byte ObjectDestroy
_080C223C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C2244:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C2264
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C226C
_080C2264:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C226C:
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
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _080C22A8
	cmp r0, #1
	beq _080C22C8
	b _080C22CE
_080C22A8:
	ldr r2, _080C22C4 @ =gUnk_08351648
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
	b _080C22CE
	.align 2, 0
_080C22C4: .4byte gUnk_08351648
_080C22C8:
	adds r0, r5, #0
	bl sub_080C2978
_080C22CE:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C22E4
sub_080C22E4: @ 0x080C22E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080C22FA
	adds r0, r4, #0
	bl sub_080C2978
	b _080C2332
_080C22FA:
	ldr r2, _080C2338 @ =sub_080C233C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x87
	ldrb r3, [r1]
	lsls r0, r3
	strh r0, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C2322
	subs r1, #4
	movs r0, #1
	strb r0, [r1]
_080C2322:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2332
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C2332:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2338: .4byte sub_080C233C

	thumb_func_start sub_080C233C
sub_080C233C: @ 0x080C233C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C2366
	eors r2, r5
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C2366:
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C238C
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C238C
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C238C:
	movs r0, #4
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x87
	movs r0, #0x78
	ldrb r2, [r2]
	lsls r0, r2
	cmp r1, r0
	ble _080C23A4
	adds r0, r4, #0
	bl sub_080C2900
_080C23A4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C23B0
sub_080C23B0: @ 0x080C23B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C23D0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080C23D0:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xe2
	ble _080C23DE
	adds r0, r4, #0
	bl sub_080C293C
_080C23DE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C241A
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x78
	ble _080C241A
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C240C
	ldr r0, _080C2408 @ =0x00005FFF
	cmp r2, r0
	ble _080C2414
	b _080C241A
	.align 2, 0
_080C2408: .4byte 0x00005FFF
_080C240C:
	subs r1, r1, r0
	ldr r0, _080C2434 @ =0x00005FFF
	cmp r1, r0
	bgt _080C241A
_080C2414:
	adds r0, r4, #0
	bl sub_080C293C
_080C241A:
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080C2426
	adds r0, r4, #0
	bl sub_080C2438
_080C2426:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2434: .4byte 0x00005FFF

	thumb_func_start sub_080C2438
sub_080C2438: @ 0x080C2438
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080C246C @ =sub_080C25CC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C2470 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C2474
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C247C
	.align 2, 0
_080C246C: .4byte sub_080C25CC
_080C2470: .4byte sub_0803DCCC
_080C2474:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C247C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0x20
	strh r2, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C24BE
	ldr r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x34]
	rsbs r0, r2, #0
	strh r0, [r4, #0x3c]
	b _080C24CE
_080C24BE:
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	ldr r2, _080C255C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080C24CE:
	ldr r0, _080C2560 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r2, r6, #0
	adds r2, #0x56
	movs r0, #1
	ldrb r2, [r2]
	lsls r0, r2
	movs r2, #0x10
	mov r8, r2
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _080C24F4
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080C24F4:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080C2564 @ =0x00000322
	movs r0, #6
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r0, #0
	mov ip, r0
	mov r1, ip
	strb r1, [r5]
	ldr r3, [r6, #0xc]
	mov r2, r8
	ands r3, r2
	cmp r3, #0
	beq _080C257A
	ldr r2, _080C2568 @ =gUnk_02020EE0
	ldr r0, _080C256C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C2574
	ldr r0, _080C2570 @ =gUnk_08351648
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C25BE
	adds r0, r4, #0
	b _080C25A8
	.align 2, 0
_080C255C: .4byte 0xFFFFF400
_080C2560: .4byte gUnk_03000510
_080C2564: .4byte 0x00000322
_080C2568: .4byte gUnk_02020EE0
_080C256C: .4byte gUnk_0203AD3C
_080C2570: .4byte gUnk_08351648
_080C2574:
	mov r2, ip
	strb r2, [r5]
	b _080C25BE
_080C257A:
	ldr r2, _080C25B4 @ =gUnk_02020EE0
	ldr r0, _080C25B8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C25BC
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C25BE
	adds r0, r7, #0
_080C25A8:
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080C25BE
	.align 2, 0
_080C25B4: .4byte gUnk_02020EE0
_080C25B8: .4byte gUnk_0203AD3C
_080C25BC:
	strb r3, [r5]
_080C25BE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C25CC
sub_080C25CC: @ 0x080C25CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080C25EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C25F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C25F8
	.align 2, 0
_080C25EC: .4byte gCurTask
_080C25F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C25F8:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080C2610
	ldr r0, [r2]
	bl TaskDestroy
	b _080C28F6
_080C2610:
	ldr r2, _080C2678 @ =gUnk_02020EE0
	ldr r0, _080C267C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C26C0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080C2688
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080C26E6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #1
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080C2680 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C2684 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080C26E6
	.align 2, 0
_080C2678: .4byte gUnk_02020EE0
_080C267C: .4byte gUnk_0203AD3C
_080C2680: .4byte 0xFFF7FFFF
_080C2684: .4byte 0x0400000A
_080C2688:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080C26E6
	movs r0, #1
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080C26B8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C26BC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C26E6
	.align 2, 0
_080C26B8: .4byte 0xFFF7FFFF
_080C26BC: .4byte 0x0400000A
_080C26C0:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080C26DC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080C26DC
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080C26DC:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080C26E6:
	ldr r3, [r6, #0xc]
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080C273A
	ldr r2, _080C2724 @ =gUnk_02020EE0
	ldr r0, _080C2728 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080C2730
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C2792
	ldr r0, _080C272C @ =gUnk_08351648
	movs r2, #0x97
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r6, [r0]
	b _080C2764
	.align 2, 0
_080C2724: .4byte gUnk_02020EE0
_080C2728: .4byte gUnk_0203AD3C
_080C272C: .4byte gUnk_08351648
_080C2730:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	b _080C2792
_080C273A:
	ldr r2, _080C2780 @ =gUnk_02020EE0
	ldr r0, _080C2784 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080C278C
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C2792
	ldr r6, _080C2788 @ =0x00000322
_080C2764:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C2792
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080C2792
	.align 2, 0
_080C2780: .4byte gUnk_02020EE0
_080C2784: .4byte gUnk_0203AD3C
_080C2788: .4byte 0x00000322
_080C278C:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r3, [r0]
_080C2792:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080C27E4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C27B0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C27B0
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080C27B0:
	cmp r3, #0
	beq _080C27E4
	ldr r0, _080C27E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C2850
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C2850
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080C28F6
	.align 2, 0
_080C27E0: .4byte gUnk_03000510
_080C27E4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080C2848 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080C2822
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C2822
	movs r3, #4
_080C2822:
	ldr r0, _080C284C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C2850
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C2850
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080C28F6
	.align 2, 0
_080C2848: .4byte gUnk_02020EE0
_080C284C: .4byte gUnk_03000510
_080C2850:
	ldr r0, _080C28C4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _080C2894
	ldr r6, _080C28C8 @ =gUnk_02023530
	ldrh r3, [r7]
	ldr r4, _080C28CC @ =gUnk_02026D50
_080C2862:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080C288C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C28A6
_080C288C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C2862
_080C2894:
	movs r0, #1
	cmp r0, #0
	beq _080C28A6
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080C28A6:
	mov r0, ip
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _080C28D0
	ldrh r0, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080C28F6
	.align 2, 0
_080C28C4: .4byte gUnk_0203AD44
_080C28C8: .4byte gUnk_02023530
_080C28CC: .4byte gUnk_02026D50
_080C28D0:
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C28F0
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080C28F0:
	adds r0, r5, #0
	bl sub_0806FAC8
_080C28F6:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2900
sub_080C2900: @ 0x080C2900
	push {lr}
	ldr r2, _080C2910 @ =sub_080C2914
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C2910: .4byte sub_080C2914

	thumb_func_start sub_080C2914
sub_080C2914: @ 0x080C2914
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2930
	adds r0, r4, #0
	bl sub_080C29A4
_080C2930:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C293C
sub_080C293C: @ 0x080C293C
	push {lr}
	ldr r2, _080C294C @ =sub_080C2950
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C294C: .4byte sub_080C2950

	thumb_func_start sub_080C2950
sub_080C2950: @ 0x080C2950
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C296C
	adds r0, r4, #0
	bl sub_080C22E4
_080C296C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2978
sub_080C2978: @ 0x080C2978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C2990 @ =sub_080C2994
	movs r1, #3
	bl ObjectSetFunc
	adds r4, #0x52
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2990: .4byte sub_080C2994

	thumb_func_start sub_080C2994
sub_080C2994: @ 0x080C2994
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr

	thumb_func_start sub_080C29A4
sub_080C29A4: @ 0x080C29A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C29BC @ =sub_080C23B0
	movs r1, #3
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C29BC: .4byte sub_080C23B0

	thumb_func_start sub_080C29C0
sub_080C29C0: @ 0x080C29C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, [r5, #0x40]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x44]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	movs r4, #0
	ldr r1, _080C29EC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C29F0 @ =gUnk_020229E0
	b _080C2A08
	.align 2, 0
_080C29EC: .4byte gUnk_020229D4
_080C29F0: .4byte gUnk_020229E0
_080C29F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C2A10
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C2A08:
	cmp r0, #0
	bne _080C29F4
	orrs r2, r3
	str r2, [r1]
_080C2A10:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa2
	strb r0, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
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
	str r5, [r0, #0x70]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2A6C
sub_080C2A6C: @ 0x080C2A6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C2AA0 @ =ObjectMain
	ldr r2, _080C2AA4 @ =0x00001001
	ldr r1, _080C2AA8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C2AAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C2AB4
	.align 2, 0
_080C2AA0: .4byte ObjectMain
_080C2AA4: .4byte 0x00001001
_080C2AA8: .4byte ObjectDestroy
_080C2AAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C2AB4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xd0
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	movs r5, #1
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #9
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
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C2B12
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
_080C2B12:
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080C3058
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080C2B28
sub_080C2B28: @ 0x080C2B28
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _080C2B3E
	adds r0, r5, #0
	bl sub_080C3058
	b _080C2BA0
_080C2B3E:
	ldr r2, _080C2BA8 @ =sub_080C2FC8
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	ldr r1, _080C2BAC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r4, [r2, #0x40]
	ldr r0, [r5, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r1, [r5, #0x44]
	ldr r0, [r2, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	adds r0, r4, #0
	muls r0, r4, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	bl __divsi3
	lsls r1, r0, #8
	lsls r0, r0, #9
	adds r0, r0, r1
	lsls r0, r0, #1
	asrs r0, r0, #8
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080C2BB0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
_080C2BA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2BA8: .4byte sub_080C2FC8
_080C2BAC: .4byte 0xFFFFFDFF
_080C2BB0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C2BB4
sub_080C2BB4: @ 0x080C2BB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfe
	ble _080C2BD8
	b _080C2D38
_080C2BD8:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xe
	bls _080C2C12
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080C2C12:
	ldr r2, [r4, #0x44]
	ldr r1, _080C2C3C @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C2C44
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2C40 @ =0x00000181
	cmp r0, r2
	ble _080C2C90
	strh r2, [r1]
	b _080C2C90
	.align 2, 0
_080C2C3C: .4byte 0xFFFFF000
_080C2C40: .4byte 0x00000181
_080C2C44:
	cmp r2, r0
	bge _080C2C64
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2C60 @ =0xFFFFFE7F
	cmp r0, r2
	bge _080C2C90
	strh r2, [r1]
	b _080C2C90
	.align 2, 0
_080C2C60: .4byte 0xFFFFFE7F
_080C2C64:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C2C82
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2C90
	mov r0, r8
	strh r0, [r1]
	b _080C2C90
_080C2C82:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2C90
	mov r3, r8
	strh r3, [r1]
_080C2C90:
	ldr r2, [r4, #0x40]
	ldr r1, _080C2CB0 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r7, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C2CB4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080C2CEC
	.align 2, 0
_080C2CB0: .4byte 0xFFFFF000
_080C2CB4:
	cmp r2, r0
	ble _080C2D10
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C2CEC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2CE4 @ =0xFFFFFE7F
	cmp r0, r2
	blt _080C2CE0
	ldr r2, _080C2CE8 @ =0x00000181
	cmp r0, r2
	ble _080C2D38
_080C2CE0:
	strh r2, [r1]
	b _080C2D38
	.align 2, 0
_080C2CE4: .4byte 0xFFFFFE7F
_080C2CE8: .4byte 0x00000181
_080C2CEC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x4d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C2D08 @ =0x00000181
	cmp r0, r2
	bgt _080C2CE0
	ldr r2, _080C2D0C @ =0xFFFFFE7F
	cmp r0, r2
	bge _080C2D38
	b _080C2CE0
	.align 2, 0
_080C2D08: .4byte 0x00000181
_080C2D0C: .4byte 0xFFFFFE7F
_080C2D10:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C2D2A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2D38
	b _080C2D34
_080C2D2A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2D38
_080C2D34:
	movs r0, #0
	strh r0, [r1]
_080C2D38:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2D44
sub_080C2D44: @ 0x080C2D44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	ldr r1, _080C2D70 @ =0xFFFFDFFF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldr r5, [r3, #0x70]
	mov ip, r5
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2D74
	ldr r0, [r3, #0x18]
	orrs r0, r1
	b _080C2D7A
	.align 2, 0
_080C2D70: .4byte 0xFFFFDFFF
_080C2D74:
	ldr r0, [r3, #0x18]
	ldr r1, _080C2E34 @ =0xFFFFF7FF
	ands r0, r1
_080C2D7A:
	str r0, [r3, #0x18]
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x35
	bne _080C2DAC
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r5, #8]
_080C2DAC:
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080C2E44
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080C2E2C
	adds r4, r5, #0
	adds r4, #0x83
	ldr r2, _080C2E38 @ =gUnk_08351648
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080C2E0C
	mov r1, ip
	adds r1, #0x52
	ldr r0, _080C2E3C @ =0x0000FF80
	strh r0, [r1]
	ldr r1, _080C2E40 @ =gUnk_08355478
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r4, ip
	adds r4, #0x50
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E0C
	rsbs r0, r2, #0
	strh r0, [r4]
_080C2E0C:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _080C2E1E
	movs r0, #0
	strh r0, [r3, #4]
_080C2E1E:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E2C
	movs r0, #0x18
	strh r0, [r3, #4]
_080C2E2C:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	b _080C2E50
	.align 2, 0
_080C2E34: .4byte 0xFFFFF7FF
_080C2E38: .4byte gUnk_08351648
_080C2E3C: .4byte 0x0000FF80
_080C2E40: .4byte gUnk_08355478
_080C2E44:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C2E50
	b _080C2FA4
_080C2E50:
	mov r0, ip
	ldrh r1, [r0, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #2
	cmp r1, r0
	bne _080C2EBC
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C2EA0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2E7A
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2E80
_080C2E7A:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2E98 @ =0xFFFFFF00
_080C2E80:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r1, _080C2E9C @ =gUnk_08355490
	mov r2, ip
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	b _080C2F68
	.align 2, 0
_080C2E98: .4byte 0xFFFFFF00
_080C2E9C: .4byte gUnk_08355490
_080C2EA0:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F62
	mov r2, ip
	ldr r0, [r2, #0x44]
	movs r1, #0x90
	lsls r1, r1, #5
	b _080C2F68
_080C2EBC:
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	bne _080C2F48
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C2F04
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2EE0
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2EE6
_080C2EE0:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2EFC @ =0xFFFFFF00
_080C2EE6:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r1, _080C2F00 @ =gUnk_083554CF
	mov r2, ip
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	b _080C2F68
	.align 2, 0
_080C2EFC: .4byte 0xFFFFFF00
_080C2F00: .4byte gUnk_083554CF
_080C2F04:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C2F18
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r1, #0xff
	b _080C2F1E
_080C2F18:
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _080C2F38 @ =0xFFFFFF00
_080C2F1E:
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F3C
	mov r2, ip
	ldr r0, [r2, #0x44]
	movs r1, #0x88
	lsls r1, r1, #5
	b _080C2F68
	.align 2, 0
_080C2F38: .4byte 0xFFFFFF00
_080C2F3C:
	mov r2, ip
	ldr r0, [r2, #0x44]
	ldr r1, _080C2F44 @ =0xFFFFEF00
	b _080C2F68
	.align 2, 0
_080C2F44: .4byte 0xFFFFEF00
_080C2F48:
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C2F62
	ldr r0, [r2, #0x44]
	movs r1, #0x90
	lsls r1, r1, #5
	b _080C2F68
_080C2F62:
	mov r2, ip
	ldr r0, [r2, #0x44]
	ldr r1, _080C2F88 @ =0xFFFFEE00
_080C2F68:
	adds r0, r0, r1
	str r0, [r3, #0x44]
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _080C2FBE
	ldrb r0, [r6]
	cmp r0, #0x12
	bne _080C2F8C
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #7
	b _080C2FA2
	.align 2, 0
_080C2F88: .4byte 0xFFFFEE00
_080C2F8C:
	cmp r0, #0
	bne _080C2F9C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	beq _080C2FA4
_080C2F9C:
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0
_080C2FA2:
	strb r0, [r1]
_080C2FA4:
	movs r0, #0
	str r0, [r3, #0x7c]
	adds r0, r3, #0
	bl sub_080C2B28
	ldrb r0, [r6]
	cmp r0, #0x35
	bne _080C2FBE
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C2FBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2FC8
sub_080C2FC8: @ 0x080C2FC8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2FF0
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C2FEA
	adds r0, r2, #0
	bl sub_080C302C
	b _080C2FF0
_080C2FEA:
	adds r0, r2, #0
	bl sub_080C2FF4
_080C2FF0:
	pop {r0}
	bx r0

	thumb_func_start sub_080C2FF4
sub_080C2FF4: @ 0x080C2FF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3018 @ =sub_080C3020
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080C301C @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3018: .4byte sub_080C3020
_080C301C: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C3020
sub_080C3020: @ 0x080C3020
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C302C
sub_080C302C: @ 0x080C302C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3050 @ =sub_080C2BB4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	ldr r1, _080C3054 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3050: .4byte sub_080C2BB4
_080C3054: .4byte 0xFDFFFFFF

	thumb_func_start sub_080C3058
sub_080C3058: @ 0x080C3058
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3094 @ =sub_080C2D44
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x35
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _080C3098 @ =sub_080C309C
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3094: .4byte sub_080C2D44
_080C3098: .4byte sub_080C309C

	thumb_func_start sub_080C309C
sub_080C309C: @ 0x080C309C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	ands r0, r3
	cmp r0, #0
	beq _080C30BC
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2, #8]
	orrs r0, r3
	str r0, [r2, #8]
_080C30BC:
	pop {r0}
	bx r0

	thumb_func_start CreateHotHead
CreateHotHead: @ 0x080C30C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C30F4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C30F8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C30FC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3104
	.align 2, 0
_080C30F4: .4byte ObjectMain
_080C30F8: .4byte ObjectDestroy
_080C30FC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3104:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C3124
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C312C
_080C3124:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C312C:
	str r0, [r4, #8]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C321A
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080C3184
	ldr r0, _080C3180 @ =0x00005FFF
	cmp r2, r0
	ble _080C318C
	b _080C3200
	.align 2, 0
_080C3180: .4byte 0x00005FFF
_080C3184:
	subs r1, r0, r3
	ldr r0, _080C31A0 @ =0x00005FFF
	cmp r1, r0
	bgt _080C3200
_080C318C:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C31A8
	ldr r0, _080C31A4 @ =0x00003FFF
	cmp r2, r0
	ble _080C31B0
	b _080C3200
	.align 2, 0
_080C31A0: .4byte 0x00005FFF
_080C31A4: .4byte 0x00003FFF
_080C31A8:
	subs r1, r1, r0
	ldr r0, _080C31D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080C3200
_080C31B0:
	ldr r2, _080C31D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C31D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C31DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C31E0
	adds r0, r4, #0
	bl sub_080C3F2C
	b _080C321A
	.align 2, 0
_080C31D0: .4byte 0x00003FFF
_080C31D4: .4byte gRngVal
_080C31D8: .4byte 0x00196225
_080C31DC: .4byte 0x3C6EF35F
_080C31E0:
	ldr r2, _080C31FC @ =gUnk_08351648
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
	b _080C321A
	.align 2, 0
_080C31FC: .4byte gUnk_08351648
_080C3200:
	ldr r2, _080C3230 @ =gUnk_08351648
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
_080C321A:
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
_080C3230: .4byte gUnk_08351648

	thumb_func_start sub_080C3234
sub_080C3234: @ 0x080C3234
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C3254 @ =sub_080C3294
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C3258
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080C325E
	.align 2, 0
_080C3254: .4byte sub_080C3294
_080C3258:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
_080C325E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3272
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C3272:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3280
	movs r0, #0x2d
	b _080C3282
_080C3280:
	movs r0, #0x5a
_080C3282:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C3294
sub_080C3294: @ 0x080C3294
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C339E
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C32CA
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C32CA:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C3382
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C32E4
	movs r0, #0x1e
	b _080C32E6
_080C32E4:
	movs r0, #0x3c
_080C32E6:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080C3308
	ldr r0, _080C3304 @ =0x00005FFF
	cmp r2, r0
	ble _080C3310
	b _080C3364
	.align 2, 0
_080C3304: .4byte 0x00005FFF
_080C3308:
	subs r1, r0, r3
	ldr r0, _080C3324 @ =0x00005FFF
	cmp r1, r0
	bgt _080C3364
_080C3310:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C332C
	ldr r0, _080C3328 @ =0x00003FFF
	cmp r2, r0
	ble _080C3334
	b _080C3364
	.align 2, 0
_080C3324: .4byte 0x00005FFF
_080C3328: .4byte 0x00003FFF
_080C332C:
	subs r1, r1, r0
	ldr r0, _080C3354 @ =0x00003FFF
	cmp r1, r0
	bgt _080C3364
_080C3334:
	ldr r2, _080C3358 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C335C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C3360 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3382
	adds r0, r4, #0
	bl sub_080C3F2C
	b _080C3382
	.align 2, 0
_080C3354: .4byte 0x00003FFF
_080C3358: .4byte gRngVal
_080C335C: .4byte 0x00196225
_080C3360: .4byte 0x3C6EF35F
_080C3364:
	ldr r2, _080C33A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C33A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C33AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C3382
	adds r0, r4, #0
	bl sub_080C3F2C
_080C3382:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	bls _080C339E
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080C33B0
_080C339E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C33A4: .4byte gRngVal
_080C33A8: .4byte 0x00196225
_080C33AC: .4byte 0x3C6EF35F

	thumb_func_start sub_080C33B0
sub_080C33B0: @ 0x080C33B0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080C33E0 @ =sub_080C34D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C33E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C33E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C33F0
	.align 2, 0
_080C33E0: .4byte sub_080C34D4
_080C33E4: .4byte sub_0803DCCC
_080C33E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C33F0:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r4, #0x3c]
	ldr r0, _080C345C @ =0x0000FF80
	strh r0, [r4, #0x3e]
	ldr r2, _080C3460 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C3464 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C3468 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r4, #0x38]
	adds r1, #0xc
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	subs r1, r1, r0
	str r1, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C346C
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4, #0x34]
	rsbs r0, r3, #0
	strh r0, [r4, #0x3c]
	b _080C3474
	.align 2, 0
_080C345C: .4byte 0x0000FF80
_080C3460: .4byte gRngVal
_080C3464: .4byte 0x00196225
_080C3468: .4byte 0x3C6EF35F
_080C346C:
	ldr r0, [r4, #0x34]
	ldr r1, _080C34C4 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r4, #0x34]
_080C3474:
	ldr r0, _080C34C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C349A
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080C349A:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080C34CC @ =0x06012000
	ldr r3, _080C34D0 @ =0x00000297
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C34C4: .4byte 0xFFFFFC00
_080C34C8: .4byte gUnk_03000510
_080C34CC: .4byte 0x06012000
_080C34D0: .4byte 0x00000297

	thumb_func_start sub_080C34D4
sub_080C34D4: @ 0x080C34D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _080C34F4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080C34F8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3500
	.align 2, 0
_080C34F4: .4byte gCurTask
_080C34F8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3500:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080C351C
	ldr r0, [r5]
	bl TaskDestroy
	b _080C3688
_080C351C:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080C3568
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C3534
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080C3534
	str r4, [r3, #0x44]
	movs r1, #0
_080C3534:
	cmp r1, #0
	beq _080C3568
	ldr r0, _080C3564 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C35D8
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C35D8
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080C3688
	.align 2, 0
_080C3564: .4byte gUnk_03000510
_080C3568:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080C35D0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080C35AA
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080C35AA
	movs r4, #4
_080C35AA:
	ldr r0, _080C35D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C35D8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080C35D8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080C3688
	.align 2, 0
_080C35D0: .4byte gUnk_02020EE0
_080C35D4: .4byte gUnk_03000510
_080C35D8:
	ldr r0, _080C3644 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C361C
	ldr r6, _080C3648 @ =gUnk_02023530
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080C364C @ =gUnk_02026D50
_080C35EA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080C3614
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C362E
_080C3614:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C35EA
_080C361C:
	movs r0, #1
	cmp r0, #0
	beq _080C362E
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080C362E:
	ldrh r4, [r3, #6]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080C3650
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r4
	strh r0, [r3, #6]
	b _080C3688
	.align 2, 0
_080C3644: .4byte gUnk_0203AD44
_080C3648: .4byte gUnk_02023530
_080C364C: .4byte gUnk_02026D50
_080C3650:
	ldr r2, _080C3690 @ =gUnk_0835552C
	ldrh r1, [r3, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	adds r1, #1
	strh r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	bne _080C3682
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080C3682:
	adds r0, r3, #0
	bl sub_0806FAC8
_080C3688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3690: .4byte gUnk_0835552C

	thumb_func_start sub_080C3694
sub_080C3694: @ 0x080C3694
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080C36C8 @ =sub_080C3880
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C36CC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C36D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C36D8
	.align 2, 0
_080C36C8: .4byte sub_080C3880
_080C36CC: .4byte sub_0803DCCC
_080C36D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C36D8:
	adds r5, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	strh r1, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C3794 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C3728
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_080C3728:
	adds r0, r5, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, _080C3798 @ =0x20000103
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	cmp r6, #5
	bls _080C3758
	movs r6, #5
_080C3758:
	ldr r2, _080C379C @ =gUnk_0835553A
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x50
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #8]
	ands r0, r7
	cmp r0, #0
	beq _080C37A4
	ldr r0, [r5, #0x40]
	ldr r1, _080C37A0 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _080C37B8
	.align 2, 0
_080C3794: .4byte gUnk_03000510
_080C3798: .4byte 0x20000103
_080C379C: .4byte gUnk_0835553A
_080C37A0: .4byte 0xFFFFF200
_080C37A4:
	ldr r0, [r5, #0x40]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C37B8:
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	movs r3, #0xc8
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r1, _080C3860 @ =gUnk_02020EE0
	ldr r0, _080C3864 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3858
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C381C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C3858
_080C381C:
	ldr r1, _080C3868 @ =gUnk_08D60FA4
	ldr r4, _080C386C @ =gSongTable
	ldr r2, _080C3870 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C3840
	ldr r1, _080C3874 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C3858
_080C3840:
	cmp r3, #0
	beq _080C3852
	ldr r0, _080C3878 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C3858
_080C3852:
	ldr r0, _080C387C @ =0x0000013B
	bl m4aSongNumStart
_080C3858:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3860: .4byte gUnk_02020EE0
_080C3864: .4byte gUnk_0203AD3C
_080C3868: .4byte gUnk_08D60FA4
_080C386C: .4byte gSongTable
_080C3870: .4byte 0x000009DC
_080C3874: .4byte 0x000009D8
_080C3878: .4byte gUnk_0203AD10
_080C387C: .4byte 0x0000013B

	thumb_func_start sub_080C3880
sub_080C3880: @ 0x080C3880
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r0, _080C38A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C38A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C38AC
	.align 2, 0
_080C38A0: .4byte gCurTask
_080C38A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C38AC:
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080C3938 @ =0x0000FFFF
	cmp r2, r4
	beq _080C38CE
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C38CE
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080C38CE:
	ldr r2, _080C393C @ =gUnk_02020EE0
	ldr r0, _080C3940 @ =gUnk_0203AD3C
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
	bne _080C3984
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C394C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C39A8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3944 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C3948 @ =0x0400000A
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
	b _080C39A8
	.align 2, 0
_080C3938: .4byte 0x0000FFFF
_080C393C: .4byte gUnk_02020EE0
_080C3940: .4byte gUnk_0203AD3C
_080C3944: .4byte 0xFFF7FFFF
_080C3948: .4byte 0x0400000A
_080C394C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C39A8
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C397C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C3980 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C39A8
	.align 2, 0
_080C397C: .4byte 0xFFF7FFFF
_080C3980: .4byte 0x0400000A
_080C3984:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080C399E
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080C399E
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080C399E:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C39A8:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C3A6C
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C39C8
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080C3A6C
_080C39C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C3A3E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C3A3E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080C3A04
	ldr r2, _080C39FC @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C3A00 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C3A06
	.align 2, 0
_080C39FC: .4byte gUnk_02023530
_080C3A00: .4byte 0x0000065E
_080C3A04:
	movs r1, #0xff
_080C3A06:
	cmp r1, #0xff
	beq _080C3A3E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C3A74 @ =gUnk_02022EB0
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
	ldr r2, _080C3A78 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C3A3E:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C3A66
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
_080C3A66:
	adds r0, r5, #0
	bl sub_0806F8BC
_080C3A6C:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C3A74: .4byte gUnk_02022EB0
_080C3A78: .4byte gUnk_02022F50

	thumb_func_start sub_080C3A7C
sub_080C3A7C: @ 0x080C3A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	ldr r0, _080C3AB4 @ =sub_080C3CF0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080C3AB8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C3ABC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3AC4
	.align 2, 0
_080C3AB4: .4byte sub_080C3CF0
_080C3AB8: .4byte sub_0803DCCC
_080C3ABC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3AC4:
	adds r7, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r7]
	mov r2, sb
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r7, #0x44]
	str r2, [r7, #0x70]
	strh r1, [r7, #4]
	mov r0, sb
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C3BB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C3B16
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
_080C3B16:
	adds r0, r7, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, _080C3BB8 @ =0x20000103
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x5c]
	ldr r4, [r6, #0x40]
	mov r1, sb
	ldr r0, [r1, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r5, [r1, #0x44]
	ldr r0, [r6, #0x44]
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
	lsls r2, r4, #8
	mov r8, r2
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r2, r0, #8
	lsls r4, r4, #9
	add r4, r8
	lsrs r4, r4, #4
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	lsls r0, r0, #9
	adds r0, r0, r2
	lsls r0, r0, #4
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x52
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bge _080C3BBC
	movs r1, #0xde
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C3BC4
	strh r1, [r2]
	b _080C3BC4
	.align 2, 0
_080C3BB4: .4byte gUnk_03000510
_080C3BB8: .4byte 0x20000103
_080C3BBC:
	cmp r0, #0xde
	ble _080C3BC4
	movs r0, #0xde
	strh r0, [r2]
_080C3BC4:
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3BF8
	ldr r0, [r7, #0x40]
	ldr r2, _080C3BEC @ =0xFFFFF200
	adds r0, r0, r2
	str r0, [r7, #0x40]
	ldr r0, [r7, #8]
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080C3BF0 @ =0xFFFFFD24
	cmp r1, r0
	ble _080C3C1A
	ldr r0, _080C3BF4 @ =0x0000FD24
	b _080C3C18
	.align 2, 0
_080C3BEC: .4byte 0xFFFFF200
_080C3BF0: .4byte 0xFFFFFD24
_080C3BF4: .4byte 0x0000FD24
_080C3BF8:
	ldr r0, [r7, #0x40]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, _080C3CCC @ =0x000002DB
	cmp r1, r0
	bgt _080C3C1A
	adds r0, #1
_080C3C18:
	strh r0, [r3]
_080C3C1A:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E308
	adds r1, r7, #0
	adds r1, #0x10
	movs r3, #0xc8
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_080708DC
	ldr r1, _080C3CD0 @ =gUnk_02020EE0
	ldr r0, _080C3CD4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C3CBE
	ldrb r0, [r7]
	cmp r0, #0
	bne _080C3C82
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C3CBE
_080C3C82:
	ldr r1, _080C3CD8 @ =gUnk_08D60FA4
	ldr r4, _080C3CDC @ =gSongTable
	ldr r2, _080C3CE0 @ =0x000009DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C3CA6
	ldr r1, _080C3CE4 @ =0x000009D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C3CBE
_080C3CA6:
	cmp r3, #0
	beq _080C3CB8
	ldr r0, _080C3CE8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C3CBE
_080C3CB8:
	ldr r0, _080C3CEC @ =0x0000013B
	bl m4aSongNumStart
_080C3CBE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3CCC: .4byte 0x000002DB
_080C3CD0: .4byte gUnk_02020EE0
_080C3CD4: .4byte gUnk_0203AD3C
_080C3CD8: .4byte gUnk_08D60FA4
_080C3CDC: .4byte gSongTable
_080C3CE0: .4byte 0x000009DC
_080C3CE4: .4byte 0x000009D8
_080C3CE8: .4byte gUnk_0203AD10
_080C3CEC: .4byte 0x0000013B

	thumb_func_start sub_080C3CF0
sub_080C3CF0: @ 0x080C3CF0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080C3D10 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C3D14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C3D1C
	.align 2, 0
_080C3D10: .4byte gCurTask
_080C3D14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C3D1C:
	adds r5, r0, #0
	ldr r2, _080C3D88 @ =gUnk_02020EE0
	ldr r0, _080C3D8C @ =gUnk_0203AD3C
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
	bne _080C3DD0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C3D98
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C3DF4
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3D90 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080C3D94 @ =0x0400000A
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
	b _080C3DF4
	.align 2, 0
_080C3D88: .4byte gUnk_02020EE0
_080C3D8C: .4byte gUnk_0203AD3C
_080C3D90: .4byte 0xFFF7FFFF
_080C3D94: .4byte 0x0400000A
_080C3D98:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080C3DF4
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080C3DC8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080C3DCC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080C3DF4
	.align 2, 0
_080C3DC8: .4byte 0xFFF7FFFF
_080C3DCC: .4byte 0x0400000A
_080C3DD0:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080C3DEA
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080C3DEA
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080C3DEA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080C3DF4:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C3E02
	b _080C3F1C
_080C3E02:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r3, _080C3E78 @ =gUnk_02023530
	adds r2, r5, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r4, [r5, #0x40]
	ldr r0, [r0]
	adds r6, r2, #0
	cmp r4, r0
	bgt _080C3E54
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r4, r0
	blt _080C3E54
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080C3E54
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080C3E54
	adds r0, r5, #0
	bl sub_0806FC70
_080C3E54:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3E7C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	b _080C3F1C
	.align 2, 0
_080C3E78: .4byte gUnk_02023530
_080C3E7C:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C3EEE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C3EEE
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080C3EB4
	ldr r2, _080C3EAC @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C3EB0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C3EB6
	.align 2, 0
_080C3EAC: .4byte gUnk_02023530
_080C3EB0: .4byte 0x0000065E
_080C3EB4:
	movs r1, #0xff
_080C3EB6:
	cmp r1, #0xff
	beq _080C3EEE
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C3F24 @ =gUnk_02022EB0
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
	ldr r2, _080C3F28 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C3EEE:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C3F16
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
_080C3F16:
	adds r0, r5, #0
	bl sub_0806F8BC
_080C3F1C:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C3F24: .4byte gUnk_02022EB0
_080C3F28: .4byte gUnk_02022F50

	thumb_func_start sub_080C3F2C
sub_080C3F2C: @ 0x080C3F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r0, #0
	adds r5, r4, #0
	adds r5, #0xac
	str r1, [r5]
	ldr r2, _080C3F70 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C3F8A
	adds r0, r1, #0
	adds r0, #0xdd
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #1
	beq _080C3F8A
	ldr r2, _080C3F74 @ =sub_080C3F90
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C3F78
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C3F80
	.align 2, 0
_080C3F70: .4byte 0x00000103
_080C3F74: .4byte sub_080C3F90
_080C3F78:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C3F80:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C3F8A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C3F90
sub_080C3F90: @ 0x080C3F90
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080C3FA8
	adds r0, r1, #0
	bl sub_080C3FAC
_080C3FA8:
	pop {r0}
	bx r0

	thumb_func_start sub_080C3FAC
sub_080C3FAC: @ 0x080C3FAC
	push {lr}
	adds r3, r0, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x35
	strh r1, [r0]
	adds r0, #0x5c
	ldr r2, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r3, #0x40]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r2, #0x44]
	ldr r2, [r3, #0x44]
	subs r0, r0, r2
	lsls r0, r0, #8
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r0, _080C3FF4 @ =0x0000143F
	cmp r1, r0
	bgt _080C3FFC
	ldr r2, _080C3FF8 @ =sub_080C4010
	adds r0, r3, #0
	movs r1, #2
	bl ObjectSetFunc
	b _080C4006
	.align 2, 0
_080C3FF4: .4byte 0x0000143F
_080C3FF8: .4byte sub_080C4010
_080C3FFC:
	ldr r2, _080C400C @ =sub_080C4064
	adds r0, r3, #0
	movs r1, #2
	bl ObjectSetFunc
_080C4006:
	pop {r0}
	bx r0
	.align 2, 0
_080C400C: .4byte sub_080C4064

	thumb_func_start sub_080C4010
sub_080C4010: @ 0x080C4010
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C402A
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C402A:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080C404E
	adds r5, r4, #0
	adds r5, #0x85
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080C3694
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080C404E
	movs r0, #0
	strb r0, [r5]
_080C404E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x1d
	ble _080C405C
	adds r0, r4, #0
	bl sub_080C3234
_080C405C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4064
sub_080C4064: @ 0x080C4064
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C407E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C407E:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C4098
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080C3A7C
_080C4098:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	ble _080C40A6
	adds r0, r4, #0
	bl sub_080C3234
_080C40A6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateSparky
CreateSparky: @ 0x080C40AC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C40E0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C40E4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C40E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C40F0
	.align 2, 0
_080C40E0: .4byte ObjectMain
_080C40E4: .4byte ObjectDestroy
_080C40E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C40F0:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x44]
	ldr r1, _080C4120 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4124
	movs r0, #1
	orrs r2, r0
	b _080C412A
	.align 2, 0
_080C4120: .4byte 0xFFFFFF00
_080C4124:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C412A:
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C4178
	ldr r1, _080C4174 @ =gUnk_08355584
	adds r0, r4, #0
	bl sub_08088398
	b _080C4180
	.align 2, 0
_080C4174: .4byte gUnk_08355584
_080C4178:
	ldr r1, _080C41B0 @ =gUnk_08355578
	adds r0, r4, #0
	bl sub_08085CE8
_080C4180:
	ldr r2, _080C41B4 @ =gUnk_08351648
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
_080C41B0: .4byte gUnk_08355578
_080C41B4: .4byte gUnk_08351648

	thumb_func_start sub_080C41B8
sub_080C41B8: @ 0x080C41B8
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080C4242
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4242
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r3, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C41F0
	ldr r0, _080C41EC @ =0x00003FFF
	cmp r2, r0
	ble _080C41F8
	b _080C4228
	.align 2, 0
_080C41EC: .4byte 0x00003FFF
_080C41F0:
	subs r1, r1, r0
	ldr r0, _080C4218 @ =0x00003FFF
	cmp r1, r0
	bgt _080C4228
_080C41F8:
	ldr r2, _080C421C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C4220 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C4224 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C4228
	adds r0, r3, #0
	bl sub_080C4674
	b _080C4242
	.align 2, 0
_080C4218: .4byte 0x00003FFF
_080C421C: .4byte gRngVal
_080C4220: .4byte 0x00196225
_080C4224: .4byte 0x3C6EF35F
_080C4228:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C423C
	adds r0, r3, #0
	bl sub_080C4654
	b _080C4242
_080C423C:
	adds r0, r3, #0
	bl sub_080C45E0
_080C4242:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4248
sub_080C4248: @ 0x080C4248
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4280 @ =sub_080C4300
	movs r1, #4
	bl ObjectSetFunc
	ldr r2, _080C4284 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C4288 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C428C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #3
	bne _080C42A6
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C4290
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C4298
	.align 2, 0
_080C4280: .4byte sub_080C4300
_080C4284: .4byte gRngVal
_080C4288: .4byte 0x00196225
_080C428C: .4byte 0x3C6EF35F
_080C4290:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080C4298:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	b _080C42E8
_080C42A6:
	cmp r1, #2
	bne _080C42C0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2]
	adds r2, r0, #0
	b _080C42EA
_080C42C0:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C42D4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C42DC
_080C42D4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080C42DC:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
_080C42E8:
	strh r0, [r1]
_080C42EA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C42FA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C42FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4300
sub_080C4300: @ 0x080C4300
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x40
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C431E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C431E:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4332
	adds r0, r3, #0
	bl sub_080C4654
_080C4332:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4338
sub_080C4338: @ 0x080C4338
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #0xe]
	cmp r5, #0
	beq _080C43B0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C441E
	ldr r2, _080C43AC @ =sub_080C41B8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4414
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C441C
	.align 2, 0
_080C43AC: .4byte sub_080C41B8
_080C43B0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	ble _080C441E
	ldr r2, _080C4410 @ =sub_080C41B8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	rsbs r1, r1, #0
	adds r2, r1, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4414
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C441C
	.align 2, 0
_080C4410: .4byte sub_080C41B8
_080C4414:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C441C:
	str r0, [r4, #8]
_080C441E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4428
sub_080C4428: @ 0x080C4428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080C4444
	cmp r1, #3
	bne _080C445A
_080C4444:
	movs r1, #0x11
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x11
	bl sub_0803E2B0
	b _080C447E
_080C445A:
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
_080C447E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C44D8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080C44D8
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	ldr r2, _080C44D4 @ =sub_080C4338
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	b _080C454E
	.align 2, 0
_080C44D4: .4byte sub_080C4338
_080C44D8:
	ldrb r1, [r4, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080C454E
	ldr r1, _080C4558 @ =gUnk_02020EE0
	ldr r0, _080C455C @ =gUnk_0203AD3C
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
	bne _080C454E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C450E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C454E
_080C450E:
	ldr r1, _080C4560 @ =gUnk_08D60FA4
	ldr r4, _080C4564 @ =gSongTable
	ldr r2, _080C4568 @ =0x00000A04
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C4534
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C454E
_080C4534:
	cmp r3, #0
	beq _080C4546
	ldr r0, _080C456C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C454E
_080C4546:
	movs r0, #0xa0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C454E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4558: .4byte gUnk_02020EE0
_080C455C: .4byte gUnk_0203AD3C
_080C4560: .4byte gUnk_08D60FA4
_080C4564: .4byte gSongTable
_080C4568: .4byte 0x00000A04
_080C456C: .4byte gUnk_0203AD10

	thumb_func_start sub_080C4570
sub_080C4570: @ 0x080C4570
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C45C8 @ =sub_080C41B8
	movs r1, #0
	bl ObjectSetFunc
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C45CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C45D4
	.align 2, 0
_080C45C8: .4byte sub_080C41B8
_080C45CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C45D4:
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C45E0
sub_080C45E0: @ 0x080C45E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4604 @ =sub_080C4618
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4608
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C4610
	.align 2, 0
_080C4604: .4byte sub_080C4618
_080C4608:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C4610:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C4618
sub_080C4618: @ 0x080C4618
	push {lr}
	adds r1, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C463C
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080C4650
	adds r0, r1, #0
	bl sub_080C4248
	b _080C4650
_080C463C:
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080C4650
	adds r0, r1, #0
	bl sub_080C4248
_080C4650:
	pop {r0}
	bx r0

	thumb_func_start sub_080C4654
sub_080C4654: @ 0x080C4654
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4670 @ =sub_080C4338
	movs r1, #0
	bl ObjectSetFunc
	adds r4, #0x50
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4670: .4byte sub_080C4338

	thumb_func_start sub_080C4674
sub_080C4674: @ 0x080C4674
	push {lr}
	ldr r2, _080C4684 @ =sub_080C4688
	movs r1, #5
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C4684: .4byte sub_080C4688

	thumb_func_start sub_080C4688
sub_080C4688: @ 0x080C4688
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C469C
	adds r0, r2, #0
	bl sub_080C46A0
_080C469C:
	pop {r0}
	bx r0

	thumb_func_start sub_080C46A0
sub_080C46A0: @ 0x080C46A0
	push {lr}
	ldr r2, _080C46B0 @ =sub_080C4428
	movs r1, #6
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080C46B0: .4byte sub_080C4428

	thumb_func_start CreateBomber
CreateBomber: @ 0x080C46B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C46E8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C46EC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C46F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C46F8
	.align 2, 0
_080C46E8: .4byte ObjectMain
_080C46EC: .4byte ObjectDestroy
_080C46F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C46F8:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C4722
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C472A
_080C4722:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C472A:
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
	ldr r2, _080C4788 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C4788: .4byte gUnk_08351648

	thumb_func_start sub_080C478C
sub_080C478C: @ 0x080C478C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C47B0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C47B0
	adds r0, r4, #0
	bl sub_080C48DC
	b _080C47E0
_080C47B0:
	ldr r2, _080C47E8 @ =sub_080C485C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x4d
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C47D0
	rsbs r0, r3, #0
	strh r0, [r2]
_080C47D0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C47E0
	movs r0, #0
	strh r0, [r2]
_080C47E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C47E8: .4byte sub_080C485C

	thumb_func_start sub_080C47EC
sub_080C47EC: @ 0x080C47EC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C4840
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #3
	bne _080C482A
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C482A
	rsbs r0, r4, #0
	strh r0, [r3]
_080C482A:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080C4840
	adds r0, r2, #0
	bl sub_080C48DC
	b _080C4854
_080C4840:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C4854
	adds r0, r2, #0
	bl sub_080C48DC
_080C4854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C485C
sub_080C485C: @ 0x080C485C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C48B2
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C4890
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C4890:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C48A2
	adds r0, r4, #0
	bl sub_080C48B8
_080C48A2:
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080C48B2
	adds r0, r4, #0
	bl sub_080C48DC
_080C48B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C48B8
sub_080C48B8: @ 0x080C48B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C48D8 @ =sub_080C47EC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C48D8: .4byte sub_080C47EC

	thumb_func_start sub_080C48DC
sub_080C48DC: @ 0x080C48DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C48FC @ =sub_080C4900
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C48FC: .4byte sub_080C4900

	thumb_func_start sub_080C4900
sub_080C4900: @ 0x080C4900
	push {lr}
	adds r2, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C4922
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C4922
	adds r0, r2, #0
	bl sub_080C4928
_080C4922:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C4928
sub_080C4928: @ 0x080C4928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C4964 @ =sub_080C4968
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x56
	ldrb r0, [r4]
	bl sub_08033540
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4964: .4byte sub_080C4968

	thumb_func_start sub_080C4968
sub_080C4968: @ 0x080C4968
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C49AC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080C49AC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r1, _080C49B4 @ =gUnk_083555A8
	adds r0, r4, #0
	bl sub_080860A8
	adds r0, r4, #0
	bl sub_08074420
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C49AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C49B4: .4byte gUnk_083555A8

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
	ldr r2, _080C50AC @ =gUnk_02020EE0
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
_080C50AC: .4byte gUnk_02020EE0
_080C50B0: .4byte gUnk_0203AD3C
_080C50B4: .4byte gUnk_08351648
_080C50B8:
	mov r2, ip
	strb r2, [r5]
	b _080C5102
_080C50BE:
	ldr r2, _080C50F8 @ =gUnk_02020EE0
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
_080C50F8: .4byte gUnk_02020EE0
_080C50FC: .4byte gUnk_0203AD3C
_080C5100:
	strb r3, [r5]
_080C5102:
	ldr r1, _080C5178 @ =gUnk_02020EE0
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
_080C5178: .4byte gUnk_02020EE0
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
	ldr r2, _080C5200 @ =gUnk_02020EE0
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
_080C5200: .4byte gUnk_02020EE0
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
	ldr r2, _080C52A8 @ =gUnk_02020EE0
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
_080C52A8: .4byte gUnk_02020EE0
_080C52AC: .4byte gUnk_0203AD3C
_080C52B0: .4byte gUnk_08351648
_080C52B4:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	b _080C5316
_080C52BE:
	ldr r2, _080C5304 @ =gUnk_02020EE0
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
_080C5304: .4byte gUnk_02020EE0
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

	thumb_func_start CreateGolem
CreateGolem: @ 0x080C53F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5418
	ldr r0, _080C5410 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C5414 @ =sub_080C6734
	b _080C5420
	.align 2, 0
_080C5410: .4byte ObjectMain
_080C5414: .4byte sub_080C6734
_080C5418:
	ldr r0, _080C5444 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C5448 @ =ObjectDestroy
_080C5420:
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C544C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C5454
	.align 2, 0
_080C5444: .4byte ObjectMain
_080C5448: .4byte ObjectDestroy
_080C544C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C5454:
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	ldr r2, [r4, #8]
	movs r0, #0x82
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	ldrb r1, [r5, #0xe]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080C54AC
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r2, r0
	str r2, [r4, #8]
_080C54AC:
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r1, [r5, #0xe]
	movs r0, #0x7f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r1, [r5, #0xe]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C54F0
	adds r0, r4, #0
	bl sub_080C66DC
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C54EC @ =sub_0809F840
	str r0, [r4, #0x7c]
	b _080C54F6
	.align 2, 0
_080C54EC: .4byte sub_0809F840
_080C54F0:
	adds r0, r4, #0
	bl sub_080C66B4
_080C54F6:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080C5500
sub_080C5500: @ 0x080C5500
	push {lr}
	mov ip, r0
	movs r3, #0
	ldr r2, _080C5534 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C5538 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C553C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0xf
	ands r1, r0
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C5574
	cmp r1, #0xb
	bhi _080C55CE
	lsls r0, r1, #2
	ldr r1, _080C5540 @ =_080C5544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C5534: .4byte gRngVal
_080C5538: .4byte 0x00196225
_080C553C: .4byte 0x3C6EF35F
_080C5540: .4byte _080C5544
_080C5544: @ jump table
	.4byte _080C55B6 @ case 0
	.4byte _080C55B6 @ case 1
	.4byte _080C55B6 @ case 2
	.4byte _080C55B6 @ case 3
	.4byte _080C55B6 @ case 4
	.4byte _080C55B6 @ case 5
	.4byte _080C559A @ case 6
	.4byte _080C559A @ case 7
	.4byte _080C55CC @ case 8
	.4byte _080C55CC @ case 9
	.4byte _080C55AA @ case 10
	.4byte _080C55AA @ case 11
_080C5574:
	mov r0, ip
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _080C559E
	cmp r0, #0x20
	bgt _080C5588
	cmp r0, #0x1f
	beq _080C558E
	b _080C55CE
_080C5588:
	cmp r0, #0x21
	beq _080C55AE
	b _080C55CE
_080C558E:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	ble _080C55B6
	cmp r1, #0xb
	bgt _080C55CE
_080C559A:
	movs r3, #1
	b _080C55CE
_080C559E:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	ble _080C55B6
	cmp r1, #0xb
	bgt _080C55CE
_080C55AA:
	movs r3, #0x82
	b _080C55CE
_080C55AE:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	bgt _080C55C8
_080C55B6:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	movs r3, #0x10
	cmp r0, #0
	beq _080C55CE
	movs r3, #0x20
	b _080C55CE
_080C55C8:
	cmp r1, #0xb
	bgt _080C55CE
_080C55CC:
	movs r3, #2
_080C55CE:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080C55D4
sub_080C55D4: @ 0x080C55D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _080C5612
	ldrb r0, [r1]
	cmp r0, #1
	bne _080C5612
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080C5612
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080C5612
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080C5648 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080C5612:
	ldr r0, _080C564C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C562C
	b _080C57D0
_080C562C:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #1
	adds r6, r4, #0
	adds r6, #0x9e
	cmp r0, #0xd
	bls _080C563E
	b _080C57BA
_080C563E:
	lsls r0, r0, #2
	ldr r1, _080C5650 @ =_080C5654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C5648: .4byte 0x00000292
_080C564C: .4byte gUnk_03000510
_080C5650: .4byte _080C5654
_080C5654: @ jump table
	.4byte _080C568C @ case 0
	.4byte _080C56AE @ case 1
	.4byte _080C57BA @ case 2
	.4byte _080C57BA @ case 3
	.4byte _080C57BA @ case 4
	.4byte _080C5734 @ case 5
	.4byte _080C5734 @ case 6
	.4byte _080C57BA @ case 7
	.4byte _080C57BA @ case 8
	.4byte _080C57BA @ case 9
	.4byte _080C5788 @ case 10
	.4byte _080C5798 @ case 11
	.4byte _080C57BA @ case 12
	.4byte _080C57BA @ case 13
_080C568C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x28
	bhi _080C569A
	b _080C57BA
_080C569A:
	adds r0, #0xe
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C571E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5726
_080C56AE:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080C56C0
	movs r0, #0x20
	orrs r5, r0
	b _080C56C8
_080C56C0:
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080C56C8:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C56FE
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C56EC
	orrs r2, r3
	str r2, [r4, #8]
	b _080C56F4
_080C56EC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	str r0, [r4, #8]
_080C56F4:
	adds r0, r4, #0
	bl sub_080C5500
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080C56FE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x64
	bls _080C57BA
	adds r0, #0xe
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C571E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5726
_080C571E:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C5726:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080C5500
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080C57BA
_080C5734:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xf
	bhi _080C5742
	movs r5, #1
_080C5742:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5766
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080C57BA
	movs r0, #0x20
	orrs r5, r0
	b _080C57BA
_080C5766:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080C5784 @ =0xFFFFF100
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080C57BA
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _080C57BA
	.align 2, 0
_080C5784: .4byte 0xFFFFF100
_080C5788:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x13
	bhi _080C57BA
	movs r5, #2
	b _080C57BA
_080C5798:
	movs r5, #2
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x9e
	cmp r0, #0xf
	bne _080C57BA
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	movs r5, #0x12
	cmp r1, r0
	ble _080C57BA
	movs r5, #0x22
_080C57BA:
	adds r1, r4, #0
	adds r1, #0x9d
	ldrb r0, [r1]
	strb r5, [r1]
	bics r5, r0
	adds r0, r4, #0
	adds r0, #0x9c
	strb r5, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080C57D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C57D8
sub_080C57D8: @ 0x080C57D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #9
	bls _080C57E8
	b _080C5A2E
_080C57E8:
	lsls r0, r0, #2
	ldr r1, _080C57F4 @ =_080C57F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C57F4: .4byte _080C57F8
_080C57F8: @ jump table
	.4byte _080C5820 @ case 0
	.4byte _080C5A2E @ case 1
	.4byte _080C5A2E @ case 2
	.4byte _080C5A2E @ case 3
	.4byte _080C5A2E @ case 4
	.4byte _080C593E @ case 5
	.4byte _080C5986 @ case 6
	.4byte _080C5986 @ case 7
	.4byte _080C5986 @ case 8
	.4byte _080C5A14 @ case 9
_080C5820:
	ldr r0, [r5, #8]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080C58CE
	adds r0, r5, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r1, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080C5848
	b _080C5A2E
_080C5848:
	subs r0, #0x4c
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080C5858
	b _080C5A2E
_080C5858:
	ldr r0, [r3, #0x40]
	ldr r6, [r5, #0x40]
	cmp r6, r0
	ble _080C5868
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5870
_080C5868:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C5870:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r2, r3]
	adds r4, r0, #0
	cmp r1, #0
	bne _080C588E
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _080C588E
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080C58A6
_080C588E:
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	ldr r4, [r4]
	movs r7, #0x1a
	ldrsh r3, [r4, r7]
	movs r7, #0x1c
	ldrsh r1, [r4, r7]
	str r1, [sp]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #4]
	ldrh r1, [r4, #0x20]
	b _080C58B6
_080C58A6:
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r3, #0x28
	rsbs r3, r3, #0
	str r3, [sp]
	movs r1, #0x50
	str r1, [sp, #4]
	movs r1, #0x3c
_080C58B6:
	str r1, [sp, #8]
	adds r1, r6, #0
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C58CE
	ldr r0, [r5, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C58CE:
	ldr r2, [r5, #8]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C5908
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C58F6
	adds r2, r5, #0
	adds r2, #0x83
	movs r1, #0
	movs r0, #5
	strb r0, [r2]
	strh r1, [r5, #4]
	b _080C5A2E
_080C58F6:
	ldr r0, _080C5904 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	bl sub_080C6404
	b _080C5A2E
	.align 2, 0
_080C5904: .4byte 0xFFFFFDFF
_080C5908:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080C5912
	b _080C5A2E
_080C5912:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080C591C
	b _080C5A2E
_080C591C:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C5930
	movs r0, #1
	orrs r2, r0
	b _080C5936
_080C5930:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C5936:
	str r2, [r5, #8]
	movs r0, #1
	strh r0, [r5, #4]
	b _080C5A2E
_080C593E:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080C5A2E
	movs r0, #0
	strh r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5974
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C5974:
	ldr r0, [r5, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	b _080C5A2E
_080C5986:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #7
	bne _080C59A2
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C59C2
	movs r0, #8
	strb r0, [r2]
	b _080C59C2
_080C59A2:
	cmp r1, #6
	bne _080C59C2
	adds r0, r5, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _080C5A10 @ =0x000001CF
	cmp r1, r0
	bgt _080C59C2
	movs r0, #7
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C59C2:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C5A2E
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #9
	strb r0, [r2]
	ldr r0, [r5, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #2
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	b _080C5A2E
	.align 2, 0
_080C5A10: .4byte 0x000001CF
_080C5A14:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5A2E
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080C5A38 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r5, #8]
	adds r0, r5, #0
	bl sub_080C6404
_080C5A2E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5A38: .4byte 0xFFFFFDFF

	thumb_func_start sub_080C5A3C
sub_080C5A3C: @ 0x080C5A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C5A62
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5A70
	b _080C5A6C
_080C5A62:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5A70
_080C5A6C:
	movs r0, #0
	strh r0, [r1]
_080C5A70:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080C5A84
	adds r0, r4, #0
	bl sub_080C645C
_080C5A84:
	movs r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0xa
	bne _080C5A98
	ldr r0, [r4, #8]
	ldr r1, _080C5AAC @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080C5AB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080C5A98:
	cmp r2, #0x10
	bne _080C5AA6
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080C5AA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C5AAC: .4byte 0xFFFFFDFF
_080C5AB0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080C5AB4
sub_080C5AB4: @ 0x080C5AB4
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C5AD4
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5AE4
	b _080C5AE0
_080C5AD4:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5AE4
_080C5AE0:
	movs r0, #0
	strh r0, [r1]
_080C5AE4:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5AFA
	adds r0, r2, #0
	bl sub_080C65F8
	b _080C5B4A
_080C5AFA:
	adds r0, r2, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5B10
	adds r0, r2, #0
	bl sub_080C6634
	b _080C5B4A
_080C5B10:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5B36
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5B2E
	adds r0, r2, #0
	bl sub_080C64A4
	b _080C5B4A
_080C5B2E:
	adds r0, r2, #0
	bl sub_080C6674
	b _080C5B4A
_080C5B36:
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080C5B4A
	adds r0, r2, #0
	bl sub_080C645C
_080C5B4A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5B50
sub_080C5B50: @ 0x080C5B50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r2, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080C5B74
	adds r0, r5, #0
	bl sub_080C6634
	b _080C5C9C
_080C5B74:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C5B9A
	adds r0, r5, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5B92
	adds r0, r5, #0
	bl sub_080C64A4
	b _080C5C9C
_080C5B92:
	adds r0, r5, #0
	bl sub_080C6674
	b _080C5C9C
_080C5B9A:
	adds r0, r5, #0
	adds r0, #0x9d
	ldrb r2, [r0]
	movs r4, #0x30
	ands r4, r2
	cmp r4, #0
	beq _080C5C1A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C5BB4
	orrs r1, r3
	b _080C5BC2
_080C5BB4:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C5BC4
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080C5BC2:
	str r1, [r5, #8]
_080C5BC4:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5BF6
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xe0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _080C5BF0
	ldr r0, _080C5BEC @ =0x0000FF20
	strh r0, [r1]
	b _080C5C9C
	.align 2, 0
_080C5BEC: .4byte 0x0000FF20
_080C5BF0:
	cmp r2, #0xe0
	ble _080C5C9C
	b _080C5C08
_080C5BF6:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080C5C0E
_080C5C08:
	movs r0, #0xe0
	strh r0, [r1]
	b _080C5C9C
_080C5C0E:
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080C5C9C
	strh r2, [r1]
	b _080C5C9C
_080C5C1A:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080C5C38
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5C46
	b _080C5C44
_080C5C38:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5C46
_080C5C44:
	strh r4, [r2]
_080C5C46:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080C5C9C
	movs r4, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C5C90 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C5C94 @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C5C98 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C5CB0
	.align 2, 0
_080C5C90: .4byte 0xFFFFFEFF
_080C5C94: .4byte sub_080C5AB4
_080C5C98: .4byte sub_080C55D4
_080C5C9C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5CB0
	adds r0, r5, #0
	bl sub_080C65F8
_080C5CB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5CB8
sub_080C5CB8: @ 0x080C5CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C5CD8
	movs r0, #1
	orrs r1, r0
	b _080C5CE6
_080C5CD8:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C5CE8
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080C5CE6:
	str r1, [r4, #8]
_080C5CE8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	ble _080C5D02
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C5D02
	movs r0, #0xc8
	strh r0, [r4, #4]
_080C5D02:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xc7
	ble _080C5D3A
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080C5D28
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5D8C
	b _080C5D34
_080C5D28:
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5D8C
_080C5D34:
	movs r0, #0
	strh r0, [r2]
	b _080C5D8C
_080C5D3A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D68
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080C5D64 @ =0xFFFFFDE0
	adds r2, r1, #0
	cmp r0, r3
	blt _080C5D80
	movs r1, #0x88
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C5D8C
	b _080C5D8A
	.align 2, 0
_080C5D64: .4byte 0xFFFFFDE0
_080C5D68:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x88
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080C5D84
_080C5D80:
	strh r3, [r2]
	b _080C5D8C
_080C5D84:
	ldr r1, _080C5E18 @ =0xFFFFFDE0
	cmp r0, r1
	bge _080C5D8C
_080C5D8A:
	strh r1, [r2]
_080C5D8C:
	ldrh r0, [r4, #4]
	adds r3, r0, #1
	strh r3, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C5E3C
	ldr r1, _080C5E1C @ =gUnk_02020EE0
	ldr r0, _080C5E20 @ =gUnk_0203AD3C
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
	bne _080C5E08
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C5DCC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C5E08
_080C5DCC:
	ldr r1, _080C5E24 @ =gUnk_08D60FA4
	ldr r5, _080C5E28 @ =gSongTable
	ldr r2, _080C5E2C @ =0x00000A6C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C5DF0
	ldr r1, _080C5E30 @ =0x00000A68
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C5E08
_080C5DF0:
	cmp r3, #0
	beq _080C5E02
	ldr r0, _080C5E34 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C5E08
_080C5E02:
	ldr r0, _080C5E38 @ =0x0000014D
	bl m4aSongNumStart
_080C5E08:
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080C6588
	b _080C5E5A
	.align 2, 0
_080C5E18: .4byte 0xFFFFFDE0
_080C5E1C: .4byte gUnk_02020EE0
_080C5E20: .4byte gUnk_0203AD3C
_080C5E24: .4byte gUnk_08D60FA4
_080C5E28: .4byte gSongTable
_080C5E2C: .4byte 0x00000A6C
_080C5E30: .4byte 0x00000A68
_080C5E34: .4byte gUnk_0203AD10
_080C5E38: .4byte 0x0000014D
_080C5E3C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc7
	ble _080C5E5A
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _080C5E4E
	rsbs r1, r1, #0
_080C5E4E:
	ldr r0, _080C5E60 @ =0x0000017F
	cmp r1, r0
	bgt _080C5E5A
	adds r0, r4, #0
	bl sub_080C6588
_080C5E5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5E60: .4byte 0x0000017F

	thumb_func_start sub_080C5E64
sub_080C5E64: @ 0x080C5E64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5EC4
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C5EB8 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C5EBC @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C5EC0 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C5F1A
	.align 2, 0
_080C5EB8: .4byte 0xFFFFFEFF
_080C5EBC: .4byte sub_080C5AB4
_080C5EC0: .4byte sub_080C55D4
_080C5EC4:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r3, r5, #0
	adds r3, #0x50
	cmp r0, #0xc
	bne _080C5EE2
	ldr r0, _080C5F00 @ =0x0000FF80
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5EE2
	movs r0, #0x80
	strh r0, [r3]
_080C5EE2:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C5F04
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5F14
	movs r0, #0
	strh r0, [r1]
	b _080C5F14
	.align 2, 0
_080C5F00: .4byte 0x0000FF80
_080C5F04:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5F14
	movs r0, #0
	strh r0, [r3]
_080C5F14:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080C5F1A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5F20
sub_080C5F20: @ 0x080C5F20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5F80
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r6, #0x30]
	movs r5, #0
	movs r0, #0
	strh r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	str r4, [r6, #0x30]
	ldr r0, [r6, #8]
	ldr r1, _080C5F74 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r6, #8]
	ldr r0, _080C5F78 @ =sub_080C5AB4
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080C5F7C @ =sub_080C55D4
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C6062
	.align 2, 0
_080C5F74: .4byte 0xFFFFFEFF
_080C5F78: .4byte sub_080C5AB4
_080C5F7C: .4byte sub_080C55D4
_080C5F80:
	ldrb r0, [r6, #1]
	cmp r0, #0x14
	bne _080C5FF2
	ldr r1, _080C6018 @ =gUnk_02020EE0
	ldr r0, _080C601C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C5FF2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C5FB2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C5FF2
_080C5FB2:
	ldr r1, _080C6020 @ =gUnk_08D60FA4
	ldr r4, _080C6024 @ =gSongTable
	ldr r2, _080C6028 @ =0x00000A74
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C5FD8
	movs r1, #0xa7
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C5FF2
_080C5FD8:
	cmp r3, #0
	beq _080C5FEA
	ldr r0, _080C602C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C5FF2
_080C5FEA:
	movs r0, #0xa7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C5FF2:
	ldrb r0, [r6, #1]
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080C6030
	adds r2, r6, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C605C
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080C605C
	.align 2, 0
_080C6018: .4byte gUnk_02020EE0
_080C601C: .4byte gUnk_0203AD3C
_080C6020: .4byte gUnk_08D60FA4
_080C6024: .4byte gSongTable
_080C6028: .4byte 0x00000A74
_080C602C: .4byte gUnk_0203AD10
_080C6030:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C604C
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C605C
	b _080C6058
_080C604C:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C605C
_080C6058:
	movs r0, #0
	strh r0, [r1]
_080C605C:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080C6062:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C6068
sub_080C6068: @ 0x080C6068
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C6088
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6098
	b _080C6094
_080C6088:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6098
_080C6094:
	movs r0, #0
	strh r0, [r1]
_080C6098:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #4
	ble _080C60AA
	adds r0, r2, #0
	bl sub_080C65B8
	b _080C60C2
_080C60AA:
	adds r0, r1, #1
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C60C2
	adds r0, r2, #0
	bl sub_080C65F8
_080C60C2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C60C8
sub_080C60C8: @ 0x080C60C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r1, #0
	strh r1, [r6, #4]
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #9
	strb r0, [r1]
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	ldr r0, _080C6188 @ =sub_080C61B0
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080C618C @ =sub_080C6770
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	ldr r1, _080C6190 @ =gUnk_02020EE0
	ldr r0, _080C6194 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C6180
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C6144
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C6180
_080C6144:
	ldr r1, _080C6198 @ =gUnk_08D60FA4
	ldr r4, _080C619C @ =gSongTable
	ldr r2, _080C61A0 @ =0x00000A5C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C6168
	ldr r1, _080C61A4 @ =0x00000A58
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C6180
_080C6168:
	cmp r3, #0
	beq _080C617A
	ldr r0, _080C61A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C6180
_080C617A:
	ldr r0, _080C61AC @ =0x0000014B
	bl m4aSongNumStart
_080C6180:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6188: .4byte sub_080C61B0
_080C618C: .4byte sub_080C6770
_080C6190: .4byte gUnk_02020EE0
_080C6194: .4byte gUnk_0203AD3C
_080C6198: .4byte gUnk_08D60FA4
_080C619C: .4byte gSongTable
_080C61A0: .4byte 0x00000A5C
_080C61A4: .4byte 0x00000A58
_080C61A8: .4byte gUnk_0203AD10
_080C61AC: .4byte 0x0000014B

	thumb_func_start sub_080C61B0
sub_080C61B0: @ 0x080C61B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C61D0
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C61E0
	b _080C61DC
_080C61D0:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C61E0
_080C61DC:
	movs r0, #0
	strh r0, [r1]
_080C61E0:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C622C
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C6238 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C623C @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6240 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
_080C622C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6238: .4byte 0xFFFFFEFF
_080C623C: .4byte sub_080C5AB4
_080C6240: .4byte sub_080C55D4

	thumb_func_start sub_080C6244
sub_080C6244: @ 0x080C6244
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bne _080C6262
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C6262
	adds r0, r3, #0
	bl sub_080C65F8
	b _080C6378
_080C6262:
	movs r0, #0x52
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r4, _080C62C0 @ =0x000001CF
	cmp r0, r4
	bgt _080C6288
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	mov r2, ip
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r2, r3, #0
	adds r2, #0x9d
	cmp r0, r4
	ble _080C62A6
_080C6288:
	adds r2, r3, #0
	adds r2, #0x9d
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C62A6
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	movs r0, #0xe8
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1]
_080C62A6:
	ldrb r2, [r2]
	movs r4, #0x30
	ands r4, r2
	cmp r4, #0
	beq _080C632A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C62C4
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080C62D4
	.align 2, 0
_080C62C0: .4byte 0x000001CF
_080C62C4:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C62D6
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C62D4:
	str r0, [r3, #8]
_080C62D6:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6306
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xe0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _080C6300
	ldr r0, _080C62FC @ =0x0000FF20
	strh r0, [r1]
	b _080C6354
	.align 2, 0
_080C62FC: .4byte 0x0000FF20
_080C6300:
	cmp r2, #0xe0
	ble _080C6354
	b _080C6318
_080C6306:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080C631E
_080C6318:
	movs r0, #0xe0
	strh r0, [r1]
	b _080C6354
_080C631E:
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080C6354
	strh r2, [r1]
	b _080C6354
_080C632A:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6346
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6354
	b _080C6352
_080C6346:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6354
_080C6352:
	strh r4, [r1]
_080C6354:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C6378
	ldr r0, [r3, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_080C60C8
_080C6378:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6380
sub_080C6380: @ 0x080C6380
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C63A0
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C63B0
	b _080C63AC
_080C63A0:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C63B0
_080C63AC:
	movs r0, #0
	strh r0, [r1]
_080C63B0:
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C63C6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C63C6:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C63E0
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080C60C8
_080C63E0:
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C63F6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080C63F6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6404
sub_080C6404: @ 0x080C6404
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C6450 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C6454 @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6458 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6450: .4byte 0xFFFFFEFF
_080C6454: .4byte sub_080C5AB4
_080C6458: .4byte sub_080C55D4

	thumb_func_start sub_080C645C
sub_080C645C: @ 0x080C645C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080C649C @ =sub_080C5B50
	movs r1, #2
	adds r2, r5, #0
	bl ObjectSetFunc
	movs r6, #0
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	str r5, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r6, [r0]
	ldr r0, _080C64A0 @ =sub_080C55D4
	str r0, [r4, #0x7c]
	adds r4, #0x84
	movs r0, #8
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C649C: .4byte sub_080C5B50
_080C64A0: .4byte sub_080C55D4

	thumb_func_start sub_080C64A4
sub_080C64A4: @ 0x080C64A4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	strh r1, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x83
	movs r0, #0xa
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C64E4 @ =sub_080C64EC
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C64E8 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #4
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C64E4: .4byte sub_080C64EC
_080C64E8: .4byte sub_080C6770

	thumb_func_start sub_080C64EC
sub_080C64EC: @ 0x080C64EC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C651A
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0xe8
	lsls r4, r4, #1
	strh r4, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6512
	rsbs r0, r4, #0
	strh r0, [r3]
_080C6512:
	adds r0, r2, #0
	bl sub_080C6528
	b _080C6520
_080C651A:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080C6520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6528
sub_080C6528: @ 0x080C6528
	push {lr}
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #4]
	ldr r2, _080C6550 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C6554 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C6558 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C655C
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xb
	b _080C6562
	.align 2, 0
_080C6550: .4byte gRngVal
_080C6554: .4byte 0x00196225
_080C6558: .4byte 0x3C6EF35F
_080C655C:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xc
_080C6562:
	strb r0, [r1]
	ldr r0, _080C6580 @ =sub_080C5CB8
	str r0, [r3, #0x78]
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C6584 @ =sub_080C55D4
	str r0, [r3, #0x7c]
	subs r1, #0x1a
	movs r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080C6580: .4byte sub_080C5CB8
_080C6584: .4byte sub_080C55D4

	thumb_func_start sub_080C6588
sub_080C6588: @ 0x080C6588
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r3, r2, #0
	adds r3, #0x83
	movs r0, #0xd
	strb r0, [r3]
	ldr r0, _080C65B0 @ =sub_080C5E64
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C65B4 @ =sub_080C6770
	str r0, [r2, #0x7c]
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #4
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C65B0: .4byte sub_080C5E64
_080C65B4: .4byte sub_080C6770

	thumb_func_start sub_080C65B8
sub_080C65B8: @ 0x080C65B8
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, _080C65F0 @ =sub_080C6244
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080C65F4 @ =sub_080C55D4
	str r0, [r3, #0x7c]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C65F0: .4byte sub_080C6244
_080C65F4: .4byte sub_080C55D4

	thumb_func_start sub_080C65F8
sub_080C65F8: @ 0x080C65F8
	mov ip, r0
	movs r3, #0
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #4]
	mov r0, ip
	adds r0, #0x83
	movs r2, #8
	strb r2, [r0]
	ldr r0, [r1, #8]
	movs r1, #0x20
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r0, _080C662C @ =sub_080C6380
	str r0, [r1, #0x78]
	mov r0, ip
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080C6630 @ =sub_080C55D4
	str r0, [r1, #0x7c]
	mov r0, ip
	adds r0, #0x84
	strb r2, [r0]
	bx lr
	.align 2, 0
_080C662C: .4byte sub_080C6380
_080C6630: .4byte sub_080C55D4

	thumb_func_start sub_080C6634
sub_080C6634: @ 0x080C6634
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C666C @ =sub_080C6068
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6670 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C666C: .4byte sub_080C6068
_080C6670: .4byte sub_080C6770

	thumb_func_start sub_080C6674
sub_080C6674: @ 0x080C6674
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xe
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C66AC @ =sub_080C5F20
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C66B0 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #0x14
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C66AC: .4byte sub_080C5F20
_080C66B0: .4byte sub_080C6770

	thumb_func_start sub_080C66B4
sub_080C66B4: @ 0x080C66B4
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080C66D4 @ =sub_080C57D8
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C66D8 @ =sub_080C55D4
	str r0, [r2, #0x7c]
	bx lr
	.align 2, 0
_080C66D4: .4byte sub_080C57D8
_080C66D8: .4byte sub_080C55D4

	thumb_func_start sub_080C66DC
sub_080C66DC: @ 0x080C66DC
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	subs r1, #0x33
	ldr r0, _080C6728 @ =0x0000FDC0
	strh r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x49
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _080C672C @ =sub_080C5A3C
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080C6730 @ =sub_080C6770
	str r0, [r3, #0x7c]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C6728: .4byte 0x0000FDC0
_080C672C: .4byte sub_080C5A3C
_080C6730: .4byte sub_080C6770

	thumb_func_start sub_080C6734
sub_080C6734: @ 0x080C6734
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C674E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C6756
_080C674E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C6756:
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _080C6764
	adds r1, r0, #0
	adds r1, #0xb8
	movs r0, #0
	str r0, [r1]
_080C6764:
	adds r0, r2, #0
	bl ObjectDestroy
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6770
sub_080C6770: @ 0x080C6770
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x70]
	cmp r1, #0
	beq _080C67AC
	ldrb r0, [r1]
	cmp r0, #1
	bne _080C67AC
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080C67AC
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080C67AC
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	ldr r2, _080C67B0 @ =0x00000292
	adds r0, r3, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080C67AC:
	pop {r0}
	bx r0
	.align 2, 0
_080C67B0: .4byte 0x00000292

	thumb_func_start CreateBangBang
CreateBangBang: @ 0x080C67B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C67E8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C67EC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C67F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C67F8
	.align 2, 0
_080C67E8: .4byte ObjectMain
_080C67EC: .4byte ObjectDestroy
_080C67F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C67F8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C6818
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C6820
_080C6818:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C6820:
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
	ldr r2, _080C6880 @ =gUnk_08351648
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
_080C6880: .4byte gUnk_08351648

	thumb_func_start sub_080C6884
sub_080C6884: @ 0x080C6884
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080C68F0
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C68B8
	eors r2, r5
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C68B8:
	ldrb r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C68DE
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C68DE
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C68DE:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C68F0
	adds r0, r4, #0
	bl sub_080C7174
_080C68F0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C68F8
sub_080C68F8: @ 0x080C68F8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C69DC
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r2, [r0]
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	ldr r2, [r4, #0x44]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bhi _080C69C4
	lsls r0, r0, #2
	ldr r1, _080C6944 @ =_080C6948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6944: .4byte _080C6948
_080C6948: @ jump table
	.4byte _080C69B2 @ case 0
	.4byte _080C69C4 @ case 1
	.4byte _080C69C4 @ case 2
	.4byte _080C69C4 @ case 3
	.4byte _080C69C4 @ case 4
	.4byte _080C69C4 @ case 5
	.4byte _080C69C4 @ case 6
	.4byte _080C6988 @ case 7
	.4byte _080C6988 @ case 8
	.4byte _080C6998 @ case 9
	.4byte _080C6998 @ case 10
	.4byte _080C69A0 @ case 11
	.4byte _080C69A0 @ case 12
	.4byte _080C69B2 @ case 13
	.4byte _080C69B2 @ case 14
	.4byte _080C69B2 @ case 15
_080C6988:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	b _080C69C2
_080C6998:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C69BA
_080C69A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _080C69C2
_080C69B2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C69BA:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
_080C69C2:
	strb r0, [r1]
_080C69C4:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080C69DC
	adds r0, r4, #0
	bl sub_080C69E4
_080C69DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C69E4
sub_080C69E4: @ 0x080C69E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080C6A7C @ =sub_080C71C4
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r0, #3
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080C6A80 @ =gUnk_02020EE0
	ldr r0, _080C6A84 @ =gUnk_0203AD3C
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
	bne _080C6A74
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C6A38
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C6A74
_080C6A38:
	ldr r1, _080C6A88 @ =gUnk_08D60FA4
	ldr r4, _080C6A8C @ =gSongTable
	ldr r2, _080C6A90 @ =0x00000A8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C6A5C
	ldr r1, _080C6A94 @ =0x00000A88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C6A74
_080C6A5C:
	cmp r3, #0
	beq _080C6A6E
	ldr r0, _080C6A98 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C6A74
_080C6A6E:
	ldr r0, _080C6A9C @ =0x00000151
	bl m4aSongNumStart
_080C6A74:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6A7C: .4byte sub_080C71C4
_080C6A80: .4byte gUnk_02020EE0
_080C6A84: .4byte gUnk_0203AD3C
_080C6A88: .4byte gUnk_08D60FA4
_080C6A8C: .4byte gSongTable
_080C6A90: .4byte 0x00000A8C
_080C6A94: .4byte 0x00000A88
_080C6A98: .4byte gUnk_0203AD10
_080C6A9C: .4byte 0x00000151

	thumb_func_start sub_080C6AA0
sub_080C6AA0: @ 0x080C6AA0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080C6AD0 @ =sub_080C6B40
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	beq _080C6AEE
	cmp r0, #6
	bgt _080C6AD4
	cmp r0, #5
	beq _080C6ADA
	b _080C6B10
	.align 2, 0
_080C6AD0: .4byte sub_080C6B40
_080C6AD4:
	cmp r0, #7
	beq _080C6AFE
	b _080C6B10
_080C6ADA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x8a
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080C6B0E
_080C6AEE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe2
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080C6B10
_080C6AFE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
_080C6B0E:
	strh r0, [r1]
_080C6B10:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6B24
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C6B24:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0xc8
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6B40
sub_080C6B40: @ 0x080C6B40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	beq _080C6B98
	cmp r7, #1
	bne _080C6B56
	b _080C6CFE
_080C6B56:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bhi _080C6B74
	b _080C6E66
_080C6B74:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
	b _080C6E66
_080C6B98:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0x1d
	bls _080C6BD4
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080C6BD4:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6C00 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6C04
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6C4A
	strh r2, [r1]
	b _080C6C4A
	.align 2, 0
_080C6C00: .4byte 0xFFFFF000
_080C6C04:
	cmp r2, r0
	bge _080C6C24
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6C20 @ =0xFFFFFEE0
	cmp r0, r2
	bge _080C6C4A
	strh r2, [r1]
	b _080C6C4A
	.align 2, 0
_080C6C20: .4byte 0xFFFFFEE0
_080C6C24:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6C3E
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6C4A
	b _080C6C48
_080C6C3E:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6C4A
_080C6C48:
	strh r7, [r1]
_080C6C4A:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6C84 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6C8C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6C80
	b _080C6F32
_080C6C80:
	ldr r2, _080C6C88 @ =0xFFFFFEE0
	b _080C6F54
	.align 2, 0
_080C6C84: .4byte 0xFFFFF000
_080C6C88: .4byte 0xFFFFFEE0
_080C6C8C:
	cmp r2, r0
	ble _080C6CE0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6CC0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6CBC @ =0xFFFFFEE0
	cmp r0, r2
	bge _080C6CB4
	b _080C6F32
_080C6CB4:
	movs r2, #0x90
	lsls r2, r2, #1
	b _080C6F2E
	.align 2, 0
_080C6CBC: .4byte 0xFFFFFEE0
_080C6CC0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6CD8
	b _080C6F32
_080C6CD8:
	ldr r2, _080C6CDC @ =0xFFFFFEE0
	b _080C6F54
	.align 2, 0
_080C6CDC: .4byte 0xFFFFFEE0
_080C6CE0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080C6CF0
	b _080C6F7A
_080C6CF0:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C6CFC
	b _080C6F88
_080C6CFC:
	b _080C6F84
_080C6CFE:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080C6D3C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080C6D3C:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6D68 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6D6C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6DB2
	strh r2, [r1]
	b _080C6DB2
	.align 2, 0
_080C6D68: .4byte 0xFFFFF000
_080C6D6C:
	cmp r2, r0
	bge _080C6D8C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6D88 @ =0xFFFFFE40
	cmp r0, r2
	bge _080C6DB2
	strh r2, [r1]
	b _080C6DB2
	.align 2, 0
_080C6D88: .4byte 0xFFFFFE40
_080C6D8C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6DA6
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6DB2
	b _080C6DB0
_080C6DA6:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6DB2
_080C6DB0:
	strh r7, [r1]
_080C6DB2:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6DEC @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6DF4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6DE8
	b _080C6F32
_080C6DE8:
	ldr r2, _080C6DF0 @ =0xFFFFFE40
	b _080C6F54
	.align 2, 0
_080C6DEC: .4byte 0xFFFFF000
_080C6DF0: .4byte 0xFFFFFE40
_080C6DF4:
	cmp r2, r0
	ble _080C6E48
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6E28
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6E24 @ =0xFFFFFE40
	cmp r0, r2
	bge _080C6E1C
	b _080C6F32
_080C6E1C:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080C6F2E
	.align 2, 0
_080C6E24: .4byte 0xFFFFFE40
_080C6E28:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080C6E40
	b _080C6F32
_080C6E40:
	ldr r2, _080C6E44 @ =0xFFFFFE40
	b _080C6F54
	.align 2, 0
_080C6E44: .4byte 0xFFFFFE40
_080C6E48:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080C6E58
	b _080C6F7A
_080C6E58:
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C6E64
	b _080C6F88
_080C6E64:
	b _080C6F84
_080C6E66:
	ldr r2, [r4, #0x44]
	ldr r1, _080C6E94 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080C6E98
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080C6EE0
	strh r2, [r1]
	b _080C6EE0
	.align 2, 0
_080C6E94: .4byte 0xFFFFF000
_080C6E98:
	cmp r2, r0
	bge _080C6EB8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6EB4 @ =0xFFFFFE00
	cmp r0, r2
	bge _080C6EE0
	strh r2, [r1]
	b _080C6EE0
	.align 2, 0
_080C6EB4: .4byte 0xFFFFFE00
_080C6EB8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C6ED2
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6EE0
	b _080C6EDC
_080C6ED2:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6EE0
_080C6EDC:
	movs r0, #0
	strh r0, [r1]
_080C6EE0:
	ldr r2, [r4, #0x40]
	ldr r1, _080C6F00 @ =0xFFFFF000
	ands r2, r1
	mov r5, r8
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080C6F04
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080C6F3C
	.align 2, 0
_080C6F00: .4byte 0xFFFFF000
_080C6F04:
	cmp r2, r0
	ble _080C6F60
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080C6F3C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C6F38 @ =0xFFFFFE00
	cmp r0, r2
	blt _080C6F32
	movs r2, #0x80
	lsls r2, r2, #2
_080C6F2E:
	cmp r0, r2
	ble _080C6F88
_080C6F32:
	strh r2, [r1]
	b _080C6F88
	.align 2, 0
_080C6F38: .4byte 0xFFFFFE00
_080C6F3C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080C6F32
	ldr r2, _080C6F5C @ =0xFFFFFE00
_080C6F54:
	cmp r0, r2
	bge _080C6F88
	b _080C6F32
	.align 2, 0
_080C6F5C: .4byte 0xFFFFFE00
_080C6F60:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6F7A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6F88
	b _080C6F84
_080C6F7A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6F88
_080C6F84:
	movs r0, #0
	strh r0, [r1]
_080C6F88:
	adds r0, r4, #0
	bl sub_080C6FDC
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C6FAA
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C6FAA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C6FC0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C6FD0
_080C6FC0:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C6FD0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6FDC
sub_080C6FDC: @ 0x080C6FDC
	push {r4, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x59
	bgt _080C6FF4
	movs r0, #4
	ands r0, r1
	movs r3, #0x10
	cmp r0, #0
	beq _080C6FF6
_080C6FF4:
	movs r3, #8
_080C6FF6:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C705E
	adds r0, r2, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C702E
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, #0x80
	ble _080C701E
	adds r1, r3, #3
	adds r0, #0x31
	b _080C70CE
_080C701E:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C702A
	adds r1, r3, #5
	b _080C70CA
_080C702A:
	adds r1, r3, #4
	b _080C70CA
_080C702E:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C704E
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C7046
	adds r1, r3, #1
	b _080C70CA
_080C7046:
	cmp r0, r1
	bge _080C7088
	adds r1, r3, #7
	b _080C70CA
_080C704E:
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70C4
	adds r1, r3, #2
	b _080C70CA
_080C705E:
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _080C7090
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, #0x80
	ble _080C707C
	adds r1, r3, #1
	adds r0, #0x31
	b _080C70CE
_080C707C:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080C7088
	adds r1, r3, #7
	b _080C70CA
_080C7088:
	adds r0, r2, #0
	adds r0, #0x83
	strb r3, [r0]
	b _080C70D0
_080C7090:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080C70B4
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70A8
	adds r1, r3, #3
	b _080C70CA
_080C70A8:
	cmp r0, r1
	bge _080C70B0
	adds r1, r3, #5
	b _080C70CA
_080C70B0:
	adds r1, r3, #4
	b _080C70CA
_080C70B4:
	adds r0, r2, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x80
	ble _080C70C4
	adds r1, r3, #2
	b _080C70CA
_080C70C4:
	cmp r0, r1
	bge _080C70D0
	adds r1, r3, #6
_080C70CA:
	adds r0, r2, #0
	adds r0, #0x83
_080C70CE:
	strb r1, [r0]
_080C70D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C70D8
sub_080C70D8: @ 0x080C70D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C70F8 @ =sub_080C7118
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080C70FC
	adds r0, r4, #0
	bl sub_080C713C
	b _080C7110
	.align 2, 0
_080C70F8: .4byte sub_080C7118
_080C70FC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xc8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
_080C7110:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7118
sub_080C7118: @ 0x080C7118
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7136
	adds r0, r2, #0
	bl sub_080C7174
_080C7136:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C713C
sub_080C713C: @ 0x080C713C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7170 @ =sub_080C6884
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x40
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C715E
	rsbs r0, r3, #0
	strh r0, [r2]
_080C715E:
	movs r0, #0xc8
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C7170: .4byte sub_080C6884

	thumb_func_start sub_080C7174
sub_080C7174: @ 0x080C7174
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C719C @ =sub_080C68F8
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C71A0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C71A8
	.align 2, 0
_080C719C: .4byte sub_080C68F8
_080C71A0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C71A8:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C71C4
sub_080C71C4: @ 0x080C71C4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C71D8
	adds r0, r2, #0
	bl sub_080C6AA0
_080C71D8:
	pop {r0}
	bx r0

	thumb_func_start CreateBoxBoxer
CreateBoxBoxer: @ 0x080C71DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080C7210 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C7214 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C7218
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C7220
	.align 2, 0
_080C7210: .4byte ObjectMain
_080C7214: .4byte ObjectDestroy
_080C7218:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C7220:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7240
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7248
_080C7240:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7248:
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	movs r5, #0xa
	rsbs r5, r5, #0
	movs r4, #0xe
	rsbs r4, r4, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xe
	bl sub_0803E308
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080C9008
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C72CC
sub_080C72CC: @ 0x080C72CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r6, #8]
	movs r1, #4
	orrs r2, r1
	str r2, [r6, #8]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C72FA
	movs r0, #1
	orrs r2, r0
	b _080C7300
_080C72FA:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C7300:
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080C7318
	b _080C74D8
_080C7318:
	subs r0, #0x4c
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080C732A
	b _080C74D8
_080C732A:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080C733A
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7342
_080C733A:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7342:
	str r0, [r6, #8]
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov sb, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov ip, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C737C
	b _080C74D8
_080C737C:
	ldr r4, _080C74E8 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x85
	mov r3, r8
	strb r3, [r0]
	ldr r0, [r6, #8]
	ldr r1, _080C74EC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080C89E0
	adds r0, r6, #0
	bl sub_080C75D0
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080C7414
	mov r1, r8
	strb r1, [r0, #9]
_080C7414:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r2, _080C74F0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080C74D8
	ldr r0, _080C74F4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080C74D8
	mov r4, sb
	ldr r0, [r4]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C74D8
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080C7496
	movs r4, #1
_080C745E:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080C745E
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080C7496:
	ldr r1, _080C74F4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080C74F8 @ =gUnk_02020EE0
	ldr r0, _080C74FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C74D8
	ldr r0, _080C7500 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C74D8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080C74D8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C74E8: .4byte gUnk_02023530
_080C74EC: .4byte 0xFFFFFDFF
_080C74F0: .4byte 0x0000065E
_080C74F4: .4byte gUnk_08352D80
_080C74F8: .4byte gUnk_02020EE0
_080C74FC: .4byte gUnk_0203AD3C
_080C7500: .4byte gUnk_0203AD20

	thumb_func_start sub_080C7504
sub_080C7504: @ 0x080C7504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080C7538
	ldr r2, _080C752C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7530 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7534 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C75B2
	b _080C75BA
	.align 2, 0
_080C752C: .4byte gRngVal
_080C7530: .4byte 0x00196225
_080C7534: .4byte 0x3C6EF35F
_080C7538:
	adds r0, #1
	strb r0, [r1]
	ldr r3, _080C755C @ =gRngVal
	ldr r0, [r3]
	ldr r2, _080C7560 @ =0x00196225
	muls r0, r2, r0
	ldr r5, _080C7564 @ =0x3C6EF35F
	adds r1, r0, r5
	str r1, [r3]
	lsrs r0, r1, #0x10
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _080C7568
	adds r0, r4, #0
	bl sub_080C7CD8
	b _080C75C8
	.align 2, 0
_080C755C: .4byte gRngVal
_080C7560: .4byte 0x00196225
_080C7564: .4byte 0x3C6EF35F
_080C7568:
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r7, _080C7594 @ =0x3C6EF35F
	adds r1, r0, r7
	str r1, [r3]
	lsrs r0, r1, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080C75A0
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7598
	adds r0, r4, #0
	bl sub_080C76EC
	b _080C75C8
	.align 2, 0
_080C7594: .4byte 0x3C6EF35F
_080C7598:
	adds r0, r4, #0
	bl sub_080C91B8
	b _080C75C8
_080C75A0:
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C75BA
_080C75B2:
	adds r0, r4, #0
	bl sub_080C902C
	b _080C75C0
_080C75BA:
	adds r0, r4, #0
	bl sub_080C90DC
_080C75C0:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080C75C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C75D0
sub_080C75D0: @ 0x080C75D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C75F4 @ =sub_080C769C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C75F8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7600
	.align 2, 0
_080C75F4: .4byte sub_080C769C
_080C75F8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7600:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7650
	ldr r2, _080C7630 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7634 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7638 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C7648
	cmp r1, #2
	bhi _080C763C
	cmp r1, #1
	beq _080C7644
	b _080C7640
	.align 2, 0
_080C7630: .4byte gRngVal
_080C7634: .4byte 0x00196225
_080C7638: .4byte 0x3C6EF35F
_080C763C:
	cmp r1, #3
	beq _080C764C
_080C7640:
	movs r0, #0xf
	b _080C7692
_080C7644:
	movs r0, #0x28
	b _080C7692
_080C7648:
	movs r0, #0x41
	b _080C7692
_080C764C:
	movs r0, #0x5a
	b _080C7692
_080C7650:
	ldr r2, _080C7674 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7678 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C767C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C768C
	cmp r1, #2
	bhi _080C7680
	cmp r1, #1
	beq _080C7688
	b _080C7684
	.align 2, 0
_080C7674: .4byte gRngVal
_080C7678: .4byte 0x00196225
_080C767C: .4byte 0x3C6EF35F
_080C7680:
	cmp r1, #3
	beq _080C7690
_080C7684:
	movs r0, #0x28
	b _080C7692
_080C7688:
	movs r0, #0x41
	b _080C7692
_080C768C:
	movs r0, #0x5a
	b _080C7692
_080C7690:
	movs r0, #0x78
_080C7692:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C769C
sub_080C769C: @ 0x080C769C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C76C4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C76D4
	b _080C76D0
_080C76C4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C76D4
_080C76D0:
	movs r0, #0
	strh r0, [r1]
_080C76D4:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C76E6
	adds r0, r3, #0
	bl sub_080C7504
_080C76E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C76EC
sub_080C76EC: @ 0x080C76EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7714 @ =sub_080C776C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7718
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7720
	.align 2, 0
_080C7714: .4byte sub_080C776C
_080C7718:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7720:
	str r0, [r4, #8]
	ldr r2, _080C7744 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7748 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C774C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	beq _080C775C
	cmp r1, #2
	bhi _080C7750
	cmp r1, #1
	beq _080C7758
	b _080C7754
	.align 2, 0
_080C7744: .4byte gRngVal
_080C7748: .4byte 0x00196225
_080C774C: .4byte 0x3C6EF35F
_080C7750:
	cmp r1, #3
	beq _080C7760
_080C7754:
	movs r0, #0x18
	b _080C7762
_080C7758:
	movs r0, #0x20
	b _080C7762
_080C775C:
	movs r0, #0x30
	b _080C7762
_080C7760:
	movs r0, #0x40
_080C7762:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C776C
sub_080C776C: @ 0x080C776C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7808
	adds r5, r2, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080C77C0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C77C4
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080C7888
	.align 2, 0
_080C77C0: .4byte 0xFFFFF800
_080C77C4:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	cmp r1, r0
	bgt _080C788C
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080C7804 @ =0xFFFFF800
	adds r0, r0, r3
	b _080C7888
	.align 2, 0
_080C7804: .4byte 0xFFFFF800
_080C7808:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080C784C
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080C7848 @ =0xFFFFF800
	adds r0, r0, r3
	b _080C7888
	.align 2, 0
_080C7848: .4byte 0xFFFFF800
_080C784C:
	movs r0, #0x3e
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #8
	ldr r3, _080C78C0 @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080C788C
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080C7888:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080C788C:
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C78F4
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C78D4
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x18
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _080C78C4 @ =0xFFFFFE00
	adds r3, r0, #0
	cmp r4, r1
	bge _080C78C8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3]
	b _080C7948
	.align 2, 0
_080C78C0: .4byte 0xFFFFF800
_080C78C4: .4byte 0xFFFFFE00
_080C78C8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	ble _080C7948
	strh r0, [r3]
	b _080C7948
_080C78D4:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #2
	adds r3, r1, #0
	cmp r0, r4
	bgt _080C793C
	ldr r1, _080C78F0 @ =0xFFFFFE00
	b _080C7942
	.align 2, 0
_080C78F0: .4byte 0xFFFFFE00
_080C78F4:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7924
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080C7920 @ =0xFFFFFE60
	adds r3, r1, #0
	cmp r0, r4
	blt _080C793C
	movs r1, #0xd0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080C7948
	b _080C7946
	.align 2, 0
_080C7920: .4byte 0xFFFFFE60
_080C7924:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xd0
	lsls r4, r4, #1
	adds r3, r1, #0
	cmp r0, r4
	ble _080C7940
_080C793C:
	strh r4, [r3]
	b _080C7948
_080C7940:
	ldr r1, _080C795C @ =0xFFFFFE60
_080C7942:
	cmp r0, r1
	bge _080C7948
_080C7946:
	strh r1, [r3]
_080C7948:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7960
	adds r0, r2, #0
	bl sub_080C75D0
	b _080C7978
	.align 2, 0
_080C795C: .4byte 0xFFFFFE60
_080C7960:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7978
	movs r0, #0
	strh r0, [r3]
	adds r0, r2, #0
	bl sub_080C75D0
_080C7978:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7980
sub_080C7980: @ 0x080C7980
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7A14
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080C79CC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C79D0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	b _080C7A50
	.align 2, 0
_080C79CC: .4byte 0xFFFFF800
_080C79D0:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	bgt _080C7A9C
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080C7A10 @ =0xFFFFF800
	adds r0, r0, r2
	b _080C7A98
	.align 2, 0
_080C7A10: .4byte 0xFFFFF800
_080C7A14:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080C7A60
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080C7A5C @ =0xFFFFF800
_080C7A50:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r5, r2, #0
	b _080C7A9C
	.align 2, 0
_080C7A5C: .4byte 0xFFFFF800
_080C7A60:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r5, _080C7AD8 @ =0xFFFFF800
	adds r0, r0, r5
	adds r5, r4, #0
	adds r5, #0x62
	cmp r1, r0
	blt _080C7A9C
	ldrb r1, [r5]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080C7A98:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080C7A9C:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C7AB6
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C7AB6:
	ldr r0, [r4, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #3
	bne _080C7ADC
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x40
	bgt _080C7AEC
	strb r6, [r3]
	b _080C7AEC
	.align 2, 0
_080C7AD8: .4byte 0xFFFFF800
_080C7ADC:
	movs r6, #0
	ldrsh r1, [r2, r6]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080C7AEC
	movs r0, #5
	strb r0, [r3]
_080C7AEC:
	ldrb r0, [r3]
	cmp r0, #5
	bne _080C7B02
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C7B02
	adds r0, r4, #0
	bl sub_080C7B1C
_080C7B02:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7B14
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C7B14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7B1C
sub_080C7B1C: @ 0x080C7B1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080C7BF4 @ =sub_080C7C18
	movs r1, #6
	bl ObjectSetFunc
	ldr r1, _080C7BF8 @ =gUnk_02020EE0
	ldr r0, _080C7BFC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C7B90
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C7B54
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C7B90
_080C7B54:
	ldr r1, _080C7C00 @ =gUnk_08D60FA4
	ldr r4, _080C7C04 @ =gSongTable
	ldr r2, _080C7C08 @ =0x00000CAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C7B78
	ldr r1, _080C7C0C @ =0x00000CA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C7B90
_080C7B78:
	cmp r3, #0
	beq _080C7B8A
	ldr r0, _080C7C10 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7B90
_080C7B8A:
	ldr r0, _080C7C14 @ =0x00000195
	bl m4aSongNumStart
_080C7B90:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	adds r0, r5, #0
	movs r1, #0x22
	movs r2, #0x10
	bl sub_080A8C28
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0x22
	movs r2, #0x10
	bl sub_080A8C28
	ldr r0, [r5, #8]
	eors r0, r4
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C7BF4: .4byte sub_080C7C18
_080C7BF8: .4byte gUnk_02020EE0
_080C7BFC: .4byte gUnk_0203AD3C
_080C7C00: .4byte gUnk_08D60FA4
_080C7C04: .4byte gSongTable
_080C7C08: .4byte 0x00000CAC
_080C7C0C: .4byte 0x00000CA8
_080C7C10: .4byte gUnk_0203AD10
_080C7C14: .4byte 0x00000195

	thumb_func_start sub_080C7C18
sub_080C7C18: @ 0x080C7C18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C7CD0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C7C58 @ =gRngVal
	cmp r0, #0
	beq _080C7C64
	ldr r1, [r3]
	ldr r0, _080C7C5C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7C60 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C7C4C
	movs r2, #1
_080C7C4C:
	cmp r2, #0
	beq _080C7C64
	adds r0, r4, #0
	bl sub_080C7504
	b _080C7CD0
	.align 2, 0
_080C7C58: .4byte gRngVal
_080C7C5C: .4byte 0x00196225
_080C7C60: .4byte 0x3C6EF35F
_080C7C64:
	ldr r1, [r3]
	ldr r0, _080C7C8C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7C90 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C7C7E
	movs r2, #1
_080C7C7E:
	cmp r2, #0
	beq _080C7C94
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C7CD0
	.align 2, 0
_080C7C8C: .4byte 0x00196225
_080C7C90: .4byte 0x3C6EF35F
_080C7C94:
	ldr r2, _080C7CBC @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7CC0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7CC8
	.align 2, 0
_080C7CBC: .4byte sub_080C776C
_080C7CC0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7CC8:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C7CD0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7CD8
sub_080C7CD8: @ 0x080C7CD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C7D00 @ =sub_080C7D80
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7D04
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7D0C
	.align 2, 0
_080C7D00: .4byte sub_080C7D80
_080C7D04:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7D0C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7D4C
	ldr r2, _080C7D40 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7D44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7D48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7D64
	movs r0, #2
	b _080C7D76
	.align 2, 0
_080C7D40: .4byte gRngVal
_080C7D44: .4byte 0x00196225
_080C7D48: .4byte 0x3C6EF35F
_080C7D4C:
	ldr r2, _080C7D68 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C7D6C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7D70 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7D74
_080C7D64:
	strh r1, [r4, #4]
	b _080C7D78
	.align 2, 0
_080C7D68: .4byte gRngVal
_080C7D6C: .4byte 0x00196225
_080C7D70: .4byte 0x3C6EF35F
_080C7D74:
	movs r0, #3
_080C7D76:
	strh r0, [r4, #4]
_080C7D78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C7D80
sub_080C7D80: @ 0x080C7D80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x3b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080C7D9E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080C7D9E:
	ldr r0, [r5, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #3
	bne _080C7DCC
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080C7DBE
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2]
_080C7DBE:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x40
	ble _080C7DC8
	b _080C7F5E
_080C7DC8:
	strb r3, [r6]
	b _080C7F5E
_080C7DCC:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080C7DDC
	movs r0, #5
	strb r0, [r6]
_080C7DDC:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080C7DEC
	b _080C7F5E
_080C7DEC:
	ldr r1, _080C7EC0 @ =gUnk_02020EE0
	ldr r0, _080C7EC4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C7E54
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C7E18
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C7E54
_080C7E18:
	ldr r1, _080C7EC8 @ =gUnk_08D60FA4
	ldr r4, _080C7ECC @ =gSongTable
	ldr r2, _080C7ED0 @ =0x00000CAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C7E3C
	ldr r1, _080C7ED4 @ =0x00000CA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C7E54
_080C7E3C:
	cmp r3, #0
	beq _080C7E4E
	ldr r0, _080C7ED8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C7E54
_080C7E4E:
	ldr r0, _080C7EDC @ =0x00000195
	bl m4aSongNumStart
_080C7E54:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C7F5A
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C7EE0 @ =gRngVal
	cmp r0, #0
	beq _080C7EEC
	ldr r1, [r3]
	ldr r0, _080C7EE4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080C7EE8 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C7EB2
	movs r2, #1
_080C7EB2:
	cmp r2, #0
	beq _080C7EEC
	adds r0, r5, #0
	bl sub_080C7504
	b _080C7F5E
	.align 2, 0
_080C7EC0: .4byte gUnk_02020EE0
_080C7EC4: .4byte gUnk_0203AD3C
_080C7EC8: .4byte gUnk_08D60FA4
_080C7ECC: .4byte gSongTable
_080C7ED0: .4byte 0x00000CAC
_080C7ED4: .4byte 0x00000CA8
_080C7ED8: .4byte gUnk_0203AD10
_080C7EDC: .4byte 0x00000195
_080C7EE0: .4byte gRngVal
_080C7EE4: .4byte 0x00196225
_080C7EE8: .4byte 0x3C6EF35F
_080C7EEC:
	ldr r1, [r3]
	ldr r0, _080C7F14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C7F18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C7F06
	movs r2, #1
_080C7F06:
	cmp r2, #0
	beq _080C7F1C
	adds r0, r5, #0
	bl sub_080C75D0
	b _080C7F5E
	.align 2, 0
_080C7F14: .4byte 0x00196225
_080C7F18: .4byte 0x3C6EF35F
_080C7F1C:
	ldr r2, _080C7F44 @ =sub_080C776C
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C7F48
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C7F50
	.align 2, 0
_080C7F44: .4byte sub_080C776C
_080C7F48:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C7F50:
	str r0, [r5, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #4]
	b _080C7F5E
_080C7F5A:
	movs r0, #3
	strb r0, [r6]
_080C7F5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C7F64
sub_080C7F64: @ 0x080C7F64
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C7FF8
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080C7FB0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080C7FB4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	b _080C8034
	.align 2, 0
_080C7FB0: .4byte 0xFFFFF800
_080C7FB4:
	adds r3, r4, #0
	adds r3, #0x3c
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa4
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	bgt _080C8080
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	ldr r2, _080C7FF4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080C807C
	.align 2, 0
_080C7FF4: .4byte 0xFFFFF800
_080C7FF8:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _080C8044
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080C8040 @ =0xFFFFF800
_080C8034:
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x40]
	adds r6, r2, #0
	b _080C8080
	.align 2, 0
_080C8040: .4byte 0xFFFFF800
_080C8044:
	adds r3, r4, #0
	adds r3, #0x3e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r4, #0
	adds r2, #0xa8
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	ldr r6, _080C80B8 @ =0xFFFFF800
	adds r0, r0, r6
	adds r6, r4, #0
	adds r6, #0x62
	cmp r1, r0
	blt _080C8080
	ldrb r1, [r6]
	movs r0, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r7
_080C807C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080C8080:
	ldrb r0, [r4, #1]
	cmp r0, #9
	bls _080C8088
	b _080C81E0
_080C8088:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C80F0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C80D0
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x80
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _080C80BC @ =0xFFFFFBE0
	adds r5, r0, #0
	cmp r2, r1
	bge _080C80C4
	ldr r0, _080C80C0 @ =0x0000FBE0
	strh r0, [r5]
	b _080C8144
	.align 2, 0
_080C80B8: .4byte 0xFFFFF800
_080C80BC: .4byte 0xFFFFFBE0
_080C80C0: .4byte 0x0000FBE0
_080C80C4:
	movs r0, #0x84
	lsls r0, r0, #3
	cmp r2, r0
	ble _080C8144
	strh r0, [r5]
	b _080C8144
_080C80D0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x84
	lsls r2, r2, #3
	adds r5, r1, #0
	cmp r0, r2
	bgt _080C8138
	ldr r1, _080C80EC @ =0xFFFFFBE0
	b _080C813E
	.align 2, 0
_080C80EC: .4byte 0xFFFFFBE0
_080C80F0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8120
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C811C @ =0xFFFFFD60
	adds r5, r1, #0
	cmp r0, r2
	blt _080C8138
	movs r1, #0xa8
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C8144
	b _080C8142
	.align 2, 0
_080C811C: .4byte 0xFFFFFD60
_080C8120:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080C813C
_080C8138:
	strh r2, [r5]
	b _080C8144
_080C813C:
	ldr r1, _080C81BC @ =0xFFFFFD60
_080C813E:
	cmp r0, r1
	bge _080C8144
_080C8142:
	strh r1, [r5]
_080C8144:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080C820E
	adds r0, r4, #0
	bl sub_080C8DB0
	ldr r1, _080C81C0 @ =gUnk_02020EE0
	ldr r0, _080C81C4 @ =gUnk_0203AD3C
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
	bne _080C820E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C817C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C820E
_080C817C:
	ldr r1, _080C81C8 @ =gUnk_08D60FA4
	ldr r7, _080C81CC @ =gSongTable
	ldr r2, _080C81D0 @ =0x00000C8C
	adds r0, r7, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C81A0
	ldr r1, _080C81D4 @ =0x00000C88
	adds r0, r7, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C820E
_080C81A0:
	cmp r3, #0
	beq _080C81B2
	ldr r0, _080C81D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C820E
_080C81B2:
	ldr r0, _080C81DC @ =0x00000191
	bl m4aSongNumStart
	b _080C820E
	.align 2, 0
_080C81BC: .4byte 0xFFFFFD60
_080C81C0: .4byte gUnk_02020EE0
_080C81C4: .4byte gUnk_0203AD3C
_080C81C8: .4byte gUnk_08D60FA4
_080C81CC: .4byte gSongTable
_080C81D0: .4byte 0x00000C8C
_080C81D4: .4byte 0x00000C88
_080C81D8: .4byte gUnk_0203AD10
_080C81DC: .4byte 0x00000191
_080C81E0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080C81FE
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C820E
	b _080C820A
_080C81FE:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C820E
_080C820A:
	movs r0, #0
	strh r0, [r5]
_080C820E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C821E
	adds r0, r4, #0
	bl sub_080C9210
_080C821E:
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C822C
	movs r0, #0
	strh r0, [r5]
_080C822C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8234
sub_080C8234: @ 0x080C8234
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C8254
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C8264
	b _080C8260
_080C8254:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C8264
_080C8260:
	movs r0, #0
	strh r0, [r1]
_080C8264:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8318
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C82A0 @ =gRngVal
	cmp r0, #0
	beq _080C82AC
	ldr r1, [r3]
	ldr r0, _080C82A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C82A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8294
	movs r2, #1
_080C8294:
	cmp r2, #0
	beq _080C82AC
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8318
	.align 2, 0
_080C82A0: .4byte gRngVal
_080C82A4: .4byte 0x00196225
_080C82A8: .4byte 0x3C6EF35F
_080C82AC:
	ldr r1, [r3]
	ldr r0, _080C82D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C82D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C82C6
	movs r2, #1
_080C82C6:
	cmp r2, #0
	beq _080C82DC
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8318
	.align 2, 0
_080C82D4: .4byte 0x00196225
_080C82D8: .4byte 0x3C6EF35F
_080C82DC:
	ldr r2, _080C8304 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8308
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C8310
	.align 2, 0
_080C8304: .4byte sub_080C776C
_080C8308:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8310:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8318:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8320
sub_080C8320: @ 0x080C8320
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C833E
	adds r0, r4, #0
	bl sub_080C9178
_080C833E:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080C83B0
	ldr r1, _080C83B8 @ =gUnk_02020EE0
	ldr r0, _080C83BC @ =gUnk_0203AD3C
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
	bne _080C83B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C8370
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C83B0
_080C8370:
	ldr r1, _080C83C0 @ =gUnk_08D60FA4
	ldr r4, _080C83C4 @ =gSongTable
	ldr r2, _080C83C8 @ =0x00000B94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8396
	movs r1, #0xb9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C83B0
_080C8396:
	cmp r3, #0
	beq _080C83A8
	ldr r0, _080C83CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C83B0
_080C83A8:
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C83B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C83B8: .4byte gUnk_02020EE0
_080C83BC: .4byte gUnk_0203AD3C
_080C83C0: .4byte gUnk_08D60FA4
_080C83C4: .4byte gSongTable
_080C83C8: .4byte 0x00000B94
_080C83CC: .4byte gUnk_0203AD10

	thumb_func_start sub_080C83D0
sub_080C83D0: @ 0x080C83D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _080C8450
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080C8C30
	ldr r1, _080C8468 @ =gUnk_02020EE0
	ldr r0, _080C846C @ =gUnk_0203AD3C
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
	bne _080C8450
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C8414
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C8450
_080C8414:
	ldr r1, _080C8470 @ =gUnk_08D60FA4
	ldr r5, _080C8474 @ =gSongTable
	ldr r2, _080C8478 @ =0x00000B9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8438
	ldr r1, _080C847C @ =0x00000B98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C8450
_080C8438:
	cmp r3, #0
	beq _080C844A
	ldr r0, _080C8480 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8450
_080C844A:
	ldr r0, _080C8484 @ =0x00000173
	bl m4aSongNumStart
_080C8450:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8460
	adds r0, r4, #0
	bl sub_080C9198
_080C8460:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8468: .4byte gUnk_02020EE0
_080C846C: .4byte gUnk_0203AD3C
_080C8470: .4byte gUnk_08D60FA4
_080C8474: .4byte gSongTable
_080C8478: .4byte 0x00000B9C
_080C847C: .4byte 0x00000B98
_080C8480: .4byte gUnk_0203AD10
_080C8484: .4byte 0x00000173

	thumb_func_start sub_080C8488
sub_080C8488: @ 0x080C8488
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8540
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C84C8 @ =gRngVal
	cmp r0, #0
	beq _080C84D4
	ldr r1, [r3]
	ldr r0, _080C84CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C84D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C84BC
	movs r2, #1
_080C84BC:
	cmp r2, #0
	beq _080C84D4
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8540
	.align 2, 0
_080C84C8: .4byte gRngVal
_080C84CC: .4byte 0x00196225
_080C84D0: .4byte 0x3C6EF35F
_080C84D4:
	ldr r1, [r3]
	ldr r0, _080C84FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8500 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C84EE
	movs r2, #1
_080C84EE:
	cmp r2, #0
	beq _080C8504
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8540
	.align 2, 0
_080C84FC: .4byte 0x00196225
_080C8500: .4byte 0x3C6EF35F
_080C8504:
	ldr r2, _080C852C @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8530
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C8538
	.align 2, 0
_080C852C: .4byte sub_080C776C
_080C8530:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8538:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8540:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8548
sub_080C8548: @ 0x080C8548
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080C8596
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C8596
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080C8596
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080C8596
	cmp r0, #0x7a
	bhi _080C8596
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080C8596
	ldr r4, [r6, #8]
	ldr r0, _080C859C @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080C85A0
_080C8596:
	movs r0, #0
	b _080C864C
	.align 2, 0
_080C859C: .4byte 0x03800B00
_080C85A0:
	ldr r2, _080C8658 @ =sub_080C8678
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080C865C @ =gUnk_083557E0
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	subs r1, #0x3e
	ands r0, r1
	str r0, [r5, #0xc]
	str r6, [r5, #0x6c]
	movs r0, #5
	strh r0, [r5, #4]
	ldr r1, _080C8660 @ =gUnk_02020EE0
	ldr r0, _080C8664 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C864A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080C860C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C864A
_080C860C:
	ldr r1, _080C8668 @ =gUnk_08D60FA4
	ldr r4, _080C866C @ =gSongTable
	ldr r2, _080C8670 @ =0x00000C94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8632
	movs r1, #0xc9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C864A
_080C8632:
	cmp r3, #0
	beq _080C8642
	ldr r0, _080C8674 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080C864A
_080C8642:
	movs r0, #0xc9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C864A:
	movs r0, #1
_080C864C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C8658: .4byte sub_080C8678
_080C865C: .4byte gUnk_083557E0
_080C8660: .4byte gUnk_02020EE0
_080C8664: .4byte gUnk_0203AD3C
_080C8668: .4byte gUnk_08D60FA4
_080C866C: .4byte gSongTable
_080C8670: .4byte 0x00000C94
_080C8674: .4byte gUnk_0203AD10

	thumb_func_start sub_080C8678
sub_080C8678: @ 0x080C8678
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r7, [r0]
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C869A
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080C9250
	b _080C8856
_080C869A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xb
	bne _080C8714
	ldrb r0, [r4, #1]
	cmp r0, #0xd
	bne _080C8714
	ldr r1, _080C87A8 @ =gUnk_02020EE0
	ldr r0, _080C87AC @ =gUnk_0203AD3C
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
	bne _080C8714
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C86D8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C8714
_080C86D8:
	ldr r1, _080C87B0 @ =gUnk_08D60FA4
	ldr r5, _080C87B4 @ =gSongTable
	ldr r2, _080C87B8 @ =0x00000C9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C86FC
	ldr r1, _080C87BC @ =0x00000C98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C8714
_080C86FC:
	cmp r3, #0
	beq _080C870E
	ldr r0, _080C87C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C8714
_080C870E:
	ldr r0, _080C87C4 @ =0x00000193
	bl m4aSongNumStart
_080C8714:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _080C878C
	ldrb r0, [r4, #1]
	cmp r0, #6
	bne _080C878C
	ldr r1, _080C87A8 @ =gUnk_02020EE0
	ldr r0, _080C87AC @ =gUnk_0203AD3C
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
	bne _080C878C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C874C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C878C
_080C874C:
	ldr r1, _080C87B0 @ =gUnk_08D60FA4
	ldr r5, _080C87B4 @ =gSongTable
	ldr r2, _080C87C8 @ =0x00000CA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C8772
	movs r1, #0xca
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C878C
_080C8772:
	cmp r3, #0
	beq _080C8784
	ldr r0, _080C87C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C878C
_080C8784:
	movs r0, #0xca
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C878C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8856
	adds r1, r6, #0
	ldrb r0, [r1]
	cmp r0, #0xb
	beq _080C8800
	cmp r0, #0xb
	bgt _080C87CC
	cmp r0, #0xa
	beq _080C87D6
	b _080C8856
	.align 2, 0
_080C87A8: .4byte gUnk_02020EE0
_080C87AC: .4byte gUnk_0203AD3C
_080C87B0: .4byte gUnk_08D60FA4
_080C87B4: .4byte gSongTable
_080C87B8: .4byte 0x00000C9C
_080C87BC: .4byte 0x00000C98
_080C87C0: .4byte gUnk_0203AD10
_080C87C4: .4byte 0x00000193
_080C87C8: .4byte 0x00000CA4
_080C87CC:
	cmp r0, #0xc
	beq _080C8824
	cmp r0, #0xd
	beq _080C8850
	b _080C8856
_080C87D6:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8856
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _080C87FC @ =gUnk_083557F0
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C87FC: .4byte gUnk_083557F0
_080C8800:
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _080C8820 @ =gUnk_08355860
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C8820: .4byte gUnk_08355860
_080C8824:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8856
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _080C884C @ =gUnk_083558B8
	str r0, [r1]
	b _080C8856
	.align 2, 0
_080C884C: .4byte gUnk_083558B8
_080C8850:
	adds r0, r4, #0
	bl sub_080C9230
_080C8856:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C885C
sub_080C885C: @ 0x080C885C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8914
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C889C @ =gRngVal
	cmp r0, #0
	beq _080C88A8
	ldr r1, [r3]
	ldr r0, _080C88A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8890
	movs r2, #1
_080C8890:
	cmp r2, #0
	beq _080C88A8
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8914
	.align 2, 0
_080C889C: .4byte gRngVal
_080C88A0: .4byte 0x00196225
_080C88A4: .4byte 0x3C6EF35F
_080C88A8:
	ldr r1, [r3]
	ldr r0, _080C88D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C88C2
	movs r2, #1
_080C88C2:
	cmp r2, #0
	beq _080C88D8
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8914
	.align 2, 0
_080C88D0: .4byte 0x00196225
_080C88D4: .4byte 0x3C6EF35F
_080C88D8:
	ldr r2, _080C8900 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8904
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C890C
	.align 2, 0
_080C8900: .4byte sub_080C776C
_080C8904:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C890C:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C891C
sub_080C891C: @ 0x080C891C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C89D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C8960 @ =gRngVal
	cmp r0, #0
	beq _080C896C
	ldr r1, [r3]
	ldr r0, _080C8964 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8968 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8952
	movs r2, #1
_080C8952:
	cmp r2, #0
	beq _080C896C
	adds r0, r4, #0
	bl sub_080C7504
	b _080C89D8
	.align 2, 0
_080C8960: .4byte gRngVal
_080C8964: .4byte 0x00196225
_080C8968: .4byte 0x3C6EF35F
_080C896C:
	ldr r1, [r3]
	ldr r0, _080C8994 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8998 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C8986
	movs r2, #1
_080C8986:
	cmp r2, #0
	beq _080C899C
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C89D8
	.align 2, 0
_080C8994: .4byte 0x00196225
_080C8998: .4byte 0x3C6EF35F
_080C899C:
	ldr r2, _080C89C4 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C89C8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C89D0
	.align 2, 0
_080C89C4: .4byte sub_080C776C
_080C89C8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C89D0:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C89D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C89E0
sub_080C89E0: @ 0x080C89E0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8A10 @ =sub_080C8AB8
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8A14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8A1C
	.align 2, 0
_080C8A10: .4byte sub_080C8AB8
_080C8A14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8A1C:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C8AB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8A6C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8A6C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080C8AB4 @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8A90
	orrs r2, r3
_080C8A90:
	str r2, [r4, #8]
	movs r1, #0xd
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8AB0: .4byte gUnk_03000510
_080C8AB4: .4byte 0x12010400

	thumb_func_start sub_080C8AB8
sub_080C8AB8: @ 0x080C8AB8
	push {r4, lr}
	ldr r2, _080C8AD4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8AD8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8AE0
	.align 2, 0
_080C8AD4: .4byte gCurTask
_080C8AD8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8AE0:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080C8AFC
	ldr r0, [r2]
	bl TaskDestroy
	b _080C8C2A
_080C8AFC:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8B0C
	orrs r1, r3
	str r1, [r4, #8]
	b _080C8C2A
_080C8B0C:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080C8B4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8B50
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080C8B50
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080C8C2A
	.align 2, 0
_080C8B4C: .4byte gUnk_03000510
_080C8B50:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8B62
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080C8B6A
_080C8B62:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8B6A:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080C8C18
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C8B9C
	ldr r0, _080C8B98 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080C8C2A
	.align 2, 0
_080C8B98: .4byte 0xFFFBFFFF
_080C8B9C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C8C2A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C8C2A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080C8BD4
	ldr r2, _080C8BCC @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8BD0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8BD6
	.align 2, 0
_080C8BCC: .4byte gUnk_02023530
_080C8BD0: .4byte 0x0000065E
_080C8BD4:
	movs r1, #0xff
_080C8BD6:
	cmp r1, #0xff
	beq _080C8C2A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8C10 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080C8C14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080C8C2A
	.align 2, 0
_080C8C10: .4byte gUnk_02022EB0
_080C8C14: .4byte gUnk_02022F50
_080C8C18:
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
_080C8C2A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8C30
sub_080C8C30: @ 0x080C8C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8C54
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080C8C5A
_080C8C54:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080C8C5A:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080C8C78 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C8C7C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080C8C94
	.align 2, 0
_080C8C78: .4byte gUnk_020229D4
_080C8C7C: .4byte gUnk_020229E0
_080C8C80:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C8C9C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C8C94:
	cmp r0, #0
	bne _080C8C80
	orrs r2, r3
	str r2, [r1]
_080C8C9C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb4
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C8D00
sub_080C8D00: @ 0x080C8D00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C8D34 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C8D38 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8D3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C8D44
	.align 2, 0
_080C8D34: .4byte ObjectMain
_080C8D38: .4byte ObjectDestroy
_080C8D3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C8D44:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C8DAC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080C8FA4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C8DAC: .4byte sub_0809F840

	thumb_func_start sub_080C8DB0
sub_080C8DB0: @ 0x080C8DB0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8DE0 @ =sub_080C8EA4
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8DE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8DEC
	.align 2, 0
_080C8DE0: .4byte sub_080C8EA4
_080C8DE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8DEC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080C8E74 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8E3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8E3C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080C8E78 @ =0x12000400
	str r0, [r4, #8]
	ldr r0, _080C8E7C @ =0x20000043
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8E80
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080C8E88
	.align 2, 0
_080C8E74: .4byte gUnk_03000510
_080C8E78: .4byte 0x12000400
_080C8E7C: .4byte 0x20000043
_080C8E80:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8E88:
	str r0, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x30
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8EA4
sub_080C8EA4: @ 0x080C8EA4
	push {r4, r5, r6, lr}
	ldr r0, _080C8EC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8EC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8ECC
	.align 2, 0
_080C8EC0: .4byte gCurTask
_080C8EC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8ECC:
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	adds r5, r4, #0
	adds r5, #0x60
	ldrh r3, [r5]
	ldr r6, _080C8F28 @ =0x0000FFFF
	cmp r3, r6
	beq _080C8EEE
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C8EEE
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r5]
_080C8EEE:
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8F96
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080C8F2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080C8F96
	.align 2, 0
_080C8F28: .4byte 0x0000FFFF
_080C8F2C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C8F96
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080C8F5C
	ldr r2, _080C8F54 @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8F58 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8F5E
	.align 2, 0
_080C8F54: .4byte gUnk_02023530
_080C8F58: .4byte 0x0000065E
_080C8F5C:
	movs r1, #0xff
_080C8F5E:
	cmp r1, #0xff
	beq _080C8F96
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8F9C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080C8FA0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C8F96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C8F9C: .4byte gUnk_02022EB0
_080C8FA0: .4byte gUnk_02022F50

	thumb_func_start sub_080C8FA4
sub_080C8FA4: @ 0x080C8FA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C8FD4 @ =sub_080C9274
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C8FC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080C8FC4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8FD8
	cmp r0, #1
	beq _080C8FE2
	b _080C8FEC
	.align 2, 0
_080C8FD4: .4byte sub_080C9274
_080C8FD8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080C8FEA
_080C8FE2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
_080C8FEA:
	strh r0, [r1]
_080C8FEC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9000
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C9000:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9008
sub_080C9008: @ 0x080C9008
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9028 @ =sub_080C72CC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9028: .4byte sub_080C72CC

	thumb_func_start sub_080C902C
sub_080C902C: @ 0x080C902C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9064 @ =sub_080C9084
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9068
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9070
	.align 2, 0
_080C9064: .4byte sub_080C9084
_080C9068:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9070:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9084
sub_080C9084: @ 0x080C9084
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9098
	adds r0, r2, #0
	bl sub_080C909C
_080C9098:
	pop {r0}
	bx r0

	thumb_func_start sub_080C909C
sub_080C909C: @ 0x080C909C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C90D8 @ =sub_080C7980
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C90D2
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C90D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C90D8: .4byte sub_080C7980

	thumb_func_start sub_080C90DC
sub_080C90DC: @ 0x080C90DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9114 @ =sub_080C9134
	movs r1, #0xf
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9118
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9120
	.align 2, 0
_080C9114: .4byte sub_080C9134
_080C9118:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9120:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9134
sub_080C9134: @ 0x080C9134
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9148
	adds r0, r2, #0
	bl sub_080C914C
_080C9148:
	pop {r0}
	bx r0

	thumb_func_start sub_080C914C
sub_080C914C: @ 0x080C914C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9168 @ =sub_080C8320
	movs r1, #0x10
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C916C
	movs r0, #0x10
	b _080C916E
	.align 2, 0
_080C9168: .4byte sub_080C8320
_080C916C:
	movs r0, #0x2d
_080C916E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9178
sub_080C9178: @ 0x080C9178
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9194 @ =sub_080C83D0
	movs r1, #0x11
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9194: .4byte sub_080C83D0

	thumb_func_start sub_080C9198
sub_080C9198: @ 0x080C9198
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91B4 @ =sub_080C8488
	movs r1, #0x12
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C91B4: .4byte sub_080C8488

	thumb_func_start sub_080C91B8
sub_080C91B8: @ 0x080C91B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91F0 @ =sub_080C9280
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C91F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C91FC
	.align 2, 0
_080C91F0: .4byte sub_080C9280
_080C91F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C91FC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9210
sub_080C9210: @ 0x080C9210
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C922C @ =sub_080C8234
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C922C: .4byte sub_080C8234

	thumb_func_start sub_080C9230
sub_080C9230: @ 0x080C9230
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C924C @ =sub_080C885C
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C924C: .4byte sub_080C885C

	thumb_func_start sub_080C9250
sub_080C9250: @ 0x080C9250
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9270 @ =sub_080C891C
	movs r1, #0x13
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9270: .4byte sub_080C891C

	thumb_func_start sub_080C9274
sub_080C9274: @ 0x080C9274
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C9280
sub_080C9280: @ 0x080C9280
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9294
	adds r0, r2, #0
	bl sub_080C9298
_080C9294:
	pop {r0}
	bx r0

	thumb_func_start sub_080C9298
sub_080C9298: @ 0x080C9298
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C92B4 @ =sub_080C7F64
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C92B4: .4byte sub_080C7F64

	thumb_func_start CreateBatafire
CreateBatafire: @ 0x080C92B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C92EC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C92F0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C92F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C92FC
	.align 2, 0
_080C92EC: .4byte ObjectMain
_080C92F0: .4byte ObjectDestroy
_080C92F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C92FC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	subs r1, #0x48
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x68]
	orrs r0, r2
	str r0, [r4, #0x68]
	subs r1, #0xb6
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C9398 @ =sub_080CB3DC
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080CB4F4
	adds r0, r4, #0
	bl sub_080CAF60
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C9398: .4byte sub_080CB3DC

	thumb_func_start sub_080C939C
sub_080C939C: @ 0x080C939C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C93CC
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080C93D4
_080C93CC:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C93D4:
	str r0, [r6, #8]
	movs r0, #0xac
	adds r0, r0, r6
	mov r8, r0
	ldr r7, [r0]
	ldr r0, [r7, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080C93EC
	b _080C95A4
_080C93EC:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r7, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080C9400
	b _080C95A4
_080C9400:
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov ip, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	adds r7, r5, #0
	cmp r0, #0
	bne _080C9430
	b _080C95A4
_080C9430:
	ldr r3, _080C94B4 @ =gUnk_02023530
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r6, #0
	adds r2, #0xaa
	strh r0, [r2]
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080C94B8
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #1
	b _080C94BE
	.align 2, 0
_080C94B4: .4byte gUnk_02023530
_080C94B8:
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
_080C94BE:
	strb r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080C95B4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080C94D8
	movs r0, #0
	strb r0, [r1, #9]
_080C94D8:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080C95B8 @ =gUnk_02023530
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C95BC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080C95A0
	ldr r0, _080C95C0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080C95A0
	ldr r0, [r7]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C95A0
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	cmp r0, #0xf
	bls _080C955E
	movs r4, #1
_080C9526:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080C9526
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080C955E:
	ldr r1, _080C95C0 @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080C95C4 @ =gUnk_02020EE0
	ldr r0, _080C95C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080C95A0
	ldr r0, _080C95CC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C95A0
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080C95A0:
	ldr r0, _080C95D0 @ =sub_080CB518
	str r0, [r6, #0x78]
_080C95A4:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C95B4: .4byte 0xFFFFFDFF
_080C95B8: .4byte gUnk_02023530
_080C95BC: .4byte 0x0000065E
_080C95C0: .4byte gUnk_08352D80
_080C95C4: .4byte gUnk_02020EE0
_080C95C8: .4byte gUnk_0203AD3C
_080C95CC: .4byte gUnk_0203AD20
_080C95D0: .4byte sub_080CB518

	thumb_func_start sub_080C95D4
sub_080C95D4: @ 0x080C95D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080C95F8 @ =sub_080C96EC
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9600
	ldr r0, _080C95FC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9606
	.align 2, 0
_080C95F8: .4byte sub_080C96EC
_080C95FC: .4byte 0xFFFFFF00
_080C9600:
	ldr r0, _080C9620 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9606:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9624
	ldr r0, _080C9620 @ =0xFFFFFF00
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r4, #0x44]
	b _080C962A
	.align 2, 0
_080C9620: .4byte 0xFFFFFF00
_080C9624:
	ldr r0, _080C965C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C962A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r2, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9660
	movs r0, #1
	orrs r2, r0
	b _080C9666
	.align 2, 0
_080C965C: .4byte 0xFFFFFF00
_080C9660:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9666:
	str r2, [r4, #8]
	ldr r1, _080C96C4 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080C96C8 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080C96CC @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r3, r0, #0x10
	ldr r0, _080C96D0 @ =0x00005554
	cmp r3, r0
	bls _080C968C
	ldr r0, _080C96D4 @ =0x0000AAA9
	movs r2, #2
	cmp r3, r0
	bhi _080C9688
	movs r2, #1
_080C9688:
	cmp r2, #0
	bne _080C96E6
_080C968C:
	ldr r0, [r1]
	ldr r5, _080C96C8 @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080C96CC @ =0x3C6EF35F
	adds r2, r0, r3
	str r2, [r1]
	lsrs r0, r2, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080C96E0
	ldr r0, [r4, #8]
	orrs r0, r3
	str r0, [r4, #8]
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r2, _080C96CC @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080C96D8
	adds r0, r4, #0
	bl sub_080C9D1C
	b _080C96E6
	.align 2, 0
_080C96C4: .4byte gRngVal
_080C96C8: .4byte 0x00196225
_080C96CC: .4byte 0x3C6EF35F
_080C96D0: .4byte 0x00005554
_080C96D4: .4byte 0x0000AAA9
_080C96D8:
	adds r0, r4, #0
	bl sub_080CB628
	b _080C96E6
_080C96E0:
	adds r0, r4, #0
	bl sub_080CB550
_080C96E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C96EC
sub_080C96EC: @ 0x080C96EC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C970C
	movs r0, #1
	orrs r2, r0
	b _080C9712
_080C970C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9712:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C97EA
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldr r2, _080C97C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C97C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C97C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080C977E
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C977E
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080C97CC @ =gUnk_08351530
	ldr r0, _080C97D0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	ble _080C977E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080C97EA
_080C977E:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080C97D4
	ldr r0, [r5]
	ldr r4, _080C97C4 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _080C97C8 @ =0x3C6EF35F
	adds r1, r0, r2
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080C97E4
	ldr r0, [r3, #8]
	orrs r0, r2
	str r0, [r3, #8]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r6, _080C97C8 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C97DC
	adds r0, r3, #0
	bl sub_080C9D1C
	b _080C97EA
	.align 2, 0
_080C97C0: .4byte gRngVal
_080C97C4: .4byte 0x00196225
_080C97C8: .4byte 0x3C6EF35F
_080C97CC: .4byte gUnk_08351530
_080C97D0: .4byte gUnk_0203AD30
_080C97D4:
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080C97DC:
	adds r0, r3, #0
	bl sub_080CB628
	b _080C97EA
_080C97E4:
	adds r0, r3, #0
	bl sub_080CB550
_080C97EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C97F0
sub_080C97F0: @ 0x080C97F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080C9814 @ =sub_080C9900
	movs r1, #1
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C981C
	ldr r0, _080C9818 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9822
	.align 2, 0
_080C9814: .4byte sub_080C9900
_080C9818: .4byte 0xFFFFFF00
_080C981C:
	ldr r0, _080C983C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9822:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9840
	ldr r0, _080C983C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080C9846
	.align 2, 0
_080C983C: .4byte 0xFFFFFF00
_080C9840:
	ldr r0, _080C9868 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C9846:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C986C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9874
	.align 2, 0
_080C9868: .4byte 0xFFFFFF00
_080C986C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9874:
	str r0, [r4, #8]
	ldr r1, _080C98D8 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _080C98DC @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080C98E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _080C98E4 @ =0x00005554
	adds r3, r1, #0
	cmp r2, r0
	bls _080C989C
	ldr r0, _080C98E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080C9898
	movs r1, #1
_080C9898:
	cmp r1, #0
	bne _080C98FA
_080C989C:
	ldr r0, [r3]
	ldr r6, _080C98DC @ =0x00196225
	muls r0, r6, r0
	ldr r1, _080C98E0 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080C98F4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r2, _080C98E0 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080C98EC
	adds r0, r4, #0
	bl sub_080C9D1C
	b _080C98FA
	.align 2, 0
_080C98D8: .4byte gRngVal
_080C98DC: .4byte 0x00196225
_080C98E0: .4byte 0x3C6EF35F
_080C98E4: .4byte 0x00005554
_080C98E8: .4byte 0x0000AAA9
_080C98EC:
	adds r0, r4, #0
	bl sub_080CB628
	b _080C98FA
_080C98F4:
	adds r0, r4, #0
	bl sub_080CB5BC
_080C98FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9900
sub_080C9900: @ 0x080C9900
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9920
	movs r0, #1
	orrs r2, r0
	b _080C9926
_080C9920:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C9926:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _080C9A00
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldr r2, _080C99D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C99D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _080C9990
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9990
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080C9990
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080C99E0 @ =gUnk_08351530
	ldr r0, _080C99E4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9A00
_080C9990:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080C99E8
	ldr r0, [r6]
	ldr r5, _080C99D8 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _080C99FA
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r1, _080C99DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080C99F2
	adds r0, r3, #0
	bl sub_080C9D1C
	b _080C9A00
	.align 2, 0
_080C99D4: .4byte gRngVal
_080C99D8: .4byte 0x00196225
_080C99DC: .4byte 0x3C6EF35F
_080C99E0: .4byte gUnk_08351530
_080C99E4: .4byte gUnk_0203AD30
_080C99E8:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
_080C99F2:
	adds r0, r3, #0
	bl sub_080CB628
	b _080C9A00
_080C99FA:
	adds r0, r3, #0
	bl sub_080CB5BC
_080C9A00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9A08
sub_080C9A08: @ 0x080C9A08
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	movs r1, #1
	mov ip, r1
	orrs r0, r1
	str r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	ldr r7, _080C9AD8 @ =gUnk_08355BF0
	cmp r0, #0
	bne _080C9B10
	adds r1, r3, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #0
	bne _080C9A46
	subs r0, r2, #1
	strb r0, [r5]
_080C9A46:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9A6C
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
_080C9A6C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C9ADC
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080C9AA8
	adds r1, r3, #0
	adds r1, #0x50
	strh r2, [r1]
	ldr r0, [r3, #8]
	mov r4, ip
	ands r0, r4
	cmp r0, #0
	beq _080C9AA8
	rsbs r0, r2, #0
	strh r0, [r1]
_080C9AA8:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r4, #2
	ldrsh r1, [r1, r4]
	movs r4, #2
	ldrsh r0, [r0, r4]
	cmp r1, r0
	beq _080C9B10
	adds r0, r3, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080C9B10
	.align 2, 0
_080C9AD8: .4byte gUnk_08355BF0
_080C9ADC:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	strh r6, [r1]
	ldr r0, [r3, #8]
	mov r4, ip
	ands r0, r4
	adds r4, r1, #0
	cmp r0, #0
	beq _080C9B3A
	rsbs r0, r6, #0
	strh r0, [r4]
_080C9B10:
	ldr r1, [r3, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r3, #0
	adds r5, #0x9f
	adds r4, r3, #0
	adds r4, #0x50
	adds r2, r3, #0
	adds r2, #0x52
	cmp r1, #0
	beq _080C9B3A
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080C9B4C
_080C9B3A:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080C9B4C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9B8C
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080C9B8C
	adds r0, r3, #0
	bl sub_080C97F0
	b _080C9BAC
_080C9B8C:
	adds r0, r3, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r3, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9BA2
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9BAA
_080C9BA2:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9BAA:
	str r0, [r3, #8]
_080C9BAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9BB4
sub_080C9BB4: @ 0x080C9BB4
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r4, _080C9C6C @ =gUnk_08355BF0
	cmp r0, #0
	bne _080C9C94
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9BEC
	subs r0, r1, #1
	strb r0, [r3]
_080C9BEC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9C12
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080C9C12:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080C9C70
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080C9C40
	mov r0, ip
	adds r0, #0x50
	strh r2, [r0]
_080C9C40:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080C9C94
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080C9C94
	.align 2, 0
_080C9C6C: .4byte gUnk_08355BF0
_080C9C70:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
_080C9C94:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x9e
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
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C9CF0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080C9CF0
	mov r0, ip
	bl sub_080C95D4
	b _080C9D16
_080C9CF0:
	mov r0, ip
	adds r0, #0xac
	ldr r0, [r0]
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9D0A
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	b _080C9D16
_080C9D0A:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
_080C9D16:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C9D1C
sub_080C9D1C: @ 0x080C9D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	ldr r5, _080C9D90 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080C9D94 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _080C9D98 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	beq _080C9DAC
	ldr r2, _080C9D9C @ =sub_080C9E70
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080C9DA0 @ =gUnk_08351530
	ldr r0, _080C9DA4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9D7C
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	lsrs r6, r0, #0x10
	mov r0, sb
	ands r6, r0
_080C9D7C:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9D8A
	cmp r6, #0
	beq _080C9E00
_080C9D8A:
	ldr r0, _080C9DA8 @ =sub_080CA0A4
	b _080C9DFE
	.align 2, 0
_080C9D90: .4byte gRngVal
_080C9D94: .4byte 0x00196225
_080C9D98: .4byte 0x3C6EF35F
_080C9D9C: .4byte sub_080C9E70
_080C9DA0: .4byte gUnk_08351530
_080C9DA4: .4byte gUnk_0203AD30
_080C9DA8: .4byte sub_080CA0A4
_080C9DAC:
	ldr r2, _080C9E18 @ =sub_080CA2D8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080C9E1C @ =gUnk_08351530
	ldr r0, _080C9E20 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080C9DEE
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C9DEC
	movs r2, #1
_080C9DEC:
	adds r6, r2, #0
_080C9DEE:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080C9DFC
	cmp r6, #0
	beq _080C9E00
_080C9DFC:
	ldr r0, _080C9E24 @ =sub_080CA50C
_080C9DFE:
	str r0, [r4, #0x78]
_080C9E00:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9E2C
	ldr r0, _080C9E28 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080C9E32
	.align 2, 0
_080C9E18: .4byte sub_080CA2D8
_080C9E1C: .4byte gUnk_08351530
_080C9E20: .4byte gUnk_0203AD30
_080C9E24: .4byte sub_080CA50C
_080C9E28: .4byte 0xFFFFFF00
_080C9E2C:
	ldr r0, _080C9E4C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080C9E32:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C9E50
	ldr r0, _080C9E4C @ =0xFFFFFF00
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r4, #0x44]
	b _080C9E56
	.align 2, 0
_080C9E4C: .4byte 0xFFFFFF00
_080C9E50:
	ldr r0, _080C9E6C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080C9E56:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C9E6C: .4byte 0xFFFFFF00

	thumb_func_start sub_080C9E70
sub_080C9E70: @ 0x080C9E70
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080C9F3C @ =gUnk_08355998
	cmp r0, #0
	bne _080C9F74
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080C9EA8
	subs r0, r2, #1
	strb r0, [r4]
_080C9EA8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C9ECE
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080C9ECE:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C9F40
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080C9F0C
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9F0C
	rsbs r0, r3, #0
	strh r0, [r2]
_080C9F0C:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080C9F74
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080C9F74
	.align 2, 0
_080C9F3C: .4byte gUnk_08355998
_080C9F40:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C9F9E
	rsbs r0, r5, #0
	strh r0, [r2]
_080C9F74:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080C9F9E
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080C9FB0
_080C9F9E:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080C9FB0:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA004
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA004
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9FFC
	mov r0, ip
	bl sub_080C97F0
	b _080CA07E
_080C9FFC:
	mov r0, ip
	bl sub_080C95D4
	b _080CA07E
_080CA004:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x74
	bne _080CA07E
	ldr r1, _080CA084 @ =gUnk_02020EE0
	ldr r0, _080CA088 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA07E
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA042
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA07E
_080CA042:
	ldr r1, _080CA08C @ =gUnk_08D60FA4
	ldr r4, _080CA090 @ =gSongTable
	ldr r2, _080CA094 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA066
	ldr r1, _080CA098 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA07E
_080CA066:
	cmp r3, #0
	beq _080CA078
	ldr r0, _080CA09C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA07E
_080CA078:
	ldr r0, _080CA0A0 @ =0x00000171
	bl m4aSongNumStart
_080CA07E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA084: .4byte gUnk_02020EE0
_080CA088: .4byte gUnk_0203AD3C
_080CA08C: .4byte gUnk_08D60FA4
_080CA090: .4byte gSongTable
_080CA094: .4byte 0x00000B8C
_080CA098: .4byte 0x00000B88
_080CA09C: .4byte gUnk_0203AD10
_080CA0A0: .4byte 0x00000171

	thumb_func_start sub_080CA0A4
sub_080CA0A4: @ 0x080CA0A4
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA170 @ =gUnk_08355920
	cmp r0, #0
	bne _080CA1A8
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA0DC
	subs r0, r2, #1
	strb r0, [r4]
_080CA0DC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA102
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA102:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA174
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA140
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA140
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA140:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA1A8
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA1A8
	.align 2, 0
_080CA170: .4byte gUnk_08355920
_080CA174:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA1D2
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA1A8:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA1D2
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA1E4
_080CA1D2:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA1E4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA238
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA238
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA230
	mov r0, ip
	bl sub_080C97F0
	b _080CA2B2
_080CA230:
	mov r0, ip
	bl sub_080C95D4
	b _080CA2B2
_080CA238:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x42
	bne _080CA2B2
	ldr r1, _080CA2B8 @ =gUnk_02020EE0
	ldr r0, _080CA2BC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA2B2
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA276
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA2B2
_080CA276:
	ldr r1, _080CA2C0 @ =gUnk_08D60FA4
	ldr r4, _080CA2C4 @ =gSongTable
	ldr r2, _080CA2C8 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA29A
	ldr r1, _080CA2CC @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA2B2
_080CA29A:
	cmp r3, #0
	beq _080CA2AC
	ldr r0, _080CA2D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA2B2
_080CA2AC:
	ldr r0, _080CA2D4 @ =0x00000171
	bl m4aSongNumStart
_080CA2B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA2B8: .4byte gUnk_02020EE0
_080CA2BC: .4byte gUnk_0203AD3C
_080CA2C0: .4byte gUnk_08D60FA4
_080CA2C4: .4byte gSongTable
_080CA2C8: .4byte 0x00000B8C
_080CA2CC: .4byte 0x00000B88
_080CA2D0: .4byte gUnk_0203AD10
_080CA2D4: .4byte 0x00000171

	thumb_func_start sub_080CA2D8
sub_080CA2D8: @ 0x080CA2D8
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA3A4 @ =gUnk_08355AB8
	cmp r0, #0
	bne _080CA3DC
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA310
	subs r0, r2, #1
	strb r0, [r4]
_080CA310:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA336
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA336:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA3A8
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA374
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA374
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA374:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA3DC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA3DC
	.align 2, 0
_080CA3A4: .4byte gUnk_08355AB8
_080CA3A8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA406
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA3DC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA406
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA418
_080CA406:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA418:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA46C
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA46C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA464
	mov r0, ip
	bl sub_080C97F0
	b _080CA4E6
_080CA464:
	mov r0, ip
	bl sub_080C95D4
	b _080CA4E6
_080CA46C:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x74
	bne _080CA4E6
	ldr r1, _080CA4EC @ =gUnk_02020EE0
	ldr r0, _080CA4F0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA4E6
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA4AA
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA4E6
_080CA4AA:
	ldr r1, _080CA4F4 @ =gUnk_08D60FA4
	ldr r4, _080CA4F8 @ =gSongTable
	ldr r2, _080CA4FC @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA4CE
	ldr r1, _080CA500 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA4E6
_080CA4CE:
	cmp r3, #0
	beq _080CA4E0
	ldr r0, _080CA504 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA4E6
_080CA4E0:
	ldr r0, _080CA508 @ =0x00000171
	bl m4aSongNumStart
_080CA4E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA4EC: .4byte gUnk_02020EE0
_080CA4F0: .4byte gUnk_0203AD3C
_080CA4F4: .4byte gUnk_08D60FA4
_080CA4F8: .4byte gSongTable
_080CA4FC: .4byte 0x00000B8C
_080CA500: .4byte 0x00000B88
_080CA504: .4byte gUnk_0203AD10
_080CA508: .4byte 0x00000171

	thumb_func_start sub_080CA50C
sub_080CA50C: @ 0x080CA50C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CA5D8 @ =gUnk_08355A4C
	cmp r0, #0
	bne _080CA610
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CA544
	subs r0, r2, #1
	strb r0, [r4]
_080CA544:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CA56A
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CA56A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CA5DC
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA5A8
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA5A8
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA5A8:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA610
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CA610
	.align 2, 0
_080CA5D8: .4byte gUnk_08355A4C
_080CA5DC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA63A
	rsbs r0, r5, #0
	strh r0, [r2]
_080CA610:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CA63A
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA64C
_080CA63A:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA64C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA6A0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA6A0
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA698
	mov r0, ip
	bl sub_080C97F0
	b _080CA71A
_080CA698:
	mov r0, ip
	bl sub_080C95D4
	b _080CA71A
_080CA6A0:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x42
	bne _080CA71A
	ldr r1, _080CA720 @ =gUnk_02020EE0
	ldr r0, _080CA724 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CA71A
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CA6DE
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CA71A
_080CA6DE:
	ldr r1, _080CA728 @ =gUnk_08D60FA4
	ldr r4, _080CA72C @ =gSongTable
	ldr r2, _080CA730 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CA702
	ldr r1, _080CA734 @ =0x00000B88
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CA71A
_080CA702:
	cmp r3, #0
	beq _080CA714
	ldr r0, _080CA738 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CA71A
_080CA714:
	ldr r0, _080CA73C @ =0x00000171
	bl m4aSongNumStart
_080CA71A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA720: .4byte gUnk_02020EE0
_080CA724: .4byte gUnk_0203AD3C
_080CA728: .4byte gUnk_08D60FA4
_080CA72C: .4byte gSongTable
_080CA730: .4byte 0x00000B8C
_080CA734: .4byte 0x00000B88
_080CA738: .4byte gUnk_0203AD10
_080CA73C: .4byte 0x00000171

	thumb_func_start sub_080CA740
sub_080CA740: @ 0x080CA740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080CA810 @ =gUnk_08355B48
	cmp r0, #0
	bne _080CA846
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #0
	bne _080CA77C
	subs r0, r2, #1
	strb r0, [r5]
_080CA77C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0xff
	beq _080CA7A4
	strb r1, [r2]
_080CA7A4:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080CA814
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CA7E0
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA7E0
	rsbs r0, r3, #0
	strh r0, [r2]
_080CA7E0:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CA846
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080CA846
	.align 2, 0
_080CA810: .4byte gUnk_08355B48
_080CA814:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CA876
	rsbs r0, r6, #0
	strh r0, [r2]
_080CA846:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x9f
	movs r0, #0x83
	adds r0, r0, r4
	mov r8, r0
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080CA876
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CA888
_080CA876:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CA888:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CA8CE
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CA8CE
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080CA8FC
_080CA8CE:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #9
	bne _080CA8F2
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CA8EE
	adds r0, r4, #0
	movs r1, #4
	bl sub_080CAEB8
	adds r0, r4, #0
	movs r1, #9
	bl sub_080CAEB8
_080CA8EE:
	movs r0, #1
	strh r0, [r4, #4]
_080CA8F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CA8FC
sub_080CA8FC: @ 0x080CA8FC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080CA920 @ =sub_080CAA68
	movs r1, #0xa
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CA928
	ldr r0, _080CA924 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CA92E
	.align 2, 0
_080CA920: .4byte sub_080CAA68
_080CA924: .4byte 0xFFFFFF00
_080CA928:
	ldr r0, _080CA948 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CA92E:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CA94C
	ldr r0, _080CA948 @ =0xFFFFFF00
	ands r1, r0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	str r0, [r4, #0x44]
	b _080CA952
	.align 2, 0
_080CA948: .4byte 0xFFFFFF00
_080CA94C:
	ldr r0, _080CA9BC @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CA952:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x10
	strb r0, [r1]
	ldr r5, _080CA9C0 @ =gRngVal
	ldr r0, [r5]
	ldr r1, _080CA9C4 @ =0x00196225
	mov ip, r1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r6, _080CA9C8 @ =0x3C6EF35F
	adds r3, r0, r6
	str r3, [r5]
	lsrs r0, r3, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CA9B6
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CA9CC @ =gUnk_08351530
	ldr r0, _080CA9D0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r2, r7]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CA9D4
	mov r0, ip
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CA9D4
_080CA9B6:
	movs r0, #0x8c
	b _080CA9D6
	.align 2, 0
_080CA9BC: .4byte 0xFFFFFF00
_080CA9C0: .4byte gRngVal
_080CA9C4: .4byte 0x00196225
_080CA9C8: .4byte 0x3C6EF35F
_080CA9CC: .4byte gUnk_08351530
_080CA9D0: .4byte gUnk_0203AD30
_080CA9D4:
	movs r0, #0x5a
_080CA9D6:
	strh r0, [r4, #4]
	ldr r1, _080CAA48 @ =gUnk_02020EE0
	ldr r0, _080CAA4C @ =gUnk_0203AD3C
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
	bne _080CAA40
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CAA04
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CAA40
_080CAA04:
	ldr r1, _080CAA50 @ =gUnk_08D60FA4
	ldr r4, _080CAA54 @ =gSongTable
	ldr r2, _080CAA58 @ =0x00000B8C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CAA28
	ldr r7, _080CAA5C @ =0x00000B88
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CAA40
_080CAA28:
	cmp r3, #0
	beq _080CAA3A
	ldr r0, _080CAA60 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CAA40
_080CAA3A:
	ldr r0, _080CAA64 @ =0x00000171
	bl m4aSongNumStart
_080CAA40:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CAA48: .4byte gUnk_02020EE0
_080CAA4C: .4byte gUnk_0203AD3C
_080CAA50: .4byte gUnk_08D60FA4
_080CAA54: .4byte gSongTable
_080CAA58: .4byte 0x00000B8C
_080CAA5C: .4byte 0x00000B88
_080CAA60: .4byte gUnk_0203AD10
_080CAA64: .4byte 0x00000171

	thumb_func_start sub_080CAA68
sub_080CAA68: @ 0x080CAA68
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x10
	ble _080CAAE8
	adds r6, r5, #0
	adds r6, #0x85
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CAAE8
	ldr r1, _080CAB00 @ =gUnk_08355C76
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_080CAEB8
	ldrb r0, [r4]
	adds r2, r0, #1
	strb r2, [r4]
	ldr r3, _080CAB04 @ =gRngVal
	ldr r0, [r3]
	ldr r1, _080CAB08 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r7, _080CAB0C @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080CAAC6
	adds r0, r2, #1
	strb r0, [r4]
_080CAAC6:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4]
	ldr r2, _080CAB10 @ =gUnk_08355C6E
	ldr r0, [r3]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
_080CAAE8:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CAAFA
	adds r0, r5, #0
	bl sub_080CB694
_080CAAFA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CAB00: .4byte gUnk_08355C76
_080CAB04: .4byte gRngVal
_080CAB08: .4byte 0x00196225
_080CAB0C: .4byte 0x3C6EF35F
_080CAB10: .4byte gUnk_08355C6E

	thumb_func_start sub_080CAB14
sub_080CAB14: @ 0x080CAB14
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080CABE0 @ =gUnk_08355BA8
	cmp r0, #0
	bne _080CAC18
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080CAB4C
	subs r0, r2, #1
	strb r0, [r4]
_080CAB4C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080CAB72
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080CAB72:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CABE4
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080CABB0
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CABB0
	rsbs r0, r3, #0
	strh r0, [r2]
_080CABB0:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080CAC18
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080CAC18
	.align 2, 0
_080CABE0: .4byte gUnk_08355BA8
_080CABE4:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080CAC42
	rsbs r0, r5, #0
	strh r0, [r2]
_080CAC18:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080CAC42
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080CAC54
_080CAC42:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CAC54:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080CACAE
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080CACAE
	mov r1, ip
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CACA8
	mov r0, ip
	bl sub_080C97F0
	b _080CACAE
_080CACA8:
	mov r0, ip
	bl sub_080C95D4
_080CACAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CACB4
sub_080CACB4: @ 0x080CACB4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080CACE8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CACEC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CACF0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080CACF8
	.align 2, 0
_080CACE8: .4byte ObjectMain
_080CACEC: .4byte ObjectDestroy
_080CACF0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080CACF8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldrb r0, [r6, #0xe]
	adds r2, r4, #0
	adds r2, #0x85
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080CAD52
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	subs r0, #5
	strb r0, [r2]
_080CAD52:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CADB0 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	ldr r2, _080CADB4 @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CADB0: .4byte sub_0809F840
_080CADB4: .4byte gUnk_08351648

	thumb_func_start sub_080CADB8
sub_080CADB8: @ 0x080CADB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CAE14
	adds r4, r5, #0
	adds r4, #0x50
	ldr r2, _080CAE00 @ =gUnk_08355C86
	adds r3, r5, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r4]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080CAE04 @ =0xFFFFFB00
	adds r6, r2, #0
	adds r2, r3, #0
	cmp r1, r0
	bge _080CAE08
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4]
	b _080CAE46
	.align 2, 0
_080CAE00: .4byte gUnk_08355C86
_080CAE04: .4byte 0xFFFFFB00
_080CAE08:
	movs r0, #0xa0
	lsls r0, r0, #3
	cmp r1, r0
	ble _080CAE46
	strh r0, [r4]
	b _080CAE46
_080CAE14:
	adds r3, r5, #0
	adds r3, #0x50
	ldr r1, _080CAE74 @ =gUnk_08355C86
	adds r2, r5, #0
	adds r2, #0x85
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r4, [r3]
	adds r0, r0, r4
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r6, r1, #0
	cmp r4, r0
	bgt _080CAE44
	ldr r0, _080CAE78 @ =0xFFFFFB00
	cmp r4, r0
	bge _080CAE46
_080CAE44:
	strh r0, [r3]
_080CAE46:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, #3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080CAE7C
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080CAE92
	b _080CAE90
	.align 2, 0
_080CAE74: .4byte gUnk_08355C86
_080CAE78: .4byte 0xFFFFFB00
_080CAE7C:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r4, [r1]
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080CAEB4 @ =0xFFFFFB00
	cmp r0, r2
	bge _080CAE92
_080CAE90:
	strh r2, [r1]
_080CAE92:
	ldr r0, [r5, #0x58]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CAEAE
	adds r0, r5, #0
	bl sub_0809DA30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_080CAEAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CAEB4: .4byte 0xFFFFFB00

	thumb_func_start sub_080CAEB8
sub_080CAEB8: @ 0x080CAEB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r7, r0, #8
	movs r4, #0
	ldr r1, _080CAEE0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080CAEE4 @ =gUnk_020229E0
	b _080CAEFC
	.align 2, 0
_080CAEE0: .4byte gUnk_020229D4
_080CAEE4: .4byte gUnk_020229E0
_080CAEE8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CAF04
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CAEFC:
	cmp r0, #0
	bne _080CAEE8
	orrs r2, r3
	str r2, [r1]
_080CAF04:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa1
	strb r0, [r1, #0xc]
	mov r0, r8
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
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
	str r5, [r0, #0x70]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CAF60
sub_080CAF60: @ 0x080CAF60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080CAF90 @ =sub_080CB02C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080CAF94 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CAF98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080CAFA0
	.align 2, 0
_080CAF90: .4byte sub_080CB02C
_080CAF94: .4byte sub_0803DCCC
_080CAF98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080CAFA0:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r5, r4, #0
	adds r5, #0x42
	movs r7, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080CB014 @ =0x000002E7
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080CB018 @ =gUnk_02020EE0
	ldr r0, _080CB01C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080CB020
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB022
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080CB022
	.align 2, 0
_080CB014: .4byte 0x000002E7
_080CB018: .4byte gUnk_02020EE0
_080CB01C: .4byte gUnk_0203AD3C
_080CB020:
	strb r7, [r4]
_080CB022:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB02C
sub_080CB02C: @ 0x080CB02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080CB054 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CB058
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CB060
	.align 2, 0
_080CB054: .4byte gCurTask
_080CB058:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CB060:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080CB07A
	ldr r0, [r2]
	bl TaskDestroy
	b _080CB3CC
_080CB07A:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080CB08A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080CB3CC
_080CB08A:
	ldr r2, _080CB0F4 @ =gUnk_02020EE0
	ldr r0, _080CB0F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB13C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080CB104
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #8
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080CB0FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CB100 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080CB162
	.align 2, 0
_080CB0F4: .4byte gUnk_02020EE0
_080CB0F8: .4byte gUnk_0203AD3C
_080CB0FC: .4byte 0xFFF7FFFF
_080CB100: .4byte 0x0400000A
_080CB104:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CB162
	movs r0, #8
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080CB134 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080CB138 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080CB162
	.align 2, 0
_080CB134: .4byte 0xFFF7FFFF
_080CB138: .4byte 0x0400000A
_080CB13C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080CB158
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080CB158
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080CB158:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080CB162:
	ldr r2, _080CB1A4 @ =gUnk_02020EE0
	ldr r0, _080CB1A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CB1B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CB1B8
	ldr r6, _080CB1AC @ =0x000002E7
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080CB1B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080CB1B8
	.align 2, 0
_080CB1A4: .4byte gUnk_02020EE0
_080CB1A8: .4byte gUnk_0203AD3C
_080CB1AC: .4byte 0x000002E7
_080CB1B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080CB1B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080CB20C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CB1D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080CB1D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080CB1D6:
	cmp r3, #0
	beq _080CB20C
	ldr r0, _080CB208 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CB27C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB208: .4byte gUnk_03000510
_080CB20C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080CB274 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080CB24C
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080CB24C
	movs r3, #4
_080CB24C:
	ldr r0, _080CB278 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CB27C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080CB27C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080CB3CC
	.align 2, 0
_080CB274: .4byte gUnk_02020EE0
_080CB278: .4byte gUnk_03000510
_080CB27C:
	ldr r0, _080CB314 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x26
	adds r1, r1, r5
	mov sb, r1
	movs r2, #0x83
	adds r2, r2, r7
	mov sl, r2
	ldr r6, _080CB318 @ =gUnk_08355C68
	mov ip, r6
	cmp r0, #0
	beq _080CB2CE
	mov r1, r8
	ldrh r3, [r1]
	ldr r4, _080CB31C @ =gUnk_02026D50
_080CB29A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r6, _080CB320 @ =gUnk_02023530
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080CB2C6
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080CB2E0
_080CB2C6:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080CB29A
_080CB2CE:
	movs r0, #1
	cmp r0, #0
	beq _080CB2E0
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080CB2E0:
	ldrh r2, [r5, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080CB302
	ldrh r1, [r5, #4]
	adds r1, #1
	strh r1, [r5, #4]
	movs r0, #4
	orrs r0, r2
	strh r0, [r5, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _080CB302
	movs r0, #0
	strh r0, [r5, #4]
_080CB302:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB328
	ldrh r1, [r5, #6]
	ldr r0, _080CB324 @ =0x0000FFFE
	ands r0, r1
	b _080CB32E
	.align 2, 0
_080CB314: .4byte gUnk_0203AD44
_080CB318: .4byte gUnk_08355C68
_080CB31C: .4byte gUnk_02026D50
_080CB320: .4byte gUnk_02023530
_080CB324: .4byte 0x0000FFFE
_080CB328:
	ldrh r1, [r5, #6]
	movs r0, #1
	orrs r0, r1
_080CB32E:
	strh r0, [r5, #6]
	mov r6, sl
	ldrb r0, [r6]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080CB350
	ldr r0, _080CB34C @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xf
	mov r1, sb
	strb r0, [r1]
	b _080CB35A
	.align 2, 0
_080CB34C: .4byte 0x000002E7
_080CB350:
	ldr r0, _080CB378 @ =0x000002E7
	strh r0, [r5, #0x18]
	movs r0, #0xe
	mov r2, sb
	strb r0, [r2]
_080CB35A:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB37C
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	b _080CB38E
	.align 2, 0
_080CB378: .4byte 0x000002E7
_080CB37C:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r7, #0x40]
	subs r0, r0, r1
_080CB38E:
	str r0, [r5, #0x34]
	movs r2, #4
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r7, #0x44]
	adds r2, r1, r0
	str r2, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB3C6
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	str r0, [r5, #0x38]
_080CB3C6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080CB3CC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CB3DC
sub_080CB3DC: @ 0x080CB3DC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080CB47C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080CB476
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CB476
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080CB476
	ldrb r0, [r3, #1]
	cmp r0, #5
	bne _080CB476
	ldr r1, _080CB480 @ =gUnk_02020EE0
	ldr r0, _080CB484 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CB476
	ldrb r0, [r3]
	cmp r0, #0
	bne _080CB43A
	cmp r4, r2
	bne _080CB476
_080CB43A:
	ldr r1, _080CB488 @ =gUnk_08D60FA4
	ldr r4, _080CB48C @ =gSongTable
	ldr r2, _080CB490 @ =0x00000CFC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CB45E
	ldr r1, _080CB494 @ =0x00000CF8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CB476
_080CB45E:
	cmp r3, #0
	beq _080CB470
	ldr r0, _080CB498 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CB476
_080CB470:
	ldr r0, _080CB49C @ =0x0000019F
	bl m4aSongNumStart
_080CB476:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB47C: .4byte gUnk_03000510
_080CB480: .4byte gUnk_02020EE0
_080CB484: .4byte gUnk_0203AD3C
_080CB488: .4byte gUnk_08D60FA4
_080CB48C: .4byte gSongTable
_080CB490: .4byte 0x00000CFC
_080CB494: .4byte 0x00000CF8
_080CB498: .4byte gUnk_0203AD10
_080CB49C: .4byte 0x0000019F

	thumb_func_start sub_080CB4A0
sub_080CB4A0: @ 0x080CB4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CB4EC @ =sub_080CADB8
	movs r1, #0
	bl ObjectSetFunc
	ldr r5, _080CB4F0 @ =gUnk_08355C86
	movs r0, #0x85
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r2, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB4D0
	rsbs r0, r2, #0
	strh r0, [r3]
_080CB4D0:
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CB4EC: .4byte sub_080CADB8
_080CB4F0: .4byte gUnk_08355C86

	thumb_func_start sub_080CB4F4
sub_080CB4F4: @ 0x080CB4F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB514 @ =sub_080C939C
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB514: .4byte sub_080C939C

	thumb_func_start sub_080CB518
sub_080CB518: @ 0x080CB518
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080CB54A
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CB544
	adds r0, r2, #0
	bl sub_080C97F0
	b _080CB54A
_080CB544:
	adds r0, r2, #0
	bl sub_080C95D4
_080CB54A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CB550
sub_080CB550: @ 0x080CB550
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB574 @ =sub_080C9A08
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB57C
	ldr r0, _080CB578 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB582
	.align 2, 0
_080CB574: .4byte sub_080C9A08
_080CB578: .4byte 0xFFFFFF00
_080CB57C:
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB582:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5A0
	ldr r0, _080CB59C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB5A6
	.align 2, 0
_080CB59C: .4byte 0xFFFFFF00
_080CB5A0:
	ldr r0, _080CB5B8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB5A6:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB5B8: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB5BC
sub_080CB5BC: @ 0x080CB5BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB5E0 @ =sub_080C9BB4
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB5E8
	ldr r0, _080CB5E4 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB5EE
	.align 2, 0
_080CB5E0: .4byte sub_080C9BB4
_080CB5E4: .4byte 0xFFFFFF00
_080CB5E8:
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB5EE:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB60C
	ldr r0, _080CB608 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB612
	.align 2, 0
_080CB608: .4byte 0xFFFFFF00
_080CB60C:
	ldr r0, _080CB624 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB612:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB624: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB628
sub_080CB628: @ 0x080CB628
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB64C @ =sub_080CA740
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB654
	ldr r0, _080CB650 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB65A
	.align 2, 0
_080CB64C: .4byte sub_080CA740
_080CB650: .4byte 0xFFFFFF00
_080CB654:
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB65A:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB678
	ldr r0, _080CB674 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB67E
	.align 2, 0
_080CB674: .4byte 0xFFFFFF00
_080CB678:
	ldr r0, _080CB690 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB67E:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB690: .4byte 0xFFFFFF00

	thumb_func_start sub_080CB694
sub_080CB694: @ 0x080CB694
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CB6B8 @ =sub_080CAB14
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6C0
	ldr r0, _080CB6BC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080CB6C6
	.align 2, 0
_080CB6B8: .4byte sub_080CAB14
_080CB6BC: .4byte 0xFFFFFF00
_080CB6C0:
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080CB6C6:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080CB6E4
	ldr r0, _080CB6E0 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x44]
	b _080CB6EA
	.align 2, 0
_080CB6E0: .4byte 0xFFFFFF00
_080CB6E4:
	ldr r0, _080CB6F8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x44]
_080CB6EA:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CB6F8: .4byte 0xFFFFFF00

	thumb_func_start CreateMrFrosty
CreateMrFrosty: @ 0x080CB6FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CB730 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CB734 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CB738
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CB740
	.align 2, 0
_080CB730: .4byte ObjectMain
_080CB734: .4byte ObjectDestroy
_080CB738:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CB740:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r6, #0xc]
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r2, r1
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CB780
	orrs r2, r3
	b _080CB786
_080CB780:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CB786:
	str r2, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xaa
	movs r5, #0x15
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080CD2FC
	adds r0, r6, #0
	bl sub_080CD050
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080CB7E8
sub_080CB7E8: @ 0x080CB7E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CB810
	b _080CB9C6
_080CB810:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CB824
	b _080CB9C6
_080CB824:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080CB834
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CB83C
_080CB834:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CB83C:
	str r0, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CB87A
	b _080CB9C6
_080CB87A:
	ldr r4, _080CB9D8 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CB9DC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CD2A0
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CB902
	movs r0, #0
	strb r0, [r1, #9]
_080CB902:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CB9E0 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CB9C6
	ldr r0, _080CB9E4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CB9C6
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB9C6
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CB984
	movs r4, #1
_080CB94C:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080CB94C
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CB984:
	ldr r1, _080CB9E4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CB9E8 @ =gUnk_02020EE0
	ldr r0, _080CB9EC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CB9C6
	ldr r0, _080CB9F0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CB9C6
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CB9C6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CB9D8: .4byte gUnk_02023530
_080CB9DC: .4byte 0xFFFFFDFF
_080CB9E0: .4byte 0x0000065E
_080CB9E4: .4byte gUnk_08352D80
_080CB9E8: .4byte gUnk_02020EE0
_080CB9EC: .4byte gUnk_0203AD3C
_080CB9F0: .4byte gUnk_0203AD20

	thumb_func_start sub_080CB9F4
sub_080CB9F4: @ 0x080CB9F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CBA14
	movs r0, #1
	orrs r2, r0
	b _080CBA1A
_080CBA14:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CBA1A:
	str r2, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CBAFE
	ldr r2, _080CBA64 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBA68 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBA6C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080CBA70 @ =0x00002492
	adds r6, r2, #0
	adds r2, r4, #0
	adds r2, #0x85
	cmp r3, r0
	blt _080CBA5A
	adds r5, r0, #0
_080CBA48:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080CBA5A
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080CBA48
_080CBA5A:
	cmp r1, #0
	bne _080CBA74
	movs r0, #2
	strb r0, [r2]
	b _080CBAE0
	.align 2, 0
_080CBA64: .4byte gRngVal
_080CBA68: .4byte 0x00196225
_080CBA6C: .4byte 0x3C6EF35F
_080CBA70: .4byte 0x00002492
_080CBA74:
	ldr r1, [r6]
	ldr r0, _080CBAA8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBAAC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080CBAB0 @ =0x00002492
	cmp r3, r0
	blt _080CBA9E
	adds r5, r0, #0
_080CBA8C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bhi _080CBA9E
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080CBA8C
_080CBA9E:
	cmp r1, #0
	bne _080CBAB4
	movs r0, #2
	strb r0, [r2]
	b _080CBAF0
	.align 2, 0
_080CBAA8: .4byte 0x00196225
_080CBAAC: .4byte 0x3C6EF35F
_080CBAB0: .4byte 0x00002492
_080CBAB4:
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CBAC6
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBAF8
_080CBAC6:
	movs r0, #2
	strb r0, [r2]
	ldr r1, [r6]
	ldr r0, _080CBAE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBAEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBAF0
_080CBAE0:
	adds r0, r4, #0
	bl sub_080CD320
	b _080CBAFE
	.align 2, 0
_080CBAE8: .4byte 0x00196225
_080CBAEC: .4byte 0x3C6EF35F
_080CBAF0:
	adds r0, r4, #0
	bl sub_080CC0C0
	b _080CBAFE
_080CBAF8:
	adds r0, r4, #0
	bl sub_080CD3B8
_080CBAFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CBB04
sub_080CBB04: @ 0x080CBB04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CBB22
	subs r1, #0x33
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CBB2A
_080CBB22:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc8
	lsls r0, r0, #1
_080CBB2A:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBB3E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBB3E:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CBBE0 @ =sub_080CBC14
	str r0, [r4, #0x78]
	ldr r3, [r4, #8]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
	ldr r1, _080CBBE4 @ =gUnk_02020EE0
	ldr r0, _080CBBE8 @ =gUnk_0203AD3C
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
	bne _080CBBBE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBB82
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBBBE
_080CBB82:
	ldr r1, _080CBBEC @ =gUnk_08D60FA4
	ldr r5, _080CBBF0 @ =gSongTable
	ldr r2, _080CBBF4 @ =0x00000B1C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBBA6
	ldr r1, _080CBBF8 @ =0x00000B18
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBBBE
_080CBBA6:
	cmp r3, #0
	beq _080CBBB8
	ldr r0, _080CBBFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBBBE
_080CBBB8:
	ldr r0, _080CBC00 @ =0x00000163
	bl m4aSongNumStart
_080CBBBE:
	ldr r2, _080CBC04 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBC08 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CBC0C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBBDA
	ldr r0, _080CBC10 @ =0x00000107
	strh r0, [r4, #4]
_080CBBDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CBBE0: .4byte sub_080CBC14
_080CBBE4: .4byte gUnk_02020EE0
_080CBBE8: .4byte gUnk_0203AD3C
_080CBBEC: .4byte gUnk_08D60FA4
_080CBBF0: .4byte gSongTable
_080CBBF4: .4byte 0x00000B1C
_080CBBF8: .4byte 0x00000B18
_080CBBFC: .4byte gUnk_0203AD10
_080CBC00: .4byte 0x00000163
_080CBC04: .4byte gRngVal
_080CBC08: .4byte 0x00196225
_080CBC0C: .4byte 0x3C6EF35F
_080CBC10: .4byte 0x00000107

	thumb_func_start sub_080CBC14
sub_080CBC14: @ 0x080CBC14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBCB0
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CBC68 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CBC6C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBC68: .4byte 0xFFFFF800
_080CBC6C:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CBD30
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CBCAC @ =0xFFFFF800
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBCAC: .4byte 0xFFFFF800
_080CBCB0:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CBCF4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CBCF0 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CBD2C
	.align 2, 0
_080CBCF0: .4byte 0xFFFFF800
_080CBCF4:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CBD94 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CBD30
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CBD2C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CBD30:
	ldr r3, [r4, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080CBD44
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CBD44:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	beq _080CBDA8
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #4]
	cmp r0, #0x30
	beq _080CBD5C
	cmp r0, #0x73
	bne _080CBDFC
_080CBD5C:
	ldr r2, _080CBD98 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBD9C @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080CBDA0 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r0, #3
	ands r5, r0
	cmp r5, #0
	bne _080CBDFC
	ldr r2, _080CBDA4 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	b _080CBE14
	.align 2, 0
_080CBD94: .4byte 0xFFFFF800
_080CBD98: .4byte gRngVal
_080CBD9C: .4byte 0x00196225
_080CBDA0: .4byte 0x3C6EF35F
_080CBDA4: .4byte sub_080CB9F4
_080CBDA8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #4]
	cmp r0, #0x64
	bne _080CBDFC
	ldr r2, _080CBDEC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CBDF0 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080CBDF4 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBDFC
	ldr r2, _080CBDF8 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	b _080CBE14
	.align 2, 0
_080CBDEC: .4byte gRngVal
_080CBDF0: .4byte 0x00196225
_080CBDF4: .4byte 0x3C6EF35F
_080CBDF8: .4byte sub_080CB9F4
_080CBDFC:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBE12
	adds r0, r4, #0
	bl sub_080CBE1C
	b _080CBE16
_080CBE12:
	adds r0, r3, #1
_080CBE14:
	strh r0, [r4, #4]
_080CBE16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CBE1C
sub_080CBE1C: @ 0x080CBE1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CBEE0 @ =sub_080CBF00
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CBEE4 @ =0x0000FF40
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBE4A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBE4A:
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CBEE8 @ =gUnk_02020EE0
	ldr r0, _080CBEEC @ =gUnk_0203AD3C
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
	bne _080CBED8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBE98
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBED8
_080CBE98:
	ldr r1, _080CBEF0 @ =gUnk_08D60FA4
	ldr r4, _080CBEF4 @ =gSongTable
	ldr r2, _080CBEF8 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBEBE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBED8
_080CBEBE:
	cmp r3, #0
	beq _080CBED0
	ldr r0, _080CBEFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBED8
_080CBED0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CBED8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CBEE0: .4byte sub_080CBF00
_080CBEE4: .4byte 0x0000FF40
_080CBEE8: .4byte gUnk_02020EE0
_080CBEEC: .4byte gUnk_0203AD3C
_080CBEF0: .4byte gUnk_08D60FA4
_080CBEF4: .4byte gSongTable
_080CBEF8: .4byte 0x00000B24
_080CBEFC: .4byte gUnk_0203AD10

	thumb_func_start sub_080CBF00
sub_080CBF00: @ 0x080CBF00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CBF2E
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CBF2E
	ldr r0, [r4, #8]
	ldr r1, _080CC000 @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080CBF2E:
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	adds r7, r5, #0
	cmp r0, #3
	bne _080CC020
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r6, r0, #0
	cmp r1, r2
	bge _080CBF56
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6]
_080CBF56:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CBF66
	b _080CC0B4
_080CBF66:
	ldr r1, _080CC004 @ =gUnk_02020EE0
	ldr r0, _080CC008 @ =gUnk_0203AD3C
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
	bne _080CBFD2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CBF92
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CBFD2
_080CBF92:
	ldr r1, _080CC00C @ =gUnk_08D60FA4
	ldr r5, _080CC010 @ =gSongTable
	ldr r2, _080CC014 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CBFB8
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CBFD2
_080CBFB8:
	cmp r3, #0
	beq _080CBFCA
	ldr r0, _080CC018 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CBFD2
_080CBFCA:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CBFD2:
	movs r0, #4
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CC01C @ =0x0000FF80
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CBFF4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CBFF4:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	b _080CC0B4
	.align 2, 0
_080CC000: .4byte 0xFFFFF7FF
_080CC004: .4byte gUnk_02020EE0
_080CC008: .4byte gUnk_0203AD3C
_080CC00C: .4byte gUnk_08D60FA4
_080CC010: .4byte gSongTable
_080CC014: .4byte 0x00000B24
_080CC018: .4byte gUnk_0203AD10
_080CC01C: .4byte 0x0000FF80
_080CC020:
	cmp r0, #4
	bne _080CC060
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CC03C
	ldr r3, [r4, #8]
	mvns r3, r3
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CC03C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080CC0B4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r5]
	b _080CC0B4
_080CC060:
	cmp r0, #5
	bne _080CC0B4
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080CC078
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CC080
_080CC078:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
_080CC080:
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC0B4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r2, _080CC0BC @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
_080CC0B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC0BC: .4byte sub_080CB9F4

	thumb_func_start sub_080CC0C0
sub_080CC0C0: @ 0x080CC0C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CC0E4 @ =sub_080CC138
	movs r1, #6
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CC0E8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CC0F0
	.align 2, 0
_080CC0E4: .4byte sub_080CC138
_080CC0E8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CC0F0:
	str r0, [r4, #8]
	ldr r2, _080CC110 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CC114 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CC118 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC11C
	movs r0, #3
	strh r0, [r4, #4]
	b _080CC11E
	.align 2, 0
_080CC110: .4byte gRngVal
_080CC114: .4byte 0x00196225
_080CC118: .4byte 0x3C6EF35F
_080CC11C:
	strh r1, [r4, #4]
_080CC11E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC138
sub_080CC138: @ 0x080CC138
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x70
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080CC218 @ =0xF8800000
	cmp r0, r1
	bge _080CC15A
	ldr r0, _080CC21C @ =0x0000F880
	strh r0, [r2]
_080CC15A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080CC16A
	b _080CC266
_080CC16A:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CC220 @ =gUnk_02020EE0
	ldr r0, _080CC224 @ =gUnk_0203AD3C
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
	bne _080CC1DE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC19E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC1DE
_080CC19E:
	ldr r1, _080CC228 @ =gUnk_08D60FA4
	ldr r5, _080CC22C @ =gSongTable
	ldr r2, _080CC230 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC1C4
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC1DE
_080CC1C4:
	cmp r3, #0
	beq _080CC1D6
	ldr r0, _080CC234 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC1DE
_080CC1D6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CC1DE:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080CC23C
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC238 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	movs r0, #0x1e
	strh r0, [r4, #4]
	b _080CC266
	.align 2, 0
_080CC218: .4byte 0xF8800000
_080CC21C: .4byte 0x0000F880
_080CC220: .4byte gUnk_02020EE0
_080CC224: .4byte gUnk_0203AD3C
_080CC228: .4byte gUnk_08D60FA4
_080CC22C: .4byte gSongTable
_080CC230: .4byte 0x00000B24
_080CC234: .4byte gUnk_0203AD10
_080CC238: .4byte sub_080CB9F4
_080CC23C:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CC252
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CC25A
_080CC252:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CC25A:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r1]
_080CC266:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC26C
sub_080CC26C: @ 0x080CC26C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC2D4
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	beq _080CC2C4
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC2A8
	ldr r0, _080CC2A4 @ =0x000017FF
	cmp r2, r0
	ble _080CC2B0
	b _080CC2C4
	.align 2, 0
_080CC2A4: .4byte 0x000017FF
_080CC2A8:
	subs r1, r1, r0
	ldr r0, _080CC2C0 @ =0x000017FF
	cmp r1, r0
	bgt _080CC2C4
_080CC2B0:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC2EA
	.align 2, 0
_080CC2C0: .4byte 0x000017FF
_080CC2C4:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC2EA
_080CC2D4:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _080CC2F0 @ =gUnk_08355D50
	ldrb r1, [r4, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CC2EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CC2F0: .4byte gUnk_08355D50

	thumb_func_start sub_080CC2F4
sub_080CC2F4: @ 0x080CC2F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC35C
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xac
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	beq _080CC34C
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC330
	ldr r0, _080CC32C @ =0x000017FF
	cmp r2, r0
	ble _080CC338
	b _080CC34C
	.align 2, 0
_080CC32C: .4byte 0x000017FF
_080CC330:
	subs r1, r1, r0
	ldr r0, _080CC348 @ =0x000017FF
	cmp r1, r0
	bgt _080CC34C
_080CC338:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC372
	.align 2, 0
_080CC348: .4byte 0x000017FF
_080CC34C:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC372
_080CC35C:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _080CC378 @ =gUnk_08355D50
	ldrb r1, [r4, #1]
	lsrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080CC372:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CC378: .4byte gUnk_08355D50

	thumb_func_start sub_080CC37C
sub_080CC37C: @ 0x080CC37C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC402
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080CC402
	adds r1, #0xe
	ldr r2, [r1]
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r5, r1, #0
	cmp r2, #0
	bne _080CC3C0
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
	b _080CC402
_080CC3C0:
	ldr r0, [r2, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CC3D8
	ldr r0, _080CC3D4 @ =0x000017FF
	cmp r2, r0
	ble _080CC3E0
	b _080CC3F4
	.align 2, 0
_080CC3D4: .4byte 0x000017FF
_080CC3D8:
	subs r1, r1, r0
	ldr r0, _080CC3F0 @ =0x000017FF
	cmp r1, r0
	bgt _080CC3F4
_080CC3E0:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CC408
	b _080CC402
	.align 2, 0
_080CC3F0: .4byte 0x000017FF
_080CC3F4:
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r0, r4, #0
	bl sub_080CD56C
_080CC402:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CC408
sub_080CC408: @ 0x080CC408
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080CC4AC @ =sub_080CC4C8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC438
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CC438:
	ldr r1, _080CC4B0 @ =gUnk_02020EE0
	ldr r0, _080CC4B4 @ =gUnk_0203AD3C
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
	bne _080CC4A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC464
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC4A4
_080CC464:
	ldr r1, _080CC4B8 @ =gUnk_08D60FA4
	ldr r4, _080CC4BC @ =gSongTable
	ldr r2, _080CC4C0 @ =0x00000B44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC48A
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC4A4
_080CC48A:
	cmp r3, #0
	beq _080CC49C
	ldr r0, _080CC4C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC4A4
_080CC49C:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CC4A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC4AC: .4byte sub_080CC4C8
_080CC4B0: .4byte gUnk_02020EE0
_080CC4B4: .4byte gUnk_0203AD3C
_080CC4B8: .4byte gUnk_08D60FA4
_080CC4BC: .4byte gSongTable
_080CC4C0: .4byte 0x00000B44
_080CC4C4: .4byte gUnk_0203AD10

	thumb_func_start sub_080CC4C8
sub_080CC4C8: @ 0x080CC4C8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _080CC504
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC504
	ldr r2, _080CC500 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	b _080CC59C
	.align 2, 0
_080CC500: .4byte sub_080CB9F4
_080CC504:
	ldrh r2, [r4, #4]
	adds r0, r2, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bne _080CC534
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC52A
	rsbs r0, r3, #0
	strh r0, [r2]
_080CC52A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	b _080CC59C
_080CC534:
	subs r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080CC570
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC56C @ =gUnk_08352DD0
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #3
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r0, #4
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	b _080CC59C
	.align 2, 0
_080CC56C: .4byte gUnk_08352DD0
_080CC570:
	cmp r1, #7
	bne _080CC590
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080CC58C @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080CC59C
	.align 2, 0
_080CC58C: .4byte 0xFFFFF7FF
_080CC590:
	cmp r1, #0xb
	bne _080CC59C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CC59C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CC5A4
sub_080CC5A4: @ 0x080CC5A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _080CC5B8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080CC5CC
_080CC5B8:
	cmp r0, #0x1e
	bhi _080CC5C6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CC5CC
_080CC5C6:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
_080CC5CC:
	strh r0, [r1]
	adds r5, r1, #0
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CC672
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CC5F6
	ldr r3, [r4, #8]
	mvns r3, r3
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_08089864
_080CC5F6:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CC672
	movs r0, #1
	strh r0, [r4, #4]
	ldr r1, _080CC6A4 @ =gUnk_02020EE0
	ldr r0, _080CC6A8 @ =gUnk_0203AD3C
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
	bne _080CC66A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC62E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC66A
_080CC62E:
	ldr r1, _080CC6AC @ =gUnk_08D60FA4
	ldr r6, _080CC6B0 @ =gSongTable
	ldr r2, _080CC6B4 @ =0x00000B2C
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC652
	ldr r1, _080CC6B8 @ =0x00000B28
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC66A
_080CC652:
	cmp r3, #0
	beq _080CC664
	ldr r0, _080CC6BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC66A
_080CC664:
	ldr r0, _080CC6C0 @ =0x00000165
	bl m4aSongNumStart
_080CC66A:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
_080CC672:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC682
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CC682:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CC6E4
	ldr r2, _080CC6C4 @ =sub_080CD370
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CC6CC
	ldr r0, _080CC6C8 @ =0x0000FF80
	b _080CC6CE
	.align 2, 0
_080CC6A4: .4byte gUnk_02020EE0
_080CC6A8: .4byte gUnk_0203AD3C
_080CC6AC: .4byte gUnk_08D60FA4
_080CC6B0: .4byte gSongTable
_080CC6B4: .4byte 0x00000B2C
_080CC6B8: .4byte 0x00000B28
_080CC6BC: .4byte gUnk_0203AD10
_080CC6C0: .4byte 0x00000165
_080CC6C4: .4byte sub_080CD370
_080CC6C8: .4byte 0x0000FF80
_080CC6CC:
	ldr r0, _080CC6EC @ =0x0000FFA0
_080CC6CE:
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC6E0
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CC6E0:
	movs r0, #0
	strh r0, [r4, #4]
_080CC6E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CC6EC: .4byte 0x0000FFA0

	thumb_func_start sub_080CC6F0
sub_080CC6F0: @ 0x080CC6F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080CC73E
	ldrb r0, [r6]
	cmp r0, #0
	bne _080CC73E
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080CC73E
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080CC73E
	cmp r0, #0x7a
	bhi _080CC73E
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080CC73E
	ldr r4, [r6, #8]
	ldr r0, _080CC744 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080CC748
_080CC73E:
	movs r0, #0
	b _080CC7E4
	.align 2, 0
_080CC744: .4byte 0x03800B00
_080CC748:
	ldr r2, _080CC7F0 @ =sub_080CC818
	adds r0, r5, #0
	movs r1, #0xd
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080CC7F4 @ =gUnk_08355DB4
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	ldr r1, _080CC7F8 @ =gUnk_02020EE0
	ldr r0, _080CC7FC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CC7E2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CC7A8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CC7E2
_080CC7A8:
	ldr r1, _080CC800 @ =gUnk_08D60FA4
	ldr r4, _080CC804 @ =gSongTable
	ldr r2, _080CC808 @ =0x00000B6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC7CC
	ldr r1, _080CC80C @ =0x00000B68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CC7E2
_080CC7CC:
	cmp r3, #0
	beq _080CC7DC
	ldr r0, _080CC810 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080CC7E2
_080CC7DC:
	ldr r0, _080CC814 @ =0x0000016D
	bl m4aSongNumStart
_080CC7E2:
	movs r0, #1
_080CC7E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080CC7F0: .4byte sub_080CC818
_080CC7F4: .4byte gUnk_08355DB4
_080CC7F8: .4byte gUnk_02020EE0
_080CC7FC: .4byte gUnk_0203AD3C
_080CC800: .4byte gUnk_08D60FA4
_080CC804: .4byte gSongTable
_080CC808: .4byte 0x00000B6C
_080CC80C: .4byte 0x00000B68
_080CC810: .4byte gUnk_0203AD10
_080CC814: .4byte 0x0000016D

	thumb_func_start sub_080CC818
sub_080CC818: @ 0x080CC818
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xac
	ldr r0, [r5]
	mov ip, r0
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080CC844
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	bne _080CC874
	ldrb r0, [r6]
	cmp r0, #0x10
	beq _080CC874
_080CC844:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080CC870 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0x50
	b _080CCB22
	.align 2, 0
_080CC870: .4byte sub_080CB9F4
_080CC874:
	ldrb r0, [r6]
	cmp r0, #0xe
	beq _080CC91C
	cmp r0, #0xe
	bgt _080CC884
	cmp r0, #0xd
	beq _080CC892
	b _080CCB2A
_080CC884:
	cmp r0, #0xf
	bne _080CC88A
	b _080CC9D4
_080CC88A:
	cmp r0, #0x10
	bne _080CC890
	b _080CCAE4
_080CC890:
	b _080CCB2A
_080CC892:
	ldrh r0, [r4, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #7
	bgt _080CC8AC
	ldr r1, _080CC8C0 @ =gUnk_08352DD0
	asrs r0, r2, #0x11
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080CC8AC:
	movs r1, #4
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #4]
	cmp r0, #1
	bne _080CC8C4
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	b _080CC8D0
	.align 2, 0
_080CC8C0: .4byte gUnk_08352DD0
_080CC8C4:
	cmp r0, #0x10
	bne _080CC8D2
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
_080CC8D0:
	str r0, [r4, #8]
_080CC8D2:
	adds r0, r2, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CC8E2
	b _080CCB2A
_080CC8E2:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bhi _080CC8F6
	b _080CCB2A
_080CC8F6:
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r6]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CC918 @ =gUnk_08355DF4
	str r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	b _080CCB28
	.align 2, 0
_080CC918: .4byte gUnk_08355DF4
_080CC91C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bgt _080CC92C
	b _080CCB2A
_080CC92C:
	movs r0, #0xf
	strb r0, [r6]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CC9B0 @ =gUnk_08355E4C
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, _080CC9B4 @ =gUnk_02020EE0
	ldr r0, _080CC9B8 @ =gUnk_0203AD3C
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
	beq _080CC95C
	b _080CCB2A
_080CC95C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CC96E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080CC96E
	b _080CCB2A
_080CC96E:
	ldr r1, _080CC9BC @ =gUnk_08D60FA4
	ldr r4, _080CC9C0 @ =gSongTable
	ldr r2, _080CC9C4 @ =0x00000ACC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CC994
	ldr r1, _080CC9C8 @ =0x00000AC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080CC994
	b _080CCB2A
_080CC994:
	cmp r3, #0
	beq _080CC9A8
	ldr r0, _080CC9CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC9A8
	b _080CCB2A
_080CC9A8:
	ldr r0, _080CC9D0 @ =0x00000159
	bl m4aSongNumStart
	b _080CCB2A
	.align 2, 0
_080CC9B0: .4byte gUnk_08355E4C
_080CC9B4: .4byte gUnk_02020EE0
_080CC9B8: .4byte gUnk_0203AD3C
_080CC9BC: .4byte gUnk_08D60FA4
_080CC9C0: .4byte gSongTable
_080CC9C4: .4byte 0x00000ACC
_080CC9C8: .4byte 0x00000AC8
_080CC9CC: .4byte gUnk_0203AD10
_080CC9D0: .4byte 0x00000159
_080CC9D4:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bgt _080CC9E4
	b _080CCB2A
_080CC9E4:
	ldr r1, _080CCA20 @ =gUnk_02023530
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r2, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _080CCA24 @ =0x000077FF
	cmp r1, r0
	bgt _080CCA2C
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCA4C
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCA28 @ =gUnk_08355E74
	b _080CCA54
	.align 2, 0
_080CCA20: .4byte gUnk_02023530
_080CCA24: .4byte 0x000077FF
_080CCA28: .4byte gUnk_08355E74
_080CCA2C:
	ldr r1, [r4, #8]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080CCA4C
	orrs r1, r2
	str r1, [r4, #8]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCA48 @ =gUnk_08355E74
	b _080CCA54
	.align 2, 0
_080CCA48: .4byte gUnk_08355E74
_080CCA4C:
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080CCAC8 @ =gUnk_08355E64
_080CCA54:
	str r0, [r1]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r6]
	strh r1, [r4, #4]
	ldr r1, _080CCACC @ =gUnk_02020EE0
	ldr r0, _080CCAD0 @ =gUnk_0203AD3C
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
	bne _080CCB2A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CCA86
	ldrb r0, [r3]
	cmp r0, r2
	bne _080CCB2A
_080CCA86:
	ldr r1, _080CCAD4 @ =gUnk_08D60FA4
	ldr r4, _080CCAD8 @ =gSongTable
	ldr r2, _080CCADC @ =0x00000AD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CCAAC
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CCB2A
_080CCAAC:
	cmp r3, #0
	beq _080CCABE
	ldr r0, _080CCAE0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCB2A
_080CCABE:
	movs r0, #0xad
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080CCB2A
	.align 2, 0
_080CCAC8: .4byte gUnk_08355E64
_080CCACC: .4byte gUnk_02020EE0
_080CCAD0: .4byte gUnk_0203AD3C
_080CCAD4: .4byte gUnk_08D60FA4
_080CCAD8: .4byte gSongTable
_080CCADC: .4byte 0x00000AD4
_080CCAE0: .4byte gUnk_0203AD10
_080CCAE4:
	ldrh r0, [r4, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xb
	bgt _080CCAFC
	ldr r1, _080CCB30 @ =gUnk_08352DD0
	asrs r0, r2, #0x11
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080CCAFC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _080CCB2A
	ldr r2, _080CCB34 @ =sub_080CB9F4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
_080CCB22:
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
_080CCB28:
	strh r0, [r4, #4]
_080CCB2A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CCB30: .4byte gUnk_08352DD0
_080CCB34: .4byte sub_080CB9F4

	thumb_func_start sub_080CCB38
sub_080CCB38: @ 0x080CCB38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CCB6C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CCB70 @ =sub_080CD588
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CCB74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CCB7C
	.align 2, 0
_080CCB6C: .4byte ObjectMain
_080CCB70: .4byte sub_080CD588
_080CCB74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CCB7C:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CCC84 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCC06
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r5, #0x5c]
	subs r4, #5
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl sub_0803E308
_080CCC06:
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080CD2CC
	ldr r1, _080CCC88 @ =gUnk_02020EE0
	ldr r0, _080CCC8C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CCC7A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CCC3E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CCC7A
_080CCC3E:
	ldr r1, _080CCC90 @ =gUnk_08D60FA4
	ldr r4, _080CCC94 @ =gSongTable
	ldr r2, _080CCC98 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CCC62
	ldr r1, _080CCC9C @ =0x00000B38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CCC7A
_080CCC62:
	cmp r3, #0
	beq _080CCC74
	ldr r0, _080CCCA0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCC7A
_080CCC74:
	ldr r0, _080CCCA4 @ =0x00000167
	bl m4aSongNumStart
_080CCC7A:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CCC84: .4byte sub_0809F840
_080CCC88: .4byte gUnk_02020EE0
_080CCC8C: .4byte gUnk_0203AD3C
_080CCC90: .4byte gUnk_08D60FA4
_080CCC94: .4byte gSongTable
_080CCC98: .4byte 0x00000B3C
_080CCC9C: .4byte 0x00000B38
_080CCCA0: .4byte gUnk_0203AD10
_080CCCA4: .4byte 0x00000167

	thumb_func_start sub_080CCCA8
sub_080CCCA8: @ 0x080CCCA8
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x70]
	ldr r1, _080CCD04 @ =gUnk_08355D5E
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0x2d
	bgt _080CCCD0
	adds r0, r1, #1
	strh r0, [r2, #4]
_080CCCD0:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r3, [r0]
	cmp r3, #0x10
	bhi _080CCCF0
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCCF0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CCD08
_080CCCF0:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
	b _080CCD1A
	.align 2, 0
_080CCD04: .4byte gUnk_08355D5E
_080CCD08:
	ldr r1, [r4, #0x78]
	ldr r0, _080CCD20 @ =sub_080CC4C8
	cmp r1, r0
	bne _080CCD1A
	cmp r3, #0xb
	bne _080CCD1A
	adds r0, r2, #0
	bl sub_080CCD24
_080CCD1A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CCD20: .4byte sub_080CC4C8

	thumb_func_start sub_080CCD24
sub_080CCD24: @ 0x080CCD24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCD40
	ldr r2, _080CCD3C @ =sub_080CCDF8
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080CCD4A
	.align 2, 0
_080CCD3C: .4byte sub_080CCDF8
_080CCD40:
	ldr r2, _080CCD68 @ =sub_080CCDF8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080CCD4A:
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080CCD70
	ldr r0, _080CCD6C @ =0x000027FF
	cmp r2, r0
	ble _080CCD78
	b _080CCD84
	.align 2, 0
_080CCD68: .4byte sub_080CCDF8
_080CCD6C: .4byte 0x000027FF
_080CCD70:
	subs r1, r1, r0
	ldr r0, _080CCD80 @ =0x000027FF
	cmp r1, r0
	bgt _080CCD84
_080CCD78:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	b _080CCD8A
	.align 2, 0
_080CCD80: .4byte 0x000027FF
_080CCD84:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
_080CCD8A:
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CCDA6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080CCDB8
_080CCDA6:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0x80
	lsls r1, r1, #1
_080CCDB8:
	strh r1, [r2]
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCDD0
	ldrh r1, [r2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r1, r1, r0
	strh r1, [r2]
_080CCDD0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCDE0
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CCDE0:
	movs r0, #4
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CCDF8
sub_080CCDF8: @ 0x080CCDF8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x10
	bhi _080CCE16
	movs r0, #0x62
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCE28
_080CCE16:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
	b _080CCEDA
_080CCE28:
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080CCE50
	ldr r2, _080CCE4C @ =gUnk_08352DD0
	asrs r1, r0, #0x11
	movs r0, #6
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	b _080CCEDA
	.align 2, 0
_080CCE4C: .4byte gUnk_08352DD0
_080CCE50:
	ldr r0, [r3, #8]
	ldr r1, _080CCE9C @ =0xFFFFF7FF
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x1e
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080CCEA0 @ =0xFFFFF900
	cmp r0, r1
	bge _080CCE74
	strh r1, [r2]
_080CCE74:
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CCEDA
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CCEA4
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	b _080CCEB2
	.align 2, 0
_080CCE9C: .4byte 0xFFFFF7FF
_080CCEA0: .4byte 0xFFFFF900
_080CCEA4:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
_080CCEB2:
	strh r1, [r2]
	adds r2, r0, #0
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CCECA
	ldrh r1, [r2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r1, r1, r0
	strh r1, [r2]
_080CCECA:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CCEDA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CCEDA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CCEE0
sub_080CCEE0: @ 0x080CCEE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #8
	ldr r2, _080CCF3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CCF40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CCF44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CCF48 @ =0x00005554
	cmp r2, r0
	bls _080CCF9C
	ldr r0, _080CCF4C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CCF1A
	movs r1, #1
_080CCF1A:
	cmp r1, #0
	beq _080CCF9C
	movs r4, #0
	ldr r1, _080CCF50 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080CCF54 @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	movs r7, #0xac
	adds r7, r7, r5
	mov sb, r7
	b _080CCF6C
	.align 2, 0
_080CCF3C: .4byte gRngVal
_080CCF40: .4byte 0x00196225
_080CCF44: .4byte 0x3C6EF35F
_080CCF48: .4byte 0x00005554
_080CCF4C: .4byte 0x0000AAA9
_080CCF50: .4byte gUnk_020229D4
_080CCF54: .4byte gUnk_020229E0
_080CCF58:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CCF74
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CCF6C:
	cmp r0, #0
	bne _080CCF58
	orrs r2, r3
	str r2, [r1]
_080CCF74:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, sl
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xa6
	b _080CD006
_080CCF9C:
	movs r4, #0
	ldr r1, _080CCFBC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080CCFC0 @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	movs r7, #0xac
	adds r7, r7, r5
	mov sb, r7
	b _080CCFD8
	.align 2, 0
_080CCFBC: .4byte gUnk_020229D4
_080CCFC0: .4byte gUnk_020229E0
_080CCFC4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CCFE0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CCFD8:
	cmp r0, #0
	bne _080CCFC4
	orrs r2, r3
	str r2, [r1]
_080CCFE0:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, sl
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xa7
_080CD006:
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	mov r7, sb
	str r1, [r7]
	ldr r0, [r5, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080CD042
	ldr r0, [r1, #8]
	orrs r0, r2
	str r0, [r1, #8]
_080CD042:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD050
sub_080CD050: @ 0x080CD050
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080CD080 @ =sub_080CD128
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CD084
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD08C
	.align 2, 0
_080CD080: .4byte sub_080CD128
_080CD084:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD08C:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080CD120 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CD0DC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080CD0DC:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080CD124 @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CD100
	orrs r2, r3
_080CD100:
	str r2, [r4, #8]
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0x15
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CD120: .4byte gUnk_03000510
_080CD124: .4byte 0x12010400

	thumb_func_start sub_080CD128
sub_080CD128: @ 0x080CD128
	push {r4, lr}
	ldr r2, _080CD144 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CD148
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD150
	.align 2, 0
_080CD144: .4byte gCurTask
_080CD148:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD150:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080CD16C
	ldr r0, [r2]
	bl TaskDestroy
	b _080CD29A
_080CD16C:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CD17C
	orrs r1, r3
	str r1, [r4, #8]
	b _080CD29A
_080CD17C:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080CD1BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CD1C0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080CD1C0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080CD29A
	.align 2, 0
_080CD1BC: .4byte gUnk_03000510
_080CD1C0:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD1D2
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080CD1DA
_080CD1D2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD1DA:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080CD288
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080CD20C
	ldr r0, _080CD208 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080CD29A
	.align 2, 0
_080CD208: .4byte 0xFFFBFFFF
_080CD20C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CD29A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080CD29A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080CD244
	ldr r2, _080CD23C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080CD240 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080CD246
	.align 2, 0
_080CD23C: .4byte gUnk_02023530
_080CD240: .4byte 0x0000065E
_080CD244:
	movs r1, #0xff
_080CD246:
	cmp r1, #0xff
	beq _080CD29A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080CD280 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080CD284 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080CD29A
	.align 2, 0
_080CD280: .4byte gUnk_02022EB0
_080CD284: .4byte gUnk_02022F50
_080CD288:
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
_080CD29A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD2A0
sub_080CD2A0: @ 0x080CD2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD2C8 @ =sub_080CB9F4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x5c
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD2C8: .4byte sub_080CB9F4

	thumb_func_start sub_080CD2CC
sub_080CD2CC: @ 0x080CD2CC
	push {lr}
	adds r1, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa7
	bne _080CD2E8
	ldr r2, _080CD2E4 @ =sub_080CCCA8
	adds r0, r1, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080CD2F2
	.align 2, 0
_080CD2E4: .4byte sub_080CCCA8
_080CD2E8:
	ldr r2, _080CD2F8 @ =sub_080CCCA8
	adds r0, r1, #0
	movs r1, #0
	bl ObjectSetFunc
_080CD2F2:
	pop {r0}
	bx r0
	.align 2, 0
_080CD2F8: .4byte sub_080CCCA8

	thumb_func_start sub_080CD2FC
sub_080CD2FC: @ 0x080CD2FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD31C @ =sub_080CB7E8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD31C: .4byte sub_080CB7E8

	thumb_func_start sub_080CD320
sub_080CD320: @ 0x080CD320
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD340 @ =sub_080CD370
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CD348
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CD344 @ =0x0000FF80
	b _080CD34E
	.align 2, 0
_080CD340: .4byte sub_080CD370
_080CD344: .4byte 0x0000FF80
_080CD348:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CD36C @ =0x0000FFA0
_080CD34E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD362
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD362:
	movs r0, #0
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD36C: .4byte 0x0000FFA0

	thumb_func_start sub_080CD370
sub_080CD370: @ 0x080CD370
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD396
	adds r1, r2, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080CD3A4
_080CD396:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD3AC
_080CD3A4:
	adds r0, r2, #0
	bl sub_080CBB04
	b _080CD3B2
_080CD3AC:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080CD3B2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD3B8
sub_080CD3B8: @ 0x080CD3B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD3DC @ =sub_080CD3FC
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD3E0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD3E8
	.align 2, 0
_080CD3DC: .4byte sub_080CD3FC
_080CD3E0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD3E8:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CD3FC
sub_080CD3FC: @ 0x080CD3FC
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2b
	ble _080CD478
	ldr r2, _080CD430 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CD434 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CD438 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CD43C @ =0x00005554
	cmp r2, r0
	bhi _080CD440
	movs r1, #0
	b _080CD44A
	.align 2, 0
_080CD430: .4byte gRngVal
_080CD434: .4byte 0x00196225
_080CD438: .4byte 0x3C6EF35F
_080CD43C: .4byte 0x00005554
_080CD440:
	ldr r0, _080CD458 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CD44A
	movs r1, #1
_080CD44A:
	cmp r1, #1
	beq _080CD46A
	cmp r1, #1
	bgt _080CD45C
	cmp r1, #0
	beq _080CD462
	b _080CD478
	.align 2, 0
_080CD458: .4byte 0x0000AAA9
_080CD45C:
	cmp r1, #2
	beq _080CD472
	b _080CD478
_080CD462:
	adds r0, r3, #0
	bl sub_080CD47C
	b _080CD478
_080CD46A:
	adds r0, r3, #0
	bl sub_080CD4D0
	b _080CD478
_080CD472:
	adds r0, r3, #0
	bl sub_080CD524
_080CD478:
	pop {r0}
	bx r0

	thumb_func_start sub_080CD47C
sub_080CD47C: @ 0x080CD47C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD4C4 @ =sub_080CC26C
	movs r1, #8
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CD4C8 @ =0x0000FF80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD4AA
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD4AA:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD4CC @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD4C4: .4byte sub_080CC26C
_080CD4C8: .4byte 0x0000FF80
_080CD4CC: .4byte sub_080CD594

	thumb_func_start sub_080CD4D0
sub_080CD4D0: @ 0x080CD4D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD518 @ =sub_080CC2F4
	movs r1, #9
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080CD51C @ =0x0000FF80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD4FE
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD4FE:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD520 @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD518: .4byte sub_080CC2F4
_080CD51C: .4byte 0x0000FF80
_080CD520: .4byte sub_080CD594

	thumb_func_start sub_080CD524
sub_080CD524: @ 0x080CD524
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD560 @ =sub_080CC37C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldr r0, _080CD564 @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD550
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CD550:
	adds r0, r4, #0
	bl sub_080CCEE0
	ldr r0, _080CD568 @ =sub_080CD594
	str r0, [r4, #0x7c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD560: .4byte sub_080CC37C
_080CD564: .4byte 0x0000FF80
_080CD568: .4byte sub_080CD594

	thumb_func_start sub_080CD56C
sub_080CD56C: @ 0x080CD56C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CD584 @ =sub_080CC5A4
	movs r1, #0xc
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CD584: .4byte sub_080CC5A4

	thumb_func_start sub_080CD588
sub_080CD588: @ 0x080CD588
	push {lr}
	bl ObjectDestroy
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CD594
sub_080CD594: @ 0x080CD594
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xac
	ldr r1, [r2]
	ldrb r0, [r1]
	cmp r0, #1
	bne _080CD5C6
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r0, #0x5a
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080CD5C6
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080CD5C6
	movs r0, #0
	str r0, [r2]
	str r0, [r3, #0x7c]
_080CD5C6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreatePhanPhan
CreatePhanPhan: @ 0x080CD5CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CD600 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CD604 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CD608
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CD610
	.align 2, 0
_080CD600: .4byte ObjectMain
_080CD604: .4byte ObjectDestroy
_080CD608:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CD610:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD630
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD638
_080CD630:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD638:
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xae
	movs r2, #0x14
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x10
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080CF484
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080CD6C0
sub_080CD6C0: @ 0x080CD6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r4, [r0]
	ldr r3, [r6, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r6, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CD6F0
	b _080CD8A8
_080CD6F0:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r4, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CD704
	b _080CD8A8
_080CD704:
	ldr r1, [r6, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080CD712
	movs r0, #1
	orrs r3, r0
	b _080CD718
_080CD712:
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
_080CD718:
	str r3, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CD756
	b _080CD8A8
_080CD756:
	ldr r4, _080CD8B8 @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CD8BC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CF20C
	adds r0, r6, #0
	bl sub_080CF44C
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CD7E4
	movs r0, #0
	strb r0, [r1, #9]
_080CD7E4:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CD8C0 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CD8A8
	ldr r0, _080CD8C4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CD8A8
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CD8A8
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CD866
	movs r4, #1
_080CD82E:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080CD82E
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CD866:
	ldr r1, _080CD8C4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CD8C8 @ =gUnk_02020EE0
	ldr r0, _080CD8CC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CD8A8
	ldr r0, _080CD8D0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CD8A8
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CD8A8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CD8B8: .4byte gUnk_02023530
_080CD8BC: .4byte 0xFFFFFDFF
_080CD8C0: .4byte 0x0000065E
_080CD8C4: .4byte gUnk_08352D80
_080CD8C8: .4byte gUnk_02020EE0
_080CD8CC: .4byte gUnk_0203AD3C
_080CD8D0: .4byte gUnk_0203AD20

	thumb_func_start sub_080CD8D4
sub_080CD8D4: @ 0x080CD8D4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CD8F2
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CD8FA
_080CD8F2:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CD8FA:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080CD90E
	movs r2, #0x60
	movs r3, #2
	b _080CD940
_080CD90E:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CD934 @ =gUnk_08351530
	ldr r0, _080CD938 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CD93C
	movs r2, #0x48
	movs r3, #2
	b _080CD940
	.align 2, 0
_080CD934: .4byte gUnk_08351530
_080CD938: .4byte gUnk_0203AD30
_080CD93C:
	movs r2, #0x48
	movs r3, #4
_080CD940:
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, r3
	ble _080CD9E4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bls _080CD962
	adds r0, r4, #0
	bl sub_080CED7C
	b _080CDA9A
_080CD962:
	ldr r2, _080CD98C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CD990 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CD994 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #7
	ands r2, r0
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080CD998
	movs r3, #1
	b _080CD9A2
	.align 2, 0
_080CD98C: .4byte gRngVal
_080CD990: .4byte 0x00196225
_080CD994: .4byte 0x3C6EF35F
_080CD998:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080CD9A2
	movs r3, #2
_080CD9A2:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080CD9AE
	adds r0, r3, #3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080CD9AE:
	ldr r0, _080CD9C0 @ =gUnk_08355F54
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, r2
	bls _080CD9C4
	adds r0, r4, #0
	bl sub_080CF4C8
	b _080CDA9A
	.align 2, 0
_080CD9C0: .4byte gUnk_08355F54
_080CD9C4:
	ldr r0, _080CD9D8 @ =gUnk_08355F5A
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, r2
	bls _080CD9DC
	adds r0, r4, #0
	bl sub_080CE464
	b _080CDA9A
	.align 2, 0
_080CD9D8: .4byte gUnk_08355F5A
_080CD9DC:
	adds r0, r4, #0
	bl sub_080CE758
	b _080CDA9A
_080CD9E4:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080CD9FC
	cmp r1, r3
	blt _080CDA02
	b _080CDA38
_080CD9FC:
	subs r0, r0, r2
	cmp r0, r3
	bge _080CDA38
_080CDA02:
	ldr r2, _080CDA28 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CDA2C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080CDA30 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CDA50
	ldr r0, _080CDA34 @ =sub_080CDC84
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	b _080CDA9A
	.align 2, 0
_080CDA28: .4byte gRngVal
_080CDA2C: .4byte 0x00196225
_080CDA30: .4byte 0x3C6EF35F
_080CDA34: .4byte sub_080CDC84
_080CDA38:
	ldr r3, _080CDA60 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _080CDA64 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _080CDA68 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDA70
_080CDA50:
	ldr r0, _080CDA6C @ =sub_080CF4A8
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	b _080CDA9A
	.align 2, 0
_080CDA60: .4byte gRngVal
_080CDA64: .4byte 0x00196225
_080CDA68: .4byte 0x3C6EF35F
_080CDA6C: .4byte sub_080CF4A8
_080CDA70:
	adds r0, r2, #0
	muls r0, r5, r0
	ldr r1, _080CDA88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080CDA90
	ldr r0, _080CDA8C @ =sub_080CDAA4
	b _080CDA92
	.align 2, 0
_080CDA88: .4byte 0x3C6EF35F
_080CDA8C: .4byte sub_080CDAA4
_080CDA90:
	ldr r0, _080CDAA0 @ =sub_080CDC84
_080CDA92:
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080CDA9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CDAA0: .4byte sub_080CDC84

	thumb_func_start sub_080CDAA4
sub_080CDAA4: @ 0x080CDAA4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDB38
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CDAF0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDAF4
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	b _080CDB74
	.align 2, 0
_080CDAF0: .4byte 0xFFFFF800
_080CDAF4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	bgt _080CDBC4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CDB34 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CDBC0
	.align 2, 0
_080CDB34: .4byte 0xFFFFF800
_080CDB38:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDB84
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080CDB80 @ =0xFFFFF800
_080CDB74:
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x40]
	adds r4, r2, #0
	b _080CDBC4
	.align 2, 0
_080CDB80: .4byte 0xFFFFF800
_080CDB84:
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080CDC10 @ =0xFFFFF800
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	blt _080CDBC4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDBC0:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080CDBC4:
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x6a
	movs r7, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r5, r0, #0
	cmp r1, r2
	bge _080CDBE2
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5]
_080CDBE2:
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r6, r2, #0
	cmp r1, #3
	beq _080CDBF2
	cmp r1, #5
	bne _080CDC3E
_080CDBF2:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDC6C
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CDC14
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CDC1C
	.align 2, 0
_080CDC10: .4byte 0xFFFFF800
_080CDC14:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080CDC1C:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDC36
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CDC36:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080CDC6C
_080CDC3E:
	cmp r1, #4
	beq _080CDC5A
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CDC6C
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r3, #0
	bl sub_080CD8D4
	b _080CDC7E
_080CDC5A:
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080CDC6C
	movs r0, #5
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
_080CDC6C:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDC7E
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CDC7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CDC84
sub_080CDC84: @ 0x080CDC84
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDD18
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CDCD0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDCD4
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	b _080CDD54
	.align 2, 0
_080CDCD0: .4byte 0xFFFFF800
_080CDCD4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa4
	movs r6, #0
	ldrsh r0, [r2, r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	bgt _080CDDA4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r6, #0
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CDD14 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CDDA0
	.align 2, 0
_080CDD14: .4byte 0xFFFFF800
_080CDD18:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDD64
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _080CDD60 @ =0xFFFFF800
_080CDD54:
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x40]
	adds r4, r2, #0
	b _080CDDA4
	.align 2, 0
_080CDD60: .4byte 0xFFFFF800
_080CDD64:
	movs r0, #0x3e
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa8
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	ldr r4, _080CDDF0 @ =0xFFFFF800
	adds r0, r0, r4
	adds r4, r3, #0
	adds r4, #0x62
	cmp r1, r0
	blt _080CDDA4
	ldrb r1, [r4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDDA0:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_080CDDA4:
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x6a
	movs r7, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r2, #0xfd
	lsls r2, r2, #0x18
	adds r5, r0, #0
	cmp r1, r2
	bge _080CDDC2
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5]
_080CDDC2:
	adds r2, r3, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r6, r2, #0
	cmp r1, #3
	beq _080CDDD2
	cmp r1, #5
	bne _080CDE1E
_080CDDD2:
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDE4C
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CDDF4
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xfe
	lsls r0, r0, #8
	b _080CDDFC
	.align 2, 0
_080CDDF0: .4byte 0xFFFFF800
_080CDDF4:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080CDDFC:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDE16
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CDE16:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _080CDE4C
_080CDE1E:
	cmp r1, #4
	beq _080CDE3A
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CDE4C
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r3, #0
	bl sub_080CD8D4
	b _080CDE5E
_080CDE3A:
	ldrb r0, [r4]
	ands r1, r0
	cmp r1, #0
	beq _080CDE4C
	movs r0, #5
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x50
	strh r7, [r0]
_080CDE4C:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CDE5E
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CDE5E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CDE64
sub_080CDE64: @ 0x080CDE64
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDEFC
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CDEB4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CDEB8
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDEB4: .4byte 0xFFFFF800
_080CDEB8:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _080CDF80
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CDEF8 @ =0xFFFFF800
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDEF8: .4byte 0xFFFFF800
_080CDEFC:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CDF40
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CDF3C @ =0xFFFFF800
	adds r0, r0, r3
	b _080CDF7C
	.align 2, 0
_080CDF3C: .4byte 0xFFFFF800
_080CDF40:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CDF9C @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _080CDF80
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CDF7C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CDF80:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CDFA0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	b _080CDFA8
	.align 2, 0
_080CDF9C: .4byte 0xFFFFF800
_080CDFA0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
_080CDFA8:
	strh r0, [r1]
	adds r5, r1, #0
	ldrb r1, [r2]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CDFBC
	movs r0, #0
	strh r0, [r5]
_080CDFBC:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080CE050
	ldr r1, _080CE058 @ =gUnk_02020EE0
	ldr r0, _080CE05C @ =gUnk_0203AD3C
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
	bne _080CE02C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CDFF0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE02C
_080CDFF0:
	ldr r1, _080CE060 @ =gUnk_08D60FA4
	ldr r6, _080CE064 @ =gSongTable
	ldr r2, _080CE068 @ =0x00000B1C
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE014
	ldr r1, _080CE06C @ =0x00000B18
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE02C
_080CE014:
	cmp r3, #0
	beq _080CE026
	ldr r0, _080CE070 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE02C
_080CE026:
	ldr r0, _080CE074 @ =0x00000163
	bl m4aSongNumStart
_080CE02C:
	ldr r0, _080CE078 @ =sub_080CE07C
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE03E
	movs r0, #0xa8
	lsls r0, r0, #3
_080CE03E:
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE050
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080CE050:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CE058: .4byte gUnk_02020EE0
_080CE05C: .4byte gUnk_0203AD3C
_080CE060: .4byte gUnk_08D60FA4
_080CE064: .4byte gSongTable
_080CE068: .4byte 0x00000B1C
_080CE06C: .4byte 0x00000B18
_080CE070: .4byte gUnk_0203AD10
_080CE074: .4byte 0x00000163
_080CE078: .4byte sub_080CE07C

	thumb_func_start sub_080CE07C
sub_080CE07C: @ 0x080CE07C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE114
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CE0CC @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CE0D0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE0CC: .4byte 0xFFFFF800
_080CE0D0:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CE198
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CE110 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE110: .4byte 0xFFFFF800
_080CE114:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CE158
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CE154 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE194
	.align 2, 0
_080CE154: .4byte 0xFFFFF800
_080CE158:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CE210 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CE198
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CE194:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CE198:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CE218
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080CE1D2
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080CE1D2
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE1D2
	rsbs r0, r3, #0
	strh r0, [r2]
_080CE1D2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080CE218
	ldr r2, _080CE214 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE22C
	movs r0, #0
	strb r0, [r1]
	b _080CE22C
	.align 2, 0
_080CE210: .4byte 0xFFFFF800
_080CE214: .4byte sub_080CF4A8
_080CE218:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE22C
	adds r0, r4, #0
	bl sub_080CE234
_080CE22C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE234
sub_080CE234: @ 0x080CE234
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE2E0 @ =sub_080CE2FC
	movs r1, #0x12
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE264
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CE264:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080CE2E4 @ =gUnk_02020EE0
	ldr r0, _080CE2E8 @ =gUnk_0203AD3C
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
	bne _080CE2D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CE298
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE2D8
_080CE298:
	ldr r1, _080CE2EC @ =gUnk_08D60FA4
	ldr r4, _080CE2F0 @ =gSongTable
	ldr r2, _080CE2F4 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE2BE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE2D8
_080CE2BE:
	cmp r3, #0
	beq _080CE2D0
	ldr r0, _080CE2F8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE2D8
_080CE2D0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE2D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CE2E0: .4byte sub_080CE2FC
_080CE2E4: .4byte gUnk_02020EE0
_080CE2E8: .4byte gUnk_0203AD3C
_080CE2EC: .4byte gUnk_08D60FA4
_080CE2F0: .4byte gSongTable
_080CE2F4: .4byte 0x00000B24
_080CE2F8: .4byte gUnk_0203AD10

	thumb_func_start sub_080CE2FC
sub_080CE2FC: @ 0x080CE2FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE31C
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE31C:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0x12
	bne _080CE3F4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CE338
	b _080CE458
_080CE338:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r3, [r4, #8]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08089864
	ldr r1, _080CE3D8 @ =gUnk_02020EE0
	ldr r0, _080CE3DC @ =gUnk_0203AD3C
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
	bne _080CE3BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CE37A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE3BA
_080CE37A:
	ldr r1, _080CE3E0 @ =gUnk_08D60FA4
	ldr r5, _080CE3E4 @ =gSongTable
	ldr r2, _080CE3E8 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE3A0
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE3BA
_080CE3A0:
	cmp r3, #0
	beq _080CE3B2
	ldr r0, _080CE3EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE3BA
_080CE3B2:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE3BA:
	movs r0, #0x13
	strb r0, [r6]
	adds r2, r4, #0
	adds r2, #0x50
	ldr r3, _080CE3F0 @ =0x0000FE80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE458
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080CE458
	.align 2, 0
_080CE3D8: .4byte gUnk_02020EE0
_080CE3DC: .4byte gUnk_0203AD3C
_080CE3E0: .4byte gUnk_08D60FA4
_080CE3E4: .4byte gSongTable
_080CE3E8: .4byte 0x00000B24
_080CE3EC: .4byte gUnk_0203AD10
_080CE3F0: .4byte 0x0000FE80
_080CE3F4:
	cmp r0, #0x13
	bne _080CE424
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080CE458
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE418
	movs r0, #0x14
	b _080CE456
_080CE418:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x2b
	bne _080CE458
	movs r0, #0x14
	b _080CE456
_080CE424:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CE458
	ldr r2, _080CE460 @ =sub_080CF4A8
	adds r0, r4, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE458
	movs r0, #0
_080CE456:
	strb r0, [r1]
_080CE458:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CE460: .4byte sub_080CF4A8

	thumb_func_start sub_080CE464
sub_080CE464: @ 0x080CE464
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE48C @ =sub_080CE4DC
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CE490
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CE498
	.align 2, 0
_080CE48C: .4byte sub_080CE4DC
_080CE490:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CE498:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE4AE
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080CE4B6
_080CE4AE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080CE4B6:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE4D4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CE4D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE4DC
sub_080CE4DC: @ 0x080CE4DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE574
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CE52C @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CE530
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE52C: .4byte 0xFFFFF800
_080CE530:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CE5F4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080CE570 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE570: .4byte 0xFFFFF800
_080CE574:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CE5B8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080CE5B4 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CE5F0
	.align 2, 0
_080CE5B4: .4byte 0xFFFFF800
_080CE5B8:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CE62C @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CE5F4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CE5F0:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080CE5F4:
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x10
	movs r7, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE610
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE610:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #7
	bne _080CE630
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080CE624
	b _080CE73C
_080CE624:
	movs r0, #8
	strb r0, [r6]
	b _080CE73C
	.align 2, 0
_080CE62C: .4byte 0xFFFFF800
_080CE630:
	cmp r0, #8
	bne _080CE6F8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CE644
	b _080CE73C
_080CE644:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	movs r0, #9
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	ldr r1, _080CE6E0 @ =gUnk_02020EE0
	ldr r0, _080CE6E4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CE73C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CE69E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE73C
_080CE69E:
	ldr r1, _080CE6E8 @ =gUnk_08D60FA4
	ldr r4, _080CE6EC @ =gSongTable
	ldr r2, _080CE6F0 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE6C4
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE73C
_080CE6C4:
	cmp r3, #0
	beq _080CE6D6
	ldr r0, _080CE6F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE73C
_080CE6D6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080CE73C
	.align 2, 0
_080CE6E0: .4byte gUnk_02020EE0
_080CE6E4: .4byte gUnk_0203AD3C
_080CE6E8: .4byte gUnk_08D60FA4
_080CE6EC: .4byte gSongTable
_080CE6F0: .4byte 0x00000B24
_080CE6F4: .4byte gUnk_0203AD10
_080CE6F8:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080CE73C
	ldr r2, _080CE738 @ =sub_080CF4A8
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, r5, #0
	bl sub_080CD8D4
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE752
	movs r0, #0
	strb r0, [r1]
	b _080CE752
	.align 2, 0
_080CE738: .4byte sub_080CF4A8
_080CE73C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE752
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CE752:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CE758
sub_080CE758: @ 0x080CE758
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CE780 @ =sub_080CE800
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CE784
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CE78C
	.align 2, 0
_080CE780: .4byte sub_080CE800
_080CE784:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CE78C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CE7CC
	ldr r2, _080CE7C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CE7C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CE7C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE7E4
	movs r0, #2
	b _080CE7F6
	.align 2, 0
_080CE7C0: .4byte gRngVal
_080CE7C4: .4byte 0x00196225
_080CE7C8: .4byte 0x3C6EF35F
_080CE7CC:
	ldr r2, _080CE7E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CE7EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CE7F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CE7F4
_080CE7E4:
	strh r1, [r4, #4]
	b _080CE7F8
	.align 2, 0
_080CE7E8: .4byte gRngVal
_080CE7EC: .4byte 0x00196225
_080CE7F0: .4byte 0x3C6EF35F
_080CE7F4:
	movs r0, #3
_080CE7F6:
	strh r0, [r4, #4]
_080CE7F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE800
sub_080CE800: @ 0x080CE800
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x3b
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CE81E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CE81E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080CE846
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080CE836
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2]
_080CE836:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080CE842
	b _080CE944
_080CE842:
	movs r0, #0xb
	b _080CE942
_080CE846:
	cmp r1, #0xb
	bne _080CE944
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CE944
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_08089864
	ldr r1, _080CE924 @ =gUnk_02020EE0
	ldr r0, _080CE928 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CE8E8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CE8A8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CE8E8
_080CE8A8:
	ldr r1, _080CE92C @ =gUnk_08D60FA4
	ldr r4, _080CE930 @ =gSongTable
	ldr r2, _080CE934 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CE8CE
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CE8E8
_080CE8CE:
	cmp r3, #0
	beq _080CE8E0
	ldr r0, _080CE938 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CE8E8
_080CE8E0:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CE8E8:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080CE940
	ldr r2, _080CE93C @ =sub_080CF4A8
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_080CD8D4
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CE944
	movs r0, #0
	strb r0, [r1]
	b _080CE944
	.align 2, 0
_080CE924: .4byte gUnk_02020EE0
_080CE928: .4byte gUnk_0203AD3C
_080CE92C: .4byte gUnk_08D60FA4
_080CE930: .4byte gSongTable
_080CE934: .4byte 0x00000B24
_080CE938: .4byte gUnk_0203AD10
_080CE93C: .4byte sub_080CF4A8
_080CE940:
	movs r0, #0xa
_080CE942:
	strb r0, [r6]
_080CE944:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CE94C
sub_080CE94C: @ 0x080CE94C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0x15
	beq _080CE99A
	ldrb r0, [r6]
	cmp r0, #0
	bne _080CE99A
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080CE99A
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080CE99A
	cmp r0, #0x7a
	bhi _080CE99A
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080CE99A
	ldr r4, [r6, #8]
	ldr r0, _080CE9A0 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080CE9A4
_080CE99A:
	movs r0, #0
	b _080CEA48
	.align 2, 0
_080CE9A0: .4byte 0x03800B00
_080CE9A4:
	ldr r2, _080CEA54 @ =sub_080CEA7C
	adds r0, r5, #0
	movs r1, #0x15
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x9e
	strb r0, [r1]
	ldr r0, [r5, #0xc]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0xc]
	ldr r0, _080CEA58 @ =gUnk_08355F60
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	str r6, [r5, #0x6c]
	ldr r1, _080CEA5C @ =gUnk_02020EE0
	ldr r0, _080CEA60 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080CEA46
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CEA0C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CEA46
_080CEA0C:
	ldr r1, _080CEA64 @ =gUnk_08D60FA4
	ldr r4, _080CEA68 @ =gSongTable
	ldr r2, _080CEA6C @ =0x00000B6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CEA30
	ldr r1, _080CEA70 @ =0x00000B68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CEA46
_080CEA30:
	cmp r3, #0
	beq _080CEA40
	ldr r0, _080CEA74 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080CEA46
_080CEA40:
	ldr r0, _080CEA78 @ =0x0000016D
	bl m4aSongNumStart
_080CEA46:
	movs r0, #1
_080CEA48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080CEA54: .4byte sub_080CEA7C
_080CEA58: .4byte gUnk_08355F60
_080CEA5C: .4byte gUnk_02020EE0
_080CEA60: .4byte gUnk_0203AD3C
_080CEA64: .4byte gUnk_08D60FA4
_080CEA68: .4byte gSongTable
_080CEA6C: .4byte 0x00000B6C
_080CEA70: .4byte 0x00000B68
_080CEA74: .4byte gUnk_0203AD10
_080CEA78: .4byte 0x0000016D

	thumb_func_start sub_080CEA7C
sub_080CEA7C: @ 0x080CEA7C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldr r1, [r2, #0xc]
	movs r4, #0x80
	ands r4, r1
	cmp r4, #0
	beq _080CEAA2
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080CF51C
	b _080CEB46
_080CEAA2:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080CEADA
	ldrb r1, [r2, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080CEACA
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080CEAD2
_080CEACA:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080CEAD2:
	strh r0, [r1]
	adds r4, r2, #0
	adds r4, #0x9e
	b _080CEB16
_080CEADA:
	adds r0, r2, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r4, r1, #0
	cmp r0, #0
	beq _080CEAFC
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080CEB16
	b _080CEB0E
_080CEAFC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080CEB16
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080CEB16
_080CEB0E:
	adds r0, r2, #0
	bl sub_080CEB4C
	b _080CEB46
_080CEB16:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080CEB30
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CEB30
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CEB30:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CEB46
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CEB46
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CEB46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CEB4C
sub_080CEB4C: @ 0x080CEB4C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080CEBB0 @ =sub_080CEBF8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r3, r0, r1
	ldr r0, _080CEBB4 @ =gUnk_08355F60
	str r0, [r3]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r1, _080CEBB8 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, _080CEBBC @ =0x000077FF
	cmp r1, r0
	bgt _080CEBC4
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CEBE0
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _080CEBC0 @ =gUnk_08355F68
	b _080CEBEA
	.align 2, 0
_080CEBB0: .4byte sub_080CEBF8
_080CEBB4: .4byte gUnk_08355F60
_080CEBB8: .4byte gUnk_02023530
_080CEBBC: .4byte 0x000077FF
_080CEBC0: .4byte gUnk_08355F68
_080CEBC4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CEBE0
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1a
	strb r1, [r0]
	ldr r0, _080CEBDC @ =gUnk_08355F68
	b _080CEBEA
	.align 2, 0
_080CEBDC: .4byte gUnk_08355F68
_080CEBE0:
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0x1b
	strb r1, [r0]
	ldr r0, _080CEBF4 @ =gUnk_08356038
_080CEBEA:
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CEBF4: .4byte gUnk_08356038

	thumb_func_start sub_080CEBF8
sub_080CEBF8: @ 0x080CEBF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	movs r5, #0x80
	ands r5, r1
	cmp r5, #0
	beq _080CEC16
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080CF51C
	b _080CED50
_080CEC16:
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	beq _080CECD0
	ldrb r0, [r6]
	cmp r0, #0x1c
	bne _080CEC64
	ldr r2, _080CEC60 @ =sub_080CF4A8
	adds r0, r4, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CED50
	movs r0, #0
	strb r0, [r1]
	b _080CED50
	.align 2, 0
_080CEC60: .4byte sub_080CF4A8
_080CEC64:
	movs r0, #0x1c
	strb r0, [r6]
	ldr r1, _080CED58 @ =gUnk_02020EE0
	ldr r0, _080CED5C @ =gUnk_0203AD3C
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
	bne _080CECD0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CEC94
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CECD0
_080CEC94:
	ldr r1, _080CED60 @ =gUnk_08D60FA4
	ldr r5, _080CED64 @ =gSongTable
	ldr r2, _080CED68 @ =0x00000B7C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CECB8
	ldr r1, _080CED6C @ =0x00000B78
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CECD0
_080CECB8:
	cmp r3, #0
	beq _080CECCA
	ldr r0, _080CED70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CECD0
_080CECCA:
	ldr r0, _080CED74 @ =0x0000016F
	bl m4aSongNumStart
_080CECD0:
	ldrb r0, [r6]
	cmp r0, #0x1a
	bne _080CED50
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080CECE4
	cmp r0, #0x1b
	beq _080CECE4
	cmp r0, #0x35
	bne _080CED50
_080CECE4:
	ldr r1, _080CED58 @ =gUnk_02020EE0
	ldr r0, _080CED5C @ =gUnk_0203AD3C
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
	bne _080CED50
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CED10
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CED50
_080CED10:
	ldr r1, _080CED60 @ =gUnk_08D60FA4
	ldr r4, _080CED64 @ =gSongTable
	ldr r2, _080CED78 @ =0x00000B74
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CED36
	movs r1, #0xb7
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CED50
_080CED36:
	cmp r3, #0
	beq _080CED48
	ldr r0, _080CED70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CED50
_080CED48:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080CED50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CED58: .4byte gUnk_02020EE0
_080CED5C: .4byte gUnk_0203AD3C
_080CED60: .4byte gUnk_08D60FA4
_080CED64: .4byte gSongTable
_080CED68: .4byte 0x00000B7C
_080CED6C: .4byte 0x00000B78
_080CED70: .4byte gUnk_0203AD10
_080CED74: .4byte 0x0000016F
_080CED78: .4byte 0x00000B74

	thumb_func_start sub_080CED7C
sub_080CED7C: @ 0x080CED7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080CEDA4 @ =sub_080CEE04
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CEDA8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CEDB0
	.align 2, 0
_080CEDA4: .4byte sub_080CEE04
_080CEDA8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CEDB0:
	str r0, [r4, #8]
	ldr r2, _080CEDD0 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080CEDD4 @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080CEDD8 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080CEDDC
	movs r0, #0x18
	b _080CEDFA
	.align 2, 0
_080CEDD0: .4byte gRngVal
_080CEDD4: .4byte 0x00196225
_080CEDD8: .4byte 0x3C6EF35F
_080CEDDC:
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, _080CEDF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080CEDF8
	movs r0, #8
	b _080CEDFA
	.align 2, 0
_080CEDF4: .4byte 0x3C6EF35F
_080CEDF8:
	movs r0, #0x28
_080CEDFA:
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CEE04
sub_080CEE04: @ 0x080CEE04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0xa
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CEE22
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080CEE22:
	ldr r1, [r4, #8]
	movs r3, #4
	orrs r1, r3
	str r1, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0xc
	bne _080CEE52
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080CEEBE
	movs r0, #0xd
	strb r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r2]
	b _080CEEBE
_080CEE52:
	cmp r0, #0xd
	bne _080CEE76
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080CEEBE
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080CEEC8
	movs r0, #0xe
	strb r0, [r5]
	b _080CEEBE
_080CEE76:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080CEE82
	movs r0, #0xf
	strb r0, [r5]
_080CEE82:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080CEEBE
	ldr r2, _080CEEC4 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CEEBE
	movs r0, #0
	strb r0, [r1]
_080CEEBE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CEEC4: .4byte sub_080CF4A8

	thumb_func_start sub_080CEEC8
sub_080CEEC8: @ 0x080CEEC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CEEEC
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0xc
	b _080CEEF2
_080CEEEC:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0xc
_080CEEF2:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080CEF14 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080CEF18 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080CEF30
	.align 2, 0
_080CEF14: .4byte gUnk_020229D4
_080CEF18: .4byte gUnk_020229E0
_080CEF1C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080CEF38
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080CEF30:
	cmp r0, #0
	bne _080CEF1C
	orrs r2, r3
	str r2, [r1]
_080CEF38:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xaa
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x20
	strb r0, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080CEF9C
sub_080CEF9C: @ 0x080CEF9C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080CEFD0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CEFD4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CEFD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CEFE0
	.align 2, 0
_080CEFD0: .4byte ObjectMain
_080CEFD4: .4byte ObjectDestroy
_080CEFD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CEFE0:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080CF0B0 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080CF0D4
	ldr r1, _080CF0B4 @ =gUnk_02020EE0
	ldr r0, _080CF0B8 @ =gUnk_0203AD3C
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
	bne _080CF0A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080CF068
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CF0A4
_080CF068:
	ldr r1, _080CF0BC @ =gUnk_08D60FA4
	ldr r5, _080CF0C0 @ =gSongTable
	ldr r2, _080CF0C4 @ =0x00000B3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CF08C
	ldr r1, _080CF0C8 @ =0x00000B38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CF0A4
_080CF08C:
	cmp r3, #0
	beq _080CF09E
	ldr r0, _080CF0CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CF0A4
_080CF09E:
	ldr r0, _080CF0D0 @ =0x00000167
	bl m4aSongNumStart
_080CF0A4:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CF0B0: .4byte sub_0809F840
_080CF0B4: .4byte gUnk_02020EE0
_080CF0B8: .4byte gUnk_0203AD3C
_080CF0BC: .4byte gUnk_08D60FA4
_080CF0C0: .4byte gSongTable
_080CF0C4: .4byte 0x00000B3C
_080CF0C8: .4byte 0x00000B38
_080CF0CC: .4byte gUnk_0203AD10
_080CF0D0: .4byte 0x00000167

	thumb_func_start sub_080CF0D4
sub_080CF0D4: @ 0x080CF0D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF114 @ =sub_080CF148
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080CF0F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080CF0F4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF118
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x81
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r2, [r1]
	b _080CF12A
	.align 2, 0
_080CF114: .4byte sub_080CF148
_080CF118:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xac
	lsls r1, r1, #1
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	ldr r1, _080CF144 @ =0x000002AF
	strh r1, [r2]
_080CF12A:
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF13C
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080CF13C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF144: .4byte 0x000002AF

	thumb_func_start sub_080CF148
sub_080CF148: @ 0x080CF148
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x1a
	strh r0, [r3]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080CF166
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r3]
_080CF166:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _080CF1EC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080CF1B0
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF19A
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	subs r1, #0x30
	b _080CF1A6
_080CF19A:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, #0x40
_080CF1A6:
	strh r1, [r3]
	adds r3, r0, #0
	movs r0, #1
	strh r0, [r4, #4]
	b _080CF1DC
_080CF1B0:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF1CA
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	strh r0, [r3]
	adds r3, r1, #0
	b _080CF1DC
_080CF1CA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r3]
	adds r3, r0, #0
_080CF1DC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF1EC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080CF1EC:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF206
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080CF206:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF20C
sub_080CF20C: @ 0x080CF20C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080CF23C @ =sub_080CF2E4
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CF240
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF248
	.align 2, 0
_080CF23C: .4byte sub_080CF2E4
_080CF240:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF248:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080CF2DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CF298
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080CF298:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080CF2E0 @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080CF2BC
	orrs r2, r3
_080CF2BC:
	str r2, [r4, #8]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CF2DC: .4byte gUnk_03000510
_080CF2E0: .4byte 0x12010400

	thumb_func_start sub_080CF2E4
sub_080CF2E4: @ 0x080CF2E4
	push {r4, r5, lr}
	ldr r2, _080CF300 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CF304
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF30C
	.align 2, 0
_080CF300: .4byte gCurTask
_080CF304:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF30C:
	adds r5, r0, #0
	ldr r4, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080CF324
	ldr r0, [r2]
	bl TaskDestroy
	b _080CF446
_080CF324:
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _080CF334
	orrs r4, r1
	str r4, [r5, #8]
	b _080CF446
_080CF334:
	ldr r0, _080CF360 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080CF364
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _080CF364
	adds r0, r5, #0
	bl sub_0803D9A8
	b _080CF446
	.align 2, 0
_080CF360: .4byte gUnk_03000510
_080CF364:
	ldr r2, [r5, #0x70]
	ldr r0, [r2, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r5, #0x44]
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF386
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080CF38E
_080CF386:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF38E:
	str r0, [r5, #8]
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xb
	bhi _080CF438
	ldr r0, [r2, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x68]
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080CF3BC
	ldr r0, _080CF3B8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080CF446
	.align 2, 0
_080CF3B8: .4byte 0xFFFBFFFF
_080CF3BC:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080CF446
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080CF446
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080CF3F4
	ldr r2, _080CF3EC @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080CF3F0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080CF3F6
	.align 2, 0
_080CF3EC: .4byte gUnk_02023530
_080CF3F0: .4byte 0x0000065E
_080CF3F4:
	movs r1, #0xff
_080CF3F6:
	cmp r1, #0xff
	beq _080CF446
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080CF430 @ =gUnk_02022EB0
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
	ldr r2, _080CF434 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080CF446
	.align 2, 0
_080CF430: .4byte gUnk_02022EB0
_080CF434: .4byte gUnk_02022F50
_080CF438:
	ldr r0, [r2, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x68]
_080CF446:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF44C
sub_080CF44C: @ 0x080CF44C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF480 @ =sub_080CF4A8
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r4, #0x85
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CF47A
	movs r0, #0
	strb r0, [r4]
_080CF47A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF480: .4byte sub_080CF4A8

	thumb_func_start sub_080CF484
sub_080CF484: @ 0x080CF484
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF4A4 @ =sub_080CD6C0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF4A4: .4byte sub_080CD6C0

	thumb_func_start sub_080CF4A8
sub_080CF4A8: @ 0x080CF4A8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CF4C2
	adds r0, r2, #0
	bl sub_080CD8D4
_080CF4C2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF4C8
sub_080CF4C8: @ 0x080CF4C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF4F0 @ =sub_080CDE64
	movs r1, #0x10
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CF4F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CF4FC
	.align 2, 0
_080CF4F0: .4byte sub_080CDE64
_080CF4F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF4FC:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xfd
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF516
	rsbs r0, r3, #0
	strh r0, [r2]
_080CF516:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080CF51C
sub_080CF51C: @ 0x080CF51C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x6c]
	ldr r2, _080CF544 @ =sub_080CF558
	movs r1, #0x1d
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080CF54C
	ldr r0, _080CF548 @ =0x0000FF80
	b _080CF54E
	.align 2, 0
_080CF544: .4byte sub_080CF558
_080CF548: .4byte 0x0000FF80
_080CF54C:
	movs r0, #0x80
_080CF54E:
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CF558
sub_080CF558: @ 0x080CF558
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080CF598
	ldr r2, _080CF5A0 @ =sub_080CF4A8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080CD8D4
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080CF598
	movs r0, #0
	strb r0, [r1]
_080CF598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF5A0: .4byte sub_080CF4A8

	thumb_func_start CreateBonkers
CreateBonkers: @ 0x080CF5A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080CF5D8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080CF5DC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080CF5E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080CF5E8
	.align 2, 0
_080CF5D8: .4byte ObjectMain
_080CF5DC: .4byte ObjectDestroy
_080CF5E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080CF5E8:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r3, #1
	orrs r0, r3
	str r0, [r5, #0xc]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CF622
	orrs r2, r3
	b _080CF628
_080CF622:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080CF628:
	str r2, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r5, #0x5c]
	subs r1, #0xaa
	movs r2, #0x16
	rsbs r2, r2, #0
	movs r4, #0xa
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r2, #0x18
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080CF688 @ =sub_0809EF88
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	bl sub_080D1488
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080CF688: .4byte sub_0809EF88

	thumb_func_start sub_080CF68C
sub_080CF68C: @ 0x080CF68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r6, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080CF6B4
	b _080CF86A
_080CF6B4:
	adds r0, r6, #0
	adds r0, #0x60
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080CF6C8
	b _080CF86A
_080CF6C8:
	ldr r1, [r6, #0x40]
	ldr r0, [r3, #0x40]
	cmp r1, r0
	ble _080CF6D8
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	b _080CF6E0
_080CF6D8:
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CF6E0:
	str r0, [r6, #8]
	adds r7, r6, #0
	adds r7, #0xac
	ldr r0, [r7]
	movs r1, #0xb0
	adds r1, r1, r6
	mov r8, r1
	ldr r5, [r1]
	movs r2, #6
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	lsls r2, r2, #8
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	mov sl, r4
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080CF71E
	b _080CF86A
_080CF71E:
	ldr r4, _080CF87C @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldr r1, _080CF880 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_080CF898
	movs r0, #0x5a
	strh r0, [r6, #4]
	adds r0, r6, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080CF7A6
	movs r0, #0
	strb r0, [r1, #9]
_080CF7A6:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r4, _080CF884 @ =0x0000065E
	adds r0, r0, r4
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080CF86A
	ldr r0, _080CF888 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080CF86A
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080CF86A
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080CF828
	movs r4, #1
_080CF7F0:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080CF7F0
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080CF828:
	ldr r1, _080CF888 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080CF88C @ =gUnk_02020EE0
	ldr r0, _080CF890 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080CF86A
	ldr r0, _080CF894 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080CF86A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080CF86A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CF87C: .4byte gUnk_02023530
_080CF880: .4byte 0xFFFFFDFF
_080CF884: .4byte 0x0000065E
_080CF888: .4byte gUnk_08352D80
_080CF88C: .4byte gUnk_02020EE0
_080CF890: .4byte gUnk_0203AD3C
_080CF894: .4byte gUnk_0203AD20

	thumb_func_start sub_080CF898
sub_080CF898: @ 0x080CF898
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF8E8 @ =sub_080D14AC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x1e
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080CF8EC @ =gUnk_08351530
	ldr r0, _080CF8F0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CF8D8
	movs r0, #0xf
	strh r0, [r4, #4]
_080CF8D8:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF8E8: .4byte sub_080D14AC
_080CF8EC: .4byte gUnk_08351530
_080CF8F0: .4byte gUnk_0203AD30

	thumb_func_start sub_080CF8F4
sub_080CF8F4: @ 0x080CF8F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080CF914 @ =sub_080CF960
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CF91C
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CF918 @ =0x0000FF40
	b _080CF922
	.align 2, 0
_080CF914: .4byte sub_080CF960
_080CF918: .4byte 0x0000FF40
_080CF91C:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080CF950 @ =0x0000FF80
_080CF922:
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080CF934
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080CF934:
	ldr r2, _080CF954 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CF958 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CF95C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CF950: .4byte 0x0000FF80
_080CF954: .4byte gRngVal
_080CF958: .4byte 0x00196225
_080CF95C: .4byte 0x3C6EF35F

	thumb_func_start sub_080CF960
sub_080CF960: @ 0x080CF960
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CF9FC
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CF9B4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CF9B8
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CF9B4: .4byte 0xFFFFF800
_080CF9B8:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080CFA80
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CF9F8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CF9F8: .4byte 0xFFFFF800
_080CF9FC:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFA40
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFA3C @ =0xFFFFF800
	adds r0, r0, r2
	b _080CFA7C
	.align 2, 0
_080CFA3C: .4byte 0xFFFFF800
_080CFA40:
	movs r0, #0x3e
	adds r0, r0, r4
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080CFAA8 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080CFA80
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CFA7C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080CFA80:
	ldrb r1, [r4, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080CFAB6
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CFAAC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080CFAB4
	.align 2, 0
_080CFAA8: .4byte 0xFFFFF800
_080CFAAC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CFAB4:
	str r0, [r4, #8]
_080CFAB6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFAD6
	ldrh r1, [r4, #4]
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080CFAD2
	adds r0, r4, #0
	bl sub_080D14C8
	b _080CFAEC
_080CFAD2:
	subs r0, r1, #1
	strh r0, [r4, #4]
_080CFAD6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFAEC
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CFAEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080CFAF4
sub_080CFAF4: @ 0x080CFAF4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFB90
	adds r5, r2, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r6, _080CFB48 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CFB4C
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFB48: .4byte 0xFFFFF800
_080CFB4C:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	cmp r1, r0
	bgt _080CFC14
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CFB8C @ =0xFFFFF800
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFB8C: .4byte 0xFFFFF800
_080CFB90:
	adds r5, r2, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r2, #0x40]
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFBD4
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080CFBD0 @ =0xFFFFF800
	adds r0, r0, r3
	b _080CFC10
	.align 2, 0
_080CFBD0: .4byte 0xFFFFF800
_080CFBD4:
	movs r0, #0x3e
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r4, r2, #0
	adds r4, #0xa8
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #8
	ldr r3, _080CFC34 @ =0xFFFFF800
	adds r0, r0, r3
	cmp r1, r0
	blt _080CFC14
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080CFC10:
	subs r1, r1, r0
	str r1, [r2, #0x40]
_080CFC14:
	ldrb r0, [r2, #1]
	cmp r0, #0xc
	bls _080CFC22
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080CFC22:
	ldr r3, [r2, #8]
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	beq _080CFC38
	adds r0, r2, #0
	bl sub_080CFC50
	b _080CFC4A
	.align 2, 0
_080CFC34: .4byte 0xFFFFF800
_080CFC38:
	adds r1, r2, #0
	adds r1, #0x62
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080CFC4A
	adds r0, r2, #0
	adds r0, #0x50
	strh r3, [r0]
_080CFC4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080CFC50
sub_080CFC50: @ 0x080CFC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080CFC84 @ =sub_080CFF00
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080CFC88
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080CFC90
	.align 2, 0
_080CFC84: .4byte sub_080CFF00
_080CFC88:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080CFC90:
	str r0, [r5, #8]
	ldr r2, _080CFCE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CFCEC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080CFCF0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080CFCF4 @ =0x00005554
	cmp r2, r0
	bls _080CFD2E
	ldr r0, _080CFCF8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080CFCB2
	movs r1, #1
_080CFCB2:
	cmp r1, #0
	beq _080CFD2E
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFCFC
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
	adds r1, r5, #0
	adds r1, #0xa0
	strh r0, [r1]
	movs r2, #0x80
	adds r2, r2, r5
	mov sl, r2
	movs r3, #0x50
	adds r3, r3, r5
	mov r8, r3
	adds r4, r5, #0
	adds r4, #0x60
	str r4, [sp]
	b _080CFDDA
	.align 2, 0
_080CFCE8: .4byte gRngVal
_080CFCEC: .4byte 0x00196225
_080CFCF0: .4byte 0x3C6EF35F
_080CFCF4: .4byte 0x00005554
_080CFCF8: .4byte 0x0000AAA9
_080CFCFC:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	adds r1, r5, #0
	adds r1, #0xa0
	strh r0, [r1]
	movs r0, #0x80
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x50
	adds r1, r1, r5
	mov r8, r1
	adds r2, r5, #0
	adds r2, #0x60
	str r2, [sp]
	b _080CFDDA
_080CFD22:
	ldrh r0, [r6]
	adds r0, #0x30
	b _080CFDD8
_080CFD28:
	adds r0, r3, #0
	adds r0, #0x20
	b _080CFDD8
_080CFD2E:
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r7, r0, #0
	movs r3, #0xa8
	adds r3, r3, r5
	mov sb, r3
	movs r4, #0x80
	adds r4, r4, r5
	mov sl, r4
	movs r0, #0x50
	adds r0, r0, r5
	mov r8, r0
	adds r1, r5, #0
	adds r1, #0x60
	str r1, [sp]
	b _080CFD94
_080CFD54:
	ldr r4, _080CFD90 @ =gUnk_082D88B8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x44]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080CFD94
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFD22
	ldrh r0, [r6]
	subs r0, #0x30
	b _080CFDD8
	.align 2, 0
_080CFD90: .4byte gUnk_082D88B8
_080CFD94:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFDA4
	ldrh r0, [r7]
	subs r0, #0x10
	b _080CFDA8
_080CFDA4:
	ldrh r0, [r7]
	adds r0, #0x10
_080CFDA8:
	strh r0, [r7]
	adds r6, r7, #0
	ldrh r3, [r6]
	lsls r1, r3, #0x10
	asrs r2, r1, #0x10
	mov r4, sb
	movs r0, #0
	ldrsh r4, [r4, r0]
	mov ip, r4
	cmp r2, ip
	bge _080CFDCA
	adds r0, r5, #0
	adds r0, #0xa4
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r2, r0
	bgt _080CFD54
_080CFDCA:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFD28
	adds r0, r3, #0
	subs r0, #0x20
_080CFDD8:
	strh r0, [r6]
_080CFDDA:
	ldr r1, _080CFE1C @ =gUnk_08351530
	ldr r0, _080CFE20 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080CFE3A
	ldr r2, _080CFE24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080CFE28 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080CFE2C @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFE30
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1]
	b _080CFE56
	.align 2, 0
_080CFE1C: .4byte gUnk_08351530
_080CFE20: .4byte gUnk_0203AD30
_080CFE24: .4byte gRngVal
_080CFE28: .4byte 0x00196225
_080CFE2C: .4byte 0x3C6EF35F
_080CFE30:
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2]
	b _080CFE56
_080CFE3A:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CFE4E
	movs r0, #0x80
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3]
	b _080CFE56
_080CFE4E:
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r4, r8
	strh r0, [r4]
_080CFE56:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFE68
	mov r1, r8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080CFE68:
	ldr r1, _080CFEE0 @ =gUnk_02020EE0
	ldr r0, _080CFEE4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080CFECE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080CFE92
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080CFECE
_080CFE92:
	ldr r1, _080CFEE8 @ =gUnk_08D60FA4
	ldr r4, _080CFEEC @ =gSongTable
	ldr r2, _080CFEF0 @ =0x00000B1C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080CFEB6
	ldr r1, _080CFEF4 @ =0x00000B18
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080CFECE
_080CFEB6:
	cmp r3, #0
	beq _080CFEC8
	ldr r0, _080CFEF8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CFECE
_080CFEC8:
	ldr r0, _080CFEFC @ =0x00000163
	bl m4aSongNumStart
_080CFECE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CFEE0: .4byte gUnk_02020EE0
_080CFEE4: .4byte gUnk_0203AD3C
_080CFEE8: .4byte gUnk_08D60FA4
_080CFEEC: .4byte gSongTable
_080CFEF0: .4byte 0x00000B1C
_080CFEF4: .4byte 0x00000B18
_080CFEF8: .4byte gUnk_0203AD10
_080CFEFC: .4byte 0x00000163

	thumb_func_start sub_080CFF00
sub_080CFF00: @ 0x080CFF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CFF98
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080CFF50 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080CFF54
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFF50: .4byte 0xFFFFF800
_080CFF54:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D001C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFF94 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFF94: .4byte 0xFFFFF800
_080CFF98:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080CFFDC
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, _080CFFD8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0018
	.align 2, 0
_080CFFD8: .4byte 0xFFFFF800
_080CFFDC:
	movs r5, #0x3e
	adds r5, r5, r4
	mov ip, r5
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r5, _080D0044 @ =0xFFFFF800
	adds r0, r0, r5
	cmp r1, r0
	blt _080D001C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D0018:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_080D001C:
	ldr r3, [r4, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r4, #8]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080D0060
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0048
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
	b _080D0060
	.align 2, 0
_080D0044: .4byte 0xFFFFF800
_080D0048:
	ldrh r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	strh r0, [r4, #4]
	cmp r0, #0
	beq _080D0060
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #8
	bl sub_08089864
_080D0060:
	adds r0, r4, #0
	adds r0, #0xa0
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r2, r0, #8
	ldr r1, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x50
	cmp r1, r2
	blt _080D0080
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bgt _080D0088
	cmp r1, r2
	bgt _080D0090
_080D0080:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080D0090
_080D0088:
	adds r0, r4, #0
	bl sub_080D1558
	b _080D00A4
_080D0090:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D00A4
	adds r0, r4, #0
	bl sub_080D00AC
_080D00A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D00AC
sub_080D00AC: @ 0x080D00AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080D0164 @ =sub_080D0180
	movs r1, #5
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D00DC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D00DC:
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080D0168 @ =gUnk_02020EE0
	ldr r0, _080D016C @ =gUnk_0203AD3C
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
	bne _080D0150
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D0110
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0150
_080D0110:
	ldr r1, _080D0170 @ =gUnk_08D60FA4
	ldr r5, _080D0174 @ =gSongTable
	ldr r2, _080D0178 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0136
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0150
_080D0136:
	cmp r3, #0
	beq _080D0148
	ldr r0, _080D017C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0150
_080D0148:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0150:
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D0164: .4byte sub_080D0180
_080D0168: .4byte gUnk_02020EE0
_080D016C: .4byte gUnk_0203AD3C
_080D0170: .4byte gUnk_08D60FA4
_080D0174: .4byte gSongTable
_080D0178: .4byte 0x00000B24
_080D017C: .4byte gUnk_0203AD10

	thumb_func_start sub_080D0180
sub_080D0180: @ 0x080D0180
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #5
	bne _080D0264
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0244 @ =0xFA800000
	cmp r0, r1
	bge _080D01A2
	ldr r0, _080D0248 @ =0x0000FA80
	strh r0, [r2]
_080D01A2:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D01B2
	b _080D02D8
_080D01B2:
	ldr r1, _080D024C @ =gUnk_02020EE0
	ldr r0, _080D0250 @ =gUnk_0203AD3C
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
	bne _080D021E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D01DE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D021E
_080D01DE:
	ldr r1, _080D0254 @ =gUnk_08D60FA4
	ldr r5, _080D0258 @ =gSongTable
	ldr r2, _080D025C @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0204
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D021E
_080D0204:
	cmp r3, #0
	beq _080D0216
	ldr r0, _080D0260 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D021E
_080D0216:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D021E:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D02D8
	.align 2, 0
_080D0244: .4byte 0xFA800000
_080D0248: .4byte 0x0000FA80
_080D024C: .4byte gUnk_02020EE0
_080D0250: .4byte gUnk_0203AD3C
_080D0254: .4byte gUnk_08D60FA4
_080D0258: .4byte gSongTable
_080D025C: .4byte 0x00000B24
_080D0260: .4byte gUnk_0203AD10
_080D0264:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bhi _080D0284
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080D028C
_080D0284:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
_080D028C:
	strh r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0x27
	bls _080D02D4
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080D02C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D02C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D02C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D02CC
	adds r0, r4, #0
	bl sub_080D14F8
	b _080D02D8
	.align 2, 0
_080D02C0: .4byte gRngVal
_080D02C4: .4byte 0x00196225
_080D02C8: .4byte 0x3C6EF35F
_080D02CC:
	adds r0, r4, #0
	bl sub_080D0598
	b _080D02D8
_080D02D4:
	adds r0, #1
	strb r0, [r2]
_080D02D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D02E0
sub_080D02E0: @ 0x080D02E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0378
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080D0330 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D0334
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D0330: .4byte 0xFFFFF800
_080D0334:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D03F8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0374 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D0374: .4byte 0xFFFFF800
_080D0378:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080D03BC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D03B8 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D03F4
	.align 2, 0
_080D03B8: .4byte 0xFFFFF800
_080D03BC:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D0444 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080D03F8
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D03F4:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080D03F8:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x58
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080D0448 @ =0xFA800000
	adds r3, r0, #0
	cmp r1, r2
	bge _080D0410
	ldr r0, _080D044C @ =0x0000FA80
	strh r0, [r3]
_080D0410:
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	adds r7, r6, #0
	cmp r0, #8
	bne _080D047C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #7
	bhi _080D0432
	b _080D057C
_080D0432:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D0450
	subs r1, #0x4e
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080D0458
	.align 2, 0
_080D0444: .4byte 0xFFFFF800
_080D0448: .4byte 0xFA800000
_080D044C: .4byte 0x0000FA80
_080D0450:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080D0458:
	strh r0, [r1]
	adds r2, r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0472
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D0472:
	movs r0, #9
	strb r0, [r7]
	movs r0, #0
	strb r0, [r4]
	b _080D057C
_080D047C:
	cmp r0, #9
	bne _080D0550
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D057C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	movs r0, #0xa
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080D0538 @ =gUnk_02020EE0
	ldr r0, _080D053C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D052A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D04EA
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D052A
_080D04EA:
	ldr r1, _080D0540 @ =gUnk_08D60FA4
	ldr r4, _080D0544 @ =gSongTable
	ldr r2, _080D0548 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0510
	movs r6, #0xb2
	lsls r6, r6, #4
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D052A
_080D0510:
	cmp r3, #0
	beq _080D0522
	ldr r0, _080D054C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D052A
_080D0522:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D052A:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D057C
	.align 2, 0
_080D0538: .4byte gUnk_02020EE0
_080D053C: .4byte gUnk_0203AD3C
_080D0540: .4byte gUnk_08D60FA4
_080D0544: .4byte gSongTable
_080D0548: .4byte 0x00000B24
_080D054C: .4byte gUnk_0203AD10
_080D0550:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080D057C
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0574
	adds r0, r5, #0
	bl sub_080CF8F4
	b _080D0592
_080D0574:
	adds r0, r5, #0
	bl sub_080D0D34
	b _080D0592
_080D057C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0592
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D0592:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D0598
sub_080D0598: @ 0x080D0598
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	ldr r2, _080D05C8 @ =sub_080D062C
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D05CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D05D4
	.align 2, 0
_080D05C8: .4byte sub_080D062C
_080D05CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D05D4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080D0600 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0604 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0608 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D060C
	strh r1, [r4, #4]
	b _080D0610
	.align 2, 0
_080D0600: .4byte gRngVal
_080D0604: .4byte 0x00196225
_080D0608: .4byte 0x3C6EF35F
_080D060C:
	movs r0, #3
	strh r0, [r4, #4]
_080D0610:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D062C
sub_080D062C: @ 0x080D062C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x58
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0678 @ =0xFA800000
	cmp r0, r1
	bge _080D0646
	ldr r0, _080D067C @ =0x0000FA80
	strh r0, [r2]
_080D0646:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #8
	bne _080D0680
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080D0666
	b _080D0786
_080D0666:
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r2]
	movs r0, #9
	strb r0, [r6]
	movs r0, #0
	strb r0, [r1]
	b _080D0786
	.align 2, 0
_080D0678: .4byte 0xFA800000
_080D067C: .4byte 0x0000FA80
_080D0680:
	cmp r1, #9
	bne _080D0752
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D0786
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	ldr r1, _080D0734 @ =gUnk_02020EE0
	ldr r0, _080D0738 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0722
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D06E2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0722
_080D06E2:
	ldr r1, _080D073C @ =gUnk_08D60FA4
	ldr r4, _080D0740 @ =gSongTable
	ldr r2, _080D0744 @ =0x00000B24
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0708
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0722
_080D0708:
	cmp r3, #0
	beq _080D071A
	ldr r0, _080D0748 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0722
_080D071A:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0722:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D074C
	movs r0, #0xa
	strb r0, [r6]
	b _080D0786
	.align 2, 0
_080D0734: .4byte gUnk_02020EE0
_080D0738: .4byte gUnk_0203AD3C
_080D073C: .4byte gUnk_08D60FA4
_080D0740: .4byte gSongTable
_080D0744: .4byte 0x00000B24
_080D0748: .4byte gUnk_0203AD10
_080D074C:
	movs r0, #8
	strb r0, [r6]
	b _080D0786
_080D0752:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080D0786
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D0780
	adds r0, r5, #0
	bl sub_080CF8F4
	b _080D0786
_080D0780:
	adds r0, r5, #0
	bl sub_080D0D34
_080D0786:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D078C
sub_080D078C: @ 0x080D078C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0x12
	bne _080D0814
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0874 @ =gUnk_02020EE0
	ldr r0, _080D0878 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0814
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D07D4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0814
_080D07D4:
	ldr r1, _080D087C @ =gUnk_08D60FA4
	ldr r4, _080D0880 @ =gSongTable
	ldr r2, _080D0884 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D07FA
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0814
_080D07FA:
	cmp r3, #0
	beq _080D080C
	ldr r0, _080D0888 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0814
_080D080C:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0814:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D08D0
	ldr r3, _080D088C @ =gRngVal
	ldr r0, [r3]
	ldr r4, _080D0890 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080D0894 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D08CA
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r2, _080D0894 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D08C2
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0898 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D089C
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D08A4
	.align 2, 0
_080D0874: .4byte gUnk_02020EE0
_080D0878: .4byte gUnk_0203AD3C
_080D087C: .4byte gUnk_08D60FA4
_080D0880: .4byte gSongTable
_080D0884: .4byte 0x00000B64
_080D0888: .4byte gUnk_0203AD10
_080D088C: .4byte gRngVal
_080D0890: .4byte 0x00196225
_080D0894: .4byte 0x3C6EF35F
_080D0898: .4byte sub_080D02E0
_080D089C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D08A4:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D08D0
_080D08C2:
	adds r0, r5, #0
	bl sub_080D0598
	b _080D08D0
_080D08CA:
	adds r0, r5, #0
	bl sub_080D15F8
_080D08D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D08D8
sub_080D08D8: @ 0x080D08D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0x12
	bne _080D097C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0964 @ =gUnk_02020EE0
	ldr r0, _080D0968 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D09F8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0920
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D09F8
_080D0920:
	ldr r1, _080D096C @ =gUnk_08D60FA4
	ldr r4, _080D0970 @ =gSongTable
	ldr r2, _080D0974 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0946
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D09F8
_080D0946:
	cmp r3, #0
	beq _080D0958
	ldr r0, _080D0978 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D09F8
_080D0958:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080D09F8
	.align 2, 0
_080D0964: .4byte gUnk_02020EE0
_080D0968: .4byte gUnk_0203AD3C
_080D096C: .4byte gUnk_08D60FA4
_080D0970: .4byte gSongTable
_080D0974: .4byte 0x00000B64
_080D0978: .4byte gUnk_0203AD10
_080D097C:
	cmp r0, #0x26
	beq _080D0984
	cmp r0, #0x3a
	bne _080D09F8
_080D0984:
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r1, _080D0A44 @ =gUnk_02020EE0
	ldr r0, _080D0A48 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D09F8
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D09B8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D09F8
_080D09B8:
	ldr r1, _080D0A4C @ =gUnk_08D60FA4
	ldr r4, _080D0A50 @ =gSongTable
	ldr r2, _080D0A54 @ =0x00000B64
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D09DE
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D09F8
_080D09DE:
	cmp r3, #0
	beq _080D09F0
	ldr r0, _080D0A58 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D09F8
_080D09F0:
	movs r0, #0xb6
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D09F8:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D0A98
	ldr r2, _080D0A5C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0A60 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0A64 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D0A92
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0A68 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0A6C
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D0A74
	.align 2, 0
_080D0A44: .4byte gUnk_02020EE0
_080D0A48: .4byte gUnk_0203AD3C
_080D0A4C: .4byte gUnk_08D60FA4
_080D0A50: .4byte gSongTable
_080D0A54: .4byte 0x00000B64
_080D0A58: .4byte gUnk_0203AD10
_080D0A5C: .4byte gRngVal
_080D0A60: .4byte 0x00196225
_080D0A64: .4byte 0x3C6EF35F
_080D0A68: .4byte sub_080D02E0
_080D0A6C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0A74:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D0A98
_080D0A92:
	adds r0, r5, #0
	bl sub_080D0598
_080D0A98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D0AA0
sub_080D0AA0: @ 0x080D0AA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0B78 @ =0xFA800000
	cmp r0, r1
	bge _080D0ABA
	ldr r0, _080D0B7C @ =0x0000FA80
	strh r0, [r2]
_080D0ABA:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080D0AC6
	movs r0, #0x94
	lsls r0, r0, #3
	strh r0, [r2]
_080D0AC6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x83
	cmp r0, #0
	beq _080D0AD8
	movs r0, #0xd
	strb r0, [r6]
_080D0AD8:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _080D0B72
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D0B72
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #8
	bl sub_080A8C28
	ldr r1, _080D0B80 @ =gUnk_02020EE0
	ldr r0, _080D0B84 @ =gUnk_0203AD3C
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
	bne _080D0B6A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D0B2A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0B6A
_080D0B2A:
	ldr r1, _080D0B88 @ =gUnk_08D60FA4
	ldr r5, _080D0B8C @ =gSongTable
	ldr r2, _080D0B90 @ =0x00000B24
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0B50
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0B6A
_080D0B50:
	cmp r3, #0
	beq _080D0B62
	ldr r0, _080D0B94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0B6A
_080D0B62:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D0B6A:
	movs r0, #0xe
	strb r0, [r6]
	ldr r0, _080D0B98 @ =sub_080D0B9C
	str r0, [r4, #0x78]
_080D0B72:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D0B78: .4byte 0xFA800000
_080D0B7C: .4byte 0x0000FA80
_080D0B80: .4byte gUnk_02020EE0
_080D0B84: .4byte gUnk_0203AD3C
_080D0B88: .4byte gUnk_08D60FA4
_080D0B8C: .4byte gSongTable
_080D0B90: .4byte 0x00000B24
_080D0B94: .4byte gUnk_0203AD10
_080D0B98: .4byte sub_080D0B9C

	thumb_func_start sub_080D0B9C
sub_080D0B9C: @ 0x080D0B9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x2a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D0BE0 @ =0xFA800000
	cmp r0, r1
	bge _080D0BB6
	ldr r0, _080D0BE4 @ =0x0000FA80
	strh r0, [r2]
_080D0BB6:
	adds r3, r5, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #0xe
	bne _080D0BE8
	ldrb r0, [r5, #1]
	cmp r0, #8
	bne _080D0BCC
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
_080D0BCC:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080D0BD8
	b _080D0D2C
_080D0BD8:
	movs r0, #0xf
	strb r0, [r3]
	b _080D0D2C
	.align 2, 0
_080D0BE0: .4byte 0xFA800000
_080D0BE4: .4byte 0x0000FA80
_080D0BE8:
	cmp r0, #0xf
	bne _080D0C90
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D0BFC
	b _080D0D2C
_080D0BFC:
	movs r0, #0x10
	strb r0, [r3]
	ldr r1, _080D0C70 @ =gUnk_02020EE0
	ldr r0, _080D0C74 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080D0C1E
	b _080D0D2C
_080D0C1E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0C30
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080D0C30
	b _080D0D2C
_080D0C30:
	ldr r1, _080D0C78 @ =gUnk_08D60FA4
	ldr r4, _080D0C7C @ =gSongTable
	ldr r2, _080D0C80 @ =0x00000B2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0C54
	ldr r1, _080D0C84 @ =0x00000B28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0D2C
_080D0C54:
	cmp r3, #0
	beq _080D0C66
	ldr r0, _080D0C88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0D2C
_080D0C66:
	ldr r0, _080D0C8C @ =0x00000165
	bl m4aSongNumStart
	b _080D0D2C
	.align 2, 0
_080D0C70: .4byte gUnk_02020EE0
_080D0C74: .4byte gUnk_0203AD3C
_080D0C78: .4byte gUnk_08D60FA4
_080D0C7C: .4byte gSongTable
_080D0C80: .4byte 0x00000B2C
_080D0C84: .4byte 0x00000B28
_080D0C88: .4byte gUnk_0203AD10
_080D0C8C: .4byte 0x00000165
_080D0C90:
	cmp r0, #0x10
	bne _080D0D2C
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080D0D2C
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080D0CF0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D0CF4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D0CF8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _080D0D26
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r6, [r4]
	ldr r2, _080D0CFC @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0D00
	ldr r0, [r5, #8]
	orrs r0, r7
	b _080D0D08
	.align 2, 0
_080D0CF0: .4byte gRngVal
_080D0CF4: .4byte 0x00196225
_080D0CF8: .4byte 0x3C6EF35F
_080D0CFC: .4byte sub_080D02E0
_080D0D00:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0D08:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r6, [r4]
	ldr r0, [r5, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D0D2C
_080D0D26:
	adds r0, r5, #0
	bl sub_080D0598
_080D0D2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D0D34
sub_080D0D34: @ 0x080D0D34
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D0D58 @ =sub_080D0DC0
	movs r1, #0x12
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D0D5C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D0D64
	.align 2, 0
_080D0D58: .4byte sub_080D0DC0
_080D0D5C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D0D64:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D0D7C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	strb r0, [r1]
	b _080D0D9E
_080D0D7C:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080D0DBC @ =0x0000FE80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0D9E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D0D9E:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D0DBC: .4byte 0x0000FE80

	thumb_func_start sub_080D0DC0
sub_080D0DC0: @ 0x080D0DC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D0E5C
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _080D0E14 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _080D0E18
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E14: .4byte 0xFFFFF800
_080D0E18:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _080D0EDC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0E58 @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E58: .4byte 0xFFFFF800
_080D0E5C:
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r2, [r5, #0x40]
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _080D0EA0
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r2, _080D0E9C @ =0xFFFFF800
	adds r0, r0, r2
	b _080D0ED8
	.align 2, 0
_080D0E9C: .4byte 0xFFFFF800
_080D0EA0:
	adds r4, r5, #0
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r5, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080D0FB4 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _080D0EDC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_080D0ED8:
	subs r1, r1, r0
	str r1, [r5, #0x40]
_080D0EDC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x38
	movs r3, #0
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080D0FB8 @ =0xFA800000
	adds r6, r0, #0
	cmp r1, r2
	bge _080D0EF6
	ldr r0, _080D0FBC @ =0x0000FA80
	strh r0, [r6]
_080D0EF6:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x12
	bne _080D0FE0
	subs r0, #0x21
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D0F10
	b _080D107A
_080D0F10:
	adds r0, r5, #0
	adds r0, #0x50
	strh r3, [r0]
	strh r3, [r6]
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	movs r3, #0
	bl sub_08089864
	ldr r1, _080D0FC0 @ =gUnk_02020EE0
	ldr r0, _080D0FC4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D0FA4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D0F68
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D0FA4
_080D0F68:
	ldr r1, _080D0FC8 @ =gUnk_08D60FA4
	ldr r4, _080D0FCC @ =gSongTable
	ldr r2, _080D0FD0 @ =0x00000B2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D0F8C
	ldr r6, _080D0FD4 @ =0x00000B28
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D0FA4
_080D0F8C:
	cmp r3, #0
	beq _080D0F9E
	ldr r0, _080D0FD8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D0FA4
_080D0F9E:
	ldr r0, _080D0FDC @ =0x00000165
	bl m4aSongNumStart
_080D0FA4:
	movs r0, #0x13
	strb r0, [r7]
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D107A
	.align 2, 0
_080D0FB4: .4byte 0xFFFFF800
_080D0FB8: .4byte 0xFA800000
_080D0FBC: .4byte 0x0000FA80
_080D0FC0: .4byte gUnk_02020EE0
_080D0FC4: .4byte gUnk_0203AD3C
_080D0FC8: .4byte gUnk_08D60FA4
_080D0FCC: .4byte gSongTable
_080D0FD0: .4byte 0x00000B2C
_080D0FD4: .4byte 0x00000B28
_080D0FD8: .4byte gUnk_0203AD10
_080D0FDC: .4byte 0x00000165
_080D0FE0:
	ldrb r0, [r5, #1]
	cmp r0, #0x44
	bne _080D0FEC
	adds r0, r5, #0
	bl sub_080D109C
_080D0FEC:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D107A
	ldr r2, _080D103C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1040 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D1044 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	mov r8, r2
	ands r0, r2
	cmp r0, #0
	beq _080D1072
	adds r4, r5, #0
	adds r4, #0x9f
	ldrb r7, [r4]
	ldr r2, _080D1048 @ =sub_080D02E0
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D104C
	ldr r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	b _080D1054
	.align 2, 0
_080D103C: .4byte gRngVal
_080D1040: .4byte 0x00196225
_080D1044: .4byte 0x3C6EF35F
_080D1048: .4byte sub_080D02E0
_080D104C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1054:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r6]
	strb r7, [r4]
	ldr r0, [r5, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	b _080D1090
_080D1072:
	adds r0, r5, #0
	bl sub_080D0598
	b _080D1090
_080D107A:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080D1090
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080D1090:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D109C
sub_080D109C: @ 0x080D109C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D10BA
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x18
	b _080D10C2
_080D10BA:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x18
_080D10C2:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	ldr r2, _080D1104 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1108 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D110C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080D1110 @ =0x00005554
	cmp r2, r0
	bls _080D118E
	ldr r0, _080D1114 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080D10E8
	movs r1, #1
_080D10E8:
	cmp r1, #0
	beq _080D118E
	movs r4, #0
	ldr r1, _080D1118 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D111C @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D1134
	.align 2, 0
_080D1104: .4byte gRngVal
_080D1108: .4byte 0x00196225
_080D110C: .4byte 0x3C6EF35F
_080D1110: .4byte 0x00005554
_080D1114: .4byte 0x0000AAA9
_080D1118: .4byte gUnk_020229D4
_080D111C: .4byte gUnk_020229E0
_080D1120:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D113C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D1134:
	cmp r0, #0
	bne _080D1120
	orrs r2, r3
	str r2, [r1]
_080D113C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sb
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x15
	strb r0, [r1, #0xf]
	strb r3, [r1, #0x10]
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
	b _080D121C
_080D118E:
	movs r4, #0
	ldr r1, _080D11A8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D11AC @ =gUnk_020229E0
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _080D11C4
	.align 2, 0
_080D11A8: .4byte gUnk_020229D4
_080D11AC: .4byte gUnk_020229E0
_080D11B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D11CC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D11C4:
	cmp r0, #0
	bne _080D11B0
	orrs r2, r3
	str r2, [r1]
_080D11CC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sb
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xa9
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	movs r0, #0x15
	strb r0, [r1, #0xf]
	strb r3, [r1, #0x10]
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
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_080D121C:
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D122C
sub_080D122C: @ 0x080D122C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D1260 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D1264 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D1268
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D1270
	.align 2, 0
_080D1260: .4byte ObjectMain
_080D1264: .4byte ObjectDestroy
_080D1268:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D1270:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	subs r1, #7
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r5, #8
	rsbs r5, r5, #0
	movs r6, #6
	str r6, [sp]
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D12E8
	ldr r0, [r4, #0x5c]
	ands r0, r5
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E308
_080D12E8:
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D1378 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080D1394
	ldr r1, _080D137C @ =gUnk_02020EE0
	ldr r0, _080D1380 @ =gUnk_0203AD3C
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
	bne _080D136C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D132C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D136C
_080D132C:
	ldr r1, _080D1384 @ =gUnk_08D60FA4
	ldr r5, _080D1388 @ =gSongTable
	ldr r2, _080D138C @ =0x00000B44
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D1352
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D136C
_080D1352:
	cmp r3, #0
	beq _080D1364
	ldr r0, _080D1390 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D136C
_080D1364:
	movs r0, #0xb4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D136C:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D1378: .4byte sub_0809F840
_080D137C: .4byte gUnk_02020EE0
_080D1380: .4byte gUnk_0203AD3C
_080D1384: .4byte gUnk_08D60FA4
_080D1388: .4byte gSongTable
_080D138C: .4byte 0x00000B44
_080D1390: .4byte gUnk_0203AD10

	thumb_func_start sub_080D1394
sub_080D1394: @ 0x080D1394
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D13B0
	ldr r2, _080D13AC @ =sub_080D140C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	b _080D13BA
	.align 2, 0
_080D13AC: .4byte sub_080D140C
_080D13B0:
	ldr r2, _080D1408 @ =sub_080D140C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
_080D13BA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D13CE
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D13CE:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	adds r0, #0x60
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D13F2
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2]
_080D13F2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1402
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D1402:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1408: .4byte sub_080D140C

	thumb_func_start sub_080D140C
sub_080D140C: @ 0x080D140C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080D1462
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080D1470
	movs r3, #1
	strh r3, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xa9
	bne _080D1454
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2]
_080D1454:
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D1462
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D1462:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1480
_080D1470:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080D1480:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1488
sub_080D1488: @ 0x080D1488
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D14A8 @ =sub_080CF68C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D14A8: .4byte sub_080CF68C

	thumb_func_start sub_080D14AC
sub_080D14AC: @ 0x080D14AC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D14C2
	adds r0, r1, #0
	bl sub_080CF8F4
_080D14C2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D14C8
sub_080D14C8: @ 0x080D14C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D14F0 @ =sub_080CFAF4
	movs r1, #7
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _080D14F4 @ =0x0000FF80
	strh r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D14EA
	movs r0, #0x80
	strh r0, [r2]
_080D14EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D14F0: .4byte sub_080CFAF4
_080D14F4: .4byte 0x0000FF80

	thumb_func_start sub_080D14F8
sub_080D14F8: @ 0x080D14F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	ldr r2, _080D1528 @ =sub_080D02E0
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D152C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D1534
	.align 2, 0
_080D1528: .4byte sub_080D02E0
_080D152C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1534:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4d
	strb r5, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1558
sub_080D1558: @ 0x080D1558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r1, [r0]
	subs r0, #0x27
	ldrb r0, [r0]
	cmp r0, #2
	bne _080D1578
	adds r0, r4, #0
	bl sub_080D15F8
	b _080D1596
_080D1578:
	ldr r0, [r4, #0x44]
	ldr r2, _080D158C @ =0xFFFFE800
	adds r0, r0, r2
	ldr r1, [r1, #0x44]
	cmp r0, r1
	ble _080D1590
	adds r0, r4, #0
	bl sub_080D163C
	b _080D1596
	.align 2, 0
_080D158C: .4byte 0xFFFFE800
_080D1590:
	adds r0, r4, #0
	bl sub_080D15B4
_080D1596:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080D15AC
	movs r0, #0
	strb r0, [r1]
_080D15AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D15B4
sub_080D15B4: @ 0x080D15B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D15D8 @ =sub_080D078C
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D15DC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D15E4
	.align 2, 0
_080D15D8: .4byte sub_080D078C
_080D15DC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D15E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D15F8
sub_080D15F8: @ 0x080D15F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D161C @ =sub_080D08D8
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D1620
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D1628
	.align 2, 0
_080D161C: .4byte sub_080D08D8
_080D1620:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D1628:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D163C
sub_080D163C: @ 0x080D163C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1660 @ =sub_080D0AA0
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080D1664
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080D166C
	.align 2, 0
_080D1660: .4byte sub_080D0AA0
_080D1664:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D166C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateMasterHand
CreateMasterHand: @ 0x080D168C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080D16C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D16C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D16C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D16D0
	.align 2, 0
_080D16C0: .4byte ObjectMain
_080D16C4: .4byte ObjectDestroy
_080D16C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D16D0:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r0, [r6, #0xc]
	movs r3, #1
	orrs r0, r3
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x68]
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D1726
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080D1728
_080D1726:
	orrs r2, r3
_080D1728:
	str r2, [r6, #8]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080D51EC
	adds r0, r6, #0
	bl sub_080D4FCC
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D1780
sub_080D1780: @ 0x080D1780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D17B0
	b _080D194A
_080D17B0:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080D17C4
	b _080D194A
_080D17C4:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov sb, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov r8, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, r8
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D17F4
	b _080D194A
_080D17F4:
	ldr r4, _080D195C @ =gUnk_02023530
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080D1960 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x85
	mov r3, r8
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_080D1A38
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080D1886
	mov r1, r8
	strb r1, [r0, #9]
_080D1886:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080D1964 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080D194A
	ldr r0, _080D1968 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D194A
	mov r1, sb
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D194A
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080D1908
	movs r4, #1
_080D18D0:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080D18D0
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080D1908:
	ldr r1, _080D1968 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080D196C @ =gUnk_02020EE0
	ldr r0, _080D1970 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _080D194A
	ldr r0, _080D1974 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080D194A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080D194A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D195C: .4byte gUnk_02023530
_080D1960: .4byte 0xFFFFFDFF
_080D1964: .4byte 0x0000065E
_080D1968: .4byte gUnk_08352D80
_080D196C: .4byte gUnk_02020EE0
_080D1970: .4byte gUnk_0203AD3C
_080D1974: .4byte gUnk_0203AD20

	thumb_func_start sub_080D1978
sub_080D1978: @ 0x080D1978
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080D19B8
	ldr r2, _080D19AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D19B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D19B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D1A18
	b _080D1A24
	.align 2, 0
_080D19AC: .4byte gRngVal
_080D19B0: .4byte 0x00196225
_080D19B4: .4byte 0x3C6EF35F
_080D19B8:
	adds r0, #1
	strb r0, [r1]
	ldr r5, _080D19F0 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080D19F4 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080D19F8 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D1A04
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080D19F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D19FC
	adds r0, r4, #0
	bl sub_080D3BF0
	b _080D1A32
	.align 2, 0
_080D19F0: .4byte gRngVal
_080D19F4: .4byte 0x00196225
_080D19F8: .4byte 0x3C6EF35F
_080D19FC:
	adds r0, r4, #0
	bl sub_080D534C
	b _080D1A32
_080D1A04:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080D1A20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1A24
_080D1A18:
	adds r0, r4, #0
	bl sub_080D1B60
	b _080D1A2A
	.align 2, 0
_080D1A20: .4byte 0x3C6EF35F
_080D1A24:
	adds r0, r4, #0
	bl sub_080D22B0
_080D1A2A:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080D1A32:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1A38
sub_080D1A38: @ 0x080D1A38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1A88 @ =sub_080D1AD4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D1A6E
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D1A8C @ =gUnk_08351530
	ldr r0, _080D1A90 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D1AA0
_080D1A6E:
	ldr r2, _080D1A94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1A98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D1A9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x20
	b _080D1AB6
	.align 2, 0
_080D1A88: .4byte sub_080D1AD4
_080D1A8C: .4byte gUnk_08351530
_080D1A90: .4byte gUnk_0203AD30
_080D1A94: .4byte gRngVal
_080D1A98: .4byte 0x00196225
_080D1A9C: .4byte 0x3C6EF35F
_080D1AA0:
	ldr r2, _080D1AC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1ACC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D1AD0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3a
_080D1AB6:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1AC8: .4byte gRngVal
_080D1ACC: .4byte 0x00196225
_080D1AD0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D1AD4
sub_080D1AD4: @ 0x080D1AD4
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D1AF4
	adds r0, r3, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1B04
	b _080D1B00
_080D1AF4:
	adds r0, r3, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1B04
_080D1B00:
	movs r0, #0
	strh r0, [r1]
_080D1B04:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D1B20
	adds r0, r3, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1B30
	b _080D1B2C
_080D1B20:
	adds r0, r3, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1B30
_080D1B2C:
	movs r0, #0
	strh r0, [r1]
_080D1B30:
	ldrh r3, [r2, #4]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080D1B4C
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D1B58
	adds r0, r2, #0
	bl sub_080D1978
	b _080D1B58
_080D1B4C:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	subs r0, r3, #1
	strh r0, [r2, #4]
_080D1B58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1B60
sub_080D1B60: @ 0x080D1B60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1BB0 @ =sub_080D1BB4
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1BB0: .4byte sub_080D1BB4

	thumb_func_start sub_080D1BB4
sub_080D1BB4: @ 0x080D1BB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080D1BF0
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080D1BF0:
	ldr r3, [r4, #0x44]
	ldr r1, _080D1C24 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x40
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D1C28
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080D1C74
	strh r2, [r5]
	b _080D1C74
	.align 2, 0
_080D1C24: .4byte 0xFFFFF000
_080D1C28:
	cmp r3, r2
	bge _080D1C4C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D1C48 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080D1C74
	strh r2, [r5]
	b _080D1C74
	.align 2, 0
_080D1C48: .4byte 0xFFFFFE80
_080D1C4C:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D1C68
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1C74
	b _080D1C72
_080D1C68:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1C74
_080D1C72:
	strh r6, [r5]
_080D1C74:
	ldr r3, [r4, #0x40]
	ldr r0, _080D1CB0 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D1CB4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D1D06
	b _080D1D0A
	.align 2, 0
_080D1CB0: .4byte 0xFFFFF000
_080D1CB4:
	cmp r3, r2
	ble _080D1D18
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D1CEC
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	ldrh r2, [r4, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080D1CE8 @ =0xFFFFFE80
	adds r2, r0, #0
	cmp r1, r3
	blt _080D1D06
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080D1D42
	b _080D1D40
	.align 2, 0
_080D1CE8: .4byte 0xFFFFFE80
_080D1CEC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D1D0A
_080D1D06:
	strh r3, [r2]
	b _080D1D42
_080D1D0A:
	ldr r1, _080D1D14 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D1D42
	strh r1, [r2]
	b _080D1D42
	.align 2, 0
_080D1D14: .4byte 0xFFFFFE80
_080D1D18:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D1D34
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1D42
	b _080D1D3E
_080D1D34:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1D42
_080D1D3E:
	movs r0, #0
_080D1D40:
	strh r0, [r2]
_080D1D42:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D1D58
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D1D5E
_080D1D58:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D1D5E:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa6
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _080D1D76
	movs r0, #0
	strh r0, [r5]
_080D1D76:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D1D8C
	movs r0, #0
	strh r0, [r2]
	movs r6, #1
_080D1D8C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D1DA2
	movs r0, #0
	strh r0, [r2]
	movs r6, #1
_080D1DA2:
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x9f
	cmp r0, #0
	bgt _080D1DB2
	movs r0, #1
	strb r0, [r1]
_080D1DB2:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D1E0A
	movs r2, #0x10
	movs r0, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0x60
	bls _080D1DDE
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D1DE2
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x20
	b _080D1DE2
_080D1DDE:
	adds r0, #1
	strb r0, [r1]
_080D1DE2:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080D1DFA
	cmp r1, r3
	blt _080D1E04
	b _080D1E00
_080D1DFA:
	subs r0, r0, r2
	cmp r0, r3
	blt _080D1E04
_080D1E00:
	cmp r6, #0
	beq _080D1E0A
_080D1E04:
	adds r0, r4, #0
	bl sub_080D5218
_080D1E0A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1E10
sub_080D1E10: @ 0x080D1E10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D1E2A
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D1E30
_080D1E2A:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
_080D1E30:
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #3
	beq _080D1E40
	b _080D1F50
_080D1E40:
	adds r2, r6, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D1F30 @ =0xF9800000
	cmp r0, r1
	bge _080D1E56
	ldr r0, _080D1F34 @ =0x0000F980
	strh r0, [r2]
_080D1E56:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D1E66
	b _080D1F82
_080D1E66:
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r6, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r6, #8]
	ands r3, r4
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	ldr r1, _080D1F38 @ =gUnk_02020EE0
	ldr r0, _080D1F3C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D1F28
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D1EE8
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D1F28
_080D1EE8:
	ldr r1, _080D1F40 @ =gUnk_08D60FA4
	ldr r4, _080D1F44 @ =gSongTable
	ldr r2, _080D1F48 @ =0x00000BB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D1F0E
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D1F28
_080D1F0E:
	cmp r3, #0
	beq _080D1F20
	ldr r0, _080D1F4C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D1F28
_080D1F20:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D1F28:
	adds r0, r6, #0
	bl sub_080D1FB4
	b _080D1FA4
	.align 2, 0
_080D1F30: .4byte 0xF9800000
_080D1F34: .4byte 0x0000F980
_080D1F38: .4byte gUnk_02020EE0
_080D1F3C: .4byte gUnk_0203AD3C
_080D1F40: .4byte gUnk_08D60FA4
_080D1F44: .4byte gSongTable
_080D1F48: .4byte 0x00000BB4
_080D1F4C: .4byte gUnk_0203AD10
_080D1F50:
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D1F82
	ldr r2, _080D1FAC @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080D1F82:
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D1FA4
	ldr r0, [r6, #8]
	ldr r1, _080D1FB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #3
	strb r0, [r4]
_080D1FA4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D1FAC: .4byte gUnk_08356168
_080D1FB0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080D1FB4
sub_080D1FB4: @ 0x080D1FB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2000 @ =sub_080D2028
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D2004 @ =gUnk_08351530
	ldr r0, _080D2008 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D200C
	movs r0, #0x18
	b _080D200E
	.align 2, 0
_080D2000: .4byte sub_080D2028
_080D2004: .4byte gUnk_08351530
_080D2008: .4byte gUnk_0203AD30
_080D200C:
	movs r0, #0x20
_080D200E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2028
sub_080D2028: @ 0x080D2028
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D2040
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D2046
_080D2040:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D2046:
	str r0, [r2, #8]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080D206E
	ldr r1, _080D2084 @ =gUnk_08356168
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D206E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D2080
	adds r0, r2, #0
	bl sub_080D526C
_080D2080:
	pop {r0}
	bx r0
	.align 2, 0
_080D2084: .4byte gUnk_08356168

	thumb_func_start sub_080D2088
sub_080D2088: @ 0x080D2088
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D20C8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D20CC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2116
	strh r2, [r1]
	b _080D2116
	.align 2, 0
_080D20C8: .4byte 0xFFFFFC00
_080D20CC:
	cmp r3, r0
	bge _080D20EC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D20E8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2116
	strh r2, [r1]
	b _080D2116
	.align 2, 0
_080D20E8: .4byte 0xFFFFFE00
_080D20EC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2108
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2116
	b _080D2114
_080D2108:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2116
_080D2114:
	strh r5, [r1]
_080D2116:
	ldr r3, [r4, #0x40]
	ldr r2, _080D213C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D2140
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D2178
	.align 2, 0
_080D213C: .4byte 0xFFFFFC00
_080D2140:
	cmp r3, r0
	ble _080D219C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2178
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2174 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D216E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D21C8
_080D216E:
	strh r2, [r1]
	b _080D21C8
	.align 2, 0
_080D2174: .4byte 0xFFFFFE00
_080D2178:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D216E
	ldr r2, _080D2198 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D21C8
	b _080D216E
	.align 2, 0
_080D2198: .4byte 0xFFFFFE00
_080D219C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D21B8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D21C8
	b _080D21C4
_080D21B8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D21C8
_080D21C4:
	movs r0, #0
	strh r0, [r1]
_080D21C8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D21DE
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D21E4
_080D21DE:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D21E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D2238
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D220E
	cmp r2, #0x1f
	ble _080D2214
	b _080D2238
_080D220E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D2238
_080D2214:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D222C
	cmp r1, #0xf
	ble _080D2232
	b _080D2238
_080D222C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D2238
_080D2232:
	adds r0, r4, #0
	bl sub_080D1A38
_080D2238:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D229C
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2274
	ldr r2, _080D2268 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D226C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D2270 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D2292
	.align 2, 0
_080D2268: .4byte gRngVal
_080D226C: .4byte 0x00196225
_080D2270: .4byte 0x3C6EF35F
_080D2274:
	ldr r2, _080D22A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D22A8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D22AC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D2290
	movs r2, #1
_080D2290:
	adds r1, r2, #0
_080D2292:
	cmp r1, #0
	beq _080D229C
	adds r0, r4, #0
	bl sub_080D1978
_080D229C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D22A4: .4byte gRngVal
_080D22A8: .4byte 0x00196225
_080D22AC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D22B0
sub_080D22B0: @ 0x080D22B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2308 @ =sub_080D230C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D2308: .4byte sub_080D230C

	thumb_func_start sub_080D230C
sub_080D230C: @ 0x080D230C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080D2328
	movs r2, #0xa0
	mov sb, r2
_080D2328:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D2340
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D2340
	movs r0, #5
	strb r0, [r2]
_080D2340:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D237E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D237E:
	ldr r3, [r4, #0x44]
	ldr r1, _080D23B8 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D23D8
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D23BC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2446
	strh r2, [r1]
	b _080D2446
	.align 2, 0
_080D23B8: .4byte 0xFFFFF000
_080D23BC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D23D4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2446
	strh r2, [r1]
	b _080D2446
	.align 2, 0
_080D23D4: .4byte 0xFFFFFE80
_080D23D8:
	cmp r3, r0
	bge _080D2420
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080D2400
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2446
	strh r1, [r2]
	b _080D2446
_080D2400:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D241C @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2446
	strh r1, [r2]
	b _080D2446
	.align 2, 0
_080D241C: .4byte 0xFFFFFE80
_080D2420:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D243A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2446
	b _080D2444
_080D243A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2446
_080D2444:
	strh r7, [r1]
_080D2446:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2488 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D248C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D24DC
	b _080D24E0
	.align 2, 0
_080D2488: .4byte 0xFFFFF000
_080D248C:
	cmp r3, r0
	ble _080D24F0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D24C4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D24C0 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080D24DC
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D251A
	strh r1, [r2]
	b _080D251A
	.align 2, 0
_080D24C0: .4byte 0xFFFFFE80
_080D24C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D24E0
_080D24DC:
	strh r3, [r2]
	b _080D251A
_080D24E0:
	ldr r1, _080D24EC @ =0xFFFFFE80
	cmp r0, r1
	bge _080D251A
	strh r1, [r2]
	b _080D251A
	.align 2, 0
_080D24EC: .4byte 0xFFFFFE80
_080D24F0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D250C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D251A
	b _080D2516
_080D250C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D251A
_080D2516:
	movs r0, #0
	strh r0, [r2]
_080D251A:
	adds r0, r4, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D252C
	str r1, [r4, #0x44]
_080D252C:
	adds r0, r4, #0
	adds r0, #0xa6
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D2540
	str r1, [r4, #0x44]
_080D2540:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D2592
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D256C
	movs r0, #0
	strh r0, [r2]
_080D256C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D2582
	movs r0, #0
	strh r0, [r2]
_080D2582:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080D25D0
	adds r0, r4, #0
	bl sub_080D52C0
	b _080D25D0
_080D2592:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D25AE
	strh r3, [r2]
_080D25AE:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D25C2
	strh r3, [r2]
_080D25C2:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _080D25D0
	adds r0, r4, #0
	bl sub_080D52C0
_080D25D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D25DC
sub_080D25DC: @ 0x080D25DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080D2602
	movs r2, #0xa0
	mov sl, r2
_080D2602:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp, #4]
	cmp r1, #0
	bne _080D261E
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D261E
	movs r0, #5
	ldr r3, [sp, #4]
	strb r0, [r3]
_080D261E:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D2660
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D2660:
	ldr r3, [r4, #0x44]
	ldr r1, _080D2698 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D26B8
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D269C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2726
	strh r2, [r1]
	b _080D2726
	.align 2, 0
_080D2698: .4byte 0xFFFFF000
_080D269C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D26B4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2726
	strh r2, [r1]
	b _080D2726
	.align 2, 0
_080D26B4: .4byte 0xFFFFFE80
_080D26B8:
	cmp r3, r0
	bge _080D2700
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D26E0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2726
	strh r1, [r2]
	b _080D2726
_080D26E0:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D26FC @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2726
	strh r1, [r2]
	b _080D2726
	.align 2, 0
_080D26FC: .4byte 0xFFFFFE80
_080D2700:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D271A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2726
	b _080D2724
_080D271A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2726
_080D2724:
	strh r7, [r1]
_080D2726:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2768 @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r7, #0
	ldrsh r1, [r5, r7]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D276C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D27BC
	b _080D27C0
	.align 2, 0
_080D2768: .4byte 0xFFFFF000
_080D276C:
	cmp r3, r0
	ble _080D27D0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D27A4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D27A0 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D27BC
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D27FA
	strh r1, [r2]
	b _080D27FA
	.align 2, 0
_080D27A0: .4byte 0xFFFFFF00
_080D27A4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D27C0
_080D27BC:
	strh r3, [r2]
	b _080D27FA
_080D27C0:
	ldr r1, _080D27CC @ =0xFFFFFF00
	cmp r0, r1
	bge _080D27FA
	strh r1, [r2]
	b _080D27FA
	.align 2, 0
_080D27CC: .4byte 0xFFFFFF00
_080D27D0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D27EC
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D27FA
	b _080D27F6
_080D27EC:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D27FA
_080D27F6:
	movs r0, #0
	strh r0, [r2]
_080D27FA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D281E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080D2830
	movs r0, #0
	strh r0, [r2]
	b _080D2830
_080D281E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D2830
	strh r3, [r2]
_080D2830:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D2844
	str r1, [r4, #0x40]
_080D2844:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D2858
	str r1, [r4, #0x40]
_080D2858:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D286A
	str r1, [r4, #0x44]
_080D286A:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D287E
	str r1, [r4, #0x44]
_080D287E:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D28B0
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D28B0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D28B0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D28B4
_080D28B0:
	movs r3, #1
	str r3, [sp]
_080D28B4:
	movs r2, #0xc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x60
	bls _080D28D8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D28DC
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x30
	b _080D28DC
_080D28D8:
	adds r0, r1, #1
	strb r0, [r7]
_080D28DC:
	lsls r0, r2, #0x10
	lsrs r5, r0, #8
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1, #0x44]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r1, r3
	ldr r3, [r4, #0x44]
	subs r2, r1, r3
	adds r6, r0, #0
	cmp r2, #0
	blt _080D28FC
	cmp r2, r5
	blt _080D290E
	b _080D2902
_080D28FC:
	subs r0, r3, r1
	cmp r0, r5
	blt _080D290E
_080D2902:
	asrs r0, r6, #0x10
	cmp r0, #0x30
	bne _080D2940
	ldr r5, [sp]
	cmp r5, #0
	beq _080D2940
_080D290E:
	movs r0, #5
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2930
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x2c
	b _080D2936
_080D2930:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x30
_080D2936:
	strb r0, [r1]
	movs r0, #0
	strb r0, [r7]
	ldr r0, _080D2950 @ =sub_080D2954
	str r0, [r4, #0x78]
_080D2940:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D2950: .4byte sub_080D2954

	thumb_func_start sub_080D2954
sub_080D2954: @ 0x080D2954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080D2978
	movs r2, #0xa0
	mov sl, r2
_080D2978:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xac
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D29B6
	adds r0, r4, #0
	bl sub_0803D368
	mov r1, r8
	str r0, [r1]
	mov r2, sb
	strb r2, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D29B6:
	ldr r3, [r4, #0x44]
	ldr r1, _080D29F0 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D2A10
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080D29F4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2A84
	strh r2, [r1]
	b _080D2A84
	.align 2, 0
_080D29F0: .4byte 0xFFFFF000
_080D29F4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2A0C @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2A84
	strh r2, [r1]
	b _080D2A84
	.align 2, 0
_080D2A0C: .4byte 0xFFFFFE80
_080D2A10:
	cmp r3, r0
	bge _080D2A58
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D2A38
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2A84
	strh r1, [r2]
	b _080D2A84
_080D2A38:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D2A54 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2A84
	strh r1, [r2]
	b _080D2A84
	.align 2, 0
_080D2A54: .4byte 0xFFFFFE80
_080D2A58:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2A76
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2A84
	mov r5, sb
	strh r5, [r1]
	b _080D2A84
_080D2A76:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2A84
	mov r0, sb
	strh r0, [r1]
_080D2A84:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2AC4 @ =0xFFFFF000
	ands r3, r2
	movs r5, #0
	ldrsh r1, [r7, r5]
	mov r7, sl
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D2AC8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D2B18
	b _080D2B1C
	.align 2, 0
_080D2AC4: .4byte 0xFFFFF000
_080D2AC8:
	cmp r3, r0
	ble _080D2B2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2B00
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D2AFC @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D2B18
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2B56
	strh r1, [r2]
	b _080D2B56
	.align 2, 0
_080D2AFC: .4byte 0xFFFFFF00
_080D2B00:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D2B1C
_080D2B18:
	strh r3, [r2]
	b _080D2B56
_080D2B1C:
	ldr r1, _080D2B28 @ =0xFFFFFF00
	cmp r0, r1
	bge _080D2B56
	strh r1, [r2]
	b _080D2B56
	.align 2, 0
_080D2B28: .4byte 0xFFFFFF00
_080D2B2C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D2B48
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2B56
	b _080D2B52
_080D2B48:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2B56
_080D2B52:
	movs r0, #0
	strh r0, [r2]
_080D2B56:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D2B7A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080D2B8C
	movs r0, #0
	strh r0, [r2]
	b _080D2B8C
_080D2B7A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D2B8C
	strh r3, [r2]
_080D2B8C:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D2BA0
	str r1, [r4, #0x40]
_080D2BA0:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D2BB4
	str r1, [r4, #0x40]
_080D2BB4:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D2BC6
	str r1, [r4, #0x44]
_080D2BC6:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D2BDA
	str r1, [r4, #0x44]
_080D2BDA:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D2C0A
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D2C0A
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D2C0A
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D2C0E
_080D2C0A:
	movs r3, #1
	mov sb, r3
_080D2C0E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D2C20
	movs r0, #0x60
	strh r0, [r4, #4]
_080D2C20:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080D2C36
	mov r5, sb
	cmp r5, #0
	beq _080D2C3C
_080D2C36:
	adds r0, r4, #0
	bl sub_080D2C4C
_080D2C3C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2C4C
sub_080D2C4C: @ 0x080D2C4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2C88 @ =sub_080D2CB0
	movs r1, #6
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2C8C
	movs r0, #4
	b _080D2C8E
	.align 2, 0
_080D2C88: .4byte sub_080D2CB0
_080D2C8C:
	movs r0, #8
_080D2C8E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2CB0
sub_080D2CB0: @ 0x080D2CB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #7
	beq _080D2CC0
	b _080D2E4A
_080D2CC0:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080D2D3C
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080D4DA4
	ldr r1, _080D2DA4 @ =gUnk_02020EE0
	ldr r0, _080D2DA8 @ =gUnk_0203AD3C
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
	bne _080D2D3C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D2D00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D2D3C
_080D2D00:
	ldr r1, _080D2DAC @ =gUnk_08D60FA4
	ldr r5, _080D2DB0 @ =gSongTable
	ldr r2, _080D2DB4 @ =0x00000BBC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D2D24
	ldr r6, _080D2DB8 @ =0x00000BB8
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D2D3C
_080D2D24:
	cmp r3, #0
	beq _080D2D36
	ldr r0, _080D2DBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D2D3C
_080D2D36:
	ldr r0, _080D2DC0 @ =0x00000177
	bl m4aSongNumStart
_080D2D3C:
	ldrb r0, [r4, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080D2D58
	ldr r1, _080D2DC4 @ =gUnk_08356178
	ldrb r0, [r4, #1]
	subs r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080D2D58:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	bne _080D2E38
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	cmp r3, #2
	bhi _080D2E38
	adds r0, #2
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D2D92
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D2DC8 @ =gUnk_08351530
	ldr r0, _080D2DCC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D2DDC
_080D2D92:
	cmp r3, #1
	beq _080D2DF4
	ldr r2, _080D2DD0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D2DD4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D2DD8 @ =0x3C6EF35F
	adds r0, r0, r1
	b _080D2DE8
	.align 2, 0
_080D2DA4: .4byte gUnk_02020EE0
_080D2DA8: .4byte gUnk_0203AD3C
_080D2DAC: .4byte gUnk_08D60FA4
_080D2DB0: .4byte gSongTable
_080D2DB4: .4byte 0x00000BBC
_080D2DB8: .4byte 0x00000BB8
_080D2DBC: .4byte gUnk_0203AD10
_080D2DC0: .4byte 0x00000177
_080D2DC4: .4byte gUnk_08356178
_080D2DC8: .4byte gUnk_08351530
_080D2DCC: .4byte gUnk_0203AD30
_080D2DD0: .4byte gRngVal
_080D2DD4: .4byte 0x00196225
_080D2DD8: .4byte 0x3C6EF35F
_080D2DDC:
	ldr r2, _080D2E18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D2E1C @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080D2E20 @ =0x3C6EF35F
	adds r0, r0, r6
_080D2DE8:
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080D2E38
_080D2DF4:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080D2E24
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xc
	b _080D2E2A
	.align 2, 0
_080D2E18: .4byte gRngVal
_080D2E1C: .4byte 0x00196225
_080D2E20: .4byte 0x3C6EF35F
_080D2E24:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
_080D2E2A:
	strb r0, [r1]
	ldr r0, _080D2E34 @ =sub_080D2954
	str r0, [r4, #0x78]
	b _080D2E9E
	.align 2, 0
_080D2E34: .4byte sub_080D2954
_080D2E38:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D2E9E
	adds r0, r4, #0
	bl sub_080D52F8
	b _080D2E9E
_080D2E4A:
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D2E7C
	ldr r2, _080D2EA4 @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080D2E7C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D2E9E
	movs r0, #7
	strb r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
_080D2E9E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D2EA4: .4byte gUnk_08356168

	thumb_func_start sub_080D2EA8
sub_080D2EA8: @ 0x080D2EA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D2EE8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D2EEC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2F36
	strh r2, [r1]
	b _080D2F36
	.align 2, 0
_080D2EE8: .4byte 0xFFFFFC00
_080D2EEC:
	cmp r3, r0
	bge _080D2F0C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2F08 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2F36
	strh r2, [r1]
	b _080D2F36
	.align 2, 0
_080D2F08: .4byte 0xFFFFFE00
_080D2F0C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2F28
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2F36
	b _080D2F34
_080D2F28:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2F36
_080D2F34:
	strh r5, [r1]
_080D2F36:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2F5C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D2F60
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D2F98
	.align 2, 0
_080D2F5C: .4byte 0xFFFFFC00
_080D2F60:
	cmp r3, r0
	ble _080D2FBC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2F98
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2F94 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D2F8E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2FE8
_080D2F8E:
	strh r2, [r1]
	b _080D2FE8
	.align 2, 0
_080D2F94: .4byte 0xFFFFFE00
_080D2F98:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D2F8E
	ldr r2, _080D2FB8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2FE8
	b _080D2F8E
	.align 2, 0
_080D2FB8: .4byte 0xFFFFFE00
_080D2FBC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2FD8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2FE8
	b _080D2FE4
_080D2FD8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2FE8
_080D2FE4:
	movs r0, #0
	strh r0, [r1]
_080D2FE8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D2FFE
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3004
_080D2FFE:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3004:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D3058
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D302E
	cmp r2, #0x1f
	ble _080D3034
	b _080D3058
_080D302E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D3058
_080D3034:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D304C
	cmp r1, #0xf
	ble _080D3052
	b _080D3058
_080D304C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D3058
_080D3052:
	adds r0, r4, #0
	bl sub_080D1A38
_080D3058:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D30BC
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3094
	ldr r2, _080D3088 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D308C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D3090 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D30B2
	.align 2, 0
_080D3088: .4byte gRngVal
_080D308C: .4byte 0x00196225
_080D3090: .4byte 0x3C6EF35F
_080D3094:
	ldr r2, _080D30C4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D30C8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D30CC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D30B0
	movs r2, #1
_080D30B0:
	adds r1, r2, #0
_080D30B2:
	cmp r1, #0
	beq _080D30BC
	adds r0, r4, #0
	bl sub_080D1978
_080D30BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D30C4: .4byte gRngVal
_080D30C8: .4byte 0x00196225
_080D30CC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D30D0
sub_080D30D0: @ 0x080D30D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D30F4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D30F4
	movs r0, #9
	strb r0, [r2]
_080D30F4:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080D310A
	movs r3, #0xa0
	mov sb, r3
_080D310A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3148
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3148:
	ldr r3, [r4, #0x44]
	ldr r1, _080D3180 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D31A0
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080D3184
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D320E
	strh r2, [r1]
	b _080D320E
	.align 2, 0
_080D3180: .4byte 0xFFFFF000
_080D3184:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D319C @ =0xFFFFFE80
	cmp r0, r2
	bge _080D320E
	strh r2, [r1]
	b _080D320E
	.align 2, 0
_080D319C: .4byte 0xFFFFFE80
_080D31A0:
	cmp r3, r0
	bge _080D31E8
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D31C8
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D320E
	strh r1, [r2]
	b _080D320E
_080D31C8:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D31E4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D320E
	strh r1, [r2]
	b _080D320E
	.align 2, 0
_080D31E4: .4byte 0xFFFFFE80
_080D31E8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3202
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D320E
	b _080D320C
_080D3202:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D320E
_080D320C:
	strh r7, [r1]
_080D320E:
	ldr r3, [r4, #0x40]
	ldr r2, _080D3250 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D3254
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D32A4
	b _080D32A8
	.align 2, 0
_080D3250: .4byte 0xFFFFF000
_080D3254:
	cmp r3, r0
	ble _080D32B8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D328C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3288 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080D32A4
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D32E2
	strh r1, [r2]
	b _080D32E2
	.align 2, 0
_080D3288: .4byte 0xFFFFFE80
_080D328C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D32A8
_080D32A4:
	strh r3, [r2]
	b _080D32E2
_080D32A8:
	ldr r1, _080D32B4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D32E2
	strh r1, [r2]
	b _080D32E2
	.align 2, 0
_080D32B4: .4byte 0xFFFFFE80
_080D32B8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D32D4
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D32E2
	b _080D32DE
_080D32D4:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D32E2
_080D32DE:
	movs r0, #0
	strh r0, [r2]
_080D32E2:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D3332
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D330C
	movs r0, #0
	strh r0, [r2]
_080D330C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D3322
	movs r0, #0
	strh r0, [r2]
_080D3322:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _080D3370
	adds r0, r4, #0
	bl sub_080D5390
	b _080D3370
_080D3332:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D334E
	strh r3, [r2]
_080D334E:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D3362
	strh r3, [r2]
_080D3362:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _080D3370
	adds r0, r4, #0
	bl sub_080D5390
_080D3370:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3380
sub_080D3380: @ 0x080D3380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xc
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D33AE
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D33AE
	movs r0, #9
	strb r0, [r2]
_080D33AE:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sl, r2
	str r0, [sp, #8]
	cmp r1, #0
	beq _080D33C4
	movs r3, #0xa0
	mov sl, r3
_080D33C4:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3406
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3406:
	ldr r3, [r4, #0x44]
	ldr r1, _080D343C @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D345C
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D3440
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D34CA
	strh r2, [r1]
	b _080D34CA
	.align 2, 0
_080D343C: .4byte 0xFFFFF000
_080D3440:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3458 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D34CA
	strh r2, [r1]
	b _080D34CA
	.align 2, 0
_080D3458: .4byte 0xFFFFFE80
_080D345C:
	cmp r3, r0
	bge _080D34A4
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D3484
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D34CA
	strh r1, [r2]
	b _080D34CA
_080D3484:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D34A0 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D34CA
	strh r1, [r2]
	b _080D34CA
	.align 2, 0
_080D34A0: .4byte 0xFFFFFE80
_080D34A4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D34BE
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D34CA
	b _080D34C8
_080D34BE:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D34CA
_080D34C8:
	strh r7, [r1]
_080D34CA:
	ldr r3, [r4, #0x40]
	ldr r2, _080D350C @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r7, #0
	ldrsh r1, [r5, r7]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D3510
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D3560
	b _080D3564
	.align 2, 0
_080D350C: .4byte 0xFFFFF000
_080D3510:
	cmp r3, r0
	ble _080D3574
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3548
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3544 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D3560
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D359E
	strh r1, [r2]
	b _080D359E
	.align 2, 0
_080D3544: .4byte 0xFFFFFF00
_080D3548:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3564
_080D3560:
	strh r3, [r2]
	b _080D359E
_080D3564:
	ldr r1, _080D3570 @ =0xFFFFFF00
	cmp r0, r1
	bge _080D359E
	strh r1, [r2]
	b _080D359E
	.align 2, 0
_080D3570: .4byte 0xFFFFFF00
_080D3574:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D3590
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D359E
	b _080D359A
_080D3590:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D359E
_080D359A:
	movs r0, #0
	strh r0, [r2]
_080D359E:
	ldr r1, [sp, #8]
	ldr r0, [r1]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D35C0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080D35D2
	movs r0, #0
	strh r0, [r2]
	b _080D35D2
_080D35C0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D35D2
	strh r3, [r2]
_080D35D2:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D35E6
	str r1, [r4, #0x40]
_080D35E6:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D35FA
	str r1, [r4, #0x40]
_080D35FA:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D360E
	str r1, [r4, #0x44]
_080D360E:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D3622
	str r1, [r4, #0x44]
_080D3622:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D3652
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D3652
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D3652
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3656
_080D3652:
	movs r3, #1
	str r3, [sp, #4]
_080D3656:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080D368C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D3674
	movs r0, #0x60
	strh r0, [r4, #4]
_080D3674:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D36E8
	adds r0, r4, #0
	bl sub_080D36F8
	b _080D36E8
_080D368C:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	bls _080D36B0
	movs r7, #0x30
	str r7, [sp]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D36B4
	movs r0, #0x60
	strh r0, [r4, #4]
	b _080D36B4
_080D36B0:
	adds r0, r1, #1
	strb r0, [r5]
_080D36B4:
	ldr r0, [sp]
	lsls r3, r0, #8
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080D36CC
	cmp r1, r3
	blt _080D36E0
	b _080D36D2
_080D36CC:
	subs r0, r0, r2
	cmp r0, r3
	blt _080D36E0
_080D36D2:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x60
	bne _080D36E8
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _080D36E8
_080D36E0:
	movs r0, #0xa
	strb r0, [r6]
	movs r0, #0x18
	strb r0, [r5]
_080D36E8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D36F8
sub_080D36F8: @ 0x080D36F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D3730 @ =sub_080D379C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080D3734 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3738 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D373C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D3740
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
	b _080D3746
	.align 2, 0
_080D3730: .4byte sub_080D379C
_080D3734: .4byte gRngVal
_080D3738: .4byte 0x00196225
_080D373C: .4byte 0x3C6EF35F
_080D3740:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xff
_080D3746:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3768
	movs r0, #0x14
	b _080D376A
_080D3768:
	movs r0, #0x18
_080D376A:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D379C
sub_080D379C: @ 0x080D379C
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D37D8
	ldr r2, _080D380C @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r2, ip
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D37D8:
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _080D38B2
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D3814
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3810 @ =0xFFFFF880
	cmp r0, r2
	blt _080D3830
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080D3832
	b _080D3830
	.align 2, 0
_080D380C: .4byte gUnk_08356168
_080D3810: .4byte 0xFFFFF880
_080D3814:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080D3830
	ldr r2, _080D3868 @ =0xFFFFF880
	cmp r0, r2
	bge _080D3832
_080D3830:
	strh r2, [r1]
_080D3832:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D386C
	adds r0, r3, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	cmp r2, r0
	blt _080D387C
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080D38AA
	adds r0, #1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #8
	lsls r0, r0, #8
	cmp r2, r0
	bge _080D38A4
	b _080D387C
	.align 2, 0
_080D3868: .4byte 0xFFFFF880
_080D386C:
	adds r0, r3, #0
	adds r0, #0xa8
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	cmp r2, r0
	ble _080D3884
_080D387C:
	adds r0, r3, #0
	bl sub_080D394C
	b _080D3924
_080D3884:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080D38AA
	adds r0, #1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	lsls r0, r0, #8
	cmp r2, r0
	ble _080D38A4
	adds r0, r3, #0
	bl sub_080D394C
_080D38A4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D3924
_080D38AA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _080D3924
_080D38B2:
	subs r0, r1, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D3924
	ldr r1, _080D392C @ =gUnk_02020EE0
	ldr r0, _080D3930 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D3924
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D38E8
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D3924
_080D38E8:
	ldr r1, _080D3934 @ =gUnk_08D60FA4
	ldr r4, _080D3938 @ =gSongTable
	ldr r2, _080D393C @ =0x00000CCC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D390C
	ldr r1, _080D3940 @ =0x00000CC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D3924
_080D390C:
	cmp r3, #0
	beq _080D391E
	ldr r0, _080D3944 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D3924
_080D391E:
	ldr r0, _080D3948 @ =0x00000199
	bl m4aSongNumStart
_080D3924:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D392C: .4byte gUnk_02020EE0
_080D3930: .4byte gUnk_0203AD3C
_080D3934: .4byte gUnk_08D60FA4
_080D3938: .4byte gSongTable
_080D393C: .4byte 0x00000CCC
_080D3940: .4byte 0x00000CC8
_080D3944: .4byte gUnk_0203AD10
_080D3948: .4byte 0x00000199

	thumb_func_start sub_080D394C
sub_080D394C: @ 0x080D394C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D39A8 @ =sub_080D53C4
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D39A4
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D39AC @ =gUnk_08351530
	ldr r0, _080D39B0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D39B4
_080D39A4:
	movs r0, #0x1c
	b _080D39B6
	.align 2, 0
_080D39A8: .4byte sub_080D53C4
_080D39AC: .4byte gUnk_08351530
_080D39B0: .4byte gUnk_0203AD30
_080D39B4:
	movs r0, #0x20
_080D39B6:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D39C8
sub_080D39C8: @ 0x080D39C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D3A08 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D3A0C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D3A56
	strh r2, [r1]
	b _080D3A56
	.align 2, 0
_080D3A08: .4byte 0xFFFFFC00
_080D3A0C:
	cmp r3, r0
	bge _080D3A2C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3A28 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D3A56
	strh r2, [r1]
	b _080D3A56
	.align 2, 0
_080D3A28: .4byte 0xFFFFFE00
_080D3A2C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3A48
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3A56
	b _080D3A54
_080D3A48:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3A56
_080D3A54:
	strh r5, [r1]
_080D3A56:
	ldr r3, [r4, #0x40]
	ldr r2, _080D3A7C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D3A80
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D3AB8
	.align 2, 0
_080D3A7C: .4byte 0xFFFFFC00
_080D3A80:
	cmp r3, r0
	ble _080D3ADC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3AB8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3AB4 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D3AAE
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D3B08
_080D3AAE:
	strh r2, [r1]
	b _080D3B08
	.align 2, 0
_080D3AB4: .4byte 0xFFFFFE00
_080D3AB8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D3AAE
	ldr r2, _080D3AD8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D3B08
	b _080D3AAE
	.align 2, 0
_080D3AD8: .4byte 0xFFFFFE00
_080D3ADC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3AF8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3B08
	b _080D3B04
_080D3AF8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3B08
_080D3B04:
	movs r0, #0
	strh r0, [r1]
_080D3B08:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D3B1E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3B24
_080D3B1E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3B24:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D3B78
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D3B4E
	cmp r2, #0x1f
	ble _080D3B54
	b _080D3B78
_080D3B4E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D3B78
_080D3B54:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D3B6C
	cmp r1, #0xf
	ble _080D3B72
	b _080D3B78
_080D3B6C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D3B78
_080D3B72:
	adds r0, r4, #0
	bl sub_080D1A38
_080D3B78:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D3BDC
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3BB4
	ldr r2, _080D3BA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3BAC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D3BB0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D3BD2
	.align 2, 0
_080D3BA8: .4byte gRngVal
_080D3BAC: .4byte 0x00196225
_080D3BB0: .4byte 0x3C6EF35F
_080D3BB4:
	ldr r2, _080D3BE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3BE8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D3BEC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3BD0
	movs r2, #1
_080D3BD0:
	adds r1, r2, #0
_080D3BD2:
	cmp r1, #0
	beq _080D3BDC
	adds r0, r4, #0
	bl sub_080D1978
_080D3BDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D3BE4: .4byte gRngVal
_080D3BE8: .4byte 0x00196225
_080D3BEC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D3BF0
sub_080D3BF0: @ 0x080D3BF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D3C48 @ =sub_080D3C58
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r2, #0x3e
	ands r1, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3C4C
	movs r0, #0x3e
	b _080D3C4E
	.align 2, 0
_080D3C48: .4byte sub_080D3C58
_080D3C4C:
	movs r0, #0x44
_080D3C4E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3C58
sub_080D3C58: @ 0x080D3C58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080D3C6A
	b _080D3DE4
_080D3C6A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3CA8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3CA8:
	ldr r2, [r4, #0x44]
	ldr r1, _080D3CD8 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D3CDC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080D3D28
	strh r2, [r5]
	b _080D3D28
	.align 2, 0
_080D3CD8: .4byte 0xFFFFF000
_080D3CDC:
	cmp r2, r0
	bge _080D3D00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3CFC @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080D3D28
	strh r2, [r5]
	b _080D3D28
	.align 2, 0
_080D3CFC: .4byte 0xFFFFFE00
_080D3D00:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D3D1C
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3D28
	b _080D3D26
_080D3D1C:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3D28
_080D3D26:
	strh r7, [r5]
_080D3D28:
	ldr r2, [r4, #0x40]
	ldr r1, _080D3D64 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D3D6C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3D60
	b _080D3F2C
_080D3D60:
	ldr r1, _080D3D68 @ =0xFFFFFE00
	b _080D3F32
	.align 2, 0
_080D3D64: .4byte 0xFFFFF000
_080D3D68: .4byte 0xFFFFFE00
_080D3D6C:
	cmp r2, r0
	ble _080D3DC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3DA0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3D9C @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	bge _080D3D96
	b _080D3F2C
_080D3D96:
	movs r1, #0x80
	lsls r1, r1, #2
	b _080D3F08
	.align 2, 0
_080D3D9C: .4byte 0xFFFFFE00
_080D3DA0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3DBA
	b _080D3F2C
_080D3DBA:
	ldr r1, _080D3DC0 @ =0xFFFFFE00
	b _080D3F32
	.align 2, 0
_080D3DC0: .4byte 0xFFFFFE00
_080D3DC4:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	blt _080D3DD6
	b _080D3F5C
_080D3DD6:
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D3DE2
	b _080D3F6A
_080D3DE2:
	b _080D3F66
_080D3DE4:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3E20
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3E20:
	ldr r2, [r4, #0x44]
	ldr r1, _080D3E50 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D3E54
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080D3EA0
	strh r2, [r5]
	b _080D3EA0
	.align 2, 0
_080D3E50: .4byte 0xFFFFF000
_080D3E54:
	cmp r2, r0
	bge _080D3E78
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3E74 @ =0xFFFFFE40
	adds r5, r1, #0
	cmp r0, r2
	bge _080D3EA0
	strh r2, [r5]
	b _080D3EA0
	.align 2, 0
_080D3E74: .4byte 0xFFFFFE40
_080D3E78:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D3E94
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3EA0
	b _080D3E9E
_080D3E94:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3EA0
_080D3E9E:
	strh r7, [r5]
_080D3EA0:
	ldr r2, [r4, #0x40]
	ldr r1, _080D3ED8 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D3EDC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D3F2C
	b _080D3F30
	.align 2, 0
_080D3ED8: .4byte 0xFFFFF000
_080D3EDC:
	cmp r2, r0
	ble _080D3F40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3F14
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3F10 @ =0xFFFFFE40
	adds r2, r1, #0
	cmp r0, r3
	blt _080D3F2C
	movs r1, #0xe0
	lsls r1, r1, #1
_080D3F08:
	cmp r0, r1
	ble _080D3F6A
	strh r1, [r2]
	b _080D3F6A
	.align 2, 0
_080D3F10: .4byte 0xFFFFFE40
_080D3F14:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3F30
_080D3F2C:
	strh r3, [r2]
	b _080D3F6A
_080D3F30:
	ldr r1, _080D3F3C @ =0xFFFFFE40
_080D3F32:
	cmp r0, r1
	bge _080D3F6A
	strh r1, [r2]
	b _080D3F6A
	.align 2, 0
_080D3F3C: .4byte 0xFFFFFE40
_080D3F40:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D3F5C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3F6A
	b _080D3F66
_080D3F5C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3F6A
_080D3F66:
	movs r0, #0
	strh r0, [r2]
_080D3F6A:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080D3F8C
	adds r0, r4, #0
	adds r0, #0xa4
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3F90
_080D3F8C:
	movs r0, #0
	strh r0, [r2]
_080D3F90:
	adds r0, r4, #0
	adds r0, #0xaa
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bgt _080D3FB2
	adds r0, r4, #0
	adds r0, #0xa6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3FB6
_080D3FB2:
	movs r0, #0
	strh r0, [r5]
_080D3FB6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D3FCC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3FD2
_080D3FCC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3FD2:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D3FE6
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	strb r0, [r1]
_080D3FE6:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D3FF8
	adds r0, r4, #0
	bl sub_080D5574
_080D3FF8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D4004
sub_080D4004: @ 0x080D4004
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080D4054
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D4054
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080D4054
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080D4054
	cmp r0, #0x7a
	bhi _080D4054
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080D4054
	ldr r5, [r6, #8]
	ldr r0, _080D4058 @ =0x03800B00
	ands r5, r0
	cmp r5, #0
	beq _080D405C
_080D4054:
	movs r0, #0
	b _080D4116
	.align 2, 0
_080D4058: .4byte 0x03800B00
_080D405C:
	ldr r2, _080D4124 @ =sub_080D5458
	adds r0, r4, #0
	movs r1, #0xe
	bl ObjectSetFunc
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080D4128 @ =gUnk_08356120
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	str r6, [r4, #0x6c]
	ldr r1, _080D412C @ =gUnk_02020EE0
	ldr r0, _080D4130 @ =gUnk_0203AD3C
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
	bne _080D4114
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D40D6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D4114
_080D40D6:
	ldr r1, _080D4134 @ =gUnk_08D60FA4
	ldr r4, _080D4138 @ =gSongTable
	ldr r2, _080D413C @ =0x00000CD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D40FC
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D4114
_080D40FC:
	cmp r3, #0
	beq _080D410C
	ldr r0, _080D4140 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080D4114
_080D410C:
	movs r0, #0xcd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D4114:
	movs r0, #1
_080D4116:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D4124: .4byte sub_080D5458
_080D4128: .4byte gUnk_08356120
_080D412C: .4byte gUnk_02020EE0
_080D4130: .4byte gUnk_0203AD3C
_080D4134: .4byte gUnk_08D60FA4
_080D4138: .4byte gSongTable
_080D413C: .4byte 0x00000CD4
_080D4140: .4byte gUnk_0203AD10

	thumb_func_start sub_080D4144
sub_080D4144: @ 0x080D4144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080D41A4 @ =gUnk_08356140
	str r1, [r0]
	ldr r2, _080D41A8 @ =sub_080D41BC
	adds r0, r4, #0
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r0, [r0]
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0xa6
	movs r5, #0
	ldrsh r1, [r3, r5]
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r5, #8
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _080D41AC
	ldrh r0, [r3]
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	b _080D41B4
	.align 2, 0
_080D41A4: .4byte gUnk_08356140
_080D41A8: .4byte sub_080D41BC
_080D41AC:
	ldrh r1, [r2, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
_080D41B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D41BC
sub_080D41BC: @ 0x080D41BC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	movs r6, #0x80
	ands r6, r1
	cmp r6, #0
	bne _080D41DC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080D41EC
_080D41DC:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080D4AF4
	b _080D439C
_080D41EC:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080D4224 @ =0xFFFFF000
	ands r4, r2
	adds r1, #4
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r3, r0, #8
	ands r3, r2
	adds r7, r1, #0
	cmp r4, r3
	ble _080D4228
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D426E
	strh r2, [r1]
	b _080D426E
	.align 2, 0
_080D4224: .4byte 0xFFFFF000
_080D4228:
	cmp r4, r3
	bge _080D4248
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4244 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D426E
	strh r2, [r1]
	b _080D426E
	.align 2, 0
_080D4244: .4byte 0xFFFFFE00
_080D4248:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4262
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D426E
	b _080D426C
_080D4262:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D426E
_080D426C:
	strh r6, [r1]
_080D426E:
	ldr r4, [r5, #0x40]
	ldr r0, _080D4290 @ =0xFFFFF000
	ands r4, r0
	adds r1, r5, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r1, #8
	ands r3, r0
	cmp r4, r3
	bge _080D4294
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D42CC
	.align 2, 0
_080D4290: .4byte 0xFFFFF000
_080D4294:
	cmp r4, r3
	ble _080D42F0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D42CC
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D42C8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D42C2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4318
_080D42C2:
	strh r2, [r1]
	b _080D4318
	.align 2, 0
_080D42C8: .4byte 0xFFFFFE00
_080D42CC:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D42C2
	ldr r2, _080D42EC @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4318
	b _080D42C2
	.align 2, 0
_080D42EC: .4byte 0xFFFFFE00
_080D42F0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D430A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4318
	b _080D4314
_080D430A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4318
_080D4314:
	movs r0, #0
	strh r0, [r1]
_080D4318:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D432E
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4334
_080D432E:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080D4334:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x83
	cmp r0, #0
	beq _080D435A
	movs r0, #0x10
	strb r0, [r4]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080D435A:
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080D439C
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080D439C
	adds r0, r5, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080D439C
	adds r0, r5, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r2, _080D43A4 @ =0xFFFFFC00
	adds r0, r0, r2
	cmp r1, r0
	ble _080D439C
	adds r0, r5, #0
	bl sub_080D54A4
_080D439C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D43A4: .4byte 0xFFFFFC00

	thumb_func_start sub_080D43A8
sub_080D43A8: @ 0x080D43A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r1, [r5, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D43C6
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080D43D6
_080D43C6:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080D4AF4
	b _080D4500
_080D43D6:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D43EC
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D43F2
_080D43EC:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080D43F2:
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080D44E4
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D44C4 @ =0xF9800000
	cmp r0, r1
	bge _080D4414
	ldr r0, _080D44C8 @ =0x0000F980
	strh r0, [r2]
_080D4414:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D4500
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	ldr r1, _080D44CC @ =gUnk_02020EE0
	ldr r0, _080D44D0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080D44BA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D447A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D44BA
_080D447A:
	ldr r1, _080D44D4 @ =gUnk_08D60FA4
	ldr r4, _080D44D8 @ =gSongTable
	ldr r3, _080D44DC @ =0x00000BB4
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D44A0
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D44BA
_080D44A0:
	cmp r3, #0
	beq _080D44B2
	ldr r0, _080D44E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D44BA
_080D44B2:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D44BA:
	adds r0, r5, #0
	bl sub_080D54D8
	b _080D4500
	.align 2, 0
_080D44C4: .4byte 0xF9800000
_080D44C8: .4byte 0x0000F980
_080D44CC: .4byte gUnk_02020EE0
_080D44D0: .4byte gUnk_0203AD3C
_080D44D4: .4byte gUnk_08D60FA4
_080D44D8: .4byte gSongTable
_080D44DC: .4byte 0x00000BB4
_080D44E0: .4byte gUnk_0203AD10
_080D44E4:
	subs r0, r1, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4500
	ldr r0, [r5, #8]
	ldr r1, _080D4508 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080D4500:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D4508: .4byte 0xFFFFFEFF

	thumb_func_start sub_080D450C
sub_080D450C: @ 0x080D450C
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D452A
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080D453A
_080D452A:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080D4AF4
	b _080D4590
_080D453A:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4550
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4556
_080D4550:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D4556:
	str r0, [r2, #8]
	movs r0, #0x9e
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080D457E
	ldr r1, _080D4598 @ =gUnk_08356168
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D457E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4590
	adds r0, r2, #0
	bl sub_080D5514
_080D4590:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4598: .4byte gUnk_08356168

	thumb_func_start sub_080D459C
sub_080D459C: @ 0x080D459C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D45E0 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D45E4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080D4634
	strh r2, [r5]
	b _080D4634
	.align 2, 0
_080D45E0: .4byte 0xFFFFFC00
_080D45E4:
	cmp r3, r0
	bge _080D4608
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4604 @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080D4634
	strh r2, [r5]
	b _080D4634
	.align 2, 0
_080D4604: .4byte 0xFFFFFE00
_080D4608:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D4626
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4634
	b _080D4632
_080D4626:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4634
_080D4632:
	strh r6, [r5]
_080D4634:
	ldr r3, [r4, #0x40]
	ldr r2, _080D4670 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	bge _080D4674
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D46C4
	b _080D46C8
	.align 2, 0
_080D4670: .4byte 0xFFFFFC00
_080D4674:
	cmp r3, r0
	ble _080D46D8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D46AC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D46A8 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D46C4
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080D4706
	strh r1, [r2]
	b _080D4706
	.align 2, 0
_080D46A8: .4byte 0xFFFFFE00
_080D46AC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D46C8
_080D46C4:
	strh r3, [r2]
	b _080D4706
_080D46C8:
	ldr r1, _080D46D4 @ =0xFFFFFE00
	cmp r0, r1
	bge _080D4706
	strh r1, [r2]
	b _080D4706
	.align 2, 0
_080D46D4: .4byte 0xFFFFFE00
_080D46D8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D46F6
	adds r0, r3, #0
	adds r0, #0xa0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4706
	b _080D4702
_080D46F6:
	adds r0, r3, #0
	subs r0, #0xa0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4706
_080D4702:
	movs r0, #0
	strh r0, [r2]
_080D4706:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D471C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4722
_080D471C:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D4722:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080D4778
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D474C
	cmp r2, #0x1f
	ble _080D4752
	b _080D4788
_080D474C:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4788
_080D4752:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D476A
	cmp r1, #0xf
	ble _080D4770
	b _080D4788
_080D476A:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D4788
_080D4770:
	adds r0, r4, #0
	bl sub_080D1A38
	b _080D4788
_080D4778:
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080D4788
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r5]
_080D4788:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D47EC
	movs r0, #0
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D47C4
	ldr r2, _080D47B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D47BC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D47C0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D47E2
	.align 2, 0
_080D47B8: .4byte gRngVal
_080D47BC: .4byte 0x00196225
_080D47C0: .4byte 0x3C6EF35F
_080D47C4:
	ldr r2, _080D47F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D47F8 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080D47FC @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D47E0
	movs r2, #1
_080D47E0:
	adds r1, r2, #0
_080D47E2:
	cmp r1, #0
	beq _080D47EC
	adds r0, r4, #0
	bl sub_080D1978
_080D47EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D47F4: .4byte gRngVal
_080D47F8: .4byte 0x00196225
_080D47FC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4800
sub_080D4800: @ 0x080D4800
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4822
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4832
	b _080D482E
_080D4822:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4832
_080D482E:
	movs r0, #0
	strh r0, [r1]
_080D4832:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D484E
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D485E
	b _080D485A
_080D484E:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D485E
_080D485A:
	movs r0, #0
	strh r0, [r1]
_080D485E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4874
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D487A
_080D4874:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D487A:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xe
	bne _080D489E
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D48C4
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xf
	strb r0, [r2]
	b _080D48C4
_080D489E:
	cmp r0, #0xf
	bne _080D48C4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D48C4
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r4, #0
	bl sub_080D55CC
_080D48C4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D48CC
sub_080D48CC: @ 0x080D48CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D490C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D4910
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D495A
	strh r2, [r1]
	b _080D495A
	.align 2, 0
_080D490C: .4byte 0xFFFFFC00
_080D4910:
	cmp r3, r0
	bge _080D4930
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D492C @ =0xFFFFFE00
	cmp r0, r2
	bge _080D495A
	strh r2, [r1]
	b _080D495A
	.align 2, 0
_080D492C: .4byte 0xFFFFFE00
_080D4930:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D494C
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D495A
	b _080D4958
_080D494C:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D495A
_080D4958:
	strh r5, [r1]
_080D495A:
	ldr r3, [r4, #0x40]
	ldr r2, _080D4980 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D4984
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D49BC
	.align 2, 0
_080D4980: .4byte 0xFFFFFC00
_080D4984:
	cmp r3, r0
	ble _080D49E0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D49BC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D49B8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D49B2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4A0C
_080D49B2:
	strh r2, [r1]
	b _080D4A0C
	.align 2, 0
_080D49B8: .4byte 0xFFFFFE00
_080D49BC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D49B2
	ldr r2, _080D49DC @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4A0C
	b _080D49B2
	.align 2, 0
_080D49DC: .4byte 0xFFFFFE00
_080D49E0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D49FC
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4A0C
	b _080D4A08
_080D49FC:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4A0C
_080D4A08:
	movs r0, #0
	strh r0, [r1]
_080D4A0C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4A22
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4A28
_080D4A22:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D4A28:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D4A7C
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4A52
	cmp r2, #0x1f
	ble _080D4A58
	b _080D4A7C
_080D4A52:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4A7C
_080D4A58:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D4A70
	cmp r1, #0xf
	ble _080D4A76
	b _080D4A7C
_080D4A70:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D4A7C
_080D4A76:
	adds r0, r4, #0
	bl sub_080D1A38
_080D4A7C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D4AE0
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D4AB8
	ldr r2, _080D4AAC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4AB0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D4AB4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D4AD6
	.align 2, 0
_080D4AAC: .4byte gRngVal
_080D4AB0: .4byte 0x00196225
_080D4AB4: .4byte 0x3C6EF35F
_080D4AB8:
	ldr r2, _080D4AE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4AEC @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D4AF0 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D4AD4
	movs r2, #1
_080D4AD4:
	adds r1, r2, #0
_080D4AD6:
	cmp r1, #0
	beq _080D4AE0
	adds r0, r4, #0
	bl sub_080D1978
_080D4AE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D4AE8: .4byte gRngVal
_080D4AEC: .4byte 0x00196225
_080D4AF0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4AF4
sub_080D4AF4: @ 0x080D4AF4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080D4B58 @ =sub_080D4B5C
	movs r1, #0x16
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4B58: .4byte sub_080D4B5C

	thumb_func_start sub_080D4B5C
sub_080D4B5C: @ 0x080D4B5C
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	movs r2, #4
	ldrsh r4, [r1, r2]
	cmp r4, #0
	beq _080D4B6E
	b _080D4D26
_080D4B6E:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r5, ip
	ldr r3, [r5, #0x44]
	ldr r2, _080D4BA8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, #4
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	ble _080D4BAC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4BF6
	strh r2, [r1]
	b _080D4BF6
	.align 2, 0
_080D4BA8: .4byte 0xFFFFFC00
_080D4BAC:
	cmp r3, r0
	bge _080D4BCC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4BC8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4BF6
	strh r2, [r1]
	b _080D4BF6
	.align 2, 0
_080D4BC8: .4byte 0xFFFFFE00
_080D4BCC:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4BE8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4BF6
	b _080D4BF4
_080D4BE8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4BF6
_080D4BF4:
	strh r4, [r1]
_080D4BF6:
	mov r4, ip
	ldr r3, [r4, #0x40]
	ldr r2, _080D4C20 @ =0xFFFFFC00
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r3, r0
	bge _080D4C24
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D4C5C
	.align 2, 0
_080D4C20: .4byte 0xFFFFFC00
_080D4C24:
	cmp r3, r0
	ble _080D4C80
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D4C5C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4C58 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D4C54
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4CAC
_080D4C54:
	strh r2, [r1]
	b _080D4CAC
	.align 2, 0
_080D4C58: .4byte 0xFFFFFE00
_080D4C5C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D4C54
	ldr r2, _080D4C7C @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4CAC
	b _080D4C54
	.align 2, 0
_080D4C7C: .4byte 0xFFFFFE00
_080D4C80:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4C9C
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4CAC
	b _080D4CA8
_080D4C9C:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4CAC
_080D4CA8:
	movs r0, #0
	strh r0, [r1]
_080D4CAC:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4CC8
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D4CD2
_080D4CC8:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D4CD2:
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D4D90
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4CFC
	cmp r2, #0x1f
	ble _080D4D02
	b _080D4D90
_080D4CFC:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4D90
_080D4D02:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4D18
	cmp r2, #0xf
	ble _080D4D1E
	b _080D4D90
_080D4D18:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D4D90
_080D4D1E:
	mov r0, ip
	bl sub_080D1A38
	b _080D4D90
_080D4D26:
	subs r0, #1
	mov r1, ip
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4D90
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D4D68
	ldr r2, _080D4D5C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4D60 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D4D64 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D4D86
	.align 2, 0
_080D4D5C: .4byte gRngVal
_080D4D60: .4byte 0x00196225
_080D4D64: .4byte 0x3C6EF35F
_080D4D68:
	ldr r2, _080D4D98 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4D9C @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080D4DA0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D4D84
	movs r2, #1
_080D4D84:
	adds r1, r2, #0
_080D4D86:
	cmp r1, #0
	beq _080D4D90
	mov r0, ip
	bl sub_080D1978
_080D4D90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D4D98: .4byte gRngVal
_080D4D9C: .4byte 0x00196225
_080D4DA0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4DA4
sub_080D4DA4: @ 0x080D4DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D4DC8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080D4DCE
_080D4DC8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080D4DCE:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #0x10
	mov ip, r0
	movs r4, #0
	ldr r1, _080D4DF0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D4DF4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D4E0C
	.align 2, 0
_080D4DF0: .4byte gUnk_020229D4
_080D4DF4: .4byte gUnk_020229E0
_080D4DF8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D4E14
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D4E0C:
	cmp r0, #0
	bne _080D4DF8
	orrs r2, r3
	str r2, [r1]
_080D4E14:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D4E78
sub_080D4E78: @ 0x080D4E78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D4EAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D4EB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D4EB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D4EBC
	.align 2, 0
_080D4EAC: .4byte ObjectMain
_080D4EB0: .4byte ObjectDestroy
_080D4EB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D4EBC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D4F38 @ =sub_0809F840
	str r0, [r4, #0x7c]
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
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080D4F3C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D4F38: .4byte sub_0809F840

	thumb_func_start sub_080D4F3C
sub_080D4F3C: @ 0x080D4F3C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080D4F70 @ =sub_080D5618
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4F5E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D4F5E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #0
	beq _080D4F74
	cmp r2, #1
	beq _080D4F80
	b _080D4F90
	.align 2, 0
_080D4F70: .4byte sub_080D5618
_080D4F74:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1]
	b _080D4F90
_080D4F80:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_080D4F90:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D4FA4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080D4FA4:
	ldr r2, _080D4FC0 @ =0x000002A1
	ldr r0, _080D4FC4 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _080D4FC8 @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_080706A0
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4FC0: .4byte 0x000002A1
_080D4FC4: .4byte sub_08072B98
_080D4FC8: .4byte sub_08084AA0

	thumb_func_start sub_080D4FCC
sub_080D4FCC: @ 0x080D4FCC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080D4FFC @ =sub_080D50A0
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D5000
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D5008
	.align 2, 0
_080D4FFC: .4byte sub_080D50A0
_080D5000:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D5008:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080D5098 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080D5058
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080D5058:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080D509C @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D507C
	orrs r2, r3
_080D507C:
	str r2, [r4, #8]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x28
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D5098: .4byte gUnk_03000510
_080D509C: .4byte 0x12010400

	thumb_func_start sub_080D50A0
sub_080D50A0: @ 0x080D50A0
	push {r4, r5, lr}
	ldr r2, _080D50BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D50C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D50C8
	.align 2, 0
_080D50BC: .4byte gCurTask
_080D50C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D50C8:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080D50E2
	ldr r0, [r2]
	bl TaskDestroy
	b _080D51DE
_080D50E2:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D50F0
	orrs r1, r3
	str r1, [r4, #8]
	b _080D51DE
_080D50F0:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080D512C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080D5130
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080D5130
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080D51DE
	.align 2, 0
_080D512C: .4byte gUnk_03000510
_080D5130:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5140
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080D5148
_080D5140:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D5148:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080D51DE
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080D516C
	ldr r0, _080D5168 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080D51DE
	.align 2, 0
_080D5168: .4byte 0xFFFBFFFF
_080D516C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080D51DE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080D51DE
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080D51A4
	ldr r2, _080D519C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080D51A0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080D51A6
	.align 2, 0
_080D519C: .4byte gUnk_02023530
_080D51A0: .4byte 0x0000065E
_080D51A4:
	movs r1, #0xff
_080D51A6:
	cmp r1, #0xff
	beq _080D51DE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080D51E4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080D51E8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080D51DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D51E4: .4byte gUnk_02022EB0
_080D51E8: .4byte gUnk_02022F50

	thumb_func_start sub_080D51EC
sub_080D51EC: @ 0x080D51EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5214 @ =sub_080D1780
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5214: .4byte sub_080D1780

	thumb_func_start sub_080D5218
sub_080D5218: @ 0x080D5218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5248 @ =sub_080D1E10
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D524C
	movs r0, #0xc
	b _080D524E
	.align 2, 0
_080D5248: .4byte sub_080D1E10
_080D524C:
	movs r0, #0x14
_080D524E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D526C
sub_080D526C: @ 0x080D526C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D52BC @ =sub_080D2088
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D52BC: .4byte sub_080D2088

	thumb_func_start sub_080D52C0
sub_080D52C0: @ 0x080D52C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080D52F4 @ =sub_080D25DC
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D52F4: .4byte sub_080D25DC

	thumb_func_start sub_080D52F8
sub_080D52F8: @ 0x080D52F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5348 @ =sub_080D2EA8
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5348: .4byte sub_080D2EA8

	thumb_func_start sub_080D534C
sub_080D534C: @ 0x080D534C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D538C @ =sub_080D30D0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D538C: .4byte sub_080D30D0

	thumb_func_start sub_080D5390
sub_080D5390: @ 0x080D5390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080D53C0 @ =sub_080D3380
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D53C0: .4byte sub_080D3380

	thumb_func_start sub_080D53C4
sub_080D53C4: @ 0x080D53C4
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #7
	bhi _080D53F0
	ldr r1, _080D5408 @ =gUnk_08356168
	lsrs r0, r2, #0x19
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D53F0:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D5402
	adds r0, r3, #0
	bl sub_080D540C
_080D5402:
	pop {r0}
	bx r0
	.align 2, 0
_080D5408: .4byte gUnk_08356168

	thumb_func_start sub_080D540C
sub_080D540C: @ 0x080D540C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5454 @ =sub_080D39C8
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5454: .4byte sub_080D39C8

	thumb_func_start sub_080D5458
sub_080D5458: @ 0x080D5458
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D5476
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080D5486
_080D5476:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080D4AF4
	b _080D549E
_080D5486:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D549E
	adds r0, r2, #0
	bl sub_080D4144
_080D549E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D54A4
sub_080D54A4: @ 0x080D54A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D54D4 @ =sub_080D43A8
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D54D4: .4byte sub_080D43A8

	thumb_func_start sub_080D54D8
sub_080D54D8: @ 0x080D54D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5510 @ =sub_080D450C
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5510: .4byte sub_080D450C

	thumb_func_start sub_080D5514
sub_080D5514: @ 0x080D5514
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080D556C @ =gUnk_08356150
	str r1, [r0]
	ldr r2, _080D5570 @ =sub_080D459C
	adds r0, r4, #0
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D556C: .4byte gUnk_08356150
_080D5570: .4byte sub_080D459C

	thumb_func_start sub_080D5574
sub_080D5574: @ 0x080D5574
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080D55C8 @ =sub_080D4800
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D55C8: .4byte sub_080D4800

	thumb_func_start sub_080D55CC
sub_080D55CC: @ 0x080D55CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5614 @ =sub_080D48CC
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5614: .4byte sub_080D48CC

	thumb_func_start sub_080D5618
sub_080D5618: @ 0x080D5618
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0


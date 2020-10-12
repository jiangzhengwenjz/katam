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

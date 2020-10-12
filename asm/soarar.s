	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSoarar
CreateSoarar: @ 0x080AB804
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AB838 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AB83C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AB840
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AB848
	.align 2, 0
_080AB838: .4byte ObjectMain
_080AB83C: .4byte ObjectDestroy
_080AB840:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AB848:
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
	ble _080AB868
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AB870
_080AB868:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AB870:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
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
	bl ObjectInitSprite
	ldr r2, _080AB8D8 @ =gUnk_08351648
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
_080AB8D8: .4byte gUnk_08351648

	thumb_func_start sub_080AB8DC
sub_080AB8DC: @ 0x080AB8DC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AB90E
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	b _080AB916
_080AB90E:
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AB916:
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080AB938
	cmp r0, #1
	ble _080AB930
	cmp r0, #2
	beq _080AB938
	cmp r0, #3
	beq _080AB946
_080AB930:
	adds r0, r2, #0
	bl sub_080ABA40
	b _080AB94C
_080AB938:
	adds r1, r2, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080ABBBC
	b _080AB94C
_080AB946:
	adds r0, r2, #0
	bl sub_080ABDE8
_080AB94C:
	pop {r0}
	bx r0

	thumb_func_start sub_080AB950
sub_080AB950: @ 0x080AB950
	push {lr}
	adds r3, r0, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB96A
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #6
	b _080AB998
_080AB96A:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB97A
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #5
	b _080AB998
_080AB97A:
	cmp r1, #0xf0
	ble _080AB986
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #2
	b _080AB998
_080AB986:
	cmp r1, #0x40
	ble _080AB992
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #1
	b _080AB998
_080AB992:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0
_080AB998:
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB9D4
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080AB9C0 @ =0xFFFFFD80
	cmp r2, r0
	bge _080AB9C8
	ldr r0, _080AB9C4 @ =0x0000FD80
	strh r0, [r1]
	b _080AB9F2
	.align 2, 0
_080AB9C0: .4byte 0xFFFFFD80
_080AB9C4: .4byte 0x0000FD80
_080AB9C8:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r2, r0
	ble _080AB9F2
	strh r0, [r1]
	b _080AB9F2
_080AB9D4:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080AB9F0
	ldr r2, _080ABA18 @ =0xFFFFFD80
	cmp r0, r2
	bge _080AB9F2
_080AB9F0:
	strh r2, [r1]
_080AB9F2:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ABA1C
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080ABA34
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	b _080ABA34
	.align 2, 0
_080ABA18: .4byte 0xFFFFFD80
_080ABA1C:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080ABA34
	strh r2, [r1]
_080ABA34:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABA40
sub_080ABA40: @ 0x080ABA40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _080ABA60 @ =sub_080ABB38
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r7, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #2
	beq _080ABA7C
	cmp r0, #2
	bgt _080ABA64
	cmp r0, #1
	beq _080ABA74
	b _080ABA6C
	.align 2, 0
_080ABA60: .4byte sub_080ABB38
_080ABA64:
	cmp r0, #3
	beq _080ABA84
	cmp r0, #4
	beq _080ABA8C
_080ABA6C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0x30
	b _080ABA92
_080ABA74:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0x40
	b _080ABA92
_080ABA7C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0x60
	b _080ABA92
_080ABA84:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0x80
	b _080ABA92
_080ABA8C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0xa0
_080ABA92:
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xac
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
	lsls r4, r4, #8
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #8
	adds r1, r7, #0
	adds r1, #0xa0
	strh r4, [r1]
	adds r2, r7, #0
	adds r2, #0xa2
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #5
	adds r1, r7, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #5
	subs r2, #0x50
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0x40
	ble _080ABB1C
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #1
	b _080ABB2A
_080ABB1C:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ABB2C
	adds r1, r7, #0
	adds r1, #0x83
	movs r0, #5
_080ABB2A:
	strb r0, [r1]
_080ABB2C:
	movs r0, #0x32
	strh r0, [r7, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABB38
sub_080ABB38: @ 0x080ABB38
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	beq _080ABB5C
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #1
	bne _080ABB52
	strb r3, [r1]
_080ABB52:
	ldrb r0, [r1]
	cmp r0, #5
	bne _080ABB5C
	movs r0, #6
	strb r0, [r1]
_080ABB5C:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ABBB6
	adds r3, r2, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x87
	adds r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x85
	ldrb r1, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhs _080ABB8A
	strb r1, [r3]
_080ABB8A:
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0xa0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2, #4]
_080ABBB6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABBBC
sub_080ABBBC: @ 0x080ABBBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ABBE4 @ =sub_080ABC18
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _080ABBEC
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080ABBE8 @ =0x0000FF80
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #5
	b _080ABBF8
	.align 2, 0
_080ABBE4: .4byte sub_080ABC18
_080ABBE8: .4byte 0x0000FF80
_080ABBEC:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #1
_080ABBF8:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABC10
	rsbs r0, r3, #0
	strh r0, [r2]
_080ABC10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABC18
sub_080ABC18: @ 0x080ABC18
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABC58
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080ABC44 @ =0xFFFFFDC0
	adds r4, r0, #0
	cmp r3, r1
	bge _080ABC4C
	ldr r0, _080ABC48 @ =0x0000FDC0
	strh r0, [r4]
	b _080ABC7C
	.align 2, 0
_080ABC44: .4byte 0xFFFFFDC0
_080ABC48: .4byte 0x0000FDC0
_080ABC4C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r3, r0
	ble _080ABC7C
	strh r0, [r4]
	b _080ABC7C
_080ABC58:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x90
	lsls r3, r3, #2
	adds r4, r1, #0
	cmp r0, r3
	ble _080ABC74
	strh r3, [r4]
	b _080ABC7C
_080ABC74:
	ldr r1, _080ABCC4 @ =0xFFFFFDC0
	cmp r0, r1
	bge _080ABC7C
	strh r1, [r4]
_080ABC7C:
	ldr r0, [r2, #8]
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	beq _080ABC9C
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #1
	bne _080ABC92
	strb r3, [r1]
_080ABC92:
	ldrb r0, [r1]
	cmp r0, #5
	bne _080ABC9C
	movs r0, #6
	strb r0, [r1]
_080ABC9C:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ABCDC
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080ABCC8
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	bge _080ABCDC
	adds r0, r2, #0
	bl sub_080AC33C
	b _080ABCDC
	.align 2, 0
_080ABCC4: .4byte 0xFFFFFDC0
_080ABCC8:
	adds r0, r2, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	ble _080ABCDC
	adds r0, r2, #0
	bl sub_080AC33C
_080ABCDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABCE4
sub_080ABCE4: @ 0x080ABCE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABD24
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r1, #0xa
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080ABD10 @ =0xFFFFFDC0
	adds r2, r0, #0
	cmp r3, r1
	bge _080ABD18
	ldr r0, _080ABD14 @ =0x0000FDC0
	strh r0, [r2]
	b _080ABD48
	.align 2, 0
_080ABD10: .4byte 0xFFFFFDC0
_080ABD14: .4byte 0x0000FDC0
_080ABD18:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r3, r0
	ble _080ABD48
	strh r0, [r2]
	b _080ABD48
_080ABD24:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x90
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080ABD40
	strh r3, [r2]
	b _080ABD48
_080ABD40:
	ldr r1, _080ABD80 @ =0xFFFFFDC0
	cmp r0, r1
	bge _080ABD48
	strh r1, [r2]
_080ABD48:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABD88
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080ABDCA
	adds r0, r4, #0
	bl sub_080ABEAC
	ldr r2, _080ABD84 @ =sub_080ABC18
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080ABDB8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _080ABDBE
	.align 2, 0
_080ABD80: .4byte 0xFFFFFDC0
_080ABD84: .4byte sub_080ABC18
_080ABD88:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080ABDCA
	adds r0, r4, #0
	bl sub_080ABEAC
	ldr r2, _080ABDB4 @ =sub_080ABC18
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080ABDB8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _080ABDBE
	.align 2, 0
_080ABDB4: .4byte sub_080ABC18
_080ABDB8:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
_080ABDBE:
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	b _080ABDE0
_080ABDCA:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080ABDE0
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #9
	bne _080ABDE0
	movs r0, #0xa
	strb r0, [r1]
_080ABDE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABDE8
sub_080ABDE8: @ 0x080ABDE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080ABE0C @ =sub_080ABE40
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _080ABE10
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #5
	b _080ABE16
	.align 2, 0
_080ABE0C: .4byte sub_080ABE40
_080ABE10:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
_080ABE16:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xa8
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABE38
	rsbs r0, r3, #0
	strh r0, [r2]
_080ABE38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABE40
sub_080ABE40: @ 0x080ABE40
	push {lr}
	adds r3, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r3, #0x44]
	cmp r1, r0
	ble _080ABE70
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080ABE68 @ =0xFF600000
	cmp r0, r1
	bge _080ABE86
	ldr r0, _080ABE6C @ =0x0000FF60
	strh r0, [r2]
	b _080ABE86
	.align 2, 0
_080ABE68: .4byte 0xFF600000
_080ABE6C: .4byte 0x0000FF60
_080ABE70:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080ABE86
	movs r0, #0xa0
	strh r0, [r1]
_080ABE86:
	ldr r0, [r3, #8]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080ABEA6
	adds r1, r3, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #1
	bne _080ABE9C
	strb r2, [r1]
_080ABE9C:
	ldrb r0, [r1]
	cmp r0, #5
	bne _080ABEA6
	movs r0, #6
	strb r0, [r1]
_080ABEA6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABEAC
sub_080ABEAC: @ 0x080ABEAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080ABEE0 @ =sub_080AC0A4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080ABEE4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ABEE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080ABEF0
	.align 2, 0
_080ABEE0: .4byte sub_080AC0A4
_080ABEE4: .4byte sub_0803DCCC
_080ABEE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080ABEF0:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r6, #2
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r1, #0
	mov r8, r1
	mov r2, ip
	strh r2, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080ABFF8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080ABF48
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080ABF48:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080ABFFC @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _080AC000 @ =0x0000FD80
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	mov r2, ip
	strh r2, [r0]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080ABF84
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080ABF84:
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
	movs r3, #0xbf
	lsls r3, r3, #2
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080AC004 @ =gUnk_02020EE0
	ldr r0, _080AC008 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080AC010
	ldr r6, _080AC00C @ =0x0000030A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AC014
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080AC014
	.align 2, 0
_080ABFF8: .4byte gUnk_03000510
_080ABFFC: .4byte 0x20000043
_080AC000: .4byte 0x0000FD80
_080AC004: .4byte gUnk_02020EE0
_080AC008: .4byte gUnk_0203AD3C
_080AC00C: .4byte 0x0000030A
_080AC010:
	mov r1, r8
	strb r1, [r5]
_080AC014:
	ldr r1, _080AC08C @ =gUnk_02020EE0
	ldr r0, _080AC090 @ =gUnk_0203AD3C
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
	bne _080AC080
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC040
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AC080
_080AC040:
	ldr r1, _080AC094 @ =gUnk_08D60FA4
	ldr r4, _080AC098 @ =gSongTable
	ldr r2, _080AC09C @ =0x00000A84
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AC066
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AC080
_080AC066:
	cmp r3, #0
	beq _080AC078
	ldr r0, _080AC0A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AC080
_080AC078:
	movs r0, #0xa8
	lsls r0, r0, #1
	bl m4aSongNumStart
_080AC080:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC08C: .4byte gUnk_02020EE0
_080AC090: .4byte gUnk_0203AD3C
_080AC094: .4byte gUnk_08D60FA4
_080AC098: .4byte gSongTable
_080AC09C: .4byte 0x00000A84
_080AC0A0: .4byte gUnk_0203AD10

	thumb_func_start sub_080AC0A4
sub_080AC0A4: @ 0x080AC0A4
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080AC0C4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AC0C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AC0D0
	.align 2, 0
_080AC0C4: .4byte gCurTask
_080AC0C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AC0D0:
	adds r5, r0, #0
	ldr r2, _080AC13C @ =gUnk_02020EE0
	ldr r0, _080AC140 @ =gUnk_0203AD3C
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
	bne _080AC184
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080AC14C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080AC1A8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #2
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080AC144 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080AC148 @ =0x0400000A
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
	b _080AC1A8
	.align 2, 0
_080AC13C: .4byte gUnk_02020EE0
_080AC140: .4byte gUnk_0203AD3C
_080AC144: .4byte 0xFFF7FFFF
_080AC148: .4byte 0x0400000A
_080AC14C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080AC1A8
	movs r0, #2
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080AC17C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080AC180 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080AC1A8
	.align 2, 0
_080AC17C: .4byte 0xFFF7FFFF
_080AC180: .4byte 0x0400000A
_080AC184:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080AC19E
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080AC19E
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080AC19E:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080AC1A8:
	ldr r2, _080AC1EC @ =gUnk_02020EE0
	ldr r0, _080AC1F0 @ =gUnk_0203AD3C
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
	bne _080AC1F8
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC200
	ldr r6, _080AC1F4 @ =0x0000030A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080AC200
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080AC200
	.align 2, 0
_080AC1EC: .4byte gUnk_02020EE0
_080AC1F0: .4byte gUnk_0203AD3C
_080AC1F4: .4byte 0x0000030A
_080AC1F8:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080AC200:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080AC20E
	b _080AC332
_080AC20E:
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x56
	ldr r6, _080AC248 @ =gCurLevelInfo
	cmp r0, #0
	bne _080AC28A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080AC28A
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080AC250
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, _080AC24C @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080AC252
	.align 2, 0
_080AC248: .4byte gCurLevelInfo
_080AC24C: .4byte 0x0000065E
_080AC250:
	movs r1, #0xff
_080AC252:
	cmp r1, #0xff
	beq _080AC28A
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080AC324 @ =gUnk_02022EB0
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
	ldr r2, _080AC328 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080AC28A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080AC2B2
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
_080AC2B2:
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
	bgt _080AC2F4
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080AC2F4
	adds r0, r6, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080AC2F4
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080AC2F4
	adds r0, r5, #0
	bl sub_0806FC70
_080AC2F4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC30A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080AC32C
_080AC30A:
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
	b _080AC332
	.align 2, 0
_080AC324: .4byte gUnk_02022EB0
_080AC328: .4byte gUnk_02022F50
_080AC32C:
	adds r0, r5, #0
	bl sub_0806F8BC
_080AC332:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC33C
sub_080AC33C: @ 0x080AC33C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AC368 @ =sub_080ABCE4
	movs r1, #9
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _080AC370
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080AC36C @ =0x0000FF80
	b _080AC376
	.align 2, 0
_080AC368: .4byte sub_080ABCE4
_080AC36C: .4byte 0x0000FF80
_080AC370:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
_080AC376:
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC380
sub_080AC380: @ 0x080AC380
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC3BE
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #4
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	adds r5, r0, #0
	cmp r2, r1
	bge _080AC3B8
	ldr r0, _080AC3B4 @ =0x0000FF60
	strh r0, [r5]
	b _080AC3E2
	.align 2, 0
_080AC3B4: .4byte 0x0000FF60
_080AC3B8:
	cmp r2, #0xa0
	ble _080AC3E2
	b _080AC3D2
_080AC3BE:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0xa0
	ble _080AC3D8
_080AC3D2:
	movs r0, #0xa0
	strh r0, [r5]
	b _080AC3E2
_080AC3D8:
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080AC3E2
	strh r1, [r5]
_080AC3E2:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _080AC43C
	movs r0, #0x5a
	strh r0, [r4, #4]
	ldr r2, _080AC428 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AC42C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AC430 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC43C
	ldr r2, _080AC434 @ =sub_080ACBEC
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r6, [r5]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _080AC438 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080AC456
	.align 2, 0
_080AC428: .4byte gRngVal
_080AC42C: .4byte 0x00196225
_080AC430: .4byte 0x3C6EF35F
_080AC434: .4byte sub_080ACBEC
_080AC438: .4byte 0xFDFFFFFF
_080AC43C:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AC456
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r5]
_080AC456:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC45C
sub_080AC45C: @ 0x080AC45C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC4A8
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _080AC494 @ =0xFFFFFE60
	adds r4, r0, #0
	cmp r2, r1
	bge _080AC49C
	ldr r0, _080AC498 @ =0x0000FE60
	strh r0, [r4]
	b _080AC4CC
	.align 2, 0
_080AC494: .4byte 0xFFFFFE60
_080AC498: .4byte 0x0000FE60
_080AC49C:
	movs r0, #0xd0
	lsls r0, r0, #1
	cmp r2, r0
	ble _080AC4CC
	strh r0, [r4]
	b _080AC4CC
_080AC4A8:
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080AC4C4
	strh r2, [r4]
	b _080AC4CC
_080AC4C4:
	ldr r1, _080AC4FC @ =0xFFFFFE60
	cmp r0, r1
	bge _080AC4CC
	strh r1, [r4]
_080AC4CC:
	ldrh r0, [r7, #4]
	subs r0, #1
	movs r5, #0
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AC508
	adds r1, r7, #0
	adds r1, #0x82
	movs r0, #7
	strb r0, [r1]
	ldr r2, _080AC500 @ =sub_080ACBEC
	adds r0, r7, #0
	movs r1, #0
	bl ObjectSetFunc
	strh r5, [r4]
	movs r0, #2
	strh r0, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, _080AC504 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r7, #8]
	b _080AC5C2
	.align 2, 0
_080AC4FC: .4byte 0xFFFFFE60
_080AC500: .4byte sub_080ACBEC
_080AC504: .4byte 0xFDFFFFFF
_080AC508:
	adds r0, r7, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _080AC522
	ldr r0, [r7, #8]
	mov r1, sb
	eors r0, r1
	str r0, [r7, #8]
	strh r5, [r4]
_080AC522:
	ldrh r0, [r7, #4]
	movs r5, #7
	ands r5, r0
	cmp r5, #7
	bne _080AC5C2
	ldr r2, _080AC5D0 @ =0x00000293
	adds r0, r7, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r6, r0, #0
	ldr r0, _080AC5D4 @ =gRngVal
	mov r8, r0
	ldr r0, [r0]
	ldr r4, _080AC5D8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r3, _080AC5DC @ =0x3C6EF35F
	adds r1, r1, r3
	lsrs r0, r1, #0x10
	ands r0, r5
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r2, r1, #0
	muls r2, r4, r2
	adds r2, r2, r3
	mov r1, r8
	str r2, [r1]
	lsrs r0, r2, #0x10
	ands r0, r5
	movs r1, #6
	rsbs r1, r1, #0
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x38]
	muls r2, r4, r2
	adds r2, r2, r3
	mov r0, r8
	str r2, [r0]
	lsrs r0, r2, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x20
	strh r0, [r6, #0x3e]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	mov r1, r8
	str r0, [r1]
	lsrs r2, r0, #0x10
	movs r0, #0x7f
	ands r2, r0
	rsbs r0, r2, #0
	strh r0, [r6, #0x3c]
	ldr r0, [r7, #8]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080AC5B6
	ldrh r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r6, #6]
	strh r2, [r6, #0x3c]
	mov r1, ip
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov ip, r0
_080AC5B6:
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
_080AC5C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC5D0: .4byte 0x00000293
_080AC5D4: .4byte gRngVal
_080AC5D8: .4byte 0x00196225
_080AC5DC: .4byte 0x3C6EF35F

	thumb_func_start sub_080AC5E0
sub_080AC5E0: @ 0x080AC5E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080AC664
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AC654
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080AC664
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080AC664
	cmp r0, #0x7a
	bhi _080AC664
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _080AC664
	ldr r0, [r5, #8]
	ldr r1, _080AC648 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	bne _080AC664
	ldr r0, _080AC64C @ =gUnk_083539B4
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xac
	str r5, [r0]
	ldr r2, _080AC650 @ =sub_080AC71C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	b _080AC672
	.align 2, 0
_080AC648: .4byte 0x03800B00
_080AC64C: .4byte gUnk_083539B4
_080AC650: .4byte sub_080AC71C
_080AC654:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _080AC668
_080AC664:
	movs r0, #0
	b _080AC6F0
_080AC668:
	ldr r2, _080AC6F8 @ =sub_080AC824
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
_080AC672:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x2e
	ldrh r0, [r0]
	strh r0, [r4, #4]
	str r5, [r4, #0x6c]
	ldr r1, _080AC6FC @ =gUnk_02020EE0
	ldr r0, _080AC700 @ =gUnk_0203AD3C
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
	bne _080AC6EE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC6B2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AC6EE
_080AC6B2:
	ldr r1, _080AC704 @ =gUnk_08D60FA4
	ldr r4, _080AC708 @ =gSongTable
	ldr r2, _080AC70C @ =0x00000ACC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AC6D6
	ldr r1, _080AC710 @ =0x00000AC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AC6EE
_080AC6D6:
	cmp r3, #0
	beq _080AC6E8
	ldr r0, _080AC714 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AC6EE
_080AC6E8:
	ldr r0, _080AC718 @ =0x00000159
	bl m4aSongNumStart
_080AC6EE:
	movs r0, #1
_080AC6F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC6F8: .4byte sub_080AC824
_080AC6FC: .4byte gUnk_02020EE0
_080AC700: .4byte gUnk_0203AD3C
_080AC704: .4byte gUnk_08D60FA4
_080AC708: .4byte gSongTable
_080AC70C: .4byte 0x00000ACC
_080AC710: .4byte 0x00000AC8
_080AC714: .4byte gUnk_0203AD10
_080AC718: .4byte 0x00000159

	thumb_func_start sub_080AC71C
sub_080AC71C: @ 0x080AC71C
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x6c]
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AC756
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	bne _080AC748
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bne _080AC756
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xa8
	lsls r0, r0, #1
	b _080AC754
_080AC748:
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bne _080AC756
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0xa0
_080AC754:
	strh r0, [r1]
_080AC756:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AC780
	adds r1, r2, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #4
	bne _080AC772
	adds r0, r2, #0
	bl sub_080AC788
	b _080AC780
_080AC772:
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080AC784 @ =gUnk_083539D4
	str r0, [r1]
_080AC780:
	pop {r0}
	bx r0
	.align 2, 0
_080AC784: .4byte gUnk_083539D4

	thumb_func_start sub_080AC788
sub_080AC788: @ 0x080AC788
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AC808 @ =sub_080ACC60
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, _080AC80C @ =gUnk_02020EE0
	ldr r0, _080AC810 @ =gUnk_0203AD3C
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
	bne _080AC800
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC7C0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AC800
_080AC7C0:
	ldr r1, _080AC814 @ =gUnk_08D60FA4
	ldr r4, _080AC818 @ =gSongTable
	ldr r2, _080AC81C @ =0x00000AD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AC7E6
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AC800
_080AC7E6:
	cmp r3, #0
	beq _080AC7F8
	ldr r0, _080AC820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AC800
_080AC7F8:
	movs r0, #0xad
	lsls r0, r0, #1
	bl m4aSongNumStart
_080AC800:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC808: .4byte sub_080ACC60
_080AC80C: .4byte gUnk_02020EE0
_080AC810: .4byte gUnk_0203AD3C
_080AC814: .4byte gUnk_08D60FA4
_080AC818: .4byte gSongTable
_080AC81C: .4byte 0x00000AD4
_080AC820: .4byte gUnk_0203AD10

	thumb_func_start sub_080AC824
sub_080AC824: @ 0x080AC824
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080AC870
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #7
	bne _080AC864
	ldr r2, _080AC85C @ =sub_080ACBEC
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _080AC860 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080AC8C6
	.align 2, 0
_080AC85C: .4byte sub_080ACBEC
_080AC860: .4byte 0xFDFFFFFF
_080AC864:
	cmp r0, #3
	bne _080AC86C
	movs r0, #7
	b _080AC86E
_080AC86C:
	movs r0, #3
_080AC86E:
	strb r0, [r1]
_080AC870:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bne _080AC8C6
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _080AC8C6
	ldr r2, _080AC8B0 @ =0x00000293
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r2, r0, #0
	movs r5, #0x80
	lsls r5, r5, #5
	movs r0, #0x20
	strh r0, [r2, #0x3e]
	movs r3, #0x40
	strh r3, [r2, #0x3c]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC8B4
	rsbs r0, r3, #0
	strh r0, [r2, #0x3c]
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _080AC8BC
	.align 2, 0
_080AC8B0: .4byte 0x00000293
_080AC8B4:
	ldrh r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #6]
_080AC8BC:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
_080AC8C6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC8CC
sub_080AC8CC: @ 0x080AC8CC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080AC8FC @ =sub_080AC9A4
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
	beq _080AC900
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080AC908
	.align 2, 0
_080AC8FC: .4byte sub_080AC9A4
_080AC900:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080AC908:
	adds r0, r4, #0
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
	ldr r0, _080AC9A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080AC956
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080AC956:
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x16
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC9A0: .4byte gUnk_03000510

	thumb_func_start sub_080AC9A4
sub_080AC9A4: @ 0x080AC9A4
	push {r4, r5, r6, lr}
	ldr r0, _080AC9C0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AC9C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AC9CC
	.align 2, 0
_080AC9C0: .4byte gCurTask
_080AC9C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AC9CC:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080ACA20 @ =0x0000FFFF
	cmp r2, r4
	beq _080AC9EE
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080AC9EE
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080AC9EE:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ACAC2
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACA24
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080ACA2C
	.align 2, 0
_080ACA20: .4byte 0x0000FFFF
_080ACA24:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080ACA2C:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080ACAC2
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080ACA50
	ldr r0, _080ACA4C @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080ACAC2
	.align 2, 0
_080ACA4C: .4byte 0xFFFBFFFF
_080ACA50:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080ACAC2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080ACAC2
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080ACA88
	ldr r2, _080ACA80 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080ACA84 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080ACA8A
	.align 2, 0
_080ACA80: .4byte gCurLevelInfo
_080ACA84: .4byte 0x0000065E
_080ACA88:
	movs r1, #0xff
_080ACA8A:
	cmp r1, #0xff
	beq _080ACAC2
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080ACAC8 @ =gUnk_02022EB0
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
	ldr r2, _080ACACC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080ACAC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAC8: .4byte gUnk_02022EB0
_080ACACC: .4byte gUnk_02022F50

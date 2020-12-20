	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateChip
CreateChip: @ 0x080AAAA0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AAAD4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AAAD8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AAADC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AAAE4
	.align 2, 0
_080AAAD4: .4byte ObjectMain
_080AAAD8: .4byte ObjectDestroy
_080AAADC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AAAE4:
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
	ble _080AAB04
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AAB0C
_080AAB04:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AAB0C:
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
	ldr r2, _080AAB70 @ =gUnk_08351648
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
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	beq _080AAB78
	cmp r0, #1
	ble _080AAB64
	cmp r0, #2
	beq _080AAB90
	cmp r0, #3
	beq _080AABA0
_080AAB64:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080AAB74 @ =sub_080AAE80
	b _080AABAA
	.align 2, 0
_080AAB70: .4byte gUnk_08351648
_080AAB74: .4byte sub_080AAE80
_080AAB78:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080AAB8C @ =sub_080AB04C
	b _080AABAA
	.align 2, 0
_080AAB8C: .4byte sub_080AB04C
_080AAB90:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080AAB9C @ =sub_080AAD14
	b _080AABAA
	.align 2, 0
_080AAB9C: .4byte sub_080AAD14
_080AABA0:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080AABB8 @ =sub_080AABBC
_080AABAA:
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AABB8: .4byte sub_080AABBC

	thumb_func_start sub_080AABBC
sub_080AABBC: @ 0x080AABBC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080AAC0C @ =gUnk_03000510
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
	beq _080AABDC
	b _080AAD0C
_080AABDC:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0x1f
	bne _080AABF8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080AABF8:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bhi _080AACF6
	lsls r0, r0, #2
	ldr r1, _080AAC10 @ =_080AAC14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AAC0C: .4byte gUnk_03000510
_080AAC10: .4byte _080AAC14
_080AAC14: @ jump table
	.4byte _080AAC30 @ case 0
	.4byte _080AAC70 @ case 1
	.4byte _080AACDA @ case 2
	.4byte _080AACDA @ case 3
	.4byte _080AACF6 @ case 4
	.4byte _080AACF6 @ case 5
	.4byte _080AAC84 @ case 6
_080AAC30:
	ldrb r0, [r6]
	cmp r0, #0x1e
	bls _080AACF6
	ldr r2, _080AAC64 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AAC68 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AAC6C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080AACF6
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AACC4
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080AACCC
	.align 2, 0
_080AAC64: .4byte gRngVal
_080AAC68: .4byte 0x00196225
_080AAC6C: .4byte 0x3C6EF35F
_080AAC70:
	movs r0, #0x80
	orrs r5, r0
	ldrb r0, [r6]
	cmp r0, #8
	bls _080AACF6
	movs r0, #1
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _080AACF6
_080AAC84:
	ldrb r0, [r6]
	cmp r0, #8
	bne _080AACF6
	ldr r2, _080AACB8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AACBC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AACC0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080AACF6
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AACC4
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080AACCC
	.align 2, 0
_080AACB8: .4byte gRngVal
_080AACBC: .4byte 0x00196225
_080AACC0: .4byte 0x3C6EF35F
_080AACC4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AACCC:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080AACF6
_080AACDA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AACEA
	movs r0, #0x20
	orrs r5, r0
	b _080AACF2
_080AACEA:
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080AACF2:
	movs r0, #1
	orrs r5, r0
_080AACF6:
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
_080AAD0C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AAD14
sub_080AAD14: @ 0x080AAD14
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080AAD6C @ =gUnk_03000510
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
	beq _080AAD34
	b _080AAE78
_080AAD34:
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	beq _080AAD52
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r7]
_080AAD52:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r6, r4, #0
	adds r6, #0x9e
	cmp r0, #6
	bls _080AAD62
	b _080AAE62
_080AAD62:
	lsls r0, r0, #2
	ldr r1, _080AAD70 @ =_080AAD74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AAD6C: .4byte gUnk_03000510
_080AAD70: .4byte _080AAD74
_080AAD74: @ jump table
	.4byte _080AAD90 @ case 0
	.4byte _080AADD0 @ case 1
	.4byte _080AAE42 @ case 2
	.4byte _080AAE42 @ case 3
	.4byte _080AAE62 @ case 4
	.4byte _080AAE62 @ case 5
	.4byte _080AADEA @ case 6
_080AAD90:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x1e
	bls _080AAE62
	ldr r2, _080AADC4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AADC8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AADCC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080AAE62
	ldr r0, [r7]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AAE2C
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080AAE34
	.align 2, 0
_080AADC4: .4byte gRngVal
_080AADC8: .4byte 0x00196225
_080AADCC: .4byte 0x3C6EF35F
_080AADD0:
	movs r0, #0x80
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #8
	bls _080AAE62
	movs r0, #1
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _080AAE62
_080AADEA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #8
	bne _080AAE62
	ldr r2, _080AAE20 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AAE24 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AAE28 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080AAE62
	ldr r0, [r7]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AAE2C
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080AAE34
	.align 2, 0
_080AAE20: .4byte gRngVal
_080AAE24: .4byte 0x00196225
_080AAE28: .4byte 0x3C6EF35F
_080AAE2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AAE34:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080AAE62
_080AAE42:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AAE52
	movs r0, #0x20
	orrs r5, r0
	b _080AAE5A
_080AAE52:
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080AAE5A:
	movs r0, #1
	orrs r5, r0
	adds r6, r4, #0
	adds r6, #0x9e
_080AAE62:
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
_080AAE78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AAE80
sub_080AAE80: @ 0x080AAE80
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080AAED4 @ =gUnk_03000510
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
	beq _080AAEA0
	b _080AB044
_080AAEA0:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0x1f
	bne _080AAEBC
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080AAEBC:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bls _080AAEC8
	b _080AB02E
_080AAEC8:
	lsls r0, r0, #2
	ldr r1, _080AAED8 @ =_080AAEDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AAED4: .4byte gUnk_03000510
_080AAED8: .4byte _080AAEDC
_080AAEDC: @ jump table
	.4byte _080AAEF8 @ case 0
	.4byte _080AAF78 @ case 1
	.4byte _080AB008 @ case 2
	.4byte _080AB008 @ case 3
	.4byte _080AB02E @ case 4
	.4byte _080AB02E @ case 5
	.4byte _080AAF8C @ case 6
_080AAEF8:
	ldrb r0, [r6]
	cmp r0, #0x1e
	bhi _080AAF00
	b _080AB02E
_080AAF00:
	ldr r2, _080AAF30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AAF34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AAF38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _080AAF1A
	b _080AB02E
_080AAF1A:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AAF3C
	ldr r0, [r4, #8]
	orrs r0, r2
	b _080AAF44
	.align 2, 0
_080AAF30: .4byte gRngVal
_080AAF34: .4byte 0x00196225
_080AAF38: .4byte 0x3C6EF35F
_080AAF3C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AAF44:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _080AAF6C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AAF70 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AAF74 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	b _080AB02E
	.align 2, 0
_080AAF6C: .4byte gRngVal
_080AAF70: .4byte 0x00196225
_080AAF74: .4byte 0x3C6EF35F
_080AAF78:
	movs r0, #0x80
	orrs r5, r0
	ldrb r0, [r6]
	cmp r0, #8
	bls _080AB02E
	movs r0, #1
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _080AB02E
_080AAF8C:
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	ldrb r1, [r6]
	adds r7, r0, #0
	cmp r1, #8
	bne _080AB02E
	ldr r2, _080AAFC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AAFCC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AAFD0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080AB02E
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AAFD4
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080AAFDC
	.align 2, 0
_080AAFC8: .4byte gRngVal
_080AAFCC: .4byte 0x00196225
_080AAFD0: .4byte 0x3C6EF35F
_080AAFD4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AAFDC:
	str r0, [r4, #8]
	ldr r1, [r2]
	ldr r0, _080AB000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AB004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080AB02E
	.align 2, 0
_080AB000: .4byte 0x00196225
_080AB004: .4byte 0x3C6EF35F
_080AB008:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB02A
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB022
	movs r0, #0x20
	orrs r5, r0
	b _080AB02A
_080AB022:
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080AB02A:
	movs r0, #1
	orrs r5, r0
_080AB02E:
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
_080AB044:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AB04C
sub_080AB04C: @ 0x080AB04C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r6, #0
	ldr r0, _080AB0A0 @ =gUnk_03000510
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
	beq _080AB076
	b _080AB362
_080AB076:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	str r1, [sp, #4]
	movs r2, #0x9d
	adds r2, r2, r4
	mov sl, r2
	adds r3, r4, #0
	adds r3, #0x9c
	str r3, [sp]
	cmp r0, #6
	bls _080AB094
	b _080AB34E
_080AB094:
	lsls r0, r0, #2
	ldr r1, _080AB0A4 @ =_080AB0A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AB0A0: .4byte gUnk_03000510
_080AB0A4: .4byte _080AB0A8
_080AB0A8: @ jump table
	.4byte _080AB0C4 @ case 0
	.4byte _080AB1D4 @ case 1
	.4byte _080AB318 @ case 2
	.4byte _080AB318 @ case 3
	.4byte _080AB34E @ case 4
	.4byte _080AB34E @ case 5
	.4byte _080AB1FA @ case 6
_080AB0C4:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	str r0, [sp, #4]
	movs r0, #0x9d
	adds r0, r0, r4
	mov sl, r0
	adds r2, r4, #0
	adds r2, #0x9c
	str r2, [sp]
	cmp r1, #0x1e
	bhi _080AB0DE
	b _080AB34E
_080AB0DE:
	ldr r5, _080AB15C @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080AB160 @ =0x00196225
	muls r0, r7, r0
	ldr r3, _080AB164 @ =0x3C6EF35F
	mov sb, r3
	add r0, sb
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _080AB0FC
	b _080AB34E
_080AB0FC:
	adds r0, r4, #0
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, [r5]
	muls r0, r7, r0
	ldr r3, _080AB164 @ =0x3C6EF35F
	adds r2, r0, r3
	str r2, [r5]
	lsrs r0, r2, #0x10
	mov r1, r8
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	movs r0, #0x81
	ands r0, r6
	cmp r0, #0
	bne _080AB126
	b _080AB34E
_080AB126:
	adds r1, #0x1b
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r1, #0
	cmp r0, #1
	beq _080AB168
	cmp r0, #2
	beq _080AB198
	adds r0, r2, #0
	muls r0, r7, r0
	add r0, sb
	str r0, [r5]
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080AB150
	b _080AB34E
_080AB150:
	ldr r0, [r4, #8]
	eors r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r3]
	b _080AB34E
	.align 2, 0
_080AB15C: .4byte gRngVal
_080AB160: .4byte 0x00196225
_080AB164: .4byte 0x3C6EF35F
_080AB168:
	adds r0, r2, #0
	muls r0, r7, r0
	add r0, sb
	str r0, [r5]
	lsrs r1, r0, #0x10
	movs r2, #0
	ldr r0, _080AB194 @ =0x00001999
	cmp r1, r0
	bge _080AB17C
	b _080AB2C6
_080AB17C:
	adds r5, r0, #0
_080AB17E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bls _080AB18A
	b _080AB2C6
_080AB18A:
	adds r0, r2, #1
	muls r0, r5, r0
	cmp r1, r0
	bge _080AB17E
	b _080AB2C6
	.align 2, 0
_080AB194: .4byte 0x00001999
_080AB198:
	adds r0, r2, #0
	muls r0, r7, r0
	add r0, sb
	str r0, [r5]
	lsrs r2, r0, #0x10
	ldr r0, _080AB1CC @ =0x00005554
	cmp r2, r0
	bls _080AB1B8
	ldr r0, _080AB1D0 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080AB1B2
	movs r1, #1
_080AB1B2:
	cmp r1, #0
	beq _080AB1B8
	b _080AB34E
_080AB1B8:
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r3]
	movs r2, #0x9d
	adds r2, r2, r4
	mov sl, r2
	b _080AB34A
	.align 2, 0
_080AB1CC: .4byte 0x00005554
_080AB1D0: .4byte 0x0000AAA9
_080AB1D4:
	movs r0, #0x80
	orrs r6, r0
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	str r0, [sp, #4]
	movs r3, #0x9d
	adds r3, r3, r4
	mov sl, r3
	adds r4, #0x9c
	str r4, [sp]
	cmp r1, #8
	bhi _080AB1F0
	b _080AB34E
_080AB1F0:
	movs r0, #1
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	b _080AB34E
_080AB1FA:
	adds r3, r4, #0
	adds r3, #0x85
	movs r0, #0
	mov sb, r0
	mov r1, sb
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	str r0, [sp, #4]
	movs r2, #0x9d
	adds r2, r2, r4
	mov sl, r2
	subs r0, #2
	str r0, [sp]
	cmp r1, #8
	beq _080AB21E
	b _080AB34E
_080AB21E:
	ldr r5, _080AB294 @ =gRngVal
	ldr r0, [r5]
	ldr r7, _080AB298 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _080AB29C @ =0x3C6EF35F
	mov r8, r1
	adds r1, r0, r1
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _080AB23A
	b _080AB34E
_080AB23A:
	adds r0, r1, #0
	muls r0, r7, r0
	ldr r1, _080AB29C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	str r2, [sp, #8]
	bl sub_080AB78C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #0x81
	ands r0, r6
	ldr r2, [sp, #8]
	cmp r0, #0
	beq _080AB34E
	adds r1, r4, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r1, #0
	cmp r0, #1
	beq _080AB2A0
	cmp r0, #2
	beq _080AB2DC
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080AB34E
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
	mov r0, sb
	strh r0, [r3]
	b _080AB34E
	.align 2, 0
_080AB294: .4byte gRngVal
_080AB298: .4byte 0x00196225
_080AB29C: .4byte 0x3C6EF35F
_080AB2A0:
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	lsrs r1, r0, #0x10
	movs r2, #0
	ldr r0, _080AB2D8 @ =0x00001999
	cmp r1, r0
	blt _080AB2C6
	adds r5, r0, #0
_080AB2B4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bhi _080AB2C6
	adds r0, r2, #1
	muls r0, r5, r0
	cmp r1, r0
	bge _080AB2B4
_080AB2C6:
	cmp r2, #0
	bne _080AB34E
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	strh r2, [r3]
	b _080AB34E
	.align 2, 0
_080AB2D8: .4byte 0x00001999
_080AB2DC:
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, r8
	str r0, [r5]
	lsrs r2, r0, #0x10
	ldr r0, _080AB310 @ =0x00005554
	cmp r2, r0
	bls _080AB2FA
	ldr r0, _080AB314 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080AB2F6
	movs r1, #1
_080AB2F6:
	cmp r1, #0
	bne _080AB34E
_080AB2FA:
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r3]
	movs r1, #0x9d
	adds r1, r1, r4
	mov sl, r1
	b _080AB34A
	.align 2, 0
_080AB310: .4byte 0x00005554
_080AB314: .4byte 0x0000AAA9
_080AB318:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB33A
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB332
	movs r0, #0x20
	orrs r6, r0
	b _080AB33A
_080AB332:
	movs r0, #0x10
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_080AB33A:
	movs r0, #1
	orrs r6, r0
	adds r2, r4, #0
	adds r2, #0x9e
	str r2, [sp, #4]
	movs r3, #0x9d
	adds r3, r3, r4
	mov sl, r3
_080AB34A:
	adds r4, #0x9c
	str r4, [sp]
_080AB34E:
	mov r1, sl
	ldrb r0, [r1]
	strb r6, [r1]
	bics r6, r0
	ldr r2, [sp]
	strb r6, [r2]
	ldr r3, [sp, #4]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080AB362:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AB374
sub_080AB374: @ 0x080AB374
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	movs r4, #0
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080AB3A4
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AB3B2
	b _080AB3B0
_080AB3A4:
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AB3B2
_080AB3B0:
	strh r4, [r1]
_080AB3B2:
	adds r1, r2, #0
	adds r1, #0x9d
	ldrb r3, [r1]
	movs r0, #0x20
	ands r0, r3
	adds r4, r1, #0
	cmp r0, #0
	beq _080AB3CA
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	b _080AB3DA
_080AB3CA:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080AB3DC
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AB3DA:
	str r0, [r2, #8]
_080AB3DC:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB3EE
	adds r0, r2, #0
	bl sub_080AB4F8
	b _080AB422
_080AB3EE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080AB3FE
	adds r0, r2, #0
	bl sub_080AB754
	b _080AB422
_080AB3FE:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB40E
	adds r0, r2, #0
	bl sub_080AB734
	b _080AB422
_080AB40E:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AB422
	adds r0, r2, #0
	bl sub_080AB4F8
_080AB422:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AB428
sub_080AB428: @ 0x080AB428
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080AB448
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AB458
	b _080AB454
_080AB448:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AB458
_080AB454:
	movs r0, #0
	strh r0, [r1]
_080AB458:
	adds r0, r3, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	beq _080AB46E
	adds r0, r3, #0
	bl sub_080AB4F8
	b _080AB498
_080AB46E:
	adds r0, r3, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AB484
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	b _080AB486
_080AB484:
	strh r2, [r3, #4]
_080AB486:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #4
	ble _080AB498
	ldr r2, _080AB4A0 @ =sub_080AB374
	adds r0, r3, #0
	movs r1, #0
	bl ObjectSetFunc
_080AB498:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB4A0: .4byte sub_080AB374

	thumb_func_start sub_080AB4A4
sub_080AB4A4: @ 0x080AB4A4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	adds r0, #1
	movs r4, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080AB4CC
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AB4DA
	b _080AB4D8
_080AB4CC:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AB4DA
_080AB4D8:
	strh r4, [r1]
_080AB4DA:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #8
	ble _080AB4EC
	ldr r2, _080AB4F4 @ =sub_080AB374
	adds r0, r3, #0
	movs r1, #0
	bl ObjectSetFunc
_080AB4EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB4F4: .4byte sub_080AB374

	thumb_func_start sub_080AB4F8
sub_080AB4F8: @ 0x080AB4F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AB53C
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AB532
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AB53C
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2]
	b _080AB53C
_080AB532:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
_080AB53C:
	ldr r2, _080AB5D4 @ =sub_080AB5F8
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r1, r0
	bne _080AB55E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
_080AB55E:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _080AB5D8 @ =gKirbys
	ldr r0, _080AB5DC @ =gUnk_0203AD3C
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
	bne _080AB5CE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AB592
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080AB5CE
_080AB592:
	ldr r1, _080AB5E0 @ =gUnk_08D60FA4
	ldr r4, _080AB5E4 @ =gSongTable
	ldr r2, _080AB5E8 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080AB5B6
	ldr r1, _080AB5EC @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080AB5CE
_080AB5B6:
	cmp r3, #0
	beq _080AB5C8
	ldr r0, _080AB5F0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AB5CE
_080AB5C8:
	ldr r0, _080AB5F4 @ =0x00000145
	bl m4aSongNumStart
_080AB5CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB5D4: .4byte sub_080AB5F8
_080AB5D8: .4byte gKirbys
_080AB5DC: .4byte gUnk_0203AD3C
_080AB5E0: .4byte gUnk_08D60FA4
_080AB5E4: .4byte gSongTable
_080AB5E8: .4byte 0x00000A2C
_080AB5EC: .4byte 0x00000A28
_080AB5F0: .4byte gUnk_0203AD10
_080AB5F4: .4byte 0x00000145

	thumb_func_start sub_080AB5F8
sub_080AB5F8: @ 0x080AB5F8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AB61A
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AB61A:
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r3, #0
	adds r2, #0x52
	movs r0, #0x9d
	adds r0, r0, r3
	mov ip, r0
	cmp r1, #3
	beq _080AB648
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xb
	ble _080AB648
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080AB648
	movs r0, #0xb
	strh r0, [r2]
_080AB648:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB658
	movs r0, #5
	b _080AB65E
_080AB658:
	cmp r1, #0x3f
	bgt _080AB660
	movs r0, #4
_080AB65E:
	strb r0, [r5]
_080AB660:
	mov r1, ip
	ldrb r0, [r1]
	movs r4, #0x30
	ands r4, r0
	cmp r4, #0
	beq _080AB6C8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB6A4
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080AB690 @ =0xFFFFFEC0
	cmp r2, r0
	bge _080AB698
	ldr r0, _080AB694 @ =0x0000FEC0
	strh r0, [r1]
	b _080AB6F2
	.align 2, 0
_080AB690: .4byte 0xFFFFFEC0
_080AB694: .4byte 0x0000FEC0
_080AB698:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r2, r0
	ble _080AB6F2
	strh r0, [r1]
	b _080AB6F2
_080AB6A4:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080AB6C0
	ldr r2, _080AB6C4 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080AB6F2
_080AB6C0:
	strh r2, [r1]
	b _080AB6F2
	.align 2, 0
_080AB6C4: .4byte 0xFFFFFEC0
_080AB6C8:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080AB6E4
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080AB6F2
	b _080AB6F0
_080AB6E4:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080AB6F2
_080AB6F0:
	strh r4, [r1]
_080AB6F2:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AB714
	ldr r0, [r3, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080AB71C @ =sub_080AB4A4
	adds r0, r3, #0
	movs r1, #6
	bl ObjectSetFunc
_080AB714:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB71C: .4byte sub_080AB4A4

	thumb_func_start sub_080AB720
sub_080AB720: @ 0x080AB720
	push {lr}
	ldr r2, _080AB730 @ =sub_080AB374
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080AB730: .4byte sub_080AB374

	thumb_func_start sub_080AB734
sub_080AB734: @ 0x080AB734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AB750 @ =sub_080AB428
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB750: .4byte sub_080AB428

	thumb_func_start sub_080AB754
sub_080AB754: @ 0x080AB754
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AB788 @ =sub_080AB5F8
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AB778
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
_080AB778:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB788: .4byte sub_080AB5F8

	thumb_func_start sub_080AB78C
sub_080AB78C: @ 0x080AB78C
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r2, _080AB7B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AB7B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AB7BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080AB7FA
	lsls r0, r1, #2
	ldr r1, _080AB7C0 @ =_080AB7C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AB7B4: .4byte gRngVal
_080AB7B8: .4byte 0x00196225
_080AB7BC: .4byte 0x3C6EF35F
_080AB7C0: .4byte _080AB7C4
_080AB7C4: @ jump table
	.4byte _080AB7E4 @ case 0
	.4byte _080AB7E4 @ case 1
	.4byte _080AB7E4 @ case 2
	.4byte _080AB7E4 @ case 3
	.4byte _080AB7F4 @ case 4
	.4byte _080AB7F4 @ case 5
	.4byte _080AB7F8 @ case 6
	.4byte _080AB7F8 @ case 7
_080AB7E4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	movs r3, #0x10
	cmp r0, #0
	beq _080AB7FA
	movs r3, #0x20
	b _080AB7FA
_080AB7F4:
	movs r3, #1
	b _080AB7FA
_080AB7F8:
	movs r3, #0x80
_080AB7FA:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

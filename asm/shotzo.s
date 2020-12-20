	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateShotzo
CreateShotzo: @ 0x0811A740
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811A774 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811A778 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811A77C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811A784
	.align 2, 0
_0811A774: .4byte ObjectMain
_0811A778: .4byte ObjectDestroy
_0811A77C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811A784:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r1, r5, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	subs r1, #0x25
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #3
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
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0811A80E
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0811A804
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811A80C
_0811A804:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0811A80C:
	str r0, [r5, #8]
_0811A80E:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bne _0811A842
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0811A830
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811A838
_0811A830:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0811A838:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0811B400
	b _0811A85C
_0811A842:
	ldr r2, _0811A870 @ =gUnk_08351648
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
_0811A85C:
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
_0811A870: .4byte gUnk_08351648

	thumb_func_start sub_0811A874
sub_0811A874: @ 0x0811A874
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0811A88E
	cmp r0, #4
	beq _0811A88E
	adds r0, r3, #0
	bl sub_0811A9D4
	b _0811A8CC
_0811A88E:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811A8AC
	cmp r0, #1
	bgt _0811A8A2
	cmp r0, #0
	beq _0811A8A8
	b _0811A8B4
_0811A8A2:
	cmp r0, #2
	beq _0811A8B0
	b _0811A8B4
_0811A8A8:
	movs r0, #0x50
	b _0811A8B6
_0811A8AC:
	movs r0, #0x3c
	b _0811A8B6
_0811A8B0:
	movs r0, #0x28
	b _0811A8B6
_0811A8B4:
	movs r0, #0x14
_0811A8B6:
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _0811A8D0 @ =sub_0811A8D4
	str r0, [r3, #0x78]
_0811A8CC:
	pop {r0}
	bx r0
	.align 2, 0
_0811A8D0: .4byte sub_0811A8D4

	thumb_func_start sub_0811A8D4
sub_0811A8D4: @ 0x0811A8D4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811A8EA
	adds r0, r4, #0
	bl sub_0811AB74
_0811A8EA:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #2
	bne _0811A92C
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0811A92C
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _0811A924
	cmp r1, #2
	beq _0811A91A
	movs r0, #1
	b _0811A926
_0811A91A:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0811A924:
	movs r0, #3
_0811A926:
	strb r0, [r2]
	movs r0, #0
	strb r0, [r3]
_0811A92C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811A934
sub_0811A934: @ 0x0811A934
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _0811A9BA
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811A96C
	cmp r0, #1
	bgt _0811A95C
	cmp r0, #0
	beq _0811A962
	b _0811A99C
_0811A95C:
	cmp r0, #3
	beq _0811A974
	b _0811A99C
_0811A962:
	ldr r2, _0811A968 @ =gUnk_08357C14
	b _0811A976
	.align 2, 0
_0811A968: .4byte gUnk_08357C14
_0811A96C:
	ldr r2, _0811A970 @ =gUnk_08357C24
	b _0811A976
	.align 2, 0
_0811A970: .4byte gUnk_08357C24
_0811A974:
	ldr r2, _0811A9D0 @ =gUnk_08357C34
_0811A976:
	lsrs r0, r1, #0x19
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x54
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
_0811A99C:
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811A9BA
	adds r1, r3, #0
	adds r1, #0x54
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_0811A9BA:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811A9CC
	adds r0, r3, #0
	bl sub_0811A874
_0811A9CC:
	pop {r0}
	bx r0
	.align 2, 0
_0811A9D0: .4byte gUnk_08357C34

	thumb_func_start sub_0811A9D4
sub_0811A9D4: @ 0x0811A9D4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	beq _0811A9EE
	cmp r1, #2
	beq _0811A9FA
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #1
	b _0811AA00
_0811A9EE:
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, [r3, #8]
	orrs r0, r1
	b _0811AA0A
_0811A9FA:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #3
_0811AA00:
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0811AA0A:
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	movs r0, #0x64
	strh r0, [r3, #4]
	ldr r0, _0811AA28 @ =sub_0811B3E4
	str r0, [r3, #0x78]
	pop {r0}
	bx r0
	.align 2, 0
_0811AA28: .4byte sub_0811B3E4

	thumb_func_start sub_0811AA2C
sub_0811AA2C: @ 0x0811AA2C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AA50
	cmp r0, #1
	bgt _0811AA42
	cmp r0, #0
	beq _0811AA4C
	b _0811AA5C
_0811AA42:
	cmp r0, #2
	beq _0811AA54
	cmp r0, #3
	beq _0811AA58
	b _0811AA5C
_0811AA4C:
	movs r0, #0x32
	b _0811AA5E
_0811AA50:
	movs r0, #0x28
	b _0811AA5E
_0811AA54:
	movs r0, #0x1e
	b _0811AA5E
_0811AA58:
	movs r0, #0x16
	b _0811AA5E
_0811AA5C:
	movs r0, #0x11
_0811AA5E:
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, _0811AA7C @ =sub_0811AA80
	str r0, [r2, #0x78]
	adds r0, r2, #0
	bl sub_0811AEDC
	pop {r0}
	bx r0
	.align 2, 0
_0811AA7C: .4byte sub_0811AA80

	thumb_func_start sub_0811AA80
sub_0811AA80: @ 0x0811AA80
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _0811AB06
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AAB8
	cmp r0, #1
	bgt _0811AAA8
	cmp r0, #0
	beq _0811AAAE
	b _0811AAE8
_0811AAA8:
	cmp r0, #3
	beq _0811AAC0
	b _0811AAE8
_0811AAAE:
	ldr r2, _0811AAB4 @ =gUnk_08357C14
	b _0811AAC2
	.align 2, 0
_0811AAB4: .4byte gUnk_08357C14
_0811AAB8:
	ldr r2, _0811AABC @ =gUnk_08357C24
	b _0811AAC2
	.align 2, 0
_0811AABC: .4byte gUnk_08357C24
_0811AAC0:
	ldr r2, _0811AB34 @ =gUnk_08357C34
_0811AAC2:
	lsrs r0, r1, #0x19
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x54
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
_0811AAE8:
	adds r1, r3, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811AB06
	adds r1, r3, #0
	adds r1, #0x54
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_0811AB06:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811AB70
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0811AB38
	adds r0, r3, #0
	bl sub_0811A9D4
	b _0811AB70
	.align 2, 0
_0811AB34: .4byte gUnk_08357C34
_0811AB38:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AB5A
	cmp r0, #1
	bgt _0811AB4C
	cmp r0, #0
	beq _0811AB56
	b _0811AB66
_0811AB4C:
	cmp r0, #2
	beq _0811AB5E
	cmp r0, #3
	beq _0811AB62
	b _0811AB66
_0811AB56:
	movs r0, #0x32
	b _0811AB68
_0811AB5A:
	movs r0, #0x28
	b _0811AB68
_0811AB5E:
	movs r0, #0x1e
	b _0811AB68
_0811AB62:
	movs r0, #0x16
	b _0811AB68
_0811AB66:
	movs r0, #0x11
_0811AB68:
	strh r0, [r3, #4]
	adds r0, r3, #0
	bl sub_0811AEDC
_0811AB70:
	pop {r0}
	bx r0

	thumb_func_start sub_0811AB74
sub_0811AB74: @ 0x0811AB74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
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
	bls _0811ABA6
	b _0811AECE
_0811ABA6:
	lsls r0, r0, #2
	ldr r1, _0811ABB0 @ =_0811ABB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811ABB0: .4byte _0811ABB4
_0811ABB4: @ jump table
	.4byte _0811ADBA @ case 0
	.4byte _0811AE4A @ case 1
	.4byte _0811AE4A @ case 2
	.4byte _0811AE4A @ case 3
	.4byte _0811AE8C @ case 4
	.4byte _0811AE8C @ case 5
	.4byte _0811AE8C @ case 6
	.4byte _0811ABF4 @ case 7
	.4byte _0811ABF4 @ case 8
	.4byte _0811AC6A @ case 9
	.4byte _0811AC6A @ case 10
	.4byte _0811ACE0 @ case 11
	.4byte _0811ACE0 @ case 12
	.4byte _0811AD36 @ case 13
	.4byte _0811AD36 @ case 14
	.4byte _0811ADBA @ case 15
_0811ABF4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r5, [r0]
	adds r3, r0, #0
	cmp r5, #0
	bne _0811AC40
	ldr r1, [r4, #8]
	movs r5, #1
	adds r0, r1, #0
	ands r0, r5
	adds r2, r1, #0
	cmp r0, #0
	beq _0811AC50
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _0811AC1A
	b _0811AD7C
_0811AC1A:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AC38
	cmp r0, #1
	bgt _0811AC2E
	cmp r0, #0
	beq _0811AC34
	b _0811ADFE
_0811AC2E:
	cmp r0, #2
	beq _0811AC3C
	b _0811ADFE
_0811AC34:
	movs r0, #0x50
	b _0811AE00
_0811AC38:
	movs r0, #0x3c
	b _0811AE00
_0811AC3C:
	movs r0, #0x28
	b _0811AE00
_0811AC40:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0811AC50
	subs r0, r5, #1
	b _0811AE32
_0811AC50:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0811AC58
	b _0811AE30
_0811AC58:
	movs r1, #1
	orrs r2, r1
	str r2, [r4, #8]
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	b _0811AEC6
_0811AC6A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r5, [r0]
	adds r6, r5, #0
	adds r3, r0, #0
	cmp r6, #1
	bne _0811ACB8
	ldr r1, [r4, #8]
	adds r0, r1, #0
	ands r0, r6
	adds r2, r1, #0
	cmp r0, #0
	beq _0811ACD8
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811ACB4
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811ACAC
	cmp r0, #1
	bgt _0811ACA2
	cmp r0, #0
	beq _0811ACA8
	b _0811ADFE
_0811ACA2:
	cmp r0, #2
	beq _0811ACB0
	b _0811ADFE
_0811ACA8:
	movs r0, #0x50
	b _0811AE00
_0811ACAC:
	movs r0, #0x3c
	b _0811AE00
_0811ACB0:
	movs r0, #0x28
	b _0811AE00
_0811ACB4:
	strb r6, [r1]
	b _0811AECE
_0811ACB8:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0811ACD8
	cmp r6, #0
	bne _0811ACD4
	adds r0, r5, #1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x85
	strb r6, [r0]
	b _0811AECE
_0811ACD4:
	subs r0, r5, #1
	b _0811AE32
_0811ACD8:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0811AC58
	b _0811AE30
_0811ACE0:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r3, r0, #0
	cmp r2, #3
	bne _0811AD2A
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0811ACF8
	b _0811AE2A
_0811ACF8:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	bne _0811AD04
	b _0811AE1C
_0811AD04:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AD22
	cmp r0, #1
	bgt _0811AD18
	cmp r0, #0
	beq _0811AD1E
	b _0811ADFE
_0811AD18:
	cmp r0, #2
	beq _0811AD26
	b _0811ADFE
_0811AD1E:
	movs r0, #0x50
	b _0811AE00
_0811AD22:
	movs r0, #0x3c
	b _0811AE00
_0811AD26:
	movs r0, #0x28
	b _0811AE00
_0811AD2A:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0811ADAE
	b _0811AE2A
_0811AD36:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r2, [r0]
	adds r5, r2, #0
	adds r3, r0, #0
	cmp r5, #1
	bne _0811AD80
	ldr r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _0811AE2A
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811AD7C
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811AD74
	cmp r0, #1
	bgt _0811AD6A
	cmp r0, #0
	beq _0811AD70
	b _0811ADFE
_0811AD6A:
	cmp r0, #2
	beq _0811AD78
	b _0811ADFE
_0811AD70:
	movs r0, #0x50
	b _0811AE00
_0811AD74:
	movs r0, #0x3c
	b _0811AE00
_0811AD78:
	movs r0, #0x28
	b _0811AE00
_0811AD7C:
	strb r5, [r1]
	b _0811AECE
_0811AD80:
	ldr r1, [r4, #8]
	movs r6, #1
	ands r1, r6
	cmp r1, #0
	bne _0811AE2A
	cmp r5, #3
	bne _0811ADAE
	subs r0, r2, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0811AD9C
	b _0811AEC6
_0811AD9C:
	adds r0, r4, #0
	adds r0, #0x9f
	strb r6, [r0]
	b _0811AEC6
_0811ADA4:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #2
	strb r0, [r1]
	b _0811AE32
_0811ADAE:
	adds r0, r2, #1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	b _0811AECE
_0811ADBA:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r2, [r1]
	adds r3, r1, #0
	cmp r2, #0
	bne _0811AE20
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0811AE2A
	adds r1, #2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811AE1C
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0811ADF6
	cmp r0, #1
	bgt _0811ADEC
	cmp r0, #0
	beq _0811ADF2
	b _0811ADFE
_0811ADEC:
	cmp r0, #2
	beq _0811ADFA
	b _0811ADFE
_0811ADF2:
	movs r0, #0x50
	b _0811AE00
_0811ADF6:
	movs r0, #0x3c
	b _0811AE00
_0811ADFA:
	movs r0, #0x28
	b _0811AE00
_0811ADFE:
	movs r0, #0x14
_0811AE00:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0811AE18 @ =sub_0811A934
	str r0, [r4, #0x78]
	adds r0, r4, #0
	bl sub_0811AEDC
	b _0811AED4
	.align 2, 0
_0811AE18: .4byte sub_0811A934
_0811AE1C:
	strb r2, [r1]
	b _0811AECE
_0811AE20:
	ldr r0, [r4, #8]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0811AE36
_0811AE2A:
	ldrb r0, [r3]
	cmp r0, #1
	beq _0811ADA4
_0811AE30:
	adds r0, #1
_0811AE32:
	strb r0, [r3]
	b _0811AEC6
_0811AE36:
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0811AEC6
	adds r0, r4, #0
	adds r0, #0x9f
	strb r5, [r0]
	b _0811AEC6
_0811AE4A:
	ldr r0, [r4, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0811AE70
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #1
	bne _0811AE6A
	adds r2, r4, #0
	adds r2, #0x9f
	movs r0, #2
	strb r0, [r2]
	strb r0, [r1]
	b _0811AEC6
_0811AE6A:
	adds r0, #1
	strb r0, [r1]
	b _0811AEC6
_0811AE70:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811AE7E
	subs r0, #1
	strb r0, [r1]
_0811AE7E:
	ldrb r0, [r1]
	cmp r0, #2
	bne _0811AEC6
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	b _0811AEC6
_0811AE8C:
	ldr r1, [r4, #8]
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0811AEA8
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811AEC6
	subs r0, #1
	strb r0, [r1]
	b _0811AEC6
_0811AEA8:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #3
	bne _0811AEC2
	orrs r1, r3
	str r1, [r4, #8]
	movs r0, #2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	b _0811AEC6
_0811AEC2:
	adds r0, #1
	strb r0, [r2]
_0811AEC6:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_0811AECE:
	adds r0, r4, #0
	bl sub_0811A874
_0811AED4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811AEDC
sub_0811AEDC: @ 0x0811AEDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r1, _0811AF28 @ =gCurLevelInfo
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r2, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x54
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r0, [r0]
	cmp r1, r0
	blt _0811AF02
	b _0811B1AC
_0811AF02:
	movs r4, #0
	ldr r1, _0811AF2C @ =gUnk_020229D4
	movs r6, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r6
	mov ip, r3
	ldr r7, _0811AF30 @ =gUnk_020229E0
	movs r3, #0x87
	adds r3, r3, r5
	mov r8, r3
	movs r3, #0x83
	adds r3, r3, r5
	mov sb, r3
	cmp r0, #0
	bne _0811AF34
	orrs r2, r6
	b _0811AF4E
	.align 2, 0
_0811AF28: .4byte gCurLevelInfo
_0811AF2C: .4byte gUnk_020229D4
_0811AF30: .4byte gUnk_020229E0
_0811AF34:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0811AF50
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0811AF34
	orrs r2, r3
_0811AF4E:
	str r2, [r1]
_0811AF50:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r4, #0
	movs r7, #1
	strb r7, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r6, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r6, [r1, #4]
	strb r6, [r1, #5]
	movs r0, #0xd7
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r6, [r1, #0xf]
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1, #0x10]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strb r6, [r1, #0x11]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x18]
	mov r3, ip
	ldrb r0, [r3]
	bl CreateObject
	str r5, [r0, #0x70]
	adds r3, r0, #0
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _0811AFB6
	ldr r0, [r3, #8]
	orrs r0, r7
	str r0, [r3, #8]
_0811AFB6:
	mov r0, sb
	ldrb r1, [r0]
	cmp r1, #1
	beq _0811B05E
	cmp r1, #1
	bgt _0811AFC8
	cmp r1, #0
	beq _0811AFD0
	b _0811B15A
_0811AFC8:
	cmp r1, #3
	bne _0811AFCE
	b _0811B0DE
_0811AFCE:
	b _0811B15A
_0811AFD0:
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _0811AFE4
	ldr r0, [r3, #0x40]
	ldr r1, _0811AFE0 @ =0xFFFFF400
	adds r0, r0, r1
	b _0811AFEC
	.align 2, 0
_0811AFE0: .4byte 0xFFFFF400
_0811AFE4:
	ldr r0, [r3, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r0, r2
_0811AFEC:
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #0x44]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #1
	beq _0811B024
	cmp r2, #1
	bgt _0811B00A
	cmp r2, #0
	beq _0811B014
	b _0811B04C
_0811B00A:
	cmp r2, #2
	beq _0811B030
	cmp r2, #3
	beq _0811B03C
	b _0811B04C
_0811B014:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xb3
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x52
	strh r2, [r0]
	b _0811B15A
_0811B024:
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	b _0811B056
_0811B030:
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0xb3
	lsls r1, r1, #1
	b _0811B056
_0811B03C:
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	ldr r1, _0811B048 @ =0x000001CD
	b _0811B056
	.align 2, 0
_0811B048: .4byte 0x000001CD
_0811B04C:
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
_0811B056:
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	b _0811B15A
_0811B05E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _0811B074
	ldr r0, [r3, #0x40]
	ldr r1, _0811B070 @ =0xFFFFF800
	adds r0, r0, r1
	b _0811B07C
	.align 2, 0
_0811B070: .4byte 0xFFFFF800
_0811B074:
	ldr r0, [r3, #0x40]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_0811B07C:
	str r0, [r3, #0x40]
	ldr r0, [r3, #0x44]
	ldr r1, _0811B098 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r3, #0x44]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	beq _0811B0AE
	cmp r0, #1
	bgt _0811B09C
	cmp r0, #0
	beq _0811B0A6
	b _0811B0CE
	.align 2, 0
_0811B098: .4byte 0xFFFFFA00
_0811B09C:
	cmp r0, #2
	beq _0811B0B6
	cmp r0, #3
	beq _0811B0C4
	b _0811B0CE
_0811B0A6:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0x82
	b _0811B0D6
_0811B0AE:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0xbb
	b _0811B0D6
_0811B0B6:
	adds r0, r3, #0
	adds r0, #0x50
	ldr r1, _0811B0C0 @ =0x00000105
	b _0811B0D6
	.align 2, 0
_0811B0C0: .4byte 0x00000105
_0811B0C4:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0xa8
	lsls r1, r1, #1
	b _0811B0D6
_0811B0CE:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0xbb
	lsls r1, r1, #2
_0811B0D6:
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _0811B15A
_0811B0DE:
	ldr r0, [r3, #0x44]
	ldr r1, _0811B0F8 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r3, #0x44]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	beq _0811B114
	cmp r0, #1
	bgt _0811B0FC
	cmp r0, #0
	beq _0811B106
	b _0811B148
	.align 2, 0
_0811B0F8: .4byte 0xFFFFF600
_0811B0FC:
	cmp r0, #2
	beq _0811B124
	cmp r0, #3
	beq _0811B134
	b _0811B148
_0811B106:
	adds r0, r3, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xb3
	b _0811B158
_0811B114:
	adds r0, r3, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _0811B158
_0811B124:
	adds r0, r3, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xb3
	lsls r0, r0, #1
	b _0811B158
_0811B134:
	adds r0, r3, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	ldr r0, _0811B144 @ =0x000001CD
	b _0811B158
	.align 2, 0
_0811B144: .4byte 0x000001CD
_0811B148:
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
_0811B158:
	strh r0, [r1]
_0811B15A:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811B16E
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0811B16E:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	beq _0811B18E
	cmp r0, #1
	bgt _0811B180
	cmp r0, #0
	beq _0811B18A
	b _0811B19A
_0811B180:
	cmp r0, #2
	beq _0811B192
	cmp r0, #3
	beq _0811B196
	b _0811B19A
_0811B18A:
	movs r0, #0xd6
	b _0811B19C
_0811B18E:
	movs r0, #0x96
	b _0811B19C
_0811B192:
	movs r0, #0x6b
	b _0811B19C
_0811B196:
	movs r0, #0x53
	b _0811B19C
_0811B19A:
	movs r0, #0x26
_0811B19C:
	strh r0, [r3, #4]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
_0811B1AC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateShotzoBullet
CreateShotzoBullet: @ 0x0811B1B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0811B1EC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811B1F0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811B1F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0811B1FC
	.align 2, 0
_0811B1EC: .4byte ObjectMain
_0811B1F0: .4byte ObjectDestroy
_0811B1F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0811B1FC:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x40
	orrs r2, r0
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _0811B298 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x88
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _0811B29C @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r2, #2
	rsbs r2, r2, #0
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
	ldr r2, _0811B2A0 @ =gUnk_08351648
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
_0811B298: .4byte 0x20000043
_0811B29C: .4byte sub_0809F840
_0811B2A0: .4byte gUnk_08351648

	thumb_func_start sub_0811B2A4
sub_0811B2A4: @ 0x0811B2A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811B330 @ =sub_0811B34C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0811B334 @ =gKirbys
	ldr r0, _0811B338 @ =gUnk_0203AD3C
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
	bne _0811B328
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811B2E8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811B328
_0811B2E8:
	ldr r1, _0811B33C @ =gUnk_08D60FA4
	ldr r4, _0811B340 @ =gSongTable
	ldr r2, _0811B344 @ =0x00000A34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811B30E
	movs r1, #0xa3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811B328
_0811B30E:
	cmp r3, #0
	beq _0811B320
	ldr r0, _0811B348 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811B328
_0811B320:
	movs r0, #0xa3
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811B328:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811B330: .4byte sub_0811B34C
_0811B334: .4byte gKirbys
_0811B338: .4byte gUnk_0203AD3C
_0811B33C: .4byte gUnk_08D60FA4
_0811B340: .4byte gSongTable
_0811B344: .4byte 0x00000A34
_0811B348: .4byte gUnk_0203AD10

	thumb_func_start sub_0811B34C
sub_0811B34C: @ 0x0811B34C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0811B3DC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0811B3E0 @ =gCurLevelInfo
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
	bgt _0811B3A4
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _0811B3A4
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _0811B3A4
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _0811B3A4
	adds r0, r4, #0
	bl sub_0806FC70
_0811B3A4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811B3C4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _0811B3D4
_0811B3C4:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0811B3D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811B3DC: .4byte 0xFFFFFEFF
_0811B3E0: .4byte gCurLevelInfo

	thumb_func_start sub_0811B3E4
sub_0811B3E4: @ 0x0811B3E4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811B3FA
	adds r0, r1, #0
	bl sub_0811AA2C
_0811B3FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811B400
sub_0811B400: @ 0x0811B400
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x33
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #0x4c
	strb r2, [r1]
	strh r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _0811B448 @ =sub_0811B44C
	str r0, [r4, #0x78]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811B448: .4byte sub_0811B44C

	thumb_func_start sub_0811B44C
sub_0811B44C: @ 0x0811B44C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, _0811B484 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080C29C0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x33
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #0x4c
	strb r2, [r1]
	strh r0, [r4, #4]
	ldr r0, _0811B488 @ =sub_0811B48C
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811B484: .4byte 0xFFFFDFFF
_0811B488: .4byte sub_0811B48C

	thumb_func_start sub_0811B48C
sub_0811B48C: @ 0x0811B48C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811B4D8
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0811B4D4
	ldr r0, _0811B4D0 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r0, r4, #0
	bl sub_0811A874
	b _0811B4E8
	.align 2, 0
_0811B4D0: .4byte 0xFEFFFFFF
_0811B4D4:
	orrs r1, r2
	str r1, [r4, #8]
_0811B4D8:
	ldr r1, [r4, #8]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0811B4E8
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_0811B4E8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

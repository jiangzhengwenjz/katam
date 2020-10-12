	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSquishy
CreateSquishy: @ 0x080AF680
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080AF6B4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080AF6B8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AF6BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080AF6C4
	.align 2, 0
_080AF6B4: .4byte ObjectMain
_080AF6B8: .4byte ObjectDestroy
_080AF6BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080AF6C4:
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
	ble _080AF6E4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF6EC
_080AF6E4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF6EC:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
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
	cmp r0, #1
	beq _080AF73C
	cmp r0, #1
	ble _080AF734
	cmp r0, #2
	beq _080AF744
_080AF734:
	adds r0, r4, #0
	bl sub_080AF754
	b _080AF74A
_080AF73C:
	adds r0, r4, #0
	bl sub_080AFB70
	b _080AF74A
_080AF744:
	adds r0, r4, #0
	bl sub_080B0134
_080AF74A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AF754
sub_080AF754: @ 0x080AF754
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF780 @ =sub_080AF7D4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AF784
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF78C
	.align 2, 0
_080AF780: .4byte sub_080AF7D4
_080AF784:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF78C:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AF7AA
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	b _080AF7BA
_080AF7AA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0x80
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	strb r2, [r1]
_080AF7BA:
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF7CC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF7CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF7D4
sub_080AF7D4: @ 0x080AF7D4
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x58]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _080AF7EA
	adds r0, r3, #0
	bl sub_080B0078
	b _080AF870
_080AF7EA:
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080AF840
	strh r2, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080AF82C
	ldr r2, _080AF834 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080AF838 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080AF83C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080AF840
_080AF82C:
	adds r0, r3, #0
	bl sub_080B0040
	b _080AF870
	.align 2, 0
_080AF834: .4byte gRngVal
_080AF838: .4byte 0x00196225
_080AF83C: .4byte 0x3C6EF35F
_080AF840:
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AF860
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AF860:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AF870
	adds r0, r3, #0
	bl sub_080AFF90
_080AF870:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF878
sub_080AF878: @ 0x080AF878
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF8A0 @ =sub_080AF958
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
	ble _080AF8A4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF8AC
	.align 2, 0
_080AF8A0: .4byte sub_080AF958
_080AF8A4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF8AC:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF8D6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF8D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF8DC
sub_080AF8DC: @ 0x080AF8DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AF904 @ =sub_080AF958
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
	ble _080AF908
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AF910
	.align 2, 0
_080AF904: .4byte sub_080AF958
_080AF908:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AF910:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080AF932
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r2]
	adds r2, r0, #0
	b _080AF93C
_080AF932:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r2, r1, #0
_080AF93C:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF952
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AF952:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF958
sub_080AF958: @ 0x080AF958
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AF97C
	ldr r0, [r4, #8]
	eors r0, r3
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AF97C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF9AC
	ldr r2, _080AF9A8 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	str r0, [r4, #8]
	b _080AF9BC
	.align 2, 0
_080AF9A8: .4byte sub_080B0024
_080AF9AC:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF9BC
	adds r0, r4, #0
	bl sub_080B0078
_080AF9BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF9C4
sub_080AF9C4: @ 0x080AF9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldrh r1, [r0, #4]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0x60
	bgt _080AF9D8
	b _080AFB42
_080AF9D8:
	ldr r2, _080AFAC4 @ =gUnk_08353C58
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
	bne _080AFA0E
	ldrb r0, [r5]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080AFAF4
	movs r0, #0xff
	strb r0, [r3]
_080AFA0E:
	mov r1, r8
	ldrb r0, [r1]
	mov r4, ip
	adds r4, #0x50
	mov r5, ip
	adds r5, #0x52
	cmp r0, #0
	bne _080AFAF4
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
	bne _080AFA38
	subs r0, r1, #1
	strb r0, [r3]
_080AFA38:
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
	beq _080AFA60
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AFA60:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080AFAC8
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
	beq _080AFA9A
	strh r2, [r4]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFA9A
	rsbs r0, r2, #0
	strh r0, [r4]
_080AFA9A:
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
	beq _080AFAF4
	strh r2, [r5]
	b _080AFAF4
	.align 2, 0
_080AFAC4: .4byte gUnk_08353C58
_080AFAC8:
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
	beq _080AFB14
	rsbs r0, r2, #0
	strh r0, [r4]
_080AFAF4:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFB14
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r4]
	b _080AFB26
_080AFB14:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080AFB26:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r3, r8
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _080AFB48
_080AFB42:
	adds r0, r1, #1
	mov r5, ip
	strh r0, [r5, #4]
_080AFB48:
	mov r1, ip
	ldr r0, [r1, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AFB64
	mov r2, ip
	ldr r0, [r2, #8]
	subs r1, #0x43
	ands r0, r1
	str r0, [r2, #8]
	mov r0, ip
	bl sub_080AF8DC
_080AFB64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AFB70
sub_080AFB70: @ 0x080AFB70
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFB94 @ =sub_080B00A4
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080AFB98
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AFBA0
	.align 2, 0
_080AFB94: .4byte sub_080B00A4
_080AFB98:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AFBA0:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFBE4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080AFBF2
_080AFBE4:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080AFBF8 @ =0xFFFFB000
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080AFBF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AFBF8: .4byte 0xFFFFB000

	thumb_func_start sub_080AFBFC
sub_080AFBFC: @ 0x080AFBFC
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080AFCC0 @ =gUnk_08353CA0
	cmp r0, #0
	bne _080AFCF8
	mov r1, ip
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
	bne _080AFC2C
	subs r0, r2, #1
	strb r0, [r4]
_080AFC2C:
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
	beq _080AFC52
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080AFC52:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AFCC4
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
	beq _080AFC90
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFC90
	rsbs r0, r3, #0
	strh r0, [r2]
_080AFC90:
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
	beq _080AFCF8
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080AFCF8
	.align 2, 0
_080AFCC0: .4byte gUnk_08353CA0
_080AFCC4:
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
	beq _080AFD22
	rsbs r0, r5, #0
	strh r0, [r2]
_080AFCF8:
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
	beq _080AFD22
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080AFD34
_080AFD22:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080AFD34:
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
	subs r0, #1
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080AFD62
	mov r2, ip
	ldr r0, [r2, #8]
	ldr r1, _080AFD7C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
_080AFD62:
	mov r0, ip
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFD76
	mov r0, ip
	bl sub_080B00DC
_080AFD76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFD7C: .4byte 0xFFFFFEFF

	thumb_func_start sub_080AFD80
sub_080AFD80: @ 0x080AFD80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x50
	movs r7, #0
	strh r7, [r5]
	movs r0, #0x52
	adds r0, r0, r4
	mov r8, r0
	strh r7, [r0]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080AFDAE
	adds r0, r4, #0
	bl sub_080AFE0C
	b _080AFDFC
_080AFDAE:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _080AFDD8
	ldr r2, _080AFDD4 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	strh r7, [r5]
	mov r0, r8
	strh r7, [r0]
	ldr r0, [r4, #8]
	b _080AFDF4
	.align 2, 0
_080AFDD4: .4byte sub_080B0024
_080AFDD8:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFDFC
	ldr r2, _080AFE08 @ =sub_080AF9C4
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	strh r6, [r5]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
_080AFDF4:
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080AFDFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFE08: .4byte sub_080AF9C4

	thumb_func_start sub_080AFE0C
sub_080AFE0C: @ 0x080AFE0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFE34 @ =sub_080AFEBC
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
	ble _080AFE38
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080AFE40
	.align 2, 0
_080AFE34: .4byte sub_080AFEBC
_080AFE38:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080AFE40:
	str r0, [r4, #8]
	ldr r2, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	adds r1, r4, #0
	adds r1, #0xac
	ldr r1, [r1]
	ldr r1, [r1, #0x44]
	cmp r0, r1
	bge _080AFE5E
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x2b
	b _080AFE7A
_080AFE5E:
	ldr r3, _080AFE70 @ =0xFFFFF800
	adds r0, r2, r3
	cmp r0, r1
	ble _080AFE74
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x25
	b _080AFE7A
	.align 2, 0
_080AFE70: .4byte 0xFFFFF800
_080AFE74:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x28
_080AFE7A:
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AFE90
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080AFE98
_080AFE90:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_080AFE98:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFEB6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080AFEB6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFEBC
sub_080AFEBC: @ 0x080AFEBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r0, [r3]
	subs r0, #1
	movs r7, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AFEEC
	ldr r2, _080AFEE8 @ =sub_080AFD80
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	b _080AFF84
	.align 2, 0
_080AFEE8: .4byte sub_080AFD80
_080AFEEC:
	adds r6, r4, #0
	adds r6, #0x52
	ldrh r0, [r6]
	subs r0, #0xb
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080AFF54 @ =0xFFFFFD00
	cmp r0, r1
	bge _080AFF02
	strh r1, [r6]
_080AFF02:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFF22
	ldr r0, [r4, #8]
	eors r0, r5
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AFF22:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AFF30
	movs r0, #0x18
	strb r0, [r3]
_080AFF30:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080AFF5C
	ldr r2, _080AFF58 @ =sub_080B0024
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	strh r7, [r6]
	ldr r0, [r4, #8]
	b _080AFF7C
	.align 2, 0
_080AFF54: .4byte 0xFFFFFD00
_080AFF58: .4byte sub_080B0024
_080AFF5C:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFF84
	ldr r2, _080AFF8C @ =sub_080AF9C4
	adds r0, r4, #0
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
_080AFF7C:
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080AFF84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFF8C: .4byte sub_080AF9C4

	thumb_func_start sub_080AFF90
sub_080AFF90: @ 0x080AFF90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080AFFA8 @ =sub_080AFFAC
	movs r1, #5
	bl ObjectSetFunc
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AFFA8: .4byte sub_080AFFAC

	thumb_func_start sub_080AFFAC
sub_080AFFAC: @ 0x080AFFAC
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFFD0
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080AFFD0:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFFE2
	adds r0, r2, #0
	bl sub_080AFFF8
	b _080AFFF2
_080AFFE2:
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFFF2
	adds r0, r2, #0
	bl sub_080B0078
_080AFFF2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFFF8
sub_080AFFF8: @ 0x080AFFF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0020 @ =sub_080B0024
	movs r1, #4
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #0x21
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0020: .4byte sub_080B0024

	thumb_func_start sub_080B0024
sub_080B0024: @ 0x080B0024
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080B003C
	adds r0, r1, #0
	bl sub_080AF754
_080B003C:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0040
sub_080B0040: @ 0x080B0040
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0058 @ =sub_080B005C
	movs r1, #2
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0058: .4byte sub_080B005C

	thumb_func_start sub_080B005C
sub_080B005C: @ 0x080B005C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _080B0074
	adds r0, r1, #0
	bl sub_080AF878
_080B0074:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0078
sub_080B0078: @ 0x080B0078
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B00A0 @ =sub_080AF9C4
	movs r1, #3
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B00A0: .4byte sub_080AF9C4

	thumb_func_start sub_080B00A4
sub_080B00A4: @ 0x080B00A4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B00B8
	adds r0, r2, #0
	bl sub_080B00BC
_080B00B8:
	pop {r0}
	bx r0

	thumb_func_start sub_080B00BC
sub_080B00BC: @ 0x080B00BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B00D8 @ =sub_080AFBFC
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B00D8: .4byte sub_080AFBFC

	thumb_func_start sub_080B00DC
sub_080B00DC: @ 0x080B00DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0108 @ =sub_080B010C
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
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
_080B0108: .4byte sub_080B010C

	thumb_func_start sub_080B010C
sub_080B010C: @ 0x080B010C
	push {lr}
	adds r1, r0, #0
	ldrh r2, [r1, #4]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #8
	ble _080B012C
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	b _080B0130
_080B012C:
	adds r0, r2, #1
	strh r0, [r1, #4]
_080B0130:
	pop {r0}
	bx r0

	thumb_func_start sub_080B0134
sub_080B0134: @ 0x080B0134
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B0154 @ =sub_080AFD80
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
_080B0154: .4byte sub_080AFD80

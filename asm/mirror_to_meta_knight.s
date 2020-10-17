	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMirrorToMetaKnight
CreateMirrorToMetaKnight: @ 0x08118B50
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08118B84 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08118B88 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08118B8C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08118B94
	.align 2, 0
_08118B84: .4byte ObjectMain
_08118B88: .4byte ObjectDestroy
_08118B8C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08118B94:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	ldr r1, _08118C10 @ =gUnk_0201CB40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x5c]
	ldr r0, [r6, #0x44]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
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
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _08118C14 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08118C10: .4byte gUnk_0201CB40
_08118C14: .4byte gUnk_08351648

	thumb_func_start sub_08118C18
sub_08118C18: @ 0x08118C18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r5
	bl sub_08119094
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _08118C44
	b _08118D58
_08118C44:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08118C62
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0xa
	b _08118C6C
_08118C62:
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
_08118C6C:
	bl sub_08092944
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	mov r0, r8
	adds r0, #0xb4
	ldr r1, [r0]
	movs r0, #0
	mov sb, r0
	movs r4, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	ldr r3, _08118D1C @ =gUnk_08357B3E
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r0, r3, #4
	adds r0, r2, r0
	ldrh r1, [r0]
	adds r0, r2, r3
	ldrh r6, [r0]
	adds r3, #2
	adds r2, r2, r3
	ldrb r7, [r2]
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0808B62C
	mov r2, r8
	adds r2, #0xb8
	str r0, [r2]
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
	ldr r3, _08118D20 @ =gUnk_02020EE0
	ldr r0, _08118D24 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _08118D28
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08118D30
	adds r0, r6, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08118D30
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08118D30
	.align 2, 0
_08118D1C: .4byte gUnk_08357B3E
_08118D20: .4byte gUnk_02020EE0
_08118D24: .4byte gUnk_0203AD3C
_08118D28:
	adds r0, r3, #0
	adds r0, #0x2b
	mov r2, sb
	strb r2, [r0]
_08118D30:
	ldr r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	ldr r1, [r4]
	ldr r0, [r5, #0x44]
	ldr r2, _08118D50 @ =0xFFFFC400
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r2, _08118D54 @ =sub_08119184
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	b _08118D6C
	.align 2, 0
_08118D50: .4byte 0xFFFFC400
_08118D54: .4byte sub_08119184
_08118D58:
	ldr r0, [r5, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, _08118D7C @ =sub_081191A8
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
_08118D6C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08118D7C: .4byte sub_081191A8

	thumb_func_start sub_08118D80
sub_08118D80: @ 0x08118D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sl, r0
	mov sb, sl
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r7, r0, #0x10
	ldr r4, _08118E40 @ =gCurLevelInfo
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, r1, r4
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08118E44 @ =gUnk_0203AD3C
	ldrb r5, [r0]
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08118EC0
	mov r1, sl
	adds r1, #0xb8
	ldr r2, [r1]
	adds r3, r2, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	adds r6, r1, #0
	cmp r0, #0
	bne _08118E64
	ldr r1, _08118E48 @ =gUnk_02020EE0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08118E50
	ldr r2, _08118E4C @ =gUnk_08357B3E
	mov r8, r2
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r4, r0, #1
	adds r0, r4, r2
	ldrh r5, [r0]
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r6]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08118E54
	mov r0, r8
	adds r0, #2
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_0803DFAC
	ldr r1, [r6]
	adds r1, #0x2b
	strb r0, [r1]
	b _08118E54
	.align 2, 0
_08118E40: .4byte gCurLevelInfo
_08118E44: .4byte gUnk_0203AD3C
_08118E48: .4byte gUnk_02020EE0
_08118E4C: .4byte gUnk_08357B3E
_08118E50:
	movs r5, #0
	strb r5, [r3]
_08118E54:
	mov r0, sb
	adds r0, #0xb8
	ldr r1, [r0]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08118EC0
_08118E64:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r4, sp
	ldr r2, _08119074 @ =gUnk_08357B3E
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrh r1, [r1]
	movs r3, #0
	strh r1, [r4, #0xc]
	mov r1, sp
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	ldr r0, [r6]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_08118EC0:
	movs r0, #0x56
	add r0, sl
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r4, _08119078 @ =gCurLevelInfo
	adds r0, r0, r4
	str r0, [sp, #0x2c]
	mov r0, sl
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r6, r0, r1
	mov r0, sl
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	mov r5, sl
	ldr r0, [r5, #0x44]
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, sl
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [sp, #0x34]
	movs r0, #0
	mov r8, r0
	ldr r0, _0811907C @ =gUnk_0203AD30
	ldrb r1, [r0]
	mov ip, sb
	cmp r8, r1
	bhs _08118F9C
	movs r3, #0xbf
	lsls r3, r3, #3
	ldr r2, [sp, #0x2c]
	adds r0, r2, r3
	adds r5, r4, #0
	mov sb, r5
	ldrh r0, [r0]
	str r0, [sp, #0x3c]
	adds r4, r1, #0
_08118F34:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08119080 @ =gUnk_02020EE0
	adds r2, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	adds r0, r0, r3
	ldr r5, [sp, #0x3c]
	ldrh r0, [r0]
	cmp r5, r0
	bne _08118F8E
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08118F8E
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08118F8E
	ldr r1, [r2, #0x40]
	cmp r6, r1
	bgt _08118F8E
	ldr r5, [sp, #0x30]
	adds r0, r6, r5
	cmp r0, r1
	blt _08118F8E
	ldr r1, [r2, #0x44]
	cmp r7, r1
	bgt _08118F8E
	ldr r2, [sp, #0x34]
	adds r0, r7, r2
	cmp r0, r1
	bge _08118FA2
_08118F8E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r4
	blo _08118F34
_08118F9C:
	movs r5, #0
	cmp r5, #0
	beq _0811905C
_08118FA2:
	movs r0, #0
	ldr r2, _0811907C @ =gUnk_0203AD30
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08118FB6
_08118FAC:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _08118FAC
_08118FB6:
	mov r5, ip
	ldrb r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r1, _08119078 @ =gCurLevelInfo
	adds r0, r0, r1
	ldr r2, _08119084 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #9
	bl sub_08002888
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r1, r0
	movs r5, #0
	mov r8, r5
	ldr r0, _08119088 @ =gUnk_08357B24
	add r2, sp, #0x28
	mov sb, r2
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	str r1, [sp, #0x38]
	mov r7, sp
	adds r7, #0x29
_08118FEE:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r6, r8
	muls r6, r0, r6
	ldr r0, _08119080 @ =gUnk_02020EE0
	adds r5, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08119048
	ldr r2, [sp, #0x2c]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r2, r1
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08119048
	ldr r2, [sp, #0x38]
	ldrh r4, [r2]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_08002D40
	ldr r0, _0811908C @ =gUnk_02020EEC
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	mov r1, sb
	ldrb r2, [r1]
	ldrb r3, [r7]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0805BDF4
_08119048:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bls _08118FEE
	ldr r0, _08119090 @ =sub_081191B4
	mov r2, sl
	str r0, [r2, #0x78]
_0811905C:
	mov r5, sl
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08119074: .4byte gUnk_08357B3E
_08119078: .4byte gCurLevelInfo
_0811907C: .4byte gUnk_0203AD30
_08119080: .4byte gUnk_02020EE0
_08119084: .4byte 0x0000065E
_08119088: .4byte gUnk_08357B24
_0811908C: .4byte gUnk_02020EEC
_08119090: .4byte sub_081191B4

	thumb_func_start sub_08119094
sub_08119094: @ 0x08119094
	push {r4, r5, r6, r7, lr}
	ldr r2, _081190EC @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _081190F0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #9
	bl sub_08002888
	adds r6, r0, #0
	ldr r1, [r6]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _081190CA
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r6]
_081190CA:
	ldr r0, [r6]
	adds r4, r0, #0
	cmp r4, #0
	bge _08119170
	movs r2, #1
	lsls r2, r5
	orrs r2, r4
	str r2, [r6]
	ldr r1, _081190F4 @ =0x00000FFF
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _081190F8
	movs r5, #0xc
	adds r4, r2, #0
	b _08119170
	.align 2, 0
_081190EC: .4byte gCurLevelInfo
_081190F0: .4byte 0x0000065E
_081190F4: .4byte 0x00000FFF
_081190F8:
	ldr r2, _08119154 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08119158 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811915C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0xf
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ands r3, r1
	ldr r0, _08119160 @ =0x0000FFFF
	cmp r3, r0
	beq _0811916C
	ldr r4, [r6]
	movs r7, #1
	mov ip, r0
_0811911C:
	subs r5, r3, #1
_0811911E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	beq _0811914E
	adds r0, r7, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0811914A
	movs r3, #1
	adds r1, r4, #0
_08119136:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	beq _0811914E
	adds r0, r3, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08119136
_0811914A:
	cmp r2, #0xc
	bne _08119164
_0811914E:
	movs r2, #0
	b _0811911E
	.align 2, 0
_08119154: .4byte gRngVal
_08119158: .4byte 0x00196225
_0811915C: .4byte 0x3C6EF35F
_08119160: .4byte 0x0000FFFF
_08119164:
	lsls r0, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	bne _0811911C
_0811916C:
	adds r5, r2, #0
	ldr r4, [r6]
_08119170:
	ldr r1, _08119180 @ =0x7FF0FFFF
	ands r1, r4
	lsls r0, r5, #0x10
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08119180: .4byte 0x7FF0FFFF

	thumb_func_start sub_08119184
sub_08119184: @ 0x08119184
	adds r3, r0, #0
	adds r0, #0xb4
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	ldr r0, _081191A0 @ =0x0000FBFF
	ands r0, r1
	movs r1, #0
	strh r0, [r2, #6]
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _081191A4 @ =sub_08118D80
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_081191A0: .4byte 0x0000FBFF
_081191A4: .4byte sub_08118D80

	thumb_func_start sub_081191A8
sub_081191A8: @ 0x081191A8
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #5
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_081191B4
sub_081191B4: @ 0x081191B4
	ldr r1, _081191BC @ =nullsub_126
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_081191BC: .4byte nullsub_126

	thumb_func_start nullsub_126
nullsub_126: @ 0x081191C0
	bx lr
	.align 2, 0

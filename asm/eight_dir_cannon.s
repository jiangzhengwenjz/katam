	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Create8DirCannon
Create8DirCannon: @ 0x081223F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08122428 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0812242C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08122430
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08122438
	.align 2, 0
_08122428: .4byte ObjectMain
_0812242C: .4byte ObjectDestroy
_08122430:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08122438:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	ldr r1, _081224B0 @ =0x00218940
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x68]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
	orrs r0, r4
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x5c]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0xc]
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
	ldr r2, _081224B4 @ =gUnk_08351648
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
_081224B0: .4byte 0x00218940
_081224B4: .4byte gUnk_08351648

	thumb_func_start sub_081224B8
sub_081224B8: @ 0x081224B8
	mov ip, r0
	movs r3, #0
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #4]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	mov r2, ip
	adds r2, #0xb4
	strb r0, [r2]
	adds r1, #0xb5
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf
	strb r0, [r1]
	adds r1, #1
	movs r0, #8
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xb9
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	ldrb r0, [r2]
	subs r1, #0x35
	strb r0, [r1]
	ldr r0, _08122500 @ =sub_08122504
	mov r1, ip
	str r0, [r1, #0x78]
	bx lr
	.align 2, 0
_08122500: .4byte sub_08122504

	thumb_func_start sub_08122504
sub_08122504: @ 0x08122504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov sb, r0
	adds r3, r5, #0
	adds r3, #0xb7
	ldrb r2, [r3]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0812252A
	b _08122784
_0812252A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08122538
	b _08122784
_08122538:
	ldr r0, [r5, #0x6c]
	adds r0, #0x56
	ldr r1, _081227A0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r4, [r1]
	cmp r0, r4
	blo _08122548
	b _08122790
_08122548:
	movs r0, #1
	mov sl, r0
	movs r1, #0
	mov r8, r1
	mov r0, sl
	orrs r0, r2
	strb r0, [r3]
	mov r1, sp
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	strh r0, [r1, #4]
	adds r0, r5, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	strh r0, [r1, #6]
	ldr r6, _081227A4 @ =gUnk_02020EE0
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sb
	bne _081225FC
	cmp r4, #0
	beq _081225FC
	adds r4, r5, #0
	adds r4, #0xba
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081225FC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081225FC
	ldr r0, [r6, #0x6c]
	cmp r0, r5
	bne _081225FC
	adds r0, r6, #0
	bl sub_08051C40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081225FC
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #7
	bl sub_0808AE30
	ldrb r0, [r4]
	mov r1, sl
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	strb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _081225FC
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r4]
	adds r0, r5, #0
	adds r0, #0xbc
	str r6, [r0]
_081225FC:
	ldr r4, _081227A4 @ =gUnk_02020EE0
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r6, r7, #0
	adds r6, #0xba
	cmp r0, sb
	bne _0812267C
	ldr r0, _081227A0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #1
	bls _0812267C
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0812267C
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r0, r0, r4
	mov r8, r0
	adds r0, r7, #0
	mov r1, r8
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0812267C
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r7
	bne _0812267C
	mov r0, r8
	bl sub_08051C40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0812267C
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r7, #0
	movs r1, #0
	movs r3, #7
	bl sub_0808AE30
	ldrb r1, [r6]
	movs r2, #0
	movs r0, #2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0812267C
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r6]
	adds r0, r7, #0
	adds r0, #0xbc
	mov r1, r8
	str r1, [r0]
_0812267C:
	ldr r4, _081227A4 @ =gUnk_02020EE0
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, sb
	bne _081226F8
	ldr r0, _081227A0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #2
	bls _081226F8
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _081226F8
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r8, r0
	adds r0, r7, #0
	mov r1, r8
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081226F8
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r7
	bne _081226F8
	mov r0, r8
	bl sub_08051C40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081226F8
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r7, #0
	movs r1, #0
	movs r3, #7
	bl sub_0808AE30
	ldrb r1, [r6]
	movs r2, #0
	movs r0, #4
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _081226F8
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r6]
	adds r0, r7, #0
	adds r0, #0xbc
	mov r1, r8
	str r1, [r0]
_081226F8:
	ldr r4, _081227A4 @ =gUnk_02020EE0
	movs r1, #0xab
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, sb
	bne _08122772
	ldr r0, _081227A0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #3
	bls _08122772
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08122772
	movs r0, #0x9f
	lsls r0, r0, #3
	adds r0, r0, r4
	mov r8, r0
	adds r0, r7, #0
	mov r1, r8
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08122772
	ldr r1, _081227A8 @ =0x00000564
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r7
	bne _08122772
	mov r0, r8
	bl sub_08051C40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08122772
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r7, #0
	movs r1, #0
	movs r3, #7
	bl sub_0808AE30
	ldrb r1, [r6]
	movs r2, #0
	movs r0, #8
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08122772
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r6]
	adds r0, r7, #0
	adds r0, #0xbc
	mov r1, r8
	str r1, [r0]
_08122772:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08122784
	adds r2, r7, #0
	adds r2, #0xb7
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_08122784:
	adds r0, r5, #0
	bl sub_081227AC
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_08122790:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081227A0: .4byte gUnk_0203AD30
_081227A4: .4byte gUnk_02020EE0
_081227A8: .4byte 0x00000564

	thumb_func_start sub_081227AC
sub_081227AC: @ 0x081227AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r6
	adds r2, r6, #0
	adds r2, #0xb7
	ldrb r4, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	bne _081227C8
	b _08122906
_081227C8:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	mov ip, r0
	ldrh r1, [r0, #0x22]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08122858
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _081228C0
	movs r4, #0
	ldr r0, _081227FC @ =gUnk_0203AD44
	adds r5, r6, #0
	adds r5, #0xb4
	b _08122828
	.align 2, 0
_081227FC: .4byte gUnk_0203AD44
_08122800:
	mov r0, r8
	adds r0, #0xba
	ldrb r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08122820
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	ldr r1, _0812284C @ =gUnk_02020EE0
	adds r0, r0, r1
	ldrb r1, [r5]
	bl sub_08051F70
_08122820:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08122850 @ =gUnk_0203AD44
_08122828:
	ldrb r0, [r0]
	cmp r4, r0
	blo _08122800
	ldr r0, _08122854 @ =sub_08122B34
	str r0, [r6, #0x78]
	ldrb r1, [r7]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r5]
	adds r0, r6, #0
	bl sub_081222AC
	movs r0, #3
	adds r1, r6, #0
	bl sub_0806FE64
	b _081228C0
	.align 2, 0
_0812284C: .4byte gUnk_02020EE0
_08122850: .4byte gUnk_0203AD44
_08122854: .4byte sub_08122B34
_08122858:
	movs r0, #2
	ands r0, r4
	adds r7, r2, #0
	cmp r0, #0
	beq _081228C0
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	adds r5, r0, #0
	mov r2, ip
	ldrh r2, [r2, #0x14]
	cmp r1, r2
	bne _081228C0
	movs r4, #0
	b _0812289C
_08122876:
	mov r0, r8
	adds r0, #0xba
	ldrb r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08122896
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	ldr r1, _08122910 @ =gUnk_02020EE0
	adds r0, r0, r1
	ldrb r1, [r5]
	bl sub_08051F70
_08122896:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0812289C:
	ldr r0, _08122914 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _08122876
	ldr r0, _08122918 @ =sub_08122B34
	str r0, [r6, #0x78]
	ldrb r1, [r7]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r5]
	adds r0, r6, #0
	bl sub_081222AC
	movs r0, #3
	adds r1, r6, #0
	bl sub_0806FE64
_081228C0:
	ldrb r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08122906
	mov r3, r8
	adds r3, #0xb5
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08122906
	mov r2, r8
	adds r2, #0xb4
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _081228FA
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
_081228FA:
	ldrb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x83
	strb r0, [r1]
	movs r0, #5
	strb r0, [r3]
_08122906:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08122910: .4byte gUnk_02020EE0
_08122914: .4byte gUnk_0203AD44
_08122918: .4byte sub_08122B34

	thumb_func_start sub_0812291C
sub_0812291C: @ 0x0812291C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov sb, ip
	mov r5, ip
	adds r5, #0xb9
	ldrb r0, [r5]
	cmp r0, #9
	bls _08122936
	b _08122B18
_08122936:
	mov r1, ip
	adds r1, #0xb8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r1
	cmp r0, #0xff
	beq _0812294C
	b _08122B10
_0812294C:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081229AA
	mov r2, ip
	adds r2, #0x50
	ldr r3, _081229A0 @ =gUnk_08357EA4
	mov r4, ip
	adds r4, #0xb4
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5]
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0
	ldrsh r7, [r2, r0]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	rsbs r1, r0, #0
	adds r5, r2, #0
	mov r8, r3
	adds r6, r4, #0
	cmp r7, r1
	bge _081229A4
	strh r1, [r5]
	b _081229F4
	.align 2, 0
_081229A0: .4byte gUnk_08357EA4
_081229A4:
	cmp r7, r0
	ble _081229F4
	b _081229F2
_081229AA:
	mov r2, ip
	adds r2, #0x50
	ldr r3, _08122A3C @ =gUnk_08357EA4
	mov r4, ip
	adds r4, #0xb4
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5]
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0
	ldrsh r7, [r2, r0]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r5, r2, #0
	mov r8, r3
	adds r6, r4, #0
	cmp r7, r0
	bgt _081229F2
	rsbs r0, r0, #0
	cmp r7, r0
	bge _081229F4
_081229F2:
	strh r0, [r5]
_081229F4:
	mov r3, ip
	adds r3, #0xb9
	ldrb r1, [r3]
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	add r1, r8
	ldrb r0, [r1]
	lsls r1, r0, #8
	adds r7, r3, #0
	cmp r1, #0
	ble _08122A40
	mov r4, sb
	adds r4, #0x52
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r1, #0
	ldrsh r3, [r4, r1]
	ldrb r1, [r7]
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	add r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	cmp r3, r0
	ble _08122A6A
	b _08122A68
	.align 2, 0
_08122A3C: .4byte gUnk_08357EA4
_08122A40:
	mov r4, sb
	adds r4, #0x52
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldrb r1, [r7]
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	add r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bge _08122A6A
_08122A68:
	strh r0, [r4]
_08122A6A:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	mov r3, ip
	adds r3, #0x52
	cmp r0, #0
	bne _08122A9A
	mov r4, ip
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r4, #0
	ldrsh r0, [r5, r4]
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x40]
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	mov r4, ip
	str r2, [r4, #0x44]
_08122A9A:
	adds r1, r5, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08122ABC
	ldr r4, _08122AB8 @ =0x00007FFF
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08122ACC
	movs r0, #0
	strh r0, [r1]
	b _08122ACC
	.align 2, 0
_08122AB8: .4byte 0x00007FFF
_08122ABC:
	ldr r1, _08122AEC @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08122ACC
	movs r0, #0
	strh r0, [r5]
_08122ACC:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08122AF4
	ldr r3, _08122AF0 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08122B04
	movs r0, #0
	strh r0, [r1]
	b _08122B04
	.align 2, 0
_08122AEC: .4byte 0xFFFF8001
_08122AF0: .4byte 0x00007FFF
_08122AF4:
	ldr r4, _08122B14 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08122B04
	movs r0, #0
	strh r0, [r3]
_08122B04:
	movs r0, #2
	mov r1, sl
	strb r0, [r1]
	ldrb r0, [r7]
	adds r0, #2
	strb r0, [r7]
_08122B10:
	movs r0, #1
	b _08122B26
	.align 2, 0
_08122B14: .4byte 0xFFFF8001
_08122B18:
	mov r0, ip
	adds r0, #0xb8
	movs r2, #0
	movs r1, #2
	strb r1, [r0]
	strb r2, [r5]
	movs r0, #0
_08122B26:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08122B34
sub_08122B34: @ 0x08122B34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0812291C
	adds r2, r0, #0
	cmp r2, #0
	bne _08122B5A
	adds r1, r4, #0
	adds r1, #0xb7
	movs r0, #8
	strb r0, [r1]
	subs r1, #2
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xba
	strb r2, [r0]
	ldr r0, _08122B68 @ =sub_08122504
	str r0, [r4, #0x78]
_08122B5A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08122B68: .4byte sub_08122504

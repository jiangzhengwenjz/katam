	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCutsceneTrigger
CreateCutsceneTrigger: @ 0x080206A0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldrb r0, [r6, #0xe]
	cmp r0, #6
	bhi _080206FC
	lsls r0, r0, #2
	ldr r1, _080206BC @ =_080206C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080206BC: .4byte _080206C0
_080206C0: @ jump table
	.4byte _080206DC @ case 0
	.4byte _080206E0 @ case 1
	.4byte _080206E4 @ case 2
	.4byte _080206FC @ case 3
	.4byte _080206EA @ case 4
	.4byte _080206F4 @ case 5
	.4byte _080206F8 @ case 6
_080206DC:
	movs r5, #0xd8
	b _080206FA
_080206E0:
	movs r5, #0xc0
	b _080206FA
_080206E4:
	movs r5, #0xae
	lsls r5, r5, #2
	b _080206FA
_080206EA:
	movs r5, #0xcc
	ldr r3, _080206F0 @ =sub_08021DD4
	b _080206FC
	.align 2, 0
_080206F0: .4byte sub_08021DD4
_080206F4:
	movs r5, #0xec
	b _080206FA
_080206F8:
	movs r5, #0xb4
_080206FA:
	ldr r3, _08020728 @ =ObjectDestroy
_080206FC:
	ldr r0, _0802072C @ =ObjectMain
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xc4
	lsls r2, r2, #6
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020730
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08020738
	.align 2, 0
_08020728: .4byte ObjectDestroy
_0802072C: .4byte ObjectMain
_08020730:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08020738:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	lsls r2, r5, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _08020790 @ =0x02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _08020794 @ =gUnk_08351648
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
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020790: .4byte 0x02018F40
_08020794: .4byte gUnk_08351648

	thumb_func_start sub_08020798
sub_08020798: @ 0x08020798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r5, #0
	movs r0, #0xb4
	adds r0, r0, r5
	mov r8, r0
	movs r4, #0
	ldr r1, _080207B8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080207BC @ =gUnk_020229E0
	b _080207D4
	.align 2, 0
_080207B8: .4byte gUnk_020229D4
_080207BC: .4byte gUnk_020229E0
_080207C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080207DC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080207D4:
	cmp r0, #0
	bne _080207C0
	orrs r2, r3
	str r2, [r1]
_080207DC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	movs r0, #0xd0
	strh r0, [r1, #6]
	movs r0, #0x88
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x36
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r4, [r1, #0x12]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	mov r1, r8
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xcc
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _08020848 @ =sub_0802084C
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020848: .4byte sub_0802084C

	thumb_func_start sub_0802084C
sub_0802084C: @ 0x0802084C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r1, sl
	adds r0, r1, #0
	str r0, [sp]
	movs r7, #1
	movs r2, #0
	mov sb, r2
	mov r8, r2
_08020868:
	movs r4, #0xd4
	lsls r4, r4, #1
	mov r0, r8
	muls r0, r4, r0
	ldr r1, _080208DC @ =gKirbys
	adds r4, r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08020886
	b _08020A5A
_08020886:
	mov r0, sl
	adds r0, #0x60
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	beq _08020898
	b _08020A5A
_08020898:
	ldr r0, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #0x11
	ands r0, r5
	cmp r0, #0
	bne _080208E0
	adds r0, r4, #0
	bl sub_0804BAD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080208B2
	b _08020A26
_080208B2:
	ldr r0, [r4, #8]
	orrs r0, r5
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	mov r2, sb
	lsls r0, r2, #3
	add r0, sb
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	mov r1, r8
	adds r1, #0x4a
	adds r0, r4, #0
	adds r0, #0xd4
	strh r1, [r0]
	b _08020A26
	.align 2, 0
_080208DC: .4byte gKirbys
_080208E0:
	adds r3, r4, #0
	adds r3, #0xd4
	ldrh r2, [r3]
	adds r0, r2, #0
	subs r0, #0x4a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _080209A4
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08020914
	adds r0, r2, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _0802090E
	b _08020A26
_0802090E:
	movs r0, #0x4a
	strh r0, [r3]
	b _08020A26
_08020914:
	movs r0, #0x14
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0808925C
	ldr r0, _08020990 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, _08020994 @ =gKirbys
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08020A26
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020952
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r1
	bne _08020A26
_08020952:
	ldr r1, _08020998 @ =gSongTable
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r1, r4
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r2, _0802099C @ =gUnk_08D60FA4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08020978
	subs r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08020A26
_08020978:
	cmp r3, #0
	beq _0802098A
	ldr r0, _080209A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020A26
_0802098A:
	movs r0, #0x71
	b _08020A22
	.align 2, 0
_08020990: .4byte gUnk_0203AD3C
_08020994: .4byte gKirbys
_08020998: .4byte gSongTable
_0802099C: .4byte gUnk_08D60FA4
_080209A0: .4byte gUnk_0203AD10
_080209A4:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bne _08020A40
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08020A26
	movs r0, #0
	strh r0, [r3]
	ldr r0, _08020A2C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, _08020A30 @ =gKirbys
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08020A26
	ldrb r0, [r4]
	cmp r0, #0
	bne _080209E8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r1
	bne _08020A26
_080209E8:
	ldr r1, _08020A34 @ =gSongTable
	movs r4, #0xd3
	lsls r4, r4, #2
	adds r0, r1, r4
	ldrh r3, [r0]
	lsls r0, r3, #2
	ldr r2, _08020A38 @ =gUnk_08D60FA4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08020A0E
	subs r4, #4
	adds r0, r1, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08020A26
_08020A0E:
	cmp r3, #0
	beq _08020A20
	ldr r0, _08020A3C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020A26
_08020A20:
	movs r0, #0x69
_08020A22:
	bl m4aSongNumStart
_08020A26:
	movs r7, #0
	b _08020A50
	.align 2, 0
_08020A2C: .4byte gUnk_0203AD3C
_08020A30: .4byte gKirbys
_08020A34: .4byte gSongTable
_08020A38: .4byte gUnk_08D60FA4
_08020A3C: .4byte gUnk_0203AD10
_08020A40:
	ldr r0, [sp]
	adds r0, #0xcc
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_08020A50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08020A5A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bhi _08020A6A
	b _08020868
_08020A6A:
	cmp r7, #0
	beq _08020A7C
	ldr r0, [sp]
	adds r0, #0xce
	mov r4, sb
	strh r4, [r0]
	ldr r0, _08020A8C @ =sub_08022E6C
	mov r1, sl
	str r0, [r1, #0x78]
_08020A7C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020A8C: .4byte sub_08022E6C

	thumb_func_start sub_08020A90
sub_08020A90: @ 0x08020A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0xd4
	ldrh r0, [r1]
	cmp r0, #0x63
	bls _08020AAC
	b _08020D32
_08020AAC:
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	mov sb, r1
	adds r2, r7, #0
	adds r2, #0xcc
	str r2, [sp, #0x10]
_08020ABC:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r2, _08020B14 @ =gKirbys
	adds r6, r0, r2
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	mov r3, sb
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	mov ip, r2
	mov r5, sb
	adds r5, #1
	cmp r1, #0
	bne _08020AE2
	b _08020D16
_08020AE2:
	adds r0, r7, #0
	adds r0, #0xd2
	ldrh r1, [r0]
	adds r3, r0, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _08020AF6
	b _08020D10
_08020AF6:
	movs r1, #0
	str r1, [sp, #8]
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #5
	bls _08020B08
	b _08020D10
_08020B08:
	lsls r0, r1, #2
	ldr r1, _08020B18 @ =_08020B1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020B14: .4byte gKirbys
_08020B18: .4byte _08020B1C
_08020B1C: @ jump table
	.4byte _08020B34 @ case 0
	.4byte _08020BD4 @ case 1
	.4byte _08020BF4 @ case 2
	.4byte _08020C28 @ case 3
	.4byte _08020C64 @ case 4
	.4byte _08020CE8 @ case 5
_08020B34:
	ldr r2, _08020BA0 @ =0x000002C3
	mov sl, r2
	movs r5, #0
	str r5, [sp]
	ldr r0, [sp, #4]
	movs r1, #4
	movs r3, #0
	bl sub_0808B62C
	adds r2, r7, #0
	adds r2, #0xb8
	str r0, [r2]
	adds r0, #0x2b
	strb r5, [r0]
	ldr r3, _08020BA4 @ =gKirbys
	ldr r0, _08020BA8 @ =gUnk_0203AD3C
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
	bne _08020BAC
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020BB2
	mov r0, sl
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08020BB2
	mov r0, sl
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08020BB2
	.align 2, 0
_08020BA0: .4byte 0x000002C3
_08020BA4: .4byte gKirbys
_08020BA8: .4byte gUnk_0203AD3C
_08020BAC:
	adds r0, r3, #0
	adds r0, #0x2b
	strb r5, [r0]
_08020BB2:
	ldr r1, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r4]
	ldr r0, [r6, #0x44]
	ldr r3, _08020BD0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r1, #0x38]
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	b _08020C1A
	.align 2, 0
_08020BD0: .4byte 0xFFFFEC00
_08020BD4:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x1e
	bhi _08020BF0
	b _08020D10
_08020BF0:
	movs r0, #2
	b _08020C54
_08020BF4:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #8]
	adds r4, r7, #0
	adds r4, #0xb8
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	str r3, [r4]
	adds r0, r7, #0
	adds r0, #0xd0
	strh r3, [r0]
	movs r0, #3
_08020C1A:
	mov r1, r8
	strh r0, [r1]
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	b _08020D10
_08020C28:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x10
	bls _08020D10
	ldrh r0, [r3]
	adds r1, r0, #1
	adds r0, r7, #0
	adds r0, #0xce
	ldrh r0, [r0]
	cmp r1, r0
	beq _08020C5A
	movs r0, #0
	strh r1, [r3]
_08020C54:
	mov r2, r8
	strh r0, [r2]
	b _08020D10
_08020C5A:
	movs r0, #0
	strh r0, [r2]
	movs r0, #4
	mov r3, r8
	b _08020D0E
_08020C64:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r2
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x2d
	bls _08020D10
	movs r6, #0
	movs r3, #0
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	b _08020CC0
_08020C8A:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r2, r3, #0
	muls r2, r0, r2
	mov r1, ip
	adds r0, r2, r1
	adds r0, #0xd4
	movs r1, #0x17
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08020CE4 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08020CB0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bhi _08020CD4
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	asrs r0, r3
_08020CC0:
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020CB0
	adds r0, r7, #0
	adds r0, #0xce
	ldrh r0, [r0]
	subs r0, #1
	cmp r6, r0
	bne _08020C8A
_08020CD4:
	movs r0, #0
	mov r3, sl
	strh r0, [r3]
	movs r0, #5
	mov r1, r8
	strh r0, [r1]
	b _08020D10
	.align 2, 0
_08020CE4: .4byte 0xFFFFFA00
_08020CE8:
	adds r2, r7, #0
	adds r2, #0xd0
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sb
	adds r5, #1
	cmp r1, #0x78
	bls _08020D10
	movs r0, #0
	strh r0, [r2]
	mov r2, r8
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #1
_08020D0E:
	strh r0, [r3]
_08020D10:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_08020D16:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _08020D22
	b _08020ABC
_08020D22:
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _08020DC8
	adds r1, r7, #0
	adds r1, #0xd4
	movs r0, #0x64
	strh r0, [r1]
	b _08020DC8
_08020D32:
	ldrh r0, [r1]
	cmp r0, #0x64
	beq _08020D3E
	cmp r0, #0x65
	beq _08020DB0
	b _08020DC8
_08020D3E:
	movs r4, #0
	movs r3, #0
	ldr r0, _08020DAC @ =gKirbys
	mov ip, r0
	ldr r2, [sp, #4]
	adds r2, #0xcc
	str r2, [sp, #0x10]
	mov r8, r1
	ldr r0, [sp, #4]
	adds r0, #0xd0
	mov sl, r0
_08020D54:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	mov r1, ip
	adds r2, r0, r1
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020D92
	adds r1, r2, #0
	adds r1, #0xd4
	movs r0, #0
	strh r0, [r1]
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r2, #0x40]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08020D92:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08020D54
	movs r0, #0
	mov r2, sl
	strh r0, [r2]
	movs r0, #0x65
	mov r3, r8
	strh r0, [r3]
	b _08020DC8
	.align 2, 0
_08020DAC: .4byte gKirbys
_08020DB0:
	ldr r0, [sp, #4]
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _08020DC8
	ldr r0, _08020DD8 @ =sub_08022E80
	ldr r1, [sp, #4]
	str r0, [r1, #0x78]
_08020DC8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020DD8: .4byte sub_08022E80

	thumb_func_start sub_08020DDC
sub_08020DDC: @ 0x08020DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov r6, sb
	adds r0, #0xd0
	ldrh r0, [r0]
	movs r7, #0xf
	ands r7, r0
	cmp r7, #0
	beq _08020DFA
	b _08020F3E
_08020DFA:
	lsrs r5, r0, #4
	movs r0, #1
	ands r5, r0
	mov r0, sb
	adds r0, #0xce
	ldrh r0, [r0]
	movs r1, #0x1f
	cmp r0, #2
	bhi _08020E0E
	movs r1, #0xf
_08020E0E:
	mov sl, r1
	lsls r1, r5, #2
	mov r0, sb
	adds r0, #0xb8
	adds r4, r0, r1
	ldr r2, [r4]
	str r1, [sp, #4]
	cmp r2, #0
	beq _08020E2C
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020E2C:
	ldr r0, _08020E94 @ =0x000002C3
	mov r8, r0
	str r7, [sp]
	mov r0, sb
	movs r1, #4
	mov r2, r8
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	adds r0, #0x2b
	strb r7, [r0]
	ldr r2, _08020E98 @ =gKirbys
	ldr r0, _08020E9C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08020EA0
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08020EA6
	mov r0, r8
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08020EA6
	mov r0, r8
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08020EA6
	.align 2, 0
_08020E94: .4byte 0x000002C3
_08020E98: .4byte gKirbys
_08020E9C: .4byte gUnk_0203AD3C
_08020EA0:
	adds r0, r1, #0
	adds r0, #0x2b
	strb r7, [r0]
_08020EA6:
	cmp r5, #0
	beq _08020EEC
	adds r4, r6, #0
	adds r4, #0xb8
	ldr r1, [sp, #4]
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r3, _08020EE0 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08020EE4 @ =0x00196225
	muls r1, r0, r1
	ldr r2, _08020EE8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	adds r0, r6, #0
	adds r0, #0xce
	ldrh r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #1
	lsrs r1, r1, #0x10
	mov r2, sl
	ands r1, r2
	adds r1, #0x4e
	adds r0, r0, r1
	b _08020F1A
	.align 2, 0
_08020EE0: .4byte gRngVal
_08020EE4: .4byte 0x00196225
_08020EE8: .4byte 0x3C6EF35F
_08020EEC:
	adds r4, r6, #0
	adds r4, #0xb8
	ldr r5, [r4]
	ldr r3, _08020F98 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08020F9C @ =0x00196225
	muls r1, r0, r1
	ldr r0, _08020FA0 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r3]
	adds r0, r6, #0
	adds r0, #0xce
	ldrh r2, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #1
	lsrs r1, r1, #0x10
	mov r2, sl
	ands r1, r2
	subs r1, #0x52
	subs r0, r0, r1
_08020F1A:
	lsls r0, r0, #8
	str r0, [r5, #0x34]
	ldr r1, [sp, #4]
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r1, [r3]
	ldr r0, _08020F9C @ =0x00196225
	muls r1, r0, r1
	ldr r4, _08020FA0 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x74
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #0x38]
_08020F3E:
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _08020F88
	adds r3, r6, #0
	adds r3, #0xb8
	ldr r2, [r3]
	cmp r2, #0
	beq _08020F66
	ldrh r1, [r2, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020F66:
	movs r5, #0
	str r5, [r3]
	adds r4, r6, #0
	adds r4, #0xbc
	ldr r2, [r4]
	cmp r2, #0
	beq _08020F80
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_08020F80:
	str r5, [r4]
	ldr r0, _08020FA4 @ =sub_08022E80
	mov r4, sb
	str r0, [r4, #0x78]
_08020F88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020F98: .4byte gRngVal
_08020F9C: .4byte 0x00196225
_08020FA0: .4byte 0x3C6EF35F
_08020FA4: .4byte sub_08022E80

	thumb_func_start sub_08020FA8
sub_08020FA8: @ 0x08020FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r0, [sp, #4]
	adds r0, #0xb4
	ldr r7, [r0]
	ldr r6, _08021068 @ =gUnk_0203AD3C
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0802106C @ =gCurLevelInfo
	adds r1, r1, r0
	mov sb, r1
	mov r1, r8
	adds r1, #0xd0
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	mov sl, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080210AA
	adds r1, r7, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080210AA
	adds r0, r2, #0
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080210AA
	ldr r5, _08021070 @ =0x000002C3
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	movs r1, #4
	adds r2, r5, #0
	movs r3, #0
	bl sub_0808B62C
	mov r4, r8
	adds r4, #0xc8
	str r0, [r4]
	adds r0, #0x2b
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08021074 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08021078
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021080
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021080
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021080
	.align 2, 0
_08021068: .4byte gUnk_0203AD3C
_0802106C: .4byte gCurLevelInfo
_08021070: .4byte 0x000002C3
_08021074: .4byte gKirbys
_08021078:
	adds r0, r1, #0
	adds r0, #0x2b
	mov r2, sl
	strb r2, [r0]
_08021080:
	ldr r2, [sp, #4]
	adds r2, #0xc8
	ldr r1, [r2]
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x34]
	ldr r1, [r2]
	ldr r0, [r7, #0x44]
	ldr r3, _080210F0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r1, #0x38]
	adds r1, r7, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x83
	strb r2, [r0]
	subs r1, #0x24
	movs r0, #0x10
	strb r0, [r1]
_080210AA:
	ldr r1, [sp, #4]
	adds r1, #0xd0
	ldrh r0, [r1]
	movs r3, #1
	ands r3, r0
	mov ip, r1
	cmp r3, #0
	beq _08021100
	ldr r2, _080210F4 @ =gRngVal
	ldr r0, [r2]
	ldr r6, _080210F8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r4, _080210FC @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #7
	ands r0, r3
	subs r0, #4
	mov r5, sb
	adds r5, #0x44
	strh r0, [r5]
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	subs r0, #4
	mov r1, sb
	adds r1, #0x46
	strh r0, [r1]
	b _08021110
	.align 2, 0
_080210F0: .4byte 0xFFFFEC00
_080210F4: .4byte gRngVal
_080210F8: .4byte 0x00196225
_080210FC: .4byte 0x3C6EF35F
_08021100:
	mov r1, sb
	adds r1, #0x44
	strh r3, [r1]
	mov r0, sb
	adds r0, #0x46
	strh r3, [r0]
	adds r5, r1, #0
	adds r1, r0, #0
_08021110:
	adds r3, r7, #0
	adds r3, #0x50
	movs r4, #0
	ldrsh r2, [r3, r4]
	cmp r2, #0
	bne _08021138
	mov r4, ip
	ldrh r0, [r4]
	cmp r0, #0x78
	bls _08021138
	strh r2, [r5]
	strh r2, [r1]
	strh r2, [r3]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _08021148 @ =sub_0802114C
	mov r1, r8
	str r0, [r1, #0x78]
_08021138:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021148: .4byte sub_0802114C

	thumb_func_start sub_0802114C
sub_0802114C: @ 0x0802114C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, #0xb4
	ldr r4, [r0]
	ldr r2, _08021240 @ =0x00000292
	ldr r0, [sp, #4]
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r4, #0x40]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x44]
	str r1, [r0, #0x38]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	strb r0, [r1]
	subs r1, #0x33
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [sp, #4]
	adds r0, #0xc8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r0, #0
	mov sb, r0
_080211A2:
	ldr r0, [sp, #8]
	adds r0, #0xcc
	ldrh r0, [r0]
	mov r1, sb
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021288
	movs r2, #0xd4
	lsls r2, r2, #1
	mov r0, sb
	muls r0, r2, r0
	ldr r3, _08021244 @ =gKirbys
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0xd4
	movs r1, #0
	mov sl, r1
	movs r1, #0xa
	strh r1, [r2]
	ldr r7, _08021248 @ =0x000002C3
	movs r2, #0
	str r2, [sp]
	movs r1, #4
	adds r2, r7, #0
	movs r3, #1
	bl sub_0808B62C
	mov r3, sb
	lsls r1, r3, #2
	ldr r2, [sp, #8]
	adds r2, #0xb8
	adds r5, r2, r1
	str r0, [r5]
	adds r0, #0x2b
	mov r3, sl
	strb r3, [r0]
	ldr r0, _0802124C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r3, #0xd4
	lsls r3, r3, #1
	muls r0, r3, r0
	ldr r3, _08021244 @ =gKirbys
	adds r0, r0, r3
	adds r0, #0x60
	ldr r4, [r5]
	adds r3, r4, #0
	adds r3, #0x42
	ldrh r0, [r0]
	mov r8, r1
	adds r6, r2, #0
	ldrh r3, [r3]
	cmp r0, r3
	bne _08021250
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021258
	adds r0, r7, #0
	bl sub_0803DF24
	ldr r1, [r5]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021258
	adds r0, r7, #0
	movs r1, #1
	bl sub_0803DFAC
	ldr r1, [r5]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021258
	.align 2, 0
_08021240: .4byte 0x00000292
_08021244: .4byte gKirbys
_08021248: .4byte 0x000002C3
_0802124C: .4byte gUnk_0203AD3C
_08021250:
	adds r0, r4, #0
	adds r0, #0x2b
	mov r1, sl
	strb r1, [r0]
_08021258:
	mov r2, r8
	adds r0, r6, r2
	ldr r2, [r0]
	movs r3, #0xd4
	lsls r3, r3, #1
	mov r1, sb
	muls r1, r3, r1
	ldr r0, _080212AC @ =gKirbys
	adds r0, #0x40
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r3, _080212B0 @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r2, #0x34]
	ldr r0, _080212B4 @ =gKirbys+0x44
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _080212B8 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldrh r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #6]
_08021288:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _080211A2
	ldr r0, _080212BC @ =sub_080212C0
	ldr r2, [sp, #4]
	str r0, [r2, #0x78]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080212AC: .4byte gKirbys
_080212B0: .4byte 0xFFFFF800
_080212B4: .4byte gKirbys+0x44
_080212B8: .4byte 0xFFFFF400
_080212BC: .4byte sub_080212C0

	thumb_func_start sub_080212C0
sub_080212C0: @ 0x080212C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	mov r1, ip
	adds r0, r1, #0
	str r0, [sp]
	mov r0, ip
	adds r0, #0xb4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x13
	strh r0, [r1]
	ldr r1, [r2, #0x40]
	movs r0, #0x90
	lsls r0, r0, #9
	cmp r1, r0
	ble _08021348
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	movs r4, #0
	mov r6, ip
	adds r6, #0xcc
	ldr r7, _08021358 @ =sub_08022EA0
	mov sb, r7
	ldr r0, _0802135C @ =gKirbys
	mov r8, r0
	movs r5, #0
_08021308:
	ldrh r0, [r6]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08021338
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	add r0, r8
	adds r0, #0xd4
	strh r5, [r0]
	lsls r0, r4, #2
	ldr r2, [sp]
	adds r2, #0xb8
	adds r2, r2, r0
	ldr r3, [r2]
	ldrh r0, [r3, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	str r5, [r2]
_08021338:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08021308
	mov r0, sb
	mov r1, ip
	str r0, [r1, #0x78]
_08021348:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021358: .4byte sub_08022EA0
_0802135C: .4byte gKirbys

	thumb_func_start sub_08021360
sub_08021360: @ 0x08021360
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	movs r4, #0
	ldr r5, _080213A8 @ =gKirbys
_0802136A:
	adds r0, r3, #0
	adds r0, #0xcc
	ldrh r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802140A
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r4, #0
	muls r3, r0, r3
	adds r2, r5, #0
	adds r2, #8
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, _080213AC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r2]
	adds r3, r3, r5
	ldr r1, _080213B0 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r2, r5, #0
	cmp r0, #0xb
	bne _080213B4
	adds r0, r3, #0
	bl sub_080641FC
	b _0802141E
	.align 2, 0
_080213A8: .4byte gKirbys
_080213AC: .4byte 0xFEFFFFFF
_080213B0: .4byte 0x00000103
_080213B4:
	cmp r0, #0xe
	bne _080213C0
	adds r0, r3, #0
	bl sub_0806A798
	b _0802141E
_080213C0:
	cmp r0, #0x13
	bne _080213D6
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080213D6
	adds r0, r3, #0
	bl sub_08047EF0
	b _0802141E
_080213D6:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r2, r0, r2
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080213F0
	adds r0, r2, #0
	bl sub_08059810
	b _0802141E
_080213F0:
	ldr r0, [r2, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08021402
	adds r0, r2, #0
	bl sub_08044EA8
	b _0802141E
_08021402:
	adds r0, r2, #0
	bl sub_0803FE74
	b _0802141E
_0802140A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802136A
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
_0802141E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08021424
sub_08021424: @ 0x08021424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov sb, ip
	movs r6, #1
	movs r7, #0
	movs r4, #0
	ldr r0, _08021494 @ =gKirbys
	mov r8, r0
	movs r1, #8
	add r1, r8
	mov sl, r1
	mov r5, ip
	adds r5, #0xb8
_08021446:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r4, #0
	muls r3, r0, r3
	mov r0, r8
	adds r2, r3, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080214B6
	mov r0, ip
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080214B6
	mov r1, sl
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08021498
	ldr r0, [r2, #8]
	orrs r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	movs r6, #0
	b _080214B0
	.align 2, 0
_08021494: .4byte gKirbys
_08021498:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _080214A6
	movs r6, #0
	b _080214B0
_080214A6:
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_080214B0:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080214B6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08021446
	cmp r6, #0
	beq _080214D0
	mov r0, sb
	adds r0, #0xba
	strh r7, [r0]
	ldr r0, _080214E0 @ =sub_08022ECC
	mov r1, ip
	str r0, [r1, #0x78]
_080214D0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080214E0: .4byte sub_08022ECC

	thumb_func_start sub_080214E4
sub_080214E4: @ 0x080214E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r5
	adds r7, r5, #0
	adds r7, #0xb4
	movs r4, #0
	ldr r1, _08021504 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08021508 @ =gUnk_020229E0
	b _08021520
	.align 2, 0
_08021504: .4byte gUnk_020229D4
_08021508: .4byte gUnk_020229E0
_0802150C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08021528
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08021520:
	cmp r0, #0
	bne _0802150C
	orrs r2, r3
	str r2, [r1]
_08021528:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	ldr r0, _080215AC @ =0x0000FFE0
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x36
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
	str r0, [r7]
	mov r2, r8
	adds r2, #0xb4
	ldr r1, [r2]
	ldr r0, [r1, #8]
	orrs r0, r4
	str r0, [r1, #8]
	ldr r0, [r2]
	adds r0, #0x83
	movs r1, #7
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x52
	movs r1, #0xfe
	lsls r1, r1, #8
	strh r1, [r0]
	ldr r0, _080215B0 @ =sub_08023504
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080215AC: .4byte 0x0000FFE0
_080215B0: .4byte sub_08023504

	thumb_func_start sub_080215B4
sub_080215B4: @ 0x080215B4
	push {r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0xb4
	ldr r4, [r0]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _0802162C @ =0x000002C3
	strh r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x2f
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
	adds r4, #0x83
	movs r0, #8
	strb r0, [r4]
	ldr r0, _08021630 @ =sub_08022EE0
	str r0, [r5, #0x78]
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802162C: .4byte 0x000002C3
_08021630: .4byte sub_08022EE0

	thumb_func_start sub_08021634
sub_08021634: @ 0x08021634
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r0, #0xb4
	ldr r6, [r0]
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x26
	strh r0, [r1]
	ldr r1, [r6, #0x44]
	ldr r0, _08021674 @ =0x000087FF
	cmp r1, r0
	ble _08021712
	movs r4, #0
	ldr r1, _08021678 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _0802167C @ =gUnk_020229E0
	movs r7, #0x56
	add r7, r8
	mov ip, r7
	b _08021694
	.align 2, 0
_08021674: .4byte 0x000087FF
_08021678: .4byte gUnk_020229D4
_0802167C: .4byte gUnk_020229E0
_08021680:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0802169C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08021694:
	cmp r0, #0
	bne _08021680
	orrs r2, r3
	str r2, [r1]
_0802169C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r3, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x8f
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
	adds r4, r0, #0
	ldr r2, _08021720 @ =0x000002C9
	str r5, [sp]
	movs r1, #0x14
	movs r3, #0
	bl sub_0808B62C
	ldr r1, [r4, #0x44]
	ldr r7, _08021724 @ =0xFFFFD800
	adds r1, r1, r7
	str r1, [r0, #0x38]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, _08021728 @ =sub_08022EF8
	mov r1, r8
	str r0, [r1, #0x78]
_08021712:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021720: .4byte 0x000002C9
_08021724: .4byte 0xFFFFD800
_08021728: .4byte sub_08022EF8

	thumb_func_start sub_0802172C
sub_0802172C: @ 0x0802172C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r6
	movs r0, #0xad
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
_0802174E:
	lsls r1, r7, #2
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, sl
	adds r5, r0, r1
	mov r2, sb
	str r2, [r5]
	adds r2, r6, #0
	adds r2, #0x60
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, _0802182C @ =gKirbys
	adds r3, r4, r0
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802180C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802180C
	ldr r1, _0802182C @ =gKirbys
	adds r1, #0x40
	adds r1, r4, r1
	mov r2, r8
	lsls r0, r2, #3
	add r0, r8
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r0, #0x64
	lsls r0, r0, #8
	str r0, [r1]
	ldr r3, _08021830 @ =gKirbys+8
	adds r2, r4, r3
	ldr r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r2]
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xa7
	lsls r2, r2, #2
	movs r3, #0
	bl sub_0808B62C
	str r0, [r5]
	mov r1, r8
	lsls r2, r1, #2
	ldr r3, _08021834 @ =gUnk_082DEA4C
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x34]
	ldr r1, _08021838 @ =gUnk_082DEA4E
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x38]
	mov r1, sb
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	ldr r2, [r0, #0x14]
	ldr r1, _0802183C @ =0xFFFFCFFF
	ands r2, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r2, r1
	str r2, [r0, #0x14]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0xad
	lsls r1, r1, #2
	add r1, sl
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802180C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #3
	bls _0802174E
	ldr r0, _08021840 @ =sub_08022F0C
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802182C: .4byte gKirbys
_08021830: .4byte gKirbys+8
_08021834: .4byte gUnk_082DEA4C
_08021838: .4byte gUnk_082DEA4E
_0802183C: .4byte 0xFFFFCFFF
_08021840: .4byte sub_08022F0C

	thumb_func_start sub_08021844
sub_08021844: @ 0x08021844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r6, #0
	ldr r1, _08021950 @ =gUnk_082DEA5C
	mov sl, r1
_08021860:
	lsls r1, r5, #1
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, r8
	adds r0, r0, r1
	strh r6, [r0]
	lsls r1, r5, #2
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, r8
	adds r4, r0, r1
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080218C8
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0x10
	ldr r2, _08021954 @ =0x000002DE
	movs r3, #0
	bl sub_0808B62C
	str r0, [r4]
	mov r3, sb
	lsls r2, r3, #2
	mov r3, sl
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x34]
	ldr r1, _08021958 @ =gUnk_082DEA5E
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #8
	str r1, [r0, #0x38]
	strh r6, [r0, #0x3c]
	strh r6, [r0, #0x3e]
	ldr r2, [r0, #0x14]
	ldr r1, _0802195C @ =0xFFFFCFFF
	ands r2, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r2, r1
	str r2, [r0, #0x14]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080218C8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08021860
	ldr r1, _08021960 @ =gKirbys
	ldr r0, _08021964 @ =gUnk_0203AD3C
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
	bne _0802193A
	ldrb r0, [r7]
	cmp r0, #0
	bne _080218FE
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0802193A
_080218FE:
	ldr r1, _08021968 @ =gUnk_08D60FA4
	ldr r4, _0802196C @ =gSongTable
	ldr r2, _08021970 @ =0x0000100C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08021922
	ldr r1, _08021974 @ =0x00001008
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0802193A
_08021922:
	cmp r3, #0
	beq _08021934
	ldr r0, _08021978 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802193A
_08021934:
	ldr r0, _0802197C @ =0x00000201
	bl m4aSongNumStart
_0802193A:
	ldr r0, _08021980 @ =sub_08021984
	str r0, [r7, #0x78]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021950: .4byte gUnk_082DEA5C
_08021954: .4byte 0x000002DE
_08021958: .4byte gUnk_082DEA5E
_0802195C: .4byte 0xFFFFCFFF
_08021960: .4byte gKirbys
_08021964: .4byte gUnk_0203AD3C
_08021968: .4byte gUnk_08D60FA4
_0802196C: .4byte gSongTable
_08021970: .4byte 0x0000100C
_08021974: .4byte 0x00001008
_08021978: .4byte gUnk_0203AD10
_0802197C: .4byte 0x00000201
_08021980: .4byte sub_08021984

	thumb_func_start sub_08021984
sub_08021984: @ 0x08021984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r7, sl
	movs r0, #0
	str r0, [sp]
	mov sb, r0
_0802199A:
	mov r2, sb
	lsls r1, r2, #2
	movs r3, #0xa5
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080219AE
	b _08021D5A
_080219AE:
	adds r5, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r2, _080219E8 @ =gKirbys
	adds r6, r0, r2
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xb4
	adds r4, r7, r0
	lsls r1, r1, #1
	adds r3, #0x10
	adds r0, r7, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r2, #0
	mov r8, r1
	cmp r0, #5
	bls _080219DE
	b _08021D50
_080219DE:
	lsls r0, r0, #2
	ldr r1, _080219EC @ =_080219F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080219E8: .4byte gKirbys
_080219EC: .4byte _080219F0
_080219F0: @ jump table
	.4byte _08021A08 @ case 0
	.4byte _08021BAA @ case 1
	.4byte _08021C14 @ case 2
	.4byte _08021CB8 @ case 3
	.4byte _08021D04 @ case 4
	.4byte _08021D44 @ case 5
_08021A08:
	movs r4, #1
	mov ip, r4
	ldr r0, [r5, #0x34]
	ldr r1, [r6, #0x40]
	cmp r0, r1
	ble _08021A70
	subs r4, r0, r1
	asrs r1, r4, #8
	ldr r0, _08021A3C @ =gUnk_082DEA6C
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021A40 @ =gUnk_082DEA7C
	adds r0, r3, r0
	str r0, [sp, #8]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08021A44
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	b _08021A56
	.align 2, 0
_08021A3C: .4byte gUnk_082DEA6C
_08021A40: .4byte gUnk_082DEA7C
_08021A44:
	ldr r0, _08021A6C @ =gUnk_082DEA8C
	adds r0, r3, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r1, #0
	cmp r0, r2
	ble _08021A54
	adds r0, r2, #0
_08021A54:
	adds r1, r0, #0
_08021A56:
	movs r2, #0
	strh r1, [r5, #0x3c]
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021AC8
	rsbs r0, r1, #0
	strh r0, [r5, #0x3c]
	mov ip, r2
	b _08021AD2
	.align 2, 0
_08021A6C: .4byte gUnk_082DEA8C
_08021A70:
	cmp r0, r1
	bge _08021ACC
	subs r4, r1, r0
	asrs r1, r4, #8
	ldr r0, _08021A9C @ =gUnk_082DEA6C
	ldr r2, [sp]
	lsls r3, r2, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021AA0 @ =gUnk_082DEA7C
	adds r0, r3, r0
	str r0, [sp, #8]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08021AA4
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	b _08021AB2
	.align 2, 0
_08021A9C: .4byte gUnk_082DEA6C
_08021AA0: .4byte gUnk_082DEA7C
_08021AA4:
	ldr r0, _08021AC4 @ =gUnk_082DEA8C
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08021AB2
	adds r1, r0, #0
_08021AB2:
	movs r2, #0
	strh r1, [r5, #0x3c]
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021AC8
	mov ip, r2
	b _08021AD2
	.align 2, 0
_08021AC4: .4byte gUnk_082DEA8C
_08021AC8:
	strh r2, [r5, #0x3c]
	b _08021AD2
_08021ACC:
	str r1, [r5, #0x34]
	movs r0, #0
	strh r0, [r5, #0x3c]
_08021AD2:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x44]
	cmp r1, r0
	ble _08021B30
	subs r4, r1, r0
	asrs r1, r4, #8
	ldr r0, _08021B00 @ =gUnk_082DEA6C
	ldr r6, [sp]
	lsls r3, r6, #2
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021B04 @ =gUnk_082DEA7C
	adds r0, #2
	adds r2, r3, r0
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _08021B08
	ldrh r1, [r2]
	b _08021B18
	.align 2, 0
_08021B00: .4byte gUnk_082DEA6C
_08021B04: .4byte gUnk_082DEA7C
_08021B08:
	ldr r0, _08021B2C @ =gUnk_082DEA8C
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08021B18
	adds r1, r0, #0
_08021B18:
	movs r2, #0
	strh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bge _08021B26
	b _08021D50
_08021B26:
	strh r2, [r5, #0x3e]
	b _08021B96
	.align 2, 0
_08021B2C: .4byte gUnk_082DEA8C
_08021B30:
	cmp r1, r0
	bge _08021B90
	subs r4, r0, r1
	asrs r1, r4, #8
	ldr r0, _08021B5C @ =gUnk_082DEA6C
	ldr r6, [sp]
	lsls r3, r6, #2
	adds r0, #2
	adds r0, r3, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldr r0, _08021B60 @ =gUnk_082DEA7C
	adds r0, #2
	adds r2, r3, r0
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _08021B64
	ldrh r1, [r2]
	b _08021B78
	.align 2, 0
_08021B5C: .4byte gUnk_082DEA6C
_08021B60: .4byte gUnk_082DEA7C
_08021B64:
	ldr r0, _08021B8C @ =gUnk_082DEA8C
	adds r0, #2
	adds r0, r3, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r1, #0
	cmp r0, r2
	ble _08021B76
	adds r0, r2, #0
_08021B76:
	adds r1, r0, #0
_08021B78:
	movs r2, #0
	strh r1, [r5, #0x3e]
	movs r6, #0x3e
	ldrsh r0, [r5, r6]
	cmp r0, r4
	bge _08021B26
	mov ip, r2
	rsbs r0, r1, #0
	b _08021B94
	.align 2, 0
_08021B8C: .4byte gUnk_082DEA8C
_08021B90:
	str r0, [r5, #0x38]
	movs r0, #0
_08021B94:
	strh r0, [r5, #0x3e]
_08021B96:
	mov r0, ip
	cmp r0, #0
	bne _08021B9E
	b _08021D50
_08021B9E:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #1
	b _08021D4E
_08021BAA:
	adds r0, r6, #0
	bl sub_080525C0
	ldr r2, _08021C10 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r1, r6, #0
	adds r1, #0xd4
	movs r2, #0
	movs r0, #0x5b
	strh r0, [r1]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	str r4, [r6, #0x6c]
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	mov r4, sb
	lsls r1, r4, #2
	movs r6, #0xa5
	lsls r6, r6, #2
	adds r0, r7, r6
	adds r0, r0, r1
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	strh r2, [r0]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	add r0, r8
	movs r1, #2
	b _08021D4E
	.align 2, 0
_08021C10: .4byte 0x00000292
_08021C14:
	movs r4, #0xab
	lsls r4, r4, #2
	adds r0, r7, r4
	add r0, r8
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x1e
	bhi _08021C2C
	b _08021D50
_08021C2C:
	ldr r0, _08021CA4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x60
	mov r1, sl
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08021C98
	mov r6, sl
	ldrb r0, [r6]
	cmp r0, #0
	bne _08021C58
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08021C98
_08021C58:
	ldr r1, _08021CA8 @ =gUnk_08D60FA4
	ldr r4, _08021CAC @ =gSongTable
	ldr r2, _08021CB0 @ =0x00001044
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08021C7E
	movs r6, #0x82
	lsls r6, r6, #5
	adds r0, r4, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08021C98
_08021C7E:
	cmp r3, #0
	beq _08021C90
	ldr r0, _08021CB4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08021C98
_08021C90:
	movs r0, #0x82
	lsls r0, r0, #2
	bl m4aSongNumStart
_08021C98:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #3
	b _08021D4E
	.align 2, 0
_08021CA4: .4byte gUnk_0203AD3C
_08021CA8: .4byte gUnk_08D60FA4
_08021CAC: .4byte gSongTable
_08021CB0: .4byte 0x00001044
_08021CB4: .4byte gUnk_0203AD10
_08021CB8:
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
	ldr r1, _08021D00 @ =gUnk_082DEA9C
	ldr r3, [sp]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	ble _08021D50
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #4
	b _08021D4E
	.align 2, 0
_08021D00: .4byte gUnk_082DEA9C
_08021D04:
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r3, r4, #0
	adds r3, #0x52
	movs r6, #0
	ldrsh r1, [r3, r6]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	ldrh r0, [r3]
	adds r0, #0xa
	strh r0, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _08021D40 @ =0xFFFFE000
	cmp r1, r0
	bge _08021D50
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	add r0, r8
	movs r1, #5
	b _08021D4E
	.align 2, 0
_08021D40: .4byte 0xFFFFE000
_08021D44:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
_08021D4E:
	strh r1, [r0]
_08021D50:
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
_08021D5A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bhi _08021D6A
	b _0802199A
_08021D6A:
	movs r1, #1
	movs r2, #0
	mov sb, r2
	movs r4, #0xa5
	lsls r4, r4, #2
	adds r3, r7, r4
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r2, r7, r6
_08021D7C:
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08021D94
	lsls r0, r4, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, #4
	bhi _08021D94
	movs r1, #0
_08021D94:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #3
	bls _08021D7C
	cmp r1, #0
	beq _08021DBE
	ldr r0, _08021DD0 @ =gUnk_0835105C
	ldrh r1, [r0, #0x1e]
	mov r0, sl
	movs r2, #0
	bl sub_0808859C
	mov r6, sl
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
_08021DBE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021DD0: .4byte gUnk_0835105C

	thumb_func_start sub_08021DD4
sub_08021DD4: @ 0x08021DD4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021DEE
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08021DF6
_08021DEE:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08021DF6:
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #2]
	ldrb r7, [r0, #3]
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r5, [r0]
	ldr r1, _08021E48 @ =gAIKirbyState
	ldrh r0, [r1]
	cmp r0, #0x63
	bhi _08021E76
	movs r0, #0x64
	strh r0, [r1]
	ldr r0, _08021E4C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08021E76
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08021E64
	ldr r0, _08021E50 @ =gUnk_0203AD3C
	ldr r1, _08021E54 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08021E5C
	ldr r2, _08021E58 @ =gSaveID
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _08021E3E
	adds r1, r0, #0
_08021E3E:
	movs r0, #1
	bl UpdateSaveBufferByOffset
	b _08021E76
	.align 2, 0
_08021E48: .4byte gAIKirbyState
_08021E4C: .4byte gUnk_0203AD10
_08021E50: .4byte gUnk_0203AD3C
_08021E54: .4byte gUnk_0203AD24
_08021E58: .4byte gSaveID
_08021E5C:
	movs r0, #8
	bl sub_08031CE4
	b _08021E76
_08021E64:
	ldr r2, _08021EA4 @ =gSaveID
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _08021E70
	adds r1, r0, #0
_08021E70:
	movs r0, #1
	bl UpdateSaveBufferByOffset
_08021E76:
	adds r0, r4, #0
	bl ObjectDestroy
	cmp r6, #0
	bne _08021E84
	cmp r5, #0xff
	beq _08021E9E
_08021E84:
	ldr r1, _08021EA8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r1, _08021EAC @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl sub_08001678
_08021E9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EA4: .4byte gSaveID
_08021EA8: .4byte gCurLevelInfo
_08021EAC: .4byte 0x0000065E

	thumb_func_start sub_08021EB0
sub_08021EB0: @ 0x08021EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	str r7, [sp, #0x2c]
	ldr r0, _08021F34 @ =gUnk_082DE9FC
	ldrh r5, [r0, #0x24]
	ldrh r0, [r0, #0x26]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	adds r2, r5, #0
	mov r3, r8
	bl sub_0808B62C
	adds r4, r7, #0
	adds r4, #0xbc
	str r0, [r4]
	adds r0, #0x2b
	strb r6, [r0]
	ldr r2, _08021F38 @ =gKirbys
	ldr r0, _08021F3C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x42
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08021F40
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021F46
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08021F46
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08021F46
	.align 2, 0
_08021F34: .4byte gUnk_082DE9FC
_08021F38: .4byte gKirbys
_08021F3C: .4byte gUnk_0203AD3C
_08021F40:
	adds r0, r1, #0
	adds r0, #0x2b
	strb r6, [r0]
_08021F46:
	ldr r0, [sp, #0x2c]
	adds r0, #0xbc
	mov sl, r0
	ldr r0, [r0]
	ldr r5, _08022078 @ =0xFFFFC000
	str r5, [r0, #0x38]
	str r5, [r0, #0x34]
	ldr r1, _0802207C @ =gUnk_082DEA24
	ldrh r6, [r1, #0x24]
	ldrh r2, [r1, #0x26]
	mov r8, r2
	mov r0, r8
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x18
	movs r4, #0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_0808B62C
	ldr r1, [sp, #0x2c]
	adds r1, #0xc0
	mov sb, r1
	str r0, [r1]
	mov r2, sl
	ldr r1, [r2]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r1, #1
	adds r0, #0x2b
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #4]
	add r0, sp, #4
	strh r6, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x1a]
	adds r1, r0, #0
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r1, #0
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r2, r1, #0
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	adds r0, r2, #0
	bl sub_08155128
	add r0, sp, #4
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r2, sb
	ldr r0, [r2]
	str r5, [r0, #0x38]
	str r5, [r0, #0x34]
	ldr r0, _08022080 @ =gUnk_082DE9FC
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	bl sub_0808B62C
	ldr r2, [sp, #0x2c]
	adds r2, #0xb4
	str r0, [r2]
	mov r3, sl
	ldr r1, [r3]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, [r2]
	movs r6, #0xc8
	lsls r6, r6, #8
	str r6, [r0, #0x34]
	ldr r0, [r2]
	movs r5, #0x88
	lsls r5, r5, #8
	str r5, [r0, #0x38]
	ldr r0, _0802207C @ =gUnk_082DEA24
	ldrh r2, [r0]
	ldrb r3, [r0, #2]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x14
	bl sub_0808B62C
	ldr r2, [sp, #0x2c]
	adds r2, #0xb8
	str r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, [r2]
	str r6, [r0, #0x34]
	ldr r0, [r2]
	str r5, [r0, #0x38]
	movs r2, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r8, r0
	ldr r6, _08022084 @ =gKirbys
	ldr r5, _08022088 @ =0x01000800
	subs r4, #2
	movs r3, #0
_08022046:
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r1, [r0, #8]
	orrs r1, r5
	ands r1, r4
	str r1, [r0, #8]
	adds r0, #0xd4
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08022046
	ldr r0, _0802208C @ =sub_08022F50
	str r0, [r7, #0x78]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022078: .4byte 0xFFFFC000
_0802207C: .4byte gUnk_082DEA24
_08022080: .4byte gUnk_082DE9FC
_08022084: .4byte gKirbys
_08022088: .4byte 0x01000800
_0802208C: .4byte sub_08022F50

	thumb_func_start sub_08022090
sub_08022090: @ 0x08022090
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xc4
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _080220F4 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _080220F8 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x18]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1a]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _080220FC @ =0x00000243
	bl m4aSongNumStart
	adds r0, r5, #0
	adds r0, #0xc8
	strh r4, [r0]
	ldr r0, _08022100 @ =sub_08022104
	str r0, [r5, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080220F4: .4byte gUnk_082DE9FC
_080220F8: .4byte gUnk_082DEA24
_080220FC: .4byte 0x00000243
_08022100: .4byte sub_08022104

	thumb_func_start sub_08022104
sub_08022104: @ 0x08022104
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc6
	adds r0, r0, r5
	mov ip, r0
	ldrh r0, [r0]
	adds r0, #0x26
	mov r1, ip
	strh r0, [r1]
	adds r3, r5, #0
	adds r3, #0xb4
	ldr r2, [r3]
	adds r4, r5, #0
	adds r4, #0xc4
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r3]
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	adds r3, r5, #0
	adds r3, #0xb8
	ldr r2, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r3]
	mov r4, ip
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r3]
	ldr r1, [r0, #0x38]
	ldr r0, _0802216C @ =0xFFFFC000
	cmp r1, r0
	bgt _08022164
	ldr r0, _08022170 @ =sub_08023054
	str r0, [r5, #0x78]
_08022164:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802216C: .4byte 0xFFFFC000
_08022170: .4byte sub_08023054

	thumb_func_start sub_08022174
sub_08022174: @ 0x08022174
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	movs r3, #0
	ldr r7, _0802221C @ =gUnk_082DE9FC
	adds r5, r6, #0
	adds r5, #0xde
	adds r4, r6, #0
	adds r4, #0xe2
	movs r2, #0
_08022190:
	adds r1, r5, r3
	adds r0, r4, r3
	strb r2, [r0]
	strb r2, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08022190
	mov r1, r8
	adds r1, #0xb4
	movs r0, #0
	mov sb, r0
	movs r0, #0
	strh r0, [r1]
	ldrh r5, [r7, #0x10]
	ldrb r7, [r7, #0x12]
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0808B62C
	mov r2, r8
	adds r2, #0xbc
	str r0, [r2]
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
	ldr r3, _08022220 @ =gKirbys
	ldr r0, _08022224 @ =gUnk_0203AD3C
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
	bne _08022228
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022230
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08022230
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _08022230
	.align 2, 0
_0802221C: .4byte gUnk_082DE9FC
_08022220: .4byte gKirbys
_08022224: .4byte gUnk_0203AD3C
_08022228:
	adds r0, r3, #0
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
_08022230:
	ldr r1, [r4]
	movs r0, #0xb8
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r1, [r4]
	movs r0, #0x8e
	lsls r0, r0, #9
	str r0, [r1, #0x38]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #1
	eors r1, r0
	movs r0, #0
	mov sb, r0
	movs r3, #0
	strh r1, [r2, #6]
	ldr r0, _080222C0 @ =gUnk_082DEA24
	ldrh r5, [r0, #0x10]
	ldrb r7, [r0, #0x12]
	str r3, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0808B62C
	mov r2, r8
	adds r2, #0xc0
	str r0, [r2]
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
	ldr r3, _080222C4 @ =gKirbys
	ldr r0, _080222C8 @ =gUnk_0203AD3C
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
	bne _080222CC
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _080222D4
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080222D4
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0803DFAC
	ldr r1, [r4]
	adds r1, #0x2b
	strb r0, [r1]
	b _080222D4
	.align 2, 0
_080222C0: .4byte gUnk_082DEA24
_080222C4: .4byte gKirbys
_080222C8: .4byte gUnk_0203AD3C
_080222CC:
	adds r0, r3, #0
	adds r0, #0x2b
	mov r1, sb
	strb r1, [r0]
_080222D4:
	ldr r1, [r4]
	movs r0, #0xb8
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r1, [r4]
	movs r0, #0x8e
	lsls r0, r0, #9
	str r0, [r1, #0x38]
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #1
	eors r0, r1
	strh r0, [r2, #6]
	movs r3, #0
	ldr r7, _08022344 @ =gKirbys
	ldr r0, _08022348 @ =sub_080230DC
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r5, r6, #0
	adds r5, #0x60
_080222FE:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r2, r0, r7
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022328
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r5]
	cmp r0, r1
	bne _08022328
	ldr r0, [r2, #8]
	ldr r1, _0802234C @ =0x01000800
	orrs r0, r1
	orrs r0, r4
	str r0, [r2, #8]
_08022328:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080222FE
	mov r0, r8
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022344: .4byte gKirbys
_08022348: .4byte sub_080230DC
_0802234C: .4byte 0x01000800

	thumb_func_start sub_08022350
sub_08022350: @ 0x08022350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov sb, r7
	ldr r0, _08022444 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _08022448 @ =gCurLevelInfo
	adds r1, r1, r0
	mov ip, r1
	movs r0, #0xb4
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r0]
	adds r0, #1
	mov r1, r8
	strh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802245C
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	ldr r5, _0802244C @ =gRngVal
	ldr r0, [r5]
	ldr r4, _08022450 @ =0x00196225
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r2, _08022454 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r3, #7
	adds r0, r1, #0
	ands r0, r3
	subs r0, #4
	adds r6, r7, #0
	adds r6, #0xca
	strb r0, [r6]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	ands r0, r3
	subs r0, #4
	adds r3, r7, #0
	adds r3, #0xcb
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x44
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x46
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r6, #0
	str r2, [sp]
	str r1, [sp, #4]
	adds r4, r7, #0
	adds r4, #0xc8
	movs r0, #0xc9
	adds r0, r0, r7
	mov sl, r0
	adds r2, r7, #0
	adds r2, #0x60
_080223EC:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _08022458 @ =gKirbys
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022436
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r3, [r2]
	cmp r0, r3
	bne _08022436
	mov r0, sb
	adds r0, #0xca
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	mov r5, ip
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	mov r0, sb
	adds r0, #0xcb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08022436:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080223EC
	b _080224F4
	.align 2, 0
_08022444: .4byte gUnk_0203AD3C
_08022448: .4byte gCurLevelInfo
_0802244C: .4byte gRngVal
_08022450: .4byte 0x00196225
_08022454: .4byte 0x3C6EF35F
_08022458: .4byte gKirbys
_0802245C:
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #0
	strb r0, [r1]
	mov r3, ip
	adds r3, #0x44
	adds r5, r7, #0
	adds r5, #0xca
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x46
	adds r4, r7, #0
	adds r4, #0xcb
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrh r0, [r1]
	subs r0, r0, r2
	strh r0, [r1]
	movs r6, #0
	str r3, [sp]
	str r1, [sp, #4]
	adds r3, r5, #0
	adds r2, r4, #0
	subs r4, #3
	movs r0, #0xc9
	adds r0, r0, r7
	mov sl, r0
	adds r1, r7, #0
	adds r1, #0x60
	str r1, [sp, #8]
_080224A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r5, _0802253C @ =gKirbys
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080224E4
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080224E4
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	mov r5, ip
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_080224E4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080224A0
	movs r0, #0
	strb r0, [r3]
	strb r0, [r2]
_080224F4:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	blo _08022554
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x95
	bgt _08022554
	movs r0, #0
	strb r0, [r4]
	ldr r2, _08022540 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08022544 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08022548 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0x1f
	ands r0, r1
	adds r0, #5
	mov r5, sl
	strb r0, [r5]
	movs r0, #0x10
	ldr r1, _0802254C @ =gBldRegs
	strh r0, [r1, #4]
	ldr r0, _08022550 @ =0x0000023E
	bl m4aSongNumStart
	b _08022568
	.align 2, 0
_0802253C: .4byte gKirbys
_08022540: .4byte gRngVal
_08022544: .4byte 0x00196225
_08022548: .4byte 0x3C6EF35F
_0802254C: .4byte gBldRegs
_08022550: .4byte 0x0000023E
_08022554:
	ldr r0, _08022560 @ =gBldRegs
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _08022564
	subs r1, #1
	b _08022566
	.align 2, 0
_08022560: .4byte gBldRegs
_08022564:
	movs r1, #0
_08022566:
	strh r1, [r0, #4]
_08022568:
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x95
	ble _0802260E
	ldr r0, _08022620 @ =gBldRegs
	ldrh r2, [r0, #4]
	cmp r2, #0
	bne _0802260E
	mov r1, sb
	adds r1, #0xcc
	ldrb r0, [r1]
	ldr r5, _08022624 @ =sub_08023154
	cmp r0, #0
	beq _08022604
	strb r2, [r1]
	mov r3, sb
	adds r3, #0xca
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r4, [sp]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	mov r2, sb
	adds r2, #0xcb
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r4, [sp, #4]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	movs r6, #0
	movs r0, #0x60
	adds r0, r0, r7
	mov r8, r0
_080225B0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _08022628 @ =gKirbys
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080225F4
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080225F4
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #8
	mov r4, ip
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080225F4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080225B0
	movs r0, #0
	strb r0, [r3]
	strb r0, [r2]
_08022604:
	movs r0, #0
	ldr r1, _08022620 @ =gBldRegs
	strh r0, [r1]
	strh r0, [r1, #4]
	str r5, [r7, #0x78]
_0802260E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022620: .4byte gBldRegs
_08022624: .4byte sub_08023154
_08022628: .4byte gKirbys

	thumb_func_start sub_0802262C
sub_0802262C: @ 0x0802262C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08022690 @ =0x00000399
	mov r8, r0
	movs r7, #0
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #0x24
	mov r2, r8
	movs r3, #0xa
	bl sub_0808B62C
	adds r1, r6, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _08022694 @ =gKirbys
	ldr r0, _08022698 @ =gUnk_0203AD3C
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
	bne _0802269C
	mov r0, r8
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802269E
	mov r0, r8
	movs r1, #0xd
	bl sub_0803DFAC
	strb r0, [r4]
	b _0802269E
	.align 2, 0
_08022690: .4byte 0x00000399
_08022694: .4byte gKirbys
_08022698: .4byte gUnk_0203AD3C
_0802269C:
	strb r7, [r4]
_0802269E:
	movs r0, #0xb8
	lsls r0, r0, #9
	str r0, [r5, #0x34]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r5, #0x38]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x20]
	ldr r0, _080226C0 @ =sub_0802318C
	str r0, [r6, #0x78]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080226C0: .4byte sub_0802318C

	thumb_func_start sub_080226C4
sub_080226C4: @ 0x080226C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r8, ip
	mov r1, ip
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08022730 @ =gKirbys
	mov sb, r0
	ldr r1, _08022734 @ =sub_08022770
	mov sl, r1
	movs r6, #0x80
	lsls r6, r6, #1
	mov r5, ip
	adds r5, #0xd0
	mov r7, ip
	adds r7, #0x60
_080226F0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	mov r1, sb
	adds r3, r0, r1
	adds r0, r3, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08022750
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _08022750
	lsls r2, r4, #2
	mov r0, r8
	adds r0, #0xce
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	cmp r0, #0xdf
	ble _08022738
	adds r1, r5, r2
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0802273E
	.align 2, 0
_08022730: .4byte gKirbys
_08022734: .4byte sub_08022770
_08022738:
	adds r1, r5, r2
	movs r0, #0xc0
	lsls r0, r0, #2
_0802273E:
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x4a
	adds r0, r3, #0
	adds r0, #0xd4
	strh r1, [r0]
	ldr r0, [r3, #8]
	orrs r0, r6
	str r0, [r3, #8]
_08022750:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080226F0
	mov r0, sl
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022770
sub_08022770: @ 0x08022770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	mov sb, r0
	movs r3, #1
	adds r1, r0, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0
	mov r8, r0
	mov r7, sp
	add r1, sp, #4
	mov sl, r1
_08022796:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r6, _08022824 @ =gKirbys
	adds r0, r0, r6
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _080227B8
	b _08022984
_080227B8:
	mov r0, ip
	adds r0, #0x60
	ldr r1, [sp, #8]
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080227CA
	b _08022984
_080227CA:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r0, sb
	adds r0, #0xde
	mov r6, r8
	adds r4, r0, r6
	ldrb r2, [r4]
	str r0, [sp, #0xc]
	cmp r2, #1
	bne _080227EA
	b _08022930
_080227EA:
	cmp r2, #1
	ble _080227F0
	b _08022984
_080227F0:
	cmp r2, #0
	beq _080227F6
	b _08022984
_080227F6:
	mov r1, ip
	adds r1, #0xd4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _0802280C
	movs r0, #0x4a
	strh r0, [r1]
_0802280C:
	mov r0, sb
	adds r0, #0xb4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r0, #0xc7
	bgt _08022828
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0802282A
	.align 2, 0
_08022824: .4byte gKirbys
_08022828:
	movs r0, #0xc8
_0802282A:
	adds r3, r0, #0
	mov r2, r8
	lsls r1, r2, #2
	mov r0, sb
	adds r0, #0xce
	adds r4, r0, r1
	ldrh r0, [r4]
	strh r0, [r7]
	mov r0, sb
	adds r0, #0xd0
	adds r5, r0, r1
	ldrh r0, [r5]
	strh r0, [r7, #2]
	mov r6, ip
	ldr r1, [r6, #0x40]
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r0, r2, #0
	subs r0, r0, r1
	mov r6, sl
	strh r0, [r6]
	mov r0, ip
	ldr r1, [r0, #0x44]
	ldr r2, _08022920 @ =0xFFFFE000
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r6, #2
	ldrsh r2, [r7, r6]
	str r2, [sp, #0x10]
	adds r1, r0, #0
	muls r1, r2, r1
	str r1, [sp, #0x14]
	movs r6, #0
	ldrsh r2, [r7, r6]
	mov r1, sl
	movs r6, #2
	ldrsh r0, [r1, r6]
	muls r0, r2, r0
	ldr r6, [sp, #0x14]
	subs r1, r6, r0
	cmp r1, #0
	ble _0802288A
	lsls r0, r3, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x18
_0802288A:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r3, _08022924 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	ldr r3, _08022928 @ =gSineTable
	adds r0, r0, r3
	movs r6, #0
	ldrsh r3, [r0, r6]
	muls r2, r3, r2
	lsls r1, r1, #1
	ldr r0, _08022928 @ =gSineTable
	adds r1, r1, r0
	movs r6, #0
	ldrsh r1, [r1, r6]
	ldr r6, [sp, #0x10]
	adds r0, r6, #0
	muls r0, r1, r0
	subs r2, r2, r0
	asrs r2, r2, #0xe
	strh r2, [r4]
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	movs r6, #2
	ldrsh r0, [r7, r6]
	muls r0, r3, r0
	adds r1, r1, r0
	asrs r1, r1, #0xe
	strh r1, [r5]
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r6, ip
	ldr r1, [r6, #0x44]
	adds r1, r1, r2
	str r1, [r6, #0x44]
	asrs r0, r0, #8
	ldr r2, _0802292C @ =0xFFFFFE98
	adds r0, r0, r2
	cmp r0, #0x10
	bhi _08022982
	asrs r0, r1, #8
	cmp r0, #0xd7
	ble _08022982
	cmp r0, #0xe8
	bgt _08022982
	movs r0, #0xb8
	lsls r0, r0, #9
	str r0, [r6, #0x40]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, [sp, #0xc]
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	b _08022982
	.align 2, 0
_08022920: .4byte 0xFFFFE000
_08022924: .4byte 0x000003FF
_08022928: .4byte gSineTable
_0802292C: .4byte 0xFFFFFE98
_08022930:
	mov r1, ip
	adds r1, #0xd4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _08022946
	movs r0, #0x4a
	strh r0, [r1]
_08022946:
	mov r0, sb
	adds r0, #0xe2
	mov r6, r8
	adds r3, r0, r6
	ldrb r0, [r3]
	ands r2, r0
	cmp r2, #0
	beq _08022964
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	mov r2, ip
	str r0, [r2, #8]
_08022964:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08022982
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #2
	strb r0, [r4]
_08022982:
	movs r3, #0
_08022984:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08022994
	b _08022796
_08022994:
	cmp r3, #0
	beq _080229BE
	ldr r0, _080229D0 @ =gMPlayInfo_0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229D4 @ =gMPlayInfo_1
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229D8 @ =gMPlayInfo_2
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229DC @ =gMPlayInfo_3
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r0, _080229E0 @ =sub_08023268
	ldr r6, [sp, #8]
	str r0, [r6, #0x78]
_080229BE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229D0: .4byte gMPlayInfo_0
_080229D4: .4byte gMPlayInfo_1
_080229D8: .4byte gMPlayInfo_2
_080229DC: .4byte gMPlayInfo_3
_080229E0: .4byte sub_08023268

	thumb_func_start sub_080229E4
sub_080229E4: @ 0x080229E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	adds r4, r7, #0
	adds r4, #0xbc
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022A80 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r2, #0x1a]
	movs r6, #0x20
	strb r6, [r2, #0x1c]
	adds r0, r2, #0
	bl sub_08155128
	ldr r5, [r4]
	ldrh r1, [r5, #6]
	ldr r4, _08022A84 @ =0x0000FFFB
	adds r0, r4, #0
	ands r0, r1
	movs r1, #8
	mov sl, r1
	mov r1, sl
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #1
	mov sb, r0
	mov r1, sb
	strh r1, [r5, #4]
	strh r6, [r5, #2]
	movs r0, #2
	mov r8, r0
	mov r1, r8
	strb r1, [r5, #1]
	adds r5, r7, #0
	adds r5, #0xc0
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022A88 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r5, [r5]
	ldrh r0, [r5, #6]
	ands r4, r0
	mov r0, sl
	orrs r4, r0
	strh r4, [r5, #6]
	mov r1, sb
	strh r1, [r5, #4]
	strh r6, [r5, #2]
	mov r0, r8
	strb r0, [r5, #1]
	ldr r0, _08022A8C @ =sub_08022A90
	str r0, [r7, #0x78]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022A80: .4byte gUnk_082DE9FC
_08022A84: .4byte 0x0000FFFB
_08022A88: .4byte gUnk_082DEA24
_08022A8C: .4byte sub_08022A90

	thumb_func_start sub_08022A90
sub_08022A90: @ 0x08022A90
	push {r4, r5, lr}
	adds r2, r0, #0
	mov ip, r2
	adds r4, r2, #0
	adds r4, #0xbc
	ldr r1, [r4]
	ldrh r3, [r1, #0x3c]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _08022ACA
	adds r0, r3, #0
	subs r0, #0x32
	movs r5, #0
	strh r0, [r1, #0x3c]
	adds r3, r2, #0
	adds r3, #0xc0
	ldr r1, [r3]
	ldrh r0, [r1, #0x3c]
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r4]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08022ACA
	strh r5, [r1, #0x3c]
	ldr r0, [r3]
	strh r5, [r0, #0x3c]
_08022ACA:
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r2, #0
	adds r4, #0xbc
	adds r5, r2, #0
	adds r5, #0xc0
	cmp r0, #9
	ble _08022B30
	movs r0, #0
	strh r0, [r1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B60 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	movs r2, #1
	strh r2, [r3, #4]
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsrs r0, r0, #4
	strb r0, [r3, #1]
	ldr r3, [r5]
	ldrh r0, [r3, #6]
	ands r1, r0
	strh r1, [r3, #6]
	strh r2, [r3, #4]
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsrs r0, r0, #4
	strb r0, [r3, #1]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B64 @ =0x0000FFF7
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r0, _08022B68 @ =sub_08022B74
	mov r1, ip
	str r0, [r1, #0x78]
_08022B30:
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B6C @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r4]
	ldrh r2, [r3, #6]
	ldr r1, _08022B70 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022B60: .4byte 0x0000FFFB
_08022B64: .4byte 0x0000FFF7
_08022B68: .4byte sub_08022B74
_08022B6C: .4byte 0x0000FFFD
_08022B70: .4byte 0x0000EFFF

	thumb_func_start sub_08022B74
sub_08022B74: @ 0x08022B74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r6
	adds r3, r6, #0
	adds r3, #0xbc
	ldr r1, [r3]
	ldrh r2, [r1, #0x3c]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08022BB2
	adds r0, r2, #0
	subs r0, #0x32
	movs r4, #0
	strh r0, [r1, #0x3c]
	adds r2, r6, #0
	adds r2, #0xc0
	ldr r1, [r2]
	ldrh r0, [r1, #0x3c]
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r3]
	movs r3, #0x3c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08022BB2
	strh r4, [r1, #0x3c]
	ldr r0, [r2]
	strh r4, [r0, #0x3c]
_08022BB2:
	adds r7, r6, #0
	adds r7, #0xbc
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	adds r5, r6, #0
	adds r5, #0xc0
	cmp r0, #0
	beq _08022C4C
	adds r2, #0xc
	ldr r1, _08022C80 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x20]
	movs r4, #0
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x22]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, [r7]
	strh r4, [r0, #4]
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08022C84 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x20]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x22]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, [r5]
	strh r4, [r0, #4]
	ldr r1, [r5]
	ldr r0, [r1, #0x34]
	movs r4, #0xa0
	lsls r4, r4, #5
	adds r0, r0, r4
	str r0, [r1, #0x34]
	ldr r1, [r5]
	ldr r0, [r1, #0x38]
	ldr r2, _08022C88 @ =0xFFFFE700
	adds r0, r0, r2
	str r0, [r1, #0x38]
	ldr r0, [r5]
	ldr r1, [r0, #0x34]
	movs r0, #0xb8
	lsls r0, r0, #9
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0xe6
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, [r0, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #8
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	ldr r3, _08022C8C @ =0xFFFFFE84
	adds r0, r0, r3
	adds r1, r6, #0
	adds r1, #0xe8
	strh r0, [r1]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _08022C90 @ =sub_08022C9C
	mov r4, r8
	str r0, [r4, #0x78]
_08022C4C:
	ldr r3, [r7]
	ldrh r2, [r3, #6]
	ldr r1, _08022C94 @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r7]
	ldrh r2, [r3, #6]
	ldr r1, _08022C98 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r5]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022C80: .4byte gUnk_082DE9FC
_08022C84: .4byte gUnk_082DEA24
_08022C88: .4byte 0xFFFFE700
_08022C8C: .4byte 0xFFFFFE84
_08022C90: .4byte sub_08022C9C
_08022C94: .4byte 0x0000FFFD
_08022C98: .4byte 0x0000EFFF

	thumb_func_start sub_08022C9C
sub_08022C9C: @ 0x08022C9C
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r6, ip
	mov r3, ip
	adds r3, #0xe8
	ldrh r0, [r3]
	adds r0, #0x26
	strh r0, [r3]
	mov r4, ip
	adds r4, #0xc0
	ldr r2, [r4]
	mov r0, ip
	adds r0, #0xe6
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r2, [r4]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	subs r3, #0x2c
	ldr r1, [r3]
	ldrh r2, [r1, #0x3c]
	movs r4, #0x3c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _08022CEE
	adds r0, r2, #0
	subs r0, #0x32
	strh r0, [r1, #0x3c]
	ldr r1, [r3]
	movs r5, #0x3c
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08022CEE
	movs r0, #0
	strh r0, [r1, #0x3c]
_08022CEE:
	mov r5, ip
	adds r5, #0xbc
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08022D0C
	movs r0, #8
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, [r5]
	adds r0, #0x28
	movs r1, #0x10
	strb r1, [r0]
_08022D0C:
	mov r1, ip
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _08022D3C
	mov r0, ip
	adds r0, #0xc0
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, _08022D38 @ =sub_080232E4
	str r0, [r6, #0x78]
	b _08022D68
	.align 2, 0
_08022D38: .4byte sub_080232E4
_08022D3C:
	ldr r3, [r5]
	ldrh r2, [r3, #6]
	ldr r1, _08022D70 @ =0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	mov r4, ip
	adds r4, #0xc0
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
	ldr r3, [r5]
	ldrh r2, [r3, #6]
	ldr r1, _08022D74 @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #6]
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	ands r1, r0
	strh r1, [r2, #6]
_08022D68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022D70: .4byte 0x0000FFFD
_08022D74: .4byte 0x0000EFFF

	thumb_func_start sub_08022D78
sub_08022D78: @ 0x08022D78
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb4
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08022DD0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	adds r3, r4, #0
	adds r3, #0xc4
	str r0, [r3]
	ldrh r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, [r3]
	movs r0, #0x80
	strh r0, [r1, #0xa]
	ldr r1, [r3]
	ldr r0, _08022DD8 @ =0x0000FFFF
	strh r0, [r1, #4]
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #6]
	movs r0, #0
	strh r0, [r5]
	ldr r0, _08022DDC @ =sub_080233A8
	str r0, [r4, #0x78]
	ldr r0, _08022DE0 @ =gUnk_0835105C
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	movs r2, #0x48
	bl sub_0808859C
_08022DD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022DD8: .4byte 0x0000FFFF
_08022DDC: .4byte sub_080233A8
_08022DE0: .4byte gUnk_0835105C

	thumb_func_start sub_08022DE4
sub_08022DE4: @ 0x08022DE4
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bhi _08022E62
	lsls r0, r0, #2
	ldr r1, _08022DFC @ =_08022E00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022DFC: .4byte _08022E00
_08022E00: @ jump table
	.4byte _08022E1C @ case 0
	.4byte _08022E28 @ case 1
	.4byte _08022E34 @ case 2
	.4byte _08022E62 @ case 3
	.4byte _08022E40 @ case 4
	.4byte _08022E4C @ case 5
	.4byte _08022E58 @ case 6
_08022E1C:
	ldr r0, _08022E24 @ =sub_08020798
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E24: .4byte sub_08020798
_08022E28:
	ldr r0, _08022E30 @ =sub_08022EB4
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E30: .4byte sub_08022EB4
_08022E34:
	ldr r0, _08022E3C @ =sub_0802172C
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E3C: .4byte sub_0802172C
_08022E40:
	ldr r0, _08022E48 @ =sub_08022F24
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E48: .4byte sub_08022F24
_08022E4C:
	ldr r0, _08022E54 @ =sub_08022174
	str r0, [r2, #0x78]
	b _08022E62
	.align 2, 0
_08022E54: .4byte sub_08022174
_08022E58:
	ldr r1, _08022E68 @ =sub_080233E0
	str r1, [r2, #0x78]
	adds r0, r2, #0
	bl _call_via_r1
_08022E62:
	pop {r0}
	bx r0
	.align 2, 0
_08022E68: .4byte sub_080233E0

	thumb_func_start sub_08022E6C
sub_08022E6C: @ 0x08022E6C
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022E7C @ =sub_08023438
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022E7C: .4byte sub_08023438

	thumb_func_start sub_08022E80
sub_08022E80: @ 0x08022E80
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r2, [r1]
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #1
	strb r1, [r3]
	adds r2, #0x2c
	movs r1, #8
	strb r1, [r2]
	ldr r1, _08022E9C @ =sub_0802347C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022E9C: .4byte sub_0802347C

	thumb_func_start sub_08022EA0
sub_08022EA0: @ 0x08022EA0
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022EB0 @ =sub_080234C4
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EB0: .4byte sub_080234C4

	thumb_func_start sub_08022EB4
sub_08022EB4: @ 0x08022EB4
	adds r2, r0, #0
	adds r0, #0xb8
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08022EC8 @ =sub_08021424
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_08022EC8: .4byte sub_08021424

	thumb_func_start sub_08022ECC
sub_08022ECC: @ 0x08022ECC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022EDC @ =sub_080234E4
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EDC: .4byte sub_080234E4

	thumb_func_start sub_08022EE0
sub_08022EE0: @ 0x08022EE0
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r1, [r1]
	adds r1, #0x52
	movs r2, #0x80
	lsls r2, r2, #3
	strh r2, [r1]
	ldr r1, _08022EF4 @ =sub_08021634
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022EF4: .4byte sub_08021634

	thumb_func_start sub_08022EF8
sub_08022EF8: @ 0x08022EF8
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F08 @ =sub_08023524
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F08: .4byte sub_08023524

	thumb_func_start sub_08022F0C
sub_08022F0C: @ 0x08022F0C
	ldr r1, _08022F1C @ =0x000002B6
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F20 @ =sub_08023544
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F1C: .4byte 0x000002B6
_08022F20: .4byte sub_08023544

	thumb_func_start sub_08022F24
sub_08022F24: @ 0x08022F24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08022F34 @ =gAIKirbyState
	ldrh r0, [r0]
	cmp r0, #0x63
	bls _08022F3C
	ldr r0, _08022F38 @ =sub_080230A0
	b _08022F42
	.align 2, 0
_08022F34: .4byte gAIKirbyState
_08022F38: .4byte sub_080230A0
_08022F3C:
	bl m4aMPlayAllStop
	ldr r0, _08022F4C @ =sub_08021EB0
_08022F42:
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022F4C: .4byte sub_08021EB0

	thumb_func_start sub_08022F50
sub_08022F50: @ 0x08022F50
	adds r2, r0, #0
	adds r2, #0xc8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08022F60 @ =sub_08022F64
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08022F60: .4byte sub_08022F64

	thumb_func_start sub_08022F64
sub_08022F64: @ 0x08022F64
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08022F7E
	ldr r0, _08022F84 @ =sub_08022F88
	str r0, [r2, #0x78]
_08022F7E:
	pop {r0}
	bx r0
	.align 2, 0
_08022F84: .4byte sub_08022F88

	thumb_func_start sub_08022F88
sub_08022F88: @ 0x08022F88
	mov ip, r0
	adds r0, #0xb4
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	movs r2, #1
	eors r0, r2
	movs r3, #0
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xb8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	eors r0, r2
	strh r0, [r1, #6]
	mov r0, ip
	adds r0, #0xc8
	strh r3, [r0]
	ldr r0, _08022FB4 @ =sub_08022FB8
	mov r1, ip
	str r0, [r1, #0x78]
	bx lr
	.align 2, 0
_08022FB4: .4byte sub_08022FB8

	thumb_func_start sub_08022FB8
sub_08022FB8: @ 0x08022FB8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08022FD2
	ldr r0, _08022FD8 @ =sub_08022FDC
	str r0, [r2, #0x78]
_08022FD2:
	pop {r0}
	bx r0
	.align 2, 0
_08022FD8: .4byte sub_08022FDC

	thumb_func_start sub_08022FDC
sub_08022FDC: @ 0x08022FDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08023024 @ =gUnk_082DE9FC
	ldrh r0, [r1, #0x14]
	movs r4, #0
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _08023028 @ =gUnk_082DEA24
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r5, #0
	adds r0, #0xc8
	strh r4, [r0]
	ldr r0, _0802302C @ =sub_08023030
	str r0, [r5, #0x78]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023024: .4byte gUnk_082DE9FC
_08023028: .4byte gUnk_082DEA24
_0802302C: .4byte sub_08023030

	thumb_func_start sub_08023030
sub_08023030: @ 0x08023030
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0802304A
	ldr r0, _08023050 @ =sub_08022090
	str r0, [r2, #0x78]
_0802304A:
	pop {r0}
	bx r0
	.align 2, 0
_08023050: .4byte sub_08022090

	thumb_func_start sub_08023054
sub_08023054: @ 0x08023054
	adds r2, r0, #0
	adds r2, #0xc8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023064 @ =sub_08023068
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023064: .4byte sub_08023068

	thumb_func_start sub_08023068
sub_08023068: @ 0x08023068
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0802308E
	ldr r0, _08023094 @ =gRoomProps
	ldr r1, _08023098 @ =0x00007D78
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0802309C @ =sub_080230A0
	str r0, [r4, #0x78]
_0802308E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023094: .4byte gRoomProps
_08023098: .4byte 0x00007D78
_0802309C: .4byte sub_080230A0

	thumb_func_start sub_080230A0
sub_080230A0: @ 0x080230A0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _080230D4 @ =gKirbys
	ldr r4, _080230D8 @ =0xFEFFFFFF
_080230AE:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r1, [r0, #8]
	ands r1, r4
	str r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080230AE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080230D4: .4byte gKirbys
_080230D8: .4byte 0xFEFFFFFF

	thumb_func_start sub_080230DC
sub_080230DC: @ 0x080230DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _080230F6
	ldr r0, _080230FC @ =sub_08023100
	str r0, [r2, #0x78]
_080230F6:
	pop {r0}
	bx r0
	.align 2, 0
_080230FC: .4byte sub_08023100

	thumb_func_start sub_08023100
sub_08023100: @ 0x08023100
	push {r4, lr}
	mov ip, r0
	ldr r1, _08023140 @ =gBldRegs
	movs r4, #0
	movs r3, #0
	movs r0, #0xbf
	strh r0, [r1]
	ldr r2, _08023144 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08023148 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802314C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xf
	ands r0, r1
	adds r0, #5
	mov r1, ip
	adds r1, #0xc9
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xb4
	strh r3, [r0]
	adds r0, #0x14
	strb r4, [r0]
	ldr r0, _08023150 @ =sub_08022350
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023140: .4byte gBldRegs
_08023144: .4byte gRngVal
_08023148: .4byte 0x00196225
_0802314C: .4byte 0x3C6EF35F
_08023150: .4byte sub_08022350

	thumb_func_start sub_08023154
sub_08023154: @ 0x08023154
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023164 @ =sub_08023168
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023164: .4byte sub_08023168

	thumb_func_start sub_08023168
sub_08023168: @ 0x08023168
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08023182
	ldr r0, _08023188 @ =sub_0802262C
	str r0, [r2, #0x78]
_08023182:
	pop {r0}
	bx r0
	.align 2, 0
_08023188: .4byte sub_0802262C

	thumb_func_start sub_0802318C
sub_0802318C: @ 0x0802318C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080231B2
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, _080231B8 @ =0x00000399
	strh r1, [r0, #0xc]
	movs r1, #0xb
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, _080231BC @ =sub_080231C0
	str r0, [r4, #0x78]
_080231B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080231B8: .4byte 0x00000399
_080231BC: .4byte sub_080231C0

	thumb_func_start sub_080231C0
sub_080231C0: @ 0x080231C0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r5, ip
	mov r1, ip
	adds r1, #0xb4
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r6, _08023214 @ =gKirbys
	ldr r7, _08023218 @ =sub_08023238
	mov r4, ip
	adds r4, #0x60
_080231D8:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r2, r0, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08023224
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r1
	bne _08023224
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x34]
	cmp r1, r0
	bge _0802321C
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08023222
	.align 2, 0
_08023214: .4byte gKirbys
_08023218: .4byte sub_08023238
_0802321C:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_08023222:
	str r0, [r2, #8]
_08023224:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080231D8
	mov r0, ip
	str r7, [r0, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08023238
sub_08023238: @ 0x08023238
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2c
	ble _08023258
	ldr r0, _08023260 @ =0x0000021A
	bl m4aSongNumStart
	ldr r0, _08023264 @ =sub_080226C4
	str r0, [r4, #0x78]
_08023258:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023260: .4byte 0x0000021A
_08023264: .4byte sub_080226C4

	thumb_func_start sub_08023268
sub_08023268: @ 0x08023268
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023278 @ =sub_0802327C
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023278: .4byte sub_0802327C

	thumb_func_start sub_0802327C
sub_0802327C: @ 0x0802327C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08023296
	ldr r0, _0802329C @ =sub_080232A0
	str r0, [r2, #0x78]
_08023296:
	pop {r0}
	bx r0
	.align 2, 0
_0802329C: .4byte sub_080232A0

	thumb_func_start sub_080232A0
sub_080232A0: @ 0x080232A0
	adds r3, r0, #0
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, #4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x3c]
	strh r0, [r2, #0x3c]
	ldr r0, _080232B8 @ =sub_080232BC
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_080232B8: .4byte sub_080232BC

	thumb_func_start sub_080232BC
sub_080232BC: @ 0x080232BC
	push {lr}
	adds r1, r0, #0
	adds r0, #0xbc
	ldr r3, [r0]
	ldr r0, [r3, #0x34]
	movs r2, #0x84
	lsls r2, r2, #9
	cmp r0, r2
	ble _080232DC
	adds r0, r1, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r2, [r0, #0x34]
	str r2, [r3, #0x34]
	ldr r0, _080232E0 @ =sub_080229E4
	str r0, [r1, #0x78]
_080232DC:
	pop {r0}
	bx r0
	.align 2, 0
_080232E0: .4byte sub_080229E4

	thumb_func_start sub_080232E4
sub_080232E4: @ 0x080232E4
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080232F4 @ =sub_080232F8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080232F4: .4byte sub_080232F8

	thumb_func_start sub_080232F8
sub_080232F8: @ 0x080232F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _08023312
	ldr r0, _08023318 @ =sub_0802331C
	str r0, [r2, #0x78]
_08023312:
	pop {r0}
	bx r0
	.align 2, 0
_08023318: .4byte sub_0802331C

	thumb_func_start sub_0802331C
sub_0802331C: @ 0x0802331C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r1, _0802335C @ =gUnk_082DE9FC
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	ldr r0, _08023360 @ =0x00000399
	strh r0, [r2, #0xc]
	movs r0, #0xc
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _08023364 @ =sub_08023368
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802335C: .4byte gUnk_082DE9FC
_08023360: .4byte 0x00000399
_08023364: .4byte sub_08023368

	thumb_func_start sub_08023368
sub_08023368: @ 0x08023368
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xb8
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08023388
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	ldr r0, _08023390 @ =sub_08023394
	str r0, [r3, #0x78]
_08023388:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023390: .4byte sub_08023394

	thumb_func_start sub_08023394
sub_08023394: @ 0x08023394
	adds r2, r0, #0
	adds r2, #0xb4
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080233A4 @ =sub_08022D78
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080233A4: .4byte sub_08022D78

	thumb_func_start sub_080233A8
sub_080233A8: @ 0x080233A8
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080233D6
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	ldr r0, _080233DC @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_080233D6:
	pop {r0}
	bx r0
	.align 2, 0
_080233DC: .4byte 0x0000FFBF

	thumb_func_start sub_080233E0
sub_080233E0: @ 0x080233E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080233F4 @ =gAIKirbyState
	ldrh r1, [r0]
	ldr r0, _080233F8 @ =0x0000012B
	cmp r1, r0
	bls _08023400
	ldr r0, _080233FC @ =nullsub_113
	str r0, [r2, #0x78]
	b _0802340A
	.align 2, 0
_080233F4: .4byte gAIKirbyState
_080233F8: .4byte 0x0000012B
_080233FC: .4byte nullsub_113
_08023400:
	ldr r1, _08023410 @ =sub_08023414
	str r1, [r2, #0x78]
	adds r0, r2, #0
	bl _call_via_r1
_0802340A:
	pop {r0}
	bx r0
	.align 2, 0
_08023410: .4byte sub_08023414

	thumb_func_start sub_08023414
sub_08023414: @ 0x08023414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080395D4
	cmp r0, #0
	beq _0802342A
	movs r0, #0x1a
	bl sub_08039600
	ldr r0, _08023430 @ =nullsub_113
	str r0, [r4, #0x78]
_0802342A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023430: .4byte nullsub_113

	thumb_func_start nullsub_113
nullsub_113: @ 0x08023434
	bx lr
	.align 2, 0

	thumb_func_start sub_08023438
sub_08023438: @ 0x08023438
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xd0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08023474
	movs r0, #0
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xd2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xce
	ldrh r0, [r0]
	cmp r0, #4
	beq _08023470
	ldr r0, _0802346C @ =sub_08020A90
	b _08023472
	.align 2, 0
_0802346C: .4byte sub_08020A90
_08023470:
	ldr r0, _08023478 @ =sub_08020DDC
_08023472:
	str r0, [r3, #0x78]
_08023474:
	pop {r0}
	bx r0
	.align 2, 0
_08023478: .4byte sub_08020DDC

	thumb_func_start sub_0802347C
sub_0802347C: @ 0x0802347C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r3, [r0]
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080234B4 @ =0xFF5A0000
	cmp r0, r1
	bge _080234A2
	ldr r0, _080234B8 @ =0x0000FF5A
	strh r0, [r2]
_080234A2:
	ldr r1, [r3, #0x40]
	ldr r0, _080234BC @ =0x0000AFFF
	cmp r1, r0
	bgt _080234AE
	ldr r0, _080234C0 @ =sub_0802356C
	str r0, [r4, #0x78]
_080234AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080234B4: .4byte 0xFF5A0000
_080234B8: .4byte 0x0000FF5A
_080234BC: .4byte 0x0000AFFF
_080234C0: .4byte sub_0802356C

	thumb_func_start sub_080234C4
sub_080234C4: @ 0x080234C4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _080234DC
	ldr r0, _080234E0 @ =sub_08021360
	str r0, [r3, #0x78]
_080234DC:
	pop {r0}
	bx r0
	.align 2, 0
_080234E0: .4byte sub_08021360

	thumb_func_start sub_080234E4
sub_080234E4: @ 0x080234E4
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _080234FC
	ldr r0, _08023500 @ =sub_08023580
	str r0, [r3, #0x78]
_080234FC:
	pop {r0}
	bx r0
	.align 2, 0
_08023500: .4byte sub_08023580

	thumb_func_start sub_08023504
sub_08023504: @ 0x08023504
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0802351A
	ldr r0, _08023520 @ =sub_08023594
	str r0, [r2, #0x78]
_0802351A:
	pop {r0}
	bx r0
	.align 2, 0
_08023520: .4byte sub_08023594

	thumb_func_start sub_08023524
sub_08023524: @ 0x08023524
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _0802353C
	ldr r0, _08023540 @ =sub_080235BC
	str r0, [r3, #0x78]
_0802353C:
	pop {r0}
	bx r0
	.align 2, 0
_08023540: .4byte sub_080235BC

	thumb_func_start sub_08023544
sub_08023544: @ 0x08023544
	push {lr}
	adds r3, r0, #0
	ldr r1, _08023564 @ =0x000002B6
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802355E
	ldr r0, _08023568 @ =sub_0802360C
	str r0, [r3, #0x78]
_0802355E:
	pop {r0}
	bx r0
	.align 2, 0
_08023564: .4byte 0x000002B6
_08023568: .4byte sub_0802360C

	thumb_func_start sub_0802356C
sub_0802356C: @ 0x0802356C
	adds r2, r0, #0
	adds r2, #0xd0
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802357C @ =sub_08020FA8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0802357C: .4byte sub_08020FA8

	thumb_func_start sub_08023580
sub_08023580: @ 0x08023580
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08023590 @ =sub_08023644
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_08023590: .4byte sub_08023644

	thumb_func_start sub_08023594
sub_08023594: @ 0x08023594
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_0803CA20
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _080235B8 @ =sub_08023664
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080235B8: .4byte sub_08023664

	thumb_func_start sub_080235BC
sub_080235BC: @ 0x080235BC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0xb8
	movs r0, #1
	mov ip, r0
	ldr r7, _08023604 @ =gKirbys+8
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _08023608 @ =0xFEFFFFFF
_080235D2:
	ldrh r0, [r4]
	asrs r0, r2
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _080235EA
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
_080235EA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _080235D2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023604: .4byte gKirbys+8
_08023608: .4byte 0xFEFFFFFF

	thumb_func_start sub_0802360C
sub_0802360C: @ 0x0802360C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r7, _08023640 @ =sub_08023734
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r3, r4, r0
	movs r6, #0x80
	movs r5, #0x20
_0802361E:
	lsls r0, r2, #2
	adds r0, r3, r0
	ldr r1, [r0]
	cmp r1, #0
	beq _0802362E
	strh r6, [r1, #0x3c]
	ldr r0, [r0]
	strh r5, [r0, #0x3e]
_0802362E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0802361E
	str r7, [r4, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023640: .4byte sub_08023734

	thumb_func_start sub_08023644
sub_08023644: @ 0x08023644
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _0802365C
	ldr r0, _08023660 @ =sub_080214E4
	str r0, [r3, #0x78]
_0802365C:
	pop {r0}
	bx r0
	.align 2, 0
_08023660: .4byte sub_080214E4

	thumb_func_start sub_08023664
sub_08023664: @ 0x08023664
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xb4
	ldr r4, [r0]
	adds r2, r3, #0
	adds r2, #0xbc
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0802368E
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08023694 @ =sub_08023698
	str r0, [r3, #0x78]
_0802368E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023694: .4byte sub_08023698

	thumb_func_start sub_08023698
sub_08023698: @ 0x08023698
	adds r3, r0, #0
	adds r0, #0xb4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x40]
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r1, #0x44]
	ldr r0, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #8]
	adds r1, #0x83
	movs r2, #0
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _080236C8 @ =sub_080236CC
	str r0, [r3, #0x78]
	bx lr
	.align 2, 0
_080236C8: .4byte sub_080236CC

	thumb_func_start sub_080236CC
sub_080236CC: @ 0x080236CC
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3c
	bls _080236E4
	ldr r0, _080236E8 @ =sub_080236EC
	str r0, [r3, #0x78]
_080236E4:
	pop {r0}
	bx r0
	.align 2, 0
_080236E8: .4byte sub_080236EC

	thumb_func_start sub_080236EC
sub_080236EC: @ 0x080236EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_0803C95C
	movs r2, #0
	ldr r1, _0802370C @ =0x0000FF80
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	adds r0, #0xbc
	strh r2, [r0]
	ldr r0, _08023710 @ =sub_08023714
	str r0, [r4, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802370C: .4byte 0x0000FF80
_08023710: .4byte sub_08023714

	thumb_func_start sub_08023714
sub_08023714: @ 0x08023714
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x40
	bls _0802372C
	ldr r0, _08023730 @ =sub_080237DC
	str r0, [r3, #0x78]
_0802372C:
	pop {r0}
	bx r0
	.align 2, 0
_08023730: .4byte sub_080237DC

	thumb_func_start sub_08023734
sub_08023734: @ 0x08023734
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #1
	movs r2, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r5, r6, r0
	movs r3, #0
	ldr r0, _08023768 @ =0x00011FFF
	mov ip, r0
	ldr r7, _0802376C @ =0xFFFFE000
_0802374A:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023774
	adds r1, r0, #0
	ldr r0, [r1, #0x34]
	cmp r0, ip
	bgt _08023770
	ldr r0, [r1, #0x38]
	cmp r0, r7
	ble _08023770
	movs r4, #0
	b _08023774
	.align 2, 0
_08023768: .4byte 0x00011FFF
_0802376C: .4byte 0xFFFFE000
_08023770:
	strh r3, [r1, #0x3c]
	strh r3, [r1, #0x3e]
_08023774:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _0802374A
	cmp r4, #0
	beq _08023786
	ldr r0, _0802378C @ =sub_08023790
	str r0, [r6, #0x78]
_08023786:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802378C: .4byte sub_08023790

	thumb_func_start sub_08023790
sub_08023790: @ 0x08023790
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r3, #0
	ldr r0, _080237D8 @ =sub_08021844
	mov ip, r0
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r0, #0
	movs r6, #1
	rsbs r6, r6, #0
_080237AE:
	lsls r0, r3, #2
	adds r2, r4, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _080237C0
	ldrh r0, [r1, #6]
	orrs r0, r7
	strh r0, [r1, #6]
	str r6, [r2]
_080237C0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080237AE
	mov r0, ip
	str r0, [r5, #0x78]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080237D8: .4byte sub_08021844

	thumb_func_start sub_080237DC
sub_080237DC: @ 0x080237DC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080237EC @ =sub_080237F0
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080237EC: .4byte sub_080237F0

	thumb_func_start sub_080237F0
sub_080237F0: @ 0x080237F0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xb4
	bls _08023808
	ldr r0, _0802380C @ =sub_080215B4
	str r0, [r3, #0x78]
_08023808:
	pop {r0}
	bx r0
	.align 2, 0
_0802380C: .4byte sub_080215B4

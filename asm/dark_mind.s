	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081055B8
sub_081055B8: @ 0x081055B8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _081055E8 @ =sub_08105698
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081055EC @ =sub_0810A130
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081055F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081055F8
	.align 2, 0
_081055E8: .4byte sub_08105698
_081055EC: .4byte sub_0810A130
_081055F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081055F8:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810562A
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_0810562A:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _0810567C @ =0x0000039A
	movs r0, #0
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _08105680 @ =gKirbys
	ldr r0, _08105684 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _0810568C
	ldr r6, _08105688 @ =0x0000139A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0810568E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _0810568E
	.align 2, 0
_0810567C: .4byte 0x0000039A
_08105680: .4byte gKirbys
_08105684: .4byte gUnk_0203AD3C
_08105688: .4byte 0x0000139A
_0810568C:
	strb r7, [r5]
_0810568E:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08105698
sub_08105698: @ 0x08105698
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _081056BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081056C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081056C8
	.align 2, 0
_081056BC: .4byte gCurTask
_081056C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081056C8:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081056E2
	ldr r0, [r2]
	bl TaskDestroy
	b _0810599A
_081056E2:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _081056F2
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _0810599A
_081056F2:
	ldr r2, _0810575C @ =gKirbys
	ldr r0, _08105760 @ =gUnk_0203AD3C
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
	bne _081057A4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0810576C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081057CA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08105764 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08105768 @ =0x0400000A
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
	b _081057CA
	.align 2, 0
_0810575C: .4byte gKirbys
_08105760: .4byte gUnk_0203AD3C
_08105764: .4byte 0xFFF7FFFF
_08105768: .4byte 0x0400000A
_0810576C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081057CA
	movs r0, #0x1e
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0810579C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081057A0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081057CA
	.align 2, 0
_0810579C: .4byte 0xFFF7FFFF
_081057A0: .4byte 0x0400000A
_081057A4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081057C0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081057C0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081057C0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081057CA:
	ldr r2, _0810580C @ =gKirbys
	ldr r0, _08105810 @ =gUnk_0203AD3C
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
	bne _08105818
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08105820
	ldr r6, _08105814 @ =0x0000139A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08105820
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08105820
	.align 2, 0
_0810580C: .4byte gKirbys
_08105810: .4byte gUnk_0203AD3C
_08105814: .4byte 0x0000139A
_08105818:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08105820:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _08105874
	ldrb r0, [r3]
	cmp r0, #0
	beq _0810583E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810583E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0810583E:
	cmp r3, #0
	beq _08105874
	ldr r0, _08105870 @ =gUnk_03000510
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
	beq _081058E4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _081058E4
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0810599A
	.align 2, 0
_08105870: .4byte gUnk_03000510
_08105874:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _081058DC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _081058B4
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081058B4
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081058B4
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081058B4
	movs r3, #4
_081058B4:
	ldr r0, _081058E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _081058E4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _081058E4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0810599A
	.align 2, 0
_081058DC: .4byte gKirbys
_081058E0: .4byte gUnk_03000510
_081058E4:
	ldrh r0, [r5, #6]
	ldr r2, _0810592C @ =0x0000FBFA
	ands r2, r0
	strh r2, [r5, #6]
	ldr r1, [r7, #8]
	ldr r0, _08105930 @ =0x00000404
	ands r1, r0
	orrs r1, r2
	strh r1, [r5, #6]
	ldr r0, [r7, #8]
	movs r2, #1
	eors r0, r2
	ands r0, r2
	orrs r1, r0
	strh r1, [r5, #6]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	adds r2, r7, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #6
	bhi _08105934
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0810599A
	.align 2, 0
_0810592C: .4byte 0x0000FBFA
_08105930: .4byte 0x00000404
_08105934:
	ldrh r0, [r5, #6]
	ldr r1, _08105950 @ =0x0000FBFF
	ands r1, r0
	strh r1, [r5, #6]
	ldrb r0, [r2]
	subs r0, #7
	cmp r0, #4
	bhi _08105994
	lsls r0, r0, #2
	ldr r1, _08105954 @ =_08105958
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08105950: .4byte 0x0000FBFF
_08105954: .4byte _08105958
_08105958: @ jump table
	.4byte _0810596C @ case 0
	.4byte _08105974 @ case 1
	.4byte _0810597C @ case 2
	.4byte _08105984 @ case 3
	.4byte _0810598C @ case 4
_0810596C:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0
	b _08105992
_08105974:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #2
	b _08105992
_0810597C:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #1
	b _08105992
_08105984:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #3
	b _08105992
_0810598C:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #4
_08105992:
	strb r0, [r1]
_08105994:
	adds r0, r5, #0
	bl sub_0806FAC8
_0810599A:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081059A8
sub_081059A8: @ 0x081059A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov ip, r5
	str r5, [sp, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081059CE
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x20
	b _081059D6
_081059CE:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x20
_081059D6:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	movs r4, #0
	ldr r1, _08105A04 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x87
	add r7, ip
	mov sl, r7
	adds r7, r5, #0
	adds r7, #0x56
	str r7, [sp]
	ldr r7, [sp, #8]
	adds r7, #0xb4
	mov r8, r7
	ldr r7, [sp, #8]
	adds r7, #0xb8
	str r7, [sp, #4]
	b _08105A1C
	.align 2, 0
_08105A04: .4byte gUnk_020229D4
_08105A08:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08105A24
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08105A1C:
	cmp r0, #0
	bne _08105A08
	orrs r2, r3
	str r2, [r1]
_08105A24:
	ldr r0, _08105A8C @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
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
	movs r0, #0xca
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r6, sl
	ldrb r0, [r6]
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
	ldr r7, [sp]
	ldrb r0, [r7]
	bl CreateObject
	str r5, [r0, #0x70]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _08105A90
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x20
	b _08105A98
	.align 2, 0
_08105A8C: .4byte gUnk_020229E0
_08105A90:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x20
_08105A98:
	movs r4, #0
	ldr r1, _08105AA8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _08105AAC @ =gUnk_020229E0
	b _08105AC4
	.align 2, 0
_08105AA8: .4byte gUnk_020229D4
_08105AAC: .4byte gUnk_020229E0
_08105AB0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08105ACC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08105AC4:
	cmp r0, #0
	bne _08105AB0
	orrs r2, r3
	str r2, [r1]
_08105ACC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r6, sb
	strh r6, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xca
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sl
	ldrb r0, [r7]
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
	ldr r2, [sp]
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	ldr r4, [sp, #4]
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateShadowKirbyBomb
CreateShadowKirbyBomb: @ 0x08105B30
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08105B64 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08105B68 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08105B6C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08105B74
	.align 2, 0
_08105B64: .4byte ObjectMain
_08105B68: .4byte ObjectDestroy
_08105B6C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08105B74:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #7
	orrs r0, r1
	ldr r1, _08105BE8 @ =0x0000FFFF
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08105BEC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #4
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08109E4C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08105BE8: .4byte 0x0000FFFF
_08105BEC: .4byte sub_0809F840

	thumb_func_start sub_08105BF0
sub_08105BF0: @ 0x08105BF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [r7, #0x70]
	ldr r3, [r0, #0x40]
	str r3, [r7, #0x40]
	ldr r4, [r0, #0x44]
	str r4, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r6, [r0, r1]
	ldr r5, _08105C58 @ =gUnk_08D5FE14
	movs r2, #4
	ldrsh r1, [r7, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r6, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r3, r3, r2
	str r3, [r7, #0x40]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x83
	ldrb r1, [r2]
	cmp r1, #2
	bne _08105C5C
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08105CD4
	movs r0, #0
	strb r0, [r2]
	b _08105CD4
	.align 2, 0
_08105C58: .4byte gUnk_08D5FE14
_08105C5C:
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	adds r2, r7, #0
	adds r2, #0x9f
	cmp r1, #0x28
	ble _08105C90
	movs r0, #0x28
	strh r0, [r4]
	adds r1, r7, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x60
	bls _08105C90
	movs r0, #1
	strb r0, [r2]
_08105C90:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08105CC2
	adds r1, r7, #0
	adds r1, #0xa0
	adds r0, r7, #0
	mov r2, sp
	bl sub_08109DC4
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	mov r1, sp
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08105CC8
	strh r2, [r4]
	adds r0, r7, #0
	bl sub_08109E00
	b _08105CD4
_08105CC2:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08105CC8:
	ldrh r0, [r4]
	ldrh r1, [r7, #4]
	adds r0, r0, r1
	ldr r1, _08105CDC @ =0x000003FF
	ands r0, r1
	strh r0, [r7, #4]
_08105CD4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08105CDC: .4byte 0x000003FF

	thumb_func_start sub_08105CE0
sub_08105CE0: @ 0x08105CE0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, [r7, #0x70]
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _08105D02
	cmp r0, #5
	beq _08105D02
	adds r0, r2, #0
	adds r0, #0xdb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08105D0A
_08105D02:
	adds r0, r7, #0
	bl sub_08109E24
	b _08105D68
_08105D0A:
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	ldr r3, [r2, #0x40]
	str r3, [r7, #0x40]
	ldr r4, [r2, #0x44]
	str r4, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r6, [r0, r1]
	ldr r5, _08105D70 @ =gUnk_08D5FE14
	movs r2, #4
	ldrsh r1, [r7, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r6, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r3, r3, r2
	str r3, [r7, #0x40]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	ldrh r1, [r7, #4]
	adds r0, r0, r1
	ldr r1, _08105D74 @ =0x000003FF
	ands r0, r1
	strh r0, [r7, #4]
_08105D68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08105D70: .4byte gUnk_08D5FE14
_08105D74: .4byte 0x000003FF

	thumb_func_start sub_08105D78
sub_08105D78: @ 0x08105D78
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r4, [r0, #0x70]
	adds r3, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bne _08105E82
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08105DD6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	mov r2, ip
	str r1, [r2, #8]
	mov r1, ip
	adds r1, #0xa0
	adds r2, #0xa2
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r5, #0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _08105DCA
	cmp r0, #1
	bgt _08105DC0
	cmp r0, #0
	beq _08105DC6
	b _08105DD2
_08105DC0:
	cmp r0, #2
	beq _08105DCE
	b _08105DD2
_08105DC6:
	movs r0, #8
	b _08105DD4
_08105DCA:
	movs r0, #0xa
	b _08105DD4
_08105DCE:
	movs r0, #0xd
	b _08105DD4
_08105DD2:
	movs r0, #0x12
_08105DD4:
	strh r0, [r2]
_08105DD6:
	adds r0, r3, #0
	adds r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08105EAE
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, ip
	adds r2, #0x9e
	cmp r0, #2
	bls _08105E16
	adds r0, r1, #0
	cmp r0, #0xb
	beq _08105E16
	cmp r0, #7
	beq _08105E16
	cmp r0, #9
	beq _08105E16
	cmp r0, #5
	beq _08105E16
	adds r0, r3, #0
	adds r0, #0xda
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _08105E16
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08105E16:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08105E82
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _08105EB4 @ =0xFFFFFBFF
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	ldr r3, [r4, #0x40]
	str r3, [r2, #0x40]
	ldr r4, [r4, #0x44]
	str r4, [r2, #0x44]
	mov r0, ip
	adds r0, #0xa0
	movs r5, #0
	ldrsh r6, [r0, r5]
	ldr r5, _08105EB8 @ =gUnk_08D5FE14
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r6, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r3, r3, r2
	mov r5, ip
	str r3, [r5, #0x40]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r5, #0x44]
_08105E82:
	mov r3, ip
	adds r3, #0x83
	ldrb r1, [r3]
	cmp r1, #2
	bne _08105EAE
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _08105EAE
	movs r2, #0
	strb r2, [r3]
	mov r5, ip
	ldr r0, [r5, #8]
	ldr r1, _08105EBC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _08105EC0 @ =sub_08105CE0
	str r0, [r5, #0x78]
	mov r0, ip
	adds r0, #0x9f
	strb r2, [r0]
_08105EAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08105EB4: .4byte 0xFFFFFBFF
_08105EB8: .4byte gUnk_08D5FE14
_08105EBC: .4byte 0xFFFFFDFF
_08105EC0: .4byte sub_08105CE0

	thumb_func_start sub_08105EC4
sub_08105EC4: @ 0x08105EC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r1, _08105F20 @ =gRngVal
	ldr r0, [r1]
	ldr r2, _08105F24 @ =0x00196225
	muls r0, r2, r0
	ldr r3, _08105F28 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r1]
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #7
	mov r5, r8
	ands r5, r0
	mov r8, r5
	movs r0, #0
	str r0, [sp, #8]
	mov sl, r1
	movs r6, #0
_08105EF6:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	str r0, [sp, #0x14]
	cmp r1, #1
	beq _08105F36
	cmp r1, #1
	bgt _08105F2C
	cmp r1, #0
	beq _08105F32
	b _08105F90
	.align 2, 0
_08105F20: .4byte gRngVal
_08105F24: .4byte 0x00196225
_08105F28: .4byte 0x3C6EF35F
_08105F2C:
	cmp r1, #2
	beq _08105F54
	b _08105F90
_08105F32:
	movs r3, #0
	b _08105FA4
_08105F36:
	mov r2, sl
	ldr r0, [r2]
	ldr r3, _08105F4C @ =0x00196225
	muls r0, r3, r0
	ldr r5, _08105F50 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r3, r0, #0x10
	ands r3, r1
	b _08105FA4
	.align 2, 0
_08105F4C: .4byte 0x00196225
_08105F50: .4byte 0x3C6EF35F
_08105F54:
	mov r1, sl
	ldr r0, [r1]
	ldr r2, _08105F70 @ =0x00196225
	muls r0, r2, r0
	ldr r3, _08105F74 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _08105F78 @ =0x00005554
	cmp r2, r0
	bhi _08105F7C
	movs r1, #0
	b _08105F86
	.align 2, 0
_08105F70: .4byte 0x00196225
_08105F74: .4byte 0x3C6EF35F
_08105F78: .4byte 0x00005554
_08105F7C:
	ldr r0, _08105F8C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08105F86
	movs r1, #1
_08105F86:
	adds r3, r1, #0
	b _08105FA4
	.align 2, 0
_08105F8C: .4byte 0x0000AAA9
_08105F90:
	mov r5, sl
	ldr r0, [r5]
	ldr r1, _08105FD0 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _08105FD4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r3, r0, #0x10
	movs r0, #3
	ands r3, r0
_08105FA4:
	movs r4, #0
	ldr r1, _08105FD8 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	movs r5, #1
	ands r0, r5
	ldr r5, _08105FDC @ =gUnk_020229E0
	mov ip, r5
	adds r3, #0xcb
	mov sb, r3
	adds r3, r7, #0
	adds r3, #0x56
	str r3, [sp, #0xc]
	ldr r5, [sp, #8]
	adds r5, #1
	str r5, [sp, #0x10]
	cmp r0, #0
	bne _08105FE0
	movs r0, #1
	orrs r2, r0
	b _08105FFA
	.align 2, 0
_08105FD0: .4byte 0x00196225
_08105FD4: .4byte 0x3C6EF35F
_08105FD8: .4byte gUnk_020229D4
_08105FDC: .4byte gUnk_020229E0
_08105FE0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08105FFC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08105FE0
	orrs r2, r3
_08105FFA:
	str r2, [r1]
_08105FFC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r1, #6]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r1, #8]
	strb r6, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r6, [r1, #4]
	strb r6, [r1, #5]
	mov r0, sb
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r6, [r1, #0xf]
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	strb r0, [r1, #0x10]
	strh r6, [r1, #0x22]
	strh r6, [r1, #0x1a]
	strh r6, [r1, #0x1c]
	strh r6, [r1, #0x1e]
	strh r6, [r1, #0x20]
	strb r6, [r1, #0x11]
	strh r6, [r1, #0x12]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	bl CreateObject
	str r7, [r0, #0x70]
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ands r0, r5
	cmp r0, #0
	beq _0810605E
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
_0810605E:
	ldr r0, _081060B4 @ =gUnk_08D61120
	add r0, r8
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08106508
	movs r0, #7
	mov r1, r8
	ands r1, r0
	mov r8, r1
	mov r2, sl
	ldr r0, [r2]
	ldr r3, _081060B8 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _081060BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	mov r1, r8
	adds r1, #1
	lsrs r0, r0, #0x10
	ands r0, r5
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #1
	bhi _081060A4
	b _08105EF6
_081060A4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081060B4: .4byte gUnk_08D61120
_081060B8: .4byte 0x00196225
_081060BC: .4byte 0x3C6EF35F

	thumb_func_start sub_081060C0
sub_081060C0: @ 0x081060C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	adds r4, r7, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	ldr r0, [sp]
	cmp r0, #1
	bne _08106124
	ldr r2, _0810613C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08106140 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08106144 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xe
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add ip, r1
	lsls r1, r1, #3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08106124:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r4, [r0]
	str r0, [sp, #8]
	cmp r4, #1
	beq _08106152
	cmp r4, #1
	bgt _08106148
	cmp r4, #0
	beq _0810614E
	b _081061B4
	.align 2, 0
_0810613C: .4byte gRngVal
_08106140: .4byte 0x00196225
_08106144: .4byte 0x3C6EF35F
_08106148:
	cmp r4, #2
	beq _08106174
	b _081061B4
_0810614E:
	movs r3, #0
	b _081061C8
_08106152:
	ldr r2, _08106168 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810616C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08106170 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	ands r3, r4
	b _081061C8
	.align 2, 0
_08106168: .4byte gRngVal
_0810616C: .4byte 0x00196225
_08106170: .4byte 0x3C6EF35F
_08106174:
	ldr r2, _08106190 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08106194 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08106198 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0810619C @ =0x00005554
	cmp r2, r0
	bhi _081061A0
	movs r1, #0
	b _081061AA
	.align 2, 0
_08106190: .4byte gRngVal
_08106194: .4byte 0x00196225
_08106198: .4byte 0x3C6EF35F
_0810619C: .4byte 0x00005554
_081061A0:
	ldr r0, _081061B0 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _081061AA
	movs r1, #1
_081061AA:
	adds r3, r1, #0
	b _081061C8
	.align 2, 0
_081061B0: .4byte 0x0000AAA9
_081061B4:
	ldr r2, _081061F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081061F8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081061FC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #3
	ands r3, r0
_081061C8:
	movs r4, #0
	ldr r1, _08106200 @ =gUnk_020229D4
	movs r5, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	lsls r6, r6, #0x10
	str r6, [sp, #0xc]
	ldr r6, _08106204 @ =gUnk_020229E0
	adds r3, #0xcb
	mov r8, r3
	movs r3, #0x56
	adds r3, r3, r7
	mov sb, r3
	mov r3, sl
	lsls r3, r3, #0x10
	mov sl, r3
	cmp r0, #0
	bne _08106208
	orrs r2, r5
	b _08106222
	.align 2, 0
_081061F4: .4byte gRngVal
_081061F8: .4byte 0x00196225
_081061FC: .4byte 0x3C6EF35F
_08106200: .4byte gUnk_020229D4
_08106204: .4byte gUnk_020229E0
_08106208:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08106224
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08106208
	orrs r2, r3
_08106222:
	str r2, [r1]
_08106224:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r4, r8
	strb r4, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #8]
	ldrb r0, [r4]
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r7, [r0, #0x70]
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ands r0, r5
	cmp r0, #0
	beq _08106288
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
_08106288:
	mov r3, sl
	asrs r1, r3, #0x10
	ldr r0, [sp, #0xc]
	asrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_08106804
	ldr r1, [sp]
	cmp r1, #2
	bne _081062A2
	adds r0, r4, #0
	adds r0, #0x85
	strb r5, [r0]
_081062A2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081062B4
sub_081062B4: @ 0x081062B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r2, r0, #0
	adds r7, r2, #0
	mov sb, r2
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	str r0, [sp]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r4, [r0]
	str r0, [sp, #4]
	cmp r4, #1
	beq _081062FA
	cmp r4, #1
	bgt _081062F0
	cmp r4, #0
	beq _081062F6
	b _0810635C
_081062F0:
	cmp r4, #2
	beq _0810631C
	b _0810635C
_081062F6:
	movs r3, #0
	b _08106370
_081062FA:
	ldr r2, _08106310 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08106314 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08106318 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	ands r3, r4
	b _08106370
	.align 2, 0
_08106310: .4byte gRngVal
_08106314: .4byte 0x00196225
_08106318: .4byte 0x3C6EF35F
_0810631C:
	ldr r2, _08106338 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810633C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08106340 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _08106344 @ =0x00005554
	cmp r2, r0
	bhi _08106348
	movs r1, #0
	b _08106352
	.align 2, 0
_08106338: .4byte gRngVal
_0810633C: .4byte 0x00196225
_08106340: .4byte 0x3C6EF35F
_08106344: .4byte 0x00005554
_08106348:
	ldr r0, _08106358 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08106352
	movs r1, #1
_08106352:
	adds r3, r1, #0
	b _08106370
	.align 2, 0
_08106358: .4byte 0x0000AAA9
_0810635C:
	ldr r2, _08106394 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08106398 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _0810639C @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #3
	ands r3, r0
_08106370:
	movs r4, #0
	ldr r1, _081063A0 @ =gUnk_020229D4
	movs r5, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	ldr r6, _081063A4 @ =gUnk_020229E0
	adds r3, #0xcb
	mov ip, r3
	movs r3, #0x56
	adds r3, r3, r7
	mov r8, r3
	movs r3, #0xda
	add sb, r3
	cmp r0, #0
	bne _081063A8
	orrs r2, r5
	b _081063C2
	.align 2, 0
_08106394: .4byte gRngVal
_08106398: .4byte 0x00196225
_0810639C: .4byte 0x3C6EF35F
_081063A0: .4byte gUnk_020229D4
_081063A4: .4byte gUnk_020229E0
_081063A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _081063C4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _081063A8
	orrs r2, r3
_081063C2:
	str r2, [r1]
_081063C4:
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
	mov r5, sl
	strh r5, [r1, #6]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r5, ip
	strb r5, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r5, [sp, #4]
	ldrb r0, [r5]
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
	str r7, [r0, #0x70]
	adds r2, r0, #0
	ldr r0, [r7, #8]
	ands r0, r4
	cmp r0, #0
	beq _08106428
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
_08106428:
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0xe
	bne _08106438
	adds r0, r2, #0
	bl sub_081068F8
	b _0810643E
_08106438:
	adds r0, r2, #0
	bl sub_08109EF8
_0810643E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateDarkMindStar
CreateDarkMindStar: @ 0x08106450
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08106484 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08106488 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810648C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08106494
	.align 2, 0
_08106484: .4byte ObjectMain
_08106488: .4byte ObjectDestroy
_0810648C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08106494:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x5c]
	movs r1, #0x84
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08106504 @ =sub_0809F840
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08106504: .4byte sub_0809F840

	thumb_func_start sub_08106508
sub_08106508: @ 0x08106508
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081065A4 @ =sub_081065B0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	adds r0, #0x35
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r2]
	ldr r3, _081065A8 @ =gUnk_08D5FE14
	ldr r2, _081065AC @ =gUnk_08357278
	movs r0, #0x85
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r5, r4, #0
	adds r5, #0x50
	strh r0, [r5]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810658C
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_0810658C:
	movs r0, #0x80
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_081069BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081065A4: .4byte sub_081065B0
_081065A8: .4byte gUnk_08D5FE14
_081065AC: .4byte gUnk_08357278

	thumb_func_start sub_081065B0
sub_081065B0: @ 0x081065B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08106648
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
	ldr r6, _08106600 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _08106604
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
	b _081066C8
	.align 2, 0
_08106600: .4byte 0xFFFFF800
_08106604:
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
	bgt _081066CC
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
	ldr r2, _08106644 @ =0xFFFFF800
	adds r0, r0, r2
	b _081066C8
	.align 2, 0
_08106644: .4byte 0xFFFFF800
_08106648:
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
	bgt _0810668C
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
	ldr r2, _08106688 @ =0xFFFFF800
	adds r0, r0, r2
	b _081066C8
	.align 2, 0
_08106688: .4byte 0xFFFFF800
_0810668C:
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
	ldr r2, _08106710 @ =0xFFFFF800
	adds r0, r0, r2
	cmp r1, r0
	blt _081066CC
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
_081066C8:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_081066CC:
	adds r5, r4, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x44]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xaa
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _08106710 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _08106714
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
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
	subs r1, r1, r0
	str r1, [r4, #0x44]
	b _0810673E
	.align 2, 0
_08106710: .4byte 0xFFFFF800
_08106714:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	cmp r1, r0
	bgt _0810673E
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0810673E:
	ldr r0, [r4, #8]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810676C
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _081067F6
_0810676C:
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081067A6
	ldr r2, _081067FC @ =gUnk_08D5FE14
	ldr r1, _08106800 @ =gUnk_08357278
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #2
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
_081067A6:
	ldrb r1, [r3]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _081067DA
	ldr r2, _081067FC @ =gUnk_08D5FE14
	ldr r1, _08106800 @ =gUnk_08357278
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
_081067DA:
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _081067F6
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_081067F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081067FC: .4byte gUnk_08D5FE14
_08106800: .4byte gUnk_08357278

	thumb_func_start sub_08106804
sub_08106804: @ 0x08106804
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	ldr r2, _08106870 @ =sub_08109E98
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	adds r0, #0x35
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r2]
	subs r2, #0x33
	strh r5, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r6, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08106850
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08106850:
	cmp r5, #0
	bne _08106862
	cmp r6, #0
	bne _08106862
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08106862:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08106870: .4byte sub_08109E98

	thumb_func_start sub_08106874
sub_08106874: @ 0x08106874
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, [r7, #0x70]
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _081068EC
	adds r0, r2, #0
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
	ldr r0, _081068F4 @ =sub_08109E98
	str r0, [r7, #0x78]
	adds r0, r7, #0
	bl sub_08106AD0
_081068EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081068F4: .4byte sub_08109E98

	thumb_func_start sub_081068F8
sub_081068F8: @ 0x081068F8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r0, #0xac
	ldr r6, [r0]
	ldr r2, _081069B8 @ =sub_08109F40
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x82
	adds r0, #0x35
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	strb r0, [r2]
	movs r0, #0x50
	adds r0, r0, r5
	mov sb, r0
	movs r2, #0
	strh r1, [r0]
	adds r7, r5, #0
	adds r7, #0x52
	strh r1, [r7]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9f
	strb r2, [r0]
	ldr r4, [r6, #0x40]
	ldr r0, [r5, #0x40]
	subs r4, r4, r0
	asrs r4, r4, #8
	ldr r5, [r5, #0x44]
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
	lsls r1, r0, #8
	lsls r4, r4, #0xa
	add r4, r8
	lsrs r4, r4, #4
	mov r2, sb
	strh r4, [r2]
	lsls r0, r0, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #4
	strh r0, [r7]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081069B8: .4byte sub_08109F40

	thumb_func_start sub_081069BC
sub_081069BC: @ 0x081069BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r7, #0
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08106AC0
	ldr r0, _08106A00 @ =sub_08106BE0
	ldr r2, _08106A04 @ =0x00000FFF
	ldr r1, _08106A08 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08106A0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08106A14
	.align 2, 0
_08106A00: .4byte sub_08106BE0
_08106A04: .4byte 0x00000FFF
_08106A08: .4byte sub_0803DCCC
_08106A0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08106A14:
	adds r4, r5, #0
	adds r0, r4, #0
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
	movs r1, #0x42
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	mov sb, r2
	strh r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08106A4C
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08106A4C:
	adds r1, r5, #0
	adds r1, #0xc
	ldr r6, _08106AB0 @ =0x00000399
	adds r0, r7, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r0, #0x35
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	mov r0, sb
	strb r0, [r4]
	ldr r2, _08106AB4 @ =gKirbys
	ldr r0, _08106AB8 @ =gUnk_0203AD3C
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
	bne _08106ABC
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08106AC0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08106AC0
	.align 2, 0
_08106AB0: .4byte 0x00000399
_08106AB4: .4byte gKirbys
_08106AB8: .4byte gUnk_0203AD3C
_08106ABC:
	mov r2, sb
	strb r2, [r4]
_08106AC0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08106AD0
sub_08106AD0: @ 0x08106AD0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r5, #0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08106BD6
	ldr r0, _08106B0C @ =sub_08106BE0
	ldr r2, _08106B10 @ =0x00000FFF
	ldr r1, _08106B14 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08106B18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08106B20
	.align 2, 0
_08106B0C: .4byte sub_08106BE0
_08106B10: .4byte 0x00000FFF
_08106B14: .4byte sub_0803DCCC
_08106B18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08106B20:
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
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08106B50
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08106B50:
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xd4
	bne _08106B62
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	b _08106B64
_08106B62:
	adds r0, #0x35
_08106B64:
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _08106BC4 @ =0x00000399
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _08106BC8 @ =gKirbys
	ldr r0, _08106BCC @ =gUnk_0203AD3C
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
	bne _08106BD0
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08106BD2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _08106BD2
	.align 2, 0
_08106BC4: .4byte 0x00000399
_08106BC8: .4byte gKirbys
_08106BCC: .4byte gUnk_0203AD3C
_08106BD0:
	strb r3, [r5]
_08106BD2:
	movs r0, #1
	strh r0, [r4, #4]
_08106BD6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08106BE0
sub_08106BE0: @ 0x08106BE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _08106C08 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08106C0C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08106C14
	.align 2, 0
_08106C08: .4byte gCurTask
_08106C0C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08106C14:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r8, r0
	mov r7, r8
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08106C32
	ldr r0, [r2]
	bl TaskDestroy
	b _08107244
_08106C32:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _08106C44
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r6, #6]
	b _08107244
_08106C44:
	ldr r2, _08106CAC @ =gKirbys
	ldr r0, _08106CB0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov sl, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _08106CF4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08106CBC
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08106D1A
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08106CB4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08106CB8 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08106D1A
	.align 2, 0
_08106CAC: .4byte gKirbys
_08106CB0: .4byte gUnk_0203AD3C
_08106CB4: .4byte 0xFFF7FFFF
_08106CB8: .4byte 0x0400000A
_08106CBC:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08106D1A
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08106CEC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08106CF0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _08106D1A
	.align 2, 0
_08106CEC: .4byte 0xFFF7FFFF
_08106CF0: .4byte 0x0400000A
_08106CF4:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _08106D10
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08106D10
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_08106D10:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_08106D1A:
	ldr r2, _08106D60 @ =gKirbys
	ldr r0, _08106D64 @ =gUnk_0203AD3C
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
	bne _08106D68
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08106D70
	movs r5, #0xe6
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08106D70
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08106D70
	.align 2, 0
_08106D60: .4byte gKirbys
_08106D64: .4byte gUnk_0203AD3C
_08106D68:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08106D70:
	ldrh r0, [r6, #6]
	movs r2, #4
	movs r3, #0
	orrs r2, r0
	ldr r0, _08106DB0 @ =0x0000FFFE
	ands r2, r0
	strh r2, [r6, #6]
	ldr r0, [r7, #8]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	orrs r0, r2
	strh r0, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	strh r0, [r1]
	ldr r0, [r7, #0xc]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	beq _08106DB4
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _08107244
	.align 2, 0
_08106DB0: .4byte 0x0000FFFE
_08106DB4:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08106DBE
	b _08107054
_08106DBE:
	mov r0, r8
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, r8
	ldr r0, [r2, #0x48]
	subs r0, r0, r1
	subs r0, r0, r1
	str r0, [r6, #0x34]
	mov r0, r8
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, r0, r1
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldr r0, _08106E18 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, r8
	adds r1, #0x56
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08106DFE
	b _08106F28
_08106DFE:
	ldrh r1, [r6, #6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08106E1C
	adds r1, r6, #0
	adds r1, #0xc
	ldr r0, [r6, #0x14]
	orrs r0, r5
	str r0, [r1, #8]
	adds r4, r1, #0
	b _08106E2A
	.align 2, 0
_08106E18: .4byte gUnk_03000510
_08106E1C:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _08106EB0 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	adds r4, r0, #0
_08106E2A:
	ldrh r0, [r6, #6]
	mov ip, r0
	movs r0, #8
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r6, #0
	adds r7, #0x28
	cmp r3, #0
	bne _08106ECC
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08106E5A
	ldrh r0, [r6, #0x24]
	ldrh r2, [r6, #0x18]
	cmp r0, r2
	beq _08106E72
_08106E5A:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08106E72
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _08106EB4 @ =0x0000FFFB
	mov r1, ip
	ands r0, r1
	strh r0, [r6, #6]
_08106E72:
	adds r0, r4, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08106EB8
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08106ECC
	ldrb r0, [r7]
	cmp r0, #0
	beq _08106ECC
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _08106EB4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r4, #0
	bl sub_08155128
	b _08106ECC
	.align 2, 0
_08106EB0: .4byte 0xFFFFFBFF
_08106EB4: .4byte 0x0000FFFB
_08106EB8:
	ldrb r1, [r7]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _08106FA0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_08106ECC:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _08106FA4 @ =gCurLevelInfo
	ldr r5, _08106FA8 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	movs r0, #0x40
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	ldrb r0, [r7]
	cmp r0, #0
	beq _08106F28
	mov r1, sb
	mov r0, ip
	strb r1, [r0]
	strb r1, [r2]
_08106F28:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _08106FA4 @ =gCurLevelInfo
	ldr r5, _08106FA8 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08106FBC
	ldr r2, _08106FAC @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _08106FBC
	ldr r1, _08106FB0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08106FB4
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08106FBC
	.align 2, 0
_08106FA0: .4byte 0x0000FFFD
_08106FA4: .4byte gCurLevelInfo
_08106FA8: .4byte gUnk_0203AD3C
_08106FAC: .4byte gKirbys
_08106FB0: .4byte gUnk_0203AD18
_08106FB4:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08106FBC:
	mov r0, r8
	ldr r2, [r0, #0x48]
	str r2, [r6, #0x34]
	ldr r4, [r0, #0x4c]
	str r4, [r6, #0x38]
	asrs r2, r2, #8
	ldr r3, _08107044 @ =gCurLevelInfo
	ldr r7, _08107048 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r1, r8
	strh r1, [r6, #0x1c]
	asrs r4, r4, #8
	ldrb r0, [r7]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r6, #0x1e]
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08107006
	b _08107244
_08107006:
	ldr r2, _0810704C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	beq _08107020
	b _08107244
_08107020:
	ldr r1, _08107050 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0810703A
	b _08107222
_0810703A:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	b _08107244
	.align 2, 0
_08107044: .4byte gCurLevelInfo
_08107048: .4byte gUnk_0203AD3C
_0810704C: .4byte gKirbys
_08107050: .4byte gUnk_0203AD18
_08107054:
	mov r0, r8
	ldr r3, [r0, #0x48]
	str r3, [r6, #0x34]
	ldr r7, [r0, #0x4c]
	str r7, [r6, #0x38]
	ldr r0, _08107094 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, r8
	adds r1, #0x56
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0810707A
	b _081071B4
_0810707A:
	ldrh r1, [r6, #6]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08107098
	adds r1, r6, #0
	adds r1, #0xc
	ldr r0, [r6, #0x14]
	orrs r0, r5
	str r0, [r1, #8]
	adds r4, r1, #0
	b _081070A6
	.align 2, 0
_08107094: .4byte gUnk_03000510
_08107098:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _0810712C @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	adds r4, r0, #0
_081070A6:
	ldrh r1, [r6, #6]
	mov r8, r1
	movs r0, #8
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r7, r6, #0
	adds r7, #0x28
	cmp r3, #0
	bne _08107148
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _081070D6
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _081070EE
_081070D6:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _081070EE
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _08107130 @ =0x0000FFFB
	mov r2, r8
	ands r0, r2
	strh r0, [r6, #6]
_081070EE:
	adds r0, r4, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08107134
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08107148
	ldrb r0, [r7]
	cmp r0, #0
	beq _08107148
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _08107130 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r4, #0
	bl sub_08155128
	b _08107148
	.align 2, 0
_0810712C: .4byte 0xFFFFFBFF
_08107130: .4byte 0x0000FFFB
_08107134:
	ldrb r1, [r7]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _081071A8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_08107148:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _081071AC @ =gCurLevelInfo
	ldr r4, _081071B0 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	movs r0, #0x40
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	movs r1, #0
	mov r8, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r4]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	ldrb r0, [r7]
	cmp r0, #0
	beq _081071E2
	mov r1, r8
	mov r0, ip
	strb r1, [r0]
	strb r1, [r2]
	b _081071E2
	.align 2, 0
_081071A8: .4byte 0x0000FFFD
_081071AC: .4byte gCurLevelInfo
_081071B0: .4byte gUnk_0203AD3C
_081071B4:
	asrs r2, r3, #8
	ldr r3, _0810722C @ =gCurLevelInfo
	ldr r4, _08107230 @ =gUnk_0203AD3C
	ldrb r0, [r4]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	strh r2, [r6, #0x1c]
	asrs r1, r7, #8
	ldrb r0, [r4]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r6, #0x1e]
_081071E2:
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08107244
	ldr r2, _08107234 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _08107244
	ldr r1, _08107238 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0810723C
_08107222:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08107244
	.align 2, 0
_0810722C: .4byte gCurLevelInfo
_08107230: .4byte gUnk_0203AD3C
_08107234: .4byte gKirbys
_08107238: .4byte gUnk_0203AD18
_0810723C:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08107244:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08107254
sub_08107254: @ 0x08107254
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	adds r7, r3, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r7, #0x44]
	asrs r5, r0, #8
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x50
	bne _0810727E
	adds r5, #0x20
_0810727E:
	movs r4, #0
	ldr r1, _081072A4 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	movs r6, #1
	ands r0, r6
	ldr r6, _081072A8 @ =gUnk_020229E0
	mov ip, r6
	adds r3, #0x87
	mov sb, r3
	movs r3, #0x56
	adds r3, r3, r7
	mov sl, r3
	cmp r0, #0
	bne _081072AC
	movs r6, #1
	orrs r2, r6
	b _081072C6
	.align 2, 0
_081072A4: .4byte gUnk_020229D4
_081072A8: .4byte gUnk_020229E0
_081072AC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _081072C8
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _081072AC
	orrs r2, r3
_081072C6:
	str r2, [r1]
_081072C8:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x30
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldrb r0, [r5]
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
	mov r6, sl
	ldrb r0, [r6]
	bl CreateObject
	str r7, [r0, #0x70]
	adds r3, r0, #0
	ldr r0, [r7, #8]
	ands r0, r4
	cmp r0, #0
	beq _08107328
	ldr r0, [r3, #8]
	orrs r0, r4
	str r0, [r3, #8]
_08107328:
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start CreateDarkMindBomb
CreateDarkMindBomb: @ 0x08107338
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0810736C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08107370 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08107374
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0810737C
	.align 2, 0
_0810736C: .4byte ObjectMain
_08107370: .4byte ObjectDestroy
_08107374:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0810737C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	str r2, [r0]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _08107404 @ =sub_0810A034
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_081099A4
	movs r0, #0xc8
	strh r0, [r6, #4]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08107404: .4byte sub_0810A034

	thumb_func_start sub_08107408
sub_08107408: @ 0x08107408
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	adds r7, r4, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x62
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08107444
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08107444
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_08107444:
	ldr r0, [r4, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0810753C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _08107466
	strh r2, [r1]
_08107466:
	ldr r0, [r4, #0x44]
	movs r2, #0xb0
	lsls r2, r2, #7
	cmp r0, r2
	bgt _08107476
	str r2, [r4, #0x44]
	movs r0, #0
	strh r0, [r1]
_08107476:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0810753C
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0810751A
	ldr r2, _08107544 @ =0x00000233
	adds r0, r4, #0
	movs r1, #0x30
	movs r3, #0
	bl sub_0808AE30
	adds r1, r5, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	adds r2, r0, #0
	adds r2, #0x2b
	strb r1, [r2]
	movs r1, #0xd8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	adds r0, #0x28
	movs r1, #8
	strb r1, [r0]
	ldr r1, _08107548 @ =gKirbys
	ldr r0, _0810754C @ =gUnk_0203AD3C
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
	bne _0810751A
	ldrb r0, [r4]
	cmp r0, #0
	bne _081074DA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810751A
_081074DA:
	ldr r1, _08107550 @ =gUnk_08D60FA4
	ldr r5, _08107554 @ =gSongTable
	ldr r2, _08107558 @ =0x00000D74
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08107500
	movs r1, #0xd7
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810751A
_08107500:
	cmp r3, #0
	beq _08107512
	ldr r0, _0810755C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810751A
_08107512:
	movs r0, #0xd7
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810751A:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3a
	bls _0810753C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08086938
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08109F90
_0810753C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08107544: .4byte 0x00000233
_08107548: .4byte gKirbys
_0810754C: .4byte gUnk_0203AD3C
_08107550: .4byte gUnk_08D60FA4
_08107554: .4byte gSongTable
_08107558: .4byte 0x00000D74
_0810755C: .4byte gUnk_0203AD10

	thumb_func_start sub_08107560
sub_08107560: @ 0x08107560
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r1, [r2]
	cmp r1, #2
	bne _0810757E
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _08107586
	movs r0, #3
	strb r0, [r2]
	b _08107586
_0810757E:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08107586:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _081075D0
	adds r0, r5, #0
	bl sub_08107844
	adds r4, #0xb4
	ldr r0, [r4]
	movs r1, #0
	bl sub_08086A28
	str r6, [r4]
	adds r0, r5, #0
	bl sub_08109FBC
	ldr r1, _081075D8 @ =gUnk_08357268
	adds r0, r5, #0
	bl sub_080860A8
	adds r0, r5, #0
	bl sub_08108280
	adds r0, r5, #0
	bl sub_08108960
	adds r0, r5, #0
	movs r1, #0
	bl sub_08109304
	adds r0, r5, #0
	movs r1, #1
	bl sub_08109304
_081075D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081075D8: .4byte gUnk_08357268

	thumb_func_start sub_081075DC
sub_081075DC: @ 0x081075DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov ip, r5
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r7, r0, #8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	movs r4, #0
	ldr r1, _0810761C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r6, #0x56
	adds r6, r6, r5
	mov sl, r6
	movs r6, #0xc0
	add r6, ip
	mov r8, r6
	mov r6, ip
	adds r6, #0xc4
	str r6, [sp, #4]
	b _08107634
	.align 2, 0
_0810761C: .4byte gUnk_020229D4
_08107620:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810763C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08107634:
	cmp r0, #0
	bne _08107620
	orrs r2, r3
	str r2, [r1]
_0810763C:
	ldr r0, _081076C8 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r4, #0
	movs r6, #1
	strb r6, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	strh r7, [r1, #6]
	mov r0, sb
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xcf
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
	mov r2, sl
	ldrb r0, [r2]
	bl CreateObject
	adds r3, r0, #0
	str r5, [r3, #0x70]
	mov r0, r8
	str r3, [r0]
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xb8
	lsls r0, r0, #6
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x52
	strh r4, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_0803E2B0
	ldr r2, _081076CC @ =gUnk_020229D4
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _081076D0
	orrs r1, r6
	str r1, [r2]
	b _081076EE
	.align 2, 0
_081076C8: .4byte gUnk_020229E0
_081076CC: .4byte gUnk_020229D4
_081076D0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _081076EE
	ldr r3, _08107778 @ =gUnk_020229D4
	movs r2, #1
	lsls r2, r4
	ldr r1, [r3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _081076D0
	orrs r1, r2
	str r1, [r3]
_081076EE:
	ldr r0, _0810777C @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r4, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	strh r7, [r1, #6]
	mov r6, sb
	strh r6, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xcf
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
	mov r2, sl
	ldrb r0, [r2]
	bl CreateObject
	adds r3, r0, #0
	str r5, [r3, #0x70]
	ldr r6, [sp, #4]
	str r3, [r6]
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xd4
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x52
	strh r4, [r0]
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #6
	bl sub_0803E2B0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08107778: .4byte gUnk_020229D4
_0810777C: .4byte gUnk_020229E0

	thumb_func_start sub_08107780
sub_08107780: @ 0x08107780
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _081077B4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081077B8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081077BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081077C4
	.align 2, 0
_081077B4: .4byte ObjectMain
_081077B8: .4byte ObjectDestroy
_081077BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081077C4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #7
	orrs r0, r1
	ldr r1, _0810783C @ =0x0000FFFF
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08107840 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_081099C0
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0810783C: .4byte 0x0000FFFF
_08107840: .4byte sub_0809F840

	thumb_func_start sub_08107844
sub_08107844: @ 0x08107844
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08107874 @ =sub_0810792C
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
	beq _08107878
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08107880
	.align 2, 0
_08107874: .4byte sub_0810792C
_08107878:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08107880:
	adds r0, r4, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r3, [r4, #4]
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
	ldr r0, _08107920 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _081078D0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_081078D0:
	adds r0, r4, #0
	adds r0, #0x64
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	subs r0, #3
	strb r5, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	ldr r1, _08107924 @ =0x20000043
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ldr r1, _08107928 @ =0x0000FFFF
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r1, #0x78
	rsbs r1, r1, #0
	movs r2, #0x50
	rsbs r2, r2, #0
	movs r0, #0x50
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x78
	bl sub_0803E2B0
	movs r0, #4
	strh r0, [r4, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08107920: .4byte gUnk_03000510
_08107924: .4byte 0x20000043
_08107928: .4byte 0x0000FFFF

	thumb_func_start sub_0810792C
sub_0810792C: @ 0x0810792C
	push {r4, r5, r6, lr}
	ldr r2, _08107948 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810794C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08107954
	.align 2, 0
_08107948: .4byte gCurTask
_0810794C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08107954:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0810796E
	ldr r0, [r2]
	bl TaskDestroy
	b _08107A3A
_0810796E:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _0810797C
	orrs r1, r5
	str r1, [r4, #8]
	b _08107A3A
_0810797C:
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08107A3A
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810799C
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	b _08107A3A
_0810799C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	ldr r5, _081079C8 @ =gCurLevelInfo
	cmp r0, #0
	bne _08107A0A
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _081079D0
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	ldr r1, _081079CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _081079D2
	.align 2, 0
_081079C8: .4byte gCurLevelInfo
_081079CC: .4byte 0x0000065E
_081079D0:
	movs r1, #0xff
_081079D2:
	cmp r1, #0xff
	beq _08107A0A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08107A40 @ =gUnk_02022EB0
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
	ldr r2, _08107A44 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08107A0A:
	adds r3, r6, #0
	adds r3, #0x56
	ldrb r0, [r3]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r4, #0x44]
_08107A3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08107A40: .4byte gUnk_02022EB0
_08107A44: .4byte gUnk_02022F50

	thumb_func_start sub_08107A48
sub_08107A48: @ 0x08107A48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08107A7C @ =sub_08107BA8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08107A80 @ =sub_0810A104
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08107A84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08107A8C
	.align 2, 0
_08107A7C: .4byte sub_08107BA8
_08107A80: .4byte sub_0810A104
_08107A84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08107A8C:
	adds r5, r0, #0
	bl sub_0803E380
	movs r3, #0
	movs r0, #2
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	str r4, [r5, #0x70]
	movs r7, #0
	strh r3, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r5
	mov r8, r1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _08107B7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08107ADE
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
_08107ADE:
	adds r0, r5, #0
	adds r0, #0x63
	strb r7, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x80
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x40]
	str r3, [r5, #0x44]
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _08107B80 @ =0x000002C3
	movs r0, #3
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	strb r7, [r4]
	ldr r2, _08107B84 @ =gKirbys
	ldr r0, _08107B88 @ =gUnk_0203AD3C
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
	bne _08107B8C
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08107B8E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08107B8E
	.align 2, 0
_08107B7C: .4byte gUnk_03000510
_08107B80: .4byte 0x000002C3
_08107B84: .4byte gKirbys
_08107B88: .4byte gUnk_0203AD3C
_08107B8C:
	strb r7, [r4]
_08107B8E:
	ldr r1, _08107BA4 @ =gUnk_0203AD34
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08107BA4: .4byte gUnk_0203AD34

	thumb_func_start sub_08107BA8
sub_08107BA8: @ 0x08107BA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r0, _08107BCC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08107BD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08107BD8
	.align 2, 0
_08107BCC: .4byte gCurTask
_08107BD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08107BD8:
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov r8, r0
	ldr r2, _08107C48 @ =gKirbys
	ldr r0, _08107C4C @ =gUnk_0203AD3C
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
	bne _08107C90
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08107C58
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08107CB4
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
	ldr r1, _08107C50 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08107C54 @ =0x0400000A
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
	b _08107CB4
	.align 2, 0
_08107C48: .4byte gKirbys
_08107C4C: .4byte gUnk_0203AD3C
_08107C50: .4byte 0xFFF7FFFF
_08107C54: .4byte 0x0400000A
_08107C58:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08107CB4
	movs r0, #0x10
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _08107C88 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08107C8C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08107CB4
	.align 2, 0
_08107C88: .4byte 0xFFF7FFFF
_08107C8C: .4byte 0x0400000A
_08107C90:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _08107CAA
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _08107CAA
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_08107CAA:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_08107CB4:
	ldr r2, _08107CFC @ =gKirbys
	ldr r0, _08107D00 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _08107D08
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _08107D10
	ldr r6, _08107D04 @ =0x000002C3
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08107D10
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08107D10
	.align 2, 0
_08107CFC: .4byte gKirbys
_08107D00: .4byte gUnk_0203AD3C
_08107D04: .4byte 0x000002C3
_08107D08:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_08107D10:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08107D2A
	mov r0, r8
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r0, _08107D78 @ =0x0000FFFF
	cmp r1, r0
	bne _08107D2E
_08107D2A:
	ldr r0, _08107D78 @ =0x0000FFFF
	strh r0, [r7]
_08107D2E:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08107D3C
	b _08107EB2
_08107D3C:
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08107DBE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _08107DBE
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08107D84
	ldr r2, _08107D7C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08107D80 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08107D86
	.align 2, 0
_08107D78: .4byte 0x0000FFFF
_08107D7C: .4byte gCurLevelInfo
_08107D80: .4byte 0x0000065E
_08107D84:
	movs r1, #0xff
_08107D86:
	cmp r1, #0xff
	beq _08107DBE
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08107EC0 @ =gUnk_02022EB0
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
	ldr r2, _08107EC4 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08107DBE:
	ldr r6, [r5, #8]
	movs r7, #0x80
	lsls r7, r7, #1
	ands r6, r7
	cmp r6, #0
	bne _08107E32
	adds r4, r5, #0
	adds r4, #0x52
	ldrh r0, [r4]
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _08107DE4
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4]
_08107DE4:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08107E08
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_08107E08:
	adds r0, r5, #0
	bl sub_0809D8C8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08107E32
	adds r0, r5, #0
	adds r0, #0x2a
	strb r2, [r0]
	ldr r0, [r5, #8]
	orrs r0, r7
	str r0, [r5, #8]
	strh r6, [r4]
	adds r0, r5, #0
	bl sub_08107ED4
_08107E32:
	adds r0, r5, #0
	bl sub_0806F8BC
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08107EB2
	ldr r2, [r5, #0x6c]
	ldr r0, _08107EC8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	cmp r2, #0
	beq _08107EB2
	ldrb r0, [r2]
	cmp r0, #0
	bne _08107EB2
	adds r0, r2, #0
	adds r0, #0x56
	ldr r1, _08107ECC @ =gUnk_0203AD30
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08107EB2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08107EB2
	adds r4, r2, #0
	adds r4, #0xd4
	ldrh r0, [r4]
	cmp r0, #0x27
	beq _08107EB2
	cmp r0, #0x7a
	bhi _08107EB2
	adds r1, #0x10
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08107EB2
	ldr r0, [r2, #8]
	ldr r1, _08107ED0 @ =0x03800B00
	ands r0, r1
	cmp r0, #0
	bne _08107EB2
	adds r1, r2, #0
	adds r1, #0xdd
	movs r0, #0x1a
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08054C0C
	movs r0, #0xf
	strh r0, [r4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_08107EB2:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08107EC0: .4byte gUnk_02022EB0
_08107EC4: .4byte gUnk_02022F50
_08107EC8: .4byte 0xFFFBFFFF
_08107ECC: .4byte gUnk_0203AD30
_08107ED0: .4byte 0x03800B00

	thumb_func_start sub_08107ED4
sub_08107ED4: @ 0x08107ED4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08107F04 @ =sub_08107FC4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08107F08 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08107F0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08107F14
	.align 2, 0
_08107F04: .4byte sub_08107FC4
_08107F08: .4byte sub_0803DCCC
_08107F0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08107F14:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r6, r5, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	ldr r0, [r5, #0x38]
	ldr r1, _08107FA0 @ =0xFFFFD800
	adds r0, r0, r1
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r4, _08107FA4 @ =gUnk_083572D0
	ldr r0, _08107FA8 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r3, [r2]
	adds r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x14
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _08107FAC @ =gKirbys
	ldr r0, _08107FB0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08107FB8
	ldr r5, _08107FB4 @ =0x000002C3
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08107FBA
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08107FBA
	.align 2, 0
_08107FA0: .4byte 0xFFFFD800
_08107FA4: .4byte gUnk_083572D0
_08107FA8: .4byte gUnk_08D60A80
_08107FAC: .4byte gKirbys
_08107FB0: .4byte gUnk_0203AD3C
_08107FB4: .4byte 0x000002C3
_08107FB8:
	strb r7, [r4]
_08107FBA:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08107FC4
sub_08107FC4: @ 0x08107FC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _08107FE4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08107FE8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08107FF0
	.align 2, 0
_08107FE4: .4byte gCurTask
_08107FE8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08107FF0:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08108014
	ldr r0, [r2]
	bl TaskDestroy
	b _0810826C
_08108014:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _08108026
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _0810826C
_08108026:
	ldr r2, _08108090 @ =gKirbys
	ldr r0, _08108094 @ =gUnk_0203AD3C
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
	bne _081080D8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081080A0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081080FE
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x14
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08108098 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0810809C @ =0x0400000A
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
	b _081080FE
	.align 2, 0
_08108090: .4byte gKirbys
_08108094: .4byte gUnk_0203AD3C
_08108098: .4byte 0xFFF7FFFF
_0810809C: .4byte 0x0400000A
_081080A0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081080FE
	movs r0, #0x14
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _081080D0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081080D4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081080FE
	.align 2, 0
_081080D0: .4byte 0xFFF7FFFF
_081080D4: .4byte 0x0400000A
_081080D8:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081080F4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081080F4
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081080F4:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081080FE:
	ldr r2, _08108140 @ =gKirbys
	ldr r0, _08108144 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r2, [r7]
	cmp r0, r2
	bne _0810814C
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08108154
	ldr r6, _08108148 @ =0x000002C3
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08108154
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08108154
	.align 2, 0
_08108140: .4byte gKirbys
_08108144: .4byte gUnk_0203AD3C
_08108148: .4byte 0x000002C3
_0810814C:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08108154:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _081081A8
	ldrb r0, [r3]
	cmp r0, #0
	beq _08108172
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08108172
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_08108172:
	cmp r3, #0
	beq _081081A8
	ldr r0, _081081A4 @ =gUnk_03000510
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
	beq _08108214
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08108214
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0810826C
	.align 2, 0
_081081A4: .4byte gUnk_03000510
_081081A8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0810820C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _081081E6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081081E6
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081081E6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081081E6
	movs r3, #4
_081081E6:
	ldr r0, _08108210 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08108214
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08108214
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0810826C
	.align 2, 0
_0810820C: .4byte gKirbys
_08108210: .4byte gUnk_03000510
_08108214:
	ldr r0, _08108274 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08108254
	ldr r6, _08108278 @ =gCurLevelInfo
	ldrh r3, [r7]
	ldr r4, _0810827C @ =gUnk_02026D50
_08108222:
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
	bne _0810824C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08108266
_0810824C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08108222
_08108254:
	movs r0, #1
	cmp r0, #0
	beq _08108266
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08108266:
	adds r0, r5, #0
	bl sub_0806FAC8
_0810826C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08108274: .4byte gUnk_0203AD44
_08108278: .4byte gCurLevelInfo
_0810827C: .4byte gUnk_02026D50

	thumb_func_start sub_08108280
sub_08108280: @ 0x08108280
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _081082B0 @ =sub_08108368
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _081082B4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081082B8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081082C0
	.align 2, 0
_081082B0: .4byte sub_08108368
_081082B4: .4byte sub_0803DCCC
_081082B8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081082C0:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	ldr r0, [r4, #0x38]
	ldr r1, _08108348 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _0810834C @ =0x00000399
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x30
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	movs r0, #0xe
	strh r0, [r4, #4]
	ldr r2, _08108350 @ =gKirbys
	ldr r0, _08108354 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _0810835C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0810835E
	ldr r4, _08108358 @ =0x0000039A
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0810835E
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _0810835E
	.align 2, 0
_08108348: .4byte 0xFFFFC000
_0810834C: .4byte 0x00000399
_08108350: .4byte gKirbys
_08108354: .4byte gUnk_0203AD3C
_08108358: .4byte 0x0000039A
_0810835C:
	strb r7, [r5]
_0810835E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08108368
sub_08108368: @ 0x08108368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _08108390 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08108394
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810839C
	.align 2, 0
_08108390: .4byte gCurTask
_08108394:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810839C:
	adds r6, r0, #0
	ldr r7, [r6, #0x44]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081083B6
	ldr r0, [r2]
	bl TaskDestroy
	b _0810894E
_081083B6:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _081083C6
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r6, #6]
	b _0810894E
_081083C6:
	ldr r2, _08108430 @ =gKirbys
	ldr r0, _08108434 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov sb, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _08108478
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08108440
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0810849E
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x30
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08108438 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0810843C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0810849E
	.align 2, 0
_08108430: .4byte gKirbys
_08108434: .4byte gUnk_0203AD3C
_08108438: .4byte 0xFFF7FFFF
_0810843C: .4byte 0x0400000A
_08108440:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _0810849E
	movs r0, #0x30
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08108470 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08108474 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _0810849E
	.align 2, 0
_08108470: .4byte 0xFFF7FFFF
_08108474: .4byte 0x0400000A
_08108478:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _08108494
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08108494
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_08108494:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_0810849E:
	ldr r2, _081084E0 @ =gKirbys
	ldr r0, _081084E4 @ =gUnk_0203AD3C
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
	bne _081084EC
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _081084F4
	ldr r5, _081084E8 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081084F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _081084F4
	.align 2, 0
_081084E0: .4byte gKirbys
_081084E4: .4byte gUnk_0203AD3C
_081084E8: .4byte 0x0000039A
_081084EC:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_081084F4:
	ldr r0, _081085A0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r4, _081085A4 @ =gUnk_03000510
	mov ip, r4
	movs r5, #0x56
	adds r5, r5, r7
	mov r8, r5
	cmp r0, #0
	beq _08108544
	ldr r1, _081085A8 @ =gCurLevelInfo
	mov sl, r1
	mov r2, sb
	ldrh r3, [r2]
	ldr r4, _081085AC @ =gUnk_02026D50
_08108510:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r5, sl
	adds r1, r0, r5
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r0, r3
	bne _0810853C
	adds r5, #0x66
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08108556
_0810853C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08108510
_08108544:
	movs r0, #1
	cmp r0, #0
	beq _08108556
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_08108556:
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	mov r4, ip
	ldrb r2, [r4, #4]
	movs r3, #1
	adds r0, r3, #0
	mov r5, r8
	ldrb r5, [r5]
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08108584
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08108584
	b _081086D6
_08108584:
	ldrh r0, [r6, #4]
	subs r0, #1
	movs r2, #0
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081085B0
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0810894E
	.align 2, 0
_081085A0: .4byte gUnk_0203AD44
_081085A4: .4byte gUnk_03000510
_081085A8: .4byte gCurLevelInfo
_081085AC: .4byte gUnk_02026D50
_081085B0:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r0, r1
	orrs r0, r2
	strh r0, [r6, #6]
	ands r0, r3
	cmp r0, #0
	beq _081085CE
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _081085D8
_081085CE:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _08108660 @ =0xFFFFFBFF
	ands r1, r2
_081085D8:
	str r1, [r0, #8]
	adds r4, r0, #0
	ldrh r5, [r6, #6]
	movs r0, #8
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _0810867E
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0810860A
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _08108620
_0810860A:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08108620
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _08108664 @ =0x0000FFFB
	ands r0, r5
	strh r0, [r6, #6]
_08108620:
	adds r0, r4, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08108668
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0810867E
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _0810867E
	movs r0, #0xff
	strb r0, [r7]
	ldrh r1, [r6, #6]
	ldr r0, _08108664 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r4, #0
	bl sub_08155128
	b _0810867E
	.align 2, 0
_08108660: .4byte 0xFFFFFBFF
_08108664: .4byte 0x0000FFFB
_08108668:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _08108754 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0810867E:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _08108758 @ =gCurLevelInfo
	ldr r5, _0810875C @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _081086D6
	mov r5, ip
	strb r5, [r7]
	strb r5, [r2]
_081086D6:
	ldr r2, [r6, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _08108758 @ =gCurLevelInfo
	ldr r5, _0810875C @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08108770
	ldr r2, _08108760 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _08108770
	ldr r1, _08108764 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08108768
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108770
	.align 2, 0
_08108754: .4byte 0x0000FFFD
_08108758: .4byte gCurLevelInfo
_0810875C: .4byte gUnk_0203AD3C
_08108760: .4byte gKirbys
_08108764: .4byte gUnk_0203AD18
_08108768:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108770:
	ldr r2, [r6, #0x34]
	movs r4, #0xe0
	lsls r4, r4, #7
	adds r2, r2, r4
	asrs r2, r2, #8
	ldr r3, _081087F0 @ =gCurLevelInfo
	ldr r5, _081087F4 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08108808
	ldr r2, _081087F8 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r5, sb
	ldrh r5, [r5]
	cmp r0, r5
	bne _08108808
	ldr r1, _081087FC @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08108800
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108808
	.align 2, 0
_081087F0: .4byte gCurLevelInfo
_081087F4: .4byte gUnk_0203AD3C
_081087F8: .4byte gKirbys
_081087FC: .4byte gUnk_0203AD18
_08108800:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108808:
	ldr r0, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #0x14]
	ldr r2, [r6, #0x34]
	ldr r0, _08108890 @ =0xFFFFD000
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _08108894 @ =gCurLevelInfo
	ldr r7, _08108898 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r1, r8
	strh r1, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r5, [r6, #6]
	ands r4, r5
	cmp r4, #0
	bne _081088AC
	ldr r2, _0810889C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _081088AC
	ldr r1, _081088A0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _081088A4
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081088AC
	.align 2, 0
_08108890: .4byte 0xFFFFD000
_08108894: .4byte gCurLevelInfo
_08108898: .4byte gUnk_0203AD3C
_0810889C: .4byte gKirbys
_081088A0: .4byte gUnk_0203AD18
_081088A4:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_081088AC:
	ldr r2, [r6, #0x34]
	ldr r4, _08108928 @ =0xFFFF9000
	adds r2, r2, r4
	asrs r2, r2, #8
	ldr r3, _0810892C @ =gCurLevelInfo
	ldr r5, _08108930 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08108944
	ldr r2, _08108934 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r5, sb
	ldrh r5, [r5]
	cmp r0, r5
	bne _08108944
	ldr r1, _08108938 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0810893C
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108944
	.align 2, 0
_08108928: .4byte 0xFFFF9000
_0810892C: .4byte gCurLevelInfo
_08108930: .4byte gUnk_0203AD3C
_08108934: .4byte gKirbys
_08108938: .4byte gUnk_0203AD18
_0810893C:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108944:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r6, #0x14]
_0810894E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08108960
sub_08108960: @ 0x08108960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08108994 @ =sub_08108A50
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08108998 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810899C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _081089A4
	.align 2, 0
_08108994: .4byte sub_08108A50
_08108998: .4byte sub_0803DCCC
_0810899C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_081089A4:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	ldr r0, [r5, #0x38]
	ldr r1, _08108A2C @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r3, _08108A30 @ =0x00000399
	movs r4, #0xe
	str r4, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x30
	bl sub_080709F8
	adds r6, r5, #0
	adds r6, #0x2b
	mov r0, r8
	strb r0, [r6]
	strh r4, [r5, #4]
	ldr r2, _08108A34 @ =gKirbys
	ldr r0, _08108A38 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _08108A40
	ldrb r0, [r6]
	cmp r0, #0
	bne _08108A44
	ldr r4, _08108A3C @ =0x0000039A
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08108A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r6]
	b _08108A44
	.align 2, 0
_08108A2C: .4byte 0xFFFFC000
_08108A30: .4byte 0x00000399
_08108A34: .4byte gKirbys
_08108A38: .4byte gUnk_0203AD3C
_08108A3C: .4byte 0x0000039A
_08108A40:
	mov r1, r8
	strb r1, [r6]
_08108A44:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08108A50
sub_08108A50: @ 0x08108A50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _08108A78 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08108A7C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08108A84
	.align 2, 0
_08108A78: .4byte gCurTask
_08108A7C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08108A84:
	adds r6, r0, #0
	ldr r7, [r6, #0x44]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08108AA0
	ldr r0, [r2]
	bl TaskDestroy
	bl _081092F2
_08108AA0:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _08108AB2
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r6, #6]
	bl _081092F2
_08108AB2:
	ldr r2, _08108B1C @ =gKirbys
	ldr r0, _08108B20 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov sb, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _08108B64
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08108B2C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08108B8A
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x30
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08108B24 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08108B28 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08108B8A
	.align 2, 0
_08108B1C: .4byte gKirbys
_08108B20: .4byte gUnk_0203AD3C
_08108B24: .4byte 0xFFF7FFFF
_08108B28: .4byte 0x0400000A
_08108B2C:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08108B8A
	movs r0, #0x30
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08108B5C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08108B60 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _08108B8A
	.align 2, 0
_08108B5C: .4byte 0xFFF7FFFF
_08108B60: .4byte 0x0400000A
_08108B64:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _08108B80
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08108B80
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_08108B80:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_08108B8A:
	ldr r2, _08108BCC @ =gKirbys
	ldr r0, _08108BD0 @ =gUnk_0203AD3C
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
	bne _08108BD8
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08108BE0
	ldr r5, _08108BD4 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08108BE0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08108BE0
	.align 2, 0
_08108BCC: .4byte gKirbys
_08108BD0: .4byte gUnk_0203AD3C
_08108BD4: .4byte 0x0000039A
_08108BD8:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08108BE0:
	ldr r0, _08108C8C @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r4, _08108C90 @ =gUnk_03000510
	mov ip, r4
	movs r5, #0x56
	adds r5, r5, r7
	mov r8, r5
	cmp r0, #0
	beq _08108C30
	ldr r1, _08108C94 @ =gCurLevelInfo
	mov sl, r1
	mov r2, sb
	ldrh r3, [r2]
	ldr r4, _08108C98 @ =gUnk_02026D50
_08108BFC:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r5, sl
	adds r1, r0, r5
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r0, r3
	bne _08108C28
	adds r5, #0x66
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08108C42
_08108C28:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08108BFC
_08108C30:
	movs r0, #1
	cmp r0, #0
	beq _08108C42
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_08108C42:
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	mov r4, ip
	ldrb r2, [r4, #4]
	movs r3, #1
	adds r0, r3, #0
	mov r5, r8
	ldrb r5, [r5]
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08108C70
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08108C70
	b _08108DC2
_08108C70:
	ldrh r0, [r6, #4]
	subs r0, #1
	movs r2, #0
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08108C9C
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _081092F2
	.align 2, 0
_08108C8C: .4byte gUnk_0203AD44
_08108C90: .4byte gUnk_03000510
_08108C94: .4byte gCurLevelInfo
_08108C98: .4byte gUnk_02026D50
_08108C9C:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r0, r1
	orrs r0, r2
	strh r0, [r6, #6]
	ands r0, r3
	cmp r0, #0
	beq _08108CBA
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08108CC4
_08108CBA:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _08108D4C @ =0xFFFFFBFF
	ands r1, r2
_08108CC4:
	str r1, [r0, #8]
	adds r4, r0, #0
	ldrh r5, [r6, #6]
	movs r0, #8
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _08108D6A
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08108CF6
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _08108D0C
_08108CF6:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08108D0C
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _08108D50 @ =0x0000FFFB
	ands r0, r5
	strh r0, [r6, #6]
_08108D0C:
	adds r0, r4, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08108D54
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08108D6A
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	beq _08108D6A
	movs r0, #0xff
	strb r0, [r7]
	ldrh r1, [r6, #6]
	ldr r0, _08108D50 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r4, #0
	bl sub_08155128
	b _08108D6A
	.align 2, 0
_08108D4C: .4byte 0xFFFFFBFF
_08108D50: .4byte 0x0000FFFB
_08108D54:
	mov r0, r8
	ldrb r1, [r0]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _08108E50 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_08108D6A:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _08108E54 @ =gCurLevelInfo
	ldr r5, _08108E58 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r0, r0, r2
	movs r1, #0
	mov ip, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _08108DC2
	mov r5, ip
	strb r5, [r7]
	strb r5, [r2]
_08108DC2:
	ldr r0, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #0x14]
	ldr r2, [r6, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _08108E54 @ =gCurLevelInfo
	ldr r7, _08108E58 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r1, r8
	strh r1, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	ldr r2, _08108E5C @ =0xFFFFDC00
	adds r1, r1, r2
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r5, [r6, #6]
	ands r4, r5
	cmp r4, #0
	bne _08108E70
	ldr r2, _08108E60 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, sb
	ldrh r4, [r4]
	cmp r0, r4
	bne _08108E70
	ldr r1, _08108E64 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08108E68
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108E70
	.align 2, 0
_08108E50: .4byte 0x0000FFFD
_08108E54: .4byte gCurLevelInfo
_08108E58: .4byte gUnk_0203AD3C
_08108E5C: .4byte 0xFFFFDC00
_08108E60: .4byte gKirbys
_08108E64: .4byte gUnk_0203AD18
_08108E68:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108E70:
	ldr r2, [r6, #0x34]
	movs r5, #0xb0
	lsls r5, r5, #6
	adds r2, r2, r5
	asrs r2, r2, #8
	ldr r3, _08108EF4 @ =gCurLevelInfo
	ldr r5, _08108EF8 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	ldr r0, _08108EFC @ =0xFFFF9C00
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08108F10
	ldr r2, _08108F00 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _08108F10
	ldr r1, _08108F04 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08108F08
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108F10
	.align 2, 0
_08108EF4: .4byte gCurLevelInfo
_08108EF8: .4byte gUnk_0203AD3C
_08108EFC: .4byte 0xFFFF9C00
_08108F00: .4byte gKirbys
_08108F04: .4byte gUnk_0203AD18
_08108F08:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108F10:
	ldr r0, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #0x14]
	ldr r2, [r6, #0x34]
	ldr r5, _08108F9C @ =0xFFFFEC00
	adds r2, r2, r5
	asrs r2, r2, #8
	ldr r3, _08108FA0 @ =gCurLevelInfo
	ldr r7, _08108FA4 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	ldr r2, _08108FA8 @ =0xFFFFDC00
	adds r1, r1, r2
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r5, [r6, #6]
	ands r4, r5
	cmp r4, #0
	bne _08108FBC
	ldr r2, _08108FAC @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, sb
	ldrh r4, [r4]
	cmp r0, r4
	bne _08108FBC
	ldr r1, _08108FB0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08108FB4
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08108FBC
	.align 2, 0
_08108F9C: .4byte 0xFFFFEC00
_08108FA0: .4byte gCurLevelInfo
_08108FA4: .4byte gUnk_0203AD3C
_08108FA8: .4byte 0xFFFFDC00
_08108FAC: .4byte gKirbys
_08108FB0: .4byte gUnk_0203AD18
_08108FB4:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08108FBC:
	ldr r2, [r6, #0x34]
	ldr r5, _0810903C @ =0xFFFFD400
	adds r2, r2, r5
	asrs r2, r2, #8
	ldr r3, _08109040 @ =gCurLevelInfo
	ldr r5, _08109044 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	ldr r0, _08109048 @ =0xFFFF9C00
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _0810905C
	ldr r2, _0810904C @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810905C
	ldr r1, _08109050 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08109054
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0810905C
	.align 2, 0
_0810903C: .4byte 0xFFFFD400
_08109040: .4byte gCurLevelInfo
_08109044: .4byte gUnk_0203AD3C
_08109048: .4byte 0xFFFF9C00
_0810904C: .4byte gKirbys
_08109050: .4byte gUnk_0203AD18
_08109054:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0810905C:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	eors r0, r1
	str r0, [r6, #0x14]
	ldr r2, [r6, #0x34]
	ldr r4, _081090E8 @ =0xFFFFEC00
	adds r2, r2, r4
	asrs r2, r2, #8
	ldr r3, _081090EC @ =gCurLevelInfo
	ldr r5, _081090F0 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	movs r0, #0x90
	lsls r0, r0, #6
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _08109104
	ldr r2, _081090F4 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _08109104
	ldr r1, _081090F8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _081090FC
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08109104
	.align 2, 0
_081090E8: .4byte 0xFFFFEC00
_081090EC: .4byte gCurLevelInfo
_081090F0: .4byte gUnk_0203AD3C
_081090F4: .4byte gKirbys
_081090F8: .4byte gUnk_0203AD18
_081090FC:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08109104:
	ldr r2, [r6, #0x34]
	ldr r4, _08109188 @ =0xFFFFD400
	adds r2, r2, r4
	asrs r2, r2, #8
	ldr r3, _0810918C @ =gCurLevelInfo
	ldr r5, _08109190 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	movs r0, #0xc8
	lsls r0, r0, #7
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _081091A4
	ldr r2, _08109194 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _081091A4
	ldr r1, _08109198 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0810919C
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081091A4
	.align 2, 0
_08109188: .4byte 0xFFFFD400
_0810918C: .4byte gCurLevelInfo
_08109190: .4byte gUnk_0203AD3C
_08109194: .4byte gKirbys
_08109198: .4byte gUnk_0203AD18
_0810919C:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_081091A4:
	ldr r0, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #0x14]
	ldr r2, [r6, #0x34]
	movs r5, #0xa0
	lsls r5, r5, #5
	adds r2, r2, r5
	asrs r2, r2, #8
	ldr r3, _08109234 @ =gCurLevelInfo
	ldr r7, _08109238 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	movs r2, #0x90
	lsls r2, r2, #6
	adds r1, r1, r2
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r5, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r5, [r6, #6]
	ands r4, r5
	cmp r4, #0
	bne _0810924C
	ldr r2, _0810923C @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, sb
	ldrh r4, [r4]
	cmp r0, r4
	bne _0810924C
	ldr r1, _08109240 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08109244
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0810924C
	.align 2, 0
_08109234: .4byte gCurLevelInfo
_08109238: .4byte gUnk_0203AD3C
_0810923C: .4byte gKirbys
_08109240: .4byte gUnk_0203AD18
_08109244:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0810924C:
	ldr r2, [r6, #0x34]
	movs r5, #0xb0
	lsls r5, r5, #6
	adds r2, r2, r5
	asrs r2, r2, #8
	ldr r3, _081092D0 @ =gCurLevelInfo
	ldr r5, _081092D4 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	movs r0, #0xc8
	lsls r0, r0, #7
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	ldrh r4, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _081092E8
	ldr r2, _081092D8 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _081092E8
	ldr r1, _081092DC @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _081092E0
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081092E8
	.align 2, 0
_081092D0: .4byte gCurLevelInfo
_081092D4: .4byte gUnk_0203AD3C
_081092D8: .4byte gKirbys
_081092DC: .4byte gUnk_0203AD18
_081092E0:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_081092E8:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	eors r0, r1
	str r0, [r6, #0x14]
_081092F2:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109304
sub_08109304: @ 0x08109304
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08109344 @ =sub_081094C4
	ldr r2, _08109348 @ =0x00003501
	ldr r1, _0810934C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	ldr r0, [sp, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08109350
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08109358
	.align 2, 0
_08109344: .4byte sub_081094C4
_08109348: .4byte 0x00003501
_0810934C: .4byte sub_0803DCCC
_08109350:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08109358:
	adds r4, r0, #0
	adds r5, r4, #0
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x38]
	str r2, [r4, #0x44]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x70]
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	mov ip, r1
	ldr r6, _08109490 @ =gRngVal
	ldr r7, _08109494 @ =0x00196225
	mov sb, r7
	ldr r0, _08109498 @ =0x3C6EF35F
	mov r8, r0
	movs r1, #1
	mov sl, r1
_08109396:
	mov r3, ip
	lsls r2, r3, #3
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r7, [sp, #0x10]
	ldr r1, [r7, #0x40]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	str r1, [r0]
	lsls r2, r3, #2
	adds r0, r5, #0
	adds r0, #0x68
	adds r3, r0, r2
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	str r1, [r6]
	lsrs r0, r1, #0x10
	ldr r7, _0810949C @ =0x000003FF
	ands r0, r7
	subs r7, #0xff
	adds r0, r0, r7
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x6a
	adds r2, r0, r2
	mov r0, sb
	muls r0, r1, r0
	adds r1, r0, #0
	add r1, r8
	str r1, [r6]
	lsrs r0, r1, #0x10
	adds r7, #0xff
	ands r0, r7
	subs r7, #0xff
	adds r0, r0, r7
	strh r0, [r2]
	mov r0, sb
	muls r0, r1, r0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08109402
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_08109402:
	ldr r0, [r6]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r7, sl
	ands r0, r7
	cmp r0, #0
	beq _0810941E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_0810941E:
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _08109396
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08109436
	movs r1, #0x11
	str r1, [sp, #0xc]
_08109436:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _081094A0 @ =0x00000399
	ldr r2, [sp, #0xc]
	str r2, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #4
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _081094A4 @ =gKirbys
	ldr r0, _081094A8 @ =gUnk_0203AD3C
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
	bne _081094B0
	ldr r6, _081094AC @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081094B2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _081094B2
	.align 2, 0
_08109490: .4byte gRngVal
_08109494: .4byte 0x00196225
_08109498: .4byte 0x3C6EF35F
_0810949C: .4byte 0x000003FF
_081094A0: .4byte 0x00000399
_081094A4: .4byte gKirbys
_081094A8: .4byte gUnk_0203AD3C
_081094AC: .4byte 0x0000039A
_081094B0:
	strb r3, [r5]
_081094B2:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_081094C4
sub_081094C4: @ 0x081094C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r2, _081094EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081094F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081094F8
	.align 2, 0
_081094EC: .4byte gCurTask
_081094F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081094F8:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	str r0, [sp, #0x28]
	str r6, [sp, #0x2c]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08109516
	ldr r0, [r2]
	bl TaskDestroy
	b _08109950
_08109516:
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _08109526
	adds r0, r1, #0
	orrs r0, r3
	b _0810994E
_08109526:
	ldr r2, _08109590 @ =gKirbys
	ldr r0, _08109594 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x38]
	ldrh r5, [r1]
	cmp r0, r5
	bne _081095D8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081095A0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _081095FE
	ldrh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #4
	bl sub_0803DE54
	adds r4, r6, #0
	adds r4, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _08109598 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0810959C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _081095FE
	.align 2, 0
_08109590: .4byte gKirbys
_08109594: .4byte gUnk_0203AD3C
_08109598: .4byte 0xFFF7FFFF
_0810959C: .4byte 0x0400000A
_081095A0:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _081095FE
	movs r0, #4
	bl sub_081570B0
	adds r3, r6, #0
	adds r3, #0xc
	str r0, [r6, #0xc]
	ldr r0, [r6, #0x14]
	ldr r1, _081095D0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081095D4 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r6, #1]
	mov r0, sp
	bl sub_0815521C
	b _081095FE
	.align 2, 0
_081095D0: .4byte 0xFFF7FFFF
_081095D4: .4byte 0x0400000A
_081095D8:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _081095F4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081095F4
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6, #0xc]
_081095F4:
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #0x14]
_081095FE:
	ldr r2, _08109640 @ =gKirbys
	ldr r0, _08109644 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0x38]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810964C
	adds r4, r6, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08109654
	ldr r5, _08109648 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08109654
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08109654
	.align 2, 0
_08109640: .4byte gKirbys
_08109644: .4byte gUnk_0203AD3C
_08109648: .4byte 0x0000039A
_0810964C:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08109654:
	ldr r0, [sp, #0x28]
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x38]
	strh r0, [r2]
	ldr r0, _081096C4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r1, [sp, #0x28]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _081096C8
	ldr r5, [sp, #0x28]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _081096C8
	ldr r4, [r6, #0x34]
	ldr r5, [r6, #0x38]
	movs r0, #0
	mov r8, r0
	ldr r1, [sp, #0x2c]
	adds r1, #0x48
	mov sl, r1
	ldr r2, [sp, #0x2c]
	adds r2, #0x4c
	mov sb, r2
_08109698:
	mov r0, r8
	lsls r1, r0, #3
	mov r2, sl
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [r6, #0x34]
	add r1, sb
	ldr r0, [r1]
	str r0, [r6, #0x38]
	adds r0, r6, #0
	bl sub_0803DBC8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08109698
	str r4, [r6, #0x34]
	str r5, [r6, #0x38]
	b _08109950
	.align 2, 0
_081096C4: .4byte gUnk_03000510
_081096C8:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081096E0
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _081096EA
_081096E0:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _08109770 @ =0xFFFFFBFF
	ands r1, r2
_081096EA:
	str r1, [r0, #8]
	str r0, [sp, #0x34]
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r5, #0x28
	adds r5, r5, r6
	mov r8, r5
	cmp r3, #0
	bne _0810978E
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0810971C
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _08109732
_0810971C:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08109732
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _08109774 @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_08109732:
	ldr r0, [sp, #0x34]
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08109778
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0810978E
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0810978E
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _08109774 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	ldr r0, [sp, #0x34]
	bl sub_08155128
	b _0810978E
	.align 2, 0
_08109770: .4byte 0xFFFFFBFF
_08109774: .4byte 0x0000FFFB
_08109778:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _0810984C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0810978E:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r4, _08109850 @ =gCurLevelInfo
	ldr r3, _08109854 @ =gUnk_0203AD3C
	ldrb r0, [r3]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r3]
	muls r0, r7, r0
	adds r3, r4, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _081097E8
	mov r0, sb
	strb r0, [r5]
	strb r0, [r2]
_081097E8:
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #0x2c]
	adds r2, #0x48
	mov sl, r2
	ldr r5, [sp, #0x2c]
	adds r5, #0x4c
	mov sb, r5
	ldr r0, [sp, #0x2c]
	adds r0, #0x68
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x2c]
	adds r1, #0x6a
	str r1, [sp, #0x48]
	ldr r2, [sp, #0x28]
	adds r2, #0x54
	str r2, [sp, #0x3c]
	ldr r5, [sp, #0x28]
	adds r5, #0x55
	str r5, [sp, #0x40]
	str r4, [sp, #0x30]
_08109812:
	mov r0, r8
	lsls r4, r0, #3
	mov r1, sb
	adds r2, r1, r4
	lsls r3, r0, #2
	ldr r5, [sp, #0x44]
	adds r0, r5, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	mov r0, sl
	adds r2, r0, r4
	ldr r1, [sp, #0x48]
	adds r5, r1, r3
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08109858
	adds r0, r1, #0
	adds r0, #8
	b _0810985C
	.align 2, 0
_0810984C: .4byte 0x0000FFFD
_08109850: .4byte gCurLevelInfo
_08109854: .4byte gUnk_0203AD3C
_08109858:
	adds r0, r1, #0
	subs r0, #8
_0810985C:
	strh r0, [r5]
	ldr r5, [sp, #0x44]
	adds r3, r5, r3
	ldrh r1, [r3]
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _08109872
	adds r0, r1, #0
	adds r0, #8
	b _08109876
_08109872:
	adds r0, r1, #0
	subs r0, #8
_08109876:
	strh r0, [r3]
	mov r5, sl
	adds r1, r5, r4
	ldr r2, [sp, #0x3c]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r5, _08109910 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	ldr r1, [sp, #0x30]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r6, #0x1c]
	mov r2, sb
	adds r1, r2, r4
	ldr r2, [sp, #0x40]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r5]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	ldr r2, _08109914 @ =gUnk_02023540
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r1, r0
	strh r4, [r6, #0x1e]
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08109926
	ldr r2, _08109918 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x38]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08109926
	ldr r1, _0810991C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r6, #0x1e]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08109920
	ldr r0, [sp, #0x34]
	bl sub_081564D8
	b _08109926
	.align 2, 0
_08109910: .4byte gUnk_0203AD3C
_08109914: .4byte gUnk_02023540
_08109918: .4byte gKirbys
_0810991C: .4byte gUnk_0203AD18
_08109920:
	ldr r0, [sp, #0x34]
	bl sub_0815604C
_08109926:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08109936
	b _08109812
_08109936:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08109950
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
_0810994E:
	strh r0, [r6, #6]
_08109950:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08109960
sub_08109960: @ 0x08109960
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0810998C @ =sub_08105CE0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xa0
	adds r2, r4, #0
	adds r2, #0xa2
	adds r0, r4, #0
	bl sub_08109DC4
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08109990
	movs r0, #0
	b _08109994
	.align 2, 0
_0810998C: .4byte sub_08105CE0
_08109990:
	movs r0, #0x80
	lsls r0, r0, #2
_08109994:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_081099A4
sub_081099A4: @ 0x081099A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081099BC @ =sub_08107408
	movs r1, #0
	bl ObjectSetFunc
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081099BC: .4byte sub_08107408

	thumb_func_start sub_081099C0
sub_081099C0: @ 0x081099C0
	push {lr}
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _081099D0 @ =sub_0810A098
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_081099D0: .4byte sub_0810A098

	thumb_func_start sub_081099D4
sub_081099D4: @ 0x081099D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081099FC @ =sub_081003EC
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
_081099FC: .4byte sub_081003EC

	thumb_func_start sub_08109A00
sub_08109A00: @ 0x08109A00
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08109A32
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08109A32
	adds r0, r2, #0
	bl sub_08102A80
_08109A32:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109A38
sub_08109A38: @ 0x08109A38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08109A84
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08109A84
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #1
	bne _08109A7E
	adds r1, r4, #0
	adds r1, #0xda
	ldrb r0, [r1]
	cmp r0, #0xd
	bne _08109A7E
	movs r0, #0xe
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0810487C
	adds r0, r4, #0
	bl sub_08102938
	b _08109A84
_08109A7E:
	adds r0, r4, #0
	bl sub_08103138
_08109A84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109A8C
sub_08109A8C: @ 0x08109A8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xd5
	movs r4, #0
	movs r0, #4
	strb r0, [r1]
	ldr r2, _08109AD0 @ =sub_08103404
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0x78
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08109AD0: .4byte sub_08103404

	thumb_func_start sub_08109AD4
sub_08109AD4: @ 0x08109AD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xd5
	movs r4, #0
	movs r0, #4
	strb r0, [r1]
	ldr r2, _08109B18 @ =sub_08103688
	adds r0, r5, #0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0x10
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08109B18: .4byte sub_08103688

	thumb_func_start sub_08109B1C
sub_08109B1C: @ 0x08109B1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xd5
	movs r4, #0
	movs r0, #5
	strb r0, [r1]
	ldr r2, _08109B60 @ =sub_08103E60
	adds r0, r5, #0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0x28
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08109B60: .4byte sub_08103E60

	thumb_func_start sub_08109B64
sub_08109B64: @ 0x08109B64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x55
	movs r0, #8
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x7e
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x28
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08102938
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109B98
sub_08109B98: @ 0x08109B98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x55
	movs r0, #0xa
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xe6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #4
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08102938
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08109BD0
sub_08109BD0: @ 0x08109BD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	subs r1, #0x27
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x55
	movs r0, #0xd
	strb r0, [r1]
	adds r1, #8
	movs r0, #8
	strb r0, [r1]
	subs r1, #0xc
	movs r0, #0x7e
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x48
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08102938
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08109C08
sub_08109C08: @ 0x08109C08
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
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08109C3A
	adds r0, r2, #0
	adds r0, #0xd8
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xda
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08102938
_08109C3A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109C40
sub_08109C40: @ 0x08109C40
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109C6C @ =sub_08109C74
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _08109C70 @ =0xFFFFD000
	str r0, [r4, #0x44]
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109C6C: .4byte sub_08109C74
_08109C70: .4byte 0xFFFFD000

	thumb_func_start sub_08109C74
sub_08109C74: @ 0x08109C74
	push {lr}
	adds r1, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	cmp r0, #0
	bne _08109C86
	adds r0, r1, #0
	bl sub_08100EA0
_08109C86:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109C8C
sub_08109C8C: @ 0x08109C8C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne _08109C9E
	ldr r0, [r2, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #8]
_08109C9E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08109CB0
	adds r0, r2, #0
	bl sub_081026E0
_08109CB0:
	pop {r0}
	bx r0

	thumb_func_start sub_08109CB4
sub_08109CB4: @ 0x08109CB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109CE8 @ =sub_08109CEC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x40
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109CE8: .4byte sub_08109CEC

	thumb_func_start sub_08109CEC
sub_08109CEC: @ 0x08109CEC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r0, #0x83
	adds r0, r0, r2
	mov ip, r0
	ldrb r4, [r0]
	cmp r4, #1
	bne _08109D44
	ldr r3, [r2, #8]
	movs r5, #2
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _08109D54
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r1, r3
	str r1, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08109D54
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0xfc
	lsls r0, r0, #7
	str r0, [r2, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r2, #0x44]
	orrs r1, r4
	str r1, [r2, #8]
	mov r0, ip
	strb r5, [r0]
	ldr r0, [r2, #8]
	ldr r1, _08109D40 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #8]
	b _08109D54
	.align 2, 0
_08109D40: .4byte 0xFFFFFBFF
_08109D44:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08109D54
	adds r0, r2, #0
	bl sub_08109D5C
_08109D54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109D5C
sub_08109D5C: @ 0x08109D5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109D94 @ =sub_081013C8
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x52
	movs r2, #0
	movs r1, #0
	movs r0, #0x20
	strh r0, [r3]
	strh r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	movs r0, #6
	adds r1, r4, #0
	bl sub_0806FE64
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109D94: .4byte sub_081013C8

	thumb_func_start sub_08109D98
sub_08109D98: @ 0x08109D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109DC0 @ =sub_08101560
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109DC0: .4byte sub_08101560

	thumb_func_start sub_08109DC4
sub_08109DC4: @ 0x08109DC4
	push {r4, lr}
	adds r3, r2, #0
	movs r4, #0x80
	lsls r4, r4, #6
	adds r2, r4, #0
	strh r2, [r1]
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _08109DEC
	cmp r0, #1
	bgt _08109DE2
	cmp r0, #0
	beq _08109DE8
	b _08109DF4
_08109DE2:
	cmp r0, #2
	beq _08109DF0
	b _08109DF4
_08109DE8:
	movs r0, #8
	b _08109DF6
_08109DEC:
	movs r0, #0xa
	b _08109DF6
_08109DF0:
	movs r0, #0xd
	b _08109DF6
_08109DF4:
	movs r0, #0x12
_08109DF6:
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08109E00
sub_08109E00: @ 0x08109E00
	adds r1, r0, #0
	adds r1, #0x83
	movs r3, #0
	strb r3, [r1]
	ldr r1, [r0, #8]
	ldr r2, _08109E1C @ =0xFFFFFDFF
	ands r1, r2
	str r1, [r0, #8]
	ldr r1, _08109E20 @ =sub_08105CE0
	str r1, [r0, #0x78]
	adds r0, #0x9f
	strb r3, [r0]
	bx lr
	.align 2, 0
_08109E1C: .4byte 0xFFFFFDFF
_08109E20: .4byte sub_08105CE0

	thumb_func_start sub_08109E24
sub_08109E24: @ 0x08109E24
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _08109E48 @ =sub_08105D78
	str r0, [r2, #0x78]
	bx lr
	.align 2, 0
_08109E48: .4byte sub_08105D78

	thumb_func_start sub_08109E4C
sub_08109E4C: @ 0x08109E4C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08109E7C @ =sub_08105BF0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0xa0
	adds r4, r5, #0
	adds r4, #0xa2
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08109DC4
	movs r1, #0
	strh r1, [r4]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08109E80
	strh r1, [r5, #4]
	b _08109E86
	.align 2, 0
_08109E7C: .4byte sub_08105BF0
_08109E80:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #4]
_08109E86:
	adds r0, r5, #0
	adds r0, #0x9f
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08109E98
sub_08109E98: @ 0x08109E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08109EC4
	ldr r0, [r4, #0x44]
	ldr r1, _08109EF0 @ =0xFFFFEFFF
	adds r0, r0, r1
	ldr r1, _08109EF4 @ =0x00007BFE
	cmp r0, r1
	bls _08109EC4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_08109EC4:
	ldr r0, [r4, #0x58]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08109EE8
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08109EE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109EF0: .4byte 0xFFFFEFFF
_08109EF4: .4byte 0x00007BFE

	thumb_func_start sub_08109EF8
sub_08109EF8: @ 0x08109EF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109F3C @ =sub_08106874
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x82
	adds r0, #0x35
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109F3C: .4byte sub_08106874

	thumb_func_start sub_08109F40
sub_08109F40: @ 0x08109F40
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x70]
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #7
	beq _08109F76
	cmp r0, #9
	beq _08109F76
	ldr r0, _08109F7C @ =0xFFFFFEFF
	ands r2, r0
	ldr r0, _08109F80 @ =0xFFFFFDFF
	ands r2, r0
	ldr r0, _08109F84 @ =0xFFFFF7FF
	ands r2, r0
	ldr r0, _08109F88 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, _08109F8C @ =sub_08109E98
	str r0, [r3, #0x78]
	adds r0, r3, #0
	bl sub_08106AD0
_08109F76:
	pop {r0}
	bx r0
	.align 2, 0
_08109F7C: .4byte 0xFFFFFEFF
_08109F80: .4byte 0xFFFFFDFF
_08109F84: .4byte 0xFFFFF7FF
_08109F88: .4byte 0xFFFFFBFF
_08109F8C: .4byte sub_08109E98

	thumb_func_start sub_08109F90
sub_08109F90: @ 0x08109F90
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109FB8 @ =sub_08107560
	movs r1, #2
	bl ObjectSetFunc
	movs r2, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109FB8: .4byte sub_08107560

	thumb_func_start sub_08109FBC
sub_08109FBC: @ 0x08109FBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08109FF0 @ =sub_08109FF4
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x18
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08109FF0: .4byte sub_08109FF4

	thumb_func_start sub_08109FF4
sub_08109FF4: @ 0x08109FF4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	bne _0810A014
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0810A01C
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r2, #8]
	b _0810A030
_0810A014:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_0810A01C:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810A030
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
_0810A030:
	pop {r0}
	bx r0

	thumb_func_start sub_0810A034
sub_0810A034: @ 0x0810A034
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809F840
	ldr r0, _0810A090 @ =gUnk_03000510
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
	bne _0810A088
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0810A074
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _0810A094 @ =gUnk_0203AD40
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_0810A074:
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0810A088
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
_0810A088:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810A090: .4byte gUnk_03000510
_0810A094: .4byte gUnk_0203AD40

	thumb_func_start sub_0810A098
sub_0810A098: @ 0x0810A098
	push {lr}
	mov ip, r0
	ldr r2, [r0, #0x70]
	ldr r1, [r0, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	movs r3, #1
	ands r0, r3
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	ldr r1, [r2, #0x40]
	mov r0, ip
	str r1, [r0, #0x40]
	ldr r0, [r2, #0x44]
	mov r2, ip
	str r0, [r2, #0x44]
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _0810A0E2
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, r1, r0
	b _0810A0EC
_0810A0E2:
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r1, r0
_0810A0EC:
	mov r1, ip
	str r0, [r1, #0x40]
	mov r0, ip
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, ip
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r0}
	bx r0

	thumb_func_start sub_0810A104
sub_0810A104: @ 0x0810A104
	push {lr}
	ldr r2, _0810A114 @ =gUnk_0203AD34
	movs r1, #0
	strb r1, [r2]
	bl sub_0803DCCC
	pop {r0}
	bx r0
	.align 2, 0
_0810A114: .4byte gUnk_0203AD34

	thumb_func_start sub_0810A118
sub_0810A118: @ 0x0810A118
	push {lr}
	ldr r2, _0810A12C @ =gBldRegs
	movs r1, #0
	strh r1, [r2, #2]
	strh r1, [r2]
	bl sub_0803DCCC
	pop {r0}
	bx r0
	.align 2, 0
_0810A12C: .4byte gBldRegs

	thumb_func_start sub_0810A130
sub_0810A130: @ 0x0810A130
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810A14A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810A152
_0810A14A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810A152:
	adds r0, #0x2b
	ldrb r0, [r0]
	bl sub_0803E4D4
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810A168
sub_0810A168: @ 0x0810A168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #3
	mov r8, r0
	movs r1, #1
	mov sl, r1
	movs r2, #1
	str r2, [sp]
	adds r6, r7, #0
	ldr r2, _0810A20C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810A210 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810A214 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r0, #7
	ands r3, r0
	movs r4, #0
	ldr r0, _0810A218 @ =gUnk_0203AD34
	ldrb r0, [r0]
	mov sb, r2
	cmp r0, #0
	beq _0810A1A6
	b _0810A2AC
_0810A1A6:
	ldr r0, _0810A21C @ =gUnk_0203AD44
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	beq _0810A1D8
	ldr r2, _0810A220 @ =gKirbys
	mov ip, r2
	movs r2, #0xd4
	lsls r2, r2, #1
	ldr r5, _0810A224 @ =0x00000103
_0810A1BE:
	adds r0, r1, #0
	muls r0, r2, r0
	add r0, ip
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _0810A1CE
	movs r4, #1
_0810A1CE:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _0810A1BE
_0810A1D8:
	cmp r4, #0
	bne _0810A2AC
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0810A210 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810A214 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sb
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #2
	bhs _0810A2AC
	movs r4, #0
	ldr r1, _0810A228 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _0810A22C @ =gUnk_020229E0
	adds r6, r7, #0
	adds r6, #0x56
	b _0810A244
	.align 2, 0
_0810A20C: .4byte gRngVal
_0810A210: .4byte 0x00196225
_0810A214: .4byte 0x3C6EF35F
_0810A218: .4byte gUnk_0203AD34
_0810A21C: .4byte gUnk_0203AD44
_0810A220: .4byte gKirbys
_0810A224: .4byte 0x00000103
_0810A228: .4byte gUnk_020229D4
_0810A22C: .4byte gUnk_020229E0
_0810A230:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810A24C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0810A244:
	cmp r0, #0
	bne _0810A230
	orrs r2, r3
	str r2, [r1]
_0810A24C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	movs r4, #0xf0
	strh r4, [r1, #6]
	movs r0, #0x84
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x36
	strb r0, [r1, #0xc]
	movs r0, #6
	strb r0, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	ldr r0, _0810A2A8 @ =0x0000FF10
	strh r0, [r1, #0x1a]
	adds r0, #0x64
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	movs r0, #0xa0
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	ldrb r0, [r6]
	bl CreateObject
	adds r0, r7, #0
	bl sub_0810C9C8
	b _0810A3C0
	.align 2, 0
_0810A2A8: .4byte 0x0000FF10
_0810A2AC:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0810A2C4
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810A2C8
_0810A2C4:
	movs r0, #0
	mov sl, r0
_0810A2C8:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0810A2DE
	movs r2, #0
	mov r8, r2
_0810A2DE:
	cmp r1, #9
	bne _0810A2E6
	movs r0, #0
	str r0, [sp]
_0810A2E6:
	ldr r1, _0810A318 @ =0x00000133
	adds r5, r6, r1
	ldrb r0, [r5]
	cmp r0, #2
	bls _0810A2FA
	movs r2, #0
	mov r8, r2
	movs r0, #0
	str r0, [sp]
	mov sl, r0
_0810A2FA:
	adds r0, r7, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r1, r0
	ble _0810A31C
	adds r0, r7, #0
	bl sub_0810CC90
	b _0810A3C0
	.align 2, 0
_0810A318: .4byte 0x00000133
_0810A31C:
	ldr r2, _0810A348 @ =0x00000139
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r1, r0
	ble _0810A34C
	mov r1, r8
	subs r0, r3, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A3B6
	adds r0, r7, #0
	bl sub_0810DCA4
	movs r2, #0x99
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _0810A3BE
	.align 2, 0
_0810A348: .4byte 0x00000139
_0810A34C:
	movs r0, #1
	mov r8, r0
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _0810A378
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r4, #0
	strb r4, [r0]
	adds r0, r7, #0
	bl sub_0810DCA4
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r4, [r0]
	ldrb r0, [r5]
	adds r0, #1
	b _0810A3BE
_0810A378:
	mov r1, sl
	subs r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _0810A3A4
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r4, #0
	mov r1, r8
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_081142B0
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r4, [r0]
	ldrb r0, [r5]
	adds r0, #1
	b _0810A3BE
_0810A3A4:
	ldr r1, [sp]
	subs r0, r3, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A3B6
	adds r0, r7, #0
	bl sub_0810EA50
	b _0810A3C0
_0810A3B6:
	adds r0, r7, #0
	bl sub_0810CC90
	movs r0, #0
_0810A3BE:
	strb r0, [r5]
_0810A3C0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0810A3D0
sub_0810A3D0: @ 0x0810A3D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r2, #2
	movs r5, #1
	mov sb, r5
	mov r3, ip
	ldr r0, _0810A408 @ =0x0000012B
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #6
	bne _0810A412
	movs r2, #1
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0810A40C @ =0x00000139
	add r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bgt _0810A410
	movs r4, #2
	mov sb, r4
	b _0810A412
	.align 2, 0
_0810A408: .4byte 0x0000012B
_0810A40C: .4byte 0x00000139
_0810A410:
	movs r5, #2
_0810A412:
	ldr r6, _0810A450 @ =gRngVal
	ldr r0, [r6]
	ldr r1, _0810A454 @ =0x00196225
	mov r8, r1
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r7, _0810A458 @ =0x3C6EF35F
	adds r4, r0, r7
	str r4, [r6]
	lsrs r0, r4, #0x10
	movs r1, #3
	ands r0, r1
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0810A460
	movs r5, #0x93
	lsls r5, r5, #1
	adds r2, r3, r5
	movs r1, #0
	movs r0, #6
	strb r0, [r2]
	ldr r4, _0810A45C @ =0x0000012B
	adds r2, r3, r4
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x85
	strb r1, [r0]
	b _0810A526
	.align 2, 0
_0810A450: .4byte gRngVal
_0810A454: .4byte 0x00196225
_0810A458: .4byte 0x3C6EF35F
_0810A45C: .4byte 0x0000012B
_0810A460:
	subs r0, r1, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0810A4EC
	movs r5, #0x95
	lsls r5, r5, #1
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r3, r0
	movs r0, #7
	strb r0, [r1]
	ldr r2, _0810A4C8 @ =0x0000012B
	adds r1, r3, r2
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x85
	movs r0, #4
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x80
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, _0810A4CC @ =0x00000139
	adds r2, r3, r5
	adds r5, r1, #0
	ldrb r2, [r2]
	cmp r0, r2
	bgt _0810A526
	mov r0, r8
	muls r0, r4, r0
	adds r2, r0, r7
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810A526
	adds r3, r5, #0
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r7
	str r0, [r6]
	lsrs r2, r0, #0x10
	ldr r0, _0810A4D0 @ =0x00005554
	cmp r2, r0
	bhi _0810A4D4
	movs r1, #0
	b _0810A4DE
	.align 2, 0
_0810A4C8: .4byte 0x0000012B
_0810A4CC: .4byte 0x00000139
_0810A4D0: .4byte 0x00005554
_0810A4D4:
	ldr r0, _0810A4E8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0810A4DE
	movs r1, #1
_0810A4DE:
	ldrb r0, [r3]
	adds r0, r0, r1
	strb r0, [r5]
	b _0810A526
	.align 2, 0
_0810A4E8: .4byte 0x0000AAA9
_0810A4EC:
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A514
	movs r4, #0x93
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #8
	strb r0, [r1]
	ldr r5, _0810A510 @ =0x0000012B
	adds r1, r3, r5
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x85
	movs r0, #6
	b _0810A524
	.align 2, 0
_0810A510: .4byte 0x0000012B
_0810A514:
	movs r0, #0x93
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #0
	movs r1, #6
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x85
_0810A524:
	strb r0, [r1]
_0810A526:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810A534
sub_0810A534: @ 0x0810A534
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r0, #0
	cmp r1, #1
	beq _0810A5C0
	cmp r1, #1
	bgt _0810A62C
	cmp r1, #0
	bne _0810A62C
	ldr r2, _0810A55C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810A560 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810A564 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r2, #0
	b _0810A570
	.align 2, 0
_0810A55C: .4byte gRngVal
_0810A560: .4byte 0x00196225
_0810A564: .4byte 0x3C6EF35F
_0810A568:
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0810A57C
_0810A570:
	adds r1, r2, #1
	lsls r0, r1, #0xf
	cmp r4, r0
	bge _0810A568
	cmp r2, #0
	beq _0810A582
_0810A57C:
	cmp r2, #1
	beq _0810A59C
	b _0810A5AA
_0810A582:
	ldr r2, _0810A594 @ =0x0000012D
	adds r1, r3, r2
	movs r0, #1
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A598 @ =gUnk_083572E8
	b _0810A5A8
	.align 2, 0
_0810A594: .4byte 0x0000012D
_0810A598: .4byte gUnk_083572E8
_0810A59C:
	ldr r1, _0810A5B8 @ =0x0000012D
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A5BC @ =gUnk_083572F3
_0810A5A8:
	str r0, [r1]
_0810A5AA:
	ldr r2, _0810A5B8 @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0]
	subs r0, #1
	subs r2, #1
	b _0810A708
	.align 2, 0
_0810A5B8: .4byte 0x0000012D
_0810A5BC: .4byte gUnk_083572F3
_0810A5C0:
	ldr r2, _0810A5D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810A5D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810A5DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r2, #0
	b _0810A5E8
	.align 2, 0
_0810A5D4: .4byte gRngVal
_0810A5D8: .4byte 0x00196225
_0810A5DC: .4byte 0x3C6EF35F
_0810A5E0:
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0810A5F4
_0810A5E8:
	adds r1, r2, #1
	lsls r0, r1, #0xf
	cmp r4, r0
	bge _0810A5E0
	cmp r2, #0
	beq _0810A5FA
_0810A5F4:
	cmp r2, #1
	beq _0810A614
	b _0810A6FC
_0810A5FA:
	ldr r2, _0810A60C @ =0x0000012D
	adds r1, r3, r2
	movs r0, #3
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A610 @ =gUnk_083572E8
	b _0810A6FA
	.align 2, 0
_0810A60C: .4byte 0x0000012D
_0810A610: .4byte gUnk_083572E8
_0810A614:
	ldr r0, _0810A624 @ =0x0000012D
	adds r1, r3, r0
	movs r0, #3
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A628 @ =gUnk_083572F3
	b _0810A6FA
	.align 2, 0
_0810A624: .4byte 0x0000012D
_0810A628: .4byte gUnk_083572F3
_0810A62C:
	ldr r1, _0810A644 @ =gRngVal
	ldr r2, [r1]
	ldr r0, _0810A648 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _0810A64C @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r1]
	lsrs r4, r0, #0x10
	movs r2, #0
	adds r5, r1, #0
	b _0810A654
	.align 2, 0
_0810A644: .4byte gRngVal
_0810A648: .4byte 0x00196225
_0810A64C: .4byte 0x3C6EF35F
_0810A650:
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_0810A654:
	cmp r2, #2
	bhi _0810A660
	adds r1, r2, #1
	lsls r0, r1, #0xe
	cmp r4, r0
	bge _0810A650
_0810A660:
	cmp r2, #1
	beq _0810A690
	cmp r2, #1
	bgt _0810A66E
	cmp r2, #0
	beq _0810A678
	b _0810A6FC
_0810A66E:
	cmp r2, #2
	beq _0810A6D4
	cmp r2, #3
	beq _0810A6EC
	b _0810A6FC
_0810A678:
	ldr r0, _0810A688 @ =0x0000012D
	adds r1, r3, r0
	movs r0, #5
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A68C @ =gUnk_083572E8
	b _0810A6FA
	.align 2, 0
_0810A688: .4byte 0x0000012D
_0810A68C: .4byte gUnk_083572E8
_0810A690:
	ldr r1, [r5]
	ldr r0, _0810A6B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810A6B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0810A6BC
	ldr r2, _0810A6B8 @ =0x0000012D
	adds r1, r3, r2
	movs r0, #5
	strb r0, [r1]
	b _0810A6C2
	.align 2, 0
_0810A6B0: .4byte 0x00196225
_0810A6B4: .4byte 0x3C6EF35F
_0810A6B8: .4byte 0x0000012D
_0810A6BC:
	ldr r1, _0810A6CC @ =0x0000012D
	adds r0, r3, r1
	strb r2, [r0]
_0810A6C2:
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A6D0 @ =gUnk_083572F3
	b _0810A6FA
	.align 2, 0
_0810A6CC: .4byte 0x0000012D
_0810A6D0: .4byte gUnk_083572F3
_0810A6D4:
	ldr r2, _0810A6E4 @ =0x0000012D
	adds r1, r3, r2
	movs r0, #4
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A6E8 @ =gUnk_083572EE
	b _0810A6FA
	.align 2, 0
_0810A6E4: .4byte 0x0000012D
_0810A6E8: .4byte gUnk_083572EE
_0810A6EC:
	ldr r0, _0810A714 @ =0x0000012D
	adds r1, r3, r0
	movs r0, #5
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0xe0
	ldr r0, _0810A718 @ =gUnk_083572F9
_0810A6FA:
	str r0, [r1]
_0810A6FC:
	ldr r1, _0810A714 @ =0x0000012D
	adds r0, r3, r1
	ldrb r0, [r0]
	subs r0, #1
	movs r2, #0x96
	lsls r2, r2, #1
_0810A708:
	adds r1, r3, r2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810A714: .4byte 0x0000012D
_0810A718: .4byte gUnk_083572F9

	thumb_func_start sub_0810A71C
sub_0810A71C: @ 0x0810A71C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	str r4, [sp]
	adds r0, #0xfc
	ldr r0, [r0]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0810A7C0 @ =gRngVal
	ldr r0, [r1]
	ldr r7, _0810A7C4 @ =0x00196225
	muls r0, r7, r0
	ldr r2, _0810A7C8 @ =0x3C6EF35F
	mov ip, r2
	adds r2, r0, r2
	str r2, [r1]
	lsrs r3, r2, #0x10
	movs r0, #7
	ands r3, r0
	mov sl, r3
	adds r0, r4, #0
	adds r0, #0x80
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r5, #0x9c
	lsls r5, r5, #1
	adds r0, r4, r5
	adds r5, r1, #0
	ldrb r0, [r0]
	cmp r3, r0
	bgt _0810A76C
	b _0810A890
_0810A76C:
	movs r0, #3
	str r0, [sp, #4]
	movs r6, #4
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r6, r1
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #2
	bls _0810A794
	movs r6, #0
	movs r3, #8
	str r3, [sp, #4]
_0810A794:
	mov r0, r8
	adds r0, #0xe1
	movs r1, #0
	strb r1, [r0]
	mov r0, sb
	adds r0, #0xe1
	strb r1, [r0]
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810A7CC
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	b _0810A7D4
	.align 2, 0
_0810A7C0: .4byte gRngVal
_0810A7C4: .4byte 0x00196225
_0810A7C8: .4byte 0x3C6EF35F
_0810A7CC:
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
_0810A7D4:
	mov r3, sl
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A7EC
	movs r5, #0x93
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r0, #0
	b _0810AAF4
_0810A7EC:
	ldr r0, [r5]
	ldr r6, _0810A820 @ =0x00196225
	muls r0, r6, r0
	ldr r1, _0810A824 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #7
	ands r0, r1
	ldr r3, [sp, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A85C
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r1, _0810A824 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r2, r0, #0x10
	ldr r0, _0810A828 @ =0x00005554
	cmp r2, r0
	bhi _0810A82C
	movs r1, #0
	b _0810A836
	.align 2, 0
_0810A820: .4byte 0x00196225
_0810A824: .4byte 0x3C6EF35F
_0810A828: .4byte 0x00005554
_0810A82C:
	ldr r0, _0810A854 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0810A836
	movs r1, #1
_0810A836:
	adds r0, r1, #3
	movs r3, #0x93
	lsls r3, r3, #1
	adds r2, r4, r3
	movs r1, #0
	strb r0, [r2]
	ldr r5, _0810A858 @ =0x00000127
	adds r0, r4, r5
	strb r1, [r0]
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	b _0810AB02
	.align 2, 0
_0810A854: .4byte 0x0000AAA9
_0810A858: .4byte 0x00000127
_0810A85C:
	ldr r0, [sp]
	movs r1, #0
	bl sub_0810A534
	movs r3, #0x93
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	muls r0, r6, r0
	ldr r2, _0810A88C @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r1
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	movs r5, #0x99
	lsls r5, r5, #1
	adds r1, r4, r5
	b _0810AAFC
	.align 2, 0
_0810A88C: .4byte 0x3C6EF35F
_0810A890:
	ldr r1, _0810A8FC @ =0x00000139
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r3, r0
	ble _0810A990
	movs r2, #3
	str r2, [sp, #4]
	movs r6, #3
	movs r3, #0x93
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810A8AE
	movs r6, #0
_0810A8AE:
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _0810A8C0
	movs r6, #0
	movs r2, #8
	str r2, [sp, #4]
_0810A8C0:
	mov r0, r8
	adds r0, #0xe1
	movs r2, #1
	strb r2, [r0]
	mov r0, sb
	adds r0, #0xe1
	strb r2, [r0]
	ldr r0, [r5]
	muls r0, r7, r0
	mov r3, ip
	adds r1, r0, r3
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r3, #3
	ands r0, r3
	cmp r0, #0
	beq _0810A900
	adds r0, r1, #0
	muls r0, r7, r0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	adds r0, #4
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r4, r2
	strb r0, [r1]
	b _0810A908
	.align 2, 0
_0810A8FC: .4byte 0x00000139
_0810A900:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r3, [r0]
_0810A908:
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A928
	movs r3, #0x93
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0
	strb r0, [r1]
	movs r5, #0x99
	lsls r5, r5, #1
	adds r1, r4, r5
	b _0810AAFC
_0810A928:
	ldr r0, [r5]
	ldr r6, _0810A95C @ =0x00196225
	muls r0, r6, r0
	ldr r1, _0810A960 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #7
	ands r0, r1
	ldr r3, [sp, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810A968
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r1, _0810A960 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r2, r0, #0x10
	ldr r0, _0810A964 @ =0x00005554
	cmp r2, r0
	bhi _0810A958
	b _0810AA76
_0810A958:
	b _0810AA88
	.align 2, 0
_0810A95C: .4byte 0x00196225
_0810A960: .4byte 0x3C6EF35F
_0810A964: .4byte 0x00005554
_0810A968:
	ldr r0, [sp]
	movs r1, #1
	bl sub_0810A534
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r5]
	muls r0, r6, r0
	ldr r3, _0810A98C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	b _0810AAEE
	.align 2, 0
_0810A98C: .4byte 0x3C6EF35F
_0810A990:
	movs r1, #3
	str r1, [sp, #4]
	movs r3, #0x93
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _0810A9AC
	movs r3, #8
	str r3, [sp, #4]
_0810A9AC:
	movs r6, #3
	adds r0, r2, #0
	muls r0, r7, r0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	mov r2, r8
	adds r2, #0xe1
	strb r0, [r2]
	mov r1, sb
	adds r1, #0xe1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0810AA04
	ldr r0, [r5]
	muls r0, r7, r0
	mov r2, ip
	adds r1, r0, r2
	str r1, [r5]
	lsrs r0, r1, #0x10
	ands r0, r6
	cmp r0, #0
	beq _0810A9FA
	adds r0, r1, #0
	muls r0, r7, r0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r0, #4
	movs r3, #0x94
	lsls r3, r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	b _0810AA28
_0810A9FA:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r6, [r0]
	b _0810AA28
_0810AA04:
	ldr r0, [r5]
	muls r0, r7, r0
	add r0, ip
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0810AA20
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	b _0810AA28
_0810AA20:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r3, [r0]
_0810AA28:
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810AA48
	movs r3, #0x93
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0
	strb r0, [r1]
	movs r5, #0x99
	lsls r5, r5, #1
	adds r1, r4, r5
	b _0810AAFC
_0810AA48:
	ldr r0, [r5]
	ldr r6, _0810AA7C @ =0x00196225
	muls r0, r6, r0
	ldr r1, _0810AA80 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #7
	ands r0, r1
	ldr r3, [sp, #4]
	subs r0, r0, r3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810AAD0
	adds r0, r2, #0
	muls r0, r6, r0
	ldr r1, _0810AA80 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r2, r0, #0x10
	ldr r0, _0810AA84 @ =0x00005554
	cmp r2, r0
	bhi _0810AA88
_0810AA76:
	movs r1, #0
	b _0810AA92
	.align 2, 0
_0810AA7C: .4byte 0x00196225
_0810AA80: .4byte 0x3C6EF35F
_0810AA84: .4byte 0x00005554
_0810AA88:
	ldr r0, _0810AAC0 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0810AA92
	movs r1, #1
_0810AA92:
	adds r0, r1, #3
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r2, #0
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _0810AAC4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0810AAC8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	ldr r5, _0810AACC @ =0x00000127
	adds r1, r4, r5
	strb r0, [r1]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	b _0810AB02
	.align 2, 0
_0810AAC0: .4byte 0x0000AAA9
_0810AAC4: .4byte 0x00196225
_0810AAC8: .4byte 0x3C6EF35F
_0810AACC: .4byte 0x00000127
_0810AAD0:
	ldr r0, [sp]
	movs r1, #2
	bl sub_0810A534
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	muls r0, r6, r0
	ldr r3, _0810AB14 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
_0810AAEE:
	ands r0, r1
	ldr r5, _0810AB18 @ =0x00000127
	adds r1, r4, r5
_0810AAF4:
	strb r0, [r1]
	movs r0, #0x99
	lsls r0, r0, #1
	adds r1, r4, r0
_0810AAFC:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0810AB02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810AB14: .4byte 0x3C6EF35F
_0810AB18: .4byte 0x00000127

	thumb_func_start sub_0810AB1C
sub_0810AB1C: @ 0x0810AB1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #3
	movs r6, #3
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r3, r5, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0810AB34
	movs r4, #5
	movs r6, #1
_0810AB34:
	ldr r2, _0810AB60 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810AB64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810AB68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0810AB6C
	movs r4, #0
	strb r4, [r3]
	adds r0, r5, #0
	bl sub_0810DCA4
	b _0810AB80
	.align 2, 0
_0810AB60: .4byte gRngVal
_0810AB64: .4byte 0x00196225
_0810AB68: .4byte 0x3C6EF35F
_0810AB6C:
	subs r0, r1, r6
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810AB98
	movs r4, #0
	movs r0, #1
	strb r0, [r3]
	adds r0, r5, #0
	bl sub_081142B0
_0810AB80:
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r4, [r0]
	ldr r0, _0810AB94 @ =0x00000133
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0810ABB4
	.align 2, 0
_0810AB94: .4byte 0x00000133
_0810AB98:
	ldr r0, _0810ABBC @ =0x00000133
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x99
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0810C9C8
_0810ABB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810ABBC: .4byte 0x00000133

	thumb_func_start sub_0810ABC0
sub_0810ABC0: @ 0x0810ABC0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #0
	adds r4, r3, #0
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r2, [r0]
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0810ABEC
	movs r5, #3
	adds r0, r2, #0
	adds r0, #0xe1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0810ABF8
	b _0810ABF6
_0810ABEC:
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0810ABF8
_0810ABF6:
	movs r5, #5
_0810ABF8:
	ldr r2, _0810AC3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810AC40 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810AC44 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0x80
	movs r6, #0
	ldrsh r2, [r0, r6]
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r2, r0
	bgt _0810AC48
	adds r6, #1
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r2, r0
	bgt _0810AC48
	subs r0, r1, r5
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0810AC48
	adds r0, r3, #0
	bl sub_0810EA50
	b _0810AC64
	.align 2, 0
_0810AC3C: .4byte gRngVal
_0810AC40: .4byte 0x00196225
_0810AC44: .4byte 0x3C6EF35F
_0810AC48:
	adds r0, r3, #0
	bl sub_0810C9C8
	movs r0, #0x99
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r6, _0810AC6C @ =0x00000133
	adds r1, r4, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0810AC64:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810AC6C: .4byte 0x00000133

	thumb_func_start sub_0810AC70
sub_0810AC70: @ 0x0810AC70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0810AC98 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810AC9C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810ACA4
	.align 2, 0
_0810AC98: .4byte gCurTask
_0810AC9C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810ACA4:
	adds r7, r0, #0
	mov sl, r7
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r4, _0810ADF0 @ =gCurLevelInfo
	ldr r0, _0810ADF4 @ =gUnk_0203AD3C
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r0, r7, #0
	adds r0, #0x54
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r1, r2
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	adds r4, #0x10
	adds r3, r3, r4
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r0, r7, #0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	ldr r2, _0810ADF8 @ =gUnk_0203AD18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r2, [r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _0810ADFC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _0810AD58
	movs r1, #0xa0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov sb, r1
	ldr r1, _0810AE00 @ =0x000003FF
	adds r0, r1, #0
	mov r3, sb
	ands r3, r0
	mov sb, r3
_0810AD58:
	ldr r1, _0810AE04 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	str r1, [sp, #0x10]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810AD9C
	mov r0, sb
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, _0810AE08 @ =gBgAffineRegs
	str r3, [sp, #0xc]
	movs r3, #0x40
	bl sub_081548A8
_0810AD9C:
	adds r6, r7, #0
	adds r6, #0xb4
	ldr r0, [r7, #8]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0810ADAC
	b _0810B06A
_0810ADAC:
	ldr r2, _0810AE0C @ =0x00000135
	adds r1, r7, r2
	ldrb r4, [r1]
	movs r5, #0
	strh r0, [r6, #0xc]
	strb r5, [r6, #0x1a]
	ldr r1, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r7, #8]
	subs r0, #0xca
	adds r3, r7, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq _0810AE3A
	cmp r4, #2
	beq _0810ADD4
	cmp r4, #0
	bne _0810AE28
_0810ADD4:
	movs r4, #5
	ldr r0, _0810AE10 @ =0x00000131
	ldrb r0, [r0, r7]
	cmp r0, #0
	bne _0810AE3A
	cmp r2, #2
	bne _0810AE14
	movs r4, #0
	ands r1, r2
	cmp r1, #0
	beq _0810AE1A
	strb r5, [r3]
	b _0810AE1A
	.align 2, 0
_0810ADF0: .4byte gCurLevelInfo
_0810ADF4: .4byte gUnk_0203AD3C
_0810ADF8: .4byte gUnk_0203AD18
_0810ADFC: .4byte gUnk_0203AD20
_0810AE00: .4byte 0x000003FF
_0810AE04: .4byte gKirbys
_0810AE08: .4byte gBgAffineRegs
_0810AE0C: .4byte 0x00000135
_0810AE10: .4byte 0x00000131
_0810AE14:
	movs r4, #0
	movs r0, #2
	strb r0, [r3]
_0810AE1A:
	ldr r0, [r7, #8]
	ldr r1, _0810AE24 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	b _0810AE3A
	.align 2, 0
_0810AE24: .4byte 0xFFFFFBFF
_0810AE28:
	ldr r2, _0810AE60 @ =0x00000131
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810AE3A
	ldr r0, _0810AE64 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r7, #8]
	strb r5, [r3]
_0810AE3A:
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	beq _0810AE4E
	movs r4, #5
_0810AE4E:
	cmp r4, #1
	bne _0810AE54
	b _0810AF98
_0810AE54:
	cmp r4, #1
	bgt _0810AE68
	cmp r4, #0
	beq _0810AF00
	b _0810AFEE
	.align 2, 0
_0810AE60: .4byte 0x00000131
_0810AE64: .4byte 0xFFFFFBFF
_0810AE68:
	cmp r4, #2
	beq _0810AE74
	cmp r4, #3
	bne _0810AE72
	b _0810AFD4
_0810AE72:
	b _0810AFEE
_0810AE74:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0810AE86
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bne _0810AED0
_0810AE86:
	ldr r0, _0810AEAC @ =gUnk_08357304
	ldrh r1, [r0, #8]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #0xa]
	strb r0, [r6, #0x1a]
	cmp r2, #0
	beq _0810AEB0
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #8
	bl sub_0803E2B0
	b _0810AEC2
	.align 2, 0
_0810AEAC: .4byte gUnk_08357304
_0810AEB0:
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #0x20
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_0803E2B0
_0810AEC2:
	ldr r0, [r7, #8]
	ldr r1, _0810AECC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r7, #8]
	b _0810AFEE
	.align 2, 0
_0810AECC: .4byte 0xFFFFFDFF
_0810AED0:
	cmp r2, r3
	beq _0810AEDE
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	beq _0810AEDE
	b _0810AFEE
_0810AEDE:
	ldr r1, _0810AEF8 @ =gUnk_08357304
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	ldr r0, [r7, #8]
	ldr r1, _0810AEFC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r7, #8]
	cmp r2, r3
	beq _0810AF66
	b _0810AF84
	.align 2, 0
_0810AEF8: .4byte gUnk_08357304
_0810AEFC: .4byte 0xFFFFFDFF
_0810AF00:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0810AF12
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bne _0810AF4C
_0810AF12:
	ldr r0, _0810AF34 @ =gUnk_08357304
	ldrh r1, [r0]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r6, #0x1a]
	cmp r2, #0
	beq _0810AF38
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r7, #0
	b _0810AF44
	.align 2, 0
_0810AF34: .4byte gUnk_08357304
_0810AF38:
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #0x20
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0x10
_0810AF44:
	movs r3, #8
	bl sub_0803E2B0
	b _0810AFEE
_0810AF4C:
	cmp r2, r3
	beq _0810AF58
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _0810AFEE
_0810AF58:
	ldr r0, _0810AF80 @ =gUnk_08357304
	ldrh r1, [r0, #0xc]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #0xe]
	strb r0, [r6, #0x1a]
	cmp r2, r3
	bne _0810AF84
_0810AF66:
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r3, #0x10
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_0803E2B0
	b _0810AFEE
	.align 2, 0
_0810AF80: .4byte gUnk_08357304
_0810AF84:
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x10
	movs r3, #0x20
	bl sub_0803E2B0
	b _0810AFEE
_0810AF98:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0810AFAA
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0810AFB8
_0810AFAA:
	ldr r0, _0810AFB4 @ =gUnk_08357304
	ldrh r1, [r0, #4]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #6]
	b _0810AFEC
	.align 2, 0
_0810AFB4: .4byte gUnk_08357304
_0810AFB8:
	cmp r1, r3
	beq _0810AFC4
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _0810AFEE
_0810AFC4:
	ldr r0, _0810AFD0 @ =gUnk_08357304
	ldrh r1, [r0, #0x10]
	strh r1, [r6, #0xc]
	ldrb r0, [r0, #0x12]
	b _0810AFEC
	.align 2, 0
_0810AFD0: .4byte gUnk_08357304
_0810AFD4:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0810AFE6
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0810AFEE
_0810AFE6:
	ldr r0, _0810AFFC @ =0x00000399
	strh r0, [r6, #0xc]
	movs r0, #0x27
_0810AFEC:
	strb r0, [r6, #0x1a]
_0810AFEE:
	ldrh r1, [r6, #0xc]
	cmp r1, #0
	bne _0810B000
	adds r0, r7, #0
	adds r0, #0x54
	b _0810B0AA
	.align 2, 0
_0810AFFC: .4byte 0x00000399
_0810B000:
	ldrb r0, [r6, #0x1b]
	ldrb r3, [r6, #0x1a]
	cmp r0, r3
	bne _0810B00E
	ldrh r0, [r6, #0x18]
	cmp r0, r1
	beq _0810B01E
_0810B00E:
	movs r0, #0
	strb r0, [r7, #1]
	strh r0, [r7, #2]
	ldr r0, [r7, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
_0810B01E:
	adds r0, r6, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0810B054
	ldr r0, [r7, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #8]
	subs r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0810B06A
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	strb r2, [r7, #1]
	strh r2, [r7, #2]
	ldr r0, [r7, #8]
	subs r1, #7
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r6, #0
	bl sub_08155128
	b _0810B06A
_0810B054:
	ldr r0, [r7, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	ldrb r1, [r6, #0x1c]
	ldrh r0, [r7, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsrs r0, r0, #4
	strb r0, [r7, #1]
_0810B06A:
	ldr r0, _0810B0B4 @ =0x00000135
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #1
	bne _0810B07E
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0810B0A4
_0810B07E:
	ldr r0, _0810B0B4 @ =0x00000135
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810B098
	ldr r1, [r7, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0810B098
	ldr r0, _0810B0B8 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r7, #8]
_0810B098:
	ldr r3, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	beq _0810B0BC
_0810B0A4:
	adds r0, r7, #0
	adds r0, #0x54
	movs r1, #0
_0810B0AA:
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _0810B1D8
	.align 2, 0
_0810B0B4: .4byte 0x00000135
_0810B0B8: .4byte 0xFFFFFDFF
_0810B0BC:
	ldr r2, _0810B0E4 @ =gKirbys
	ldr r1, _0810B0E8 @ =gUnk_0203AD3C
	ldrb r5, [r1]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0x10]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0810B0EC
	adds r0, r7, #0
	adds r0, #0x54
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	b _0810B1D8
	.align 2, 0
_0810B0E4: .4byte gKirbys
_0810B0E8: .4byte gUnk_0203AD3C
_0810B0EC:
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r4, _0810B16C @ =gCurLevelInfo
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r0, ip
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	movs r0, #0x54
	adds r0, r0, r7
	mov r8, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r3, r3, r2
	movs r1, #0
	mov sl, r1
	strh r3, [r6, #0x10]
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	ldr r1, _0810B170 @ =gUnk_0203AD3C
	ldrb r0, [r1]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r4, r7, #0
	adds r4, #0x55
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, r1, r2
	strh r1, [r6, #0x12]
	ldr r2, _0810B174 @ =gUnk_0203AD18
	ldrh r0, [r2]
	adds r3, r3, r0
	strh r3, [r6, #0x10]
	ldrh r0, [r2, #2]
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	mov r2, sl
	strb r2, [r4]
	mov r3, r8
	strb r2, [r3]
	mov r1, sb
	lsls r0, r1, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, #0
	cmp r2, r1
	bne _0810B178
	ldr r0, [r6, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	orrs r0, r3
	b _0810B17E
	.align 2, 0
_0810B16C: .4byte gCurLevelInfo
_0810B170: .4byte gUnk_0203AD3C
_0810B174: .4byte gUnk_0203AD18
_0810B178:
	ldr r0, [r6, #8]
	ldr r1, _0810B1A8 @ =0xFFFFFBFF
	ands r0, r1
_0810B17E:
	str r0, [r6, #8]
	ldr r0, _0810B1AC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0810B196
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r6, #8]
_0810B196:
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r2, r0
	bne _0810B1B0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0810B1B6
	.align 2, 0
_0810B1A8: .4byte 0xFFFFFBFF
_0810B1AC: .4byte gUnk_0203AD20
_0810B1B0:
	ldr r0, [r6, #8]
	ldr r1, _0810B1E8 @ =0xFFFFF7FF
	ands r0, r1
_0810B1B6:
	str r0, [r6, #8]
	ldr r0, _0810B1EC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _0810B1F0 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x10]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0810B1D8
	adds r0, r6, #0
	bl sub_0815604C
_0810B1D8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810B1E8: .4byte 0xFFFFF7FF
_0810B1EC: .4byte gUnk_0203AD3C
_0810B1F0: .4byte gKirbys

	thumb_func_start sub_0810B1F4
sub_0810B1F4: @ 0x0810B1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r2, _0810B21C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0810B220
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810B228
	.align 2, 0
_0810B21C: .4byte gCurTask
_0810B220:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810B228:
	mov r8, r0
	mov sl, r8
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #5
	ands r0, r4
	cmp r0, #0
	beq _0810B280
	mov r0, r8
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0810B26E
	ldr r1, _0810B278 @ =gKirbys
	mov r0, r8
	adds r0, #0x86
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r2, r0, r2
	adds r1, #0xec
	adds r2, r2, r1
	ldr r3, _0810B27C @ =gUnk_08351648
	mov r0, r8
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0, #2]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0810B26E:
	ldr r0, [r5]
	bl TaskDestroy
	b _0810B81E
	.align 2, 0
_0810B278: .4byte gKirbys
_0810B27C: .4byte gUnk_08351648
_0810B280:
	mov r0, r8
	bl sub_0803D6B4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0810B29E
	mov r1, r8
	adds r1, #0x80
	movs r0, #1
	strh r0, [r1]
	mov r2, r8
	ldr r0, [r2, #8]
	orrs r0, r4
	str r0, [r2, #8]
	b _0810B81E
_0810B29E:
	ldr r2, _0810B2E4 @ =gKirbys
	ldr r3, _0810B2E8 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r2, #0
	str r1, [sp, #0x40]
	ldrh r4, [r1]
	cmp r0, r4
	beq _0810B2C0
	b _0810B3D8
_0810B2C0:
	ldr r2, _0810B2EC @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	ldr r0, _0810B2F0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0810B2F8
	ldr r0, _0810B2F4 @ =gUnk_0203AD18
	ldrh r2, [r0, #2]
	movs r0, #9
	subs r0, r0, r2
	lsls r0, r0, #8
	movs r1, #0x18
	subs r1, r1, r2
	b _0810B304
	.align 2, 0
_0810B2E4: .4byte gKirbys
_0810B2E8: .4byte gUnk_0203AD3C
_0810B2EC: .4byte gWinRegs
_0810B2F0: .4byte gUnk_0203AD20
_0810B2F4: .4byte gUnk_0203AD18
_0810B2F8:
	ldr r0, _0810B388 @ =gUnk_0203AD18
	ldrh r1, [r0, #2]
	adds r0, r1, #0
	adds r0, #0x88
	lsls r0, r0, #8
	adds r1, #0x97
_0810B304:
	orrs r0, r1
	strh r0, [r4, #4]
	movs r0, #0x33
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xa]
	ldr r2, _0810B38C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0810B390 @ =gBldRegs
	movs r0, #0xb0
	lsls r0, r0, #4
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r7, [sp, #0x40]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0810B3D8
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0810B39C
	mov r0, sl
	adds r0, #0xb4
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0810B404
	ldrh r1, [r6, #0xc]
	ldrb r2, [r6, #0x1a]
	movs r0, #0x18
	bl sub_0803DE54
	str r0, [r6]
	ldr r0, [r6, #8]
	ldr r1, _0810B394 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	mov r0, r8
	adds r0, #0x10
	ldr r2, _0810B398 @ =0x0400000A
	add r1, sp, #0x10
	bl CpuSet
	mov r2, r8
	ldrb r1, [r2, #1]
	add r0, sp, #0x10
	bl sub_0815521C
	b _0810B3FA
	.align 2, 0
_0810B388: .4byte gUnk_0203AD18
_0810B38C: .4byte gDispCnt
_0810B390: .4byte gBldRegs
_0810B394: .4byte 0xFFF7FFFF
_0810B398: .4byte 0x0400000A
_0810B39C:
	mov r0, sl
	adds r0, #0xb4
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0810B404
	movs r0, #0x18
	bl sub_081570B0
	str r0, [r6]
	ldr r0, [r6, #8]
	ldr r1, _0810B3D0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	mov r0, r8
	adds r0, #0x10
	ldr r2, _0810B3D4 @ =0x0400000A
	add r1, sp, #0x10
	bl CpuSet
	mov r3, r8
	ldrb r1, [r3, #1]
	add r0, sp, #0x10
	bl sub_0815521C
	b _0810B404
	.align 2, 0
_0810B3D0: .4byte 0xFFF7FFFF
_0810B3D4: .4byte 0x0400000A
_0810B3D8:
	mov r0, sl
	adds r0, #0xb4
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0810B3FA
	mov r7, r8
	ldr r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _0810B3FA
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r6]
_0810B3FA:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
_0810B404:
	ldr r0, _0810B5C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, r8
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	adds r4, r3, #0
	cmp r2, #0
	bne _0810B420
	b _0810B670
_0810B420:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0810B430
	b _0810B670
_0810B430:
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	ldr r4, _0810B5CC @ =gCurLevelInfo
	ldr r0, _0810B5D0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r5, r8
	adds r5, #0x54
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, r1, r2
	mov r7, r8
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	adds r4, #0x10
	adds r3, r3, r4
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r3, r8
	adds r3, #0x55
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r2
	ldr r2, _0810B5D4 @ =gUnk_0203AD18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r4, [r2]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x8f
	lsls r0, r0, #1
	add r0, sl
	ldrh r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0810B5D8 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r0, #8
	ands r1, r0
	str r5, [sp, #0x38]
	str r3, [sp, #0x3c]
	cmp r1, #0
	beq _0810B4DC
	movs r1, #0xa0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r1, _0810B5DC @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
_0810B4DC:
	ldr r1, _0810B5E0 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r4, r4, #0x10
	mov sb, r4
	ldr r4, [sp, #0x40]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0810B528
	mov r1, sb
	lsrs r0, r1, #0x10
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, sl
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x40
	str r3, [sp]
	mov r4, ip
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r3, r7, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, _0810B5E4 @ =gBgAffineRegs
	str r3, [sp, #0xc]
	movs r3, #0x40
	bl sub_081548A8
_0810B528:
	mov r7, sb
	asrs r1, r7, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0810B54A
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0810B54A
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _0810B54A
	cmp r1, #0
	beq _0810B54A
	b _0810B81E
_0810B54A:
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0810B55E
	b _0810B81E
_0810B55E:
	adds r7, r6, #0
	mov r3, r8
	ldr r2, [r3, #0x40]
	asrs r2, r2, #8
	ldr r4, _0810B5CC @ =gCurLevelInfo
	ldr r6, _0810B5D0 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r0, [sp, #0x38]
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r3, r3, r2
	strh r3, [r7, #0x10]
	mov r1, r8
	ldr r2, [r1, #0x44]
	asrs r2, r2, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	ldr r4, [sp, #0x3c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, r1, r2
	strh r1, [r7, #0x12]
	ldr r2, _0810B5D4 @ =gUnk_0203AD18
	ldrh r0, [r2]
	adds r3, r3, r0
	strh r3, [r7, #0x10]
	ldrh r0, [r2, #2]
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp sb, r0
	bne _0810B5E8
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0810B5EE
	.align 2, 0
_0810B5C8: .4byte gUnk_03000510
_0810B5CC: .4byte gCurLevelInfo
_0810B5D0: .4byte gUnk_0203AD3C
_0810B5D4: .4byte gUnk_0203AD18
_0810B5D8: .4byte gUnk_0203AD20
_0810B5DC: .4byte 0x000003FF
_0810B5E0: .4byte gKirbys
_0810B5E4: .4byte gBgAffineRegs
_0810B5E8:
	ldr r0, [r7, #8]
	ldr r1, _0810B618 @ =0xFFFFFBFF
	ands r0, r1
_0810B5EE:
	str r0, [r7, #8]
	ldr r0, _0810B61C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0810B606
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #8]
_0810B606:
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp sb, r0
	bne _0810B620
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0810B626
	.align 2, 0
_0810B618: .4byte 0xFFFFFBFF
_0810B61C: .4byte gUnk_0203AD20
_0810B620:
	ldr r0, [r7, #8]
	ldr r1, _0810B664 @ =0xFFFFF7FF
	ands r0, r1
_0810B626:
	str r0, [r7, #8]
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	bne _0810B630
	b _0810B81E
_0810B630:
	movs r0, #0
	strb r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_08155128
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	ldr r2, _0810B668 @ =gKirbys
	ldr r0, _0810B66C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r6, [sp, #0x40]
	ldrh r6, [r6]
	cmp r0, r6
	beq _0810B65A
	b _0810B81E
_0810B65A:
	adds r0, r7, #0
	bl sub_0815604C
	b _0810B81E
	.align 2, 0
_0810B664: .4byte 0xFFFFF7FF
_0810B668: .4byte gKirbys
_0810B66C: .4byte gUnk_0203AD3C
_0810B670:
	mov r7, r8
	ldr r1, [r7, #0x7c]
	cmp r1, #0
	beq _0810B67E
	mov r0, r8
	bl _call_via_r1
_0810B67E:
	mov r0, r8
	ldr r1, [r0, #0x78]
	bl _call_via_r1
	mov r2, r8
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0810B69A
	ldr r0, _0810B6C4 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r2, #8]
_0810B69A:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0810B70C
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0810B6D0
	ldr r2, _0810B6C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r4, _0810B6CC @ =0x0000065E
	adds r0, r0, r4
	ldrb r1, [r0]
	b _0810B6D2
	.align 2, 0
_0810B6C4: .4byte 0xFFFBFFFF
_0810B6C8: .4byte gCurLevelInfo
_0810B6CC: .4byte 0x0000065E
_0810B6D0:
	movs r1, #0xff
_0810B6D2:
	cmp r1, #0xff
	beq _0810B70C
	lsls r3, r1, #6
	mov r6, r8
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _0810B7AC @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r7, [r6]
	adds r1, r1, r7
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0810B7B0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0810B70C:
	mov r0, r8
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0810B80C
	movs r3, #0x80
	lsls r3, r3, #0x13
	mov sb, r3
	ands r1, r3
	cmp r1, #0
	bne _0810B746
	mov r1, r8
	adds r1, #0x50
	mov r0, r8
	adds r0, #0x98
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r1, #2
	mov r0, r8
	adds r0, #0x9a
	ldrh r0, [r0]
	ldrh r6, [r1]
	adds r0, r0, r6
	strh r0, [r1]
_0810B746:
	mov r7, r8
	ldr r3, [r7, #8]
	adds r5, r3, #0
	ands r5, r2
	cmp r5, #0
	bne _0810B80C
	ldr r1, [r7, #0x40]
	str r1, [r7, #0x48]
	ldr r2, [r7, #0x44]
	str r2, [r7, #0x4c]
	mov r4, r8
	adds r4, #0x50
	movs r6, #0
	ldrsh r0, [r4, r6]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	mov r1, r8
	adds r1, #0x52
	movs r7, #0
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	mov r0, r8
	str r2, [r0, #0x44]
	mov r2, r8
	adds r2, #0x98
	ldrh r6, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	adds r7, r1, #0
	cmp r0, #0
	beq _0810B7C2
	mov r0, sb
	ands r3, r0
	cmp r3, #0
	bne _0810B792
	ldrh r0, [r4]
	subs r0, r0, r6
	strh r0, [r4]
_0810B792:
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0810B7B4
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810B7C2
	b _0810B7C0
	.align 2, 0
_0810B7AC: .4byte gUnk_02022EB0
_0810B7B0: .4byte gUnk_02022F50
_0810B7B4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810B7C2
_0810B7C0:
	strh r5, [r2]
_0810B7C2:
	mov r2, r8
	adds r2, #0x9a
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _0810B80C
	mov r6, r8
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0810B7E4
	ldrh r0, [r7]
	subs r0, r0, r3
	strh r0, [r7]
_0810B7E4:
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _0810B7FC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810B80C
	b _0810B808
_0810B7FC:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810B80C
_0810B808:
	movs r0, #0
	strh r0, [r2]
_0810B80C:
	bl sub_0810AC70
	mov r1, r8
	ldr r0, [r1, #0xc]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0xc]
_0810B81E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810B830
sub_0810B830: @ 0x0810B830
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r0, _0810B8F0 @ =0x06008000
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	movs r4, #0
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	ldr r0, _0810B8F4 @ =0x0000039B
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r0, #0x90
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08153D78
	str r4, [sp, #0x28]
	add r0, sp, #0x28
	ldr r4, _0810B8F8 @ =0x0600E800
	ldr r2, _0810B8FC @ =0x05000400
	adds r1, r4, #0
	bl CpuSet
	adds r6, r4, #0
	movs r5, #0
_0810B87C:
	movs r3, #0
	lsls r4, r5, #3
_0810B880:
	lsrs r1, r3, #1
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r2, r3, r4
	adds r0, r3, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r1]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0810B880
	adds r6, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0810B87C
	ldr r6, _0810B900 @ =0x0600E808
	movs r5, #0
_0810B8AC:
	movs r3, #0
	adds r7, r6, #0
	adds r7, #0x20
	adds r0, r5, #1
	mov ip, r0
	lsls r4, r5, #3
_0810B8B8:
	lsrs r2, r3, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	adds r1, r3, #0
	adds r1, #0x80
	adds r1, r1, r4
	adds r0, r3, #0
	adds r0, #0x81
	adds r0, r0, r4
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _0810B8B8
	adds r6, r7, #0
	mov r1, ip
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0810B8AC
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810B8F0: .4byte 0x06008000
_0810B8F4: .4byte 0x0000039B
_0810B8F8: .4byte 0x0600E800
_0810B8FC: .4byte 0x05000400
_0810B900: .4byte 0x0600E808

	thumb_func_start sub_0810B904
sub_0810B904: @ 0x0810B904
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810B91E
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810B926
_0810B91E:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810B926:
	adds r4, r0, #0
	adds r4, #0xb4
	ldr r0, [r4]
	cmp r0, #0
	beq _0810B938
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_0810B938:
	ldr r0, _0810B960 @ =gWinRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r3, _0810B964 @ =gDispCnt
	ldrh r2, [r3]
	ldr r0, _0810B968 @ =0x0000DFFF
	ands r0, r2
	strh r0, [r3]
	ldr r0, _0810B96C @ =gBldRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, r5, #0
	bl ObjectDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810B960: .4byte gWinRegs
_0810B964: .4byte gDispCnt
_0810B968: .4byte 0x0000DFFF
_0810B96C: .4byte gBldRegs

	thumb_func_start CreateDarkMindMirrors
CreateDarkMindMirrors: @ 0x0810B970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0810B9AC @ =sub_0810B1F4
	movs r1, #0x9e
	lsls r1, r1, #1
	ldr r2, _0810B9B0 @ =0x00000FFF
	ldr r3, _0810B9B4 @ =sub_0810B904
	str r3, [sp]
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810B9B8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0810B9C0
	.align 2, 0
_0810B9AC: .4byte sub_0810B1F4
_0810B9B0: .4byte 0x00000FFF
_0810B9B4: .4byte sub_0810B904
_0810B9B8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0810B9C0:
	adds r7, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r7, #0
	adds r0, #0x91
	movs r4, #0
	movs r1, #0xfb
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x97
	movs r0, #0xe8
	strb r0, [r1]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, _0810BCE4 @ =0x00000129
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #5
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0xa
	adds r0, r7, r1
	strb r4, [r0]
	subs r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	subs r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #4
	adds r0, r7, r2
	strb r4, [r0]
	ldr r0, _0810BCE8 @ =0x00000135
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #7
	adds r0, r7, r2
	strb r4, [r0]
	subs r1, #9
	adds r0, r7, r1
	strb r4, [r0]
	subs r2, #0xc
	adds r0, r7, r2
	strb r4, [r0]
	subs r1, #5
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #9
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0xa
	adds r0, r7, r1
	strb r4, [r0]
	subs r2, #1
	adds r0, r7, r2
	strb r4, [r0]
	subs r1, #8
	adds r0, r7, r1
	strb r4, [r0]
	subs r2, #0x23
	adds r0, r7, r2
	str r4, [r0]
	subs r1, #0x16
	adds r0, r7, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r7, r2
	str r4, [r0]
	subs r1, #0x10
	adds r0, r7, r1
	str r4, [r0]
	subs r2, #0x10
	adds r0, r7, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r7, r1
	str r4, [r0]
	adds r0, r7, #0
	adds r0, #0xfc
	str r4, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r7, r6
	str r4, [r0]
	adds r0, r7, #0
	adds r0, #0xdc
	str r4, [r0]
	adds r2, #0x14
	adds r0, r7, r2
	movs r1, #0
	mov sb, r1
	strh r6, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r6, [r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r7, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r7, r1
	strh r4, [r0]
	adds r5, r7, #0
	adds r5, #0x80
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r1, #3
	mov r8, r1
	bl __divsi3
	lsls r0, r0, #1
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r7, r2
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #3
	bl __divsi3
	ldr r2, _0810BCEC @ =0x00000139
	adds r1, r7, r2
	strb r0, [r1]
	ldr r2, [r7, #0xc]
	movs r5, #1
	orrs r2, r5
	movs r0, #4
	mov sl, r0
	orrs r2, r0
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	orrs r0, r6
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x49
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r2, r1
	str r2, [r7, #0xc]
	orrs r0, r5
	str r0, [r7, #8]
	ldr r0, [r7, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	orrs r0, r2
	ldr r2, _0810BCF0 @ =0x001080A0
	orrs r0, r2
	str r0, [r7, #0x5c]
	str r4, [r7, #0x68]
	movs r0, #0x20
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0x10
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #0x28
	rsbs r1, r1, #0
	movs r2, #0x1e
	rsbs r2, r2, #0
	movs r0, #0x14
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x28
	bl sub_0803E308
	ldr r0, _0810BCF4 @ =0x06008000
	str r0, [r7, #0x10]
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r7, #0x24]
	ldr r2, _0810BCF8 @ =gUnk_08351648
	adds r6, r7, #0
	adds r6, #0x82
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	adds r3, r7, #0
	adds r3, #0x83
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x1c]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r1, r7, #0
	adds r1, #0x2a
	strb r0, [r1]
	strh r4, [r7, #0x26]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	subs r6, #0x53
	mov r0, sb
	strb r0, [r6]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	movs r0, #0x90
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r4, [r7, #0x10]
	ldr r0, _0810BCFC @ =gUnk_02022EA0
	mov r1, sb
	strb r1, [r0]
	ldr r0, _0810BD00 @ =gUnk_03000524
	strb r5, [r0]
	adds r1, r7, #0
	adds r1, #0xb4
	ldr r4, _0810BD04 @ =0x00000399
	movs r0, #0x2c
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0x18
	adds r3, r4, #0
	bl sub_080708DC
	adds r2, r7, #0
	adds r2, #0xbc
	ldr r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0810BC02
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
_0810BC02:
	ldr r4, _0810BD08 @ =0x0000039A
	adds r0, r4, #0
	bl sub_0803DF24
	adds r5, r7, #0
	adds r5, #0xd3
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0810BC28
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
_0810BC28:
	adds r0, r7, #0
	adds r0, #0xe4
	ldr r4, _0810BD0C @ =gUnk_083B66F4
	ldr r1, [r4]
	bl sub_0814F3C4
	adds r0, r7, #0
	adds r0, #0xf0
	ldr r1, [r4, #8]
	bl sub_0814F3C4
	adds r2, r7, #0
	adds r2, #0xea
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0810BD10 @ =gCurLevelInfo
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0810BD14 @ =0x0000065E
	adds r0, r0, r2
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _0810BD18 @ =gKirbys
	ldr r0, _0810BD1C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810BCBA
	ldr r0, _0810BD20 @ =gUnk_0203AD20
	ldr r0, [r0]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _0810BCBA
	adds r0, r4, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_0810BCBA:
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0810BD24 @ =sub_0810EDEC
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	bl sub_080700D8
	adds r0, r7, #0
	bl sub_08113DE8
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0810BCE4: .4byte 0x00000129
_0810BCE8: .4byte 0x00000135
_0810BCEC: .4byte 0x00000139
_0810BCF0: .4byte 0x001080A0
_0810BCF4: .4byte 0x06008000
_0810BCF8: .4byte gUnk_08351648
_0810BCFC: .4byte gUnk_02022EA0
_0810BD00: .4byte gUnk_03000524
_0810BD04: .4byte 0x00000399
_0810BD08: .4byte 0x0000039A
_0810BD0C: .4byte gUnk_083B66F4
_0810BD10: .4byte gCurLevelInfo
_0810BD14: .4byte 0x0000065E
_0810BD18: .4byte gKirbys
_0810BD1C: .4byte gUnk_0203AD3C
_0810BD20: .4byte gUnk_0203AD20
_0810BD24: .4byte sub_0810EDEC

	thumb_func_start sub_0810BD28
sub_0810BD28: @ 0x0810BD28
	push {r4, r5, r6, r7, lr}
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
	bne _0810BDFC
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810BDFC
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0810BDFC
	ldr r3, _0810BE04 @ =gCurLevelInfo
	ldr r0, [r7]
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
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_0810F13C
	adds r0, r5, #0
	bl sub_0810BE08
_0810BDFC:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810BE04: .4byte gCurLevelInfo

	thumb_func_start sub_0810BE08
sub_0810BE08: @ 0x0810BE08
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xb
	movs r2, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r5, [r1]
	cmp r5, #0
	beq _0810BE26
	adds r0, r4, #0
	bl sub_0810C15C
	b _0810BE70
_0810BE26:
	movs r0, #1
	str r0, [r1]
	ldr r2, _0810BE78 @ =sub_0810BE7C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	movs r0, #0xfc
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, #0xdc
	adds r0, r4, r1
	movs r1, #0x80
	strh r1, [r0]
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r0, r4, r3
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r5, [r4, #4]
_0810BE70:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810BE78: .4byte sub_0810BE7C

	thumb_func_start sub_0810BE7C
sub_0810BE7C: @ 0x0810BE7C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3d
	ble _0810BF10
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #2
	bls _0810BF10
	ldr r1, _0810BF4C @ =gKirbys
	ldr r0, _0810BF50 @ =gUnk_0203AD3C
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
	bne _0810BF10
	ldrb r0, [r5]
	cmp r0, #0
	bne _0810BED4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810BF10
_0810BED4:
	ldr r1, _0810BF54 @ =gUnk_08D60FA4
	ldr r4, _0810BF58 @ =gSongTable
	ldr r2, _0810BF5C @ =0x000010DC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810BEF8
	ldr r1, _0810BF60 @ =0x000010D8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810BF10
_0810BEF8:
	cmp r3, #0
	beq _0810BF0A
	ldr r0, _0810BF64 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810BF10
_0810BF0A:
	ldr r0, _0810BF68 @ =0x0000021B
	bl m4aSongNumStart
_0810BF10:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	movs r2, #0x9e
	adds r2, r2, r5
	mov ip, r2
	cmp r1, #0
	beq _0810BFAC
	ldrb r0, [r2]
	cmp r0, #2
	bls _0810BF92
	cmp r1, #3
	bhi _0810BF6C
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r4]
	lsls r1, r1, #1
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldrh r2, [r1]
	adds r0, r0, r2
	b _0810BF90
	.align 2, 0
_0810BF4C: .4byte gKirbys
_0810BF50: .4byte gUnk_0203AD3C
_0810BF54: .4byte gUnk_08D60FA4
_0810BF58: .4byte gSongTable
_0810BF5C: .4byte 0x000010DC
_0810BF60: .4byte 0x000010D8
_0810BF64: .4byte gUnk_0203AD10
_0810BF68: .4byte 0x0000021B
_0810BF6C:
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrb r1, [r4]
	movs r2, #8
	subs r1, r2, r1
	lsls r1, r1, #1
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r4]
	subs r2, r2, r0
	lsls r2, r2, #1
	ldrh r0, [r1]
	subs r0, r0, r2
_0810BF90:
	strh r0, [r1]
_0810BF92:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _0810BFAC
	movs r0, #0
	strb r0, [r4]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0810BFAC:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #5
	bls _0810BFBA
	adds r0, r5, #0
	bl sub_08113C9C
_0810BFBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0810BFC0
sub_0810BFC0: @ 0x0810BFC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r1, r5, #0
	adds r1, #0x9e
	ldrh r0, [r5, #4]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r1, [r1]
	cmp r0, r1
	ble _0810C0B6
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r0, [r5, #4]
	ldr r1, _0810C070 @ =gKirbys
	ldr r0, _0810C074 @ =gUnk_0203AD3C
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
	bne _0810C05A
	ldrb r0, [r5]
	cmp r0, #0
	bne _0810C01A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810C05A
_0810C01A:
	ldr r1, _0810C078 @ =gUnk_08D60FA4
	ldr r4, _0810C07C @ =gSongTable
	ldr r2, _0810C080 @ =0x00000C54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810C040
	movs r1, #0xc5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810C05A
_0810C040:
	cmp r3, #0
	beq _0810C052
	ldr r0, _0810C084 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810C05A
_0810C052:
	movs r0, #0xc5
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810C05A:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x3d
	bne _0810C088
	movs r0, #4
	adds r1, r5, #0
	bl sub_0806FE64
	b _0810C09A
	.align 2, 0
_0810C070: .4byte gKirbys
_0810C074: .4byte gUnk_0203AD3C
_0810C078: .4byte gUnk_08D60FA4
_0810C07C: .4byte gSongTable
_0810C080: .4byte 0x00000C54
_0810C084: .4byte gUnk_0203AD10
_0810C088:
	adds r1, r6, #0
	adds r1, #0xe4
	ldrh r0, [r1]
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0xc
	ldrh r0, [r1]
	lsls r0, r0, #1
	strh r0, [r1]
_0810C09A:
	ldrb r0, [r4]
	lsrs r0, r0, #1
	strb r0, [r4]
	cmp r0, #0xf
	bhi _0810C0B6
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
_0810C0B6:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _0810C136
	cmp r1, #0x10
	bhi _0810C0F4
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r0, [r4]
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r1, [r3]
	adds r0, r0, r1
	lsrs r0, r0, #2
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r0, [r4]
	ldrb r1, [r3]
	adds r0, r0, r1
	lsrs r0, r0, #2
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	b _0810C11A
_0810C0F4:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r3, r6, r2
	ldrb r1, [r4]
	movs r2, #0x20
	subs r1, r2, r1
	asrs r1, r1, #2
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r4]
	subs r2, r2, r0
	asrs r2, r2, #2
	ldrh r0, [r1]
	subs r0, r0, r2
	strh r0, [r1]
_0810C11A:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0810C136
	movs r0, #0
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0810C136:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0810C154
	adds r0, r5, #0
	bl sub_080700D8
	adds r0, r5, #0
	bl sub_0810C15C
_0810C154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810C15C
sub_0810C15C: @ 0x0810C15C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	mov r8, r5
	ldr r2, _0810C2D0 @ =sub_08113D2C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _0810C184
	movs r0, #0
	strb r0, [r1, #9]
_0810C184:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r7, [r0]
	adds r4, r7, #0
	subs r4, #0x38
	ldr r2, _0810C2D4 @ =gCurLevelInfo
	adds r3, r5, #0
	adds r3, #0x56
	ldrb r1, [r3]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0810C2D8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r6, [r0]
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	str r3, [sp]
	adds r2, r5, #0
	adds r2, #0x60
	str r2, [sp, #4]
	movs r3, #0x50
	adds r3, r3, r5
	mov sb, r3
	movs r0, #0x52
	adds r0, r0, r5
	mov sl, r0
	adds r2, #0x3e
	str r2, [sp, #0xc]
	adds r3, r5, #0
	adds r3, #0x9f
	str r3, [sp, #0x10]
	adds r0, r5, #0
	adds r0, #0x85
	str r0, [sp, #8]
	cmp r1, #0
	blt _0810C276
	ldr r0, _0810C2DC @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0810C276
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0810C276
	adds r0, r7, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #0xf
	bls _0810C234
	movs r4, #1
_0810C1FC:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0810C1FC
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_0810C234:
	ldr r1, _0810C2DC @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _0810C2E0 @ =gKirbys
	ldr r0, _0810C2E4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810C276
	ldr r0, _0810C2E8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0810C276
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_0810C276:
	movs r1, #0x8e
	lsls r1, r1, #1
	add r1, r8
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	movs r1, #0x8f
	lsls r1, r1, #1
	add r1, r8
	strh r0, [r1]
	mov r0, sb
	strh r2, [r0]
	mov r1, sl
	strh r2, [r1]
	movs r0, #0xfc
	lsls r0, r0, #7
	str r0, [r5, #0x40]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [r5, #0x44]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #4
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r0, [sp, #0x10]
	strb r3, [r0]
	movs r0, #0x80
	strh r0, [r5, #4]
	movs r0, #0x7a
	ldr r1, [sp, #8]
	strb r0, [r1]
	movs r4, #0
	ldr r1, _0810C2EC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _0810C2F0 @ =gUnk_020229E0
	b _0810C308
	.align 2, 0
_0810C2D0: .4byte sub_08113D2C
_0810C2D4: .4byte gCurLevelInfo
_0810C2D8: .4byte 0x0000065E
_0810C2DC: .4byte gUnk_08352D80
_0810C2E0: .4byte gKirbys
_0810C2E4: .4byte gUnk_0203AD3C
_0810C2E8: .4byte gUnk_0203AD20
_0810C2EC: .4byte gUnk_020229D4
_0810C2F0: .4byte gUnk_020229E0
_0810C2F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810C310
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0810C308:
	cmp r0, #0
	bne _0810C2F4
	orrs r2, r3
	str r2, [r1]
_0810C310:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r4, #0
	movs r3, #0xf0
	strh r3, [r1, #6]
	movs r0, #0x78
	strh r0, [r1, #8]
	strb r4, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0x36
	strb r0, [r1, #0xc]
	movs r0, #6
	strb r0, [r1, #0xe]
	strb r4, [r1, #0xf]
	strb r4, [r1, #0x10]
	strh r2, [r1, #0x22]
	ldr r0, _0810C3E8 @ =0x0000FF10
	strh r0, [r1, #0x1a]
	adds r0, #0x64
	strh r0, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	movs r0, #0xa0
	strh r0, [r1, #0x20]
	strb r4, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	ldr r2, [sp]
	ldrb r0, [r2]
	bl CreateObject
	ldr r0, [r5, #8]
	ldr r1, _0810C3EC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _0810C3F0 @ =0x00000135
	add r0, r8
	strb r4, [r0]
	ldr r1, _0810C3F4 @ =gKirbys
	ldr r0, _0810C3F8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	cmp r0, r3
	bne _0810C3D6
	ldrb r0, [r5]
	cmp r0, #0
	bne _0810C39A
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, r2
	bne _0810C3D6
_0810C39A:
	ldr r1, _0810C3FC @ =gUnk_08D60FA4
	ldr r4, _0810C400 @ =gSongTable
	ldr r2, _0810C404 @ =0x00000D7C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810C3BE
	ldr r1, _0810C408 @ =0x00000D78
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810C3D6
_0810C3BE:
	cmp r3, #0
	beq _0810C3D0
	ldr r0, _0810C40C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810C3D6
_0810C3D0:
	ldr r0, _0810C410 @ =0x000001AF
	bl m4aSongNumStart
_0810C3D6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810C3E8: .4byte 0x0000FF10
_0810C3EC: .4byte 0xFFFFFBFF
_0810C3F0: .4byte 0x00000135
_0810C3F4: .4byte gKirbys
_0810C3F8: .4byte gUnk_0203AD3C
_0810C3FC: .4byte gUnk_08D60FA4
_0810C400: .4byte gSongTable
_0810C404: .4byte 0x00000D7C
_0810C408: .4byte 0x00000D78
_0810C40C: .4byte gUnk_0203AD10
_0810C410: .4byte 0x000001AF

	thumb_func_start sub_0810C414
sub_0810C414: @ 0x0810C414
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080886A8
	adds r0, r5, #0
	movs r1, #0x11
	bl sub_08088700
	adds r0, r5, #0
	bl sub_0810CBE8
	ldr r2, _0810C4A4 @ =sub_08113D68
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0x50
	movs r4, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, #0xdc
	adds r0, r5, r1
	subs r1, #0x1c
	strh r1, [r0]
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0810C4A8 @ =0x00000135
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x20
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08086C48
	movs r0, #4
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08033540
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0xea
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810C4A4: .4byte sub_08113D68
_0810C4A8: .4byte 0x00000135

	thumb_func_start sub_0810C4AC
sub_0810C4AC: @ 0x0810C4AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810C508 @ =sub_0810C510
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, #0xdc
	adds r0, r4, r1
	subs r1, #0x1c
	strh r1, [r0]
	movs r5, #0x8f
	lsls r5, r5, #1
	adds r0, r4, r5
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strh r2, [r4, #4]
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_08098184
	ldr r1, _0810C50C @ =gUnk_083573AC
	adds r0, r4, #0
	bl sub_080860A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810C508: .4byte sub_0810C510
_0810C50C: .4byte gUnk_083573AC

	thumb_func_start sub_0810C510
sub_0810C510: @ 0x0810C510
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810C608 @ =gKirbys
	ldr r0, _0810C60C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810C53A
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_0814F274
_0810C53A:
	movs r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0x20
	beq _0810C562
	cmp r1, #0x90
	beq _0810C562
	cmp r1, #0x9c
	beq _0810C562
	cmp r1, #0xec
	beq _0810C562
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	beq _0810C562
	adds r0, #0xc
	cmp r1, r0
	beq _0810C562
	adds r0, #0x24
	cmp r1, r0
	bne _0810C5EC
_0810C562:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldr r1, _0810C610 @ =gUnk_083573AC
	adds r0, r4, #0
	bl sub_080860A8
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _0810C608 @ =gKirbys
	ldr r0, _0810C60C @ =gUnk_0203AD3C
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
	bne _0810C5EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810C5B0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810C5EC
_0810C5B0:
	ldr r1, _0810C614 @ =gUnk_08D60FA4
	ldr r5, _0810C618 @ =gSongTable
	ldr r2, _0810C61C @ =0x00001294
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810C5D4
	ldr r1, _0810C620 @ =0x00001290
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810C5EC
_0810C5D4:
	cmp r3, #0
	beq _0810C5E6
	ldr r0, _0810C624 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810C5EC
_0810C5E6:
	ldr r0, _0810C628 @ =0x00000252
	bl m4aSongNumStart
_0810C5EC:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	movs r1, #0xb6
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0810C602
	adds r0, r4, #0
	bl sub_0810C62C
_0810C602:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810C608: .4byte gKirbys
_0810C60C: .4byte gUnk_0203AD3C
_0810C610: .4byte gUnk_083573AC
_0810C614: .4byte gUnk_08D60FA4
_0810C618: .4byte gSongTable
_0810C61C: .4byte 0x00001294
_0810C620: .4byte 0x00001290
_0810C624: .4byte gUnk_0203AD10
_0810C628: .4byte 0x00000252

	thumb_func_start sub_0810C62C
sub_0810C62C: @ 0x0810C62C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0810C69C @ =sub_0810C6A4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r5, #0
	adds r1, #0x50
	movs r4, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r5, #4]
	movs r0, #5
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #3
	strb r1, [r0]
	ldrh r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
	movs r1, #0x20
	strh r1, [r0, #0xa]
	movs r1, #0x1f
	strb r1, [r0, #2]
	ldr r1, _0810C6A0 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810C69C: .4byte sub_0810C6A4
_0810C6A0: .4byte 0x0000FFFF

	thumb_func_start sub_0810C6A4
sub_0810C6A4: @ 0x0810C6A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0810C7D0 @ =gKirbys
	mov r8, r0
	ldr r6, _0810C7D4 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xd4
	lsls r5, r5, #1
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x60
	adds r4, r7, #0
	adds r4, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r1
	bne _0810C6D6
	adds r0, r7, #0
	adds r0, #0xf0
	bl sub_0814F274
_0810C6D6:
	ldrh r1, [r7, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0810C73E
	ldrb r1, [r6]
	adds r0, r1, #0
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0810C73E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0810C702
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r1
	bne _0810C73E
_0810C702:
	ldr r1, _0810C7D8 @ =gUnk_08D60FA4
	ldr r4, _0810C7DC @ =gSongTable
	ldr r2, _0810C7E0 @ =0x0000129C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810C726
	ldr r1, _0810C7E4 @ =0x00001298
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810C73E
_0810C726:
	cmp r3, #0
	beq _0810C738
	ldr r0, _0810C7E8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810C73E
_0810C738:
	ldr r0, _0810C7EC @ =0x00000253
	bl m4aSongNumStart
_0810C73E:
	ldrh r0, [r7, #4]
	subs r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0810C74E
	b _0810C9A2
_0810C74E:
	movs r0, #0x1b
	bl m4aSongNumStartOrChange
	str r4, [sp]
	ldr r1, _0810C7F0 @ =0x0600E800
	ldr r2, _0810C7F4 @ =0x05000400
	mov r0, sp
	bl CpuSet
	ldr r1, _0810C7D0 @ =gKirbys
	ldr r0, _0810C7D4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	mov sb, r1
	ldrh r3, [r1]
	cmp r0, r3
	bne _0810C78C
	ldr r1, _0810C7F8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
_0810C78C:
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #3
	strb r1, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0xf8
	lsls r1, r1, #5
	strh r1, [r0, #0xc]
	movs r1, #0x1f
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r1, _0810C7FC @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	movs r4, #0
	ldr r3, _0810C800 @ =gUnk_020229D4
	movs r2, #1
	ldr r1, [r3]
	adds r0, r1, #0
	ands r0, r2
	adds r6, r7, #0
	adds r6, #0x56
	b _0810C81A
	.align 2, 0
_0810C7D0: .4byte gKirbys
_0810C7D4: .4byte gUnk_0203AD3C
_0810C7D8: .4byte gUnk_08D60FA4
_0810C7DC: .4byte gSongTable
_0810C7E0: .4byte 0x0000129C
_0810C7E4: .4byte 0x00001298
_0810C7E8: .4byte gUnk_0203AD10
_0810C7EC: .4byte 0x00000253
_0810C7F0: .4byte 0x0600E800
_0810C7F4: .4byte 0x05000400
_0810C7F8: .4byte gCurLevelInfo
_0810C7FC: .4byte 0x0000FFFF
_0810C800: .4byte gUnk_020229D4
_0810C804:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810C822
	ldr r3, _0810C888 @ =gUnk_020229D4
	movs r2, #1
	lsls r2, r4
	ldr r1, [r3]
	adds r0, r1, #0
	ands r0, r2
_0810C81A:
	cmp r0, #0
	bne _0810C804
	orrs r1, r2
	str r1, [r3]
_0810C822:
	ldr r0, _0810C88C @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x51
	strb r0, [r1, #0xc]
	strb r5, [r1, #0xe]
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
	ldrb r0, [r6]
	bl CreateObject
	movs r4, #0
	ldr r2, _0810C888 @ =gUnk_020229D4
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _0810C890
	orrs r1, r5
	str r1, [r2]
	b _0810C8AE
	.align 2, 0
_0810C888: .4byte gUnk_020229D4
_0810C88C: .4byte gUnk_020229E0
_0810C890:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810C8AE
	ldr r3, _0810C9B0 @ =gUnk_020229D4
	movs r2, #1
	lsls r2, r4
	ldr r1, [r3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0810C890
	orrs r1, r2
	str r1, [r3]
_0810C8AE:
	ldr r0, _0810C9B4 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x8e
	strb r0, [r1, #0xc]
	movs r0, #2
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
	ldrb r0, [r6]
	bl CreateObject
	movs r6, #0
	ldr r0, _0810C9B8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0810C998
	ldr r1, _0810C9BC @ =gUnk_0203AD34
	mov r8, r1
_0810C906:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0810C9C0 @ =gKirbys
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _0810C98A
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0810C98A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0804BAD8
	ldr r0, _0810C9C4 @ =0x00000103
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0x1a
	bne _0810C950
	movs r0, #0
	mov r2, r8
	strb r0, [r2]
_0810C950:
	movs r5, #0
	strb r5, [r1]
	adds r0, r4, #0
	adds r0, #0xdb
	strb r5, [r0]
	movs r0, #0
	bl sub_08035E28
	movs r0, #2
	bl sub_08034C9C
	adds r2, r4, #0
	adds r2, #0xdd
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x1a
	bne _0810C978
	mov r3, r8
	strb r5, [r3]
_0810C978:
	strb r5, [r2]
	adds r0, r4, #0
	bl sub_0806F260
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_0810C98A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0810C9B8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _0810C906
_0810C998:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
_0810C9A2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810C9B0: .4byte gUnk_020229D4
_0810C9B4: .4byte gUnk_020229E0
_0810C9B8: .4byte gUnk_0203AD44
_0810C9BC: .4byte gUnk_0203AD34
_0810C9C0: .4byte gKirbys
_0810C9C4: .4byte 0x00000103

	thumb_func_start sub_0810C9C8
sub_0810C9C8: @ 0x0810C9C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0810CA14 @ =sub_0810CA50
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
	ldr r0, _0810CA18 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r2, _0810CA1C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810CA20 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810CA24 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0810CA28
	cmp r1, #1
	blo _0810CA38
	cmp r1, #2
	beq _0810CA30
	b _0810CA38
	.align 2, 0
_0810CA14: .4byte sub_0810CA50
_0810CA18: .4byte 0x00000135
_0810CA1C: .4byte gRngVal
_0810CA20: .4byte 0x00196225
_0810CA24: .4byte 0x3C6EF35F
_0810CA28:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x78
	b _0810CA3E
_0810CA30:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x3c
	b _0810CA3E
_0810CA38:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x5a
_0810CA3E:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810CA50
sub_0810CA50: @ 0x0810CA50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0810CAB0 @ =gUnk_0835736C
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0810CACE
	ldr r2, _0810CAB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810CAB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810CABC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0810CACE
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0810CAC0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810CAC4
	.align 2, 0
_0810CAB0: .4byte gUnk_0835736C
_0810CAB4: .4byte gRngVal
_0810CAB8: .4byte 0x00196225
_0810CABC: .4byte 0x3C6EF35F
_0810CAC0:
	ldr r0, [r4, #8]
	orrs r0, r5
_0810CAC4:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x10
	strb r0, [r1]
_0810CACE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r3, [r0]
	adds r5, r0, #0
	cmp r3, #0
	beq _0810CB3C
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810CB10
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0810CB00 @ =0xFFFFFE00
	cmp r2, r0
	bge _0810CB04
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	b _0810CB2E
	.align 2, 0
_0810CB00: .4byte 0xFFFFFE00
_0810CB04:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	ble _0810CB2E
	strh r0, [r1]
	b _0810CB2E
_0810CB10:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _0810CB2C
	ldr r2, _0810CB38 @ =0xFFFFFE00
	cmp r0, r2
	bge _0810CB2E
_0810CB2C:
	strh r2, [r1]
_0810CB2E:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	b _0810CB62
	.align 2, 0
_0810CB38: .4byte 0xFFFFFE00
_0810CB3C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0810CB56
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810CB62
	b _0810CB60
_0810CB56:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810CB62
_0810CB60:
	strh r3, [r1]
_0810CB62:
	ldr r1, [r4, #0x40]
	ldr r0, _0810CBB0 @ =0x00003DFF
	cmp r1, r0
	bgt _0810CB6E
	adds r0, #1
	str r0, [r4, #0x40]
_0810CB6E:
	ldr r0, [r4, #0x40]
	movs r1, #0xbe
	lsls r1, r1, #8
	cmp r0, r1
	ble _0810CB7A
	str r1, [r4, #0x40]
_0810CB7A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, _0810CBB4 @ =0x00000135
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _0810CBCC
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r2, [r3]
	adds r1, r2, #0
	cmp r1, #0
	bne _0810CBB8
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	b _0810CBE0
	.align 2, 0
_0810CBB0: .4byte 0x00003DFF
_0810CBB4: .4byte 0x00000135
_0810CBB8:
	ldr r5, _0810CBC8 @ =0x00000129
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810CBE0
	subs r0, r2, #1
	strb r0, [r3]
	b _0810CBE0
	.align 2, 0
_0810CBC8: .4byte 0x00000129
_0810CBCC:
	cmp r0, #1
	bne _0810CBE0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0810CBE0
	adds r0, r4, #0
	bl sub_0810A168
_0810CBE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810CBE8
sub_0810CBE8: @ 0x0810CBE8
	push {lr}
	adds r3, r0, #0
	mov ip, r3
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0810CC0E
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0810CC0E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
	str r1, [r2, #0xc]
_0810CC0E:
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, ip
	ldr r2, [r0]
	cmp r2, #0
	beq _0810CC2E
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0810CC2E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
	str r1, [r2, #0xc]
_0810CC2E:
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, ip
	ldr r2, [r0]
	cmp r2, #0
	beq _0810CC4E
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0810CC4E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
	str r1, [r2, #0xc]
_0810CC4E:
	ldr r2, _0810CC80 @ =gKirbys
	ldr r0, _0810CC84 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810CC7A
	ldr r1, _0810CC88 @ =gUnk_02022EA0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0810CC8C @ =gUnk_03000524
	movs r0, #1
	strb r0, [r1]
	bl sub_0803E458
_0810CC7A:
	pop {r0}
	bx r0
	.align 2, 0
_0810CC80: .4byte gKirbys
_0810CC84: .4byte gUnk_0203AD3C
_0810CC88: .4byte gUnk_02022EA0
_0810CC8C: .4byte gUnk_03000524

	thumb_func_start sub_0810CC90
sub_0810CC90: @ 0x0810CC90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0810CD70 @ =sub_08113E14
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0810CD74 @ =gKirbys
	ldr r0, _0810CD78 @ =gUnk_0203AD3C
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
	bne _0810CD24
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810CCE8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810CD24
_0810CCE8:
	ldr r1, _0810CD7C @ =gUnk_08D60FA4
	ldr r5, _0810CD80 @ =gSongTable
	ldr r2, _0810CD84 @ =0x00000D7C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810CD0C
	ldr r1, _0810CD88 @ =0x00000D78
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810CD24
_0810CD0C:
	cmp r3, #0
	beq _0810CD1E
	ldr r0, _0810CD8C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810CD24
_0810CD1E:
	ldr r0, _0810CD90 @ =0x000001AF
	bl m4aSongNumStart
_0810CD24:
	adds r0, r4, #0
	bl sub_0810A71C
	ldr r2, _0810CD94 @ =0x00000129
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0810CD50
	cmp r1, #2
	beq _0810CD50
	adds r2, #0xc
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
_0810CD50:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0810CD68
	adds r0, r4, #0
	bl sub_0810CBE8
_0810CD68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810CD70: .4byte sub_08113E14
_0810CD74: .4byte gKirbys
_0810CD78: .4byte gUnk_0203AD3C
_0810CD7C: .4byte gUnk_08D60FA4
_0810CD80: .4byte gSongTable
_0810CD84: .4byte 0x00000D7C
_0810CD88: .4byte 0x00000D78
_0810CD8C: .4byte gUnk_0203AD10
_0810CD90: .4byte 0x000001AF
_0810CD94: .4byte 0x00000129

	thumb_func_start sub_0810CD98
sub_0810CD98: @ 0x0810CD98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r1, [r4, #0x44]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0810CDD8
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _0810CDC6
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810CDF0
	b _0810CDD2
_0810CDC6:
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810CDF0
_0810CDD2:
	movs r0, #0
	strh r0, [r3]
	b _0810CDF0
_0810CDD8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810CE0C @ =0xFFFFFE80
	adds r3, r1, #0
	cmp r0, r2
	bge _0810CDF0
	strh r2, [r3]
_0810CDF0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _0810CE10
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810CE1E
	b _0810CE1A
	.align 2, 0
_0810CE0C: .4byte 0xFFFFFE80
_0810CE10:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810CE1E
_0810CE1A:
	movs r0, #0
	strh r0, [r1]
_0810CE1E:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #2
	beq _0810CE2E
	cmp r1, #4
	bne _0810CE7E
_0810CE2E:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x83
	ldrb r2, [r0]
	cmp r2, #1
	beq _0810CE7E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _0810CE7E
	cmp r2, #3
	beq _0810CE7E
	cmp r0, #3
	beq _0810CE7E
	adds r0, r4, #0
	adds r0, #0xe4
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r1, #0x26
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0810CE76
	adds r0, r5, #0
	bl sub_0811406C
	b _0810CEAA
_0810CE76:
	adds r0, r5, #0
	bl sub_08113E98
	b _0810CEAA
_0810CE7E:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0810CEAA
	ldrb r0, [r6]
	cmp r0, #4
	beq _0810CEAA
	cmp r0, #2
	beq _0810CEAA
	movs r0, #2
	adds r1, r5, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #2
	strb r0, [r6]
_0810CEAA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0810CEB0
sub_0810CEB0: @ 0x0810CEB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810CEE8 @ =sub_0810CF60
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, _0810CEEC @ =0x00007DFF
	cmp r1, r0
	bgt _0810CEF0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810CEF6
	.align 2, 0
_0810CEE8: .4byte sub_0810CF60
_0810CEEC: .4byte 0x00007DFF
_0810CEF0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810CEF6:
	str r0, [r4, #8]
	ldr r2, _0810CF24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810CF28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810CF2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0810CF30
	adds r0, r5, #0
	adds r0, #0x9e
	movs r1, #0
	strb r1, [r0]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	b _0810CF4C
	.align 2, 0
_0810CF24: .4byte gRngVal
_0810CF28: .4byte 0x00196225
_0810CF2C: .4byte 0x3C6EF35F
_0810CF30:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r2, [r0]
_0810CF4C:
	ldr r2, _0810CF5C @ =0x00000129
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810CF5C: .4byte 0x00000129

	thumb_func_start sub_0810CF60
sub_0810CF60: @ 0x0810CF60
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r3
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #8
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _0810CF80
	movs r0, #0xc0
	strh r0, [r1]
_0810CF80:
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r4, [r0]
	cmp r4, #0
	beq _0810CFDC
	ldr r1, [r3, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0810CFC2
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810CFB2
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D030
	strh r5, [r1]
	b _0810D030
_0810CFB2:
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D030
	strh r5, [r1]
	b _0810D030
_0810CFC2:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810CFD8 @ =0xFFFFFE80
	cmp r0, r2
	bge _0810D030
	b _0810D02E
	.align 2, 0
_0810CFD8: .4byte 0xFFFFFE80
_0810CFDC:
	ldr r1, [r3, #0x44]
	ldr r0, _0810D004 @ =0x000017FF
	cmp r1, r0
	bgt _0810D018
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0810D008
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D030
	strh r4, [r1]
	b _0810D030
	.align 2, 0
_0810D004: .4byte 0x000017FF
_0810D008:
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D030
	strh r4, [r1]
	b _0810D030
_0810D018:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _0810D030
_0810D02E:
	strh r2, [r1]
_0810D030:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810D06C
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _0810D058 @ =0xFFFFFEC0
	adds r2, r0, #0
	cmp r4, r1
	bge _0810D060
	ldr r0, _0810D05C @ =0x0000FEC0
	strh r0, [r2]
	b _0810D090
	.align 2, 0
_0810D058: .4byte 0xFFFFFEC0
_0810D05C: .4byte 0x0000FEC0
_0810D060:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r4, r0
	ble _0810D090
	strh r0, [r2]
	b _0810D090
_0810D06C:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r2, r1, #0
	cmp r0, r4
	ble _0810D088
	strh r4, [r2]
	b _0810D090
_0810D088:
	ldr r1, _0810D0AC @ =0xFFFFFEC0
	cmp r0, r1
	bge _0810D090
	strh r1, [r2]
_0810D090:
	ldr r1, [r3, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0810D0B4
	ldr r1, [r3, #0x40]
	ldr r0, _0810D0B0 @ =0x00007DFF
	cmp r1, r0
	bgt _0810D0C2
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _0810D0C2
	.align 2, 0
_0810D0AC: .4byte 0xFFFFFEC0
_0810D0B0: .4byte 0x00007DFF
_0810D0B4:
	ldr r0, [r3, #0x40]
	movs r4, #0xfc
	lsls r4, r4, #7
	cmp r0, r4
	ble _0810D0C2
	str r4, [r3, #0x40]
	strh r1, [r2]
_0810D0C2:
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _0810D0E6
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	bne _0810D0E6
	adds r0, r3, #0
	bl sub_08113F50
_0810D0E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0810D0EC
sub_0810D0EC: @ 0x0810D0EC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _0810D1BE
	ldrh r0, [r3, #4]
	movs r1, #4
	ldrsh r6, [r3, r1]
	cmp r6, #0
	bne _0810D1C6
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r5, [r0]
	cmp r5, #0
	beq _0810D162
	ldr r1, [r3, #0x44]
	ldr r0, _0810D134 @ =0x000017FF
	cmp r1, r0
	bgt _0810D148
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r4, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0810D138
	adds r0, r4, #0
	adds r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D1B6
	strh r6, [r2]
	b _0810D1B6
	.align 2, 0
_0810D134: .4byte 0x000017FF
_0810D138:
	adds r0, r4, #0
	subs r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D1B6
	strh r6, [r2]
	b _0810D1B6
_0810D148:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, #0x80
	ble _0810D1B6
	movs r0, #0x80
	strh r0, [r2]
	b _0810D1B6
_0810D162:
	ldr r1, [r3, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0810D19C
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r4, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0810D18C
	adds r0, r4, #0
	adds r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D1B6
	strh r5, [r2]
	b _0810D1B6
_0810D18C:
	adds r0, r4, #0
	subs r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D1B6
	strh r5, [r2]
	b _0810D1B6
_0810D19C:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	rsbs r4, r4, #0
	adds r2, r1, #0
	cmp r0, r4
	bge _0810D1B6
	strh r4, [r2]
_0810D1B6:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0810D1CA
_0810D1BE:
	adds r0, r3, #0
	bl sub_08113FF8
	b _0810D1CA
_0810D1C6:
	subs r0, #1
	strh r0, [r3, #4]
_0810D1CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0810D1D0
sub_0810D1D0: @ 0x0810D1D0
	push {lr}
	adds r1, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	beq _0810D1E0
	cmp r0, #4
	bne _0810D22E
_0810D1E0:
	adds r0, r1, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x83
	ldrb r3, [r0]
	cmp r3, #1
	beq _0810D22E
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _0810D22E
	cmp r3, #3
	beq _0810D22E
	cmp r0, #3
	beq _0810D22E
	adds r0, r1, #0
	adds r0, #0xe4
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r2, #0x26
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0810D228
	adds r0, r1, #0
	bl sub_0811406C
	b _0810D22E
_0810D228:
	adds r0, r1, #0
	bl sub_08113E98
_0810D22E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810D234
sub_0810D234: @ 0x0810D234
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810D26C @ =sub_0810D2EC
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, _0810D270 @ =0x00007DFF
	cmp r1, r0
	bgt _0810D274
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810D27A
	.align 2, 0
_0810D26C: .4byte sub_0810D2EC
_0810D270: .4byte 0x00007DFF
_0810D274:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810D27A:
	str r0, [r4, #8]
	ldr r1, _0810D2C4 @ =0x00000129
	adds r0, r5, r1
	movs r3, #1
	strb r3, [r0]
	ldr r2, _0810D2C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810D2CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810D2D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0810D2D4
	adds r1, r4, #0
	adds r1, #0xa2
	movs r0, #0xb0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	b _0810D2E4
	.align 2, 0
_0810D2C4: .4byte 0x00000129
_0810D2C8: .4byte gRngVal
_0810D2CC: .4byte 0x00196225
_0810D2D0: .4byte 0x3C6EF35F
_0810D2D4:
	adds r2, r4, #0
	adds r2, #0xa2
	movs r0, #0
	movs r1, #0x18
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0x9f
	strb r0, [r1]
_0810D2E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810D2EC
sub_0810D2EC: @ 0x0810D2EC
	push {r4, lr}
	adds r3, r0, #0
	mov ip, r3
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _0810D30A
	movs r0, #0xc0
	strh r0, [r1]
_0810D30A:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r4, [r0]
	cmp r4, #0
	beq _0810D348
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0810D344 @ =0xFFFFFE50
	cmp r0, r1
	bge _0810D32A
	strh r1, [r2]
_0810D32A:
	adds r0, r3, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r3, #0x44]
	cmp r0, r1
	blt _0810D374
	str r1, [r3, #0x44]
	movs r0, #0
	strh r0, [r2]
	b _0810D374
	.align 2, 0
_0810D344: .4byte 0xFFFFFE50
_0810D348:
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xd8
	lsls r1, r1, #1
	cmp r0, r1
	ble _0810D360
	strh r1, [r2]
_0810D360:
	adds r0, r3, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r3, #0x44]
	cmp r0, r1
	bgt _0810D374
	str r1, [r3, #0x44]
	strh r4, [r2]
_0810D374:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810D3B0
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _0810D39C @ =0xFFFFFDE0
	adds r4, r0, #0
	cmp r2, r1
	bge _0810D3A4
	ldr r0, _0810D3A0 @ =0x0000FDE0
	strh r0, [r4]
	b _0810D3D4
	.align 2, 0
_0810D39C: .4byte 0xFFFFFDE0
_0810D3A0: .4byte 0x0000FDE0
_0810D3A4:
	movs r0, #0x88
	lsls r0, r0, #2
	cmp r2, r0
	ble _0810D3D4
	strh r0, [r4]
	b _0810D3D4
_0810D3B0:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _0810D3CC
	strh r2, [r4]
	b _0810D3D4
_0810D3CC:
	ldr r1, _0810D3F0 @ =0xFFFFFDE0
	cmp r0, r1
	bge _0810D3D4
	strh r1, [r4]
_0810D3D4:
	ldr r2, [r3, #8]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0810D3F4
	ldr r0, [r3, #0x40]
	movs r1, #0xf0
	lsls r1, r1, #5
	cmp r0, r1
	bgt _0810D402
	str r1, [r3, #0x40]
	movs r0, #0
	strh r0, [r4]
	b _0810D402
	.align 2, 0
_0810D3F0: .4byte 0xFFFFFDE0
_0810D3F4:
	ldr r1, [r3, #0x40]
	ldr r0, _0810D42C @ =0x0000DDFF
	cmp r1, r0
	ble _0810D402
	adds r0, #1
	str r0, [r3, #0x40]
	strh r2, [r4]
_0810D402:
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _0810D426
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bne _0810D426
	adds r0, r3, #0
	bl sub_0811401C
_0810D426:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810D42C: .4byte 0x0000DDFF

	thumb_func_start sub_0810D430
sub_0810D430: @ 0x0810D430
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810D498 @ =sub_0810D4E0
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r5, #1
	eors r0, r5
	str r0, [r4, #8]
	movs r0, #0x18
	strh r0, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x9f
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r1, r0
	bgt _0810D4C2
	ldr r1, [r4, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0810D4A8
	ldr r2, _0810D49C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810D4A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810D4A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0810D4C2
	movs r0, #2
	strb r0, [r3]
	b _0810D4C2
	.align 2, 0
_0810D498: .4byte sub_0810D4E0
_0810D49C: .4byte gRngVal
_0810D4A0: .4byte 0x00196225
_0810D4A4: .4byte 0x3C6EF35F
_0810D4A8:
	ldr r2, _0810D4D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810D4D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810D4D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0810D4C2
	strb r5, [r3]
_0810D4C2:
	ldr r2, _0810D4DC @ =0x00000135
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810D4D0: .4byte gRngVal
_0810D4D4: .4byte 0x00196225
_0810D4D8: .4byte 0x3C6EF35F
_0810D4DC: .4byte 0x00000135

	thumb_func_start sub_0810D4E0
sub_0810D4E0: @ 0x0810D4E0
	push {r4, lr}
	mov ip, r0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	bne _0810D514
	ldr r0, _0810D510 @ =sub_0810D1D0
	mov r1, ip
	str r0, [r1, #0x78]
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r4, ip
	str r0, [r4, #8]
	strh r2, [r4, #4]
	b _0810D6BA
	.align 2, 0
_0810D510: .4byte sub_0810D1D0
_0810D514:
	mov r1, ip
	ldrh r0, [r1, #4]
	movs r2, #4
	ldrsh r3, [r1, r2]
	cmp r3, #0
	beq _0810D522
	b _0810D6B4
_0810D522:
	mov r0, ip
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #1
	beq _0810D532
	cmp r0, #2
	beq _0810D568
	b _0810D5BC
_0810D532:
	mov r4, ip
	ldr r1, [r4, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0810D54E
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0810D580
	b _0810D594
_0810D54E:
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810D564 @ =0xFFFFFEC0
	cmp r0, r2
	bge _0810D5BC
	b _0810D5BA
	.align 2, 0
_0810D564: .4byte 0xFFFFFEC0
_0810D568:
	mov r0, ip
	ldr r1, [r0, #0x44]
	ldr r0, _0810D590 @ =0x000057FF
	cmp r1, r0
	bgt _0810D5A4
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810D594
_0810D580:
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D5BC
	strh r3, [r1]
	b _0810D5BC
	.align 2, 0
_0810D590: .4byte 0x000057FF
_0810D594:
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D5BC
	strh r3, [r1]
	b _0810D5BC
_0810D5A4:
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _0810D5BC
_0810D5BA:
	strh r2, [r1]
_0810D5BC:
	mov r0, ip
	ldr r3, [r0, #8]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0810D62C
	mov r2, ip
	ldr r1, [r2, #0x40]
	ldr r0, _0810D5F0 @ =0x000035FF
	cmp r1, r0
	bgt _0810D606
	mov r0, ip
	adds r0, #0x50
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r2, r0, #0
	cmp r1, #0
	bge _0810D5F4
	adds r0, r3, #0
	adds r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D686
	b _0810D600
	.align 2, 0
_0810D5F0: .4byte 0x000035FF
_0810D5F4:
	adds r0, r3, #0
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D686
_0810D600:
	movs r0, #0
	strh r0, [r2]
	b _0810D686
_0810D606:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0810D628 @ =0xFFFFFD60
	adds r2, r1, #0
	cmp r0, r3
	blt _0810D654
	movs r1, #0xa8
	lsls r1, r1, #2
	cmp r0, r1
	ble _0810D686
	b _0810D684
	.align 2, 0
_0810D628: .4byte 0xFFFFFD60
_0810D62C:
	mov r0, ip
	ldr r1, [r0, #0x40]
	movs r0, #0xc6
	lsls r0, r0, #8
	cmp r1, r0
	ble _0810D666
	mov r0, ip
	adds r0, #0x50
	ldrh r4, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0810D658
	adds r0, r4, #0
	adds r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D686
_0810D654:
	strh r3, [r2]
	b _0810D686
_0810D658:
	adds r0, r4, #0
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D686
	b _0810D654
_0810D666:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _0810D654
	ldr r1, _0810D6AC @ =0xFFFFFD60
	cmp r0, r1
	bge _0810D686
_0810D684:
	strh r1, [r2]
_0810D686:
	movs r4, #0
	ldrsh r3, [r2, r4]
	cmp r3, #0
	bne _0810D6BA
	ldr r0, _0810D6B0 @ =sub_0810D1D0
	mov r1, ip
	str r0, [r1, #0x78]
	strh r3, [r2]
	mov r0, ip
	adds r0, #0x52
	strh r3, [r0]
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	strh r3, [r2, #4]
	b _0810D6BA
	.align 2, 0
_0810D6AC: .4byte 0xFFFFFD60
_0810D6B0: .4byte sub_0810D1D0
_0810D6B4:
	subs r0, #1
	mov r4, ip
	strh r0, [r4, #4]
_0810D6BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0810D6C0
sub_0810D6C0: @ 0x0810D6C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0810D6F4 @ =sub_0810D730
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, _0810D6F8 @ =0x00007DFF
	cmp r1, r0
	bgt _0810D6FC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810D702
	.align 2, 0
_0810D6F4: .4byte sub_0810D730
_0810D6F8: .4byte 0x00007DFF
_0810D6FC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810D702:
	str r0, [r4, #8]
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810D72A
	adds r2, #5
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
_0810D72A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0810D730
sub_0810D730: @ 0x0810D730
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r3
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #6
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0810D750
	movs r0, #0xa0
	strh r0, [r1]
_0810D750:
	ldr r0, [r3, #0x40]
	ldr r1, _0810D77C @ =0xFFFF91FF
	adds r0, r0, r1
	ldr r1, _0810D780 @ =0x00001FFE
	cmp r0, r1
	bhi _0810D794
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0810D784
	adds r0, r2, #0
	adds r0, #0x22
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D7DE
	strh r4, [r1]
	b _0810D7DE
	.align 2, 0
_0810D77C: .4byte 0xFFFF91FF
_0810D780: .4byte 0x00001FFE
_0810D784:
	adds r0, r2, #0
	subs r0, #0x22
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D7DE
	strh r4, [r1]
	b _0810D7DE
_0810D794:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810D7C0
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810D7BC @ =0xFFFFFE00
	cmp r0, r2
	blt _0810D7DC
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _0810D7DE
	b _0810D7DC
	.align 2, 0
_0810D7BC: .4byte 0xFFFFFE00
_0810D7C0:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _0810D7DC
	ldr r2, _0810D804 @ =0xFFFFFE00
	cmp r0, r2
	bge _0810D7DE
_0810D7DC:
	strh r2, [r1]
_0810D7DE:
	ldr r1, [r3, #0x44]
	ldr r0, _0810D808 @ =0x00002FFF
	cmp r1, r0
	bgt _0810D81E
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810D80C
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D836
	b _0810D818
	.align 2, 0
_0810D804: .4byte 0xFFFFFE00
_0810D808: .4byte 0x00002FFF
_0810D80C:
	adds r0, r2, #0
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D836
_0810D818:
	movs r0, #0
	strh r0, [r1]
	b _0810D836
_0810D81E:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _0810D836
	strh r2, [r1]
_0810D836:
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _0810D864
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bne _0810D864
	ldr r0, _0810D86C @ =0x00000129
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810D864
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_08113F00
_0810D864:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810D86C: .4byte 0x00000129

	thumb_func_start sub_0810D870
sub_0810D870: @ 0x0810D870
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810D8B4 @ =sub_0810D914
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0810D8B8 @ =0x00000135
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, _0810D8BC @ =0x00007DFF
	cmp r1, r0
	bgt _0810D8C0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810D8C6
	.align 2, 0
_0810D8B4: .4byte sub_0810D914
_0810D8B8: .4byte 0x00000135
_0810D8BC: .4byte 0x00007DFF
_0810D8C0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810D8C6:
	str r0, [r4, #8]
	ldr r1, _0810D8E0 @ =0x00000127
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810D8E4
	movs r2, #0x92
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x80
	lsls r0, r0, #5
	b _0810D8EE
	.align 2, 0
_0810D8E0: .4byte 0x00000127
_0810D8E4:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xc0
	lsls r0, r0, #6
_0810D8EE:
	strh r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r1, [r4, #0x44]
	movs r0, #0xc8
	lsls r0, r0, #6
	cmp r1, r0
	ble _0810D906
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	b _0810D90C
_0810D906:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
_0810D90C:
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0810D914
sub_0810D914: @ 0x0810D914
	push {r4, r5, lr}
	adds r3, r0, #0
	mov ip, r3
	ldr r0, [r3, #0x40]
	ldr r1, _0810D944 @ =0xFFFF91FF
	adds r0, r0, r1
	ldr r1, _0810D948 @ =0x00001FFE
	cmp r0, r1
	bhi _0810D95E
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810D94C
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810D9AA
	b _0810D958
	.align 2, 0
_0810D944: .4byte 0xFFFF91FF
_0810D948: .4byte 0x00001FFE
_0810D94C:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810D9AA
_0810D958:
	movs r0, #0
	strh r0, [r1]
	b _0810D9AA
_0810D95E:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810D98C
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810D988 @ =0xFFFFFDC0
	cmp r0, r2
	blt _0810D9A8
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	ble _0810D9AA
	b _0810D9A8
	.align 2, 0
_0810D988: .4byte 0xFFFFFDC0
_0810D98C:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _0810D9A8
	ldr r2, _0810D9F8 @ =0xFFFFFDC0
	cmp r0, r2
	bge _0810D9AA
_0810D9A8:
	strh r2, [r1]
_0810D9AA:
	movs r1, #0x91
	lsls r1, r1, #1
	add r1, ip
	ldrh r0, [r1]
	adds r0, #8
	movs r5, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _0810D9C4
	movs r0, #0xc0
	strh r0, [r1]
_0810D9C4:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r4, [r0]
	cmp r4, #0
	beq _0810DA2C
	ldr r1, [r3, #0x44]
	ldr r0, _0810D9FC @ =0x000031FF
	cmp r1, r0
	ble _0810DA10
	adds r0, #1
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810DA00
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810DA7E
	strh r5, [r1]
	b _0810DA7E
	.align 2, 0
_0810D9F8: .4byte 0xFFFFFDC0
_0810D9FC: .4byte 0x000031FF
_0810DA00:
	adds r0, r2, #0
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810DA7E
	strh r5, [r1]
	b _0810DA7E
_0810DA10:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x1d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810DA28 @ =0xFFFFFDC0
	cmp r0, r2
	bge _0810DA7E
	b _0810DA7C
	.align 2, 0
_0810DA28: .4byte 0xFFFFFDC0
_0810DA2C:
	ldr r0, [r3, #0x44]
	movs r1, #0xc8
	lsls r1, r1, #6
	cmp r0, r1
	bgt _0810DA66
	str r1, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0810DA56
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810DA7E
	strh r4, [r1]
	b _0810DA7E
_0810DA56:
	adds r0, r2, #0
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810DA7E
	strh r4, [r1]
	b _0810DA7E
_0810DA66:
	adds r1, r3, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x1d
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	ble _0810DA7E
_0810DA7C:
	strh r2, [r1]
_0810DA7E:
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _0810DB0E
	ldr r0, _0810DAA0 @ =0x00000127
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	bne _0810DAA4
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #5
	b _0810DAB2
	.align 2, 0
_0810DAA0: .4byte 0x00000127
_0810DAA4:
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0xc0
	lsls r0, r0, #6
_0810DAB2:
	cmp r1, r0
	bne _0810DB0E
	mov r0, ip
	adds r0, #0xfc
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bls _0810DAD6
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0810DAE2
_0810DAD6:
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0810DB0E
_0810DAE2:
	ldrh r1, [r3, #4]
	movs r5, #4
	ldrsh r0, [r3, r5]
	cmp r0, #0
	beq _0810DAF6
	subs r0, r1, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810DB0E
_0810DAF6:
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0810DB0E
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #8]
	adds r0, r3, #0
	bl sub_081140BC
_0810DB0E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0810DB14
sub_0810DB14: @ 0x0810DB14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0810DBA0
	adds r5, r4, #0
	adds r5, #0x50
	cmp r0, #0x14
	bne _0810DB4A
	adds r0, r4, #0
	bl sub_08111314
	ldr r2, _0810DB94 @ =0x0000FE30
	strh r2, [r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0810DB4A
	rsbs r0, r2, #0
	strh r0, [r5]
_0810DB4A:
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	ble _0810DB64
	ldr r1, _0810DB98 @ =gUnk_0835737C
	movs r0, #3
	ands r0, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_0810DB64:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0810DBC6
	ldr r3, _0810DB9C @ =0x00000135
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r2, [r0]
	subs r3, #0x13
	adds r0, r6, r3
	strh r2, [r0]
	b _0810DBC6
	.align 2, 0
_0810DB94: .4byte 0x0000FE30
_0810DB98: .4byte gUnk_0835737C
_0810DB9C: .4byte 0x00000135
_0810DBA0:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x50
	cmp r0, #0
	beq _0810DBC6
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0810DBC6
	movs r0, #0xa0
	strh r0, [r1]
_0810DBC6:
	adds r1, r5, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0810DBE4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810DBF4
	movs r0, #0
	strh r0, [r1]
	b _0810DBF4
_0810DBE4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810DBF4
	movs r0, #0
	strh r0, [r5]
_0810DBF4:
	adds r0, r6, #0
	adds r0, #0xfc
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0810DC26
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _0810DC26
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_081140F4
_0810DC26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0810DC2C
sub_0810DC2C: @ 0x0810DC2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _0810DC6A
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0810DC58
	adds r0, r3, #0
	adds r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810DC82
	b _0810DC64
_0810DC58:
	adds r0, r3, #0
	subs r0, #0x28
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810DC82
_0810DC64:
	movs r0, #0
	strh r0, [r2]
	b _0810DC82
_0810DC6A:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0810DCA0 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	bge _0810DC82
	strh r3, [r2]
_0810DC82:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0810DC9A
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0810DC9A
	adds r0, r4, #0
	bl sub_0810C9C8
_0810DC9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810DCA0: .4byte 0xFFFFFE80

	thumb_func_start sub_0810DCA4
sub_0810DCA4: @ 0x0810DCA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810DCEC @ =sub_0810DD60
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0x93
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r0, #6
	strb r0, [r5]
	ldr r1, _0810DCF0 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0810A3D0
	ldrb r0, [r5]
	cmp r0, #6
	bne _0810DCF4
	movs r0, #0x96
	lsls r0, r0, #1
	b _0810DD56
	.align 2, 0
_0810DCEC: .4byte sub_0810DD60
_0810DCF0: .4byte 0x00000135
_0810DCF4:
	ldr r2, _0810DD20 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810DD24 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810DD28 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0810DD2C
	cmp r1, #1
	blo _0810DD18
	cmp r1, #2
	beq _0810DD32
	cmp r1, #3
	beq _0810DD36
_0810DD18:
	movs r0, #0x96
	lsls r0, r0, #1
	b _0810DD56
	.align 2, 0
_0810DD20: .4byte gRngVal
_0810DD24: .4byte 0x00196225
_0810DD28: .4byte 0x3C6EF35F
_0810DD2C:
	movs r0, #0x82
	lsls r0, r0, #1
	b _0810DD56
_0810DD32:
	movs r0, #0xdc
	b _0810DD56
_0810DD36:
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, _0810DD50 @ =0x00000139
	adds r1, r4, r2
	ldrb r1, [r1]
	cmp r0, r1
	ble _0810DD54
	movs r0, #0x82
	lsls r0, r0, #1
	b _0810DD56
	.align 2, 0
_0810DD50: .4byte 0x00000139
_0810DD54:
	movs r0, #0xb4
_0810DD56:
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810DD60
sub_0810DD60: @ 0x0810DD60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0810DD76
	ldr r2, _0810DDDC @ =0x00000135
	adds r0, r4, r2
	strb r1, [r0]
_0810DD76:
	ldr r2, _0810DDE0 @ =gUnk_0835736C
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r1, [r4, #0x40]
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0810DDA0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_0810DDA0:
	ldr r1, [r4, #0x40]
	ldr r0, _0810DDE4 @ =0x000037FF
	cmp r1, r0
	bgt _0810DDB2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0810DDB2:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810DDEC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810DDE8 @ =0xFFFFFE00
	cmp r0, r2
	blt _0810DE08
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _0810DE0A
	b _0810DE08
	.align 2, 0
_0810DDDC: .4byte 0x00000135
_0810DDE0: .4byte gUnk_0835736C
_0810DDE4: .4byte 0x000037FF
_0810DDE8: .4byte 0xFFFFFE00
_0810DDEC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _0810DE08
	ldr r2, _0810DEA0 @ =0xFFFFFE00
	cmp r0, r2
	bge _0810DE0A
_0810DE08:
	strh r2, [r1]
_0810DE0A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810DECA
	adds r0, r4, #0
	bl sub_0810CBE8
	ldr r1, _0810DEA4 @ =gKirbys
	ldr r0, _0810DEA8 @ =gUnk_0203AD3C
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
	bne _0810DE84
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810DE48
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810DE84
_0810DE48:
	ldr r1, _0810DEAC @ =gUnk_08D60FA4
	ldr r5, _0810DEB0 @ =gSongTable
	ldr r2, _0810DEB4 @ =0x00000D8C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810DE6C
	ldr r1, _0810DEB8 @ =0x00000D88
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810DE84
_0810DE6C:
	cmp r3, #0
	beq _0810DE7E
	ldr r0, _0810DEBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810DE84
_0810DE7E:
	ldr r0, _0810DEC0 @ =0x000001B1
	bl m4aSongNumStart
_0810DE84:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #6
	blt _0810DE98
	cmp r0, #7
	ble _0810DE98
	cmp r0, #8
	beq _0810DEC4
_0810DE98:
	adds r0, r4, #0
	bl sub_0810DED0
	b _0810DECA
	.align 2, 0
_0810DEA0: .4byte 0xFFFFFE00
_0810DEA4: .4byte gKirbys
_0810DEA8: .4byte gUnk_0203AD3C
_0810DEAC: .4byte gUnk_08D60FA4
_0810DEB0: .4byte gSongTable
_0810DEB4: .4byte 0x00000D8C
_0810DEB8: .4byte 0x00000D88
_0810DEBC: .4byte gUnk_0203AD10
_0810DEC0: .4byte 0x000001B1
_0810DEC4:
	adds r0, r4, #0
	bl sub_0810E590
_0810DECA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0810DED0
sub_0810DED0: @ 0x0810DED0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0810DF14 @ =sub_0810DF60
	movs r1, #5
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x52
	movs r0, #0
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0810DF18 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0810DF1C
	movs r0, #0x80
	b _0810DF24
	.align 2, 0
_0810DF14: .4byte sub_0810DF60
_0810DF18: .4byte 0x00000135
_0810DF1C:
	ldr r0, _0810DF48 @ =0x000003FF
	cmp r1, r0
	bgt _0810DF26
	ldr r0, _0810DF4C @ =0x0000FF80
_0810DF24:
	strh r0, [r5]
_0810DF26:
	movs r0, #0
	movs r1, #0x3c
	strh r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	movs r1, #0x95
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810DF50
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #8
	b _0810DF56
	.align 2, 0
_0810DF48: .4byte 0x000003FF
_0810DF4C: .4byte 0x0000FF80
_0810DF50:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x3c
_0810DF56:
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810DF60
sub_0810DF60: @ 0x0810DF60
	push {r4, r5, lr}
	mov ip, r0
	mov r5, ip
	ldr r2, _0810DFA0 @ =gUnk_0835737C
	mov r3, ip
	adds r3, #0x9e
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x55
	movs r4, #0
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	mov r2, ip
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0810DFA8
	mov r3, ip
	ldr r1, [r3, #0x44]
	ldr r0, _0810DFA4 @ =0x000003FF
	cmp r1, r0
	bgt _0810DFBE
	adds r0, #1
	str r0, [r3, #0x44]
	b _0810DFBC
	.align 2, 0
_0810DFA0: .4byte gUnk_0835737C
_0810DFA4: .4byte 0x000003FF
_0810DFA8:
	cmp r0, #0
	bge _0810DFBE
	mov r1, ip
	ldr r0, [r1, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _0810DFBE
	mov r3, ip
	str r1, [r3, #0x44]
_0810DFBC:
	strh r4, [r2]
_0810DFBE:
	mov r0, ip
	ldr r2, [r0, #0x40]
	ldr r1, _0810DFF8 @ =0xFFFFE800
	adds r0, r2, r1
	mov r1, ip
	adds r1, #0xac
	ldr r1, [r1]
	ldr r1, [r1, #0x40]
	cmp r0, r1
	ble _0810E01A
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E010
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0810DFFC @ =0xFFFFFD80
	cmp r2, r0
	bge _0810E004
	ldr r0, _0810E000 @ =0x0000FD80
	strh r0, [r1]
	b _0810E0CA
	.align 2, 0
_0810DFF8: .4byte 0xFFFFE800
_0810DFFC: .4byte 0xFFFFFD80
_0810E000: .4byte 0x0000FD80
_0810E004:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r2, r0
	ble _0810E0CA
	strh r0, [r1]
	b _0810E0CA
_0810E010:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	b _0810E05C
_0810E01A:
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r2, r3
	cmp r0, r1
	bge _0810E078
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E054
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810E050 @ =0xFFFFFD80
	cmp r0, r2
	blt _0810E04C
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	ble _0810E0CA
_0810E04C:
	strh r2, [r1]
	b _0810E0CA
	.align 2, 0
_0810E050: .4byte 0xFFFFFD80
_0810E054:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
_0810E05C:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	cmp r0, r2
	bgt _0810E04C
	ldr r2, _0810E074 @ =0xFFFFFD80
	cmp r0, r2
	bge _0810E0CA
	b _0810E04C
	.align 2, 0
_0810E074: .4byte 0xFFFFFD80
_0810E078:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0810E094
	adds r0, r2, #0
	adds r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810E0A4
	b _0810E0A0
_0810E094:
	adds r0, r2, #0
	subs r0, #0x38
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810E0A4
_0810E0A0:
	movs r0, #0
	strh r0, [r1]
_0810E0A4:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _0810E0CA
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _0810E0CA
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0810E0CA
	mov r2, ip
	strh r0, [r2, #4]
_0810E0CA:
	mov r3, ip
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _0810E102
	mov r0, ip
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0810E108
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _0810E0F2
	cmp r0, #7
	beq _0810E0FA
_0810E0F2:
	mov r0, ip
	bl sub_08114170
	b _0810E108
_0810E0FA:
	mov r0, ip
	bl sub_0810E300
	b _0810E108
_0810E102:
	subs r0, r1, #1
	mov r2, ip
	strh r0, [r2, #4]
_0810E108:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810E110
sub_0810E110: @ 0x0810E110
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0810E148 @ =sub_0810E230
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, _0810E14C @ =0x00000135
	adds r2, r4, r0
	movs r1, #0
	movs r0, #2
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0810E150
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _0810E158
	.align 2, 0
_0810E148: .4byte sub_0810E230
_0810E14C: .4byte 0x00000135
_0810E150:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0810E158:
	str r0, [r4, #8]
	ldr r2, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	bgt _0810E16E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0810E16E:
	ldr r0, _0810E214 @ =0x0000DFFF
	cmp r2, r0
	ble _0810E17C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_0810E17C:
	movs r0, #0xa0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08111EF4
	ldr r1, _0810E218 @ =gKirbys
	ldr r0, _0810E21C @ =gUnk_0203AD3C
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
	bne _0810E1F2
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810E1B2
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810E1F2
_0810E1B2:
	ldr r1, _0810E220 @ =gUnk_08D60FA4
	ldr r5, _0810E224 @ =gSongTable
	ldr r2, _0810E228 @ =0x00000D94
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810E1D8
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810E1F2
_0810E1D8:
	cmp r3, #0
	beq _0810E1EA
	ldr r0, _0810E22C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810E1F2
_0810E1EA:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810E1F2:
	adds r0, r4, #0
	bl sub_08111824
	adds r0, r6, #0
	adds r0, #0xe4
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810E214: .4byte 0x0000DFFF
_0810E218: .4byte gKirbys
_0810E21C: .4byte gUnk_0203AD3C
_0810E220: .4byte gUnk_08D60FA4
_0810E224: .4byte gSongTable
_0810E228: .4byte 0x00000D94
_0810E22C: .4byte gUnk_0203AD10

	thumb_func_start sub_0810E230
sub_0810E230: @ 0x0810E230
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E266
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0810E260
	ldr r0, _0810E25C @ =0x0000FF80
	strh r0, [r1]
	b _0810E288
	.align 2, 0
_0810E25C: .4byte 0x0000FF80
_0810E260:
	cmp r2, #0x80
	ble _0810E288
	b _0810E278
_0810E266:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x80
	ble _0810E27E
_0810E278:
	movs r0, #0x80
	strh r0, [r1]
	b _0810E288
_0810E27E:
	movs r2, #0x80
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0810E288
	strh r2, [r1]
_0810E288:
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0xf
	bls _0810E2B8
	cmp r1, #0x1c
	bls _0810E2A6
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x52
	strh r1, [r0]
	b _0810E2B8
_0810E2A6:
	ldr r0, _0810E2F8 @ =gUnk_083573B4
	ldrb r1, [r2]
	subs r1, #0x10
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
_0810E2B8:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r2, [r3, #0x40]
	ldr r0, _0810E2FC @ =0xFFFFF000
	cmp r2, r0
	bge _0810E2D0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810E2EE
_0810E2D0:
	movs r0, #0x84
	lsls r0, r0, #9
	cmp r2, r0
	ble _0810E2E2
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E2EE
_0810E2E2:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810E2F4
_0810E2EE:
	adds r0, r3, #0
	bl sub_0810E8D0
_0810E2F4:
	pop {r0}
	bx r0
	.align 2, 0
_0810E2F8: .4byte gUnk_083573B4
_0810E2FC: .4byte 0xFFFFF000

	thumb_func_start sub_0810E300
sub_0810E300: @ 0x0810E300
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0810E330 @ =sub_081141D0
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x95
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810E334
	movs r0, #0x10
	b _0810E336
	.align 2, 0
_0810E330: .4byte sub_081141D0
_0810E334:
	movs r0, #0x20
_0810E336:
	strh r0, [r4, #4]
	ldr r0, _0810E350 @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x95
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0810E350: .4byte 0x00000135

	thumb_func_start sub_0810E354
sub_0810E354: @ 0x0810E354
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r2, _0810E38C @ =sub_0810E4A0
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0810E390 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0810E394
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _0810E39C
	.align 2, 0
_0810E38C: .4byte sub_0810E4A0
_0810E390: .4byte 0x00000135
_0810E394:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0810E39C:
	str r0, [r4, #8]
	ldr r2, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	bgt _0810E3B2
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_0810E3B2:
	ldr r0, _0810E3E4 @ =0x0000DFFF
	cmp r2, r0
	ble _0810E3C0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_0810E3C0:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _0810E3F0
	movs r2, #0x95
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810E3E8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810E3EE
	.align 2, 0
_0810E3E4: .4byte 0x0000DFFF
_0810E3E8:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810E3EE:
	str r0, [r4, #8]
_0810E3F0:
	movs r0, #0x20
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08111EF4
	ldr r1, _0810E488 @ =gKirbys
	ldr r0, _0810E48C @ =gUnk_0203AD3C
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
	bne _0810E466
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810E426
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810E466
_0810E426:
	ldr r1, _0810E490 @ =gUnk_08D60FA4
	ldr r5, _0810E494 @ =gSongTable
	ldr r2, _0810E498 @ =0x00000D94
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810E44C
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810E466
_0810E44C:
	cmp r3, #0
	beq _0810E45E
	ldr r0, _0810E49C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810E466
_0810E45E:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810E466:
	adds r0, r4, #0
	bl sub_08111824
	adds r0, r6, #0
	adds r0, #0xe4
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810E488: .4byte gKirbys
_0810E48C: .4byte gUnk_0203AD3C
_0810E490: .4byte gUnk_08D60FA4
_0810E494: .4byte gSongTable
_0810E498: .4byte 0x00000D94
_0810E49C: .4byte gUnk_0203AD10

	thumb_func_start sub_0810E4A0
sub_0810E4A0: @ 0x0810E4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E4D6
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0810E4D0
	ldr r0, _0810E4CC @ =0x0000FF80
	strh r0, [r1]
	b _0810E4F8
	.align 2, 0
_0810E4CC: .4byte 0x0000FF80
_0810E4D0:
	cmp r2, #0x80
	ble _0810E4F8
	b _0810E4E8
_0810E4D6:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x80
	ble _0810E4EE
_0810E4E8:
	movs r0, #0x80
	strh r0, [r1]
	b _0810E4F8
_0810E4EE:
	movs r2, #0x80
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0810E4F8
	strh r2, [r1]
_0810E4F8:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0xf
	bls _0810E528
	cmp r1, #0x1c
	bls _0810E516
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	b _0810E528
_0810E516:
	ldr r0, _0810E554 @ =gUnk_083573B4
	ldrb r1, [r2]
	subs r1, #0x10
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
_0810E528:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810E58A
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0810E558
	adds r0, r4, #0
	bl sub_0810E8D0
	b _0810E58A
	.align 2, 0
_0810E554: .4byte gUnk_083573B4
_0810E558:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_0811473C
	adds r0, r5, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r1, #0x26
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #7
	bne _0810E584
	adds r0, r4, #0
	bl sub_0810DED0
	b _0810E58A
_0810E584:
	adds r0, r4, #0
	bl sub_08114130
_0810E58A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0810E590
sub_0810E590: @ 0x0810E590
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810E5C8 @ =sub_0810E65C
	movs r1, #5
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x52
	movs r3, #0
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0810E5CC @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0810E5D0
	movs r0, #0x80
	strh r0, [r2]
	b _0810E5E6
	.align 2, 0
_0810E5C8: .4byte sub_0810E65C
_0810E5CC: .4byte 0x00000135
_0810E5D0:
	ldr r0, _0810E5DC @ =0x000003FF
	cmp r1, r0
	bgt _0810E5E4
	ldr r0, _0810E5E0 @ =0x0000FF80
	strh r0, [r2]
	b _0810E5E6
	.align 2, 0
_0810E5DC: .4byte 0x000003FF
_0810E5E0: .4byte 0x0000FF80
_0810E5E4:
	strh r3, [r2]
_0810E5E6:
	movs r0, #0
	movs r3, #0x20
	strh r3, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	ldr r2, _0810E61C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810E620 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810E624 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	movs r2, #0x95
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	cmp r0, #0
	beq _0810E628
	adds r0, r4, #0
	adds r0, #0xa0
	strh r3, [r0]
	b _0810E632
	.align 2, 0
_0810E61C: .4byte gRngVal
_0810E620: .4byte 0x00196225
_0810E624: .4byte 0x3C6EF35F
_0810E628:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xe0
	strh r0, [r1]
	adds r0, r1, #0
_0810E632:
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _0810E64C
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0810E648 @ =0x0000FFE0
	b _0810E652
	.align 2, 0
_0810E648: .4byte 0x0000FFE0
_0810E64C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x20
_0810E652:
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810E65C
sub_0810E65C: @ 0x0810E65C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _0810E698 @ =gUnk_0835737C
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x55
	movs r4, #0
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0810E6A0
	ldr r1, [r5, #0x44]
	ldr r0, _0810E69C @ =0x000003FF
	cmp r1, r0
	bgt _0810E6B2
	adds r0, #1
	str r0, [r5, #0x44]
	b _0810E6B0
	.align 2, 0
_0810E698: .4byte gUnk_0835737C
_0810E69C: .4byte 0x000003FF
_0810E6A0:
	cmp r0, #0
	bge _0810E6B2
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _0810E6B2
	str r1, [r5, #0x44]
_0810E6B0:
	strh r4, [r2]
_0810E6B2:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	cmp r1, #0
	bge _0810E728
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E6F8
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0810E6E4 @ =0xFFFFFD80
	cmp r1, r0
	bge _0810E6EC
	ldr r0, _0810E6E8 @ =0x0000FD80
	strh r0, [r6]
	b _0810E712
	.align 2, 0
_0810E6E4: .4byte 0xFFFFFD80
_0810E6E8: .4byte 0x0000FD80
_0810E6EC:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0810E712
	strh r0, [r6]
	b _0810E712
_0810E6F8:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	bgt _0810E710
	ldr r1, _0810E724 @ =0xFFFFFD80
	cmp r0, r1
	bge _0810E712
_0810E710:
	strh r1, [r6]
_0810E712:
	adds r0, r5, #0
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r5, #0x40]
	cmp r0, r1
	bge _0810E780
	b _0810E77A
	.align 2, 0
_0810E724: .4byte 0xFFFFFD80
_0810E728:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E750
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0810E74C @ =0xFFFFFD80
	cmp r0, r1
	blt _0810E768
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0810E76A
	b _0810E768
	.align 2, 0
_0810E74C: .4byte 0xFFFFFD80
_0810E750:
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	bgt _0810E768
	ldr r1, _0810E7C4 @ =0xFFFFFD80
	cmp r0, r1
	bge _0810E76A
_0810E768:
	strh r1, [r6]
_0810E76A:
	adds r0, r5, #0
	adds r0, #0xa0
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #8
	ldr r0, [r5, #0x40]
	cmp r0, r1
	ble _0810E780
_0810E77A:
	str r1, [r5, #0x40]
	movs r0, #0
	strh r0, [r6]
_0810E780:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _0810E7BC
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0810E7BC
	ldr r2, _0810E7C8 @ =sub_081141D0
	adds r0, r5, #0
	movs r1, #5
	bl ObjectSetFunc
	strh r4, [r6]
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #0xa
	strh r0, [r5, #4]
	ldr r0, _0810E7CC @ =0x00000135
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1]
_0810E7BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810E7C4: .4byte 0xFFFFFD80
_0810E7C8: .4byte sub_081141D0
_0810E7CC: .4byte 0x00000135

	thumb_func_start sub_0810E7D0
sub_0810E7D0: @ 0x0810E7D0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0x95
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810E836
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E81C
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _0810E808 @ =0xFFFFFD80
	adds r5, r0, #0
	cmp r2, r1
	bge _0810E810
	ldr r0, _0810E80C @ =0x0000FD80
	strh r0, [r5]
	b _0810E888
	.align 2, 0
_0810E808: .4byte 0xFFFFFD80
_0810E80C: .4byte 0x0000FD80
_0810E810:
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r2, r0
	ble _0810E888
	strh r0, [r5]
	b _0810E888
_0810E81C:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	bgt _0810E87C
	b _0810E880
_0810E836:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E864
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0810E860 @ =0xFFFFFD80
	adds r5, r1, #0
	cmp r0, r2
	blt _0810E87C
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	ble _0810E888
	b _0810E886
	.align 2, 0
_0810E860: .4byte 0xFFFFFD80
_0810E864:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _0810E880
_0810E87C:
	strh r2, [r5]
	b _0810E888
_0810E880:
	ldr r1, _0810E8C4 @ =0xFFFFFD80
	cmp r0, r1
	bge _0810E888
_0810E886:
	strh r1, [r5]
_0810E888:
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _0810E8BE
	ldr r2, _0810E8C8 @ =sub_081141D0
	adds r0, r6, #0
	movs r1, #5
	bl ObjectSetFunc
	strh r4, [r5]
	adds r0, r6, #0
	adds r0, #0x52
	strh r4, [r0]
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
	movs r0, #0xa
	strh r0, [r6, #4]
	ldr r0, _0810E8CC @ =0x00000135
	adds r1, r6, r0
	movs r0, #3
	strb r0, [r1]
_0810E8BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810E8C4: .4byte 0xFFFFFD80
_0810E8C8: .4byte sub_081141D0
_0810E8CC: .4byte 0x00000135

	thumb_func_start sub_0810E8D0
sub_0810E8D0: @ 0x0810E8D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _0810E900 @ =sub_0810E938
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0810E904 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _0810E908 @ =0x00007DFF
	cmp r1, r0
	bgt _0810E90C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0810E912
	.align 2, 0
_0810E900: .4byte sub_0810E938
_0810E904: .4byte 0x00000135
_0810E908: .4byte 0x00007DFF
_0810E90C:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_0810E912:
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r5, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0811473C
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0810E938
sub_0810E938: @ 0x0810E938
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r1, _0810E964 @ =0xFFFF91FF
	adds r0, r0, r1
	ldr r1, _0810E968 @ =0x00001FFE
	cmp r0, r1
	bhi _0810E97E
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0810E96C
	adds r0, r3, #0
	adds r0, #0x22
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810E9CA
	b _0810E978
	.align 2, 0
_0810E964: .4byte 0xFFFF91FF
_0810E968: .4byte 0x00001FFE
_0810E96C:
	adds r0, r3, #0
	subs r0, #0x22
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810E9CA
_0810E978:
	movs r0, #0
	strh r0, [r1]
	b _0810E9CA
_0810E97E:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810E9AC
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0810E9A8 @ =0xFFFFFE00
	cmp r0, r3
	blt _0810E9C8
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	ble _0810E9CA
	b _0810E9C8
	.align 2, 0
_0810E9A8: .4byte 0xFFFFFE00
_0810E9AC:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, r3
	bgt _0810E9C8
	ldr r3, _0810E9FC @ =0xFFFFFE00
	cmp r0, r3
	bge _0810E9CA
_0810E9C8:
	strh r3, [r1]
_0810E9CA:
	ldrh r0, [r2, #4]
	movs r5, #4
	ldrsh r4, [r2, r5]
	cmp r4, #0
	bne _0810EA44
	ldr r1, [r2, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _0810EA10
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0810EA00
	adds r0, r3, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0810EA26
	strh r4, [r1]
	b _0810EA26
	.align 2, 0
_0810E9FC: .4byte 0xFFFFFE00
_0810EA00:
	adds r0, r3, #0
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0810EA26
	strh r4, [r1]
	b _0810EA26
_0810EA10:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0810EA40 @ =0xFFFFFE80
	cmp r0, r3
	bge _0810EA26
	strh r3, [r1]
_0810EA26:
	ldr r0, [r2, #0x50]
	cmp r0, #0
	bne _0810EA48
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0810C9C8
	b _0810EA48
	.align 2, 0
_0810EA40: .4byte 0xFFFFFE80
_0810EA44:
	subs r0, #1
	strh r0, [r2, #4]
_0810EA48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810EA50
sub_0810EA50: @ 0x0810EA50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810EB0C @ =sub_081141F4
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x78
	strh r0, [r4, #4]
	adds r0, #0xae
	adds r1, r4, r0
	movs r0, #9
	strb r0, [r1]
	movs r0, #5
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _0810EB10 @ =gKirbys
	ldr r0, _0810EB14 @ =gUnk_0203AD3C
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
	bne _0810EAF6
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810EABA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810EAF6
_0810EABA:
	ldr r1, _0810EB18 @ =gUnk_08D60FA4
	ldr r5, _0810EB1C @ =gSongTable
	ldr r2, _0810EB20 @ =0x00000D8C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810EADE
	ldr r1, _0810EB24 @ =0x00000D88
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810EAF6
_0810EADE:
	cmp r3, #0
	beq _0810EAF0
	ldr r0, _0810EB28 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810EAF6
_0810EAF0:
	ldr r0, _0810EB2C @ =0x000001B1
	bl m4aSongNumStart
_0810EAF6:
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810EB0C: .4byte sub_081141F4
_0810EB10: .4byte gKirbys
_0810EB14: .4byte gUnk_0203AD3C
_0810EB18: .4byte gUnk_08D60FA4
_0810EB1C: .4byte gSongTable
_0810EB20: .4byte 0x00000D8C
_0810EB24: .4byte 0x00000D88
_0810EB28: .4byte gUnk_0203AD10
_0810EB2C: .4byte 0x000001B1

	thumb_func_start sub_0810EB30
sub_0810EB30: @ 0x0810EB30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _0810EBC0
	adds r0, r4, #0
	bl sub_08111EF4
	ldr r1, _0810EBF0 @ =gKirbys
	ldr r0, _0810EBF4 @ =gUnk_0203AD3C
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
	bne _0810EBB8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810EB78
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810EBB8
_0810EB78:
	ldr r1, _0810EBF8 @ =gUnk_08D60FA4
	ldr r5, _0810EBFC @ =gSongTable
	ldr r2, _0810EC00 @ =0x00000D94
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810EB9E
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810EBB8
_0810EB9E:
	cmp r3, #0
	beq _0810EBB0
	ldr r0, _0810EC04 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810EBB8
_0810EBB0:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810EBB8:
	ldr r2, _0810EC08 @ =0x00000135
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
_0810EBC0:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810EBE8
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08113508
	adds r1, r0, #0
	cmp r1, #0
	beq _0810EBE2
	adds r0, r6, #0
	adds r0, #0xdc
	str r1, [r0]
_0810EBE2:
	adds r0, r4, #0
	bl sub_0810AB1C
_0810EBE8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810EBF0: .4byte gKirbys
_0810EBF4: .4byte gUnk_0203AD3C
_0810EBF8: .4byte gUnk_08D60FA4
_0810EBFC: .4byte gSongTable
_0810EC00: .4byte 0x00000D94
_0810EC04: .4byte gUnk_0203AD10
_0810EC08: .4byte 0x00000135

	thumb_func_start sub_0810EC0C
sub_0810EC0C: @ 0x0810EC0C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810EC48
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _0810EC38 @ =0xFFFFFE00
	adds r2, r0, #0
	cmp r4, r1
	bge _0810EC3C
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2]
	b _0810EC6C
	.align 2, 0
_0810EC38: .4byte 0xFFFFFE00
_0810EC3C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	ble _0810EC6C
	strh r0, [r2]
	b _0810EC6C
_0810EC48:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	ble _0810EC64
	strh r4, [r2]
	b _0810EC6C
_0810EC64:
	ldr r1, _0810EC88 @ =0xFFFFFE00
	cmp r0, r1
	bge _0810EC6C
	strh r1, [r2]
_0810EC6C:
	ldr r1, [r3, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0810EC90
	ldr r1, [r3, #0x40]
	ldr r0, _0810EC8C @ =0x00007DFF
	cmp r1, r0
	bgt _0810EC9E
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _0810EC9E
	.align 2, 0
_0810EC88: .4byte 0xFFFFFE00
_0810EC8C: .4byte 0x00007DFF
_0810EC90:
	ldr r0, [r3, #0x40]
	movs r4, #0xfc
	lsls r4, r4, #7
	cmp r0, r4
	ble _0810EC9E
	str r4, [r3, #0x40]
	strh r1, [r2]
_0810EC9E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0810ECAC
	adds r0, r3, #0
	bl sub_08114310
_0810ECAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810ECB4
sub_0810ECB4: @ 0x0810ECB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	ble _0810ECE6
	ldr r2, _0810ED80 @ =gUnk_0835737C
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0810ECE6:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #8
	bne _0810ED68
	adds r0, r4, #0
	bl sub_08111EF4
	ldr r1, _0810ED84 @ =gKirbys
	ldr r0, _0810ED88 @ =gUnk_0203AD3C
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
	bne _0810ED60
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810ED20
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810ED60
_0810ED20:
	ldr r1, _0810ED8C @ =gUnk_08D60FA4
	ldr r5, _0810ED90 @ =gSongTable
	ldr r2, _0810ED94 @ =0x00000D94
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810ED46
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810ED60
_0810ED46:
	cmp r3, #0
	beq _0810ED58
	ldr r0, _0810ED98 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810ED60
_0810ED58:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810ED60:
	ldr r2, _0810ED9C @ =0x00000135
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
_0810ED68:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810ED7A
	adds r0, r4, #0
	bl sub_081143AC
_0810ED7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810ED80: .4byte gUnk_0835737C
_0810ED84: .4byte gKirbys
_0810ED88: .4byte gUnk_0203AD3C
_0810ED8C: .4byte gUnk_08D60FA4
_0810ED90: .4byte gSongTable
_0810ED94: .4byte 0x00000D94
_0810ED98: .4byte gUnk_0203AD10
_0810ED9C: .4byte 0x00000135

	thumb_func_start sub_0810EDA0
sub_0810EDA0: @ 0x0810EDA0
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	ldr r1, [r2, #0x44]
	ldr r0, _0810EDB8 @ =0xFFFFC000
	cmp r1, r0
	bge _0810EDBC
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	b _0810EDD4
	.align 2, 0
_0810EDB8: .4byte 0xFFFFC000
_0810EDBC:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	cmp r0, r3
	ble _0810EDD4
	strh r3, [r1]
_0810EDD4:
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0810EDE6
	adds r0, r2, #0
	bl sub_0810E8D0
_0810EDE6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0810EDEC
sub_0810EDEC: @ 0x0810EDEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r4
	adds r0, #0xfc
	ldr r0, [r0]
	str r0, [sp]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r3, #0x86
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EE28
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EE28
	movs r0, #0
	str r0, [r2]
_0810EE28:
	movs r5, #0x84
	lsls r5, r5, #1
	adds r2, r4, r5
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EE44
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EE44
	movs r0, #0
	str r0, [r2]
_0810EE44:
	movs r6, #0x88
	lsls r6, r6, #1
	adds r2, r4, r6
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EE60
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EE60
	movs r0, #0
	str r0, [r2]
_0810EE60:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EE7C
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EE7C
	movs r0, #0
	str r0, [r2]
_0810EE7C:
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r2, r4, r1
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EE98
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EE98
	movs r0, #0
	str r0, [r2]
_0810EE98:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r0, [r2]
	cmp r0, #0
	beq _0810EEB4
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0810EEB4
	movs r0, #0
	str r0, [r2]
_0810EEB4:
	ldr r0, _0810EEE8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r5, #1
	mov sl, r5
	mov r0, sl
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0810EED2
	b _0810F126
_0810EED2:
	mov r0, sb
	adds r0, #0x80
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bgt _0810EEEC
	mov r0, sb
	str r2, [r0, #0x7c]
	bl sub_0810C414
	b _0810F126
	.align 2, 0
_0810EEE8: .4byte gUnk_03000510
_0810EEEC:
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810EF00
	ldr r2, _0810EF6C @ =0x00000131
	adds r1, r4, r2
	movs r0, #0x30
	strb r0, [r1]
_0810EF00:
	ldr r3, _0810EF6C @ =0x00000131
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0810EF7C
	adds r5, r4, #0
	adds r5, #0xe4
	ldrh r6, [r5]
	mov r8, r6
	subs r0, #1
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r5]
	adds r6, r4, #0
	adds r6, #0xf0
	strh r0, [r6]
	ldr r2, _0810EF70 @ =gKirbys
	ldr r0, _0810EF74 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, sb
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _0810EF4C
	adds r0, r5, #0
	bl sub_0814F274
	adds r0, r6, #0
	bl sub_0814F274
_0810EF4C:
	mov r2, r8
	strh r2, [r5]
	strh r2, [r6]
	ldr r3, _0810EF78 @ =0x00000137
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _0810EFAA
	movs r5, #0x9b
	lsls r5, r5, #1
	adds r0, r4, r5
	mov r6, sl
	strb r6, [r0]
	movs r0, #0
	strb r0, [r1]
	b _0810EFAA
	.align 2, 0
_0810EF6C: .4byte 0x00000131
_0810EF70: .4byte gKirbys
_0810EF74: .4byte gUnk_0203AD3C
_0810EF78: .4byte 0x00000137
_0810EF7C:
	ldr r2, _0810F03C @ =gKirbys
	ldr r0, _0810F040 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, sb
	adds r1, #0x60
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _0810EFF0
	adds r0, r4, #0
	adds r0, #0xe4
	bl sub_0814F274
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_0814F274
_0810EFAA:
	ldr r2, _0810F03C @ =gKirbys
	ldr r0, _0810F040 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0810EFF0
	adds r0, r4, #0
	adds r0, #0xea
	ldrh r1, [r0]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0810EFDA
	movs r0, #2
	movs r1, #0xd
	bl sub_0803D2A8
_0810EFDA:
	adds r0, r4, #0
	adds r0, #0xf6
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0810EFF0
	movs r0, #0x13
	movs r1, #0xc
	bl sub_0803D2A8
_0810EFF0:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0810F00E
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0810F00E
	ldr r3, _0810F044 @ =0x0000012F
	adds r1, r4, r3
	strb r0, [r1]
_0810F00E:
	movs r5, #0x90
	lsls r5, r5, #1
	adds r3, r4, r5
	movs r6, #0x92
	lsls r6, r6, #1
	adds r2, r4, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	beq _0810F0F2
	adds r0, r1, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r2, r0, r1
	cmp r2, #0
	blt _0810F048
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	bgt _0810F052
	b _0810F09C
	.align 2, 0
_0810F03C: .4byte gKirbys
_0810F040: .4byte gUnk_0203AD3C
_0810F044: .4byte 0x0000012F
_0810F048:
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _0810F09C
_0810F052:
	movs r5, #0x90
	lsls r5, r5, #1
	adds r2, r4, r5
	movs r6, #0
	ldrsh r0, [r2, r6]
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
	cmp r0, #0
	ble _0810F07A
	movs r6, #0x91
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	b _0810F086
_0810F07A:
	movs r3, #0x91
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
_0810F086:
	strh r0, [r2]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r2, r4, r5
	ldrh r1, [r2]
	ldr r0, _0810F098 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2]
	b _0810F0F2
	.align 2, 0
_0810F098: .4byte 0x00003FFF
_0810F09C:
	movs r6, #0x90
	lsls r6, r6, #1
	adds r2, r4, r6
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r5, #0x92
	lsls r5, r5, #1
	adds r3, r4, r5
	movs r6, #0
	ldrsh r1, [r3, r6]
	subs r0, r0, r1
	cmp r0, #0
	bge _0810F0D4
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r5, [r3]
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r0, r1
	blt _0810F0F2
	b _0810F0F0
_0810F0D4:
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r5, [r3]
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r0, r1
	bgt _0810F0F2
_0810F0F0:
	strh r5, [r2]
_0810F0F2:
	mov r0, sb
	ldr r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0810F126
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, sb
	str r1, [r2, #0xc]
	ldr r0, [sp]
	adds r0, #0xe3
	movs r1, #8
	strb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, #0xe3
	strb r1, [r0]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldr r5, _0810F138 @ =0x00000137
	adds r1, r4, r5
	strb r0, [r1]
_0810F126:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810F138: .4byte 0x00000137

	thumb_func_start sub_0810F13C
sub_0810F13C: @ 0x0810F13C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r5, #0
	mov r8, r5
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810F178
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r0, _0810F174 @ =gUnk_08D5FE14
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	subs r6, r2, r0
	b _0810F194
	.align 2, 0
_0810F174: .4byte gUnk_08D5FE14
_0810F178:
	mov r4, r8
	ldr r2, [r4, #0x40]
	asrs r2, r2, #8
	ldr r0, _0810F1B8 @ =gUnk_08D5FE14
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r2, r0
_0810F194:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	movs r4, #0
	ldr r1, _0810F1BC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	adds r7, #0x87
	mov sl, r7
	adds r7, r5, #0
	adds r7, #0x56
	str r7, [sp]
	mov r7, r8
	adds r7, #0xfc
	b _0810F1D4
	.align 2, 0
_0810F1B8: .4byte gUnk_08D5FE14
_0810F1BC: .4byte gUnk_020229D4
_0810F1C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810F1DC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0810F1D4:
	cmp r0, #0
	bne _0810F1C0
	orrs r2, r3
	str r2, [r1]
_0810F1DC:
	ldr r0, _0810F258 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
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
	movs r0, #0xd0
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r6, sl
	ldrb r0, [r6]
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
	ldr r2, [sp]
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	str r1, [r7]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _0810F260
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r0, _0810F25C @ =gUnk_08D5FE14
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r2, r0
	b _0810F27A
	.align 2, 0
_0810F258: .4byte gUnk_020229E0
_0810F25C: .4byte gUnk_08D5FE14
_0810F260:
	ldr r2, [r5, #0x40]
	asrs r2, r2, #8
	ldr r0, _0810F28C @ =gUnk_08D5FE14
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	subs r6, r2, r0
_0810F27A:
	movs r4, #0
	ldr r1, _0810F290 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _0810F294 @ =gUnk_020229E0
	b _0810F2AC
	.align 2, 0
_0810F28C: .4byte gUnk_08D5FE14
_0810F290: .4byte gUnk_020229D4
_0810F294: .4byte gUnk_020229E0
_0810F298:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0810F2B4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0810F2AC:
	cmp r0, #0
	bne _0810F298
	orrs r2, r3
	str r2, [r1]
_0810F2B4:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r7, sb
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd0
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sl
	ldrb r0, [r4]
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
	ldr r6, [sp]
	ldrb r0, [r6]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, r8
	str r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810F320
sub_0810F320: @ 0x0810F320
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0810F354 @ =ObjectMain
	ldr r2, _0810F358 @ =0x00000FFF
	ldr r1, _0810F35C @ =sub_081147F0
	str r1, [sp]
	movs r1, #0xe8
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0810F360
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0810F368
	.align 2, 0
_0810F354: .4byte ObjectMain
_0810F358: .4byte 0x00000FFF
_0810F35C: .4byte sub_081147F0
_0810F360:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0810F368:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xdc
	movs r2, #0
	str r2, [r0]
	adds r0, #6
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r0, #0x63
	ldrh r1, [r0]
	adds r0, #0x64
	movs r3, #0
	strh r1, [r0]
	subs r0, #3
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #0x2c
	str r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	subs r2, #8
	ands r0, r2
	movs r1, #3
	orrs r0, r1
	ldr r1, _0810F420 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x91
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _0810F424 @ =sub_08110F80
	str r0, [r4, #0x7c]
	movs r1, #4
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_08114528
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0810F420: .4byte 0x001080A0
_0810F424: .4byte sub_08110F80

	thumb_func_start sub_0810F428
sub_0810F428: @ 0x0810F428
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r2, [r0, #0x70]
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r3, [r2, #0x40]
	str r3, [r1, #0x40]
	ldr r4, [r2, #0x44]
	str r4, [r1, #0x44]
	mov r0, ip
	adds r0, #0xa0
	movs r2, #0
	ldrsh r6, [r0, r2]
	ldr r5, _0810F498 @ =gUnk_08D5FE14
	movs r0, #4
	ldrsh r1, [r1, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r6, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r3, r3, r2
	mov r1, ip
	str r3, [r1, #0x40]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r1, #0x44]
	mov r0, ip
	adds r0, #0xa2
	ldrh r0, [r0]
	ldrh r2, [r1, #4]
	adds r0, r0, r2
	ldr r1, _0810F49C @ =0x000003FF
	ands r0, r1
	mov r1, ip
	strh r0, [r1, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810F498: .4byte gUnk_08D5FE14
_0810F49C: .4byte 0x000003FF

	thumb_func_start sub_0810F4A0
sub_0810F4A0: @ 0x0810F4A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _0810F4D0 @ =sub_0810F5A4
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810F4D4
	movs r0, #0
	b _0810F4D8
	.align 2, 0
_0810F4D0: .4byte sub_0810F5A4
_0810F4D4:
	movs r0, #0x80
	lsls r0, r0, #2
_0810F4D8:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x9f
	movs r1, #0
	movs r0, #3
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0810F56A
	adds r3, r5, #0
	adds r3, #0xfc
	ldr r6, [r3]
	ldr r0, [r6, #0x78]
	ldr r1, _0810F594 @ =sub_0810F5A4
	cmp r0, r1
	beq _0810F524
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x78]
	cmp r0, r1
	bne _0810F56A
_0810F524:
	ldr r2, _0810F598 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810F59C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0810F5A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810F56A
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0x40
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x9f
	movs r1, #2
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r1, [r2]
	ldr r0, [r3]
	adds r0, #0x9e
	ldrb r0, [r0]
	adds r1, #0x9e
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, [r3]
	adds r0, #0x9f
	ldrb r0, [r0]
	adds r1, #0x9f
	strb r0, [r1]
_0810F56A:
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0810F594: .4byte sub_0810F5A4
_0810F598: .4byte gRngVal
_0810F59C: .4byte 0x00196225
_0810F5A0: .4byte 0x3C6EF35F

	thumb_func_start sub_0810F5A4
sub_0810F5A4: @ 0x0810F5A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x70]
	mov r8, r0
	mov r5, r8
	ldr r0, [r7, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0x97
	lsls r0, r0, #1
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810F5CA
	b _0810F76A
_0810F5CA:
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	mov sb, r0
	cmp r1, #0
	beq _0810F64C
	ldr r0, _0810F6BC @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0810F64C
	ldr r1, _0810F6C0 @ =gKirbys
	ldr r0, _0810F6C4 @ =gUnk_0203AD3C
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
	bne _0810F64C
	ldrb r0, [r7]
	cmp r0, #0
	bne _0810F610
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810F64C
_0810F610:
	ldr r1, _0810F6C8 @ =gUnk_08D60FA4
	ldr r4, _0810F6CC @ =gSongTable
	ldr r2, _0810F6D0 @ =0x00000D6C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810F634
	ldr r1, _0810F6D4 @ =0x00000D68
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810F64C
_0810F634:
	cmp r3, #0
	beq _0810F646
	ldr r0, _0810F6D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810F64C
_0810F646:
	ldr r0, _0810F6DC @ =0x000001AD
	bl m4aSongNumStart
_0810F64C:
	ldr r3, [r5, #0x40]
	str r3, [r7, #0x40]
	ldr r4, [r5, #0x44]
	str r4, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r6, [r0, r2]
	ldr r5, _0810F6E0 @ =gUnk_08D5FE14
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r6, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	lsls r0, r0, #8
	asrs r2, r2, #0x10
	adds r3, r3, r2
	str r3, [r7, #0x40]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r7, #0x44]
	ldrh r2, [r7, #4]
	adds r3, r2, #0
	adds r0, r7, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	adds r1, r2, r0
	ldr r0, _0810F6E4 @ =0x000003FF
	ands r1, r0
	strh r1, [r7, #4]
	mov r4, sb
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810F6E8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x9f
	cmp r1, r0
	bge _0810F70E
	b _0810F704
	.align 2, 0
_0810F6BC: .4byte gUnk_0203AD40
_0810F6C0: .4byte gKirbys
_0810F6C4: .4byte gUnk_0203AD3C
_0810F6C8: .4byte gUnk_08D60FA4
_0810F6CC: .4byte gSongTable
_0810F6D0: .4byte 0x00000D6C
_0810F6D4: .4byte 0x00000D68
_0810F6D8: .4byte gUnk_0203AD10
_0810F6DC: .4byte 0x000001AD
_0810F6E0: .4byte gUnk_08D5FE14
_0810F6E4: .4byte 0x000003FF
_0810F6E8:
	movs r1, #4
	ldrsh r0, [r7, r1]
	ldr r2, _0810F728 @ =0xFFFFFE00
	adds r0, r0, r2
	adds r2, r7, #0
	adds r2, #0x9f
	cmp r0, #0
	blt _0810F70E
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0810F728 @ =0xFFFFFE00
	adds r0, r0, r4
	cmp r0, #0
	bge _0810F70E
_0810F704:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0810F714
	subs r0, #1
	strb r0, [r2]
_0810F70E:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0810F76A
_0810F714:
	adds r1, r7, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	cmp r0, #0
	bne _0810F72C
	adds r0, r7, #0
	bl sub_081143F0
	b _0810F76A
	.align 2, 0
_0810F728: .4byte 0xFFFFFE00
_0810F72C:
	subs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r0, #0x44]
	ldr r0, [r7, #0x44]
	subs r2, r1, r0
	cmp r2, #0
	blt _0810F74C
	ldr r0, _0810F748 @ =0x00000FFF
	cmp r2, r0
	ble _0810F754
	b _0810F76A
	.align 2, 0
_0810F748: .4byte 0x00000FFF
_0810F74C:
	subs r1, r0, r1
	ldr r0, _0810F778 @ =0x00000FFF
	cmp r1, r0
	bgt _0810F76A
_0810F754:
	mov r0, r8
	adds r0, #0xfc
	ldr r0, [r0]
	bl sub_081143F0
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	bl sub_081143F0
_0810F76A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810F778: .4byte 0x00000FFF

	thumb_func_start sub_0810F77C
sub_0810F77C: @ 0x0810F77C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _0810F7C4 @ =sub_0810F818
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xa0
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x18
	strh r0, [r1]
	strh r2, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r3, [r0]
	subs r1, #3
	movs r0, #6
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810F7C8
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r2, r1, #0
	b _0810F7D0
	.align 2, 0
_0810F7C4: .4byte sub_0810F818
_0810F7C8:
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	adds r2, r0, #0
_0810F7D0:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0810F7EC
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_0810F7EC:
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0810F818
sub_0810F818: @ 0x0810F818
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810F834
	b _0810F9CA
_0810F834:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	adds r7, r0, #0
	cmp r1, #0
	beq _0810F900
	ldr r0, _0810F8D8 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0810F8B6
	ldr r1, _0810F8DC @ =gKirbys
	ldr r0, _0810F8E0 @ =gUnk_0203AD3C
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
	bne _0810F8B6
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810F87A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810F8B6
_0810F87A:
	ldr r1, _0810F8E4 @ =gUnk_08D60FA4
	ldr r5, _0810F8E8 @ =gSongTable
	ldr r2, _0810F8EC @ =0x00000D6C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810F89E
	ldr r1, _0810F8F0 @ =0x00000D68
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810F8B6
_0810F89E:
	cmp r3, #0
	beq _0810F8B0
	ldr r0, _0810F8F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810F8B6
_0810F8B0:
	ldr r0, _0810F8F8 @ =0x000001AD
	bl m4aSongNumStart
_0810F8B6:
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810F900
	ldr r2, _0810F8FC @ =gUnk_08D5FE14
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	b _0810F918
	.align 2, 0
_0810F8D8: .4byte gUnk_0203AD40
_0810F8DC: .4byte gKirbys
_0810F8E0: .4byte gUnk_0203AD3C
_0810F8E4: .4byte gUnk_08D60FA4
_0810F8E8: .4byte gSongTable
_0810F8EC: .4byte 0x00000D6C
_0810F8F0: .4byte 0x00000D68
_0810F8F4: .4byte gUnk_0203AD10
_0810F8F8: .4byte 0x000001AD
_0810F8FC: .4byte gUnk_08D5FE14
_0810F900:
	ldr r2, _0810F968 @ =gUnk_08D5FE14
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r6, #0x40]
	subs r0, r0, r1
_0810F918:
	str r0, [r4, #0x40]
	adds r5, r2, #0
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r3, [r0, r2]
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0810F96C
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, r3, r1
	b _0810F972
	.align 2, 0
_0810F968: .4byte gUnk_08D5FE14
_0810F96C:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r3
_0810F972:
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _0810F98E
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	b _0810F996
_0810F98E:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
_0810F996:
	str r0, [r4, #0x44]
	ldrh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r1, [r1]
	adds r1, r0, r1
	ldr r2, _0810F9D0 @ =0x000003FF
	ands r1, r2
	strh r1, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0810F9BE
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r6]
	movs r1, #1
	eors r0, r1
	strb r0, [r6]
_0810F9BE:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0810F9CA
	adds r0, r4, #0
	bl sub_081143F0
_0810F9CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0810F9D0: .4byte 0x000003FF

	thumb_func_start sub_0810F9D4
sub_0810F9D4: @ 0x0810F9D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _0810FA08 @ =sub_081144A0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r0, r2
	ldr r1, _0810FA0C @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xe1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _0810FA10
	cmp r1, #1
	beq _0810FA74
	b _0810FAB6
	.align 2, 0
_0810FA08: .4byte sub_081144A0
_0810FA0C: .4byte 0xFFFFFBFF
_0810FA10:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810FA28
	strh r1, [r4, #4]
	b _0810FA2A
_0810FA28:
	strh r2, [r4, #4]
_0810FA2A:
	adds r2, r4, #0
	adds r2, #0xa0
	movs r1, #0x90
	lsls r1, r1, #7
	strh r1, [r2]
	ldr r3, _0810FA70 @ =gUnk_08D5FE14
	movs r5, #4
	ldrsh r0, [r4, r5]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #4
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	b _0810FAB4
	.align 2, 0
_0810FA70: .4byte gUnk_08D5FE14
_0810FA74:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810FA9C
	ldr r0, _0810FA98 @ =gUnk_08D5FE14
	adds r0, r2, r0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	b _0810FAB0
	.align 2, 0
_0810FA98: .4byte gUnk_08D5FE14
_0810FA9C:
	ldr r0, _0810FB48 @ =gUnk_08D5FE14
	adds r0, r2, r0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
_0810FAB0:
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
_0810FAB4:
	str r0, [r4, #0x44]
_0810FAB6:
	ldr r0, [r4, #0x44]
	ldr r5, _0810FB4C @ =0xFFFF9200
	adds r0, r0, r5
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_081146B0
	ldr r1, _0810FB50 @ =gKirbys
	ldr r0, _0810FB54 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r5, #0xd4
	lsls r5, r5, #1
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0810FB40
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810FB02
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810FB40
_0810FB02:
	ldr r1, _0810FB58 @ =gUnk_08D60FA4
	ldr r4, _0810FB5C @ =gSongTable
	ldr r2, _0810FB60 @ =0x00000D44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810FB28
	movs r1, #0xd4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810FB40
_0810FB28:
	cmp r3, #0
	beq _0810FB3A
	ldr r0, _0810FB64 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810FB40
_0810FB3A:
	adds r0, r5, #0
	bl m4aSongNumStart
_0810FB40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810FB48: .4byte gUnk_08D5FE14
_0810FB4C: .4byte 0xFFFF9200
_0810FB50: .4byte gKirbys
_0810FB54: .4byte gUnk_0203AD3C
_0810FB58: .4byte gUnk_08D60FA4
_0810FB5C: .4byte gSongTable
_0810FB60: .4byte 0x00000D44
_0810FB64: .4byte gUnk_0203AD10

	thumb_func_start sub_0810FB68
sub_0810FB68: @ 0x0810FB68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810FC28 @ =sub_0810FC44
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810FB8E
	strh r1, [r2]
_0810FB8E:
	movs r0, #0xc
	strh r0, [r4, #4]
	ldr r1, _0810FC2C @ =gKirbys
	ldr r0, _0810FC30 @ =gUnk_0203AD3C
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
	bne _0810FBFE
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810FBBE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810FBFE
_0810FBBE:
	ldr r1, _0810FC34 @ =gUnk_08D60FA4
	ldr r5, _0810FC38 @ =gSongTable
	ldr r2, _0810FC3C @ =0x00000DB4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810FBE4
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810FBFE
_0810FBE4:
	cmp r3, #0
	beq _0810FBF6
	ldr r0, _0810FC40 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810FBFE
_0810FBF6:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810FBFE:
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810FC28: .4byte sub_0810FC44
_0810FC2C: .4byte gKirbys
_0810FC30: .4byte gUnk_0203AD3C
_0810FC34: .4byte gUnk_08D60FA4
_0810FC38: .4byte gSongTable
_0810FC3C: .4byte 0x00000DB4
_0810FC40: .4byte gUnk_0203AD10

	thumb_func_start sub_0810FC44
sub_0810FC44: @ 0x0810FC44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	mov ip, r0
	adds r5, r3, #0
	adds r0, #0xfc
	ldr r6, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, ip
	ldr r7, [r0]
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	movs r0, #0x97
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810FC74
	b _0810FD9A
_0810FC74:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	mov r8, r0
	cmp r1, #0
	beq _0810FC88
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #8]
_0810FC88:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810FCB8
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0810FCB4 @ =0xFFFFFA00
	adds r2, r1, #0
	cmp r0, r4
	blt _0810FCD0
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _0810FCDC
	b _0810FCDA
	.align 2, 0
_0810FCB4: .4byte 0xFFFFFA00
_0810FCB8:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r2, r1, #0
	cmp r0, r4
	ble _0810FCD4
_0810FCD0:
	strh r4, [r2]
	b _0810FCDC
_0810FCD4:
	ldr r1, _0810FD64 @ =0xFFFFFA00
	cmp r0, r1
	bge _0810FCDC
_0810FCDA:
	strh r1, [r2]
_0810FCDC:
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	ldr r1, [r3, #0x40]
	ldr r0, _0810FD68 @ =0xFFFFF400
	cmp r1, r0
	bge _0810FCF6
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _0810FD06
_0810FCF6:
	movs r0, #0x85
	lsls r0, r0, #9
	cmp r1, r0
	ble _0810FD9A
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0810FD9A
_0810FD06:
	ldr r0, [r3, #0x40]
	ldr r1, _0810FD68 @ =0xFFFFF400
	cmp r0, r1
	bge _0810FD10
	str r1, [r3, #0x40]
_0810FD10:
	ldr r0, [r3, #0x40]
	movs r1, #0x85
	lsls r1, r1, #9
	cmp r0, r1
	ble _0810FD1C
	str r1, [r3, #0x40]
_0810FD1C:
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r3, #0x44]
	movs r0, #0
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0xe0
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810FD9A
	adds r0, r7, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810FD9A
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0810FD9A
	movs r0, #0x93
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	cmp r2, #5
	bne _0810FD6C
	adds r0, r3, #0
	bl sub_081106F4
	b _0810FD9A
	.align 2, 0
_0810FD64: .4byte 0xFFFFFA00
_0810FD68: .4byte 0xFFFFF400
_0810FD6C:
	mov r4, r8
	ldr r0, [r4]
	ldr r1, _0810FD88 @ =0x00000127
	add r1, ip
	ldrb r0, [r0, #0xe]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0810FD94
	cmp r2, #4
	bne _0810FD8C
	adds r0, r3, #0
	bl sub_081103C8
	b _0810FD9A
	.align 2, 0
_0810FD88: .4byte 0x00000127
_0810FD8C:
	adds r0, r3, #0
	bl sub_0810FDA4
	b _0810FD9A
_0810FD94:
	adds r0, r3, #0
	bl sub_08110E60
_0810FD9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0810FDA4
sub_0810FDA4: @ 0x0810FDA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0810FE80 @ =sub_0810FE9C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0810FDE4
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_0810FDE4:
	movs r0, #0x24
	strh r0, [r4, #4]
	ldr r1, _0810FE84 @ =gKirbys
	ldr r0, _0810FE88 @ =gUnk_0203AD3C
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
	bne _0810FE54
	ldrb r0, [r4]
	cmp r0, #0
	bne _0810FE14
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0810FE54
_0810FE14:
	ldr r1, _0810FE8C @ =gUnk_08D60FA4
	ldr r5, _0810FE90 @ =gSongTable
	ldr r2, _0810FE94 @ =0x00000DB4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0810FE3A
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0810FE54
_0810FE3A:
	cmp r3, #0
	beq _0810FE4C
	ldr r0, _0810FE98 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0810FE54
_0810FE4C:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
_0810FE54:
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0810FE80: .4byte sub_0810FE9C
_0810FE84: .4byte gKirbys
_0810FE88: .4byte gUnk_0203AD3C
_0810FE8C: .4byte gUnk_08D60FA4
_0810FE90: .4byte gSongTable
_0810FE94: .4byte 0x00000DB4
_0810FE98: .4byte gUnk_0203AD10

	thumb_func_start sub_0810FE9C
sub_0810FE9C: @ 0x0810FE9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r0, #0x97
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0810FEC6
	b _08110390
_0810FEC6:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	beq _0810FED0
	b _0811004A
_0810FED0:
	ldr r2, _0810FF54 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0810FF58 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0810FF5C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _0810FF60 @ =0x00001999
	ldr r4, _0810FF64 @ =gUnk_0835738C
	mov ip, r4
	ldr r7, _0810FF68 @ =gUnk_020229D4
	adds r6, r5, #0
	adds r6, #0x56
	movs r4, #0x60
	adds r4, r4, r5
	mov r8, r4
	cmp r3, r0
	blt _0810FF0C
	adds r4, r0, #0
_0810FEFA:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	bhi _0810FF0C
	adds r0, r1, #1
	muls r0, r4, r0
	cmp r3, r0
	bge _0810FEFA
_0810FF0C:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _0810FF32
	ldr r1, [r2]
	ldr r0, _0810FF58 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0810FF5C @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0810FF32
	mov sb, r1
_0810FF32:
	mov r1, ip
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _0810FF48
	cmp r0, #0x25
	beq _0810FF48
	cmp r0, #0x1d
	beq _0810FF48
	cmp r0, #0x22
	bne _0810FF4C
_0810FF48:
	movs r2, #1
	mov sb, r2
_0810FF4C:
	movs r3, #0
	movs r2, #1
	b _0810FF7A
	.align 2, 0
_0810FF54: .4byte gRngVal
_0810FF58: .4byte 0x00196225
_0810FF5C: .4byte 0x3C6EF35F
_0810FF60: .4byte 0x00001999
_0810FF64: .4byte gUnk_0835738C
_0810FF68: .4byte gUnk_020229D4
_0810FF6C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _0810FF88
	movs r2, #1
	lsls r2, r3
_0810FF7A:
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0810FF6C
	orrs r1, r2
	str r1, [r7]
_0810FF88:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _081100B4 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
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
	mov r7, ip
	adds r0, r4, r7
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, sb
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
	ldrb r0, [r6]
	bl CreateObject
	adds r1, r0, #0
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, sl
	str r1, [r0]
	ldr r1, _081100B8 @ =gKirbys
	ldr r0, _081100BC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811004A
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811000E
	ldrb r0, [r6]
	cmp r0, r2
	bne _0811004A
_0811000E:
	ldr r1, _081100C0 @ =gUnk_08D60FA4
	ldr r4, _081100C4 @ =gSongTable
	ldr r2, _081100C8 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08110032
	ldr r7, _081100CC @ =0x00000B38
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811004A
_08110032:
	cmp r3, #0
	beq _08110044
	ldr r0, _081100D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811004A
_08110044:
	ldr r0, _081100D4 @ =0x00000167
	bl m4aSongNumStart
_0811004A:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x10
	beq _08110054
	b _081101CE
_08110054:
	ldr r2, _081100D8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081100DC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _081100E0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _081100E4 @ =0x00001999
	ldr r7, _081100E8 @ =gUnk_020229D4
	adds r6, r5, #0
	adds r6, #0x56
	movs r4, #0x60
	adds r4, r4, r5
	mov r8, r4
	ldr r3, _081100EC @ =gUnk_08357396
	mov ip, r3
	cmp r2, r0
	blt _08110090
	adds r3, r0, #0
_0811007E:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	bhi _08110090
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _0811007E
_08110090:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _081100AA
	cmp r0, #0x25
	beq _081100AA
	cmp r0, #0x1d
	beq _081100AA
	cmp r0, #0x22
	bne _081100AE
_081100AA:
	movs r2, #1
	mov sb, r2
_081100AE:
	movs r3, #0
	movs r2, #1
	b _081100FE
	.align 2, 0
_081100B4: .4byte gUnk_020229E0
_081100B8: .4byte gKirbys
_081100BC: .4byte gUnk_0203AD3C
_081100C0: .4byte gUnk_08D60FA4
_081100C4: .4byte gSongTable
_081100C8: .4byte 0x00000B3C
_081100CC: .4byte 0x00000B38
_081100D0: .4byte gUnk_0203AD10
_081100D4: .4byte 0x00000167
_081100D8: .4byte gRngVal
_081100DC: .4byte 0x00196225
_081100E0: .4byte 0x3C6EF35F
_081100E4: .4byte 0x00001999
_081100E8: .4byte gUnk_020229D4
_081100EC: .4byte gUnk_08357396
_081100F0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _0811010C
	movs r2, #1
	lsls r2, r3
_081100FE:
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _081100F0
	orrs r1, r2
	str r1, [r7]
_0811010C:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0811025C @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
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
	mov r7, ip
	adds r0, r4, r7
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, sb
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
	ldrb r0, [r6]
	bl CreateObject
	adds r1, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, sl
	str r1, [r0]
	ldr r1, _08110260 @ =gKirbys
	ldr r0, _08110264 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _081101CE
	ldrb r0, [r5]
	cmp r0, #0
	bne _08110192
	ldrb r0, [r6]
	cmp r0, r2
	bne _081101CE
_08110192:
	ldr r1, _08110268 @ =gUnk_08D60FA4
	ldr r4, _0811026C @ =gSongTable
	ldr r2, _08110270 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081101B6
	ldr r7, _08110274 @ =0x00000B38
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081101CE
_081101B6:
	cmp r3, #0
	beq _081101C8
	ldr r0, _08110278 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081101CE
_081101C8:
	ldr r0, _0811027C @ =0x00000167
	bl m4aSongNumStart
_081101CE:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x16
	beq _081101D8
	b _08110376
_081101D8:
	ldr r2, _08110280 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08110284 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08110288 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _0811028C @ =0x00001999
	ldr r7, _08110290 @ =gUnk_020229D4
	adds r6, r5, #0
	adds r6, #0x56
	movs r4, #0x60
	adds r4, r4, r5
	mov r8, r4
	ldr r4, _08110294 @ =gUnk_083573A0
	mov ip, r4
	cmp r3, r0
	blt _08110214
	adds r4, r0, #0
_08110202:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #8
	bhi _08110214
	adds r0, r1, #1
	muls r0, r4, r0
	cmp r3, r0
	bge _08110202
_08110214:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x1d
	bne _0811023A
	ldr r1, [r2]
	ldr r0, _08110284 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08110288 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0811023A
	movs r4, #0xa
_0811023A:
	mov r1, ip
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08110250
	cmp r0, #0x25
	beq _08110250
	cmp r0, #0x1d
	beq _08110250
	cmp r0, #0x22
	bne _08110254
_08110250:
	movs r2, #1
	mov sb, r2
_08110254:
	movs r3, #0
	movs r2, #1
	b _081102A6
	.align 2, 0
_0811025C: .4byte gUnk_020229E0
_08110260: .4byte gKirbys
_08110264: .4byte gUnk_0203AD3C
_08110268: .4byte gUnk_08D60FA4
_0811026C: .4byte gSongTable
_08110270: .4byte 0x00000B3C
_08110274: .4byte 0x00000B38
_08110278: .4byte gUnk_0203AD10
_0811027C: .4byte 0x00000167
_08110280: .4byte gRngVal
_08110284: .4byte 0x00196225
_08110288: .4byte 0x3C6EF35F
_0811028C: .4byte 0x00001999
_08110290: .4byte gUnk_020229D4
_08110294: .4byte gUnk_083573A0
_08110298:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _081102B4
	movs r2, #1
	lsls r2, r3
_081102A6:
	ldr r1, [r7]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08110298
	orrs r1, r2
	str r1, [r7]
_081102B4:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _081103A0 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
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
	mov r7, ip
	adds r0, r4, r7
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, sb
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
	ldrb r0, [r6]
	bl CreateObject
	adds r1, r0, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, sl
	str r1, [r0]
	ldr r1, _081103A4 @ =gKirbys
	ldr r0, _081103A8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _08110376
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811033A
	ldrb r0, [r6]
	cmp r0, r2
	bne _08110376
_0811033A:
	ldr r1, _081103AC @ =gUnk_08D60FA4
	ldr r4, _081103B0 @ =gSongTable
	ldr r2, _081103B4 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811035E
	ldr r7, _081103B8 @ =0x00000B38
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110376
_0811035E:
	cmp r3, #0
	beq _08110370
	ldr r0, _081103BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110376
_08110370:
	ldr r0, _081103C0 @ =0x00000167
	bl m4aSongNumStart
_08110376:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08110390
	ldr r1, _081103C4 @ =0x00000129
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08110E60
_08110390:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081103A0: .4byte gUnk_020229E0
_081103A4: .4byte gKirbys
_081103A8: .4byte gUnk_0203AD3C
_081103AC: .4byte gUnk_08D60FA4
_081103B0: .4byte gSongTable
_081103B4: .4byte 0x00000B3C
_081103B8: .4byte 0x00000B38
_081103BC: .4byte gUnk_0203AD10
_081103C0: .4byte 0x00000167
_081103C4: .4byte 0x00000129

	thumb_func_start sub_081103C8
sub_081103C8: @ 0x081103C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081103F0 @ =sub_081104C8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _081103F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _081103FC
	.align 2, 0
_081103F0: .4byte sub_081104C8
_081103F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_081103FC:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #2
	strh r0, [r4, #4]
	ldr r1, _081104B0 @ =gKirbys
	ldr r0, _081104B4 @ =gUnk_0203AD3C
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
	bne _08110484
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110444
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08110484
_08110444:
	ldr r1, _081104B8 @ =gUnk_08D60FA4
	ldr r5, _081104BC @ =gSongTable
	ldr r2, _081104C0 @ =0x00000DB4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811046A
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110484
_0811046A:
	cmp r3, #0
	beq _0811047C
	ldr r0, _081104C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110484
_0811047C:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
_08110484:
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081104B0: .4byte gKirbys
_081104B4: .4byte gUnk_0203AD3C
_081104B8: .4byte gUnk_08D60FA4
_081104BC: .4byte gSongTable
_081104C0: .4byte 0x00000DB4
_081104C4: .4byte gUnk_0203AD10

	thumb_func_start sub_081104C8
sub_081104C8: @ 0x081104C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r2, [r4, #8]
	movs r1, #4
	orrs r2, r1
	str r2, [r4, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081104E4
	b _081106D6
_081104E4:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0811051C
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x28
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _0811050C @ =0xFFFFFA00
	adds r2, r0, #0
	cmp r3, r1
	bge _08110510
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
	b _08110540
	.align 2, 0
_0811050C: .4byte 0xFFFFFA00
_08110510:
	movs r0, #0xc0
	lsls r0, r0, #3
	cmp r3, r0
	ble _08110540
	strh r0, [r2]
	b _08110540
_0811051C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r2, r1, #0
	cmp r0, r3
	ble _08110538
	strh r3, [r2]
	b _08110540
_08110538:
	ldr r1, _08110584 @ =0xFFFFFA00
	cmp r0, r1
	bge _08110540
	strh r1, [r2]
_08110540:
	ldr r1, [r4, #8]
	movs r5, #1
	ands r1, r5
	cmp r1, #0
	beq _08110620
	ldr r0, [r4, #0x40]
	ldr r1, _08110588 @ =0xFFFFF400
	cmp r0, r1
	blt _08110554
	b _081106D6
_08110554:
	str r1, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811063A
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0811058C
	ldr r0, [r4, #8]
	orrs r0, r5
	b _08110594
	.align 2, 0
_08110584: .4byte 0xFFFFFA00
_08110588: .4byte 0xFFFFF400
_0811058C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08110594:
	str r0, [r4, #8]
	ldr r1, _08110608 @ =gKirbys
	ldr r0, _0811060C @ =gUnk_0203AD3C
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
	beq _081105B4
	b _081106D6
_081105B4:
	ldrb r0, [r4]
	cmp r0, #0
	bne _081105C6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _081105C6
	b _081106D6
_081105C6:
	ldr r1, _08110610 @ =gUnk_08D60FA4
	ldr r4, _08110614 @ =gSongTable
	ldr r2, _08110618 @ =0x00000DB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081105EC
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081106D6
_081105EC:
	cmp r3, #0
	beq _081105FE
	ldr r0, _0811061C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081106D6
_081105FE:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _081106D6
	.align 2, 0
_08110608: .4byte gKirbys
_0811060C: .4byte gUnk_0203AD3C
_08110610: .4byte gUnk_08D60FA4
_08110614: .4byte gSongTable
_08110618: .4byte 0x00000DB4
_0811061C: .4byte gUnk_0203AD10
_08110620:
	ldr r0, [r4, #0x40]
	movs r3, #0x85
	lsls r3, r3, #9
	cmp r0, r3
	ble _081106D6
	str r3, [r4, #0x40]
	strh r1, [r2]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08110642
_0811063A:
	adds r0, r4, #0
	bl sub_0810FDA4
	b _081106D6
_08110642:
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r0, #0x44]
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _08110660
	ldr r0, [r4, #8]
	orrs r0, r5
	b _08110668
_08110660:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08110668:
	str r0, [r4, #8]
	ldr r1, _081106DC @ =gKirbys
	ldr r0, _081106E0 @ =gUnk_0203AD3C
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
	bne _081106D6
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110696
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081106D6
_08110696:
	ldr r1, _081106E4 @ =gUnk_08D60FA4
	ldr r4, _081106E8 @ =gSongTable
	ldr r2, _081106EC @ =0x00000DB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081106BC
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081106D6
_081106BC:
	cmp r3, #0
	beq _081106CE
	ldr r0, _081106F0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081106D6
_081106CE:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
_081106D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081106DC: .4byte gKirbys
_081106E0: .4byte gUnk_0203AD3C
_081106E4: .4byte gUnk_08D60FA4
_081106E8: .4byte gSongTable
_081106EC: .4byte 0x00000DB4
_081106F0: .4byte gUnk_0203AD10

	thumb_func_start sub_081106F4
sub_081106F4: @ 0x081106F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08110714 @ =sub_0811076C
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0xfc
	lsls r0, r0, #7
	cmp r1, r0
	ble _08110718
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08110720
	.align 2, 0
_08110714: .4byte sub_0811076C
_08110718:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08110720:
	str r0, [r4, #8]
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #2
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x28
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811076C
sub_0811076C: @ 0x0811076C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	movs r2, #0x97
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08110788
	b _081109A6
_08110788:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #1
	bne _08110810
	ands r1, r0
	cmp r1, #0
	beq _081107C4
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x40
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _081107B4 @ =0xFFFFFA00
	adds r5, r0, #0
	cmp r2, r1
	bge _081107B8
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5]
	b _081107E8
	.align 2, 0
_081107B4: .4byte 0xFFFFFA00
_081107B8:
	movs r0, #0xc0
	lsls r0, r0, #3
	cmp r2, r0
	ble _081107E8
	strh r0, [r5]
	b _081107E8
_081107C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r5, r1, #0
	cmp r0, r2
	ble _081107E0
	strh r2, [r5]
	b _081107E8
_081107E0:
	ldr r1, _08110804 @ =0xFFFFFA00
	cmp r0, r1
	bge _081107E8
	strh r1, [r5]
_081107E8:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08110808 @ =0xFE300000
	cmp r0, r1
	blt _081107FC
	b _081108FE
_081107FC:
	ldr r0, _0811080C @ =0x0000FE30
	strh r0, [r2]
	b _081108FE
	.align 2, 0
_08110804: .4byte 0xFFFFFA00
_08110808: .4byte 0xFE300000
_0811080C: .4byte 0x0000FE30
_08110810:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0811083C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08110838 @ =0xFFFFFB00
	adds r5, r1, #0
	cmp r0, r2
	blt _08110854
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	ble _08110860
	b _0811085E
	.align 2, 0
_08110838: .4byte 0xFFFFFB00
_0811083C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r5, r1, #0
	cmp r0, r2
	ble _08110858
_08110854:
	strh r2, [r5]
	b _08110860
_08110858:
	ldr r1, _08110884 @ =0xFFFFFB00
	cmp r0, r1
	bge _08110860
_0811085E:
	strh r1, [r5]
_08110860:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08110888
	subs r1, #0x4d
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _081108FE
	strh r2, [r1]
	b _081108FE
	.align 2, 0
_08110884: .4byte 0xFFFFFB00
_08110888:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _081108FE
	ldr r1, _08110938 @ =gKirbys
	ldr r0, _0811093C @ =gUnk_0203AD3C
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
	bne _081108FE
	ldrb r0, [r4]
	cmp r0, #0
	bne _081108BE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081108FE
_081108BE:
	ldr r1, _08110940 @ =gUnk_08D60FA4
	ldr r6, _08110944 @ =gSongTable
	ldr r2, _08110948 @ =0x00000DB4
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081108E4
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081108FE
_081108E4:
	cmp r3, #0
	beq _081108F6
	ldr r0, _0811094C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081108FE
_081108F6:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl m4aSongNumStart
_081108FE:
	ldr r1, [r4, #8]
	movs r3, #1
	ands r1, r3
	cmp r1, #0
	beq _08110958
	ldr r0, [r4, #0x40]
	ldr r1, _08110950 @ =0xFFFFF400
	cmp r0, r1
	bge _081109A6
	str r1, [r4, #0x40]
	movs r1, #0
	strh r1, [r5]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08110998
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldr r2, _08110954 @ =0x00000127
	adds r1, r7, r2
	ldrb r0, [r0, #0xe]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08110984
	b _08110990
	.align 2, 0
_08110938: .4byte gKirbys
_0811093C: .4byte gUnk_0203AD3C
_08110940: .4byte gUnk_08D60FA4
_08110944: .4byte gSongTable
_08110948: .4byte 0x00000DB4
_0811094C: .4byte gUnk_0203AD10
_08110950: .4byte 0xFFFFF400
_08110954: .4byte 0x00000127
_08110958:
	ldr r0, [r4, #0x40]
	movs r2, #0x85
	lsls r2, r2, #9
	cmp r0, r2
	ble _081109A6
	str r2, [r4, #0x40]
	strh r1, [r5]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08110998
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldr r2, _0811098C @ =0x00000127
	adds r1, r7, r2
	ldrb r0, [r0, #0xe]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08110990
_08110984:
	adds r0, r4, #0
	bl sub_081109AC
	b _081109A6
	.align 2, 0
_0811098C: .4byte 0x00000127
_08110990:
	adds r0, r4, #0
	bl sub_0810FDA4
	b _081109A6
_08110998:
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	eors r0, r3
	str r0, [r4, #8]
	strh r1, [r5]
_081109A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081109AC
sub_081109AC: @ 0x081109AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08110A1C @ =sub_081145EC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _081109EC
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_081109EC:
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08110A1C: .4byte sub_081145EC

	thumb_func_start sub_08110A20
sub_08110A20: @ 0x08110A20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _08110A88 @ =sub_08110B64
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08110A8C @ =0x0000012D
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _08110A90 @ =0x00000127
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08110A54
	subs r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08110A60
_08110A54:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #2
	bne _08110A64
_08110A60:
	movs r0, #1
	ands r1, r0
_08110A64:
	ldr r1, _08110A8C @ =0x0000012D
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xe0
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _08110AA4
	cmp r1, #1
	bgt _08110A94
	cmp r1, #0
	beq _08110A9A
	b _08110AB4
	.align 2, 0
_08110A88: .4byte sub_08110B64
_08110A8C: .4byte 0x0000012D
_08110A90: .4byte 0x00000127
_08110A94:
	cmp r1, #2
	beq _08110AAA
	b _08110AB4
_08110A9A:
	movs r3, #0xc0
	lsls r3, r3, #5
	movs r6, #0xb0
	lsls r6, r6, #6
	b _08110ABC
_08110AA4:
	movs r3, #0xc0
	lsls r3, r3, #5
	b _08110AB8
_08110AAA:
	movs r3, #0xe8
	lsls r3, r3, #8
	movs r6, #0xb0
	lsls r6, r6, #6
	b _08110ABC
_08110AB4:
	movs r3, #0xe8
	lsls r3, r3, #8
_08110AB8:
	movs r6, #0x84
	lsls r6, r6, #8
_08110ABC:
	ldr r0, _08110B5C @ =0x0000012D
	adds r1, r5, r0
	ldrb r1, [r1]
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldr r1, _08110B60 @ =0x00000127
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08110AE6
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08110AF2
_08110AE6:
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #2
	bne _08110AF8
_08110AF2:
	movs r0, #0x80
	lsls r0, r0, #9
	subs r3, r0, r3
_08110AF8:
	ldr r2, _08110B5C @ =0x0000012D
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	subs r0, r3, r0
	asrs r1, r0, #5
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	asrs r1, r3, #8
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x44]
	subs r0, r0, r6
	asrs r0, r0, #5
	adds r2, r4, #0
	adds r2, #0x52
	strh r0, [r2]
	asrs r0, r6, #8
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x91
	movs r1, #0xfd
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08110B5C: .4byte 0x0000012D
_08110B60: .4byte 0x00000127

	thumb_func_start sub_08110B64
sub_08110B64: @ 0x08110B64
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	ldr r1, [r3, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r3, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _08110C04
	adds r2, r3, #0
	adds r2, #0x50
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _08110BB6
	cmp r0, #0
	ble _08110BA0
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	ble _08110BB6
	b _08110BB0
_08110BA0:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bge _08110BB6
_08110BB0:
	lsls r0, r1, #8
	str r0, [r3, #0x40]
	strh r4, [r2]
_08110BB6:
	adds r2, r3, #0
	adds r2, #0x52
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08110BF0
	cmp r0, #0
	ble _08110BD8
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa2
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08110BF0
	b _08110BE8
_08110BD8:
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	adds r1, r3, #0
	adds r1, #0xa2
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	ble _08110BF0
_08110BE8:
	lsls r0, r1, #8
	str r0, [r3, #0x44]
	movs r0, #0
	strh r0, [r2]
_08110BF0:
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _08110C04
	ldr r0, [r3, #8]
	ldr r1, _08110C0C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0811461C
_08110C04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08110C0C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08110C10
sub_08110C10: @ 0x08110C10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r2, r0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08110C4E
	ldr r0, [r5]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r1, [r1]
	adds r0, #0x85
	strb r1, [r0]
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_08111534
	adds r0, r4, #0
	bl sub_08114674
	b _08110C60
_08110C4E:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08110C60
	adds r0, r4, #0
	bl sub_08110E60
_08110C60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08110C68
sub_08110C68: @ 0x08110C68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r2, _08110CB0 @ =sub_08110DEC
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08110CB4 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r1, _08110CB8 @ =0x0000012D
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _08110CD2
	cmp r1, #1
	bgt _08110CBC
	cmp r1, #0
	beq _08110CC6
	b _08110CF0
	.align 2, 0
_08110CB0: .4byte sub_08110DEC
_08110CB4: .4byte 0xFFFFFBFF
_08110CB8: .4byte 0x0000012D
_08110CBC:
	cmp r1, #2
	beq _08110CD8
	cmp r1, #3
	beq _08110CE4
	b _08110CF0
_08110CC6:
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #6
	b _08110CEE
_08110CD2:
	movs r0, #0xc0
	lsls r0, r0, #5
	b _08110CE8
_08110CD8:
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #6
	b _08110CEE
_08110CE4:
	movs r0, #0xe8
	lsls r0, r0, #8
_08110CE8:
	str r0, [r4, #0x40]
	movs r0, #0x84
	lsls r0, r0, #8
_08110CEE:
	str r0, [r4, #0x44]
_08110CF0:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldr r2, _08110DC8 @ =0x00000127
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08110D18
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08110D24
_08110D18:
	movs r2, #0x93
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, #2
	bne _08110D2E
_08110D24:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	str r0, [r4, #0x40]
_08110D2E:
	ldr r0, _08110DCC @ =0x0000012D
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #0
	strb r0, [r2]
	ldr r0, [r4, #0x44]
	ldr r2, _08110DD0 @ =0xFFFF9200
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf6
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r4, #4]
	ldr r1, _08110DD4 @ =gKirbys
	ldr r0, _08110DD8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r5, #0xd4
	lsls r5, r5, #1
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08110DC2
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110D84
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08110DC2
_08110D84:
	ldr r1, _08110DDC @ =gUnk_08D60FA4
	ldr r4, _08110DE0 @ =gSongTable
	ldr r2, _08110DE4 @ =0x00000D44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08110DAA
	movs r1, #0xd4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110DC2
_08110DAA:
	cmp r3, #0
	beq _08110DBC
	ldr r0, _08110DE8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110DC2
_08110DBC:
	adds r0, r5, #0
	bl m4aSongNumStart
_08110DC2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08110DC8: .4byte 0x00000127
_08110DCC: .4byte 0x0000012D
_08110DD0: .4byte 0xFFFF9200
_08110DD4: .4byte gKirbys
_08110DD8: .4byte gUnk_0203AD3C
_08110DDC: .4byte gUnk_08D60FA4
_08110DE0: .4byte gSongTable
_08110DE4: .4byte 0x00000D44
_08110DE8: .4byte gUnk_0203AD10

	thumb_func_start sub_08110DEC
sub_08110DEC: @ 0x08110DEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08110E5A
	ldr r0, _08110E24 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08110E28 @ =sub_08110C10
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08110E2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08110E34
	.align 2, 0
_08110E24: .4byte 0xFFFFFDFF
_08110E28: .4byte sub_08110C10
_08110E2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08110E34:
	str r0, [r4, #8]
	ldr r1, [r4, #0x44]
	ldr r0, _08110E48 @ =0x000057FF
	cmp r1, r0
	bgt _08110E4C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _08110E52
	.align 2, 0
_08110E48: .4byte 0x000057FF
_08110E4C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_08110E52:
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08110E5A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08110E60
sub_08110E60: @ 0x08110E60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08110F00 @ =sub_081144EC
	movs r1, #2
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08110F04 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08110F08 @ =gKirbys
	ldr r0, _08110F0C @ =gUnk_0203AD3C
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
	bne _08110EF8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08110EBC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08110EF8
_08110EBC:
	ldr r1, _08110F10 @ =gUnk_08D60FA4
	ldr r4, _08110F14 @ =gSongTable
	ldr r2, _08110F18 @ =0x00000D3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08110EE0
	ldr r1, _08110F1C @ =0x00000D38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08110EF8
_08110EE0:
	cmp r3, #0
	beq _08110EF2
	ldr r0, _08110F20 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08110EF8
_08110EF2:
	ldr r0, _08110F24 @ =0x000001A7
	bl m4aSongNumStart
_08110EF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08110F00: .4byte sub_081144EC
_08110F04: .4byte 0xFFFFFBFF
_08110F08: .4byte gKirbys
_08110F0C: .4byte gUnk_0203AD3C
_08110F10: .4byte gUnk_08D60FA4
_08110F14: .4byte gSongTable
_08110F18: .4byte 0x00000D3C
_08110F1C: .4byte 0x00000D38
_08110F20: .4byte gUnk_0203AD10
_08110F24: .4byte 0x000001A7

	thumb_func_start sub_08110F28
sub_08110F28: @ 0x08110F28
	adds r2, r0, #0
	ldr r0, _08110F7C @ =sub_08114578
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #8
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	movs r0, #0x40
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x91
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x97
	movs r0, #0xea
	strb r0, [r1]
	bx lr
	.align 2, 0
_08110F7C: .4byte sub_08114578

	thumb_func_start sub_08110F80
sub_08110F80: @ 0x08110F80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r5, [r7, #0x70]
	mov sb, r5
	mov r8, r7
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	ands r0, r2
	cmp r0, #0
	bne _08110FAC
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08110FCA
_08110FAC:
	ldr r1, [r7, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08110FCA
	adds r0, r7, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_0809DA30
_08110FCA:
	ldr r0, _081110FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r7, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r3, [r6]
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08110FE4
	b _081111B4
_08110FE4:
	adds r1, r7, #0
	adds r1, #0x80
	ldrh r2, [r1]
	mov r0, r8
	adds r0, #0xe4
	strh r2, [r0]
	ldr r2, _08111100 @ =0x0000270F
	strh r2, [r1]
	movs r4, #0
	ldrsh r3, [r0, r4]
	mov sl, r1
	str r0, [sp]
	mov r4, r8
	adds r4, #0xe3
	cmp r3, r2
	bne _08111006
	b _0811115C
_08111006:
	ldr r1, _08111104 @ =gKirbys
	ldr r0, _08111108 @ =gUnk_0203AD3C
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
	bne _0811106E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0811102E
	ldrb r0, [r6]
	cmp r0, r2
	bne _0811106E
_0811102E:
	ldr r1, _0811110C @ =gUnk_08D60FA4
	ldr r6, _08111110 @ =gSongTable
	ldr r2, _08111114 @ =0x00000D84
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111054
	movs r4, #0xd8
	lsls r4, r4, #4
	adds r0, r6, r4
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811106E
_08111054:
	cmp r3, #0
	beq _08111066
	ldr r0, _08111118 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811106E
_08111066:
	movs r0, #0xd8
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811106E:
	mov r4, r8
	adds r4, #0xe3
	movs r1, #0
	movs r0, #8
	strb r0, [r4]
	movs r0, #0x97
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r0, #1
	strb r0, [r2]
	ldr r2, _0811111C @ =0x00000137
	adds r0, r5, r2
	strb r1, [r0]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r5, r3
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, #0xf3
	adds r6, r5, r0
	mov r1, sl
	ldrb r0, [r1]
	ldr r2, [sp]
	ldrb r1, [r2]
	subs r0, r0, r1
	ldrb r3, [r6]
	adds r0, r0, r3
	strb r0, [r6]
	mov r2, sb
	adds r2, #0x80
	mov r0, sl
	ldrh r1, [r0]
	ldr r3, [sp]
	ldrh r0, [r3]
	subs r1, r1, r0
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sb
	bl sub_08034E14
	mov r0, sb
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _0811115C
	ldrb r2, [r6]
	ldr r0, _08111120 @ =gUnk_0203AD30
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #5
	cmp r2, r0
	blt _0811115C
	adds r0, r7, #0
	bl sub_08110F28
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r7, r0
	bne _08111124
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r0, [r0]
	bl sub_08110E60
	b _08111128
	.align 2, 0
_081110FC: .4byte gUnk_03000510
_08111100: .4byte 0x0000270F
_08111104: .4byte gKirbys
_08111108: .4byte gUnk_0203AD3C
_0811110C: .4byte gUnk_08D60FA4
_08111110: .4byte gSongTable
_08111114: .4byte 0x00000D84
_08111118: .4byte gUnk_0203AD10
_0811111C: .4byte 0x00000137
_08111120: .4byte gUnk_0203AD30
_08111124:
	bl sub_08110E60
_08111128:
	ldr r0, _08111154 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x93
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r1, r5, r3
	strb r0, [r1]
	ldr r4, _08111158 @ =0x0000012D
	adds r1, r5, r4
	strb r0, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	movs r0, #4
	mov r3, r8
	strb r0, [r3]
	b _081111B4
	.align 2, 0
_08111154: .4byte 0x00000129
_08111158: .4byte 0x0000012D
_0811115C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _081111AC
	ldr r1, _081111A8 @ =gUnk_08357384
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	mov r2, sb
	adds r2, #0x54
	strb r1, [r2]
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	adds r0, #0x54
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldrb r1, [r2]
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _081111B4
	movs r2, #0x97
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r0, [r1]
	b _081111B4
	.align 2, 0
_081111A8: .4byte gUnk_08357384
_081111AC:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
_081111B4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081111C4
sub_081111C4: @ 0x081111C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xb4
	ldr r2, [r5]
	cmp r2, #0
	bne _081111D4
	b _0811130E
_081111D4:
	adds r1, r6, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #7
	bhi _0811121E
	lsls r0, r0, #2
	ldr r1, _081111E8 @ =_081111EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081111E8: .4byte _081111EC
_081111EC: @ jump table
	.4byte _0811120C @ case 0
	.4byte _0811120C @ case 1
	.4byte _08111212 @ case 2
	.4byte _08111218 @ case 3
	.4byte _0811120C @ case 4
	.4byte _0811120C @ case 5
	.4byte _0811120C @ case 6
	.4byte _0811120C @ case 7
_0811120C:
	movs r0, #0x19
	strb r0, [r5, #0x1a]
	b _08111222
_08111212:
	movs r0, #0x1a
	strb r0, [r5, #0x1a]
	b _08111222
_08111218:
	movs r0, #0x1b
	strb r0, [r5, #0x1a]
	b _08111222
_0811121E:
	adds r0, r2, #0
	b _08111236
_08111222:
	ldr r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08111240
	ldr r0, [r5]
	cmp r0, #0
	beq _0811130E
_08111236:
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
	b _0811130E
_08111240:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08111254
	ldr r0, [r5, #8]
	ldr r1, _08111250 @ =0xFFFFFBFF
	ands r0, r1
	b _08111258
	.align 2, 0
_08111250: .4byte 0xFFFFFBFF
_08111254:
	ldr r0, [r5, #8]
	orrs r0, r2
_08111258:
	str r0, [r5, #8]
	ldr r0, [r6, #8]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08111278
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _08111278
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	bl sub_08155128
_08111278:
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	ldr r3, _081112F8 @ =gCurLevelInfo
	ldr r7, _081112FC @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r0, ip
	strh r0, [r5, #0x10]
	ldr r1, [r6, #0x44]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0811130E
	ldr r2, _08111300 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811130E
	ldr r1, _08111304 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08111308
	adds r0, r5, #0
	bl sub_081564D8
	b _0811130E
	.align 2, 0
_081112F8: .4byte gCurLevelInfo
_081112FC: .4byte gUnk_0203AD3C
_08111300: .4byte gKirbys
_08111304: .4byte gUnk_0203AD18
_08111308:
	adds r0, r5, #0
	bl sub_0815604C
_0811130E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08111314
sub_08111314: @ 0x08111314
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r5
	adds r6, r5, #0
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov sb, r0
	movs r4, #0
	ldr r1, _08111358 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _0811135C @ =gUnk_020229E0
	mov ip, r7
	mov r7, sl
	adds r7, #0x87
	str r7, [sp]
	movs r7, #0x56
	adds r7, r7, r5
	mov sl, r7
	b _08111374
	.align 2, 0
_08111358: .4byte gUnk_020229D4
_0811135C: .4byte gUnk_020229E0
_08111360:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0811137C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08111374:
	cmp r0, #0
	bne _08111360
	orrs r2, r3
	str r2, [r1]
_0811137C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r4, sb
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd1
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r7, [sp]
	ldrb r0, [r7]
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
	mov r2, sl
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	movs r4, #0x82
	lsls r4, r4, #1
	adds r1, r6, r4
	str r0, [r1]
	bl sub_08113BAC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081113EC
sub_081113EC: @ 0x081113EC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08111420 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08111424 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111428
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111430
	.align 2, 0
_08111420: .4byte ObjectMain
_08111424: .4byte ObjectDestroy
_08111428:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111430:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0x85
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r1, r6
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	ldr r1, _08111514 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _08111518 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #0xe
	rsbs r1, r1, #0
	subs r2, #6
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r1, _0811151C @ =gKirbys
	ldr r0, _08111520 @ =gUnk_0203AD3C
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
	bne _0811150A
	ldrb r0, [r4]
	cmp r0, #0
	bne _081114CE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811150A
_081114CE:
	ldr r1, _08111524 @ =gUnk_08D60FA4
	ldr r5, _08111528 @ =gSongTable
	ldr r2, _0811152C @ =0x00000DA4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081114F4
	movs r1, #0xda
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811150A
_081114F4:
	cmp r3, #0
	beq _08111502
	ldr r0, _08111530 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _0811150A
_08111502:
	movs r0, #0xda
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811150A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08111514: .4byte 0x001080A0
_08111518: .4byte sub_0809F840
_0811151C: .4byte gKirbys
_08111520: .4byte gUnk_0203AD3C
_08111524: .4byte gUnk_08D60FA4
_08111528: .4byte gSongTable
_0811152C: .4byte 0x00000DA4
_08111530: .4byte gUnk_0203AD10

	thumb_func_start sub_08111534
sub_08111534: @ 0x08111534
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r1, #0x40]
	str r0, [r3, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, _081115D0 @ =sub_08114714
	str r0, [r3, #0x78]
	movs r0, #0x12
	strh r0, [r3, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x24]
	ldr r1, _081115D4 @ =gKirbys
	ldr r0, _081115D8 @ =gUnk_0203AD3C
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
	bne _081115C8
	ldrb r0, [r3]
	cmp r0, #0
	bne _0811158C
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081115C8
_0811158C:
	ldr r1, _081115DC @ =gUnk_08D60FA4
	ldr r4, _081115E0 @ =gSongTable
	ldr r2, _081115E4 @ =0x00000DAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081115B0
	ldr r1, _081115E8 @ =0x00000DA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081115C8
_081115B0:
	cmp r3, #0
	beq _081115C2
	ldr r0, _081115EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081115C8
_081115C2:
	ldr r0, _081115F0 @ =0x000001B5
	bl m4aSongNumStart
_081115C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081115D0: .4byte sub_08114714
_081115D4: .4byte gKirbys
_081115D8: .4byte gUnk_0203AD3C
_081115DC: .4byte gUnk_08D60FA4
_081115E0: .4byte gSongTable
_081115E4: .4byte 0x00000DAC
_081115E8: .4byte 0x00000DA8
_081115EC: .4byte gUnk_0203AD10
_081115F0: .4byte 0x000001B5

	thumb_func_start sub_081115F4
sub_081115F4: @ 0x081115F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x85
	ldrb r6, [r0]
	cmp r6, #1
	beq _0811161A
	cmp r6, #1
	bgt _0811160C
	cmp r6, #0
	beq _08111664
	b _08111614
_0811160C:
	cmp r6, #2
	beq _08111648
	cmp r6, #3
	beq _08111692
_08111614:
	adds r4, r5, #0
	adds r4, #0x52
	b _0811173E
_0811161A:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r6, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0803E2B0
	b _0811173E
_08111648:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xec
	lsls r0, r0, #3
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r6, [r0]
	b _081116F4
_08111664:
	adds r1, r5, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	strh r6, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r2, [r0]
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xe
	bl sub_0803E2B0
	b _0811173E
_08111692:
	adds r0, r5, #0
	bl sub_0803D46C
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r3, _081116C0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _081116C4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _081116C8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r2, r1, #0x10
	ands r2, r6
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _081116CC
	movs r1, #1
	movs r0, #3
	b _081116D0
	.align 2, 0
_081116C0: .4byte gRngVal
_081116C4: .4byte 0x00196225
_081116C8: .4byte 0x3C6EF35F
_081116CC:
	movs r1, #3
	movs r0, #1
_081116D0:
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _0811170A
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0xec
	lsls r0, r0, #3
	strh r0, [r1]
	adds r4, r5, #0
	adds r4, #0x52
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r4]
	adds r1, #0x33
	movs r0, #2
	strb r0, [r1]
_081116F4:
	movs r1, #0xd
	rsbs r1, r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xd
	bl sub_0803E2B0
	b _0811173E
_0811170A:
	subs r0, r2, r1
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x52
	cmp r0, #0
	bge _0811173E
	adds r2, r5, #0
	adds r2, #0x50
	movs r3, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	strh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x83
	strb r3, [r0]
	subs r1, #0xe
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0xe
	bl sub_0803E2B0
_0811173E:
	ldr r1, [r5, #0x44]
	ldr r0, _08111770 @ =0x000057FF
	cmp r1, r0
	bgt _0811174C
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
_0811174C:
	ldr r1, [r5, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08111774
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08111784
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811178C
	.align 2, 0
_08111770: .4byte 0x000057FF
_08111774:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08111784
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _0811178C
_08111784:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0811178C:
	str r0, [r5, #8]
	ldr r0, _08111808 @ =sub_08114708
	str r0, [r5, #0x78]
	movs r0, #0x12
	strh r0, [r5, #4]
	ldr r1, _0811180C @ =gKirbys
	ldr r0, _08111810 @ =gUnk_0203AD3C
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
	bne _08111800
	ldrb r0, [r5]
	cmp r0, #0
	bne _081117C2
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111800
_081117C2:
	ldr r1, _08111814 @ =gUnk_08D60FA4
	ldr r4, _08111818 @ =gSongTable
	ldr r2, _0811181C @ =0x0000053C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081117E8
	movs r1, #0xa7
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111800
_081117E8:
	cmp r3, #0
	beq _081117FA
	ldr r0, _08111820 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08111800
_081117FA:
	movs r0, #0xa7
	bl m4aSongNumStart
_08111800:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08111808: .4byte sub_08114708
_0811180C: .4byte gKirbys
_08111810: .4byte gUnk_0203AD3C
_08111814: .4byte gUnk_08D60FA4
_08111818: .4byte gSongTable
_0811181C: .4byte 0x0000053C
_08111820: .4byte gUnk_0203AD10

	thumb_func_start sub_08111824
sub_08111824: @ 0x08111824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	mov sb, r5
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _08111850 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _08111854 @ =gUnk_020229E0
	b _0811186C
	.align 2, 0
_08111850: .4byte gUnk_020229D4
_08111854: .4byte gUnk_020229E0
_08111858:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08111874
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0811186C:
	cmp r0, #0
	bne _08111858
	orrs r2, r3
	str r2, [r1]
_08111874:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd2
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r4, r0, #0
	str r6, [r4, #0x70]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, sb
	str r4, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_081122A0
	adds r0, r4, #0
	movs r1, #1
	bl sub_081122A0
	adds r0, r6, #0
	movs r1, #0
	bl sub_081126C0
	adds r0, r6, #0
	movs r1, #1
	bl sub_081126C0
	ldr r1, _0811196C @ =gKirbys
	ldr r0, _08111970 @ =gUnk_0203AD3C
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
	bne _08111960
	ldrb r0, [r5]
	cmp r0, #0
	bne _08111920
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111960
_08111920:
	ldr r1, _08111974 @ =gUnk_08D60FA4
	ldr r4, _08111978 @ =gSongTable
	ldr r2, _0811197C @ =0x00000D94
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111946
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111960
_08111946:
	cmp r3, #0
	beq _08111958
	ldr r0, _08111980 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08111960
_08111958:
	movs r0, #0xd9
	lsls r0, r0, #1
	bl m4aSongNumStart
_08111960:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811196C: .4byte gKirbys
_08111970: .4byte gUnk_0203AD3C
_08111974: .4byte gUnk_08D60FA4
_08111978: .4byte gSongTable
_0811197C: .4byte 0x00000D94
_08111980: .4byte gUnk_0203AD10

	thumb_func_start sub_08111984
sub_08111984: @ 0x08111984
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _081119B8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081119BC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081119C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081119C8
	.align 2, 0
_081119B8: .4byte ObjectMain
_081119BC: .4byte ObjectDestroy
_081119C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081119C8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0x85
	movs r3, #0
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r1, r6
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	ldr r1, _08111AC4 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _08111AC8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #0x18
	rsbs r1, r1, #0
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #0x18
	bl sub_0803E2B0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_08113BEC
	adds r0, r4, #0
	bl sub_08111B88
	ldr r1, _08111ACC @ =gKirbys
	ldr r0, _08111AD0 @ =gUnk_0203AD3C
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
	bne _08111ABA
	ldrb r0, [r4]
	cmp r0, #0
	bne _08111A82
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08111ABA
_08111A82:
	ldr r1, _08111AD4 @ =gUnk_08D60FA4
	ldr r5, _08111AD8 @ =gSongTable
	ldr r2, _08111ADC @ =0x00000D9C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08111AA6
	ldr r1, _08111AE0 @ =0x00000D98
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08111ABA
_08111AA6:
	cmp r3, #0
	beq _08111AB4
	ldr r0, _08111AE4 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _08111ABA
_08111AB4:
	ldr r0, _08111AE8 @ =0x000001B3
	bl m4aSongNumStart
_08111ABA:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08111AC4: .4byte 0x001080A0
_08111AC8: .4byte sub_0809F840
_08111ACC: .4byte gKirbys
_08111AD0: .4byte gUnk_0203AD3C
_08111AD4: .4byte gUnk_08D60FA4
_08111AD8: .4byte gSongTable
_08111ADC: .4byte 0x00000D9C
_08111AE0: .4byte 0x00000D98
_08111AE4: .4byte gUnk_0203AD10
_08111AE8: .4byte 0x000001B3

	thumb_func_start sub_08111AEC
sub_08111AEC: @ 0x08111AEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r5, [r2]
	cmp r5, #1
	beq _08111B38
	cmp r5, #1
	bgt _08111B0E
	cmp r5, #0
	beq _08111B14
	b _08111B82
_08111B0E:
	cmp r5, #2
	beq _08111B72
	b _08111B82
_08111B14:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08111B82
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r4, #8]
	ldr r1, _08111B34 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #5
	adds r1, r4, #0
	bl sub_0806FE64
	b _08111B82
	.align 2, 0
_08111B34: .4byte 0xFFFFFDFF
_08111B38:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08111B6A
	adds r0, r6, #0
	movs r1, #0x2c
	movs r2, #0x8d
	bl sub_080A8C28
	ldr r0, [r6, #8]
	eors r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	movs r1, #0x2c
	movs r2, #0x8d
	bl sub_080A8C28
	ldr r0, [r6, #8]
	eors r0, r5
	str r0, [r6, #8]
_08111B6A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	b _08111B82
_08111B72:
	ldr r1, [r4, #8]
	ands r5, r1
	cmp r5, #0
	beq _08111B82
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
_08111B82:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08111B88
sub_08111B88: @ 0x08111B88
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08111BB8 @ =sub_08111C5C
	ldr r2, _08111BBC @ =0x00001001
	ldr r1, _08111BC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111BC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08111BCC
	.align 2, 0
_08111BB8: .4byte sub_08111C5C
_08111BBC: .4byte 0x00001001
_08111BC0: .4byte sub_0803DCCC
_08111BC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08111BCC:
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
	movs r6, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _08111C40 @ =0x00000399
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080709F8
	adds r4, #0x2b
	strb r6, [r4]
	ldr r2, _08111C44 @ =gKirbys
	ldr r0, _08111C48 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _08111C50
	ldr r5, _08111C4C @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08111C52
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08111C52
	.align 2, 0
_08111C40: .4byte 0x00000399
_08111C44: .4byte gKirbys
_08111C48: .4byte gUnk_0203AD3C
_08111C4C: .4byte 0x0000039A
_08111C50:
	strb r6, [r4]
_08111C52:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08111C5C
sub_08111C5C: @ 0x08111C5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _08111C80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111C84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111C8C
	.align 2, 0
_08111C80: .4byte gCurTask
_08111C84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111C8C:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08111CA6
	ldr r0, [r2]
	bl TaskDestroy
	b _08111EE6
_08111CA6:
	ldr r0, [r7, #8]
	ands r0, r3
	cmp r0, #0
	beq _08111CB6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08111EE6
_08111CB6:
	movs r0, #4
	adds r3, r0, #0
	orrs r3, r1
	strh r3, [r5, #6]
	ldr r2, _08111D28 @ =gKirbys
	ldr r0, _08111D2C @ =gUnk_0203AD3C
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
	bne _08111D70
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08111D38
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08111D96
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0xc
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08111D30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08111D34 @ =0x0400000A
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
	b _08111D96
	.align 2, 0
_08111D28: .4byte gKirbys
_08111D2C: .4byte gUnk_0203AD3C
_08111D30: .4byte 0xFFF7FFFF
_08111D34: .4byte 0x0400000A
_08111D38:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08111D96
	movs r0, #0xc
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08111D68 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08111D6C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08111D96
	.align 2, 0
_08111D68: .4byte 0xFFF7FFFF
_08111D6C: .4byte 0x0400000A
_08111D70:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08111D8C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08111D8C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_08111D8C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08111D96:
	ldr r2, _08111DD8 @ =gKirbys
	ldr r0, _08111DDC @ =gUnk_0203AD3C
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
	bne _08111DE4
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08111DEC
	ldr r6, _08111DE0 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08111DEC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08111DEC
	.align 2, 0
_08111DD8: .4byte gKirbys
_08111DDC: .4byte gUnk_0203AD3C
_08111DE0: .4byte 0x0000039A
_08111DE4:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08111DEC:
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _08111E10
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	b _08111E16
_08111E10:
	ldrh r1, [r5, #6]
	ldr r0, _08111E68 @ =0x0000FBFF
	ands r0, r1
_08111E16:
	strh r0, [r5, #6]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _08111E70
	ldrb r0, [r3]
	cmp r0, #0
	beq _08111E36
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08111E36
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_08111E36:
	cmp r3, #0
	beq _08111E70
	ldr r0, _08111E6C @ =gUnk_03000510
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
	beq _08111EE0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08111EE0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08111EE6
	.align 2, 0
_08111E68: .4byte 0x0000FBFF
_08111E6C: .4byte gUnk_03000510
_08111E70:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08111ED8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _08111EB0
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08111EB0
	movs r3, #4
_08111EB0:
	ldr r0, _08111EDC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08111EE0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08111EE0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08111EE6
	.align 2, 0
_08111ED8: .4byte gKirbys
_08111EDC: .4byte gUnk_03000510
_08111EE0:
	adds r0, r5, #0
	bl sub_0806FAC8
_08111EE6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08111EF4
sub_08111EF4: @ 0x08111EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	ldr r0, _08111F28 @ =sub_08112024
	ldr r2, _08111F2C @ =0x00003501
	ldr r1, _08111F30 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08111F34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08111F3C
	.align 2, 0
_08111F28: .4byte sub_08112024
_08111F2C: .4byte 0x00003501
_08111F30: .4byte sub_0803DCCC
_08111F34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08111F3C:
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
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _08111F82
	ldr r0, [r4, #0x34]
	ldr r1, _08111FF4 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, _08111FF8 @ =0xFFFFE400
	adds r0, r0, r1
	str r0, [r4, #0x38]
_08111F82:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r1, r0
	bne _08111FA0
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, _08111FF8 @ =0xFFFFE400
	adds r0, r0, r1
	str r0, [r4, #0x38]
_08111FA0:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _08111FFC @ =0x00000399
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _08112000 @ =gKirbys
	ldr r0, _08112004 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0811200C
	ldr r6, _08112008 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112010
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _08112010
	.align 2, 0
_08111FF4: .4byte 0xFFFFE000
_08111FF8: .4byte 0xFFFFE400
_08111FFC: .4byte 0x00000399
_08112000: .4byte gKirbys
_08112004: .4byte gUnk_0203AD3C
_08112008: .4byte 0x0000039A
_0811200C:
	mov r1, r8
	strb r1, [r5]
_08112010:
	movs r0, #0x20
	strh r0, [r4, #4]
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08112024
sub_08112024: @ 0x08112024
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _08112048 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811204C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08112054
	.align 2, 0
_08112048: .4byte gCurTask
_0811204C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08112054:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08112070
	ldr r0, [r2]
	bl TaskDestroy
	b _08112294
_08112070:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _08112082
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _08112294
_08112082:
	ldr r2, _081120EC @ =gKirbys
	ldr r0, _081120F0 @ =gUnk_0203AD3C
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
	bne _08112134
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081120FC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0811215A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x24
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _081120F4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _081120F8 @ =0x0400000A
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
	b _0811215A
	.align 2, 0
_081120EC: .4byte gKirbys
_081120F0: .4byte gUnk_0203AD3C
_081120F4: .4byte 0xFFF7FFFF
_081120F8: .4byte 0x0400000A
_081120FC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0811215A
	movs r0, #0x24
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811212C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08112130 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0811215A
	.align 2, 0
_0811212C: .4byte 0xFFF7FFFF
_08112130: .4byte 0x0400000A
_08112134:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08112150
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08112150
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_08112150:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0811215A:
	ldr r2, _0811219C @ =gKirbys
	ldr r0, _081121A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _081121A8
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _081121B0
	ldr r6, _081121A4 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081121B0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _081121B0
	.align 2, 0
_0811219C: .4byte gKirbys
_081121A0: .4byte gUnk_0203AD3C
_081121A4: .4byte 0x0000039A
_081121A8:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_081121B0:
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0811220C
	ldrb r0, [r3]
	cmp r0, #0
	beq _081121D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _081121D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_081121D6:
	cmp r3, #0
	beq _0811220C
	ldr r0, _08112208 @ =gUnk_03000510
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
	beq _08112278
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112278
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08112294
	.align 2, 0
_08112208: .4byte gUnk_03000510
_0811220C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08112270 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _0811224A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811224A
	movs r3, #4
_0811224A:
	ldr r0, _08112274 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112278
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112278
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08112294
	.align 2, 0
_08112270: .4byte gKirbys
_08112274: .4byte gUnk_03000510
_08112278:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811228E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08112294
_0811228E:
	adds r0, r5, #0
	bl sub_0806FAC8
_08112294:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081122A0
sub_081122A0: @ 0x081122A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _081122DC @ =sub_081123CC
	ldr r2, _081122E0 @ =0x00003501
	ldr r1, _081122E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081122E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081122F0
	.align 2, 0
_081122DC: .4byte sub_081123CC
_081122E0: .4byte 0x00003501
_081122E4: .4byte sub_0803DCCC
_081122E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081122F0:
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
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _0811237C @ =0x00000399
	movs r0, #0x2a
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	mov r1, sb
	cmp r1, #0
	beq _08112340
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08112340:
	ldr r2, _08112380 @ =gKirbys
	ldr r0, _08112384 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0811238C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08112390
	ldr r7, _08112388 @ =0x0000039A
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112390
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	b _0811238E
	.align 2, 0
_0811237C: .4byte 0x00000399
_08112380: .4byte gKirbys
_08112384: .4byte gUnk_0203AD3C
_08112388: .4byte 0x0000039A
_0811238C:
	mov r0, r8
_0811238E:
	strb r0, [r5]
_08112390:
	movs r0, #0x20
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081123A8
	ldr r0, [r6, #0x40]
	ldr r1, _081123A4 @ =0xFFFFEC00
	b _081123AE
	.align 2, 0
_081123A4: .4byte 0xFFFFEC00
_081123A8:
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
_081123AE:
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	movs r1, #0x8d
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_081123CC
sub_081123CC: @ 0x081123CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _081123F0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081123F4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081123FC
	.align 2, 0
_081123F0: .4byte gCurTask
_081123F4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081123FC:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08112418
	ldr r0, [r2]
	bl TaskDestroy
	b _081126A6
_08112418:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0811242A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _081126A6
_0811242A:
	ldr r2, _08112494 @ =gKirbys
	ldr r0, _08112498 @ =gUnk_0203AD3C
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
	bne _081124DC
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _081124A4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08112502
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811249C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _081124A0 @ =0x0400000A
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
	b _08112502
	.align 2, 0
_08112494: .4byte gKirbys
_08112498: .4byte gUnk_0203AD3C
_0811249C: .4byte 0xFFF7FFFF
_081124A0: .4byte 0x0400000A
_081124A4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08112502
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _081124D4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081124D8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08112502
	.align 2, 0
_081124D4: .4byte 0xFFF7FFFF
_081124D8: .4byte 0x0400000A
_081124DC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081124F8
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081124F8
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081124F8:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08112502:
	ldr r2, _08112544 @ =gKirbys
	ldr r0, _08112548 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _08112550
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08112558
	ldr r6, _0811254C @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112558
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08112558
	.align 2, 0
_08112544: .4byte gKirbys
_08112548: .4byte gUnk_0203AD3C
_0811254C: .4byte 0x0000039A
_08112550:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08112558:
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r7]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _08112576
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	b _0811257C
_08112576:
	ldrh r1, [r5, #6]
	ldr r0, _081125CC @ =0x0000FBFF
	ands r0, r1
_0811257C:
	strh r0, [r5, #6]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _081125D4
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811259C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0811259C
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0811259C:
	cmp r3, #0
	beq _081125D4
	ldr r0, _081125D0 @ =gUnk_03000510
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
	beq _08112640
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112640
	adds r0, r5, #0
	bl sub_0803DBC8
	b _081126A6
	.align 2, 0
_081125CC: .4byte 0x0000FBFF
_081125D0: .4byte gUnk_03000510
_081125D4:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08112638 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _08112612
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08112612
	movs r3, #4
_08112612:
	ldr r0, _0811263C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112640
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08112640
	adds r0, r4, #0
	bl sub_0803DBC8
	b _081126A6
	.align 2, 0
_08112638: .4byte gKirbys
_0811263C: .4byte gUnk_03000510
_08112640:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081126A0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08112668
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r2, _08112664 @ =0xFFFFEC00
	adds r0, r0, r2
	b _08112672
	.align 2, 0
_08112664: .4byte 0xFFFFEC00
_08112668:
	mov r6, r8
	ldr r0, [r6, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
_08112672:
	str r0, [r5, #0x34]
	mov r2, r8
	ldr r0, [r2, #0x44]
	movs r6, #0x8d
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r5, #0x38]
	ldr r2, _081126B4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081126B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081126BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_081126A0:
	adds r0, r5, #0
	bl sub_0806FAC8
_081126A6:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081126B4: .4byte gRngVal
_081126B8: .4byte 0x00196225
_081126BC: .4byte 0x3C6EF35F

	thumb_func_start sub_081126C0
sub_081126C0: @ 0x081126C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, _08112700 @ =sub_08112880
	ldr r2, _08112704 @ =0x00003501
	ldr r1, _08112708 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811270C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08112714
	.align 2, 0
_08112700: .4byte sub_08112880
_08112704: .4byte 0x00003501
_08112708: .4byte sub_0803DCCC
_0811270C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08112714:
	adds r6, r0, #0
	mov r8, r6
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r6]
	mov r2, sb
	ldr r0, [r2, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r6, #0x38]
	str r2, [r6, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r6, #4]
	movs r7, #0
	ldr r0, _08112820 @ =gRngVal
	mov ip, r0
	ldr r1, _08112824 @ =0x3C6EF35F
	mov sl, r1
_08112746:
	lsls r5, r7, #3
	mov r4, r8
	adds r4, #0x48
	adds r4, r4, r5
	mov r2, ip
	ldr r0, [r2]
	ldr r1, _08112828 @ =0x00196225
	adds r3, r0, #0
	muls r3, r1, r3
	add r3, sl
	str r3, [r2]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	mov r2, sb
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	mov r1, r8
	adds r1, #0x4c
	adds r1, r1, r5
	ldr r0, [r2, #0x44]
	movs r2, #0x8d
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r1]
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #0x68
	adds r1, r1, r0
	ldr r2, _08112828 @ =0x00196225
	adds r0, r3, #0
	muls r0, r2, r0
	add r0, sl
	mov r2, ip
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08112746
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _081127B4
	movs r1, #0x29
	str r1, [sp, #0xc]
_081127B4:
	adds r1, r6, #0
	adds r1, #0xc
	ldr r3, _0811282C @ =0x00000399
	ldr r2, [sp, #0xc]
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #1
	bl sub_080709F8
	adds r4, r6, #0
	adds r4, #0x2b
	movs r3, #0
	strb r3, [r4]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _081127E0
	ldrh r1, [r6, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r6, #6]
_081127E0:
	ldr r2, _08112830 @ =gKirbys
	ldr r0, _08112834 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811283C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811283E
	ldr r5, _08112838 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0811283E
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _0811283E
	.align 2, 0
_08112820: .4byte gRngVal
_08112824: .4byte 0x3C6EF35F
_08112828: .4byte 0x00196225
_0811282C: .4byte 0x00000399
_08112830: .4byte gKirbys
_08112834: .4byte gUnk_0203AD3C
_08112838: .4byte 0x0000039A
_0811283C:
	strb r3, [r4]
_0811283E:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08112854
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r2, _08112850 @ =0xFFFFEC00
	b _0811285C
	.align 2, 0
_08112850: .4byte 0xFFFFEC00
_08112854:
	mov r1, sb
	ldr r0, [r1, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #5
_0811285C:
	adds r0, r0, r2
	str r0, [r6, #0x34]
	mov r1, sb
	ldr r0, [r1, #0x44]
	movs r2, #0x8d
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r6, #0x38]
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08112880
sub_08112880: @ 0x08112880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r2, _081128A8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081128AC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081128B4
	.align 2, 0
_081128A8: .4byte gCurTask
_081128AC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081128B4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x28]
	str r5, [sp, #0x2c]
	adds r7, r0, #0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081128D4
	ldr r0, [r2]
	bl TaskDestroy
	b _08112D48
_081128D4:
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _081128E4
	adds r0, r1, #0
	orrs r0, r3
	b _08112D46
_081128E4:
	ldr r2, _0811294C @ =gKirbys
	ldr r0, _08112950 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	str r1, [sp, #0x34]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08112994
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0811295C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081129BA
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
	ldr r1, _08112954 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08112958 @ =0x0400000A
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
	b _081129BA
	.align 2, 0
_0811294C: .4byte gKirbys
_08112950: .4byte gUnk_0203AD3C
_08112954: .4byte 0xFFF7FFFF
_08112958: .4byte 0x0400000A
_0811295C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081129BA
	movs r0, #1
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811298C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08112990 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081129BA
	.align 2, 0
_0811298C: .4byte 0xFFF7FFFF
_08112990: .4byte 0x0400000A
_08112994:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081129B0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081129B0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081129B0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081129BA:
	ldr r2, _081129FC @ =gKirbys
	ldr r0, _08112A00 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x34]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08112A08
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08112A10
	ldr r6, _08112A04 @ =0x0000039A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08112A10
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08112A10
	.align 2, 0
_081129FC: .4byte gKirbys
_08112A00: .4byte gUnk_0203AD3C
_08112A04: .4byte 0x0000039A
_08112A08:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08112A10:
	ldr r0, [sp, #0x28]
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	ldr r0, _08112A7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r1, [sp, #0x28]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08112A80
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08112A80
	ldr r6, [r5, #0x34]
	ldr r7, [r5, #0x38]
	movs r0, #0
	mov r8, r0
	ldr r4, [sp, #0x2c]
	adds r4, #0x48
	ldr r1, [sp, #0x2c]
	adds r1, #0x4c
	mov sb, r1
_08112A52:
	mov r2, r8
	lsls r1, r2, #3
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r5, #0x34]
	add r1, sb
	ldr r0, [r1]
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl sub_0803DBC8
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08112A52
	str r6, [r5, #0x34]
	str r7, [r5, #0x38]
	b _08112D48
	.align 2, 0
_08112A7C: .4byte gUnk_03000510
_08112A80:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08112A98
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08112A9C
_08112A98:
	movs r0, #1
	strh r0, [r5, #4]
_08112A9C:
	ldrh r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08112AB4
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _08112ABE
_08112AB4:
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _08112B44 @ =0xFFFFFBFF
	ands r1, r2
_08112ABE:
	str r1, [r0, #8]
	mov sl, r0
	ldrh r4, [r5, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x28
	adds r2, r2, r5
	mov r8, r2
	cmp r3, #0
	bne _08112B62
	adds r0, r5, #0
	adds r0, #0x27
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _08112AF0
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _08112B06
_08112AF0:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08112B06
	strb r3, [r5, #1]
	strh r3, [r5, #2]
	ldr r0, _08112B48 @ =0x0000FFFB
	ands r0, r4
	strh r0, [r5, #6]
_08112B06:
	mov r0, sl
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08112B4C
	ldrh r0, [r5, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08112B62
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08112B62
	movs r0, #0xff
	strb r0, [r6]
	ldrh r1, [r5, #6]
	ldr r0, _08112B48 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
	strb r3, [r5, #1]
	strh r2, [r5, #2]
	mov r0, sl
	bl sub_08155128
	b _08112B62
	.align 2, 0
_08112B44: .4byte 0xFFFFFBFF
_08112B48: .4byte 0x0000FFFB
_08112B4C:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r1, [r5, #6]
	ldr r0, _08112BFC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_08112B62:
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	ldr r4, _08112C00 @ =gCurLevelInfo
	ldr r3, _08112C04 @ =gUnk_0203AD3C
	ldrb r0, [r3]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r6, r5, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r3]
	muls r0, r7, r0
	adds r3, r4, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08112BBC
	mov r0, sb
	strb r0, [r6]
	strb r0, [r2]
_08112BBC:
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #0x2c]
	adds r2, #0x4c
	mov sb, r2
	ldr r0, [sp, #0x2c]
	adds r0, #0x68
	str r0, [sp, #0x38]
	str r4, [sp, #0x30]
_08112BCE:
	mov r1, r8
	lsls r2, r1, #3
	mov r0, sb
	adds r6, r0, r2
	lsls r0, r1, #1
	ldr r1, [sp, #0x38]
	adds r7, r1, r0
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r6]
	mov ip, r2
	cmp r0, #0
	bge _08112C58
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08112C08
	movs r0, #0
	strh r0, [r7]
	b _08112D1E
	.align 2, 0
_08112BFC: .4byte 0x0000FFFD
_08112C00: .4byte gCurLevelInfo
_08112C04: .4byte gUnk_0203AD3C
_08112C08:
	ldr r4, [sp, #0x2c]
	adds r4, #0x48
	add r4, ip
	ldr r2, _08112CFC @ =gRngVal
	ldr r0, [r2]
	ldr r1, _08112D00 @ =0x00196225
	adds r3, r0, #0
	muls r3, r1, r3
	ldr r2, _08112D04 @ =0x3C6EF35F
	adds r3, r3, r2
	ldr r0, _08112CFC @ =gRngVal
	str r3, [r0]
	lsrs r2, r3, #0x10
	movs r0, #0x1f
	ands r2, r0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [sp, #0x28]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r2, #0x44]
	movs r1, #0x8d
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r6]
	ldr r2, _08112D00 @ =0x00196225
	adds r0, r3, #0
	muls r0, r2, r0
	ldr r1, _08112D04 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r2, _08112CFC @ =gRngVal
	str r0, [r2]
	lsls r0, r0, #5
	lsrs r0, r0, #0x15
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	strh r0, [r7]
_08112C58:
	ldr r1, [sp, #0x2c]
	adds r1, #0x48
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r6, _08112D08 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	ldr r1, [sp, #0x30]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r2, r0
	strh r7, [r5, #0x1c]
	mov r1, sb
	add r1, ip
	ldr r0, [sp, #0x28]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r6]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	ldr r2, _08112D0C @ =gUnk_02023540
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x1e]
	ldrh r4, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _08112D1E
	ldr r2, _08112D10 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0x34]
	ldrh r2, [r2]
	cmp r0, r2
	bne _08112D1E
	ldr r1, _08112D14 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08112D18
	mov r0, sl
	bl sub_081564D8
	b _08112D1E
	.align 2, 0
_08112CFC: .4byte gRngVal
_08112D00: .4byte 0x00196225
_08112D04: .4byte 0x3C6EF35F
_08112D08: .4byte gUnk_0203AD3C
_08112D0C: .4byte gUnk_02023540
_08112D10: .4byte gKirbys
_08112D14: .4byte gUnk_0203AD18
_08112D18:
	mov r0, sl
	bl sub_0815604C
_08112D1E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08112D2E
	b _08112BCE
_08112D2E:
	ldr r2, [sp, #0x2c]
	ldr r0, [r2, #0x68]
	cmp r0, #0
	bne _08112D48
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	bne _08112D48
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
_08112D46:
	strh r0, [r5, #6]
_08112D48:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08112D58
sub_08112D58: @ 0x08112D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	mov r8, r6
	ldr r3, [r6, #0x70]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r6, #0x44]
	asrs r5, r0, #8
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r1, r0
	bgt _08112E18
	ldr r1, _08112DAC @ =gRngVal
	ldr r2, [r1]
	ldr r0, _08112DB0 @ =0x00196225
	muls r0, r2, r0
	ldr r7, _08112DB4 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r1]
	lsrs r2, r0, #0x10
	ldr r0, _08112DB8 @ =0x00005554
	adds r4, r1, #0
	cmp r2, r0
	bhi _08112DBC
	movs r1, #0
	b _08112DC6
	.align 2, 0
_08112DAC: .4byte gRngVal
_08112DB0: .4byte 0x00196225
_08112DB4: .4byte 0x3C6EF35F
_08112DB8: .4byte 0x00005554
_08112DBC:
	ldr r0, _08112DF4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08112DC6
	movs r1, #1
_08112DC6:
	str r1, [sp]
	mov r0, r8
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08112DF8 @ =0x00000139
	adds r1, r3, r2
	ldrb r1, [r1]
	cmp r0, r1
	bge _08112E18
	ldr r1, [r4]
	ldr r0, _08112DFC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08112E00 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r4]
	lsrs r2, r0, #0x10
	ldr r0, _08112E04 @ =0x00005554
	cmp r2, r0
	bhi _08112E08
	movs r1, #0
	b _08112E12
	.align 2, 0
_08112DF4: .4byte 0x0000AAA9
_08112DF8: .4byte 0x00000139
_08112DFC: .4byte 0x00196225
_08112E00: .4byte 0x3C6EF35F
_08112E04: .4byte 0x00005554
_08112E08:
	ldr r0, _08112E54 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08112E12
	movs r1, #1
_08112E12:
	movs r0, #1
	ands r1, r0
	mov sl, r1
_08112E18:
	movs r4, #0
	ldr r1, _08112E58 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	mov r7, ip
	adds r7, #4
	str r7, [sp, #0xc]
	subs r7, r5, #4
	str r7, [sp, #8]
	movs r7, #0x87
	add r7, r8
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r6
	mov r8, r7
	mov r7, sl
	lsls r7, r7, #0x18
	mov sl, r7
	mov r7, ip
	subs r7, #4
	str r7, [sp, #4]
	adds r5, #4
	str r5, [sp, #0x10]
	adds r5, r6, #0
	adds r5, #0x60
	str r5, [sp, #0x14]
	b _08112E70
	.align 2, 0
_08112E54: .4byte 0x0000AAA9
_08112E58: .4byte gUnk_020229D4
_08112E5C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112E78
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08112E70:
	cmp r0, #0
	bne _08112E5C
	orrs r2, r3
	str r2, [r1]
_08112E78:
	ldr r0, _08112EF8 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r7, sp
	ldrh r7, [r7, #0xc]
	strh r7, [r1, #6]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	mov r3, sl
	cmp r3, #0
	beq _08112EE4
	bl sub_08114784
_08112EE4:
	movs r4, #0
	ldr r1, _08112EFC @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _08112F00
	orrs r2, r5
	b _08112F1A
	.align 2, 0
_08112EF8: .4byte gUnk_020229E0
_08112EFC: .4byte gUnk_020229D4
_08112F00:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112F1C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08112F00
	orrs r2, r3
_08112F1A:
	str r2, [r1]
_08112F1C:
	ldr r0, _08112FA0 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r5, #1
	strb r5, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r1, #6]
	mov r7, sp
	ldrh r7, [r7, #8]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	strb r5, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	subs r1, #0x1b
	strb r5, [r1]
	mov r3, sl
	cmp r3, #0
	beq _08112F8C
	bl sub_08114784
_08112F8C:
	movs r4, #0
	ldr r1, _08112FA4 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _08112FA8
	orrs r2, r5
	b _08112FC2
	.align 2, 0
_08112FA0: .4byte gUnk_020229E0
_08112FA4: .4byte gUnk_020229D4
_08112FA8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08112FC4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08112FA8
	orrs r2, r3
_08112FC2:
	str r2, [r1]
_08112FC4:
	ldr r5, _08113044 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r7, #1
	strb r7, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r1, #6]
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	ldrb r0, [r4]
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
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r1]
	mov r4, sl
	cmp r4, #0
	beq _08113032
	bl sub_08114784
_08113032:
	movs r4, #0
	ldr r1, _08113048 @ =gUnk_020229D4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	bne _0811304C
	orrs r2, r7
	b _08113066
	.align 2, 0
_08113044: .4byte gUnk_020229E0
_08113048: .4byte gUnk_020229D4
_0811304C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08113068
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0811304C
	orrs r2, r3
_08113066:
	str r2, [r1]
_08113068:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r5, sp
	ldrh r5, [r5, #0xc]
	strh r5, [r1, #6]
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd3
	strb r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldrb r0, [r5]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r1, r0, #0
	adds r1, #0x9e
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	subs r1, #0x1b
	strb r4, [r1]
	mov r3, sl
	cmp r3, #0
	beq _081130D8
	bl sub_08114784
_081130D8:
	ldr r1, _0811314C @ =gKirbys
	ldr r0, _08113150 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r4, [sp, #0x14]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0811313C
	ldrb r0, [r6]
	cmp r0, #0
	bne _08113100
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, r2
	bne _0811313C
_08113100:
	ldr r1, _08113154 @ =gUnk_08D60FA4
	ldr r4, _08113158 @ =gSongTable
	ldr r7, _0811315C @ =0x00000DBC
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08113124
	ldr r1, _08113160 @ =0x00000DB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811313C
_08113124:
	cmp r3, #0
	beq _08113136
	ldr r0, _08113164 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811313C
_08113136:
	ldr r0, _08113168 @ =0x000001B7
	bl m4aSongNumStart
_0811313C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811314C: .4byte gKirbys
_08113150: .4byte gUnk_0203AD3C
_08113154: .4byte gUnk_08D60FA4
_08113158: .4byte gSongTable
_0811315C: .4byte 0x00000DBC
_08113160: .4byte 0x00000DB8
_08113164: .4byte gUnk_0203AD10
_08113168: .4byte 0x000001B7

	thumb_func_start CreateDarkMindMirrorCutter
CreateDarkMindMirrorCutter: @ 0x0811316C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _081131A0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _081131A4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081131A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _081131B0
	.align 2, 0
_081131A0: .4byte ObjectMain
_081131A4: .4byte ObjectDestroy
_081131A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_081131B0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x85
	movs r4, #0
	strb r4, [r0]
	ldr r1, [r5, #8]
	movs r0, #0x40
	orrs r1, r0
	adds r0, #0xc0
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	ldr r0, [r5, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r1, r0
	str r1, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #7
	orrs r0, r2
	ldr r2, _08113234 @ =0x001080A0
	orrs r0, r2
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _08113238 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r2, #4
	rsbs r2, r2, #0
	str r3, [sp]
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_08113C10
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08113234: .4byte 0x001080A0
_08113238: .4byte sub_0809F840

	thumb_func_start sub_0811323C
sub_0811323C: @ 0x0811323C
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08113262
	cmp r0, #1
	beq _0811326C
	movs r3, #0xa0
	lsls r3, r3, #3
	movs r4, #0x80
	lsls r4, r4, #3
	b _08113274
_08113262:
	movs r3, #0xa0
	lsls r3, r3, #2
	movs r4, #0x80
	lsls r4, r4, #2
	b _08113274
_0811326C:
	movs r3, #0xf0
	lsls r3, r3, #2
	movs r4, #0xc0
	lsls r4, r4, #2
_08113274:
	ldr r2, _081132C4 @ =gUnk_08D5FE14
	mov r5, ip
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r0, #0x60
	ldr r1, _081132C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x50
	strh r0, [r3]
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r2, r0, #8
	mov r1, ip
	adds r1, #0x52
	strh r2, [r1]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _081132DA
	cmp r0, #2
	bgt _081132CC
	cmp r0, #1
	beq _081132D2
	b _081132EA
	.align 2, 0
_081132C4: .4byte gUnk_08D5FE14
_081132C8: .4byte 0x000003FF
_081132CC:
	cmp r0, #3
	beq _081132E6
	b _081132EA
_081132D2:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _081132EA
_081132DA:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	b _081132E8
_081132E6:
	rsbs r0, r2, #0
_081132E8:
	strh r0, [r1]
_081132EA:
	mov r5, ip
	ldrh r0, [r5, #4]
	adds r0, #0x10
	strh r0, [r5, #4]
	ldr r1, _0811330C @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08113306
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_08113306:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811330C: .4byte 0xFFFFFC00

	thumb_func_start sub_08113310
sub_08113310: @ 0x08113310
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r3, [r0, #0x70]
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldrh r1, [r1, #4]
	ldr r0, _08113334 @ =0xFFFFFE00
	ands r0, r1
	cmp r0, #0
	beq _08113338
	mov r1, ip
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #0x2f
	b _08113340
	.align 2, 0
_08113334: .4byte 0xFFFFFE00
_08113338:
	mov r1, ip
	adds r1, #0xa2
	ldrh r0, [r1]
	adds r0, #0x10
_08113340:
	strh r0, [r1]
	mov r2, ip
	adds r2, #0xa0
	ldrh r0, [r1]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	ldr r0, [r3, #0x40]
	mov r1, ip
	str r0, [r1, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r1, #0x44]
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r6, r1, #0
	cmp r0, #1
	beq _08113384
	cmp r0, #1
	ble _08113370
	cmp r0, #2
	beq _081133C4
	cmp r0, #3
	beq _081133DC
_08113370:
	movs r4, #0
	ldrsh r3, [r2, r4]
	ldr r2, _08113380 @ =gUnk_08D5FE14
	mov r0, ip
	movs r4, #4
	ldrsh r1, [r0, r4]
	b _081133F2
	.align 2, 0
_08113380: .4byte gUnk_08D5FE14
_08113384:
	movs r0, #0
	ldrsh r4, [r2, r0]
	ldr r3, _081133BC @ =gUnk_08D5FE14
	mov r2, ip
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _081133C0 @ =0x000003FF
	ands r1, r2
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	b _08113414
	.align 2, 0
_081133BC: .4byte gUnk_08D5FE14
_081133C0: .4byte 0x000003FF
_081133C4:
	movs r1, #0
	ldrsh r3, [r2, r1]
	ldr r2, _081133D8 @ =gUnk_08D5FE14
	mov r4, ip
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r4, #0x80
	lsls r4, r4, #2
	b _081133EC
	.align 2, 0
_081133D8: .4byte gUnk_08D5FE14
_081133DC:
	movs r0, #0
	ldrsh r3, [r2, r0]
	ldr r2, _0811344C @ =gUnk_08D5FE14
	mov r4, ip
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r4, #0xc0
	lsls r4, r4, #2
_081133EC:
	adds r1, r1, r4
	ldr r0, _08113450 @ =0x000003FF
	ands r1, r0
_081133F2:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
_08113414:
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrh r0, [r3, #4]
	adds r0, #0x10
	strh r0, [r3, #4]
	ldr r1, _08113454 @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08113458
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	b _081134E0
	.align 2, 0
_0811344C: .4byte gUnk_08D5FE14
_08113450: .4byte 0x000003FF
_08113454: .4byte 0xFFFFFC00
_08113458:
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _081134E0
	mov r2, ip
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _081134DA
	ldr r1, _081134E8 @ =gKirbys
	ldr r0, _081134EC @ =gUnk_0203AD3C
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
	bne _081134DA
	mov r4, ip
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811349E
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081134DA
_0811349E:
	ldr r1, _081134F0 @ =gUnk_08D60FA4
	ldr r4, _081134F4 @ =gSongTable
	ldr r2, _081134F8 @ =0x00000DBC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081134C2
	ldr r1, _081134FC @ =0x00000DB8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081134DA
_081134C2:
	cmp r3, #0
	beq _081134D4
	ldr r0, _08113500 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081134DA
_081134D4:
	ldr r0, _08113504 @ =0x000001B7
	bl m4aSongNumStart
_081134DA:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_081134E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081134E8: .4byte gKirbys
_081134EC: .4byte gUnk_0203AD3C
_081134F0: .4byte gUnk_08D60FA4
_081134F4: .4byte gSongTable
_081134F8: .4byte 0x00000DBC
_081134FC: .4byte 0x00000DB8
_08113500: .4byte gUnk_0203AD10
_08113504: .4byte 0x000001B7

	thumb_func_start sub_08113508
sub_08113508: @ 0x08113508
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	beq _08113522
	bl sub_081138D0
	movs r0, #0
	b _08113598
_08113522:
	ldr r0, _0811354C @ =sub_081135A8
	ldr r2, _08113550 @ =0x0000FFFE
	ldr r1, _08113554 @ =sub_081147B0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08113558
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08113560
	.align 2, 0
_0811354C: .4byte sub_081135A8
_08113550: .4byte 0x0000FFFE
_08113554: .4byte sub_081147B0
_08113558:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08113560:
	movs r0, #0
	strh r0, [r2, #2]
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	strh r0, [r2]
	strh r6, [r2, #4]
	movs r0, #8
	strh r0, [r2, #6]
	str r5, [r2, #8]
	ldrh r1, [r1]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _081135A0 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _081135A4 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	adds r0, r4, #0
_08113598:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_081135A0: .4byte 0x0000FFFF
_081135A4: .4byte 0x00003FFF

	thumb_func_start sub_081135A8
sub_081135A8: @ 0x081135A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _081135D0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _081135D4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081135DC
	.align 2, 0
_081135D0: .4byte gCurTask
_081135D4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081135DC:
	adds r2, r0, #0
	ldr r4, [r2, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08113630
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r2, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	ldr r1, _08113624 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113628 @ =0x00003FFF
	strh r1, [r0, #6]
	ldr r0, _0811362C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081136EC
	.align 2, 0
_08113624: .4byte 0x0000FFFF
_08113628: .4byte 0x00003FFF
_0811362C: .4byte gCurTask
_08113630:
	movs r5, #0
	movs r3, #0
	ldr r0, _08113694 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08113684
	ldr r1, _08113698 @ =gKirbys
	mov sb, r1
	ldrh r7, [r2]
	ldr r1, _0811369C @ =gUnk_02026D50
	mov r8, r1
	adds r6, r0, #0
	ldr r0, _081136A0 @ =gCurLevelInfo
	mov ip, r0
_0811364C:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _0811367A
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	add r0, ip
	ldr r1, _081136A4 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0811367A
	movs r5, #1
_0811367A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _0811364C
_08113684:
	cmp r5, #0
	bne _081136A8
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _081136EC
	.align 2, 0
_08113694: .4byte gUnk_0203AD44
_08113698: .4byte gKirbys
_0811369C: .4byte gUnk_02026D50
_081136A0: .4byte gCurLevelInfo
_081136A4: .4byte 0x0000065E
_081136A8:
	ldrh r0, [r2, #6]
	subs r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081136EC
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r1, _081136FC @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113700 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _08113704 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08113708 @ =sub_0811370C
	str r0, [r1, #8]
_081136EC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081136FC: .4byte 0x0000FFFF
_08113700: .4byte 0x00003FFF
_08113704: .4byte gCurTask
_08113708: .4byte sub_0811370C

	thumb_func_start sub_0811370C
sub_0811370C: @ 0x0811370C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113734 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	beq _08113738
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08113740
	.align 2, 0
_08113734: .4byte gCurTask
_08113738:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08113740:
	adds r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _0811375C
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08113798
_0811375C:
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _081137F0
	mov r1, ip
	ldr r0, [r1]
	bl sub_081138D0
	ldr r2, _08113790 @ =gKirbys
	ldr r0, _08113794 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08113844
	b _08113858
	.align 2, 0
_08113790: .4byte gKirbys
_08113794: .4byte gUnk_0203AD3C
_08113798:
	movs r2, #0
	movs r3, #0
	ldr r0, _081137FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _081137EC
	ldr r1, _08113800 @ =gKirbys
	mov sl, r1
	ldrh r7, [r5]
	ldr r1, _08113804 @ =gUnk_02026D50
	mov sb, r1
	adds r6, r0, #0
	ldr r0, _08113808 @ =gCurLevelInfo
	mov r8, r0
_081137B4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _081137E2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	add r0, r8
	ldr r1, _0811380C @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081137E2
	movs r2, #1
_081137E2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blo _081137B4
_081137EC:
	cmp r2, #0
	bne _08113810
_081137F0:
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _081138B8
	.align 2, 0
_081137FC: .4byte gUnk_0203AD44
_08113800: .4byte gKirbys
_08113804: .4byte gUnk_02026D50
_08113808: .4byte gCurLevelInfo
_0811380C: .4byte 0x0000065E
_08113810:
	ldr r0, _0811384C @ =gUnk_03000510
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
	beq _0811386C
	ldr r2, _08113850 @ =gKirbys
	ldr r0, _08113854 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113858
_08113844:
	bl sub_08113A90
	b _081138B8
	.align 2, 0
_0811384C: .4byte gUnk_03000510
_08113850: .4byte gKirbys
_08113854: .4byte gUnk_0203AD3C
_08113858:
	ldr r0, _08113868 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _081138B8
	.align 2, 0
_08113868: .4byte gUnk_0203AD20
_0811386C:
	ldr r2, _08113890 @ =gKirbys
	ldr r0, _08113894 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113898
	bl sub_08113A90
	b _081138A4
	.align 2, 0
_08113890: .4byte gKirbys
_08113894: .4byte gUnk_0203AD3C
_08113898:
	ldr r0, _081138C8 @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_081138A4:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _081138B8
	ldr r0, _081138CC @ =gCurTask
	ldr r0, [r0]
	bl sub_081138D0
_081138B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081138C8: .4byte gUnk_0203AD20
_081138CC: .4byte gCurTask

	thumb_func_start sub_081138D0
sub_081138D0: @ 0x081138D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081138EA
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081138F2
_081138EA:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081138F2:
	ldr r3, [r2, #8]
	ldr r1, [r4, #8]
	ldr r0, _08113930 @ =sub_0811370C
	cmp r1, r0
	bne _0811392A
	movs r0, #9
	strh r0, [r2, #6]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #2]
	ldr r1, _08113934 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113938 @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _0811393C @ =sub_08113940
	str r0, [r4, #8]
_0811392A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113930: .4byte sub_0811370C
_08113934: .4byte 0x0000FFFF
_08113938: .4byte 0x00003FFF
_0811393C: .4byte sub_08113940

	thumb_func_start sub_08113940
sub_08113940: @ 0x08113940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113968 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _0811396C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08113974
	.align 2, 0
_08113968: .4byte gCurTask
_0811396C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08113974:
	adds r2, r0, #0
	ldr r0, [r2, #8]
	mov ip, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _081139DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _081139CC
	ldr r1, _081139E0 @ =gKirbys
	mov sb, r1
	ldrh r6, [r2]
	ldr r1, _081139E4 @ =gUnk_02026D50
	mov r8, r1
	adds r5, r0, #0
	ldr r7, _081139E8 @ =gCurLevelInfo
_08113994:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _081139C2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _081139EC @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _081139C2
	movs r4, #1
_081139C2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _08113994
_081139CC:
	cmp r4, #0
	bne _081139F0
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08113A7C
	.align 2, 0
_081139DC: .4byte gUnk_0203AD44
_081139E0: .4byte gKirbys
_081139E4: .4byte gUnk_02026D50
_081139E8: .4byte gCurLevelInfo
_081139EC: .4byte 0x0000065E
_081139F0:
	ldrh r0, [r2, #6]
	subs r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113A44
	mov r0, ip
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #5
	bl sub_0803C83C
	movs r1, #1
	strb r1, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0, #0xc]
	movs r1, #0x20
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r1, _08113A38 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08113A3C @ =0x00003FFF
	strh r1, [r0, #6]
	movs r1, #0xf
	strb r1, [r0, #3]
	ldr r0, _08113A40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08113A7C
	.align 2, 0
_08113A38: .4byte 0x0000FFFF
_08113A3C: .4byte 0x00003FFF
_08113A40: .4byte gCurTask
_08113A44:
	ldr r2, _08113A68 @ =gKirbys
	ldr r0, _08113A6C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113A70
	bl sub_08113A90
	b _08113A7C
	.align 2, 0
_08113A68: .4byte gKirbys
_08113A6C: .4byte gUnk_0203AD3C
_08113A70:
	ldr r0, _08113A8C @ =gUnk_0203AD20
	ldr r1, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08113A7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08113A8C: .4byte gUnk_0203AD20

	thumb_func_start sub_08113A90
sub_08113A90: @ 0x08113A90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08113B5C @ =gUnk_0203AD20
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	movs r6, #0
	ldr r0, _08113B60 @ =gUnk_030024F0
	mov sb, r0
	ldrb r0, [r0]
	cmp r6, r0
	bhi _08113B4E
	ldr r1, _08113B64 @ =gUnk_030031C0
	mov ip, r1
	movs r3, #0xff
	mov r8, r3
	movs r0, #0xc0
	lsls r0, r0, #8
	mov sl, r0
_08113ABE:
	lsls r4, r6, #3
	mov r3, ip
	adds r1, r4, r3
	ldrh r2, [r1, #2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	eors r2, r0
	strh r2, [r1, #2]
	ldrh r3, [r1]
	mov r1, r8
	ands r1, r3
	movs r0, #0xa0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sl
	ands r2, r0
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsrs r5, r2, #0x1e
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08113AFC
	cmp r1, #0
	beq _08113AFC
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08113AFC:
	mov r1, ip
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08113B22
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08113B22
	lsls r0, r5, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r5, r0, #0x18
_08113B22:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #8
	lsls r1, r0
	subs r1, r7, r1
	mov r0, r8
	ands r1, r0
	mov r0, ip
	adds r3, r4, r0
	ldrh r2, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, sb
	ldrb r1, [r1]
	cmp r6, r1
	bls _08113ABE
_08113B4E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08113B5C: .4byte gUnk_0203AD20
_08113B60: .4byte gUnk_030024F0
_08113B64: .4byte gUnk_030031C0

	thumb_func_start sub_08113B68
sub_08113B68: @ 0x08113B68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113B94 @ =sub_0810F428
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _08113B98
	movs r0, #0
	b _08113B9C
	.align 2, 0
_08113B94: .4byte sub_0810F428
_08113B98:
	movs r0, #0x80
	lsls r0, r0, #2
_08113B9C:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08113BAC
sub_08113BAC: @ 0x08113BAC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r2, _08113BE4 @ =sub_08114708
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	ldr r1, _08113BE8 @ =0x00000127
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08113BDC
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_08113BDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113BE4: .4byte sub_08114708
_08113BE8: .4byte 0x00000127

	thumb_func_start sub_08113BEC
sub_08113BEC: @ 0x08113BEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113C0C @ =sub_08111AEC
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
_08113C0C: .4byte sub_08111AEC

	thumb_func_start sub_08113C10
sub_08113C10: @ 0x08113C10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113C30 @ =sub_0811323C
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
_08113C30: .4byte sub_0811323C

	thumb_func_start sub_08113C34
sub_08113C34: @ 0x08113C34
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	ldr r2, _08113C80 @ =gUnk_08D64A24
	ldr r0, _08113C84 @ =gRoomProps
	ldr r3, _08113C88 @ =0x00008F8E
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [r0, #0x18]
	lsrs r1, r1, #0xd
	ldr r0, _08113C8C @ =0x06000540
	adds r1, r1, r0
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r5, r2, #0
_08113C58:
	movs r2, #0
	adds r4, r0, #1
_08113C5C:
	ldrh r0, [r3]
	eors r0, r5
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08113C5C
	subs r1, #0x80
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08113C58
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113C80: .4byte gUnk_08D64A24
_08113C84: .4byte gRoomProps
_08113C88: .4byte 0x00008F8E
_08113C8C: .4byte 0x06000540

	thumb_func_start sub_08113C90
sub_08113C90: @ 0x08113C90
	ldr r1, _08113C98 @ =gUnk_02022EA0
	movs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08113C98: .4byte gUnk_02022EA0

	thumb_func_start sub_08113C9C
sub_08113C9C: @ 0x08113C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113CC8 @ =sub_08113CCC
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
	movs r0, #0x7a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113CC8: .4byte sub_08113CCC

	thumb_func_start sub_08113CCC
sub_08113CCC: @ 0x08113CCC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113CE2
	adds r0, r1, #0
	bl sub_08113CE8
_08113CE2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08113CE8
sub_08113CE8: @ 0x08113CE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113D28 @ =sub_0810BFC0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	strh r2, [r4, #4]
	subs r1, #0x19
	movs r0, #0x7a
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113D28: .4byte sub_0810BFC0

	thumb_func_start sub_08113D2C
sub_08113D2C: @ 0x08113D2C
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113D46
	adds r0, r1, #0
	bl sub_0810C9C8
	b _08113D64
_08113D46:
	adds r1, #0xe4
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _08113D5C
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_08113D5C:
	ldrh r1, [r1]
	adds r0, r2, #0
	adds r0, #0xf0
	strh r1, [r0]
_08113D64:
	pop {r0}
	bx r0

	thumb_func_start sub_08113D68
sub_08113D68: @ 0x08113D68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113DDC @ =gKirbys
	ldr r0, _08113DE0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08113D90
	adds r0, r4, #0
	adds r0, #0xf0
	bl sub_0814F274
_08113D90:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08113DB0
	adds r0, r4, #0
	bl sub_080700D8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r0, [r4, #8]
	ldr r1, _08113DE4 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
_08113DB0:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08113DC2
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r4, #8]
_08113DC2:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08113DD4
	adds r0, r4, #0
	bl sub_0810C4AC
_08113DD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113DDC: .4byte gKirbys
_08113DE0: .4byte gUnk_0203AD3C
_08113DE4: .4byte 0xFFFFDFFF

	thumb_func_start sub_08113DE8
sub_08113DE8: @ 0x08113DE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113E10 @ =sub_0810BD28
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
_08113E10: .4byte sub_0810BD28

	thumb_func_start sub_08113E14
sub_08113E14: @ 0x08113E14
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x15
	ble _08113E2C
	adds r0, r1, #0
	bl sub_08113E30
_08113E2C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113E30
sub_08113E30: @ 0x08113E30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _08113E6C @ =sub_0810CD98
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08113E70 @ =0x00000129
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08113E74
	adds r0, r4, #0
	bl sub_0810CEB0
	b _08113E8C
	.align 2, 0
_08113E6C: .4byte sub_0810CD98
_08113E70: .4byte 0x00000129
_08113E74:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08113E84
	adds r0, r4, #0
	bl sub_0810D234
	b _08113E8C
_08113E84:
	ldr r0, _08113E94 @ =0x00000135
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
_08113E8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08113E94: .4byte 0x00000135

	thumb_func_start sub_08113E98
sub_08113E98: @ 0x08113E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113EDC @ =sub_08113EE8
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08113EE0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08113ED4
	ldr r0, _08113EE4 @ =0x00000129
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_08113ED4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113EDC: .4byte sub_08113EE8
_08113EE0: .4byte 0x00000135
_08113EE4: .4byte 0x00000129

	thumb_func_start sub_08113EE8
sub_08113EE8: @ 0x08113EE8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113EFC
	adds r0, r2, #0
	bl sub_0810D6C0
_08113EFC:
	pop {r0}
	bx r0

	thumb_func_start sub_08113F00
sub_08113F00: @ 0x08113F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113F30 @ =sub_08113F38
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08113F34 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113F30: .4byte sub_08113F38
_08113F34: .4byte 0x00000135

	thumb_func_start sub_08113F38
sub_08113F38: @ 0x08113F38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113F4C
	adds r0, r2, #0
	bl sub_0810ABC0
_08113F4C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113F50
sub_08113F50: @ 0x08113F50
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113F80 @ =sub_08113F88
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08113F84 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113F80: .4byte sub_08113F88
_08113F84: .4byte 0x00000135

	thumb_func_start sub_08113F88
sub_08113F88: @ 0x08113F88
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08113F9C
	adds r0, r2, #0
	bl sub_08113FA0
_08113F9C:
	pop {r0}
	bx r0

	thumb_func_start sub_08113FA0
sub_08113FA0: @ 0x08113FA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08113FD8 @ =sub_0810D0EC
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r1, [r4, #0x44]
	movs r0, #0xb0
	lsls r0, r0, #7
	cmp r1, r0
	ble _08113FDC
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #1
	b _08113FE2
	.align 2, 0
_08113FD8: .4byte sub_0810D0EC
_08113FDC:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
_08113FE2:
	strb r0, [r1]
	ldr r0, _08113FF4 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08113FF4: .4byte 0x00000135

	thumb_func_start sub_08113FF8
sub_08113FF8: @ 0x08113FF8
	adds r3, r0, #0
	ldr r0, _08114018 @ =sub_0810D1D0
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_08114018: .4byte sub_0810D1D0

	thumb_func_start sub_0811401C
sub_0811401C: @ 0x0811401C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811404C @ =sub_08114054
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08114050 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811404C: .4byte sub_08114054
_08114050: .4byte 0x00000135

	thumb_func_start sub_08114054
sub_08114054: @ 0x08114054
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114068
	adds r0, r2, #0
	bl sub_0810D430
_08114068:
	pop {r0}
	bx r0

	thumb_func_start sub_0811406C
sub_0811406C: @ 0x0811406C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811409C @ =sub_081140A4
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _081140A0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811409C: .4byte sub_081140A4
_081140A0: .4byte 0x00000135

	thumb_func_start sub_081140A4
sub_081140A4: @ 0x081140A4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081140B8
	adds r0, r2, #0
	bl sub_0810D870
_081140B8:
	pop {r0}
	bx r0

	thumb_func_start sub_081140BC
sub_081140BC: @ 0x081140BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081140EC @ =sub_0810DB14
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _081140F0 @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08111EF4
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081140EC: .4byte sub_0810DB14
_081140F0: .4byte 0x00000135

	thumb_func_start sub_081140F4
sub_081140F4: @ 0x081140F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114128 @ =sub_0810DC2C
	movs r1, #5
	bl ObjectSetFunc
	ldr r1, _0811412C @ =0x00000129
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #0xc
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114128: .4byte sub_0810DC2C
_0811412C: .4byte 0x00000129

	thumb_func_start sub_08114130
sub_08114130: @ 0x08114130
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114168 @ =sub_0810E7D0
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _0811416C @ =0x00000135
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114168: .4byte sub_0810E7D0
_0811416C: .4byte 0x00000135

	thumb_func_start sub_08114170
sub_08114170: @ 0x08114170
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081141A4 @ =sub_081141AC
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x20
	strh r0, [r4, #4]
	ldr r0, _081141A8 @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081141A4: .4byte sub_081141AC
_081141A8: .4byte 0x00000135

	thumb_func_start sub_081141AC
sub_081141AC: @ 0x081141AC
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
	bne _081141CA
	adds r0, r2, #0
	bl sub_0810E110
_081141CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081141D0
sub_081141D0: @ 0x081141D0
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
	bne _081141EE
	adds r0, r2, #0
	bl sub_0810E354
_081141EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081141F4
sub_081141F4: @ 0x081141F4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114210
	adds r0, r4, #0
	bl sub_080700D8
	adds r0, r4, #0
	bl sub_08114218
_08114210:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114218
sub_08114218: @ 0x08114218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114248 @ =sub_08114250
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _0811424C @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114248: .4byte sub_08114250
_0811424C: .4byte 0x00000135

	thumb_func_start sub_08114250
sub_08114250: @ 0x08114250
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114264
	adds r0, r2, #0
	bl sub_08114268
_08114264:
	pop {r0}
	bx r0

	thumb_func_start sub_08114268
sub_08114268: @ 0x08114268
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081142A8 @ =sub_0810EB30
	movs r1, #5
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	ldr r0, _081142AC @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081142A8: .4byte sub_0810EB30
_081142AC: .4byte 0x00000135

	thumb_func_start sub_081142B0
sub_081142B0: @ 0x081142B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r2, _081142E4 @ =sub_0810EC0C
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _081142E8 @ =0x00007DFF
	cmp r1, r0
	bgt _081142EC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _081142F2
	.align 2, 0
_081142E4: .4byte sub_0810EC0C
_081142E8: .4byte 0x00007DFF
_081142EC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_081142F2:
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, #0xe6
	adds r2, r5, r0
	movs r0, #0xa
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114310
sub_08114310: @ 0x08114310
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114340 @ =sub_08114348
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _08114344 @ =0x00000135
	adds r0, r4, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114340: .4byte sub_08114348
_08114344: .4byte 0x00000135

	thumb_func_start sub_08114348
sub_08114348: @ 0x08114348
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811435C
	adds r0, r2, #0
	bl sub_08114360
_0811435C:
	pop {r0}
	bx r0

	thumb_func_start sub_08114360
sub_08114360: @ 0x08114360
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081143A4 @ =sub_0810ECB4
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, #0xe6
	adds r1, r4, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _081143A8 @ =0x00000135
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081143A4: .4byte sub_0810ECB4
_081143A8: .4byte 0x00000135

	thumb_func_start sub_081143AC
sub_081143AC: @ 0x081143AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081143EC @ =sub_0810EDA0
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r5, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08107254
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	adds r4, #0x9e
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081143EC: .4byte sub_0810EDA0

	thumb_func_start sub_081143F0
sub_081143F0: @ 0x081143F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811441C @ =sub_08114420
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xe0
	strb r2, [r0]
	movs r0, #0x1c
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811441C: .4byte sub_08114420

	thumb_func_start sub_08114420
sub_08114420: @ 0x08114420
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0811449A
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811449A
	subs r1, #8
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08114478
	lsls r0, r0, #2
	ldr r1, _0811445C @ =_08114460
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811445C: .4byte _08114460
_08114460: @ jump table
	.4byte _08114478 @ case 0
	.4byte _0811448C @ case 1
	.4byte _0811448C @ case 2
	.4byte _08114494 @ case 3
	.4byte _08114494 @ case 4
	.4byte _08114494 @ case 5
_08114478:
	ldr r0, _08114488 @ =0x00000129
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08110E60
	b _0811449A
	.align 2, 0
_08114488: .4byte 0x00000129
_0811448C:
	adds r0, r2, #0
	bl sub_08110A20
	b _0811449A
_08114494:
	adds r0, r2, #0
	bl sub_0810FB68
_0811449A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081144A0
sub_081144A0: @ 0x081144A0
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081144E6
	ldr r0, _081144D0 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xe1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _081144D4
	cmp r1, #1
	beq _081144DC
	b _081144E2
	.align 2, 0
_081144D0: .4byte 0xFFFFFDFF
_081144D4:
	adds r0, r2, #0
	bl sub_0810F4A0
	b _081144E2
_081144DC:
	adds r0, r2, #0
	bl sub_0810F77C
_081144E2:
	movs r0, #0
	strb r0, [r4]
_081144E6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_081144EC
sub_081144EC: @ 0x081144EC
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x70]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08114522
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811451C
	subs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08110C68
	b _08114522
_0811451C:
	adds r0, r2, #0
	bl sub_08114528
_08114522:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114528
sub_08114528: @ 0x08114528
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08114550 @ =sub_08114554
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r4, #0xe0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114550: .4byte sub_08114554

	thumb_func_start sub_08114554
sub_08114554: @ 0x08114554
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	adds r1, r3, #0
	adds r1, #0x50
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	strh r2, [r1]
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _08114574
	adds r0, r3, #0
	bl sub_0810F9D4
_08114574:
	pop {r0}
	bx r0

	thumb_func_start sub_08114578
sub_08114578: @ 0x08114578
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114594
	adds r0, r4, #0
	bl sub_08112D58
	adds r0, r4, #0
	bl sub_0811459C
_08114594:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811459C
sub_0811459C: @ 0x0811459C
	adds r3, r0, #0
	ldr r0, _081145C4 @ =sub_081145C8
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_081145C4: .4byte sub_081145C8

	thumb_func_start sub_081145C8
sub_081145C8: @ 0x081145C8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #0x10
	strh r0, [r2, #4]
	ldr r1, _081145E8 @ =0xFFFFFC00
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081145E2
	adds r0, r2, #0
	bl sub_08110E60
_081145E2:
	pop {r0}
	bx r0
	.align 2, 0
_081145E8: .4byte 0xFFFFFC00

	thumb_func_start sub_081145EC
sub_081145EC: @ 0x081145EC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x70]
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08114618
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114618
	adds r0, r3, #0
	bl sub_08110E60
_08114618:
	pop {r0}
	bx r0

	thumb_func_start sub_0811461C
sub_0811461C: @ 0x0811461C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811463C @ =sub_08110C10
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08114640
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _08114648
	.align 2, 0
_0811463C: .4byte sub_08110C10
_08114640:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08114648:
	str r0, [r4, #8]
	ldr r1, [r4, #0x44]
	ldr r0, _0811465C @ =0x000057FF
	cmp r1, r0
	bgt _08114660
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _08114666
	.align 2, 0
_0811465C: .4byte 0x000057FF
_08114660:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
_08114666:
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08114674
sub_08114674: @ 0x08114674
	ldr r1, _08114688 @ =sub_0811468C
	str r1, [r0, #0x78]
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	movs r1, #0x16
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_08114688: .4byte sub_0811468C

	thumb_func_start sub_0811468C
sub_0811468C: @ 0x0811468C
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
	bne _081146AA
	adds r0, r2, #0
	bl sub_08110E60
_081146AA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081146B0
sub_081146B0: @ 0x081146B0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r3, _08114700 @ =0x00000399
	movs r0, #0x19
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x28
	bl sub_080708DC
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08114704 @ =0x0000039A
	adds r0, r5, #0
	bl sub_0803DF24
	adds r4, #0xd3
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081146F8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
_081146F8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08114700: .4byte 0x00000399
_08114704: .4byte 0x0000039A

	thumb_func_start sub_08114708
sub_08114708: @ 0x08114708
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08114714
sub_08114714: @ 0x08114714
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
	bne _08114738
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2, #0x24]
	adds r0, r2, #0
	bl sub_081115F4
_08114738:
	pop {r0}
	bx r0

	thumb_func_start sub_0811473C
sub_0811473C: @ 0x0811473C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x56
	ldr r1, _0811477C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08114770
	ldr r0, _08114780 @ =0x000001B3
	bl m4aSongNumStop
_08114770:
	adds r0, r4, #0
	bl sub_080700D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811477C: .4byte gUnk_0203AD3C
_08114780: .4byte 0x000001B3

	thumb_func_start sub_08114784
sub_08114784: @ 0x08114784
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081147AC @ =sub_08113310
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081147AC: .4byte sub_08113310

	thumb_func_start sub_081147B0
sub_081147B0: @ 0x081147B0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081147CA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081147D2
_081147CA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081147D2:
	ldr r2, [r0, #8]
	ldr r3, _081147EC @ =gUnk_0203AD20
	ldr r0, [r3]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	adds r2, #0xdc
	movs r0, #0
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081147EC: .4byte gUnk_0203AD20

	thumb_func_start sub_081147F0
sub_081147F0: @ 0x081147F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811480A
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08114812
_0811480A:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08114812:
	adds r5, r0, #0
	adds r5, #0xb4
	ldr r0, [r5]
	cmp r0, #0
	beq _08114824
	bl sub_08157190
	movs r0, #0
	str r0, [r5]
_08114824:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateDarkMindTrigger
CreateDarkMindTrigger: @ 0x08114830
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08114864 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08114868 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811486C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08114874
	.align 2, 0
_08114864: .4byte ObjectMain
_08114868: .4byte ObjectDestroy
_0811486C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08114874:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #0xc]
	movs r2, #1
	orrs r0, r2
	movs r1, #4
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
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	adds r5, r6, #0
	adds r5, #0xb4
	str r1, [r5]
	subs r0, #5
	ldrh r0, [r0]
	adds r3, r6, #0
	adds r3, #0xba
	movs r4, #0
	strh r0, [r3]
	adds r0, r6, #0
	adds r0, #0xbc
	strh r1, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r0, [r6, #8]
	orrs r0, r2
	str r0, [r6, #8]
	ldr r1, [r6, #0x5c]
	subs r2, #9
	ands r1, r2
	movs r0, #3
	orrs r1, r0
	ldr r0, [r6, #0x68]
	ands r0, r2
	str r0, [r6, #0x68]
	ldr r0, _0811493C @ =0x001080A0
	orrs r1, r0
	str r1, [r6, #0x5c]
	subs r2, #6
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0xe
	bl sub_0803E2B0
	movs r1, #0x28
	rsbs r1, r1, #0
	movs r2, #0x1e
	rsbs r2, r2, #0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x28
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _08114940 @ =sub_0811643C
	str r0, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_081171BC
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08114944
	adds r0, r6, #0
	bl sub_081188EC
	b _0811494A
	.align 2, 0
_0811493C: .4byte 0x001080A0
_08114940: .4byte sub_0811643C
_08114944:
	adds r0, r6, #0
	bl sub_0811889C
_0811494A:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08114954
sub_08114954: @ 0x08114954
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114980 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114984 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114988 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0811498C
	adds r0, r3, #0
	bl sub_0811530C
	b _081149D8
	.align 2, 0
_08114980: .4byte gRngVal
_08114984: .4byte 0x00196225
_08114988: .4byte 0x3C6EF35F
_0811498C:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0811499E
	adds r0, r3, #0
	bl sub_081187F4
	b _081149D8
_0811499E:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _081149B0
	adds r0, r3, #0
	bl sub_08118828
	b _081149D8
_081149B0:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _081149C2
	adds r0, r3, #0
	bl sub_08115814
	b _081149D8
_081149C2:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _081149D2
	adds r0, r3, #0
	bl sub_08118868
	b _081149D8
_081149D2:
	adds r0, r3, #0
	bl sub_08114BA0
_081149D8:
	pop {r0}
	bx r0

	thumb_func_start sub_081149DC
sub_081149DC: @ 0x081149DC
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114A04 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114A08 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114A0C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, #3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114A10
	adds r0, r3, #0
	bl sub_08118678
	b _08114A46
	.align 2, 0
_08114A04: .4byte gRngVal
_08114A08: .4byte 0x00196225
_08114A0C: .4byte 0x3C6EF35F
_08114A10:
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A1E
	adds r0, r3, #0
	bl sub_081186B8
	b _08114A46
_08114A1E:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A30
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114A46
_08114A30:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114A40
	adds r0, r3, #0
	bl sub_08114954
	b _08114A46
_08114A40:
	adds r0, r3, #0
	bl sub_08114BA0
_08114A46:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114A4C
sub_08114A4C: @ 0x08114A4C
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114A78 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114A7C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114A80 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A84
	adds r0, r3, #0
	bl sub_081186B8
	b _08114AAC
	.align 2, 0
_08114A78: .4byte gRngVal
_08114A7C: .4byte 0x00196225
_08114A80: .4byte 0x3C6EF35F
_08114A84:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114A96
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114AAC
_08114A96:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114AA6
	adds r0, r3, #0
	bl sub_08114954
	b _08114AAC
_08114AA6:
	adds r0, r3, #0
	bl sub_08118678
_08114AAC:
	pop {r0}
	bx r0

	thumb_func_start sub_08114AB0
sub_08114AB0: @ 0x08114AB0
	push {lr}
	adds r3, r0, #0
	ldr r2, _08114ADC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114AE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114AE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114AE8
	adds r0, r3, #0
	bl sub_08114BA0
	b _08114B22
	.align 2, 0
_08114ADC: .4byte gRngVal
_08114AE0: .4byte 0x00196225
_08114AE4: .4byte 0x3C6EF35F
_08114AE8:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114AFA
	adds r0, r3, #0
	bl sub_08118678
	b _08114B22
_08114AFA:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08114B0C
	adds r0, r3, #0
	bl sub_08114FF4
	b _08114B22
_08114B0C:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08114B1C
	adds r0, r3, #0
	bl sub_08114954
	b _08114B22
_08114B1C:
	adds r0, r3, #0
	bl sub_081186B8
_08114B22:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08114B28
sub_08114B28: @ 0x08114B28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08114B94
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08114B94
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	movs r7, #0x1c
	ldrsh r0, [r4, r7]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08114B94
	ldr r0, [r5, #8]
	ldr r1, _08114B9C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08114BA0
_08114B94:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08114B9C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08114BA0
sub_08114BA0: @ 0x08114BA0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08114BBC
	ldr r1, [r4, #0x7c]
	ldr r0, _08114C28 @ =sub_081164E0
	cmp r1, r0
	beq _08114BBC
	adds r0, r4, #0
	bl sub_08118990
_08114BBC:
	ldr r2, _08114C2C @ =sub_08114C44
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _08114C30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08114C34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08114C38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _08114C3C @ =gUnk_08351530
	ldr r0, _08114C40 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0xc8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _08114C22
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #4]
_08114C22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08114C28: .4byte sub_081164E0
_08114C2C: .4byte sub_08114C44
_08114C30: .4byte gRngVal
_08114C34: .4byte 0x00196225
_08114C38: .4byte 0x3C6EF35F
_08114C3C: .4byte gUnk_08351530
_08114C40: .4byte gUnk_0203AD30

	thumb_func_start sub_08114C44
sub_08114C44: @ 0x08114C44
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldr r1, [r3, #0x44]
	movs r0, #0xe8
	lsls r0, r0, #6
	cmp r1, r0
	ble _08114C64
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
	b _08114CB2
_08114C64:
	ldr r0, _08114C74 @ =0x000025FF
	cmp r1, r0
	bgt _08114C7C
	adds r1, r3, #0
	adds r1, #0x52
	ldr r0, _08114C78 @ =0x0000FF30
	strh r0, [r1]
	b _08114CB2
	.align 2, 0
_08114C74: .4byte 0x000025FF
_08114C78: .4byte 0x0000FF30
_08114C7C:
	ldr r2, _08114CB8 @ =gUnk_08357ABC
	movs r0, #0x85
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08114CB2
	adds r0, r3, #0
	bl sub_081149DC
_08114CB2:
	pop {r0}
	bx r0
	.align 2, 0
_08114CB8: .4byte gUnk_08357ABC

	thumb_func_start sub_08114CBC
sub_08114CBC: @ 0x08114CBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldr r2, _08114D2C @ =gUnk_08357ABC
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x52
	movs r4, #0
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r3, [r6, #0x40]
	ldr r0, _08114D30 @ =0xFFFFF000
	adds r1, r3, r0
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	cmp r1, r2
	ble _08114D62
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08114D48
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x28
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _08114D34 @ =0xFFFFFDC0
	adds r7, r0, #0
	cmp r2, r1
	bge _08114D3C
	ldr r0, _08114D38 @ =0x0000FDC0
	strh r0, [r7]
	b _08114E00
	.align 2, 0
_08114D2C: .4byte gUnk_08357ABC
_08114D30: .4byte 0xFFFFF000
_08114D34: .4byte 0xFFFFFDC0
_08114D38: .4byte 0x0000FDC0
_08114D3C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r2, r0
	ble _08114E00
	strh r0, [r7]
	b _08114E00
_08114D48:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	adds r7, r1, #0
	cmp r0, r2
	bgt _08114DB4
	b _08114DB8
_08114D62:
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r3, r1
	cmp r0, r2
	bge _08114DC8
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08114D9C
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08114D98 @ =0xFFFFFDC0
	adds r7, r1, #0
	cmp r0, r2
	blt _08114DB4
	movs r1, #0x90
	lsls r1, r1, #2
	cmp r0, r1
	ble _08114E00
	strh r1, [r7]
	b _08114E00
	.align 2, 0
_08114D98: .4byte 0xFFFFFDC0
_08114D9C:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	adds r7, r1, #0
	cmp r0, r2
	ble _08114DB8
_08114DB4:
	strh r2, [r7]
	b _08114E00
_08114DB8:
	ldr r1, _08114DC4 @ =0xFFFFFDC0
	cmp r0, r1
	bge _08114E00
	strh r1, [r7]
	b _08114E00
	.align 2, 0
_08114DC4: .4byte 0xFFFFFDC0
_08114DC8:
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r7, r0, #0
	cmp r1, #0
	bge _08114DE6
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08114DF4
	b _08114DF2
_08114DE6:
	adds r0, r2, #0
	subs r0, #0x12
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08114DF4
_08114DF2:
	strh r4, [r7]
_08114DF4:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _08114E00
	movs r0, #1
	strh r0, [r6, #4]
_08114E00:
	ldr r1, [r6, #0x40]
	ldr r0, _08114E34 @ =0x00001FFF
	cmp r1, r0
	bgt _08114E10
	adds r0, #1
	str r0, [r6, #0x40]
	movs r0, #1
	strh r0, [r6, #4]
_08114E10:
	ldr r0, [r6, #0x40]
	movs r1, #0xd8
	lsls r1, r1, #8
	cmp r0, r1
	ble _08114E20
	str r1, [r6, #0x40]
	movs r0, #1
	strh r0, [r6, #4]
_08114E20:
	ldrh r0, [r6, #4]
	subs r1, r0, #1
	strh r1, [r6, #4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08114E38
	adds r0, r6, #0
	bl sub_08114A4C
	b _08114FCA
	.align 2, 0
_08114E34: .4byte 0x00001FFF
_08114E38:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _08114E42
	b _08114FCA
_08114E42:
	ldr r2, _08114F00 @ =gRngVal
	ldr r0, [r2]
	ldr r4, _08114F04 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08114F08 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #7
	ands r0, r3
	cmp r0, #0
	bne _08114E5C
	b _08114FCA
_08114E5C:
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, _08114F08 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	ands r5, r3
	cmp r5, #0
	beq _08114F28
	ldr r2, _08114F0C @ =0xFFFFFD60
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #2
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldr r1, _08114F10 @ =gKirbys
	ldr r0, _08114F14 @ =gUnk_0203AD3C
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
	beq _08114EAC
	b _08114FCA
_08114EAC:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08114EBE
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _08114EBE
	b _08114FCA
_08114EBE:
	ldr r1, _08114F18 @ =gUnk_08D60FA4
	ldr r4, _08114F1C @ =gSongTable
	ldr r2, _08114F20 @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08114EE4
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08114FCA
_08114EE4:
	cmp r3, #0
	beq _08114EF6
	ldr r0, _08114F24 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08114FCA
_08114EF6:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08114FCA
	.align 2, 0
_08114F00: .4byte gRngVal
_08114F04: .4byte 0x00196225
_08114F08: .4byte 0x3C6EF35F
_08114F0C: .4byte 0xFFFFFD60
_08114F10: .4byte gKirbys
_08114F14: .4byte gUnk_0203AD3C
_08114F18: .4byte gUnk_08D60FA4
_08114F1C: .4byte gSongTable
_08114F20: .4byte 0x00000D54
_08114F24: .4byte gUnk_0203AD10
_08114F28:
	ldr r4, _08114FD8 @ =0xFFFFFD60
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl sub_08117A9C
	movs r3, #0xc
	rsbs r3, r3, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08117A9C
	strh r5, [r7]
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldr r1, _08114FDC @ =gKirbys
	ldr r0, _08114FE0 @ =gUnk_0203AD3C
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
	bne _08114FCA
	ldrb r0, [r6]
	cmp r0, #0
	bne _08114F8A
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08114FCA
_08114F8A:
	ldr r1, _08114FE4 @ =gUnk_08D60FA4
	ldr r4, _08114FE8 @ =gSongTable
	ldr r2, _08114FEC @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08114FB0
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08114FCA
_08114FB0:
	cmp r3, #0
	beq _08114FC2
	ldr r0, _08114FF0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08114FCA
_08114FC2:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08114FCA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08114FD8: .4byte 0xFFFFFD60
_08114FDC: .4byte gKirbys
_08114FE0: .4byte gUnk_0203AD3C
_08114FE4: .4byte gUnk_08D60FA4
_08114FE8: .4byte gSongTable
_08114FEC: .4byte 0x00000D54
_08114FF0: .4byte gUnk_0203AD10

	thumb_func_start sub_08114FF4
sub_08114FF4: @ 0x08114FF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811509C @ =sub_081150C0
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
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #8
	strb r0, [r1]
	adds r1, #1
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, _081150A0 @ =gKirbys
	ldr r0, _081150A4 @ =gUnk_0203AD3C
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
	bne _08115096
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811505A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115096
_0811505A:
	ldr r1, _081150A8 @ =gUnk_08D60FA4
	ldr r4, _081150AC @ =gSongTable
	ldr r2, _081150B0 @ =0x00000D3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811507E
	ldr r1, _081150B4 @ =0x00000D38
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115096
_0811507E:
	cmp r3, #0
	beq _08115090
	ldr r0, _081150B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115096
_08115090:
	ldr r0, _081150BC @ =0x000001A7
	bl m4aSongNumStart
_08115096:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811509C: .4byte sub_081150C0
_081150A0: .4byte gKirbys
_081150A4: .4byte gUnk_0203AD3C
_081150A8: .4byte gUnk_08D60FA4
_081150AC: .4byte gSongTable
_081150B0: .4byte 0x00000D3C
_081150B4: .4byte 0x00000D38
_081150B8: .4byte gUnk_0203AD10
_081150BC: .4byte 0x000001A7

	thumb_func_start sub_081150C0
sub_081150C0: @ 0x081150C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	cmp r0, #0
	beq _0811512E
	subs r0, #1
	strb r0, [r1]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0811517A
	adds r0, r4, #0
	bl sub_08118A60
	ldr r2, _08115104 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115108 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811510C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08115110
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	b _08115118
	.align 2, 0
_08115104: .4byte gRngVal
_08115108: .4byte 0x00196225
_0811510C: .4byte 0x3C6EF35F
_08115110:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #2
_08115118:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _0811517A
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _0811517A
_0811512E:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _08115140
	subs r0, #1
	strb r0, [r1]
	b _0811517A
_08115140:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _0811515E
	adds r0, r3, #0
	adds r0, #0x60
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811516C
	b _0811516A
_0811515E:
	adds r0, r3, #0
	subs r0, #0x60
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811516C
_0811516A:
	strh r5, [r2]
_0811516C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0811517A
	adds r0, r4, #0
	bl sub_08114AB0
_0811517A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08115180
sub_08115180: @ 0x08115180
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115224 @ =sub_08115240
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #5
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_08118A60
	ldr r1, _08115228 @ =gKirbys
	ldr r0, _0811522C @ =gUnk_0203AD3C
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
	bne _0811521E
	ldrb r0, [r4]
	cmp r0, #0
	bne _081151DE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811521E
_081151DE:
	ldr r1, _08115230 @ =gUnk_08D60FA4
	ldr r4, _08115234 @ =gSongTable
	ldr r2, _08115238 @ =0x00000C04
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115204
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811521E
_08115204:
	cmp r3, #0
	beq _08115216
	ldr r0, _0811523C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811521E
_08115216:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811521E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115224: .4byte sub_08115240
_08115228: .4byte gKirbys
_0811522C: .4byte gUnk_0203AD3C
_08115230: .4byte gUnk_08D60FA4
_08115234: .4byte gSongTable
_08115238: .4byte 0x00000C04
_0811523C: .4byte gUnk_0203AD10

	thumb_func_start sub_08115240
sub_08115240: @ 0x08115240
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x52
	ldr r1, _08115280 @ =0xFFFFFED8
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfa
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _0811526A
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
_0811526A:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811527C
	adds r0, r3, #0
	bl sub_08118734
_0811527C:
	pop {r0}
	bx r0
	.align 2, 0
_08115280: .4byte 0xFFFFFED8

	thumb_func_start sub_08115284
sub_08115284: @ 0x08115284
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	cmp r0, r3
	ble _081152A8
	strh r3, [r1]
_081152A8:
	ldr r1, [r2, #0x44]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152E2
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152D6
	movs r0, #0xa4
	lsls r0, r0, #8
	cmp r1, r0
	ble _081152CC
	ldrh r0, [r2, #4]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x50
	b _081152E8
_081152CC:
	ldrh r1, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	b _081152EA
_081152D6:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r1, r2, #0
	adds r1, #0x50
	b _081152E8
_081152E2:
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
_081152E8:
	strh r0, [r1]
_081152EA:
	ldr r1, [r2, #0x44]
	ldr r0, _08115308 @ =0x000027FF
	cmp r1, r0
	bgt _08115304
	adds r0, #1
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08114AB0
_08115304:
	pop {r0}
	bx r0
	.align 2, 0
_08115308: .4byte 0x000027FF

	thumb_func_start sub_0811530C
sub_0811530C: @ 0x0811530C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115360 @ =sub_08115370
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	ldr r2, _08115364 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115368 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811536C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	cmp r0, #1
	bhi _0811535A
	movs r0, #1
	strh r0, [r4, #4]
_0811535A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115360: .4byte sub_08115370
_08115364: .4byte gRngVal
_08115368: .4byte 0x00196225
_0811536C: .4byte 0x3C6EF35F

	thumb_func_start sub_08115370
sub_08115370: @ 0x08115370
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	adds r2, r6, #0
	adds r2, #0x54
	ldr r0, _0811542C @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081153AA
	b _081154F6
_081153AA:
	ldr r1, _08115430 @ =gKirbys
	ldr r0, _08115434 @ =gUnk_0203AD3C
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
	bne _08115416
	ldrb r0, [r6]
	cmp r0, #0
	bne _081153D6
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115416
_081153D6:
	ldr r1, _08115438 @ =gUnk_08D60FA4
	ldr r4, _0811543C @ =gSongTable
	ldr r2, _08115440 @ =0x00000D54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081153FC
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115416
_081153FC:
	cmp r3, #0
	beq _0811540E
	ldr r0, _08115444 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115416
_0811540E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115416:
	adds r0, r6, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	blt _081154BC
	cmp r0, #1
	ble _08115448
	cmp r0, #2
	beq _08115494
	b _081154BC
	.align 2, 0
_0811542C: .4byte gUnk_0203AD40
_08115430: .4byte gKirbys
_08115434: .4byte gUnk_0203AD3C
_08115438: .4byte gUnk_08D60FA4
_0811543C: .4byte gSongTable
_08115440: .4byte 0x00000D54
_08115444: .4byte gUnk_0203AD10
_08115448:
	ldr r2, _0811548C @ =0xFFFFFD80
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	ldr r2, _08115490 @ =sub_08114CBC
	adds r0, r6, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r6, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	movs r0, #0x3c
	strh r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r6, #0
	bl sub_0803D46C
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	b _081154F6
	.align 2, 0
_0811548C: .4byte 0xFFFFFD80
_08115490: .4byte sub_08114CBC
_08115494:
	ldr r5, _081154B8 @ =0xFFFFFD80
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_08117A9C
	movs r3, #0xc
	rsbs r3, r3, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_08117A9C
	b _081154F0
	.align 2, 0
_081154B8: .4byte 0xFFFFFD80
_081154BC:
	ldr r4, _08115500 @ =0xFFFFFD80
	movs r5, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0xa0
	adds r2, r4, #0
	movs r3, #8
	bl sub_08117A9C
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08117A9C
	movs r1, #0xa0
	rsbs r1, r1, #0
	movs r3, #8
	rsbs r3, r3, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08117A9C
_081154F0:
	adds r0, r6, #0
	bl sub_0811879C
_081154F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08115500: .4byte 0xFFFFFD80

	thumb_func_start sub_08115504
sub_08115504: @ 0x08115504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08115554
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _08115550 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08115612
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	strh r0, [r1]
	b _08115612
	.align 2, 0
_08115550: .4byte gUnk_0203AD40
_08115554:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _081155DC
	ldr r1, _08115618 @ =gKirbys
	ldr r0, _0811561C @ =gUnk_0203AD3C
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
	bne _081155D0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115590
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081155D0
_08115590:
	ldr r1, _08115620 @ =gUnk_08D60FA4
	ldr r5, _08115624 @ =gSongTable
	ldr r2, _08115628 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081155B6
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081155D0
_081155B6:
	cmp r3, #0
	beq _081155C8
	ldr r0, _0811562C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081155D0
_081155C8:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081155D0:
	ldr r2, _08115630 @ =0xFFFFFA00
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08117964
_081155DC:
	adds r2, r4, #0
	adds r2, #0x55
	ldr r0, _08115634 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08115612
	adds r0, r4, #0
	bl sub_08114BA0
	ldrh r0, [r4, #4]
	adds r0, #0x12
	strh r0, [r4, #4]
_08115612:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08115618: .4byte gKirbys
_0811561C: .4byte gUnk_0203AD3C
_08115620: .4byte gUnk_08D60FA4
_08115624: .4byte gSongTable
_08115628: .4byte 0x00000D54
_0811562C: .4byte gUnk_0203AD10
_08115630: .4byte 0xFFFFFA00
_08115634: .4byte gUnk_0203AD40

	thumb_func_start sub_08115638
sub_08115638: @ 0x08115638
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08115730
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _081156D0 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811567A
	b _081157EE
_0811567A:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x40
	strh r0, [r1]
	ldr r2, _081156D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081156D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081156DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _081156E0 @ =0x00005554
	cmp r2, r0
	bls _081156F8
	ldr r0, _081156E4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _081156A2
	movs r1, #1
_081156A2:
	cmp r1, #0
	beq _081156F8
	ldr r1, [r4, #0x40]
	ldr r0, _081156E8 @ =0x00005FFF
	cmp r1, r0
	ble _081156EC
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r1, r0
	bgt _081156C2
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _081156EC
_081156C2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_081156D0: .4byte gUnk_0203AD40
_081156D4: .4byte gRngVal
_081156D8: .4byte 0x00196225
_081156DC: .4byte 0x3C6EF35F
_081156E0: .4byte 0x00005554
_081156E4: .4byte 0x0000AAA9
_081156E8: .4byte 0x00005FFF
_081156EC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _081157EE
_081156F8:
	adds r0, r4, #0
	bl sub_08118A60
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _0811571C @ =0x00007FFF
	cmp r1, r0
	bgt _08115720
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_0811571C: .4byte 0x00007FFF
_08115720:
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811572C @ =0x0000FDC0
	strh r0, [r1]
	b _081157EE
	.align 2, 0
_0811572C: .4byte 0x0000FDC0
_08115730:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _081157B8
	ldr r1, _081157F4 @ =gKirbys
	ldr r0, _081157F8 @ =gUnk_0203AD3C
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
	bne _081157AC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811576C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081157AC
_0811576C:
	ldr r1, _081157FC @ =gUnk_08D60FA4
	ldr r5, _08115800 @ =gSongTable
	ldr r2, _08115804 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115792
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081157AC
_08115792:
	cmp r3, #0
	beq _081157A4
	ldr r0, _08115808 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081157AC
_081157A4:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081157AC:
	ldr r2, _0811580C @ =0xFFFFFC00
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
_081157B8:
	adds r2, r4, #0
	adds r2, #0x55
	ldr r0, _08115810 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _081157EE
	adds r0, r4, #0
	bl sub_08114BA0
	ldrh r0, [r4, #4]
	adds r0, #0x12
	strh r0, [r4, #4]
_081157EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081157F4: .4byte gKirbys
_081157F8: .4byte gUnk_0203AD3C
_081157FC: .4byte gUnk_08D60FA4
_08115800: .4byte gSongTable
_08115804: .4byte 0x00000D54
_08115808: .4byte gUnk_0203AD10
_0811580C: .4byte 0xFFFFFC00
_08115810: .4byte gUnk_0203AD40

	thumb_func_start sub_08115814
sub_08115814: @ 0x08115814
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08115884 @ =sub_0811589C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r3, r4, #0
	adds r3, #0x85
	strb r2, [r3]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _08115888 @ =gUnk_08351530
	ldr r0, _0811588C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0xc8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _0811587C
	ldr r2, _08115890 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08115894 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08115898 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	strb r0, [r3]
_0811587C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08115884: .4byte sub_0811589C
_08115888: .4byte gUnk_08351530
_0811588C: .4byte gUnk_0203AD30
_08115890: .4byte gRngVal
_08115894: .4byte 0x00196225
_08115898: .4byte 0x3C6EF35F

	thumb_func_start sub_0811589C
sub_0811589C: @ 0x0811589C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #6
	bls _081158BA
	b _08115E22
_081158BA:
	lsls r0, r0, #2
	ldr r1, _081158C4 @ =_081158C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081158C4: .4byte _081158C8
_081158C8: @ jump table
	.4byte _081158E4 @ case 0
	.4byte _081159D0 @ case 1
	.4byte _08115A00 @ case 2
	.4byte _08115B00 @ case 3
	.4byte _08115BFC @ case 4
	.4byte _08115D08 @ case 5
	.4byte _08115E04 @ case 6
_081158E4:
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _081159B0 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	mov r2, r8
	adds r2, #0xb4
	ldr r0, [r2]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	adds r6, r2, #0
	cmp r0, #0
	beq _08115912
	b _08115E22
_08115912:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #4
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r1, _081159B4 @ =gKirbys
	ldr r0, _081159B8 @ =gUnk_0203AD3C
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
	bne _0811598C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811594C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811598C
_0811594C:
	ldr r1, _081159BC @ =gUnk_08D60FA4
	ldr r5, _081159C0 @ =gSongTable
	ldr r2, _081159C4 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115972
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811598C
_08115972:
	cmp r3, #0
	beq _08115984
	ldr r0, _081159C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811598C
_08115984:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811598C:
	ldr r2, _081159CC @ =0xFFFFFEC0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0x41
	strb r1, [r0]
	b _08115E22
	.align 2, 0
_081159B0: .4byte gUnk_0203AD40
_081159B4: .4byte gKirbys
_081159B8: .4byte gUnk_0203AD3C
_081159BC: .4byte gUnk_08D60FA4
_081159C0: .4byte gSongTable
_081159C4: .4byte 0x00000D54
_081159C8: .4byte gUnk_0203AD10
_081159CC: .4byte 0xFFFFFEC0
_081159D0:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _081159E2
	b _08115E22
_081159E2:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	subs r1, #0x19
	movs r0, #0xa0
	lsls r0, r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r0, #8
	strb r0, [r2]
	b _08115E22
_08115A00:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115A16
	b _08115E22
_08115A16:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115AB6
	ldr r1, _08115AE0 @ =gKirbys
	ldr r0, _08115AE4 @ =gUnk_0203AD3C
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
	bne _08115A96
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115A56
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115A96
_08115A56:
	ldr r1, _08115AE8 @ =gUnk_08D60FA4
	ldr r5, _08115AEC @ =gSongTable
	ldr r2, _08115AF0 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115A7C
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115A96
_08115A7C:
	cmp r3, #0
	beq _08115A8E
	ldr r0, _08115AF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115A96
_08115A8E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115A96:
	ldr r2, _08115AF8 @ =0xFFFFFE70
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115AB6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115AC6
	b _08115E22
_08115AC6:
	adds r1, r4, #0
	adds r1, #0x85
	ldr r0, _08115AFC @ =0xFFFFFD80
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #3
	b _08115CD8
	.align 2, 0
_08115AE0: .4byte gKirbys
_08115AE4: .4byte gUnk_0203AD3C
_08115AE8: .4byte gUnk_08D60FA4
_08115AEC: .4byte gSongTable
_08115AF0: .4byte 0x00000D54
_08115AF4: .4byte gUnk_0203AD10
_08115AF8: .4byte 0xFFFFFE70
_08115AFC: .4byte 0xFFFFFD80
_08115B00:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115B16
	b _08115E22
_08115B16:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115BB6
	ldr r1, _08115BE0 @ =gKirbys
	ldr r0, _08115BE4 @ =gUnk_0203AD3C
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
	bne _08115B96
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115B56
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115B96
_08115B56:
	ldr r1, _08115BE8 @ =gUnk_08D60FA4
	ldr r5, _08115BEC @ =gSongTable
	ldr r2, _08115BF0 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115B7C
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115B96
_08115B7C:
	cmp r3, #0
	beq _08115B8E
	ldr r0, _08115BF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115B96
_08115B8E:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115B96:
	ldr r2, _08115BF8 @ =0xFFFFFDE8
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115BB6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115BC6
	b _08115E22
_08115BC6:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x80
	lsls r0, r0, #3
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #4
	b _08115CD8
	.align 2, 0
_08115BE0: .4byte gKirbys
_08115BE4: .4byte gUnk_0203AD3C
_08115BE8: .4byte gUnk_08D60FA4
_08115BEC: .4byte gSongTable
_08115BF0: .4byte 0x00000D54
_08115BF4: .4byte gUnk_0203AD10
_08115BF8: .4byte 0xFFFFFDE8
_08115BFC:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115C12
	b _08115E22
_08115C12:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115CB2
	ldr r1, _08115CE8 @ =gKirbys
	ldr r0, _08115CEC @ =gUnk_0203AD3C
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
	bne _08115C92
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115C52
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115C92
_08115C52:
	ldr r1, _08115CF0 @ =gUnk_08D60FA4
	ldr r5, _08115CF4 @ =gSongTable
	ldr r2, _08115CF8 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115C78
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115C92
_08115C78:
	cmp r3, #0
	beq _08115C8A
	ldr r0, _08115CFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115C92
_08115C8A:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115C92:
	ldr r2, _08115D00 @ =0xFFFFFCC0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115CB2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _08115CC2
	b _08115E22
_08115CC2:
	adds r1, r4, #0
	adds r1, #0x85
	ldr r0, _08115D04 @ =0xFFFFFA80
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #8
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #5
_08115CD8:
	strb r0, [r1]
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08118A60
	b _08115E22
	.align 2, 0
_08115CE8: .4byte gKirbys
_08115CEC: .4byte gUnk_0203AD3C
_08115CF0: .4byte gUnk_08D60FA4
_08115CF4: .4byte gSongTable
_08115CF8: .4byte 0x00000D54
_08115CFC: .4byte gUnk_0203AD10
_08115D00: .4byte 0xFFFFFCC0
_08115D04: .4byte 0xFFFFFA80
_08115D08:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r6, r1, #0
	cmp r2, #0
	beq _08115D1E
	b _08115E22
_08115D1E:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r1, #1
	strb r1, [r6]
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08115DBE
	ldr r1, _08115DE8 @ =gKirbys
	ldr r0, _08115DEC @ =gUnk_0203AD3C
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
	bne _08115D9E
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115D5E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115D9E
_08115D5E:
	ldr r1, _08115DF0 @ =gUnk_08D60FA4
	ldr r5, _08115DF4 @ =gSongTable
	ldr r2, _08115DF8 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115D84
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115D9E
_08115D84:
	cmp r3, #0
	beq _08115D96
	ldr r0, _08115DFC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115D9E
_08115D96:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115D9E:
	ldr r2, _08115E00 @ =0xFFFFF9C0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08117964
	adds r0, r4, #0
	adds r0, #0x55
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x41
	strb r1, [r0]
_08115DBE:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08115E22
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x80
	lsls r0, r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	strh r0, [r7]
	movs r0, #0x10
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #6
	strb r0, [r1]
	b _08115E22
	.align 2, 0
_08115DE8: .4byte gKirbys
_08115DEC: .4byte gUnk_0203AD3C
_08115DF0: .4byte gUnk_08D60FA4
_08115DF4: .4byte gSongTable
_08115DF8: .4byte 0x00000D54
_08115DFC: .4byte gUnk_0203AD10
_08115E00: .4byte 0xFFFFF9C0
_08115E04:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08115E22
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08114BA0
_08115E22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08115E2C
sub_08115E2C: @ 0x08115E2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #9
	bls _08115E46
	b _08116436
_08115E46:
	lsls r0, r0, #2
	ldr r1, _08115E50 @ =_08115E54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08115E50: .4byte _08115E54
_08115E54: @ jump table
	.4byte _08115E7C @ case 0
	.4byte _08115EB0 @ case 1
	.4byte _08115F60 @ case 2
	.4byte _0811600C @ case 3
	.4byte _081160B8 @ case 4
	.4byte _08116160 @ case 5
	.4byte _0811620C @ case 6
	.4byte _081162B8 @ case 7
	.4byte _08116368 @ case 8
	.4byte _0811641C @ case 9
_08115E7C:
	adds r2, r4, #0
	adds r2, #0x54
	ldr r0, _08115EAC @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115EA8
	b _08116436
_08115EA8:
	movs r0, #8
	b _08116376
	.align 2, 0
_08115EAC: .4byte gUnk_0203AD40
_08115EB0:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115EBE
	b _08116436
_08115EBE:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08115F40 @ =gKirbys
	ldr r0, _08115F44 @ =gUnk_0203AD3C
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
	bne _08115F38
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115EF8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115F38
_08115EF8:
	ldr r1, _08115F48 @ =gUnk_08D60FA4
	ldr r5, _08115F4C @ =gSongTable
	ldr r2, _08115F50 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115F1E
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115F38
_08115F1E:
	cmp r3, #0
	beq _08115F30
	ldr r0, _08115F54 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115F38
_08115F30:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115F38:
	ldr r1, _08115F58 @ =0x000001FD
	ldr r2, _08115F5C @ =0xFFFFFE03
	b _081163F2
	.align 2, 0
_08115F40: .4byte gKirbys
_08115F44: .4byte gUnk_0203AD3C
_08115F48: .4byte gUnk_08D60FA4
_08115F4C: .4byte gSongTable
_08115F50: .4byte 0x00000D54
_08115F54: .4byte gUnk_0203AD10
_08115F58: .4byte 0x000001FD
_08115F5C: .4byte 0xFFFFFE03
_08115F60:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08115F6E
	b _08116436
_08115F6E:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08115FF0 @ =gKirbys
	ldr r0, _08115FF4 @ =gUnk_0203AD3C
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
	bne _08115FE8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08115FA8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08115FE8
_08115FA8:
	ldr r1, _08115FF8 @ =gUnk_08D60FA4
	ldr r5, _08115FFC @ =gSongTable
	ldr r2, _08116000 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08115FCE
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08115FE8
_08115FCE:
	cmp r3, #0
	beq _08115FE0
	ldr r0, _08116004 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08115FE8
_08115FE0:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08115FE8:
	ldr r2, _08116008 @ =0xFFFFFD30
	adds r0, r4, #0
	movs r1, #0
	b _081163F4
	.align 2, 0
_08115FF0: .4byte gKirbys
_08115FF4: .4byte gUnk_0203AD3C
_08115FF8: .4byte gUnk_08D60FA4
_08115FFC: .4byte gSongTable
_08116000: .4byte 0x00000D54
_08116004: .4byte gUnk_0203AD10
_08116008: .4byte 0xFFFFFD30
_0811600C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811601A
	b _08116436
_0811601A:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0811609C @ =gKirbys
	ldr r0, _081160A0 @ =gUnk_0203AD3C
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
	bne _08116094
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116054
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116094
_08116054:
	ldr r1, _081160A4 @ =gUnk_08D60FA4
	ldr r5, _081160A8 @ =gSongTable
	ldr r2, _081160AC @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811607A
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116094
_0811607A:
	cmp r3, #0
	beq _0811608C
	ldr r0, _081160B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116094
_0811608C:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116094:
	ldr r2, _081160B4 @ =0xFFFFFE03
	adds r0, r4, #0
	adds r1, r2, #0
	b _081163F4
	.align 2, 0
_0811609C: .4byte gKirbys
_081160A0: .4byte gUnk_0203AD3C
_081160A4: .4byte gUnk_08D60FA4
_081160A8: .4byte gSongTable
_081160AC: .4byte 0x00000D54
_081160B0: .4byte gUnk_0203AD10
_081160B4: .4byte 0xFFFFFE03
_081160B8:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081160C6
	b _08116436
_081160C6:
	movs r0, #0x10
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08116144 @ =gKirbys
	ldr r0, _08116148 @ =gUnk_0203AD3C
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
	bne _08116140
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116100
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116140
_08116100:
	ldr r1, _0811614C @ =gUnk_08D60FA4
	ldr r5, _08116150 @ =gSongTable
	ldr r2, _08116154 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116126
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116140
_08116126:
	cmp r3, #0
	beq _08116138
	ldr r0, _08116158 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116140
_08116138:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116140:
	ldr r1, _0811615C @ =0xFFFFFD93
	b _081163F0
	.align 2, 0
_08116144: .4byte gKirbys
_08116148: .4byte gUnk_0203AD3C
_0811614C: .4byte gUnk_08D60FA4
_08116150: .4byte gSongTable
_08116154: .4byte 0x00000D54
_08116158: .4byte gUnk_0203AD10
_0811615C: .4byte 0xFFFFFD93
_08116160:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811616E
	b _08116436
_0811616E:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _081161F0 @ =gKirbys
	ldr r0, _081161F4 @ =gUnk_0203AD3C
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
	bne _081161E8
	ldrb r0, [r4]
	cmp r0, #0
	bne _081161A8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081161E8
_081161A8:
	ldr r1, _081161F8 @ =gUnk_08D60FA4
	ldr r5, _081161FC @ =gSongTable
	ldr r2, _08116200 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081161CE
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081161E8
_081161CE:
	cmp r3, #0
	beq _081161E0
	ldr r0, _08116204 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081161E8
_081161E0:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081161E8:
	ldr r2, _08116208 @ =0xFFFFFE03
	adds r0, r4, #0
	adds r1, r2, #0
	b _081163F4
	.align 2, 0
_081161F0: .4byte gKirbys
_081161F4: .4byte gUnk_0203AD3C
_081161F8: .4byte gUnk_08D60FA4
_081161FC: .4byte gSongTable
_08116200: .4byte 0x00000D54
_08116204: .4byte gUnk_0203AD10
_08116208: .4byte 0xFFFFFE03
_0811620C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0811621A
	b _08116436
_0811621A:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0811629C @ =gKirbys
	ldr r0, _081162A0 @ =gUnk_0203AD3C
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
	bne _08116294
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116254
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116294
_08116254:
	ldr r1, _081162A4 @ =gUnk_08D60FA4
	ldr r5, _081162A8 @ =gSongTable
	ldr r2, _081162AC @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811627A
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116294
_0811627A:
	cmp r3, #0
	beq _0811628C
	ldr r0, _081162B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116294
_0811628C:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116294:
	ldr r2, _081162B4 @ =0xFFFFFD30
	adds r0, r4, #0
	movs r1, #0
	b _081163F4
	.align 2, 0
_0811629C: .4byte gKirbys
_081162A0: .4byte gUnk_0203AD3C
_081162A4: .4byte gUnk_08D60FA4
_081162A8: .4byte gSongTable
_081162AC: .4byte 0x00000D54
_081162B0: .4byte gUnk_0203AD10
_081162B4: .4byte 0xFFFFFD30
_081162B8:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081162C6
	b _08116436
_081162C6:
	movs r0, #4
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08116348 @ =gKirbys
	ldr r0, _0811634C @ =gUnk_0203AD3C
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
	bne _08116340
	ldrb r0, [r4]
	cmp r0, #0
	bne _08116300
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116340
_08116300:
	ldr r1, _08116350 @ =gUnk_08D60FA4
	ldr r5, _08116354 @ =gSongTable
	ldr r2, _08116358 @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116326
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116340
_08116326:
	cmp r3, #0
	beq _08116338
	ldr r0, _0811635C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116340
_08116338:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_08116340:
	ldr r1, _08116360 @ =0x000001FD
	ldr r2, _08116364 @ =0xFFFFFE03
	b _081163F2
	.align 2, 0
_08116348: .4byte gKirbys
_0811634C: .4byte gUnk_0203AD3C
_08116350: .4byte gUnk_08D60FA4
_08116354: .4byte gSongTable
_08116358: .4byte 0x00000D54
_0811635C: .4byte gUnk_0203AD10
_08116360: .4byte 0x000001FD
_08116364: .4byte 0xFFFFFE03
_08116368:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08116436
	movs r0, #4
_08116376:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _081163FC @ =gKirbys
	ldr r0, _08116400 @ =gUnk_0203AD3C
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
	bne _081163EE
	ldrb r0, [r4]
	cmp r0, #0
	bne _081163AE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081163EE
_081163AE:
	ldr r1, _08116404 @ =gUnk_08D60FA4
	ldr r5, _08116408 @ =gSongTable
	ldr r2, _0811640C @ =0x00000D54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081163D4
	movs r1, #0xd5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081163EE
_081163D4:
	cmp r3, #0
	beq _081163E6
	ldr r0, _08116410 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081163EE
_081163E6:
	movs r0, #0xd5
	lsls r0, r0, #1
	bl m4aSongNumStart
_081163EE:
	ldr r1, _08116414 @ =0x0000026D
_081163F0:
	ldr r2, _08116418 @ =0xFFFFFE98
_081163F2:
	adds r0, r4, #0
_081163F4:
	movs r3, #0
	bl sub_08117964
	b _08116436
	.align 2, 0
_081163FC: .4byte gKirbys
_08116400: .4byte gUnk_0203AD3C
_08116404: .4byte gUnk_08D60FA4
_08116408: .4byte gSongTable
_0811640C: .4byte 0x00000D54
_08116410: .4byte gUnk_0203AD10
_08116414: .4byte 0x0000026D
_08116418: .4byte 0xFFFFFE98
_0811641C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08116436
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08114BA0
_08116436:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0811643C
sub_0811643C: @ 0x0811643C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _081164D4 @ =gUnk_03000510
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
	bne _081164CC
	adds r6, r4, #0
	adds r6, #0xba
	adds r5, r4, #0
	adds r5, #0x80
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08116486
	ldr r1, _081164D8 @ =gUnk_08357ACC
	adds r0, r4, #0
	bl sub_080860A8
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08034E14
_08116486:
	ldrh r0, [r5]
	strh r0, [r6]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081164CC
	ldr r5, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_08034E14
	ldrb r0, [r5]
	cmp r0, #0
	bne _081164CC
	ldr r2, [r5, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _081164CC
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _081164CC
	adds r0, r5, #0
	bl sub_08052E2C
	ldr r1, _081164DC @ =gUnk_08357AD4
	adds r0, r4, #0
	bl sub_080860A8
_081164CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081164D4: .4byte gUnk_03000510
_081164D8: .4byte gUnk_08357ACC
_081164DC: .4byte gUnk_08357AD4

	thumb_func_start sub_081164E0
sub_081164E0: @ 0x081164E0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	ldr r1, [r6, #0x78]
	ldr r0, _0811655C @ =sub_08116E74
	cmp r1, r0
	beq _08116500
	ldr r0, _08116560 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08116500
	adds r0, r6, #0
	bl sub_08116DE4
_08116500:
	ldr r0, _08116564 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r5, r4, #0
	adds r5, #0x56
	movs r0, #1
	ldrb r1, [r5]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811651A
	b _0811664C
_0811651A:
	adds r0, r4, #0
	bl sub_08116C54
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0811652E
	b _0811664C
_0811652E:
	ldr r3, [r4, #0x6c]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08116568
	ldr r2, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0811654A
	b _0811664C
_0811654A:
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _0811664C
	adds r0, r3, #0
	bl sub_08052E2C
	b _0811664C
	.align 2, 0
_0811655C: .4byte sub_08116E74
_08116560: .4byte gUnk_0203AD10
_08116564: .4byte gUnk_03000510
_08116568:
	adds r0, r4, #0
	bl sub_08117C84
	adds r0, r4, #0
	bl sub_08117C84
	ldr r1, _081165F4 @ =gKirbys
	ldr r0, _081165F8 @ =gUnk_0203AD3C
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
	bne _081165DC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811659C
	ldrb r0, [r5]
	cmp r0, r2
	bne _081165DC
_0811659C:
	ldr r1, _081165FC @ =gUnk_08D60FA4
	ldr r5, _08116600 @ =gSongTable
	ldr r2, _08116604 @ =0x00000D84
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081165C2
	movs r1, #0xd8
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081165DC
_081165C2:
	cmp r3, #0
	beq _081165D4
	ldr r0, _08116608 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081165DC
_081165D4:
	movs r0, #0xd8
	lsls r0, r0, #1
	bl m4aSongNumStart
_081165DC:
	ldr r0, _08116608 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0811660C
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	b _0811664C
	.align 2, 0
_081165F4: .4byte gKirbys
_081165F8: .4byte gUnk_0203AD3C
_081165FC: .4byte gUnk_08D60FA4
_08116600: .4byte gSongTable
_08116604: .4byte 0x00000D84
_08116608: .4byte gUnk_0203AD10
_0811660C:
	adds r1, r6, #0
	adds r1, #0xbe
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0811664C
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _0811664C
	adds r1, #2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	subs r0, #0xa
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #9
	bls _0811664C
	subs r0, #0xa
	strb r0, [r1]
_0811664C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08116654
sub_08116654: @ 0x08116654
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _081167D8 @ =gUnk_08357B14
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x54
	strb r0, [r3]
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r0, #1
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x55
	adds r2, r2, r4
	mov ip, r2
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	mov r3, ip
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0811671C
	ldr r1, _081167DC @ =gKirbys
	ldr r0, _081167E0 @ =gUnk_0203AD3C
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
	bne _0811671C
	ldrb r0, [r4]
	cmp r0, #0
	bne _081166E0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811671C
_081166E0:
	ldr r1, _081167E4 @ =gUnk_08D60FA4
	ldr r5, _081167E8 @ =gSongTable
	ldr r2, _081167EC @ =0x0000129C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116704
	ldr r1, _081167F0 @ =0x00001298
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811671C
_08116704:
	cmp r3, #0
	beq _08116716
	ldr r0, _081167F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811671C
_08116716:
	ldr r0, _081167F8 @ =0x00000253
	bl m4aSongNumStart
_0811671C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r5, r4, #0
	adds r5, #0x9f
	movs r2, #0x83
	adds r2, r2, r4
	mov r8, r2
	adds r6, r4, #0
	adds r6, #0x50
	movs r3, #0x52
	adds r3, r3, r4
	mov ip, r3
	cmp r1, #0
	bne _0811681E
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r3, _081167FC @ =gUnk_083573F0
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0811675E
	subs r0, r1, #1
	strb r0, [r5]
_0811675E:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08116782
	mov r0, r8
	strb r1, [r0]
_08116782:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08116800
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
	mov sb, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _081167B0
	mov r0, sb
	strh r0, [r6]
_081167B0:
	ldrb r2, [r5]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _0811681E
	mov r0, ip
	strh r2, [r0]
	b _0811681E
	.align 2, 0
_081167D8: .4byte gUnk_08357B14
_081167DC: .4byte gKirbys
_081167E0: .4byte gUnk_0203AD3C
_081167E4: .4byte gUnk_08D60FA4
_081167E8: .4byte gSongTable
_081167EC: .4byte 0x0000129C
_081167F0: .4byte 0x00001298
_081167F4: .4byte gUnk_0203AD10
_081167F8: .4byte 0x00000253
_081167FC: .4byte gUnk_083573F0
_08116800:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
_0811681E:
	ldr r2, _08116904 @ =gUnk_083573F0
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r1, r0, #1
	strb r1, [r7]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _081168CA
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _081168CA
	ldr r1, _08116908 @ =gKirbys
	ldr r0, _0811690C @ =gUnk_0203AD3C
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
	bne _081168CA
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811688A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _081168CA
_0811688A:
	ldr r1, _08116910 @ =gUnk_08D60FA4
	ldr r6, _08116914 @ =gSongTable
	ldr r2, _08116918 @ =0x00001204
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _081168B0
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081168CA
_081168B0:
	cmp r3, #0
	beq _081168C2
	ldr r0, _0811691C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081168CA
_081168C2:
	movs r0, #0x90
	lsls r0, r0, #2
	bl m4aSongNumStart
_081168CA:
	ldr r2, _08116904 @ =gUnk_083573F0
	ldrb r1, [r5]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _081168F8
	ldrb r0, [r7]
	cmp r0, #0
	bne _081168F8
	adds r0, r4, #0
	bl sub_080700D8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_081168F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08116904: .4byte gUnk_083573F0
_08116908: .4byte gKirbys
_0811690C: .4byte gUnk_0203AD3C
_08116910: .4byte gUnk_08D60FA4
_08116914: .4byte gSongTable
_08116918: .4byte 0x00001204
_0811691C: .4byte gUnk_0203AD10

	thumb_func_start sub_08116920
sub_08116920: @ 0x08116920
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081169C8
	movs r6, #0
	ldr r0, _081169D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	bhs _081169C2
	ldr r0, _081169D8 @ =gUnk_083573D0
	mov r8, r0
	add r1, r8
	mov sb, r1
_08116954:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _081169DC @ =gKirbys
	adds r4, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _081169B4
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081169B4
	adds r0, r4, #0
	bl sub_080525C0
	ldr r1, _081169E0 @ =gUnk_08D6112C
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080531B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r4, #0x40]
	add r1, sb
	ldr r0, [r1]
	str r0, [r4, #0x44]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_081169B4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _081169D4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _08116954
_081169C2:
	adds r0, r5, #0
	bl sub_08118928
_081169C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081169D4: .4byte gUnk_0203AD44
_081169D8: .4byte gUnk_083573D0
_081169DC: .4byte gKirbys
_081169E0: .4byte gUnk_08D6112C

	thumb_func_start sub_081169E4
sub_081169E4: @ 0x081169E4
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
	ldr r4, _08116A9C @ =gUnk_08357648
	cmp r0, #0
	bne _08116AC4
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
	bne _08116A1C
	subs r0, r1, #1
	strb r0, [r3]
_08116A1C:
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
	beq _08116A42
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_08116A42:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08116AA0
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
	beq _08116A70
	mov r0, ip
	adds r0, #0x50
	strh r2, [r0]
_08116A70:
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
	beq _08116AC4
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _08116AC4
	.align 2, 0
_08116A9C: .4byte gUnk_08357648
_08116AA0:
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
_08116AC4:
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
	bne _08116B20
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _08116B20
	mov r0, ip
	bl sub_08116BC0
	b _08116B9A
_08116B20:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9e
	bne _08116B9A
	ldr r1, _08116BA0 @ =gKirbys
	ldr r0, _08116BA4 @ =gUnk_0203AD3C
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
	bne _08116B9A
	mov r3, ip
	ldrb r0, [r3]
	cmp r0, #0
	bne _08116B5E
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08116B9A
_08116B5E:
	ldr r1, _08116BA8 @ =gUnk_08D60FA4
	ldr r4, _08116BAC @ =gSongTable
	ldr r5, _08116BB0 @ =0x0000100C
	adds r0, r4, r5
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08116B82
	ldr r1, _08116BB4 @ =0x00001008
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08116B9A
_08116B82:
	cmp r3, #0
	beq _08116B94
	ldr r0, _08116BB8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08116B9A
_08116B94:
	ldr r0, _08116BBC @ =0x00000201
	bl m4aSongNumStart
_08116B9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08116BA0: .4byte gKirbys
_08116BA4: .4byte gUnk_0203AD3C
_08116BA8: .4byte gUnk_08D60FA4
_08116BAC: .4byte gSongTable
_08116BB0: .4byte 0x0000100C
_08116BB4: .4byte 0x00001008
_08116BB8: .4byte gUnk_0203AD10
_08116BBC: .4byte 0x00000201

	thumb_func_start sub_08116BC0
sub_08116BC0: @ 0x08116BC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _08116BF8 @ =sub_08118964
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #0x40
	strh r1, [r5, #4]
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _08116BF2
	movs r0, #0
	strb r0, [r1, #9]
_08116BF2:
	movs r6, #0
	b _08116C3C
	.align 2, 0
_08116BF8: .4byte sub_08118964
_08116BFC:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08116C4C @ =gKirbys
	adds r4, r1, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08116C36
	adds r0, r4, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08116C36
	adds r0, r4, #0
	bl sub_08052BB4
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_08116C36:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08116C3C:
	ldr r0, _08116C50 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _08116BFC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08116C4C: .4byte gKirbys
_08116C50: .4byte gUnk_0203AD44

	thumb_func_start sub_08116C54
sub_08116C54: @ 0x08116C54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r2, _08116DD0 @ =gUnk_08357B14
	movs r0, #0xbc
	adds r0, r0, r6
	mov sl, r0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x54
	strb r0, [r1]
	mov r3, sl
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r0, #1
	asrs r0, r0, #2
	movs r3, #3
	ands r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x55
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r1]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	mov r4, sl
	ldrh r1, [r4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08116D16
	movs r2, #0xa6
	lsls r2, r2, #2
	ldr r4, _08116DD4 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _08116DD8 @ =0x00196225
	mov sb, r1
	mov r3, sb
	muls r3, r0, r3
	ldr r5, _08116DDC @ =0x3C6EF35F
	adds r3, r3, r5
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #1
	ands r3, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	adds r7, r0, #0
	ldr r0, [r4]
	mov r2, sb
	muls r2, r0, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r3, #0x1f
	mov r8, r3
	ands r1, r3
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, sb
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	mov r4, r8
	ands r0, r4
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
	adds r0, r6, #0
	bl sub_08117F6C
_08116D16:
	mov r0, sl
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08116DB6
	adds r0, r6, #0
	bl sub_08117C84
	ldr r5, _08116DD4 @ =gRngVal
	ldr r0, [r5]
	ldr r1, _08116DD8 @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r4, _08116DDC @ =0x3C6EF35F
	mov sb, r4
	adds r3, r0, r4
	str r3, [r5]
	lsrs r0, r3, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08116D9A
	ldr r2, _08116DE0 @ =0x00000292
	mov r4, r8
	muls r4, r3, r4
	adds r3, r4, #0
	ldr r0, _08116DDC @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r5]
	lsrs r3, r3, #0x10
	ands r3, r1
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808AE30
	adds r7, r0, #0
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	ldr r1, _08116DDC @ =0x3C6EF35F
	adds r2, r2, r1
	str r2, [r5]
	lsrs r1, r2, #0x10
	movs r4, #0x1f
	ands r1, r4
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	ldr r1, _08116DDC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
_08116D9A:
	ldr r0, [r5]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r4, #3
	ands r0, r4
	cmp r0, #0
	bne _08116DB6
	adds r0, r6, #0
	bl sub_08117C84
_08116DB6:
	adds r1, r6, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08116DD0: .4byte gUnk_08357B14
_08116DD4: .4byte gRngVal
_08116DD8: .4byte 0x00196225
_08116DDC: .4byte 0x3C6EF35F
_08116DE0: .4byte 0x00000292

	thumb_func_start sub_08116DE4
sub_08116DE4: @ 0x08116DE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08116E30 @ =sub_08116E74
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _08116E34 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r2]
	ldr r0, [r4, #0x44]
	ldr r1, _08116E38 @ =0xFFFFB600
	adds r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xc0
	ble _08116E3C
	movs r0, #0xc0
	strh r0, [r2]
	b _08116E46
	.align 2, 0
_08116E30: .4byte sub_08116E74
_08116E34: .4byte 0xEFFFFFFF
_08116E38: .4byte 0xFFFFB600
_08116E3C:
	movs r1, #0xc0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08116E46
	strh r1, [r2]
_08116E46:
	adds r1, r4, #0
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xc0
	ble _08116E58
	movs r0, #0xc0
	strh r0, [r1]
	b _08116E62
_08116E58:
	movs r2, #0xc0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _08116E62
	strh r2, [r1]
_08116E62:
	ldr r0, _08116E70 @ =gUnk_030016A0
	movs r1, #0x10
	bl m4aMPlayFadeOut
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08116E70: .4byte gUnk_030016A0

	thumb_func_start sub_08116E74
sub_08116E74: @ 0x08116E74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _08116EEC @ =gUnk_08357B14
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x54
	movs r6, #0
	strb r0, [r3]
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r0, #1
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x55
	adds r2, r2, r4
	mov ip, r2
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08116C54
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08116F06
	cmp r0, #0
	ble _08116EF4
	ldr r1, [r4, #0x40]
	ldr r0, _08116EF0 @ =0x00007FFF
	cmp r1, r0
	ble _08116F06
	adds r0, #1
	str r0, [r4, #0x40]
	b _08116F04
	.align 2, 0
_08116EEC: .4byte gUnk_08357B14
_08116EF0: .4byte 0x00007FFF
_08116EF4:
	cmp r0, #0
	bge _08116F06
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	bgt _08116F06
	str r1, [r4, #0x40]
_08116F04:
	strh r6, [r2]
_08116F06:
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0
	beq _08116F3A
	cmp r1, #0
	ble _08116F26
	ldr r0, [r4, #0x44]
	movs r1, #0x94
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08116F3A
	str r1, [r4, #0x44]
	b _08116F36
_08116F26:
	cmp r1, #0
	bge _08116F3A
	ldr r1, [r4, #0x44]
	ldr r0, _08116FC8 @ =0x000049FF
	cmp r1, r0
	ble _08116F3A
	adds r0, #1
	str r0, [r4, #0x44]
_08116F36:
	movs r0, #0
	strh r0, [r3]
_08116F3A:
	movs r0, #4
	ldrsh r2, [r4, r0]
	ldr r0, _08116FCC @ =0x0000012B
	cmp r2, r0
	ble _08116F48
	movs r0, #0
	str r0, [r4, #0x7c]
_08116F48:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08116F5C
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r2, r0
	bgt _08116F64
_08116F5C:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	ble _08116FD0
_08116F64:
	adds r1, r4, #0
	adds r1, #0x54
	movs r0, #0
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x55
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0xb4
	ldr r0, [r2]
	ldrb r1, [r1]
	adds r0, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r1, [r3]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08116FFC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08116FF4
	adds r1, r5, #0
	adds r1, #0xbf
	ldrb r0, [r1]
	adds r0, #3
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08116FF4
	adds r2, r5, #0
	adds r2, #0xc0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #9
	bls _08116FF4
	subs r0, #0xa
	strb r0, [r2]
	b _08116FF4
	.align 2, 0
_08116FC8: .4byte 0x000049FF
_08116FCC: .4byte 0x0000012B
_08116FD0:
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08116FF4
	ldr r1, [r4, #0x44]
	movs r0, #0x94
	lsls r0, r0, #7
	cmp r1, r0
	bne _08116FF4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08116FF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08116FFC
sub_08116FFC: @ 0x08116FFC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _081170B0 @ =sub_08118A00
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	str r0, [r4, #0x7c]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_08033540
	ldr r1, _081170B4 @ =gUnk_08350E34
	adds r0, r4, #0
	bl sub_080860A8
	ldr r1, _081170B8 @ =gKirbys
	ldr r0, _081170BC @ =gUnk_0203AD3C
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
	bne _081170A8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08117068
	ldrb r0, [r5]
	cmp r0, r2
	bne _081170A8
_08117068:
	ldr r1, _081170C0 @ =gUnk_08D60FA4
	ldr r4, _081170C4 @ =gSongTable
	ldr r2, _081170C8 @ =0x00000BE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811708E
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _081170A8
_0811708E:
	cmp r3, #0
	beq _081170A0
	ldr r0, _081170CC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081170A8
_081170A0:
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
_081170A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081170B0: .4byte sub_08118A00
_081170B4: .4byte gUnk_08350E34
_081170B8: .4byte gKirbys
_081170BC: .4byte gUnk_0203AD3C
_081170C0: .4byte gUnk_08D60FA4
_081170C4: .4byte gSongTable
_081170C8: .4byte 0x00000BE4
_081170CC: .4byte gUnk_0203AD10

	thumb_func_start sub_081170D0
sub_081170D0: @ 0x081170D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08117190 @ =sub_08118A1C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _08117194 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_080335B4
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_08098184
	ldr r2, _08117198 @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811719C @ =gKirbys
	ldr r0, _081171A0 @ =gUnk_0203AD3C
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
	bne _08117188
	ldrb r0, [r4]
	cmp r0, #0
	bne _0811714C
	ldrb r0, [r5]
	cmp r0, r2
	bne _08117188
_0811714C:
	ldr r1, _081171A4 @ =gUnk_08D60FA4
	ldr r4, _081171A8 @ =gSongTable
	ldr r2, _081171AC @ =0x00000BDC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08117170
	ldr r1, _081171B0 @ =0x00000BD8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08117188
_08117170:
	cmp r3, #0
	beq _08117182
	ldr r0, _081171B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08117188
_08117182:
	ldr r0, _081171B8 @ =0x0000017B
	bl m4aSongNumStart
_08117188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08117190: .4byte sub_08118A1C
_08117194: .4byte 0xFFFFDFFF
_08117198: .4byte 0x00000299
_0811719C: .4byte gKirbys
_081171A0: .4byte gUnk_0203AD3C
_081171A4: .4byte gUnk_08D60FA4
_081171A8: .4byte gSongTable
_081171AC: .4byte 0x00000BDC
_081171B0: .4byte 0x00000BD8
_081171B4: .4byte gUnk_0203AD10
_081171B8: .4byte 0x0000017B

	thumb_func_start sub_081171BC
sub_081171BC: @ 0x081171BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _081171F0 @ =sub_08117298
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _081171F4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081171F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117200
	.align 2, 0
_081171F0: .4byte sub_08117298
_081171F4: .4byte sub_0803DCCC
_081171F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117200:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	movs r7, #0xe7
	lsls r7, r7, #2
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x2a
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _0811727C @ =gKirbys
	ldr r0, _08117280 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08117284
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08117288
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _08117288
	.align 2, 0
_0811727C: .4byte gKirbys
_08117280: .4byte gUnk_0203AD3C
_08117284:
	mov r1, r8
	strb r1, [r5]
_08117288:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08117298
sub_08117298: @ 0x08117298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _081172BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081172C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081172C8
	.align 2, 0
_081172BC: .4byte gCurTask
_081172C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081172C8:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _081172E2
	ldr r0, [r2]
	bl TaskDestroy
	b _08117522
_081172E2:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _081172F2
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _08117522
_081172F2:
	ldr r2, _0811735C @ =gKirbys
	ldr r0, _08117360 @ =gUnk_0203AD3C
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
	bne _081173A4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0811736C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081173CA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x2a
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08117364 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08117368 @ =0x0400000A
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
	b _081173CA
	.align 2, 0
_0811735C: .4byte gKirbys
_08117360: .4byte gUnk_0203AD3C
_08117364: .4byte 0xFFF7FFFF
_08117368: .4byte 0x0400000A
_0811736C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _081173CA
	movs r0, #0x2a
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0811739C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _081173A0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _081173CA
	.align 2, 0
_0811739C: .4byte 0xFFF7FFFF
_081173A0: .4byte 0x0400000A
_081173A4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _081173C0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _081173C0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_081173C0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_081173CA:
	ldr r2, _08117410 @ =gKirbys
	ldr r0, _08117414 @ =gUnk_0203AD3C
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
	bne _08117418
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _08117420
	movs r6, #0xe7
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08117420
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08117420
	.align 2, 0
_08117410: .4byte gKirbys
_08117414: .4byte gUnk_0203AD3C
_08117418:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_08117420:
	ldrh r0, [r5, #6]
	ldr r2, _081174A0 @ =0x0000FBFA
	ands r2, r0
	strh r2, [r5, #6]
	ldr r1, [r7, #8]
	ldr r0, _081174A4 @ =0x00000404
	ands r1, r0
	orrs r1, r2
	strh r1, [r5, #6]
	ldr r0, [r7, #8]
	movs r2, #1
	eors r0, r2
	ands r0, r2
	orrs r1, r0
	strh r1, [r5, #6]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _081174AC
	ldrb r0, [r3]
	cmp r0, #0
	beq _0811746E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0811746E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0811746E:
	cmp r3, #0
	beq _081174AC
	ldr r0, _081174A8 @ =gUnk_03000510
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
	beq _0811751C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811751C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08117522
	.align 2, 0
_081174A0: .4byte 0x0000FBFA
_081174A4: .4byte 0x00000404
_081174A8: .4byte gUnk_03000510
_081174AC:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08117514 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _081174EC
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _081174EC
	movs r3, #4
_081174EC:
	ldr r0, _08117518 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811751C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811751C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08117522
	.align 2, 0
_08117514: .4byte gKirbys
_08117518: .4byte gUnk_03000510
_0811751C:
	adds r0, r5, #0
	bl sub_0806FAC8
_08117522:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08117530
sub_08117530: @ 0x08117530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r2, _08117558 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811755C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117564
	.align 2, 0
_08117558: .4byte gCurTask
_0811755C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117564:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sl, r0
	mov r3, sl
	adds r1, r3, #0
	str r1, [sp]
	ldrh r4, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08117586
	ldr r0, [r2]
	bl TaskDestroy
	b _08117954
_08117586:
	mov r0, sl
	ldr r3, [r0, #8]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0811759A
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r7, #6]
	b _08117954
_0811759A:
	ldr r0, _081176F0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _081175BC
	movs r0, #0x80
	lsls r0, r0, #6
	ands r3, r0
	cmp r3, #0
	bne _081175C2
_081175BC:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_081175C2:
	movs r1, #4
	ldrsh r0, [r7, r1]
	ldrh r2, [r7, #4]
	cmp r0, #6
	ble _081175E0
	mov r3, sl
	ldr r0, [r3, #0x50]
	cmp r0, #0
	bne _081175E0
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
_081175E0:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _081175EA
	b _08117954
_081175EA:
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x10]
	ldr r0, [r1, #0x18]
	str r0, [r7, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0x18]
	ldrh r0, [r1, #0x1e]
	strh r0, [r7, #0x1a]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	ldrh r0, [r1, #0x26]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x26
	str r2, [sp, #4]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0x27
	str r3, [sp, #8]
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r1, #0x28
	adds r1, r1, r7
	mov sb, r1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2d
	ldrb r0, [r0]
	movs r2, #0x29
	adds r2, r2, r7
	mov r8, r2
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x2a
	strb r0, [r6]
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2b
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _081176F4 @ =gCurLevelInfo
	ldr r1, _081176F8 @ =gUnk_0203AD3C
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, _081176F8 @ =gUnk_0203AD3C
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	ldr r1, [sp, #4]
	str r1, [sp, #0xc]
	ldr r2, [sp, #8]
	str r2, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	cmp r0, #0
	bne _0811770C
	ldr r2, _081176FC @ =gKirbys
	ldr r0, _081176F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811770C
	ldr r1, _08117700 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08117704
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0811770C
	.align 2, 0
_081176F0: .4byte gUnk_03000510
_081176F4: .4byte gCurLevelInfo
_081176F8: .4byte gUnk_0203AD3C
_081176FC: .4byte gKirbys
_08117700: .4byte gUnk_0203AD18
_08117704:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_0811770C:
	mov r1, sl
	ldr r3, [r1, #0x48]
	str r3, [r7, #0x34]
	ldr r4, [r1, #0x4c]
	str r4, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	asrs r3, r3, #8
	ldr r2, _08117794 @ =gCurLevelInfo
	ldr r6, _08117798 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	asrs r4, r4, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _081177AC
	ldr r2, _0811779C @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081177AC
	ldr r1, _081177A0 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _081177A4
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081177AC
	.align 2, 0
_08117794: .4byte gCurLevelInfo
_08117798: .4byte gUnk_0203AD3C
_0811779C: .4byte gKirbys
_081177A0: .4byte gUnk_0203AD18
_081177A4:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_081177AC:
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r7, #0x38]
	ldr r1, [sp]
	adds r1, #0xb4
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	str r0, [r7, #0xc]
	ldr r0, [r1]
	ldr r0, [r0, #0x10]
	str r0, [r7, #0x10]
	ldr r0, [r1]
	ldr r0, [r0, #0x14]
	str r0, [r7, #0x14]
	ldr r0, [r1]
	ldrh r0, [r0, #0x18]
	strh r0, [r7, #0x18]
	ldr r0, [r1]
	ldrh r0, [r0, #0x1a]
	strh r0, [r7, #0x1a]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	ldr r0, [r1]
	ldrh r0, [r0, #0x22]
	strh r0, [r7, #0x22]
	ldr r0, [r1]
	adds r0, #0x26
	ldrb r0, [r0]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x27
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, #0x28
	ldrb r0, [r0]
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x29
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, #0x2a
	ldrb r0, [r0]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #0x2b
	ldrb r0, [r0]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _0811789C @ =gCurLevelInfo
	ldr r5, _081178A0 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	strh r6, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _081178B4
	ldr r2, _081178A4 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081178B4
	ldr r1, _081178A8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _081178AC
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _081178B4
	.align 2, 0
_0811789C: .4byte gCurLevelInfo
_081178A0: .4byte gUnk_0203AD3C
_081178A4: .4byte gKirbys
_081178A8: .4byte gUnk_0203AD18
_081178AC:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_081178B4:
	mov r2, sl
	ldr r3, [r2, #0x48]
	str r3, [r7, #0x34]
	ldr r4, [r2, #0x4c]
	str r4, [r7, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	asrs r3, r3, #8
	ldr r2, _0811793C @ =gCurLevelInfo
	ldr r6, _08117940 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	asrs r4, r4, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08117954
	ldr r2, _08117944 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08117954
	ldr r1, _08117948 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _0811794C
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08117954
	.align 2, 0
_0811793C: .4byte gCurLevelInfo
_08117940: .4byte gUnk_0203AD3C
_08117944: .4byte gKirbys
_08117948: .4byte gUnk_0203AD18
_0811794C:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_08117954:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08117964
sub_08117964: @ 0x08117964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r5
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r7, r0, #8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	str r0, [sp]
	cmp r3, #0
	beq _081179C2
	ldr r2, _081179E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081179E8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081179EC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r7, r7, r1
	lsls r1, r1, #4
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_081179C2:
	movs r4, #0
	ldr r1, _081179F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	lsls r6, r6, #0x10
	mov sl, r6
	movs r6, #0x87
	add ip, r6
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	mov r6, r8
	lsls r6, r6, #0x10
	mov r8, r6
	b _08117A08
	.align 2, 0
_081179E4: .4byte gRngVal
_081179E8: .4byte 0x00196225
_081179EC: .4byte 0x3C6EF35F
_081179F0: .4byte gUnk_020229D4
_081179F4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08117A10
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08117A08:
	cmp r0, #0
	bne _081179F4
	orrs r2, r3
	str r2, [r1]
_08117A10:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _08117A94 @ =gUnk_020229E0
	adds r1, r1, r0
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	mov r4, sp
	ldrh r4, [r4]
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd4
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r6, ip
	ldrb r0, [r6]
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	adds r4, r0, #0
	str r5, [r4, #0x70]
	mov r6, sl
	asrs r1, r6, #0x10
	mov r0, r8
	asrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_08118600
	ldr r1, [r5, #0x78]
	ldr r0, _08117A98 @ =sub_08115E2C
	cmp r1, r0
	beq _08117A82
	adds r0, r4, #0
	bl sub_08106AD0
_08117A82:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08117A94: .4byte gUnk_020229E0
_08117A98: .4byte sub_08115E2C

	thumb_func_start sub_08117A9C
sub_08117A9C: @ 0x08117A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, r6, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08117AD8
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	b _08117AE2
_08117AD8:
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
_08117AE2:
	mov ip, r1
	ldr r1, [r6, #0x44]
	asrs r1, r1, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov sl, r1
	movs r5, #0
	ldr r1, _08117B20 @ =gUnk_020229D4
	movs r2, #1
	ldr r3, [r1]
	adds r0, r3, #0
	ands r0, r2
	ldr r7, _08117B24 @ =gUnk_020229E0
	adds r4, #0x87
	str r4, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x56
	str r4, [sp]
	mov r4, sb
	lsls r4, r4, #0x10
	mov sb, r4
	mov r4, r8
	lsls r4, r4, #0x10
	mov r8, r4
	cmp r0, #0
	bne _08117B28
	orrs r3, r2
	str r3, [r1]
	b _08117B44
	.align 2, 0
_08117B20: .4byte gUnk_020229D4
_08117B24: .4byte gUnk_020229E0
_08117B28:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _08117B44
	movs r3, #1
	lsls r3, r5
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08117B28
	orrs r2, r3
	str r2, [r1]
_08117B44:
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, ip
	strh r0, [r1, #6]
	mov r4, sl
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd4
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #4]
	ldrb r0, [r4]
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
	ldr r2, [sp]
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r4, r0, #0
	mov r0, sb
	asrs r1, r0, #0x10
	mov r0, r8
	asrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_08118600
	adds r0, r4, #0
	bl sub_08106AD0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08117BBC
sub_08117BBC: @ 0x08117BBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08117BF0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08117BF4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117BF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08117C00
	.align 2, 0
_08117BF0: .4byte ObjectMain
_08117BF4: .4byte ObjectDestroy
_08117BF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08117C00:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0xc]
	ldr r1, [r6, #0x5c]
	movs r2, #8
	rsbs r2, r2, #0
	ands r1, r2
	movs r0, #3
	orrs r1, r0
	ldr r0, [r6, #0x68]
	ands r0, r2
	str r0, [r6, #0x68]
	ldr r0, _08117C7C @ =0x001080A0
	orrs r1, r0
	str r1, [r6, #0x5c]
	adds r1, r6, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08117C80 @ =sub_08118AD4
	str r0, [r6, #0x7c]
	movs r4, #4
	rsbs r4, r4, #0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E2B0
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08117C7C: .4byte 0x001080A0
_08117C80: .4byte sub_08118AD4

	thumb_func_start sub_08117C84
sub_08117C84: @ 0x08117C84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08117CBC @ =sub_08117DA0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08117CC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117CC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117CCC
	.align 2, 0
_08117CBC: .4byte sub_08117DA0
_08117CC0: .4byte sub_0803DCCC
_08117CC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117CCC:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	mov sb, r0
	mov r1, sb
	strb r1, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r4, _08117D58 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08117D5C @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08117D60 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0x3f
	ands r1, r0
	subs r0, #0xbf
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0x1f
	mov r8, r0
	ands r1, r0
	movs r3, #0x10
	subs r1, r3, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r1, r5
	str r1, [r4]
	lsrs r0, r1, #0x10
	mov r2, r8
	ands r0, r2
	subs r3, r3, r0
	lsls r3, r3, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	mov r1, sb
	ands r0, r1
	cmp r0, #2
	beq _08117D64
	cmp r0, #3
	beq _08117D68
	movs r4, #9
	b _08117D6A
	.align 2, 0
_08117D58: .4byte gRngVal
_08117D5C: .4byte 0x00196225
_08117D60: .4byte 0x3C6EF35F
_08117D64:
	movs r4, #0xa
	b _08117D6A
_08117D68:
	movs r4, #0xb
_08117D6A:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _08117D98 @ =0x06012000
	ldr r3, _08117D9C @ =0x00000291
	str r4, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08117D98: .4byte 0x06012000
_08117D9C: .4byte 0x00000291

	thumb_func_start sub_08117DA0
sub_08117DA0: @ 0x08117DA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08117DC4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08117DC8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08117DD0
	.align 2, 0
_08117DC4: .4byte gCurTask
_08117DC8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08117DD0:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08117DEC
	ldr r0, [r5]
	bl TaskDestroy
	b _08117F60
_08117DEC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08117E38
	ldrb r0, [r1]
	cmp r0, #0
	beq _08117E04
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08117E04
	str r2, [r3, #0x44]
	movs r1, #0
_08117E04:
	cmp r1, #0
	beq _08117E38
	ldr r0, _08117E34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08117EA8
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08117EA8
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08117F60
	.align 2, 0
_08117E34: .4byte gUnk_03000510
_08117E38:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08117EA0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08117E7A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08117E7A
	movs r4, #4
_08117E7A:
	ldr r0, _08117EA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08117EA8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08117EA8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08117F60
	.align 2, 0
_08117EA0: .4byte gKirbys
_08117EA4: .4byte gUnk_03000510
_08117EA8:
	ldr r0, _08117F30 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #0x3e]
	mov r8, r7
	ldrh r1, [r3, #4]
	mov ip, r1
	cmp r0, #0
	beq _08117EF4
	ldr r6, _08117F34 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08117F38 @ =gUnk_02026D50
_08117EC2:
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
	bne _08117EEC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08117F06
_08117EEC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08117EC2
_08117EF4:
	movs r0, #1
	cmp r0, #0
	beq _08117F06
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08117F06:
	ldrh r1, [r3, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	mov r0, r8
	subs r0, #0x10
	strh r0, [r3, #0x3e]
	mov r0, ip
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08117F3C
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r3, #6]
	b _08117F60
	.align 2, 0
_08117F30: .4byte gUnk_0203AD44
_08117F34: .4byte gCurLevelInfo
_08117F38: .4byte gUnk_02026D50
_08117F3C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08117F5A
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
_08117F5A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08117F60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08117F6C
sub_08117F6C: @ 0x08117F6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08117FA0 @ =sub_08118064
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08117FA4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08117FA8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _08117FB0
	.align 2, 0
_08117FA0: .4byte sub_08118064
_08117FA4: .4byte sub_0803DCCC
_08117FA8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_08117FB0:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #0
	mov r8, r0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08118050 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08118054 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08118058 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r0, [r7, #0x3e]
	muls r2, r5, r2
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r6, #0x1f
	ands r0, r6
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r6
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0811805C @ =0x06012000
	ldr r3, _08118060 @ =0x000002A6
	mov r0, r8
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08118050: .4byte gRngVal
_08118054: .4byte 0x00196225
_08118058: .4byte 0x3C6EF35F
_0811805C: .4byte 0x06012000
_08118060: .4byte 0x000002A6

	thumb_func_start sub_08118064
sub_08118064: @ 0x08118064
	push {r4, r5, r6, r7, lr}
	ldr r2, _08118084 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08118088
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08118090
	.align 2, 0
_08118084: .4byte gCurTask
_08118088:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08118090:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _081180AC
	ldr r0, [r5]
	bl TaskDestroy
	b _08118218
_081180AC:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _081180F8
	ldrb r0, [r1]
	cmp r0, #0
	beq _081180C4
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _081180C4
	str r2, [r3, #0x44]
	movs r1, #0
_081180C4:
	cmp r1, #0
	beq _081180F8
	ldr r0, _081180F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08118168
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08118168
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08118218
	.align 2, 0
_081180F4: .4byte gUnk_03000510
_081180F8:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08118160 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0811813A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811813A
	movs r4, #4
_0811813A:
	ldr r0, _08118164 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08118168
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08118168
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08118218
	.align 2, 0
_08118160: .4byte gKirbys
_08118164: .4byte gUnk_03000510
_08118168:
	ldr r0, _081181E8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #0x3e]
	mov ip, r7
	cmp r0, #0
	beq _081181B0
	ldr r6, _081181EC @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _081181F0 @ =gUnk_02026D50
_0811817E:
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
	bne _081181A8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _081181C2
_081181A8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0811817E
_081181B0:
	movs r0, #1
	cmp r0, #0
	beq _081181C2
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_081181C2:
	ldrh r1, [r3, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	mov r0, ip
	subs r0, #0xc
	strh r0, [r3, #0x3e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081181F4
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r3, #6]
	b _08118218
	.align 2, 0
_081181E8: .4byte gUnk_0203AD44
_081181EC: .4byte gCurLevelInfo
_081181F0: .4byte gUnk_02026D50
_081181F4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08118212
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
_08118212:
	adds r0, r3, #0
	bl sub_0806FAC8
_08118218:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08118220
sub_08118220: @ 0x08118220
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08118258 @ =sub_08118310
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0811825C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08118260
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08118268
	.align 2, 0
_08118258: .4byte sub_08118310
_0811825C: .4byte sub_0803DCCC
_08118260:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08118268:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r2, #0
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
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r7]
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r1, r1, #1
	movs r0, #0xe0
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x38]
	strh r6, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r5, _081182F4 @ =0x00000389
	movs r0, #2
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r2, #2
	adds r3, r5, #0
	bl sub_080709F8
	adds r4, #0x2b
	mov r0, r8
	strb r0, [r4]
	ldr r2, _081182F8 @ =gKirbys
	ldr r0, _081182FC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _08118300
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08118304
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _08118304
	.align 2, 0
_081182F4: .4byte 0x00000389
_081182F8: .4byte gKirbys
_081182FC: .4byte gUnk_0203AD3C
_08118300:
	mov r1, r8
	strb r1, [r4]
_08118304:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08118310
sub_08118310: @ 0x08118310
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _08118338 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811833C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08118344
	.align 2, 0
_08118338: .4byte gCurTask
_0811833C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08118344:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08118362
	ldr r0, [r2]
	bl TaskDestroy
	b _081185EE
_08118362:
	adds r1, r6, #0
	cmp r6, #0
	beq _081183AC
	ldrb r0, [r6]
	cmp r0, #0
	beq _0811837A
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _0811837A
	str r3, [r5, #0x44]
	movs r1, #0
_0811837A:
	cmp r1, #0
	beq _081183AC
	ldr r0, _081183A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811841C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811841C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _081185EE
	.align 2, 0
_081183A8: .4byte gUnk_03000510
_081183AC:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08118414 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _081183EE
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _081183EE
	movs r3, #4
_081183EE:
	ldr r0, _08118418 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0811841C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0811841C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _081185EE
	.align 2, 0
_08118414: .4byte gKirbys
_08118418: .4byte gUnk_03000510
_0811841C:
	ldr r0, _081184EC @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r5
	mov r8, r1
	ldr r3, [r5, #0xc]
	movs r2, #0x26
	adds r2, r2, r5
	mov sb, r2
	adds r7, r5, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _08118478
	ldr r4, _081184F0 @ =gCurLevelInfo
	mov sl, r4
	ldrh r1, [r1]
	str r1, [sp, #0x28]
	ldr r2, _081184F4 @ =gUnk_02026D50
	mov ip, r2
_08118442:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r4, sl
	adds r1, r0, r4
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _08118470
	ldr r4, _081184F8 @ =0x0000065E
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0811848A
_08118470:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08118442
_08118478:
	movs r0, #1
	cmp r0, #0
	beq _0811848A
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0811848A:
	ldr r2, _081184FC @ =gKirbys
	ldr r0, _08118500 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _08118540
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0811850C
	cmp r3, #0
	bne _08118566
	ldrh r1, [r5, #0x18]
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #2
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08118504 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08118508 @ =0x0400000A
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
	b _08118566
	.align 2, 0
_081184EC: .4byte gUnk_0203AD44
_081184F0: .4byte gCurLevelInfo
_081184F4: .4byte gUnk_02026D50
_081184F8: .4byte 0x0000065E
_081184FC: .4byte gKirbys
_08118500: .4byte gUnk_0203AD3C
_08118504: .4byte 0xFFF7FFFF
_08118508: .4byte 0x0400000A
_0811850C:
	cmp r3, #0
	bne _08118566
	movs r0, #2
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08118538 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0811853C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08118566
	.align 2, 0
_08118538: .4byte 0xFFF7FFFF
_0811853C: .4byte 0x0400000A
_08118540:
	cmp r3, #0
	beq _0811855C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0811855C
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_0811855C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08118566:
	ldr r2, _081185A4 @ =gKirbys
	ldr r0, _081185A8 @ =gUnk_0203AD3C
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
	bne _081185B0
	ldrb r0, [r7]
	cmp r0, #0
	bne _081185B4
	ldr r4, _081185AC @ =0x00000389
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081185B4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _081185B2
	.align 2, 0
_081185A4: .4byte gKirbys
_081185A8: .4byte gUnk_0203AD3C
_081185AC: .4byte 0x00000389
_081185B0:
	movs r0, #0
_081185B2:
	strb r0, [r7]
_081185B4:
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #1
	beq _081185CE
	cmp r0, #2
	beq _081185DC
	adds r0, r6, #0
	adds r0, #0xbe
	ldrb r0, [r0]
	adds r0, #2
	mov r4, sb
	strb r0, [r4]
	b _081185E8
_081185CE:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	adds r0, #2
	mov r7, sb
	strb r0, [r7]
	b _081185E8
_081185DC:
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	adds r0, #2
	mov r1, sb
	strb r0, [r1]
_081185E8:
	adds r0, r5, #0
	bl sub_0806FAC8
_081185EE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08118600
sub_08118600: @ 0x08118600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r2, _08118668 @ =sub_08118AC8
	movs r1, #0
	bl ObjectSetFunc
	ldr r2, _0811866C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08118670 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08118674 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r5, #0
	adds r2, #0x83
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r6, [r0]
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r5, #8]
	cmp r4, #0
	bne _08118658
	cmp r6, #0
	bne _08118658
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #8]
_08118658:
	adds r1, r5, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08118668: .4byte sub_08118AC8
_0811866C: .4byte gRngVal
_08118670: .4byte 0x00196225
_08118674: .4byte 0x3C6EF35F

	thumb_func_start sub_08118678
sub_08118678: @ 0x08118678
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081186B4 @ =sub_08114CBC
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0803D46C
	adds r4, #0xac
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081186B4: .4byte sub_08114CBC

	thumb_func_start sub_081186B8
sub_081186B8: @ 0x081186B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081186EC @ =sub_081186F0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x1c
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081186EC: .4byte sub_081186F0

	thumb_func_start sub_081186F0
sub_081186F0: @ 0x081186F0
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x54
	ldr r0, _08118730 @ =gUnk_0203AD40
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r0, #0x40
	strb r1, [r0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0811872C
	adds r0, r3, #0
	bl sub_08115180
_0811872C:
	pop {r0}
	bx r0
	.align 2, 0
_08118730: .4byte gUnk_0203AD40

	thumb_func_start sub_08118734
sub_08118734: @ 0x08118734
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118770 @ =sub_08115284
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08118774 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08118778 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811877C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08118788
	ldr r1, [r4, #0x40]
	ldr r0, _08118780 @ =0x000077FF
	cmp r1, r0
	bgt _08118784
	movs r0, #0x90
	lsls r0, r0, #1
	b _08118786
	.align 2, 0
_08118770: .4byte sub_08115284
_08118774: .4byte gRngVal
_08118778: .4byte 0x00196225
_0811877C: .4byte 0x3C6EF35F
_08118780: .4byte 0x000077FF
_08118784:
	ldr r0, _08118798 @ =0x0000FEE0
_08118786:
	strh r0, [r4, #4]
_08118788:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118798: .4byte 0x0000FEE0

	thumb_func_start sub_0811879C
sub_0811879C: @ 0x0811879C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081187CC @ =sub_081187D0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081187CC: .4byte sub_081187D0

	thumb_func_start sub_081187D0
sub_081187D0: @ 0x081187D0
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
	bne _081187EE
	adds r0, r2, #0
	bl sub_08114BA0
_081187EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081187F4
sub_081187F4: @ 0x081187F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118824 @ =sub_08115504
	movs r1, #1
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
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118824: .4byte sub_08115504

	thumb_func_start sub_08118828
sub_08118828: @ 0x08118828
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118864 @ =sub_08115638
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
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
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9f
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118864: .4byte sub_08115638

	thumb_func_start sub_08118868
sub_08118868: @ 0x08118868
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118898 @ =sub_08115E2C
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x24
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118898: .4byte sub_08115E2C

	thumb_func_start sub_0811889C
sub_0811889C: @ 0x0811889C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _081188E8 @ =sub_08116654
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080700D8
	movs r0, #4
	adds r1, r4, #0
	bl sub_0806FE64
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r4, #0x24]
	adds r4, #0xb4
	ldr r0, [r4]
	strh r1, [r0, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081188E8: .4byte sub_08116654

	thumb_func_start sub_081188EC
sub_081188EC: @ 0x081188EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08118920 @ =sub_08116920
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r0, _08118924 @ =0xFFFFEC00
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118920: .4byte sub_08116920
_08118924: .4byte 0xFFFFEC00

	thumb_func_start sub_08118928
sub_08118928: @ 0x08118928
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0811895C @ =sub_081169E4
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #4]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r0, _08118960 @ =0xFFFFEC00
	str r0, [r4, #0x44]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811895C: .4byte sub_081169E4
_08118960: .4byte 0xFFFFEC00

	thumb_func_start sub_08118964
sub_08118964: @ 0x08118964
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08118988
	ldr r0, _0811898C @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_08114BA0
_08118988:
	pop {r0}
	bx r0
	.align 2, 0
_0811898C: .4byte 0xFFFFFDFF

	thumb_func_start sub_08118990
sub_08118990: @ 0x08118990
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r3, #0x40
	orrs r0, r3
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, _081189D4 @ =sub_081164E0
	str r0, [r4, #0x7c]
	ldr r2, _081189D8 @ =gUnk_0203AD10
	ldr r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _081189DC
	orrs r1, r3
	str r1, [r2]
	b _081189FA
	.align 2, 0
_081189D4: .4byte sub_081164E0
_081189D8: .4byte gUnk_0203AD10
_081189DC:
	movs r0, #0x20
	orrs r1, r0
	str r1, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08118220
	adds r0, r4, #0
	movs r1, #1
	bl sub_08118220
	adds r0, r4, #0
	movs r1, #2
	bl sub_08118220
_081189FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08118A00
sub_08118A00: @ 0x08118A00
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _08118A18
	adds r0, r1, #0
	bl sub_081170D0
_08118A18:
	pop {r0}
	bx r0

	thumb_func_start sub_08118A1C
sub_08118A1C: @ 0x08118A1C
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	ldrh r1, [r0, #4]
	adds r1, #1
	strh r1, [r0, #4]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08118A56
	ldr r0, _08118A48 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08118A50
	ldr r0, _08118A4C @ =sub_08025A80
	bl sub_08020428
	b _08118A56
	.align 2, 0
_08118A48: .4byte gUnk_0203AD10
_08118A4C: .4byte sub_08025A80
_08118A50:
	ldr r0, _08118A5C @ =sub_0802B4A8
	bl sub_08020428
_08118A56:
	pop {r0}
	bx r0
	.align 2, 0
_08118A5C: .4byte sub_0802B4A8

	thumb_func_start sub_08118A60
sub_08118A60: @ 0x08118A60
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08118A90 @ =sub_08117530
	ldr r2, _08118A94 @ =0x00000FFF
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08118A98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08118AA0
	.align 2, 0
_08118A90: .4byte sub_08117530
_08118A94: .4byte 0x00000FFF
_08118A98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08118AA0:
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
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08118AC8
sub_08118AC8: @ 0x08118AC8
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08118AD4
sub_08118AD4: @ 0x08118AD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809F840
	ldr r0, _08118B44 @ =gUnk_03000510
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
	bne _08118B3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08118B3C
	ldr r3, [r4, #0x6c]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08118B3C
	ldr r2, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mvns r0, r0
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08118B3C
	movs r0, #7
	ands r2, r0
	cmp r2, #3
	bhi _08118B3C
	adds r0, r3, #0
	bl sub_08052E2C
	ldr r0, _08118B48 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	bne _08118B3C
	ldr r1, _08118B4C @ =gUnk_08357AD4
	adds r0, r4, #0
	bl sub_080860A8
_08118B3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08118B44: .4byte gUnk_03000510
_08118B48: .4byte gUnk_0203AD10
_08118B4C: .4byte gUnk_08357AD4

	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	@ This and eight_dir_cannon.s might be one file. 

	thumb_func_start CreateKirbyCannon
CreateKirbyCannon: @ 0x08121A1C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _08121A50 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08121A54 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08121A58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08121A60
	.align 2, 0
_08121A50: .4byte ObjectMain
_08121A54: .4byte ObjectDestroy
_08121A58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08121A60:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	ldr r1, _08121AEC @ =0x02218140
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x68]
	movs r4, #8
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	orrs r0, r4
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	subs r1, #5
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #0x1c
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0803E2B0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_0803E308
	ldr r0, [r5, #0x40]
	ldr r1, _08121AF0 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x40]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _08121AF4 @ =gUnk_08351648
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
_08121AEC: .4byte 0x02218140
_08121AF0: .4byte 0xFFFFFD00
_08121AF4: .4byte gUnk_08351648

	thumb_func_start sub_08121AF8
sub_08121AF8: @ 0x08121AF8
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0xb4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0xb6
	adds r0, r0, r2
	mov ip, r0
	movs r0, #8
	mov r1, ip
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08121B2E
	movs r0, #0x20
	mov r1, ip
	strb r0, [r1]
_08121B2E:
	adds r1, r2, #0
	adds r1, #0xb7
	movs r0, #3
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xb8
	strb r4, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	adds r1, #3
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #0x18]
	lsrs r0, r0, #8
	adds r1, #2
	strb r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #0x18]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _08121B6C @ =sub_08121B70
	str r0, [r2, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08121B6C: .4byte sub_08121B70

	thumb_func_start sub_08121B70
sub_08121B70: @ 0x08121B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sb, r6
	adds r0, #0x60
	ldrh r0, [r0]
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	ldr r3, _08121BC0 @ =gCurLevelInfo
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08121BC4 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08121BC8
	adds r2, r6, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	movs r1, #0xf7
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	b _08121BD6
	.align 2, 0
_08121BC0: .4byte gCurLevelInfo
_08121BC4: .4byte 0x0000065E
_08121BC8:
	adds r2, r6, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	movs r0, #0xdf
	ands r1, r0
_08121BD6:
	strb r1, [r2]
	mov r1, sb
	adds r1, #0xb6
	ldrb r2, [r1]
	movs r0, #8
	ands r0, r2
	mov r8, r1
	cmp r0, #0
	bne _08121BEA
	b _08121E46
_08121BEA:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08121BF8
	b _08121D74
_08121BF8:
	ldr r1, [r6, #0x6c]
	movs r7, #0
	movs r0, #1
	orrs r0, r2
	mov r2, r8
	strb r0, [r2]
	adds r1, #0x56
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08121C12
	b _08121E46
_08121C12:
	cmp r0, #0
	beq _08121C58
	ldr r5, _08121D6C @ =gKirbys
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121C58
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08121C58
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121C58
	ldr r0, [r5, #0x6c]
	cmp r0, r6
	bne _08121C58
	adds r0, r5, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121C58
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_08121C58:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #1
	bls _08121CB0
	ldr r4, _08121D6C @ =gKirbys
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121CB0
	mov r5, sb
	adds r5, #0xb8
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08121CB0
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r7, r4, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121CB0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121CB0
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121CB0
	ldrb r1, [r5]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5]
_08121CB0:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #2
	bls _08121D08
	ldr r4, _08121D6C @ =gKirbys
	movs r2, #0xec
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, sl
	bne _08121D08
	mov r5, sb
	adds r5, #0xb8
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08121D08
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r7, r4, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121D08
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121D08
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121D08
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
_08121D08:
	ldr r0, _08121D68 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08121D12
	b _08121E46
_08121D12:
	ldr r5, _08121D6C @ =gKirbys
	movs r2, #0xab
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrh r0, [r0]
	cmp r0, sl
	beq _08121D22
	b _08121E46
_08121D22:
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121D32
	b _08121E46
_08121D32:
	movs r0, #0x9f
	lsls r0, r0, #3
	adds r7, r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803925C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08121D48
	b _08121E46
_08121D48:
	ldr r1, _08121D70 @ =0x00000564
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _08121E46
	adds r0, r7, #0
	bl sub_080510EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08121E46
	ldrb r1, [r4]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4]
	b _08121E46
	.align 2, 0
_08121D68: .4byte gUnk_0203AD30
_08121D6C: .4byte gKirbys
_08121D70: .4byte 0x00000564
_08121D74:
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08121E46
	mov r2, sb
	adds r2, #0xb8
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08121DAE
	ldr r2, _08121EFC @ =gKirbys
	movs r1, #0x8d
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08121DAE
	adds r0, r2, #0
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
_08121DAE:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08121DDA
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F00 @ =0x000002C2
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121DDA
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
_08121DDA:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08121E06
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F04 @ =0x0000046A
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121E06
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_08121E06:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121E32
	ldr r2, _08121EFC @ =gKirbys
	ldr r1, _08121F08 @ =0x00000612
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08121E32
	movs r1, #0x9f
	lsls r1, r1, #3
	adds r0, r2, r1
	bl sub_08051544
	ldrb r1, [r4]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4]
_08121E32:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08121E46
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_08121E46:
	mov r0, sb
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _08121F0C @ =gCurLevelInfo
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r2, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _08121F10 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08121E82
	subs r0, #1
	str r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
_08121E82:
	mov r2, r8
	ldrb r1, [r2]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08121E92
	b _08121F9C
_08121E92:
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _08121F2A
	mov r4, sb
	adds r4, #0xb8
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08121EB4
	ldr r0, _08121EFC @ =gKirbys
	bl sub_0805BE64
_08121EB4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08121EC4
	ldr r0, _08121F14 @ =gUnk_02021088
	bl sub_0805BE64
_08121EC4:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08121ED4
	ldr r0, _08121F18 @ =gUnk_02021230
	bl sub_0805BE64
_08121ED4:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08121EE4
	ldr r0, _08121F1C @ =gUnk_020213D8
	bl sub_0805BE64
_08121EE4:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08121F20
	adds r0, r6, #0
	adds r0, #0x83
	strb r7, [r0]
	b _08121F98
	.align 2, 0
_08121EFC: .4byte gKirbys
_08121F00: .4byte 0x000002C2
_08121F04: .4byte 0x0000046A
_08121F08: .4byte 0x00000612
_08121F0C: .4byte gCurLevelInfo
_08121F10: .4byte 0x0000065E
_08121F14: .4byte gUnk_02021088
_08121F18: .4byte gUnk_02021230
_08121F1C: .4byte gUnk_020213D8
_08121F20:
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	b _08121F98
_08121F2A:
	adds r0, r6, #0
	bl sub_08094EDC
	ldr r1, _08121FB0 @ =gKirbys
	ldr r0, _08121FB4 @ =gUnk_0203AD3C
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
	bne _08121F98
	ldrb r0, [r6]
	cmp r0, #0
	bne _08121F58
	ldrb r0, [r4]
	cmp r0, r2
	bne _08121F98
_08121F58:
	ldr r1, _08121FB8 @ =gUnk_08D60FA4
	ldr r4, _08121FBC @ =gSongTable
	ldr r2, _08121FC0 @ =0x00001024
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08121F7E
	movs r1, #0x81
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08121F98
_08121F7E:
	cmp r3, #0
	beq _08121F90
	ldr r0, _08121FC4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08121F98
_08121F90:
	movs r0, #0x81
	lsls r0, r0, #2
	bl m4aSongNumStart
_08121F98:
	ldr r0, _08121FC8 @ =sub_08121FCC
	str r0, [r6, #0x78]
_08121F9C:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08121FB0: .4byte gKirbys
_08121FB4: .4byte gUnk_0203AD3C
_08121FB8: .4byte gUnk_08D60FA4
_08121FBC: .4byte gSongTable
_08121FC0: .4byte 0x00001024
_08121FC4: .4byte gUnk_0203AD10
_08121FC8: .4byte sub_08121FCC

	thumb_func_start sub_08121FCC
sub_08121FCC: @ 0x08121FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r6
	ldr r0, [r6, #8]
	movs r1, #2
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	bne _08121FEA
	b _08122122
_08121FEA:
	adds r0, r6, #0
	adds r0, #0x83
	movs r4, #0
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08122134 @ =sub_08122248
	str r0, [r6, #0x78]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _08122138 @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	movs r0, #3
	adds r1, r6, #0
	bl sub_0806FE64
	adds r0, r6, #0
	adds r0, #0xb5
	strb r4, [r0]
	adds r7, r6, #0
	adds r7, #0xb8
	ldrb r1, [r7]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	beq _08122062
	ldr r0, _0812213C @ =gKirbys
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7]
_08122062:
	ldrb r1, [r7]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _081220A2
	ldr r0, _08122140 @ =gUnk_02021088
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r7]
_081220A2:
	ldrb r1, [r7]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _081220E2
	ldr r0, _08122144 @ =gUnk_02021230
	adds r1, r6, #0
	adds r1, #0xba
	ldrh r1, [r1]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r7]
_081220E2:
	ldrb r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08122122
	ldr r0, _08122148 @ =gUnk_020213D8
	mov r1, r8
	adds r1, #0xba
	ldrh r1, [r1]
	mov r2, r8
	adds r2, #0xbc
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r3, r8
	adds r3, #0xbd
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	mov r4, r8
	adds r4, #0xb0
	ldr r4, [r4]
	ldrh r5, [r4, #0x22]
	mov r4, sl
	ands r4, r5
	str r4, [sp]
	bl sub_080515D4
	ldrb r1, [r7]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r7]
_08122122:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08122134: .4byte sub_08122248
_08122138: .4byte 0xFFFFE000
_0812213C: .4byte gKirbys
_08122140: .4byte gUnk_02021088
_08122144: .4byte gUnk_02021230
_08122148: .4byte gUnk_020213D8

	thumb_func_start sub_0812214C
sub_0812214C: @ 0x0812214C
	push {r4, r5, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0xb5
	ldrb r0, [r3]
	cmp r0, #0xb
	bhi _08122238
	mov r1, ip
	adds r1, #0xb4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0xff
	bne _0812222E
	ldr r4, _08122198 @ =gUnk_08357E78
	ldrb r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r2, r0, #8
	cmp r2, #0
	ble _0812219C
	subs r1, #0x62
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	ble _081221BC
	b _081221BA
	.align 2, 0
_08122198: .4byte gUnk_08357E78
_0812219C:
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	adds r3, r1, #0
	cmp r2, r0
	bge _081221BC
_081221BA:
	strh r0, [r3]
_081221BC:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _081221EC
	mov r4, ip
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	mov r0, ip
	adds r0, #0x50
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x40]
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	mov r4, ip
	str r2, [r4, #0x44]
_081221EC:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _08122210
	ldr r3, _0812220C @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08122220
	movs r0, #0
	strh r0, [r1]
	b _08122220
	.align 2, 0
_0812220C: .4byte 0x00007FFF
_08122210:
	ldr r4, _08122234 @ =0xFFFF8001
	adds r0, r2, r4
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08122220
	movs r0, #0
	strh r0, [r3]
_08122220:
	movs r0, #0
	strb r0, [r5]
	mov r1, ip
	adds r1, #0xb5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0812222E:
	movs r0, #1
	b _08122242
	.align 2, 0
_08122234: .4byte 0xFFFF8001
_08122238:
	mov r1, ip
	adds r1, #0xb4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r3]
_08122242:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08122248
sub_08122248: @ 0x08122248
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb6
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08122280
	adds r0, r4, #0
	bl sub_0812214C
	cmp r0, #0
	bne _081222A0
	movs r0, #8
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0xb7
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0812227C @ =sub_08121B70
	str r0, [r4, #0x78]
	b _081222A0
	.align 2, 0
_0812227C: .4byte sub_08121B70
_08122280:
	adds r1, r4, #0
	adds r1, #0xb7
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081222A0
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_081222A0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_081222AC
sub_081222AC: @ 0x081222AC
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bls _081222BA
	b _081223EA
_081222BA:
	lsls r0, r0, #2
	ldr r1, _081222C4 @ =_081222C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081222C4: .4byte _081222C8
_081222C8: @ jump table
	.4byte _081222E8 @ case 0
	.4byte _08122304 @ case 1
	.4byte _08122328 @ case 2
	.4byte _08122344 @ case 3
	.4byte _08122362 @ case 4
	.4byte _0812237E @ case 5
	.4byte _081223A4 @ case 6
	.4byte _081223C4 @ case 7
_081222E8:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	ldr r1, _08122300 @ =0xFFFFF000
	b _08122378
	.align 2, 0
_08122300: .4byte 0xFFFFF000
_08122304:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	ldr r1, _08122324 @ =0xFFFFF400
	b _08122378
	.align 2, 0
_08122324: .4byte 0xFFFFF400
_08122328:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r2, #0x34]
	b _081223EA
_08122344:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	b _08122378
_08122362:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #4
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
_08122378:
	adds r0, r0, r1
	str r0, [r2, #0x38]
	b _081223EA
_0812237E:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	ldr r1, _081223A0 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
	movs r1, #0xc0
	lsls r1, r1, #4
	b _081223DE
	.align 2, 0
_081223A0: .4byte 0xFFFFF400
_081223A4:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	ldr r1, _081223C0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x34]
	b _081223E2
	.align 2, 0
_081223C0: .4byte 0xFFFFF000
_081223C4:
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r3, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	ldr r1, _081223F0 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x38]
_081223DE:
	adds r0, r0, r1
	str r0, [r2, #0x38]
_081223E2:
	ldrh r1, [r2, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #6]
_081223EA:
	pop {r0}
	bx r0
	.align 2, 0
_081223F0: .4byte 0xFFFFF400

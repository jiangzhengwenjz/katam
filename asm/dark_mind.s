	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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

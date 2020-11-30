	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0800A96C
sub_0800A96C: @ 0x0800A96C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	cmp r0, #0
	beq _0800A97E
	cmp r0, #1
	beq _0800A988
	movs r5, #0
	b _0800A98A
_0800A97E:
	ldr r5, _0800A984 @ =gUnk_082D91E4
	b _0800A98A
	.align 2, 0
_0800A984: .4byte gUnk_082D91E4
_0800A988:
	ldr r5, _0800A9EC @ =gUnk_082D91FC
_0800A98A:
	movs r0, #0
	str r0, [sp]
	ldr r2, _0800A9F0 @ =0x05000002
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, [r5]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800A9D6
	ldr r0, [r5, #4]
	cmp r0, r1
	beq _0800A9D6
	adds r3, r1, #0
_0800A9AA:
	movs r1, #0
	adds r2, r5, #0
	adds r2, #8
	cmp r1, r0
	beq _0800A9C8
_0800A9B4:
	ldr r0, [r5]
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r6, [r4]
	adds r0, r0, r6
	strh r0, [r4]
	adds r1, #2
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0800A9B4
_0800A9C8:
	adds r5, r2, #0
	ldr r0, [r2]
	cmp r0, r3
	beq _0800A9D6
	ldr r0, [r2, #4]
	cmp r0, r3
	bne _0800A9AA
_0800A9D6:
	ldrh r0, [r4]
	mvns r0, r0
	movs r1, #0
	strh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A9EC: .4byte gUnk_082D91FC
_0800A9F0: .4byte 0x05000002

	thumb_func_start sub_0800A9F4
sub_0800A9F4: @ 0x0800A9F4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r5, #0xe0
	lsls r5, r5, #0x14
	ldr r2, _0800AA14 @ =gUnk_082D91E4
	movs r4, #0
	ldr r0, [r2]
	movs r3, #1
	rsbs r3, r3, #0
	ldr r7, _0800AA18 @ =gUnk_082D91FC
	b _0800AA22
	.align 2, 0
_0800AA14: .4byte gUnk_082D91E4
_0800AA18: .4byte gUnk_082D91FC
_0800AA1C:
	adds r4, r4, r0
	adds r2, #8
	ldr r0, [r2]
_0800AA22:
	cmp r0, r3
	beq _0800AA2C
	ldr r0, [r2, #4]
	cmp r0, r3
	bne _0800AA1C
_0800AA2C:
	adds r1, r4, #0
	adds r1, #8
	adds r2, r7, #0
	movs r4, #0
	ldr r0, [r2]
	movs r3, #1
	rsbs r3, r3, #0
	b _0800AA42
_0800AA3C:
	adds r4, r4, r0
	adds r2, #8
	ldr r0, [r2]
_0800AA42:
	cmp r0, r3
	beq _0800AA4C
	ldr r0, [r2, #4]
	cmp r0, r3
	bne _0800AA3C
_0800AA4C:
	adds r2, r4, #0
	adds r2, #8
	cmp r6, #0
	beq _0800AA5E
	cmp r6, #1
	beq _0800AA64
_0800AA58:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800AAD2
_0800AA5E:
	mov r0, ip
	muls r0, r1, r0
	b _0800AA6C
_0800AA64:
	lsls r0, r1, #1
	adds r5, r5, r0
	mov r0, ip
	muls r0, r2, r0
_0800AA6C:
	adds r5, r5, r0
	adds r0, r6, #0
	mov r1, sp
	bl sub_0800A96C
	mov r0, sp
	adds r1, r5, #0
	movs r2, #8
	bl WriteSramEx
	cmp r0, #0
	bne _0800AA58
	adds r5, #8
	cmp r6, #0
	beq _0800AA92
	cmp r6, #1
	beq _0800AA9C
	movs r4, #0
	b _0800AA9E
_0800AA92:
	ldr r4, _0800AA98 @ =gUnk_082D91E4
	b _0800AA9E
	.align 2, 0
_0800AA98: .4byte gUnk_082D91E4
_0800AA9C:
	ldr r4, _0800AADC @ =gUnk_082D91FC
_0800AA9E:
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800AAD0
	ldr r2, [r4, #4]
	cmp r2, r0
	beq _0800AAD0
	adds r6, r0, #0
_0800AAB0:
	adds r0, r1, #0
	adds r1, r5, #0
	bl WriteSramEx
	cmp r0, #0
	bne _0800AA58
	ldr r0, [r4, #4]
	adds r5, r5, r0
	adds r4, #8
	ldr r1, [r4]
	cmp r1, r6
	beq _0800AAD0
	ldr r0, [r4, #4]
	adds r2, r0, #0
	cmp r2, r6
	bne _0800AAB0
_0800AAD0:
	movs r0, #0
_0800AAD2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AADC: .4byte gUnk_082D91FC

	thumb_func_start sub_0800AAE0
sub_0800AAE0: @ 0x0800AAE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r5, #0xe0
	lsls r5, r5, #0x14
	ldr r2, _0800AB00 @ =gUnk_082D91E4
	movs r4, #0
	ldr r0, [r2]
	movs r3, #1
	rsbs r3, r3, #0
	ldr r1, _0800AB04 @ =gUnk_082D91FC
	b _0800AB0E
	.align 2, 0
_0800AB00: .4byte gUnk_082D91E4
_0800AB04: .4byte gUnk_082D91FC
_0800AB08:
	adds r4, r4, r0
	adds r2, #8
	ldr r0, [r2]
_0800AB0E:
	cmp r0, r3
	beq _0800AB18
	ldr r0, [r2, #4]
	cmp r0, r3
	bne _0800AB08
_0800AB18:
	adds r6, r4, #0
	adds r6, #8
	adds r2, r1, #0
	movs r4, #0
	ldr r0, [r2]
	movs r3, #1
	rsbs r3, r3, #0
	b _0800AB2E
_0800AB28:
	adds r4, r4, r0
	adds r2, #8
	ldr r0, [r2]
_0800AB2E:
	cmp r0, r3
	beq _0800AB38
	ldr r0, [r2, #4]
	cmp r0, r3
	bne _0800AB28
_0800AB38:
	adds r2, r4, #0
	adds r2, #8
	cmp r7, #0
	beq _0800AB4A
	cmp r7, #1
	beq _0800AB50
_0800AB44:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800ABEA
_0800AB4A:
	mov r0, ip
	muls r0, r6, r0
	b _0800AB58
_0800AB50:
	lsls r0, r6, #1
	adds r5, r5, r0
	mov r0, ip
	muls r0, r2, r0
_0800AB58:
	adds r5, r5, r0
	adds r0, r5, #0
	mov r1, sp
	movs r2, #8
	bl ReadSram
	adds r5, #8
	cmp r7, #0
	beq _0800AB72
	cmp r7, #1
	beq _0800AB7C
	movs r4, #0
	b _0800AB7E
_0800AB72:
	ldr r4, _0800AB78 @ =gUnk_082D91E4
	b _0800AB7E
	.align 2, 0
_0800AB78: .4byte gUnk_082D91E4
_0800AB7C:
	ldr r4, _0800ABF4 @ =gUnk_082D91FC
_0800AB7E:
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800ABAA
	ldr r2, [r4, #4]
	cmp r2, r0
	beq _0800ABAA
	adds r6, r0, #0
_0800AB90:
	adds r0, r5, #0
	bl ReadSram
	ldr r0, [r4, #4]
	adds r5, r5, r0
	adds r4, #8
	ldr r1, [r4]
	cmp r1, r6
	beq _0800ABAA
	ldr r0, [r4, #4]
	adds r2, r0, #0
	cmp r2, r6
	bne _0800AB90
_0800ABAA:
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	mvns r3, r0
	ldrh r1, [r2, #2]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0800AB44
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r2, #4]
	cmp r0, r1
	bne _0800AB44
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _0800AB44
	add r4, sp, #8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0800A96C
	ldr r1, [sp, #8]
	ldr r0, [sp]
	cmp r1, r0
	bne _0800AB44
	ldr r1, [r4, #4]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0800AB44
	movs r0, #0
_0800ABEA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800ABF4: .4byte gUnk_082D91FC

	thumb_func_start sub_0800ABF8
sub_0800ABF8: @ 0x0800ABF8
	movs r0, #7
	bx lr

	thumb_func_start sub_0800ABFC
sub_0800ABFC: @ 0x0800ABFC
	movs r0, #7
	bx lr

	thumb_func_start sub_0800AC00
sub_0800AC00: @ 0x0800AC00
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	bl sub_0800AD2C
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800AC44
	ldr r2, [r4, #4]
	cmp r2, r0
	beq _0800AC44
	mov r6, sp
	adds r5, r0, #0
_0800AC20:
	movs r0, #0
	strh r0, [r6]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r4, #8
	ldr r1, [r4]
	cmp r1, r5
	beq _0800AC44
	ldr r0, [r4, #4]
	adds r2, r0, #0
	cmp r2, r5
	bne _0800AC20
_0800AC44:
	ldr r0, _0800AC58 @ =gUnk_082D923C
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC58: .4byte gUnk_082D923C

	thumb_func_start sub_0800AC5C
sub_0800AC5C: @ 0x0800AC5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r5, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
_0800AC6E:
	adds r0, r5, #0
	bl sub_0800AD2C
	adds r4, r0, #0
	ldr r1, [r4]
	lsls r7, r5, #2
	adds r5, #1
	mov r8, r5
	cmp r1, sb
	beq _0800ACB2
	ldr r2, [r4, #4]
	cmp r2, sb
	beq _0800ACB2
	mov r6, sp
	movs r5, #1
	rsbs r5, r5, #0
_0800AC8E:
	movs r0, #0
	strh r0, [r6]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	adds r4, #8
	ldr r1, [r4]
	cmp r1, r5
	beq _0800ACB2
	ldr r0, [r4, #4]
	adds r2, r0, #0
	cmp r2, r5
	bne _0800AC8E
_0800ACB2:
	ldr r0, _0800ACD0 @ =gUnk_082D923C
	adds r0, r7, r0
	ldr r0, [r0]
	bl _call_via_r0
	mov r5, r8
	cmp r5, #1
	bls _0800AC6E
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACD0: .4byte gUnk_082D923C

	thumb_func_start sub_0800ACD4
sub_0800ACD4: @ 0x0800ACD4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl sub_0800A9F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800AD08
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800A9F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800AD08
	movs r0, #0
_0800AD08:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800AD10
sub_0800AD10: @ 0x0800AD10
	push {lr}
	bl nullsub_4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AD1C
sub_0800AD1C: @ 0x0800AD1C
	push {lr}
	bl sub_080027C8
	bl sub_08002868
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AD2C
sub_0800AD2C: @ 0x0800AD2C
	push {lr}
	cmp r0, #0
	beq _0800AD3A
	cmp r0, #1
	beq _0800AD44
	movs r0, #0
	b _0800AD46
_0800AD3A:
	ldr r0, _0800AD40 @ =gUnk_082D91E4
	b _0800AD46
	.align 2, 0
_0800AD40: .4byte gUnk_082D91E4
_0800AD44:
	ldr r0, _0800AD4C @ =gUnk_082D91FC
_0800AD46:
	pop {r1}
	bx r1
	.align 2, 0
_0800AD4C: .4byte gUnk_082D91FC

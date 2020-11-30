	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateObjectSpawner
CreateObjectSpawner: @ 0x0811BDD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811BE04 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811BE08 @ =sub_0811BEBC
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811BE0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811BE14
	.align 2, 0
_0811BE04: .4byte ObjectMain
_0811BE08: .4byte sub_0811BEBC
_0811BE0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811BE14:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811BE5C @ =gUnk_02018F40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _0811BE60 @ =gUnk_08351648
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
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0811BE5C: .4byte gUnk_02018F40
_0811BE60: .4byte gUnk_08351648

	thumb_func_start sub_0811BE64
sub_0811BE64: @ 0x0811BE64
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r2, [r0]
	movs r4, #0
	adds r0, #0x24
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	lsrs r0, r0, #8
	cmp r4, r0
	bhs _0811BEB6
	mov r3, ip
	adds r3, #0xde
	adds r6, r1, #0
	movs r5, #0x80
	lsls r5, r5, #5
_0811BE88:
	ldr r0, [r2]
	cmp r0, #0
	beq _0811BEA0
	ldr r0, [r0, #8]
	ands r0, r5
	cmp r0, #0
	beq _0811BEA0
	movs r0, #0
	str r0, [r2]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
_0811BEA0:
	adds r2, #4
	adds r4, #1
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	adds r0, r6, #0
	ands r0, r1
	lsrs r0, r0, #8
	cmp r4, r0
	blo _0811BE88
_0811BEB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0811BEBC
sub_0811BEBC: @ 0x0811BEBC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811BED6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811BEDE
_0811BED6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811BEDE:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811BF1C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811BF20 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811BF0A
	cmp r6, #0xff
	beq _0811BF16
_0811BF0A:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811BF16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BF1C: .4byte gCurLevelInfo
_0811BF20: .4byte 0x0000065E

	thumb_func_start sub_0811BF24
sub_0811BF24: @ 0x0811BF24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r2, _0811BFA8 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	movs r6, #0
	ldr r0, _0811BFAC @ =gUnk_0203AD44
	mov r8, r0
	ldrb r7, [r0]
	cmp r6, r7
	blo _0811BF58
	b _0811C05E
_0811BF58:
	ldr r5, _0811BFB0 @ =gUnk_02020EE0
	mov r4, sp
	mov sb, r5
	mov r0, ip
	adds r0, #0xb6
	str r0, [sp, #8]
_0811BF64:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sl
	bne _0811C050
	mov r0, ip
	adds r0, #0xb0
	ldr r3, [r0]
	ldrh r1, [r3, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811BFB4
	mov r1, ip
	ldr r2, [r1, #0x40]
	asrs r2, r2, #8
	ldrh r7, [r3, #0x1a]
	adds r2, r2, r7
	strh r2, [r4]
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	ldrh r1, [r3, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldrh r1, [r3, #0x1e]
	adds r2, r2, r1
	strh r2, [r4, #4]
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #6]
	b _0811BFD2
	.align 2, 0
_0811BFA8: .4byte gCurLevelInfo
_0811BFAC: .4byte gUnk_0203AD44
_0811BFB0: .4byte gUnk_02020EE0
_0811BFB4:
	mov r7, ip
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #2]
	adds r2, #8
	strh r2, [r4, #4]
	subs r1, #8
	strh r1, [r4, #6]
_0811BFD2:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x44
	adds r0, r3, r0
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	movs r7, #0
	ldrsh r0, [r4, r7]
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, r1
	blt _0811C050
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0811C050
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0811C050
	ldr r7, [sp, #8]
	ldrh r1, [r7]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0811C078 @ =sub_0811C07C
	mov r1, ip
	str r0, [r1, #0x78]
_0811C050:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r7, r8
	ldrb r7, [r7]
	cmp r6, r7
	blo _0811BF64
_0811C05E:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C078: .4byte sub_0811C07C

	thumb_func_start sub_0811C07C
sub_0811C07C: @ 0x0811C07C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r7, [r4]
	ldr r0, [r6, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r6, #0x44]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xb4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0811C170
	ldr r2, _0811C154 @ =0x0000028D
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811C158 @ =gUnk_02020EE0
	ldr r0, _0811C15C @ =gUnk_0203AD3C
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
	bne _0811C11C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0811C0DC
	ldrb r0, [r4]
	cmp r0, r2
	bne _0811C11C
_0811C0DC:
	ldr r1, _0811C160 @ =gUnk_08D60FA4
	ldr r4, _0811C164 @ =gSongTable
	ldr r2, _0811C168 @ =0x00000FF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811C102
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811C11C
_0811C102:
	cmp r3, #0
	beq _0811C114
	ldr r0, _0811C16C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811C11C
_0811C114:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811C11C:
	mov r4, r8
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080023E4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0811C174
	.align 2, 0
_0811C154: .4byte 0x0000028D
_0811C158: .4byte gUnk_02020EE0
_0811C15C: .4byte gUnk_0203AD3C
_0811C160: .4byte gUnk_08D60FA4
_0811C164: .4byte gSongTable
_0811C168: .4byte 0x00000FF4
_0811C16C: .4byte gUnk_0203AD10
_0811C170:
	subs r0, r2, #1
	strh r0, [r1]
_0811C174:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

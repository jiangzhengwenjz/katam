	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateCannonFuse
CreateCannonFuse: @ 0x0811DCD8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811DD0C @ =ObjectMain
	ldr r2, _0811DD10 @ =0x00000FFE
	ldr r1, _0811DD14 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811DD18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0811DD20
	.align 2, 0
_0811DD0C: .4byte ObjectMain
_0811DD10: .4byte 0x00000FFE
_0811DD14: .4byte ObjectDestroy
_0811DD18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0811DD20:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	ldr r1, _0811DD88 @ =0x02618141
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	orrs r0, r2
	ldr r1, _0811DD8C @ =0xFFFEFEFF
	ands r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _0811DD90 @ =gUnk_08351648
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
_0811DD88: .4byte 0x02618141
_0811DD8C: .4byte 0xFFFEFEFF
_0811DD90: .4byte gUnk_08351648

	thumb_func_start sub_0811DD94
sub_0811DD94: @ 0x0811DD94
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	strh r3, [r0, #4]
	adds r0, #0xb4
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r2, ip
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	mov r1, ip
	adds r1, #0xb8
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0xc0
	strh r3, [r0]
	adds r0, #2
	strb r4, [r0]
	subs r0, #0x3f
	strb r4, [r0]
	ldr r0, _0811DDF8 @ =sub_0811E92C
	mov r1, ip
	str r0, [r1, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811DDF8: .4byte sub_0811E92C

	thumb_func_start sub_0811DDFC
sub_0811DDFC: @ 0x0811DDFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #0x22
	cmp r0, #5
	bls _0811DE30
	b _0811E246
_0811DE30:
	lsls r0, r0, #2
	ldr r1, _0811DE3C @ =_0811DE40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811DE3C: .4byte _0811DE40
_0811DE40: @ jump table
	.4byte _0811DE58 @ case 0
	.4byte _0811DEB2 @ case 1
	.4byte _0811DF60 @ case 2
	.4byte _0811E018 @ case 3
	.4byte _0811E0FC @ case 4
	.4byte _0811E196 @ case 5
_0811DE58:
	cmp r7, r8
	blo _0811DE80
	adds r2, r4, #0
	adds r2, #0x52
	ldr r0, _0811DE7C @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	bge _0811DE9E
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r2]
	b _0811DE9E
	.align 2, 0
_0811DE7C: .4byte 0xFFFFF000
_0811DE80:
	adds r2, r4, #0
	adds r2, #0x52
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811DE9E
	strh r1, [r2]
_0811DE9E:
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	mov r6, r8
	subs r0, r7, r6
	ldrh r2, [r1]
	adds r0, r0, r2
	b _0811E244
_0811DEB2:
	cmp r5, r6
	bne _0811DF1C
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811DEEC
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811DEE4 @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DEE8 @ =0x00000FFF
	cmp r2, r0
	ble _0811DF0C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0811DF36
	b _0811DF0E
	.align 2, 0
_0811DEE4: .4byte 0xFFFFF000
_0811DEE8: .4byte 0x00000FFF
_0811DEEC:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DF14 @ =0xFFFFF000
	cmp r2, r0
	bgt _0811DF0E
	ldr r0, _0811DF18 @ =0x00000FFF
	cmp r2, r0
	bgt _0811DF36
_0811DF0C:
	adds r0, #1
_0811DF0E:
	strh r0, [r1]
	b _0811DF36
	.align 2, 0
_0811DF14: .4byte 0xFFFFF000
_0811DF18: .4byte 0x00000FFF
_0811DF1C:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r3, _0811DF4C @ =0xFFFFF000
	adds r0, r3, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r1, r0
	bge _0811DF36
	strh r3, [r2]
_0811DF36:
	cmp r5, r6
	bne _0811DF50
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
	.align 2, 0
_0811DF4C: .4byte 0xFFFFF000
_0811DF50:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811DF60:
	cmp r5, r6
	bne _0811DFD8
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811DFA4
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811DF90 @ =0x00000FFF
	cmp r2, r0
	bgt _0811DF94
	adds r0, #1
	strh r0, [r1]
	b _0811DFF2
	.align 2, 0
_0811DF90: .4byte 0x00000FFF
_0811DF94:
	ldr r0, _0811DFA0 @ =0xFFFFF000
	cmp r2, r0
	ble _0811DFF2
	strh r0, [r1]
	b _0811DFF2
	.align 2, 0
_0811DFA0: .4byte 0xFFFFF000
_0811DFA4:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _0811DFC4 @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	ble _0811DFC8
	strh r1, [r2]
	b _0811DFF2
	.align 2, 0
_0811DFC4: .4byte 0xFFFFF000
_0811DFC8:
	ldr r0, _0811DFD4 @ =0x00000FFF
	cmp r3, r0
	bgt _0811DFF2
	adds r0, #1
	strh r0, [r2]
	b _0811DFF2
	.align 2, 0
_0811DFD4: .4byte 0x00000FFF
_0811DFD8:
	adds r2, r4, #0
	adds r2, #0x52
	ldr r1, _0811E004 @ =0xFFFFF000
	adds r0, r1, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r1, r0
	bge _0811DFF2
	strh r3, [r2]
_0811DFF2:
	cmp r5, r6
	bne _0811E008
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	b _0811E240
	.align 2, 0
_0811E004: .4byte 0xFFFFF000
_0811E008:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811E018:
	cmp r5, r6
	blo _0811E07C
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E04C
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811E044 @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E048 @ =0x00000FFF
	cmp r2, r0
	ble _0811E0A0
	lsls r0, r3, #0x10
	b _0811E0AC
	.align 2, 0
_0811E044: .4byte 0xFFFFF000
_0811E048: .4byte 0x00000FFF
_0811E04C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E074 @ =0xFFFFF000
	cmp r2, r0
	bgt _0811E06E
	ldr r0, _0811E078 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E0E6
	adds r0, #1
_0811E06E:
	strh r0, [r1]
	b _0811E0E6
	.align 2, 0
_0811E074: .4byte 0xFFFFF000
_0811E078: .4byte 0x00000FFF
_0811E07C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E0B8
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E0A8 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E0AC
_0811E0A0:
	movs r0, #0x80
	lsls r0, r0, #5
	b _0811E06E
	.align 2, 0
_0811E0A8: .4byte 0x00000FFF
_0811E0AC:
	ldr r0, _0811E0B4 @ =0xFFFFF000
	cmp r2, r0
	ble _0811E0E6
	b _0811E06E
	.align 2, 0
_0811E0B4: .4byte 0xFFFFF000
_0811E0B8:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r3, _0811E0D8 @ =0xFFFFF000
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	ble _0811E0DC
	strh r1, [r2]
	b _0811E0E6
	.align 2, 0
_0811E0D8: .4byte 0xFFFFF000
_0811E0DC:
	ldr r0, _0811E0F8 @ =0x00000FFF
	cmp r3, r0
	bgt _0811E0E6
	adds r0, #1
	strh r0, [r2]
_0811E0E6:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	subs r0, r5, r6
	ldrh r6, [r1]
	adds r0, r0, r6
	b _0811E244
	.align 2, 0
_0811E0F8: .4byte 0x00000FFF
_0811E0FC:
	cmp r5, r6
	bne _0811E164
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E134
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0811E12C @ =0xFFFFF000
	adds r3, r0, #0
	ldrh r2, [r1]
	adds r0, r3, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E130 @ =0x00000FFF
	cmp r2, r0
	ble _0811E154
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0811E182
	b _0811E156
	.align 2, 0
_0811E12C: .4byte 0xFFFFF000
_0811E130: .4byte 0x00000FFF
_0811E134:
	adds r1, r4, #0
	adds r1, #0x50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E15C @ =0xFFFFF000
	cmp r2, r0
	bgt _0811E156
	ldr r0, _0811E160 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E182
_0811E154:
	adds r0, #1
_0811E156:
	strh r0, [r1]
	b _0811E182
	.align 2, 0
_0811E15C: .4byte 0xFFFFF000
_0811E160: .4byte 0x00000FFF
_0811E164:
	adds r2, r4, #0
	adds r2, #0x52
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811E182
	strh r1, [r2]
_0811E182:
	cmp r5, r6
	bne _0811E236
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	adds r0, #1
	b _0811E244
_0811E196:
	cmp r5, r6
	bne _0811E208
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0811E1D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0811E1C4 @ =0x00000FFF
	cmp r2, r0
	bgt _0811E1C8
	adds r0, #1
	strh r0, [r1]
	b _0811E226
	.align 2, 0
_0811E1C4: .4byte 0x00000FFF
_0811E1C8:
	ldr r0, _0811E1D4 @ =0xFFFFF000
	cmp r2, r0
	ble _0811E226
	strh r0, [r1]
	b _0811E226
	.align 2, 0
_0811E1D4: .4byte 0xFFFFF000
_0811E1D8:
	adds r2, r4, #0
	adds r2, #0x50
	ldr r0, _0811E200 @ =0xFFFFF000
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r3, r1
	bgt _0811E224
	ldr r0, _0811E204 @ =0x00000FFF
	cmp r3, r0
	bgt _0811E226
	adds r0, #1
	strh r0, [r2]
	b _0811E226
	.align 2, 0
_0811E200: .4byte 0xFFFFF000
_0811E204: .4byte 0x00000FFF
_0811E208:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	ldrh r3, [r2]
	adds r0, r1, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0811E226
_0811E224:
	strh r1, [r2]
_0811E226:
	cmp r5, r6
	bne _0811E236
	adds r0, r4, #0
	adds r0, #0xba
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	b _0811E240
_0811E236:
	adds r0, r4, #0
	adds r0, #0xb8
	strh r5, [r0]
	adds r1, r4, #0
	adds r1, #0xbe
_0811E240:
	ldrh r0, [r1]
	subs r0, #1
_0811E244:
	strh r0, [r1]
_0811E246:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x52
	adds r3, r4, #0
	adds r3, #0x50
	cmp r1, #0
	bne _0811E272
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_0811E272:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _0811E294
	ldr r6, _0811E290 @ =0x00007FFF
	adds r0, r2, r6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E2A4
	movs r0, #0
	strh r0, [r1]
	b _0811E2A4
	.align 2, 0
_0811E290: .4byte 0x00007FFF
_0811E294:
	ldr r1, _0811E2C4 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E2A4
	movs r0, #0
	strh r0, [r3]
_0811E2A4:
	adds r1, r5, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E2CC
	ldr r4, _0811E2C8 @ =0x00007FFF
	adds r0, r2, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E2DC
	movs r0, #0
	strh r0, [r1]
	b _0811E2DC
	.align 2, 0
_0811E2C4: .4byte 0xFFFF8001
_0811E2C8: .4byte 0x00007FFF
_0811E2CC:
	ldr r6, _0811E2E8 @ =0xFFFF8001
	adds r0, r2, r6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E2DC
	movs r0, #0
	strh r0, [r5]
_0811E2DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811E2E8: .4byte 0xFFFF8001

	thumb_func_start sub_0811E2EC
sub_0811E2EC: @ 0x0811E2EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x2b
	movs r1, #0xff
	strb r1, [r2]
	subs r0, #0x22
	cmp r0, #5
	bhi _0811E3C4
	lsls r0, r0, #2
	ldr r1, _0811E330 @ =_0811E334
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811E330: .4byte _0811E334
_0811E334: @ jump table
	.4byte _0811E34C @ case 0
	.4byte _0811E360 @ case 1
	.4byte _0811E374 @ case 2
	.4byte _0811E388 @ case 3
	.4byte _0811E39C @ case 4
	.4byte _0811E3B0 @ case 5
_0811E34C:
	cmp r7, r8
	blo _0811E358
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	b _0811E3C2
_0811E358:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	b _0811E3C2
_0811E360:
	cmp r5, r6
	bne _0811E36C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	b _0811E3C2
_0811E36C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #9
	b _0811E3C2
_0811E374:
	cmp r5, r6
	bne _0811E380
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc
	b _0811E3C2
_0811E380:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	b _0811E3C2
_0811E388:
	cmp r5, r6
	blo _0811E394
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	b _0811E3C2
_0811E394:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	b _0811E3C2
_0811E39C:
	cmp r5, r6
	bne _0811E3A8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #5
	b _0811E3C2
_0811E3A8:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	b _0811E3C2
_0811E3B0:
	cmp r5, r6
	bne _0811E3BC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #7
	b _0811E3C2
_0811E3BC:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #8
_0811E3C2:
	strb r0, [r1]
_0811E3C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811E3D0
sub_0811E3D0: @ 0x0811E3D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xbc
	ldrh r5, [r0]
	adds r0, #2
	ldrh r7, [r0]
	subs r0, #6
	ldrh r6, [r0]
	adds r0, #2
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x2b
	movs r1, #0xff
	strb r1, [r2]
	subs r0, #0x22
	cmp r0, #5
	bhi _0811E4A8
	lsls r0, r0, #2
	ldr r1, _0811E414 @ =_0811E418
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0811E414: .4byte _0811E418
_0811E418: @ jump table
	.4byte _0811E430 @ case 0
	.4byte _0811E444 @ case 1
	.4byte _0811E458 @ case 2
	.4byte _0811E46C @ case 3
	.4byte _0811E480 @ case 4
	.4byte _0811E494 @ case 5
_0811E430:
	cmp r7, r8
	blo _0811E43C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	b _0811E4A6
_0811E43C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xe
	b _0811E4A6
_0811E444:
	cmp r5, r6
	bne _0811E450
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x16
	b _0811E4A6
_0811E450:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x15
	b _0811E4A6
_0811E458:
	cmp r5, r6
	bne _0811E464
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x18
	b _0811E4A6
_0811E464:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x17
	b _0811E4A6
_0811E46C:
	cmp r5, r6
	blo _0811E478
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xf
	b _0811E4A6
_0811E478:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x10
	b _0811E4A6
_0811E480:
	cmp r5, r6
	bne _0811E48C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x11
	b _0811E4A6
_0811E48C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x12
	b _0811E4A6
_0811E494:
	cmp r5, r6
	bne _0811E4A0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x13
	b _0811E4A6
_0811E4A0:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x14
_0811E4A6:
	strb r0, [r1]
_0811E4A8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811E4B4
sub_0811E4B4: @ 0x0811E4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r7
	adds r2, r7, #0
	adds r2, #0xc2
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0811E546
	ldr r1, _0811E5A4 @ =gKirbys
	ldr r0, _0811E5A8 @ =gUnk_0203AD3C
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
	bne _0811E53E
	ldrb r0, [r7]
	cmp r0, #0
	bne _0811E502
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811E53E
_0811E502:
	ldr r1, _0811E5AC @ =gUnk_08D60FA4
	ldr r4, _0811E5B0 @ =gSongTable
	ldr r2, _0811E5B4 @ =0x00001014
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811E526
	ldr r5, _0811E5B8 @ =0x00001010
	adds r0, r4, r5
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811E53E
_0811E526:
	cmp r3, #0
	beq _0811E538
	ldr r0, _0811E5BC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E53E
_0811E538:
	ldr r0, _0811E5C0 @ =0x00000202
	bl m4aSongNumStart
_0811E53E:
	mov r1, r8
	adds r1, #0xc2
	movs r0, #0
	strb r0, [r1]
_0811E546:
	ldr r0, [r7, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0811E552
	b _0811E6E2
_0811E552:
	mov r0, r8
	bl sub_0811DDFC
	mov r6, r8
	adds r6, #0xbc
	ldrh r1, [r6]
	mov r5, r8
	adds r5, #0xbe
	ldrh r2, [r5]
	mov r4, r8
	adds r4, #0x56
	ldrb r0, [r4]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r6
	adds r6, r5, #0
	mov sl, r4
	cmp r0, #0x27
	bgt _0811E580
	cmp r0, #0x22
	bge _0811E582
_0811E580:
	movs r0, #0
_0811E582:
	str r0, [sp]
	cmp r0, #0
	beq _0811E5C4
	mov r0, r8
	bl sub_0811E2EC
	mov r0, sl
	ldrb r4, [r0]
	mov r2, sb
	ldrh r1, [r2]
	ldrh r2, [r6]
	adds r0, r4, #0
	bl sub_080023E4
	mov r3, sb
	ldrb r1, [r3]
	b _0811E6B6
	.align 2, 0
_0811E5A4: .4byte gKirbys
_0811E5A8: .4byte gUnk_0203AD3C
_0811E5AC: .4byte gUnk_08D60FA4
_0811E5B0: .4byte gSongTable
_0811E5B4: .4byte 0x00001014
_0811E5B8: .4byte 0x00001010
_0811E5BC: .4byte gUnk_0203AD10
_0811E5C0: .4byte 0x00000202
_0811E5C4:
	mov r2, r8
	adds r2, #0xb6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E5D4
	b _0811E6D4
_0811E5D4:
	ldr r0, _0811E648 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r2, r7, #0
	adds r2, #0x52
	ldr r5, _0811E64C @ =0xFFFFF000
	adds r0, r5, #0
	ldrh r3, [r2]
	adds r1, r0, r3
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r2, #0
	cmp r1, r0
	bge _0811E5FC
	strh r3, [r4]
_0811E5FC:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r3, r7, #0
	adds r3, #0x50
	cmp r0, #0
	bne _0811E626
	ldr r1, [r7, #0x40]
	str r1, [r7, #0x48]
	ldr r2, [r7, #0x44]
	str r2, [r7, #0x4c]
	movs r0, #0
	ldrsh r5, [r3, r0]
	mov ip, r5
	add r1, ip
	str r1, [r7, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r7, #0x44]
_0811E626:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r0, #0
	ldrsh r5, [r1, r0]
	cmp r5, #0
	bge _0811E654
	ldr r3, _0811E650 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E666
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1]
	b _0811E666
	.align 2, 0
_0811E648: .4byte 0x0000FFFE
_0811E64C: .4byte 0xFFFFF000
_0811E650: .4byte 0x00007FFF
_0811E654:
	ldr r1, _0811E684 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E666
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r3]
_0811E666:
	adds r1, r4, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E68C
	ldr r5, _0811E688 @ =0x00007FFF
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E69C
	movs r0, #0
	strh r0, [r1]
	b _0811E69C
	.align 2, 0
_0811E684: .4byte 0xFFFF8001
_0811E688: .4byte 0x00007FFF
_0811E68C:
	ldr r1, _0811E6D0 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E69C
	movs r0, #0
	strh r0, [r4]
_0811E69C:
	mov r0, r8
	bl sub_0811E2EC
	mov r2, sl
	ldrb r4, [r2]
	mov r3, sb
	ldrh r1, [r3]
	ldrh r2, [r6]
	adds r0, r4, #0
	bl sub_080023E4
	mov r5, sb
	ldrb r1, [r5]
_0811E6B6:
	ldrb r2, [r6]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08002624
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	b _0811E6E2
	.align 2, 0
_0811E6D0: .4byte 0xFFFF8001
_0811E6D4:
	ldr r0, _0811E6F8 @ =sub_0811E890
	str r0, [r7, #0x78]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
_0811E6E2:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811E6F8: .4byte sub_0811E890

	thumb_func_start sub_0811E6FC
sub_0811E6FC: @ 0x0811E6FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r6
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0811E716
	b _0811E876
_0811E716:
	movs r0, #0xb6
	adds r0, r0, r6
	mov r8, r0
	ldrh r1, [r0]
	movs r3, #1
	mov sb, r3
	mov r0, sb
	ands r0, r1
	adds r7, r6, #0
	adds r7, #0xbe
	cmp r0, #0
	bne _0811E75A
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r4, [r0]
	adds r5, r6, #0
	adds r5, #0xbc
	ldrh r1, [r5]
	ldrh r2, [r7]
	adds r0, r4, #0
	bl sub_080023E4
	ldrb r1, [r5]
	ldrb r2, [r7]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002624
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
_0811E75A:
	adds r0, r6, #0
	bl sub_0811DDFC
	mov r0, r8
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0811E840
	ldr r0, _0811E7DC @ =0x0000FFFE
	ands r0, r1
	movs r5, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	adds r2, r6, #0
	adds r2, #0x52
	ldr r3, _0811E7E0 @ =0xFFFFF000
	adds r0, r3, #0
	ldrh r7, [r2]
	adds r1, r0, r7
	strh r1, [r2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r2, #0
	cmp r1, r0
	bge _0811E798
	strh r3, [r4]
_0811E798:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	adds r3, r6, #0
	adds r3, #0x50
	cmp r0, #0
	bne _0811E7C0
	ldr r1, [r6, #0x40]
	str r1, [r6, #0x48]
	ldr r2, [r6, #0x44]
	str r2, [r6, #0x4c]
	movs r7, #0
	ldrsh r0, [r3, r7]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	str r2, [r6, #0x44]
_0811E7C0:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _0811E7E8
	ldr r3, _0811E7E4 @ =0x00007FFF
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E7F6
	strh r5, [r1]
	b _0811E7F6
	.align 2, 0
_0811E7DC: .4byte 0x0000FFFE
_0811E7E0: .4byte 0xFFFFF000
_0811E7E4: .4byte 0x00007FFF
_0811E7E8:
	ldr r7, _0811E814 @ =0xFFFF8001
	adds r0, r2, r7
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E7F6
	strh r5, [r3]
_0811E7F6:
	adds r1, r4, #0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0811E81C
	ldr r7, _0811E818 @ =0x00007FFF
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0811E82C
	movs r0, #0
	strh r0, [r1]
	b _0811E82C
	.align 2, 0
_0811E814: .4byte 0xFFFF8001
_0811E818: .4byte 0x00007FFF
_0811E81C:
	ldr r1, _0811E838 @ =0xFFFF8001
	adds r0, r2, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0811E82C
	movs r0, #0
	strh r0, [r4]
_0811E82C:
	ldr r0, [r6, #8]
	ldr r1, _0811E83C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	b _0811E864
	.align 2, 0
_0811E838: .4byte 0xFFFF8001
_0811E83C: .4byte 0xFFFFFBFF
_0811E840:
	adds r0, r6, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	ldrh r2, [r7]
	subs r0, #0x66
	ldrb r0, [r0]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bgt _0811E85C
	cmp r0, #0x22
	bge _0811E85E
_0811E85C:
	movs r0, #0
_0811E85E:
	adds r1, r0, #0
	cmp r1, #0
	beq _0811E86C
_0811E864:
	mov r0, sl
	bl sub_0811E3D0
	b _0811E876
_0811E86C:
	ldr r0, _0811E88C @ =sub_0811DD94
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x83
	strb r1, [r0]
_0811E876:
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
_0811E88C: .4byte sub_0811DD94

	thumb_func_start sub_0811E890
sub_0811E890: @ 0x0811E890
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xb6
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811E900
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0811E916
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	adds r0, #6
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0xba
	strh r0, [r1]
	subs r1, #6
	movs r0, #0x23
	strh r0, [r1]
	movs r0, #5
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldr r3, _0811E8F8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811E8FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	b _0811E916
	.align 2, 0
_0811E8F8: .4byte gCurLevelInfo
_0811E8FC: .4byte 0x0000065E
_0811E900:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _0811E924 @ =0xFFFF0000
	cmp r1, r0
	bne _0811E916
	ldr r0, _0811E928 @ =sub_0811E6FC
	str r0, [r4, #0x78]
_0811E916:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811E924: .4byte 0xFFFF0000
_0811E928: .4byte sub_0811E6FC

	thumb_func_start sub_0811E92C
sub_0811E92C: @ 0x0811E92C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0811E94E
	ldr r0, _0811E95C @ =sub_0811E4B4
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0xb6
	movs r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08094930
_0811E94E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811E95C: .4byte sub_0811E4B4

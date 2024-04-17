	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08141B78
sub_08141B78: @ 0x08141B78
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08141BE8 @ =0x000009D8
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r5, _08141BEC @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	blt _08141BA6
	ldr r0, _08141BF0 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08141BF4 @ =sub_08143260
	str r0, [r1]
_08141BA6:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	movs r4, #0
_08141BBA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141BBA
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08141BE8: .4byte 0x000009D8
_08141BEC: .4byte gBldRegs
_08141BF0: .4byte 0x000009CC
_08141BF4: .4byte sub_08143260

	thumb_func_start sub_08141BF8
sub_08141BF8: @ 0x08141BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08141C5C @ =0x000009CA
	adds r0, r7, r1
	ldrb r6, [r0]
	mov r8, r6
	adds r0, r7, #0
	bl sub_0813AD2C
	ldrb r0, [r7, #2]
	cmp r0, #5
	beq _08141CC0
	cmp r0, #8
	bne _08141CC8
	mov r0, sp
	ldr r1, _08141C60 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08141C64 @ =gBgPalette
	ldr r5, _08141C68 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08141C6C @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08141C70 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08141C74 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r6, #1
	beq _08141C8C
	cmp r6, #1
	bgt _08141C78
	cmp r6, #0
	beq _08141C84
	b _08141CC8
	.align 2, 0
_08141C5C: .4byte 0x000009CA
_08141C60: .4byte 0x00007FFF
_08141C64: .4byte gBgPalette
_08141C68: .4byte 0x01000100
_08141C6C: .4byte gObjPalette
_08141C70: .4byte gMainFlags
_08141C74: .4byte gCurTask
_08141C78:
	mov r0, r8
	cmp r0, #2
	beq _08141C94
	cmp r0, #3
	beq _08141C9C
	b _08141CC8
_08141C84:
	movs r0, #0
	bl sub_0801A744
	b _08141CC8
_08141C8C:
	movs r0, #1
	bl sub_0801A744
	b _08141CC8
_08141C94:
	movs r0, #2
	bl sub_0801A744
	b _08141CC8
_08141C9C:
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08141CB8
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r7, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08141CB8:
	movs r0, #3
	bl sub_0801A744
	b _08141CC8
_08141CC0:
	ldr r0, _08141CD4 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _08141CD8 @ =sub_0813ECBC
	str r0, [r1]
_08141CC8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08141CD4: .4byte 0x000009CC
_08141CD8: .4byte sub_0813ECBC

	thumb_func_start sub_08141CDC
sub_08141CDC: @ 0x08141CDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #6
	bls _08141CEA
	b _08141E24
_08141CEA:
	lsls r0, r0, #2
	ldr r1, _08141CF4 @ =_08141CF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08141CF4: .4byte _08141CF8
_08141CF8: @ jump table
	.4byte _08141D14 @ case 0
	.4byte _08141D38 @ case 1
	.4byte _08141DA4 @ case 2
	.4byte _08141E24 @ case 3
	.4byte _08141E24 @ case 4
	.4byte _08141E24 @ case 5
	.4byte _08141DC0 @ case 6
_08141D14:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141D2A
	ldr r0, _08141D34 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D2A:
	adds r0, r5, #0
	bl sub_0813AD9C
	b _08141E24
	.align 2, 0
_08141D34: .4byte 0x000002A7
_08141D38:
	ldr r1, _08141D54 @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141D58
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141D70
	.align 2, 0
_08141D54: .4byte 0x00000BE5
_08141D58:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141D70
	ldr r0, _08141DA0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141D70:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141D80:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141D80
	b _08141E24
	.align 2, 0
_08141DA0: .4byte 0x000002A7
_08141DA4:
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0813AE30
	b _08141E24
_08141DC0:
	ldr r1, _08141DDC @ =0x00000BE5
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08141DE0
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	b _08141DF8
	.align 2, 0
_08141DDC: .4byte 0x00000BE5
_08141DE0:
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08141DF8
	ldr r0, _08141E2C @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08141DF8:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08141E08:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08141E08
_08141E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141E2C: .4byte 0x000002A7

	thumb_func_start sub_08141E30
sub_08141E30: @ 0x08141E30
	push {lr}
	ldr r0, _08141E40 @ =gUnk_0203AD48
	ldrh r0, [r0]
	cmp r0, #2
	bhi _08141E44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08141E46
	.align 2, 0
_08141E40: .4byte gUnk_0203AD48
_08141E44:
	movs r0, #0
_08141E46:
	bl sub_0813914C
	adds r3, r0, #0
	ldr r1, _08141E5C @ =gUnk_0203ACB0
	ldr r2, _08141E60 @ =gUnk_0203AD48
	ldrh r0, [r2]
	cmp r0, #2
	bhi _08141E64
	lsls r0, r0, #1
	b _08141E66
	.align 2, 0
_08141E5C: .4byte gUnk_0203ACB0
_08141E60: .4byte gUnk_0203AD48
_08141E64:
	movs r0, #0
_08141E66:
	adds r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08141E74
sub_08141E74: @ 0x08141E74
	push {lr}
	ldr r0, _08141E90 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08141E94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08141E9C
	.align 2, 0
_08141E90: .4byte gCurTask
_08141E94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08141E9C:
	ldr r0, _08141EB8 @ =0x000009D4
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08141EBC @ =0x000009CC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08141EB8: .4byte 0x000009D4
_08141EBC: .4byte 0x000009CC

	thumb_func_start sub_08141EC0
sub_08141EC0: @ 0x08141EC0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08141EC6:
	adds r0, r4, #0
	bl sub_0814343C
	adds r0, r4, #0
	bl sub_08143464
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08141EC6
	ldr r3, _08141F04 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08141F0C
	ldr r0, _08141F08 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl LoadBgPaletteWithTransformation
	b _08141F2C
	.align 2, 0
_08141F04: .4byte gMainFlags
_08141F08: .4byte gUnk_082D7850
_08141F0C:
	ldr r1, _08141F54 @ =0x040000D4
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r0, _08141F5C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08141F60 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08141F2C:
	ldr r0, _08141F58 @ =gUnk_082D7850
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	ldr r2, _08141F64 @ =0x000009DA
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r4, _08141F68 @ =0x000009CC
	adds r1, r5, r4
	ldr r0, _08141F6C @ =sub_08141F70
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08141F54: .4byte 0x040000D4
_08141F58: .4byte gUnk_082D7850
_08141F5C: .4byte gBgPalette
_08141F60: .4byte 0x80000100
_08141F64: .4byte 0x000009DA
_08141F68: .4byte 0x000009CC
_08141F6C: .4byte sub_08141F70

	thumb_func_start sub_08141F70
sub_08141F70: @ 0x08141F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08141F94 @ =gUnk_082D7850
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, _08141F98 @ =0x06008000
	bl LZ77UnCompVram
	ldr r0, _08141F9C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FA0 @ =sub_0813C1C4
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141F94: .4byte gUnk_082D7850
_08141F98: .4byte 0x06008000
_08141F9C: .4byte 0x000009CC
_08141FA0: .4byte sub_0813C1C4

	thumb_func_start sub_08141FA4
sub_08141FA4: @ 0x08141FA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_081392A0
	ldr r0, _08141FBC @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08141FC0 @ =sub_0813C388
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08141FBC: .4byte 0x000009CC
_08141FC0: .4byte sub_0813C388

	thumb_func_start sub_08141FC4
sub_08141FC4: @ 0x08141FC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08141FE8
	ldr r0, _08142008 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08141FE8:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _0814200C @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _08142010 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142014 @ =sub_0813CA24
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142008: .4byte 0x000002A7
_0814200C: .4byte 0x00000BDC
_08142010: .4byte 0x000009CC
_08142014: .4byte sub_0813CA24

	thumb_func_start sub_08142018
sub_08142018: @ 0x08142018
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142064 @ =gUnk_0203ADE0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08142068 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814206C @ =0x000009CC
	adds r1, r4, r2
	ldr r0, _08142070 @ =sub_0813CB78
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _0814204C
	ldr r2, _08142074 @ =0x000002A7
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
_0814204C:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _08142078 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142064: .4byte gUnk_0203ADE0
_08142068: .4byte 0x000009D8
_0814206C: .4byte 0x000009CC
_08142070: .4byte sub_0813CB78
_08142074: .4byte 0x000002A7
_08142078: .4byte 0x00000BDC

	thumb_func_start sub_0814207C
sub_0814207C: @ 0x0814207C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _081420D0 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _081420D4 @ =0x000009D8
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	ldr r0, _081420D8 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _081420B0
	ldr r0, _081420DC @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_081420B0:
	adds r0, r4, #0
	bl sub_0813AD9C
	ldr r1, _081420E0 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _081420E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081420E8 @ =sub_0813CCA8
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081420D0: .4byte gUnk_030016A0
_081420D4: .4byte 0x000009D8
_081420D8: .4byte gBldRegs
_081420DC: .4byte 0x000002A7
_081420E0: .4byte 0x00000BDC
_081420E4: .4byte 0x000009CC
_081420E8: .4byte sub_0813CCA8

	thumb_func_start sub_081420EC
sub_081420EC: @ 0x081420EC
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814210C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142110 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142114 @ =sub_08142118
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814210C: .4byte 0x000009D8
_08142110: .4byte 0x000009CC
_08142114: .4byte sub_08142118

	thumb_func_start sub_08142118
sub_08142118: @ 0x08142118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814213C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142136
	ldr r0, _08142140 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142144 @ =sub_08142148
	str r0, [r1]
_08142136:
	pop {r0}
	bx r0
	.align 2, 0
_0814213C: .4byte 0x000009D8
_08142140: .4byte 0x000009CC
_08142144: .4byte sub_08142148

	thumb_func_start sub_08142148
sub_08142148: @ 0x08142148
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814216C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814215E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814215E:
	ldr r0, _08142170 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142174 @ =sub_08142178
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814216C: .4byte 0x00000BEC
_08142170: .4byte 0x000009CC
_08142174: .4byte sub_08142178

	thumb_func_start sub_08142178
sub_08142178: @ 0x08142178
	ldr r1, _08142184 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142188 @ =sub_0814218C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142184: .4byte 0x000009CC
_08142188: .4byte sub_0814218C

	thumb_func_start sub_0814218C
sub_0814218C: @ 0x0814218C
	ldr r1, _08142198 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814219C @ =sub_081421A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142198: .4byte 0x000009CC
_0814219C: .4byte sub_081421A0

	thumb_func_start sub_081421A0
sub_081421A0: @ 0x081421A0
	push {lr}
	ldr r0, _081421B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_081421B4: .4byte gCurTask

	thumb_func_start sub_081421B8
sub_081421B8: @ 0x081421B8
	push {lr}
	adds r2, r0, #0
	ldr r0, _081421E8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081421D6
	ldr r0, _081421EC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081421F0 @ =sub_081421F8
	str r0, [r1]
_081421D6:
	ldr r1, _081421F4 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081421E8: .4byte 0x000009D8
_081421EC: .4byte 0x000009CC
_081421F0: .4byte sub_081421F8
_081421F4: .4byte 0x00000BDC

	thumb_func_start sub_081421F8
sub_081421F8: @ 0x081421F8
	push {lr}
	ldr r1, _08142218 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0814221C @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142220 @ =sub_0813D0DC
	str r1, [r2]
	ldr r2, _08142224 @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08142218: .4byte 0x000009D8
_0814221C: .4byte 0x000009CC
_08142220: .4byte sub_0813D0DC
_08142224: .4byte 0x00000BDC

	thumb_func_start sub_08142228
sub_08142228: @ 0x08142228
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142294 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142298 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814229C @ =sub_0813D178
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142254
	ldr r0, _081422A0 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142254:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142264:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142264
	ldr r1, _081422A4 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142294: .4byte 0x000009D8
_08142298: .4byte 0x000009CC
_0814229C: .4byte sub_0813D178
_081422A0: .4byte 0x000002A7
_081422A4: .4byte 0x00000BDC

	thumb_func_start sub_081422A8
sub_081422A8: @ 0x081422A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142314 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142318 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814231C @ =sub_0813D234
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081422D4
	ldr r0, _08142320 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081422D4:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081422E4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081422E4
	ldr r1, _08142324 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142314: .4byte 0x000009D8
_08142318: .4byte 0x000009CC
_0814231C: .4byte sub_0813D234
_08142320: .4byte 0x000002A7
_08142324: .4byte 0x00000BDC

	thumb_func_start sub_08142328
sub_08142328: @ 0x08142328
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08142380 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142384 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142388 @ =sub_0813DB74
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08142352:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142352
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142380: .4byte gBldRegs
_08142384: .4byte 0x000009CC
_08142388: .4byte sub_0813DB74

	thumb_func_start sub_0814238C
sub_0814238C: @ 0x0814238C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _081423E0 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _081423E4 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _081423E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081423EC @ =sub_0813DE7C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081423BE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081423BE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081423E0: .4byte gBldRegs
_081423E4: .4byte 0x000009D8
_081423E8: .4byte 0x000009CC
_081423EC: .4byte sub_0813DE7C

	thumb_func_start sub_081423F0
sub_081423F0: @ 0x081423F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142448 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0814244C @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142412
	bl VramFree
	movs r0, #0
	str r0, [r5]
_08142412:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142420
	bl VramFree
	movs r0, #0
	str r0, [r4, #0xc]
_08142420:
	adds r0, r4, #0
	bl sub_0813A9DC
	ldr r1, _08142450 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142454 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142458 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _0814245C @ =sub_08142460
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142448: .4byte gDispCnt
_0814244C: .4byte 0x0000FCFF
_08142450: .4byte 0x00000BEC
_08142454: .4byte 0x000009D8
_08142458: .4byte 0x000009CC
_0814245C: .4byte sub_08142460

	thumb_func_start sub_08142460
sub_08142460: @ 0x08142460
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142488 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142482
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0814248C @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142490 @ =sub_0813DEF0
	str r0, [r1]
_08142482:
	pop {r0}
	bx r0
	.align 2, 0
_08142488: .4byte 0x000009D8
_0814248C: .4byte 0x000009CC
_08142490: .4byte sub_0813DEF0

	thumb_func_start sub_08142494
sub_08142494: @ 0x08142494
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _081424B8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802FBF4
	ldr r0, _081424BC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _081424C0 @ =0x000009CC
	adds r4, r4, r1
	ldr r0, _081424C4 @ =sub_081424C8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081424B8: .4byte 0x00000BEC
_081424BC: .4byte 0x000009D8
_081424C0: .4byte 0x000009CC
_081424C4: .4byte sub_081424C8

	thumb_func_start sub_081424C8
sub_081424C8: @ 0x081424C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142504 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _081424EE
	ldr r0, _08142508 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _081424FE
_081424EE:
	ldr r0, _0814250C @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _08142510 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142514 @ =sub_08142518
	str r0, [r1]
_081424FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142504: .4byte 0x00000BEC
_08142508: .4byte gPressedKeys
_0814250C: .4byte gUnk_030016A0
_08142510: .4byte 0x000009CC
_08142514: .4byte sub_08142518

	thumb_func_start sub_08142518
sub_08142518: @ 0x08142518
	ldr r2, _08142534 @ =gBldRegs
	movs r3, #0
	movs r1, #0xbf
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142538 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _0814253C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142540 @ =sub_08142544
	str r1, [r0]
	bx lr
	.align 2, 0
_08142534: .4byte gBldRegs
_08142538: .4byte 0x000009D8
_0814253C: .4byte 0x000009CC
_08142540: .4byte sub_08142544

	thumb_func_start sub_08142544
sub_08142544: @ 0x08142544
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08142580 @ =0x000009D8
	adds r6, r7, r0
	ldrh r4, [r6]
	adds r4, #1
	strh r4, [r6]
	ldr r5, _08142584 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _0814257A
	bl m4aMPlayAllStop
	movs r0, #0
	strh r0, [r6]
	ldr r0, _08142588 @ =0x000009CC
	adds r1, r7, r0
	ldr r0, _0814258C @ =sub_08142590
	str r0, [r1]
_0814257A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08142580: .4byte 0x000009D8
_08142584: .4byte gBldRegs
_08142588: .4byte 0x000009CC
_0814258C: .4byte sub_08142590

	thumb_func_start sub_08142590
sub_08142590: @ 0x08142590
	push {lr}
	adds r2, r0, #0
	ldr r0, _081425B4 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081425AE
	ldr r0, _081425B8 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081425BC @ =sub_081425C0
	str r0, [r1]
_081425AE:
	pop {r0}
	bx r0
	.align 2, 0
_081425B4: .4byte 0x000009D8
_081425B8: .4byte 0x000009CC
_081425BC: .4byte sub_081425C0

	thumb_func_start sub_081425C0
sub_081425C0: @ 0x081425C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081425E4 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081425D6
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081425D6:
	ldr r0, _081425E8 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081425EC @ =sub_081425F0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081425E4: .4byte 0x00000BEC
_081425E8: .4byte 0x000009CC
_081425EC: .4byte sub_081425F0

	thumb_func_start sub_081425F0
sub_081425F0: @ 0x081425F0
	ldr r1, _081425FC @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142600 @ =sub_08142604
	str r1, [r0]
	bx lr
	.align 2, 0
_081425FC: .4byte 0x000009CC
_08142600: .4byte sub_08142604

	thumb_func_start sub_08142604
sub_08142604: @ 0x08142604
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _0814261C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142620 @ =sub_08142624
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814261C: .4byte 0x000009CC
_08142620: .4byte sub_08142624

	thumb_func_start sub_08142624
sub_08142624: @ 0x08142624
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08142690 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08142650
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_08142650:
	mov r0, sp
	ldr r1, _08142694 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142698 @ =gBgPalette
	ldr r5, _0814269C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _081426A0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _081426A4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _081426A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08123FD4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142690: .4byte gBldRegs
_08142694: .4byte 0x00007FFF
_08142698: .4byte gBgPalette
_0814269C: .4byte 0x01000100
_081426A0: .4byte gObjPalette
_081426A4: .4byte gMainFlags
_081426A8: .4byte gCurTask

	thumb_func_start sub_081426AC
sub_081426AC: @ 0x081426AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0814270C @ =gBldRegs
	movs r2, #0
	movs r0, #0x97
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142710 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08142714 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142718 @ =sub_0813DF4C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_081426DE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081426DE
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814270C: .4byte gBldRegs
_08142710: .4byte 0x000009D8
_08142714: .4byte 0x000009CC
_08142718: .4byte sub_0813DF4C

	thumb_func_start sub_0814271C
sub_0814271C: @ 0x0814271C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813A9DC
	ldr r0, _08142734 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142738 @ =sub_0813ECBC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142734: .4byte 0x000009CC
_08142738: .4byte sub_0813ECBC

	thumb_func_start sub_0814273C
sub_0814273C: @ 0x0814273C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081427A8 @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081427AC @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081427B0 @ =sub_0813DFCC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _08142768
	ldr r0, _081427B4 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08142768:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_08142778:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08142778
	ldr r1, _081427B8 @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081427A8: .4byte 0x000009D8
_081427AC: .4byte 0x000009CC
_081427B0: .4byte sub_0813DFCC
_081427B4: .4byte 0x000002A7
_081427B8: .4byte 0x00000BDC

	thumb_func_start sub_081427BC
sub_081427BC: @ 0x081427BC
	push {lr}
	adds r2, r0, #0
	ldr r1, _081427DC @ =0x000009D8
	adds r0, r2, r1
	movs r1, #0
	strh r1, [r0]
	ldrb r0, [r2, #2]
	cmp r0, #7
	bne _081427E4
	ldr r3, _081427E0 @ =0x000009CC
	adds r0, r2, r3
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
	b _081427EC
	.align 2, 0
_081427DC: .4byte 0x000009D8
_081427E0: .4byte 0x000009CC
_081427E4:
	ldr r0, _081427FC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142800 @ =sub_08142808
	str r0, [r1]
_081427EC:
	ldr r1, _08142804 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_081427FC: .4byte 0x000009CC
_08142800: .4byte sub_08142808
_08142804: .4byte 0x00000BDC

	thumb_func_start sub_08142808
sub_08142808: @ 0x08142808
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814283C @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0814282C
	ldr r1, _08142840 @ =0x000009CC
	adds r0, r2, r1
	movs r3, #0x9d
	lsls r3, r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
_0814282C:
	ldr r1, _08142844 @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0814283C: .4byte 0x000009D8
_08142840: .4byte 0x000009CC
_08142844: .4byte 0x00000BDC

	thumb_func_start sub_08142848
sub_08142848: @ 0x08142848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814286C @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0814285E
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_0814285E:
	ldr r0, _08142870 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142874 @ =sub_08142878
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814286C: .4byte 0x00000BEC
_08142870: .4byte 0x000009CC
_08142874: .4byte sub_08142878

	thumb_func_start sub_08142878
sub_08142878: @ 0x08142878
	ldr r1, _08142884 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142888 @ =sub_0814288C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142884: .4byte 0x000009CC
_08142888: .4byte sub_0814288C

	thumb_func_start sub_0814288C
sub_0814288C: @ 0x0814288C
	ldr r1, _08142898 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814289C @ =sub_081428A0
	str r1, [r0]
	bx lr
	.align 2, 0
_08142898: .4byte 0x000009CC
_0814289C: .4byte sub_081428A0

	thumb_func_start sub_081428A0
sub_081428A0: @ 0x081428A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081428C6
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_081428C6:
	mov r0, sp
	ldr r1, _08142904 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142908 @ =gBgPalette
	ldr r5, _0814290C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142910 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142914 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142918 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_081434F8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142904: .4byte 0x00007FFF
_08142908: .4byte gBgPalette
_0814290C: .4byte 0x01000100
_08142910: .4byte gObjPalette
_08142914: .4byte gMainFlags
_08142918: .4byte gCurTask

	thumb_func_start sub_0814291C
sub_0814291C: @ 0x0814291C
	ldr r1, _08142930 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142934 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142938 @ =sub_0814293C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142930: .4byte 0x000009D8
_08142934: .4byte 0x000009CC
_08142938: .4byte sub_0814293C

	thumb_func_start sub_0814293C
sub_0814293C: @ 0x0814293C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142978 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0814296C
	ldr r0, _0814297C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142980 @ =sub_0813E2CC
	str r0, [r1]
_0814296C:
	adds r0, r5, #0
	bl sub_0813AE30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142978: .4byte 0x000009D8
_0814297C: .4byte 0x000009CC
_08142980: .4byte sub_0813E2CC

	thumb_func_start sub_08142984
sub_08142984: @ 0x08142984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r1, _081429DC @ =gUnk_0203ACB0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r1, _081429E0 @ =0x0000FFFF
	strh r1, [r0]
	adds r0, r4, #7
	adds r0, r0, r2
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #4
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
	ldr r0, _081429E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081429E8 @ =sub_081429EC
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081429DC: .4byte gUnk_0203ACB0
_081429E0: .4byte 0x0000FFFF
_081429E4: .4byte 0x000009CC
_081429E8: .4byte sub_081429EC

	thumb_func_start sub_081429EC
sub_081429EC: @ 0x081429EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A40 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _08142A0E
	ldr r0, _08142A44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142A20
_08142A0E:
	ldr r0, _08142A48 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142A4C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A50 @ =sub_08142A54
	str r0, [r1]
	movs r0, #1
	strb r0, [r4, #2]
_08142A20:
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A40: .4byte 0x000009D8
_08142A44: .4byte gPressedKeys
_08142A48: .4byte 0x0000021F
_08142A4C: .4byte 0x000009CC
_08142A50: .4byte sub_08142A54

	thumb_func_start sub_08142A54
sub_08142A54: @ 0x08142A54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A8C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142A90 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A94 @ =sub_0813EBDC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142A7E
	ldr r0, _08142A98 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142A7E:
	adds r0, r4, #0
	bl sub_0813AD9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A8C: .4byte 0x000009D8
_08142A90: .4byte 0x000009CC
_08142A94: .4byte sub_0813EBDC
_08142A98: .4byte 0x000002A7

	thumb_func_start sub_08142A9C
sub_08142A9C: @ 0x08142A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AA4C
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08142ABC
	ldr r0, _08142AB4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AB8 @ =sub_0813C414
	b _08142AC2
	.align 2, 0
_08142AB4: .4byte 0x000009CC
_08142AB8: .4byte sub_0813C414
_08142ABC:
	ldr r0, _08142ACC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AD0 @ =sub_0813CDE4
_08142AC2:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142ACC: .4byte 0x000009CC
_08142AD0: .4byte sub_0813CDE4

	thumb_func_start sub_08142AD4
sub_08142AD4: @ 0x08142AD4
	ldr r1, _08142AE0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142AE4 @ =sub_08142AE8
	str r1, [r0]
	bx lr
	.align 2, 0
_08142AE0: .4byte 0x000009CC
_08142AE4: .4byte sub_08142AE8

	thumb_func_start sub_08142AE8
sub_08142AE8: @ 0x08142AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08139F58
	adds r0, r4, #0
	bl sub_0813A110
	ldr r0, _08142B04 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142B08 @ =sub_0813EE48
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B04: .4byte 0x000009CC
_08142B08: .4byte sub_0813EE48

	thumb_func_start sub_08142B0C
sub_08142B0C: @ 0x08142B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142B38 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142B2A
	ldr r0, _08142B3C @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142B40 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142B44 @ =sub_08142B48
	str r0, [r1]
_08142B2A:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B38: .4byte gPressedKeys
_08142B3C: .4byte 0x0000021F
_08142B40: .4byte 0x000009CC
_08142B44: .4byte sub_08142B48

	thumb_func_start sub_08142B48
sub_08142B48: @ 0x08142B48
	push {lr}
	ldr r2, _08142B70 @ =gBldRegs
	movs r3, #0
	movs r1, #0x97
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142B74 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08142B78 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142B7C @ =sub_08142B80
	str r1, [r2]
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_08142B70: .4byte gBldRegs
_08142B74: .4byte 0x000009D8
_08142B78: .4byte 0x000009CC
_08142B7C: .4byte sub_08142B80

	thumb_func_start sub_08142B80
sub_08142B80: @ 0x08142B80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142BBC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142BC0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142BAE
	ldr r0, _08142BC4 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142BC8 @ =sub_081400BC
	str r0, [r1]
_08142BAE:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142BBC: .4byte 0x000009D8
_08142BC0: .4byte gBldRegs
_08142BC4: .4byte 0x000009CC
_08142BC8: .4byte sub_081400BC

	thumb_func_start sub_08142BCC
sub_08142BCC: @ 0x08142BCC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142BF0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142BE2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142BE2:
	ldr r0, _08142BF4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142BF8 @ =sub_08142BFC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142BF0: .4byte 0x00000BEC
_08142BF4: .4byte 0x000009CC
_08142BF8: .4byte sub_08142BFC

	thumb_func_start sub_08142BFC
sub_08142BFC: @ 0x08142BFC
	ldr r1, _08142C08 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C0C @ =sub_08142C10
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C08: .4byte 0x000009CC
_08142C0C: .4byte sub_08142C10

	thumb_func_start sub_08142C10
sub_08142C10: @ 0x08142C10
	ldr r1, _08142C1C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C20 @ =sub_08140380
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C1C: .4byte 0x000009CC
_08142C20: .4byte sub_08140380

	thumb_func_start sub_08142C24
sub_08142C24: @ 0x08142C24
	ldr r1, _08142C38 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142C3C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C40 @ =sub_08142C44
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C38: .4byte 0x000009D8
_08142C3C: .4byte 0x000009CC
_08142C40: .4byte sub_08142C44

	thumb_func_start sub_08142C44
sub_08142C44: @ 0x08142C44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142C78 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08142C92
	ldr r1, _08142C7C @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08142C88
	ldr r0, _08142C80 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142C84 @ =sub_081404AC
	str r0, [r1]
	b _08142C92
	.align 2, 0
_08142C78: .4byte 0x000009D8
_08142C7C: .4byte 0x00000BE8
_08142C80: .4byte 0x000009CC
_08142C84: .4byte sub_081404AC
_08142C88:
	ldr r1, _08142C98 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
_08142C92:
	pop {r0}
	bx r0
	.align 2, 0
_08142C98: .4byte gUnk_02038580

	thumb_func_start sub_08142C9C
sub_08142C9C: @ 0x08142C9C
	ldr r1, _08142CB0 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142CB4 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142CB8 @ =sub_0814069C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142CB0: .4byte 0x000009D8
_08142CB4: .4byte 0x000009CC
_08142CB8: .4byte sub_0814069C

	thumb_func_start sub_08142CBC
sub_08142CBC: @ 0x08142CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142CF4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142CF8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142CFC @ =sub_081407B4
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142CE8
	ldr r0, _08142D00 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142CE8:
	adds r0, r4, #0
	bl sub_0813AEC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142CF4: .4byte gBldRegs
_08142CF8: .4byte 0x000009CC
_08142CFC: .4byte sub_081407B4
_08142D00: .4byte 0x000002A7

	thumb_func_start sub_08142D04
sub_08142D04: @ 0x08142D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142D50 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142D54 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142D58 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142D5C @ =sub_0814086C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142D38
	ldr r0, _08142D60 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142D38:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08142D64 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142D50: .4byte gBldRegs
_08142D54: .4byte 0x000009D8
_08142D58: .4byte 0x000009CC
_08142D5C: .4byte sub_0814086C
_08142D60: .4byte 0x000002A7
_08142D64: .4byte 0x00000BDC

	thumb_func_start sub_08142D68
sub_08142D68: @ 0x08142D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142DC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08142DC4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142D8A
	bl VramFree
	movs r0, #0
	str r0, [r5]
_08142D8A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142D98
	bl VramFree
	movs r0, #0
	str r0, [r4, #0xc]
_08142D98:
	adds r0, r4, #0
	bl sub_0813ACA0
	ldr r1, _08142DC8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142DCC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142DD0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142DD4 @ =sub_08142DD8
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142DC0: .4byte gDispCnt
_08142DC4: .4byte 0x0000FCFF
_08142DC8: .4byte 0x00000BEC
_08142DCC: .4byte 0x000009D8
_08142DD0: .4byte 0x000009CC
_08142DD4: .4byte sub_08142DD8

	thumb_func_start sub_08142DD8
sub_08142DD8: @ 0x08142DD8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142E00 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142DFA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08142E04 @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142E08 @ =sub_081409AC
	str r0, [r1]
_08142DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08142E00: .4byte 0x000009D8
_08142E04: .4byte 0x000009CC
_08142E08: .4byte sub_081409AC

	thumb_func_start sub_08142E0C
sub_08142E0C: @ 0x08142E0C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08142E40 @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _08142E3A
	adds r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08142E3A
	ldr r0, _08142E44 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142E48 @ =sub_08142E4C
	str r0, [r1]
_08142E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08142E40: .4byte 0x00000BE8
_08142E44: .4byte 0x000009CC
_08142E48: .4byte sub_08142E4C

	thumb_func_start sub_08142E4C
sub_08142E4C: @ 0x08142E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142E78 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _08142E7C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142E80 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142E84 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142E88 @ =sub_08142E8C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142E78: .4byte gUnk_030016A0
_08142E7C: .4byte gBldRegs
_08142E80: .4byte 0x000009D8
_08142E84: .4byte 0x000009CC
_08142E88: .4byte sub_08142E8C

	thumb_func_start sub_08142E8C
sub_08142E8C: @ 0x08142E8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142EC4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142EC8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142EBE
	bl m4aMPlayAllStop
	ldr r0, _08142ECC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142ED0 @ =sub_08142ED4
	str r0, [r1]
_08142EBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142EC4: .4byte 0x000009D8
_08142EC8: .4byte gBldRegs
_08142ECC: .4byte 0x000009CC
_08142ED0: .4byte sub_08142ED4

	thumb_func_start sub_08142ED4
sub_08142ED4: @ 0x08142ED4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142EF8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142EF2
	ldr r0, _08142EFC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142F00 @ =sub_08142F04
	str r0, [r1]
_08142EF2:
	pop {r0}
	bx r0
	.align 2, 0
_08142EF8: .4byte 0x000009D8
_08142EFC: .4byte 0x000009CC
_08142F00: .4byte sub_08142F04

	thumb_func_start sub_08142F04
sub_08142F04: @ 0x08142F04
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142F28 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142F1A
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142F1A:
	ldr r0, _08142F2C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142F30 @ =sub_08142F34
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142F28: .4byte 0x00000BEC
_08142F2C: .4byte 0x000009CC
_08142F30: .4byte sub_08142F34

	thumb_func_start sub_08142F34
sub_08142F34: @ 0x08142F34
	ldr r1, _08142F40 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F44 @ =sub_08142F48
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F40: .4byte 0x000009CC
_08142F44: .4byte sub_08142F48

	thumb_func_start sub_08142F48
sub_08142F48: @ 0x08142F48
	ldr r1, _08142F54 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F58 @ =sub_08142F5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F54: .4byte 0x000009CC
_08142F58: .4byte sub_08142F5C

	thumb_func_start sub_08142F5C
sub_08142F5C: @ 0x08142F5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08142FB0 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _08142FB4 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142FB8 @ =gBgPalette
	ldr r5, _08142FBC @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142FC0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142FC4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142FC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08142FCC @ =0x00000BE8
	adds r6, r6, r0
	ldr r0, [r6]
	bl sub_08032BD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142FB0: .4byte gBldRegs
_08142FB4: .4byte 0x00007FFF
_08142FB8: .4byte gBgPalette
_08142FBC: .4byte 0x01000100
_08142FC0: .4byte gObjPalette
_08142FC4: .4byte gMainFlags
_08142FC8: .4byte gCurTask
_08142FCC: .4byte 0x00000BE8

	thumb_func_start sub_08142FD0
sub_08142FD0: @ 0x08142FD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08143000 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142FEE
	ldr r0, _08143004 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08143008 @ =sub_08143010
	str r0, [r1]
_08142FEE:
	ldr r1, _0814300C @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143000: .4byte 0x000009D8
_08143004: .4byte 0x000009CC
_08143008: .4byte sub_08143010
_0814300C: .4byte 0x00000BDC

	thumb_func_start sub_08143010
sub_08143010: @ 0x08143010
	push {lr}
	ldr r1, _08143030 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08143034 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08143038 @ =sub_08140B4C
	str r1, [r2]
	ldr r2, _0814303C @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143030: .4byte 0x000009D8
_08143034: .4byte 0x000009CC
_08143038: .4byte sub_08140B4C
_0814303C: .4byte 0x00000BDC

	thumb_func_start sub_08143040
sub_08143040: @ 0x08143040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081430AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081430B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081430B4 @ =sub_08140BE8
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814306C
	ldr r0, _081430B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814306C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814307C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814307C
	ldr r1, _081430BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081430AC: .4byte 0x000009D8
_081430B0: .4byte 0x000009CC
_081430B4: .4byte sub_08140BE8
_081430B8: .4byte 0x000002A7
_081430BC: .4byte 0x00000BDC

	thumb_func_start sub_081430C0
sub_081430C0: @ 0x081430C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814312C @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143130 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08143134 @ =sub_08140CD0
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081430EC
	ldr r0, _08143138 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081430EC:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081430FC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081430FC
	ldr r1, _0814313C @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814312C: .4byte 0x000009D8
_08143130: .4byte 0x000009CC
_08143134: .4byte sub_08140CD0
_08143138: .4byte 0x000002A7
_0814313C: .4byte 0x00000BDC

	thumb_func_start sub_08143140
sub_08143140: @ 0x08143140
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081431AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081431B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081431B4 @ =sub_08141A3C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814316C
	ldr r0, _081431B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814316C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814317C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814317C
	ldr r1, _081431BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081431AC: .4byte 0x000009D8
_081431B0: .4byte 0x000009CC
_081431B4: .4byte sub_08141A3C
_081431B8: .4byte 0x000002A7
_081431BC: .4byte 0x00000BDC

	thumb_func_start sub_081431C0
sub_081431C0: @ 0x081431C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AD2C
	ldr r0, _081431E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081431E8 @ =sub_0813CDE4
	str r0, [r1]
	ldr r1, _081431EC @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081431E4: .4byte 0x000009CC
_081431E8: .4byte sub_0813CDE4
_081431EC: .4byte 0x00000BDC

	thumb_func_start sub_081431F0
sub_081431F0: @ 0x081431F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08143250 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08143254 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08143258 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814325C @ =sub_08141B78
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08143222:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08143222
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143250: .4byte gBldRegs
_08143254: .4byte 0x000009D8
_08143258: .4byte 0x000009CC
_0814325C: .4byte sub_08141B78

	thumb_func_start sub_08143260
sub_08143260: @ 0x08143260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08143284 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08143276
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08143276:
	ldr r0, _08143288 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814328C @ =sub_08143290
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143284: .4byte 0x00000BEC
_08143288: .4byte 0x000009CC
_0814328C: .4byte sub_08143290

	thumb_func_start sub_08143290
sub_08143290: @ 0x08143290
	ldr r1, _0814329C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432A0 @ =sub_081432A4
	str r1, [r0]
	bx lr
	.align 2, 0
_0814329C: .4byte 0x000009CC
_081432A0: .4byte sub_081432A4

	thumb_func_start sub_081432A4
sub_081432A4: @ 0x081432A4
	ldr r1, _081432B0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432B4 @ =sub_08141BF8
	str r1, [r0]
	bx lr
	.align 2, 0
_081432B0: .4byte 0x000009CC
_081432B4: .4byte sub_08141BF8

	thumb_func_start sub_081432B8
sub_081432B8: @ 0x081432B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	movs r5, #0
	strb r0, [r4]
	ldr r1, _081432FC @ =0x000009D8
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08143300 @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _08143304 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	adds r0, r4, #0
	bl sub_08141CDC
	ldr r1, _08143308 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0814330C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143310 @ =sub_08143314
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081432FC: .4byte 0x000009D8
_08143300: .4byte gUnk_030016A0
_08143304: .4byte gBldRegs
_08143308: .4byte 0x00000BDC
_0814330C: .4byte 0x000009CC
_08143310: .4byte sub_08143314

	thumb_func_start sub_08143314
sub_08143314: @ 0x08143314
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0814335C @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08143360 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _08143342
	ldr r0, _08143364 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08143368 @ =sub_08143370
	str r0, [r1]
_08143342:
	adds r0, r6, #0
	bl sub_08141CDC
	ldr r1, _0814336C @ =0x00000BDC
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814335C: .4byte 0x000009D8
_08143360: .4byte gBldRegs
_08143364: .4byte 0x000009CC
_08143368: .4byte sub_08143370
_0814336C: .4byte 0x00000BDC

	thumb_func_start sub_08143370
sub_08143370: @ 0x08143370
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08143390 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143394 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143398 @ =sub_0814339C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143390: .4byte 0x000009D8
_08143394: .4byte 0x000009CC
_08143398: .4byte sub_0814339C

	thumb_func_start sub_0814339C
sub_0814339C: @ 0x0814339C
	push {lr}
	adds r2, r0, #0
	ldr r0, _081433C0 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081433BA
	ldr r0, _081433C4 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081433C8 @ =sub_081433CC
	str r0, [r1]
_081433BA:
	pop {r0}
	bx r0
	.align 2, 0
_081433C0: .4byte 0x000009D8
_081433C4: .4byte 0x000009CC
_081433C8: .4byte sub_081433CC

	thumb_func_start sub_081433CC
sub_081433CC: @ 0x081433CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081433F0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081433E2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081433E2:
	ldr r0, _081433F4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081433F8 @ =sub_081433FC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081433F0: .4byte 0x00000BEC
_081433F4: .4byte 0x000009CC
_081433F8: .4byte sub_081433FC

	thumb_func_start sub_081433FC
sub_081433FC: @ 0x081433FC
	ldr r1, _08143408 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814340C @ =sub_08143410
	str r1, [r0]
	bx lr
	.align 2, 0
_08143408: .4byte 0x000009CC
_0814340C: .4byte sub_08143410

	thumb_func_start sub_08143410
sub_08143410: @ 0x08143410
	ldr r1, _0814341C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08143420 @ =sub_08143424
	str r1, [r0]
	bx lr
	.align 2, 0
_0814341C: .4byte 0x000009CC
_08143420: .4byte sub_08143424

	thumb_func_start sub_08143424
sub_08143424: @ 0x08143424
	push {lr}
	ldr r0, _08143438 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08143438: .4byte gCurTask

	thumb_func_start sub_0814343C
sub_0814343C: @ 0x0814343C
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143460 @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143460: .4byte 0x01002000

	thumb_func_start sub_08143464
sub_08143464: @ 0x08143464
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08143490 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143494 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143490: .4byte 0x000001FF
_08143494: .4byte 0x01000400

	thumb_func_start sub_08143498
sub_08143498: @ 0x08143498
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081434A6
	movs r0, #1
	b _081434A8
_081434A6:
	movs r0, #0
_081434A8:
	pop {r1}
	bx r1

	thumb_func_start sub_081434AC
sub_081434AC: @ 0x081434AC
	push {r4, r5, r6, lr}
	ldr r1, _081434F0 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r4, [r0]
	movs r2, #3
	adds r5, r1, #0
	ldr r6, _081434F4 @ =gMainFlags
	adds r3, r5, #0
_081434BE:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _081434BE
	adds r0, r5, #0
	adds r0, #0x6a
	strh r4, [r0]
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081434F0: .4byte gObjPalette
_081434F4: .4byte gMainFlags

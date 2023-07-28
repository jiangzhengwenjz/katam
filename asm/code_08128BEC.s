	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08132888
sub_08132888: @ 0x08132888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _081328E0 @ =0x0000052A
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081328A6
	b _08132AA6
_081328A6:
	ldr r0, _081328E4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xec
	muls r0, r2, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _081328F8
	ldr r6, _081328E8 @ =0x0000057D
	adds r0, r7, r6
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _081328EC
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r2, r1
	b _081328FC
	.align 2, 0
_081328E0: .4byte 0x0000052A
_081328E4: .4byte gUnk_0203AD3C
_081328E8: .4byte 0x0000057D
_081328EC:
	ldr r2, _081328F4 @ =0x0000057A
	adds r0, r7, r2
	b _081328FC
	.align 2, 0
_081328F4: .4byte 0x0000057A
_081328F8:
	ldr r3, _08132A38 @ =0x0000057A
	adds r0, r7, r3
_081328FC:
	mov r6, sp
	ldrh r4, [r0]
	ldr r0, _08132A3C @ =0x0000176F
	cmp r4, r0
	bls _08132908
	adds r4, r0, #0
_08132908:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r6, #3]
	ldrb r0, [r6, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	strb r0, [r6, #2]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r6, #1]
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r6]
	movs r6, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, _08132A40 @ =gLanguage
	mov sl, r1
	movs r3, #0x2c
	movs r2, #0xff
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #8]
_0813296A:
	movs r0, #3
	subs r0, r0, r6
	mov r1, sp
	adds r2, r1, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	mov r1, sl
	ldrh r1, [r1]
	mov r8, r1
	mov r1, r8
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, _08132A44 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	mov r2, sl
	ldrh r1, [r2]
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, _08132A44 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, sp
	strb r0, [r2, #4]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _08132A48 @ =gUnk_083729D4
	mov sb, r1
	lsls r0, r6, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	ldr r1, [sp, #8]
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r7, r2
	movs r1, #0x40
	mov r8, r1
	str r1, [r0]
	adds r0, r4, #0
	str r3, [sp, #0xc]
	bl sub_081288DC
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r6, #3
	bls _0813296A
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r3, _08132A44 @ =gUnk_0837283C
	ldr r4, _08132A40 @ =gLanguage
	ldrh r1, [r4]
	movs r2, #0x2c
	muls r1, r2, r1
	adds r1, r1, r3
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0xc]
	ldrh r1, [r4]
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r3, sp
	ldrb r3, [r3, #4]
	orrs r1, r3
	strb r1, [r0, #0x1b]
	movs r6, #0xff
	lsls r6, r6, #2
	adds r2, r7, r6
	mov r3, sb
	movs r6, #8
	ldrsh r1, [r3, r6]
	lsls r1, r1, #2
	str r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r7, r2
	mov r3, r8
	str r3, [r1]
	bl sub_081288DC
	ldrh r0, [r4]
	cmp r0, #5
	bhi _08132A7A
	lsls r0, r0, #2
	ldr r1, _08132A4C @ =_08132A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132A38: .4byte 0x0000057A
_08132A3C: .4byte 0x0000176F
_08132A40: .4byte gLanguage
_08132A44: .4byte gUnk_0837283C
_08132A48: .4byte gUnk_083729D4
_08132A4C: .4byte _08132A50
_08132A50: @ jump table
	.4byte _08132A68 @ case 0
	.4byte _08132A68 @ case 1
	.4byte _08132A68 @ case 2
	.4byte _08132A68 @ case 3
	.4byte _08132A68 @ case 4
	.4byte _08132A68 @ case 5
_08132A68:
	ldr r0, _08132AB8 @ =0xFFFF0000
	ands r5, r0
	ldr r0, _08132ABC @ =0x00000349
	orrs r5, r0
	ldr r0, _08132AC0 @ =0xFF00FFFF
	ands r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r5, r0
_08132A7A:
	movs r6, #0xf5
	lsls r6, r6, #2
	adds r0, r7, r6
	strh r5, [r0, #0xc]
	lsrs r1, r5, #0x10
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, _08132AC4 @ =gUnk_083729D4
	movs r3, #0xa
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	str r1, [r2]
	adds r6, #0x2c
	adds r2, r7, r6
	movs r1, #0x40
	str r1, [r2]
	bl sub_081288DC
_08132AA6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132AB8: .4byte 0xFFFF0000
_08132ABC: .4byte 0x00000349
_08132AC0: .4byte 0xFF00FFFF
_08132AC4: .4byte gUnk_083729D4

	thumb_func_start sub_08132AC8
sub_08132AC8: @ 0x08132AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08132B70 @ =gUnk_03000530
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r5, _08132B74 @ =0x0600E000
	ldr r2, _08132B78 @ =0x05000200
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r4, r0
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r1, [r0]
	lsrs r1, r1, #3
	lsls r2, r1, #1
	ldr r0, [r3]
	adds r7, r0, r2
	ldr r2, _08132B7C @ =0x00000574
	adds r0, r4, r2
	ldr r6, [r0]
	mov r8, r5
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, r5
	movs r0, #0
	mov sb, r0
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r2, _08132B80 @ =0x001FFFFF
	mov sl, r2
_08132B1C:
	ldrb r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	movs r2, #0x40
	subs r2, r2, r0
	asrs r2, r2, #1
	mov r0, sl
	ands r2, r0
	adds r0, r7, #0
	mov r1, r8
	bl CpuSet
	ldrb r0, [r4]
	lsrs r2, r0, #3
	cmp r2, #0
	beq _08132B48
	mov r1, sl
	ands r2, r1
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuSet
_08132B48:
	movs r2, #0x40
	add r8, r2
	adds r5, #0x40
	adds r7, #0x40
	adds r6, #0x40
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x1f
	bls _08132B1C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132B70: .4byte gUnk_03000530
_08132B74: .4byte 0x0600E000
_08132B78: .4byte 0x05000200
_08132B7C: .4byte 0x00000574
_08132B80: .4byte 0x001FFFFF

	thumb_func_start sub_08132B84
sub_08132B84: @ 0x08132B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08132BAC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08132BB0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08132BB8
	.align 2, 0
_08132BAC: .4byte gCurTask
_08132BB0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08132BB8:
	adds r7, r0, #0
	ldr r0, [r2]
	ldr r1, _08132BDC @ =sub_08132ED8
	str r1, [r0, #8]
	ldr r0, [r7]
	mov sb, r0
	movs r1, #0x20
	add r1, sb
	mov sl, r1
	ldr r0, _08132BE0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132C0C
	lsls r0, r0, #2
	ldr r1, _08132BE4 @ =_08132BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132BDC: .4byte sub_08132ED8
_08132BE0: .4byte gLanguage
_08132BE4: .4byte _08132BE8
_08132BE8: @ jump table
	.4byte _08132C00 @ case 0
	.4byte _08132C00 @ case 1
	.4byte _08132C00 @ case 2
	.4byte _08132C00 @ case 3
	.4byte _08132C00 @ case 4
	.4byte _08132C00 @ case 5
_08132C00:
	ldr r0, _08132C74 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08132C78 @ =0x00000349
	orrs r6, r0
	ldr r0, _08132C7C @ =0xFF00FFFF
	ands r6, r0
_08132C0C:
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r7, #4
	ldr r2, _08132C80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08132C84 @ =0x06010000
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x18]
	strh r6, [r7, #0x10]
	lsrs r0, r6, #0x10
	strb r0, [r7, #0x1e]
	strh r4, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x23
	movs r0, #4
	strb r0, [r2]
	movs r0, #0x3b
	strh r0, [r7, #0x14]
	strh r1, [r7, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0xc]
	movs r0, #0xec
	str r0, [r7, #0x2c]
	movs r0, #0x40
	str r0, [r7, #0x30]
	strh r4, [r7, #0x34]
	strh r4, [r7, #0x36]
	strh r1, [r7, #0x38]
	strh r4, [r7, #0x3a]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	ldr r0, _08132C88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132CBA
	lsls r0, r0, #2
	ldr r1, _08132C8C @ =_08132C90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132C74: .4byte 0xFFFF0000
_08132C78: .4byte 0x00000349
_08132C7C: .4byte 0xFF00FFFF
_08132C80: .4byte 0x05000011
_08132C84: .4byte 0x06010000
_08132C88: .4byte gLanguage
_08132C8C: .4byte _08132C90
_08132C90: @ jump table
	.4byte _08132CA8 @ case 0
	.4byte _08132CA8 @ case 1
	.4byte _08132CA8 @ case 2
	.4byte _08132CA8 @ case 3
	.4byte _08132CA8 @ case 4
	.4byte _08132CA8 @ case 5
_08132CA8:
	ldr r0, _08132DCC @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08132DD0 @ =0x00000349
	orrs r6, r0
	ldr r0, _08132DD4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
_08132CBA:
	movs r4, #0
	str r4, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x48
	ldr r2, _08132DD8 @ =0x05000011
	bl CpuSet
	ldr r0, _08132DDC @ =0x06010000
	str r0, [r7, #0x48]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x54
	strh r6, [r0]
	lsrs r0, r6, #0x10
	adds r1, #6
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r4, [r0]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #4
	movs r0, #4
	strb r0, [r1]
	subs r1, #0xf
	movs r0, #0xb5
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r2, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	movs r0, #0xb5
	lsls r0, r0, #2
	str r0, [r7, #0x70]
	movs r0, #0x40
	str r0, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	mov r8, r4
_08132D3A:
	mov r3, r8
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	adds r0, r5, #0
	adds r0, #0xd0
	adds r0, r7, r0
	movs r4, #0xf4
	lsls r4, r4, #2
	add r4, sb
	add r4, r8
	ldrb r1, [r4]
	movs r2, #0xec
	muls r2, r1, r2
	add r2, sl
	adds r3, r2, #0
	adds r3, #0xe5
	ldrb r3, [r3]
	adds r2, #0xe6
	ldrh r2, [r2]
	str r2, [sp]
	mov r2, r8
	bl sub_0812F404
	ldr r1, _08132DE0 @ =0x00000579
	add r1, sb
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08132D7C
	b _08132EA8
_08132D7C:
	adds r2, r7, r5
	movs r4, #0x94
	lsls r4, r4, #1
	adds r3, r2, r4
	ldrh r1, [r3]
	ldr r0, _08132DE4 @ =0x0000F83F
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08132DE8 @ =0x00000177
	adds r0, r2, r1
	movs r1, #5
	strb r1, [r0]
	ldr r3, _08132DEC @ =0x000001BB
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _08132DF0 @ =0x000001FF
	adds r0, r2, r4
	strb r1, [r0]
	adds r3, #0x88
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #0x88
	adds r2, r2, r4
	strb r1, [r2]
	movs r3, #0x98
	mov r0, r8
	cmp r0, #1
	beq _08132DF4
	cmp r0, #1
	ble _08132E04
	cmp r0, #2
	beq _08132DFA
	cmp r0, #3
	beq _08132E00
	b _08132E04
	.align 2, 0
_08132DCC: .4byte 0xFFFF0000
_08132DD0: .4byte 0x00000349
_08132DD4: .4byte 0xFF00FFFF
_08132DD8: .4byte 0x05000011
_08132DDC: .4byte 0x06010000
_08132DE0: .4byte 0x00000579
_08132DE4: .4byte 0x0000F83F
_08132DE8: .4byte 0x00000177
_08132DEC: .4byte 0x000001BB
_08132DF0: .4byte 0x000001FF
_08132DF4:
	movs r3, #0x8c
	lsls r3, r3, #1
	b _08132E04
_08132DFA:
	movs r3, #0xcc
	lsls r3, r3, #1
	b _08132E04
_08132E00:
	movs r3, #0x86
	lsls r3, r3, #2
_08132E04:
	ldr r0, _08132E18 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132E4C
	lsls r0, r0, #2
	ldr r1, _08132E1C @ =_08132E20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132E18: .4byte gLanguage
_08132E1C: .4byte _08132E20
_08132E20: @ jump table
	.4byte _08132E38 @ case 0
	.4byte _08132E38 @ case 1
	.4byte _08132E38 @ case 2
	.4byte _08132E38 @ case 3
	.4byte _08132E38 @ case 4
	.4byte _08132E38 @ case 5
_08132E38:
	ldr r0, _08132EC8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r6, r0
	ldr r0, _08132ECC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	orrs r6, r0
_08132E4C:
	movs r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r2, _08132ED0 @ =0x05000011
	adds r1, r4, #0
	str r3, [sp, #0x10]
	bl CpuSet
	ldr r0, _08132ED4 @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	lsrs r0, r6, #0x10
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0x76
	strh r0, [r4, #0x10]
	ldr r3, [sp, #0x10]
	lsrs r0, r3, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xec
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	str r3, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
_08132EA8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08132EB8
	b _08132D3A
_08132EB8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132EC8: .4byte 0xFFFF0000
_08132ECC: .4byte 0xFF00FFFF
_08132ED0: .4byte 0x05000011
_08132ED4: .4byte 0x06010000

	thumb_func_start sub_08132ED8
sub_08132ED8: @ 0x08132ED8
	push {r4, lr}
	ldr r0, _08132EF4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08132EF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08132F00
	.align 2, 0
_08132EF4: .4byte gCurTask
_08132EF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08132F00:
	adds r0, r4, #4
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x48
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0xd0
	bl sub_081288DC
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133024 @ =0x00000444
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133028 @ =0x000004CC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _0813302C @ =0x00000554
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133030 @ =0x000005DC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133034 @ =0x00000664
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133038 @ =0x000006EC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _0813303C @ =0x00000774
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xf7
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133040 @ =0x000007FC
	adds r0, r4, r1
	bl sub_081288DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08133024: .4byte 0x00000444
_08133028: .4byte 0x000004CC
_0813302C: .4byte 0x00000554
_08133030: .4byte 0x000005DC
_08133034: .4byte 0x00000664
_08133038: .4byte 0x000006EC
_0813303C: .4byte 0x00000774
_08133040: .4byte 0x000007FC

	thumb_func_start sub_08133044
sub_08133044: @ 0x08133044
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _081330A8 @ =0x0000176F
	cmp r4, r0
	bls _08133054
	adds r4, r0, #0
_08133054:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081330A8: .4byte 0x0000176F

	thumb_func_start sub_081330AC
sub_081330AC: @ 0x081330AC
	push {r4, lr}
	ldr r2, _081330CC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _081330D0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081330D8
	.align 2, 0
_081330CC: .4byte gCurTask
_081330D0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081330D8:
	ldr r1, _08133110 @ =0x0000057E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _0813310A
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _08133114 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08133104
	bl sub_08031CC8
	bl sub_081589E8
_08133104:
	movs r0, #2
	bl sub_08138D64
_0813310A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08133110: .4byte 0x0000057E
_08133114: .4byte gUnk_0203AD10

	thumb_func_start sub_08133118
sub_08133118: @ 0x08133118
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133132
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0813313A
_08133132:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0813313A:
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	movs r4, #0
	str r4, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl TaskDestroy
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl TaskDestroy
	str r4, [r5, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08133164
sub_08133164: @ 0x08133164
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc0
	adds r0, #0xa8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r0, r3, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0813318C
sub_0813318C: @ 0x0813318C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa8
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _081331C8 @ =0x000002FF
	cmp r1, r0
	bgt _081331A2
	adds r0, r3, #4
	strh r0, [r2]
_081331A2:
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _081331B4
	subs r0, r3, #3
	strh r0, [r2]
_081331B4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _081331C2
	strh r1, [r2]
_081331C2:
	pop {r0}
	bx r0
	.align 2, 0
_081331C8: .4byte 0x000002FF

	thumb_func_start sub_081331CC
sub_081331CC: @ 0x081331CC
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081331EC
	adds r1, r2, #0
	adds r1, #0xe6
	ldrh r0, [r1]
	cmp r0, #0
	bne _081331EC
	strh r3, [r1]
_081331EC:
	pop {r0}
	bx r0

	thumb_func_start sub_081331F0
sub_081331F0: @ 0x081331F0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	adds r4, #0x94
	ldrh r0, [r4]
	ldr r5, _08133244 @ =0x0000FFFB
	ands r5, r0
	strh r5, [r4]
	movs r1, #0
	ldr r2, [r6]
	cmp r2, #0
	bge _0813320C
	rsbs r2, r2, #0
_0813320C:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r3, [r0]
	cmp r2, r3
	bgt _08133218
	movs r1, #1
_08133218:
	movs r2, #0
	ldr r0, [r6]
	cmp r0, #0
	bge _08133222
	rsbs r0, r0, #0
_08133222:
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r0, r6
	cmp r3, r0
	bgt _0813322E
	movs r2, #1
_0813322E:
	ands r1, r2
	cmp r1, #0
	beq _0813323C
	movs r1, #4
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4]
_0813323C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08133244: .4byte 0x0000FFFB

	thumb_func_start sub_08133248
sub_08133248: @ 0x08133248
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0xc4
	adds r0, r3, #0
	adds r0, #0xd0
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08133278
	adds r0, r3, #0
	bl sub_081288DC
_08133278:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08133280
sub_08133280: @ 0x08133280
	push {r4, r5, lr}
	mov ip, r0
	ldr r4, _081332C8 @ =gUnk_0837283C
	mov r5, ip
	adds r5, #0xe5
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #2
	ldr r3, _081332CC @ =gLanguage
	ldrh r1, [r3]
	movs r2, #0x2c
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #2
	ldrh r1, [r3]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081332C8: .4byte gUnk_0837283C
_081332CC: .4byte gLanguage

	thumb_func_start sub_081332D0
sub_081332D0: @ 0x081332D0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0xc4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xd4
	ldr r2, [r2]
	bl sub_081332FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_081332FC
sub_081332FC: @ 0x081332FC
	push {r4, lr}
	ldr r3, _08133334 @ =0x000003FF
	adds r4, r3, #0
	adds r3, r0, #0
	ands r3, r4
	ands r1, r4
	ldr r4, _08133338 @ =gUnk_0837EA88
	asrs r0, r0, #0xa
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsrs r1, r1, #5
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x16
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	asrs r3, r3, #0x15
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0813333C
	movs r0, #0xf
	ands r0, r1
	b _0813333E
	.align 2, 0
_08133334: .4byte 0x000003FF
_08133338: .4byte gUnk_0837EA88
_0813333C:
	lsrs r0, r1, #4
_0813333E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08133344
sub_08133344: @ 0x08133344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08133378 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813337C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133384
	.align 2, 0
_08133378: .4byte sub_08128980
_0813337C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133384:
	adds r5, r0, #0
	ldr r0, _08133398 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081333CC
	lsls r0, r0, #2
	ldr r1, _0813339C @ =_081333A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133398: .4byte gLanguage
_0813339C: .4byte _081333A0
_081333A0: @ jump table
	.4byte _081333B8 @ case 0
	.4byte _081333B8 @ case 1
	.4byte _081333B8 @ case 2
	.4byte _081333B8 @ case 3
	.4byte _081333B8 @ case 4
	.4byte _081333B8 @ case 5
_081333B8:
	ldr r0, _0813345C @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133460 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r4, r0
_081333CC:
	mov r0, r8
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #0x20
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0813346C
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133464 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133468 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _081334C2
	.align 2, 0
_0813345C: .4byte 0xFFFF0000
_08133460: .4byte 0xFF00FFFF
_08133464: .4byte 0x05000011
_08133468: .4byte 0x06010000
_0813346C:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081334D4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081334D8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_081334C2:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081334D4: .4byte 0x05000011
_081334D8: .4byte 0x06010000

	thumb_func_start sub_081334DC
sub_081334DC: @ 0x081334DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08133514 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133518
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133522
	.align 2, 0
_08133514: .4byte sub_08128980
_08133518:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133522:
	adds r5, r0, #0
	ldr r0, _08133538 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813356C
	lsls r0, r0, #2
	ldr r1, _0813353C @ =_08133540
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133538: .4byte gLanguage
_0813353C: .4byte _08133540
_08133540: @ jump table
	.4byte _08133558 @ case 0
	.4byte _08133558 @ case 1
	.4byte _08133558 @ case 2
	.4byte _08133558 @ case 3
	.4byte _08133558 @ case 4
	.4byte _08133558 @ case 5
_08133558:
	ldr r0, _08133600 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133604 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_0813356C:
	mov r1, sb
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #8
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133610
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133608 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813360C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133668
	.align 2, 0
_08133600: .4byte 0xFFFF0000
_08133604: .4byte 0xFF00FFFF
_08133608: .4byte 0x05000011
_0813360C: .4byte 0x06010000
_08133610:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133680 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133684 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133668:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08133680: .4byte 0x05000011
_08133684: .4byte 0x06010000

	thumb_func_start sub_08133688
sub_08133688: @ 0x08133688
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081336A6
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081336AE
_081336A6:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081336AE:
	adds r5, r0, #0
	cmp r4, #0
	beq _08133790
	ldr r0, _081336C8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bls _081336BE
	b _081337D8
_081336BE:
	lsls r0, r0, #2
	ldr r1, _081336CC @ =_081336D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081336C8: .4byte gLanguage
_081336CC: .4byte _081336D0
_081336D0: @ jump table
	.4byte _081336E8 @ case 0
	.4byte _08133704 @ case 1
	.4byte _08133720 @ case 2
	.4byte _0813373C @ case 3
	.4byte _08133758 @ case 4
	.4byte _08133774 @ case 5
_081336E8:
	ldr r0, _081336FC @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133700 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_081336FC: .4byte 0xFFFF0000
_08133700: .4byte 0xFF00FFFF
_08133704:
	ldr r0, _08133718 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _0813371C @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133718: .4byte 0xFFFF0000
_0813371C: .4byte 0xFF00FFFF
_08133720:
	ldr r0, _08133734 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133738 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133734: .4byte 0xFFFF0000
_08133738: .4byte 0xFF00FFFF
_0813373C:
	ldr r0, _08133750 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133754 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133750: .4byte 0xFFFF0000
_08133754: .4byte 0xFF00FFFF
_08133758:
	ldr r0, _0813376C @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133770 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_0813376C: .4byte 0xFFFF0000
_08133770: .4byte 0xFF00FFFF
_08133774:
	ldr r0, _08133788 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _0813378C @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133788: .4byte 0xFFFF0000
_0813378C: .4byte 0xFF00FFFF
_08133790:
	ldr r0, _081337A4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081337D8
	lsls r0, r0, #2
	ldr r1, _081337A8 @ =_081337AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081337A4: .4byte gLanguage
_081337A8: .4byte _081337AC
_081337AC: @ jump table
	.4byte _081337C4 @ case 0
	.4byte _081337C4 @ case 1
	.4byte _081337C4 @ case 2
	.4byte _081337C4 @ case 3
	.4byte _081337C4 @ case 4
	.4byte _081337C4 @ case 5
_081337C4:
	ldr r0, _081337FC @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133800 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_081337D6:
	orrs r2, r0
_081337D8:
	ldrh r1, [r5, #0x10]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r2, #8
	cmp r1, r0
	bne _081337EC
	ldrb r1, [r5, #0x1e]
	lsrs r0, r3, #0x18
	cmp r1, r0
	beq _081337F6
_081337EC:
	strh r2, [r5, #0x10]
	lsrs r0, r3, #0x18
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
_081337F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081337FC: .4byte 0xFFFF0000
_08133800: .4byte 0xFF00FFFF

	thumb_func_start sub_08133804
sub_08133804: @ 0x08133804
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08133838 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813383C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133844
	.align 2, 0
_08133838: .4byte sub_08128980
_0813383C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133844:
	adds r5, r0, #0
	ldr r0, _08133858 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813388C
	lsls r0, r0, #2
	ldr r1, _0813385C @ =_08133860
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133858: .4byte gLanguage
_0813385C: .4byte _08133860
_08133860: @ jump table
	.4byte _08133878 @ case 0
	.4byte _08133878 @ case 1
	.4byte _08133878 @ case 2
	.4byte _08133878 @ case 3
	.4byte _08133878 @ case 4
	.4byte _08133878 @ case 5
_08133878:
	ldr r0, _0813391C @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133920 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	orrs r4, r0
_0813388C:
	mov r0, r8
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0813392C
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133924 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133928 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133982
	.align 2, 0
_0813391C: .4byte 0xFFFF0000
_08133920: .4byte 0xFF00FFFF
_08133924: .4byte 0x05000011
_08133928: .4byte 0x06010000
_0813392C:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133994 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133998 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133982:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133994: .4byte 0x05000011
_08133998: .4byte 0x06010000

	thumb_func_start sub_0813399C
sub_0813399C: @ 0x0813399C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _081339D0 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081339D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081339DC
	.align 2, 0
_081339D0: .4byte sub_08128980
_081339D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081339DC:
	adds r5, r0, #0
	ldr r0, _081339F0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133A24
	lsls r0, r0, #2
	ldr r1, _081339F4 @ =_081339F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081339F0: .4byte gLanguage
_081339F4: .4byte _081339F8
_081339F8: @ jump table
	.4byte _08133A10 @ case 0
	.4byte _08133A10 @ case 1
	.4byte _08133A10 @ case 2
	.4byte _08133A10 @ case 3
	.4byte _08133A10 @ case 4
	.4byte _08133A10 @ case 5
_08133A10:
	ldr r0, _08133AE0 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133AE4 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08133A24:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0xf
	strh r0, [r1]
	adds r6, r5, #0
	adds r6, #0x52
	movs r0, #1
	strh r0, [r6]
	mov r1, r8
	ldr r0, [r1, #0x28]
	subs r0, #0x20
	str r0, [r5, #0x48]
	ldr r3, _08133AE8 @ =gUnk_0837EEDC
	ldr r2, _08133AEC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08133AF0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08133AF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r1, r1, #2
	mov r2, r8
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133B00
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133AF8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133AFC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133B58
	.align 2, 0
_08133AE0: .4byte 0xFFFF0000
_08133AE4: .4byte 0xFF00FFFF
_08133AE8: .4byte gUnk_0837EEDC
_08133AEC: .4byte gRngVal
_08133AF0: .4byte 0x00196225
_08133AF4: .4byte 0x3C6EF35F
_08133AF8: .4byte 0x05000011
_08133AFC: .4byte 0x06010000
_08133B00:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133B6C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133B70 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133B58:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133B6C: .4byte 0x05000011
_08133B70: .4byte 0x06010000

	thumb_func_start sub_08133B74
sub_08133B74: @ 0x08133B74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	ldr r0, _08133BB4 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133BB8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133BC0
	.align 2, 0
_08133BB4: .4byte sub_08128980
_08133BB8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133BC0:
	adds r5, r0, #0
	ldr r0, _08133BD4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133C08
	lsls r0, r0, #2
	ldr r1, _08133BD8 @ =_08133BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133BD4: .4byte gLanguage
_08133BD8: .4byte _08133BDC
_08133BDC: @ jump table
	.4byte _08133BF4 @ case 0
	.4byte _08133BF4 @ case 1
	.4byte _08133BF4 @ case 2
	.4byte _08133BF4 @ case 3
	.4byte _08133BF4 @ case 4
	.4byte _08133BF4 @ case 5
_08133BF4:
	ldr r0, _08133CAC @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133CB0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08133C08:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x19
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #1
	strh r0, [r2]
	lsls r1, r6, #2
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	mov r0, sb
	lsls r1, r0, #2
	ldr r0, [r3, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133CBC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133CB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133CB8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133D14
	.align 2, 0
_08133CAC: .4byte 0xFFFF0000
_08133CB0: .4byte 0xFF00FFFF
_08133CB4: .4byte 0x05000011
_08133CB8: .4byte 0x06010000
_08133CBC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133D38 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133D3C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133D14:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #4
	strh r0, [r5, #0x34]
	ldr r0, _08133D40 @ =gUnk_0837EEDC
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133D38: .4byte 0x05000011
_08133D3C: .4byte 0x06010000
_08133D40: .4byte gUnk_0837EEDC

	thumb_func_start sub_08133D44
sub_08133D44: @ 0x08133D44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08133D7C @ =sub_08134884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133D80
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133D8A
	.align 2, 0
_08133D7C: .4byte sub_08134884
_08133D80:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133D8A:
	adds r4, r0, #0
	ldr r0, _08133DA0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133DCE
	lsls r0, r0, #2
	ldr r1, _08133DA4 @ =_08133DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133DA0: .4byte gLanguage
_08133DA4: .4byte _08133DA8
_08133DA8: @ jump table
	.4byte _08133DC0 @ case 0
	.4byte _08133DC0 @ case 1
	.4byte _08133DC0 @ case 2
	.4byte _08133DC0 @ case 3
	.4byte _08133DC0 @ case 4
	.4byte _08133DC0 @ case 5
_08133DC0:
	ldr r0, _08133E64 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08133E68 @ =0xFF00FFFF
	ands r5, r0
_08133DCE:
	mov r1, sb
	str r1, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	movs r1, #0x30
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	movs r1, #0x30
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133E74
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08133E6C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133E70 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08133ECC
	.align 2, 0
_08133E64: .4byte 0xFFFF0000
_08133E68: .4byte 0xFF00FFFF
_08133E6C: .4byte 0x05000011
_08133E70: .4byte 0x06010000
_08133E74:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08133EE4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133EE8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08133ECC:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08133EE4: .4byte 0x05000011
_08133EE8: .4byte 0x06010000

	thumb_func_start sub_08133EEC
sub_08133EEC: @ 0x08133EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _08133F28 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133F2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133F34
	.align 2, 0
_08133F28: .4byte sub_08128980
_08133F2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133F34:
	adds r5, r0, #0
	mov r0, sb
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x1e
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	subs r0, #0x23
	str r0, [r5, #0x48]
	movs r0, #0x40
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08134000
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133FF0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133FF4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r4, _08133FF8 @ =gUnk_0837EEF0
	mov r1, r8
	lsls r2, r1, #2
	ldr r3, _08133FFC @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813407A
	.align 2, 0
_08133FF0: .4byte 0x05000011
_08133FF4: .4byte 0x06010000
_08133FF8: .4byte gUnk_0837EEF0
_08133FFC: .4byte gLanguage
_08134000:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134098 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813409C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r4, _081340A0 @ =gUnk_0837EEF0
	mov r0, r8
	lsls r2, r0, #2
	ldr r3, _081340A4 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813407A:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, _081340A8 @ =0x0000FFFE
	strh r0, [r5, #0x34]
	subs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134098: .4byte 0x05000011
_0813409C: .4byte 0x06010000
_081340A0: .4byte gUnk_0837EEF0
_081340A4: .4byte gLanguage
_081340A8: .4byte 0x0000FFFE

	thumb_func_start sub_081340AC
sub_081340AC: @ 0x081340AC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldr r0, _0813416C @ =gRngVal
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _08134170 @ =0x00196225
	muls r0, r6, r0
	ldr r4, _08134174 @ =0x3C6EF35F
	adds r0, r0, r4
	movs r5, #7
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813416C: .4byte gRngVal
_08134170: .4byte 0x00196225
_08134174: .4byte 0x3C6EF35F

	thumb_func_start sub_08134178
sub_08134178: @ 0x08134178
	ldr r3, _081341A4 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _081341A8 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _081341AC @ =0x3C6EF35F
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_081341A4: .4byte gRngVal
_081341A8: .4byte 0x00196225
_081341AC: .4byte 0x3C6EF35F

	thumb_func_start sub_081341B0
sub_081341B0: @ 0x081341B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r0, _081341F4 @ =sub_0813436C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081341F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134200
	.align 2, 0
_081341F4: .4byte sub_0813436C
_081341F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134200:
	adds r5, r0, #0
	ldr r0, _08134214 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134248
	lsls r0, r0, #2
	ldr r1, _08134218 @ =_0813421C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134214: .4byte gLanguage
_08134218: .4byte _0813421C
_0813421C: @ jump table
	.4byte _08134234 @ case 0
	.4byte _08134234 @ case 1
	.4byte _08134234 @ case 2
	.4byte _08134234 @ case 3
	.4byte _08134234 @ case 4
	.4byte _08134234 @ case 5
_08134234:
	ldr r0, _081342DC @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081342E0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08134248:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081342EC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081342E4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081342E8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08134344
	.align 2, 0
_081342DC: .4byte 0xFFFF0000
_081342E0: .4byte 0xFF00FFFF
_081342E4: .4byte 0x05000011
_081342E8: .4byte 0x06010000
_081342EC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134364 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134368 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08134344:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	mov r0, sb
	strh r0, [r5, #0x34]
	mov r1, sl
	strh r1, [r5, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134364: .4byte 0x05000011
_08134368: .4byte 0x06010000

	thumb_func_start sub_0813436C
sub_0813436C: @ 0x0813436C
	push {r4, lr}
	ldr r0, _08134388 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813438C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08134394
	.align 2, 0
_08134388: .4byte gCurTask
_0813438C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08134394:
	ldrh r0, [r4, #0x36]
	adds r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081343CC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _081343BE
	subs r0, #1
	strh r0, [r1]
	b _081343E0
_081343BE:
	ldr r0, _081343C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081343E0
	.align 2, 0
_081343C8: .4byte gCurTask
_081343CC:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081343E0
	ldr r0, _081343E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081343E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081343E8: .4byte gCurTask

	thumb_func_start sub_081343EC
sub_081343EC: @ 0x081343EC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0813441C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134420
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134428
	.align 2, 0
_0813441C: .4byte sub_08128980
_08134420:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134428:
	adds r4, r0, #0
	ldr r0, _0813443C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134468
	lsls r0, r0, #2
	ldr r1, _08134440 @ =_08134444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813443C: .4byte gLanguage
_08134440: .4byte _08134444
_08134444: @ jump table
	.4byte _0813445C @ case 0
	.4byte _0813445C @ case 1
	.4byte _0813445C @ case 2
	.4byte _0813445C @ case 3
	.4byte _0813445C @ case 4
	.4byte _0813445C @ case 5
_0813445C:
	ldr r0, _08134500 @ =0xFFFF0000
	ands r5, r0
	ldr r0, _08134504 @ =0x0000034A
	orrs r5, r0
	ldr r0, _08134508 @ =0xFF00FFFF
	ands r5, r0
_08134468:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08134514
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _0813450C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134510 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _0813456C
	.align 2, 0
_08134500: .4byte 0xFFFF0000
_08134504: .4byte 0x0000034A
_08134508: .4byte 0xFF00FFFF
_0813450C: .4byte 0x05000011
_08134510: .4byte 0x06010000
_08134514:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08134574 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134578 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_0813456C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134574: .4byte 0x05000011
_08134578: .4byte 0x06010000

	thumb_func_start sub_0813457C
sub_0813457C: @ 0x0813457C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _081345B0 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081345B4
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081345BE
	.align 2, 0
_081345B0: .4byte sub_08128980
_081345B4:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081345BE:
	adds r5, r0, #0
	ldr r0, _081345D4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134606
	lsls r0, r0, #2
	ldr r1, _081345D8 @ =_081345DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081345D4: .4byte gLanguage
_081345D8: .4byte _081345DC
_081345DC: @ jump table
	.4byte _081345F4 @ case 0
	.4byte _081345F4 @ case 1
	.4byte _081345F4 @ case 2
	.4byte _081345F4 @ case 3
	.4byte _081345F4 @ case 4
	.4byte _081345F4 @ case 5
_081345F4:
	ldr r0, _0813469C @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081346A0 @ =0x0000034A
	orrs r4, r0
	ldr r0, _081346A4 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08134606:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	strh r7, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r5, #0x48]
	subs r0, #0xa0
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081346B0
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081346A8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081346AC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08134708
	.align 2, 0
_0813469C: .4byte 0xFFFF0000
_081346A0: .4byte 0x0000034A
_081346A4: .4byte 0xFF00FFFF
_081346A8: .4byte 0x05000011
_081346AC: .4byte 0x06010000
_081346B0:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134718 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813471C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08134708:
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08134718: .4byte 0x05000011
_0813471C: .4byte 0x06010000

	thumb_func_start sub_08134720
sub_08134720: @ 0x08134720
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813473A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08134742
_0813473A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08134742:
	ldrh r1, [r2, #0x38]
	ldr r0, _08134750 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_08134750: .4byte 0x0000EFFF

	thumb_func_start sub_08134754
sub_08134754: @ 0x08134754
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813476E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08134776
_0813476E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08134776:
	ldrh r1, [r2, #0x38]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08134788
sub_08134788: @ 0x08134788
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _081347B8 @ =sub_0813483C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081347BC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081347C4
	.align 2, 0
_081347B8: .4byte sub_0813483C
_081347BC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081347C4:
	str r4, [r2]
	ldr r0, [r4, #0x28]
	movs r1, #0
	strh r0, [r2, #4]
	strb r1, [r2, #6]
	adds r0, r3, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_081347D8
sub_081347D8: @ 0x081347D8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08134810 @ =sub_081348B4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134814
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813481C
	.align 2, 0
_08134810: .4byte sub_081348B4
_08134814:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813481C:
	str r4, [r2]
	ldr r0, [r4, #0x28]
	movs r1, #0
	strh r0, [r2, #4]
	strb r1, [r2, #6]
	ldr r0, _08134838 @ =gUnk_0837EEE3
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r2, #7]
	str r6, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08134838: .4byte gUnk_0837EEE3

	thumb_func_start sub_0813483C
sub_0813483C: @ 0x0813483C
	push {r4, lr}
	ldr r0, _08134858 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813485C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08134864
	.align 2, 0
_08134858: .4byte gCurTask
_0813485C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08134864:
	ldrb r0, [r4, #6]
	adds r1, r0, #1
	strb r1, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0813487C
	ldr r0, [r4]
	bl sub_0813399C
	movs r0, #0
	strb r0, [r4, #6]
_0813487C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08134884
sub_08134884: @ 0x08134884
	push {lr}
	ldr r0, _081348A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081348A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081348AC
	.align 2, 0
_081348A0: .4byte gCurTask
_081348A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081348AC:
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start sub_081348B4
sub_081348B4: @ 0x081348B4
	push {r4, lr}
	ldr r0, _081348D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081348D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081348DC
	.align 2, 0
_081348D0: .4byte gCurTask
_081348D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081348DC:
	ldr r0, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0x1a
	movs r3, #0
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #0
	movs r3, #1
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #8
	movs r3, #2
	bl sub_08133B74
	ldr r0, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	movs r1, #0x1e
	movs r3, #3
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #4
	movs r3, #4
	bl sub_08133B74
	ldr r0, _0813492C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813492C: .4byte gCurTask

	thumb_func_start sub_08134930
sub_08134930: @ 0x08134930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08134954 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp sl, r0
	bhs _08134958
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #0
	b _0813495E
	.align 2, 0
_08134954: .4byte gUnk_0203AD30
_08134958:
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #1
_0813495E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, _08134BB4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp sl, r0
	bne _08134972
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08134972:
	ldrh r0, [r2]
	movs r5, #0x10
	movs r6, #0
	movs r4, #0
	orrs r0, r5
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xcc
	str r4, [r0]
	adds r0, #0x10
	strh r4, [r0]
	adds r0, #2
	str r0, [sp, #0xc]
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strh r4, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	movs r1, #0xe8
	adds r1, r1, r7
	mov sb, r1
	strb r6, [r1]
	str r4, [sp]
	ldr r2, _08134BB8 @ =0x05000011
	mov r0, sp
	adds r1, r7, #0
	bl CpuSet
	ldr r0, _08134BBC @ =0x06010000
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r3, _08134BC0 @ =gUnk_0837EFC8
	ldr r2, _08134BC4 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	mov r2, sl
	strb r2, [r7, #0x1f]
	ldr r1, _08134BC8 @ =gUnk_0837F058
	mov r0, sl
	lsls r3, r0, #1
	lsls r5, r0, #3
	adds r0, r5, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r7, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	str r2, [r7, #0x28]
	str r1, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r4, [sp, #0xc]
	mov r1, sb
	str r1, [sp, #0x20]
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	mov r2, sl
	cmp r2, #1
	bhi _08134A3E
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
_08134A3E:
	mov r3, sl
	cmp r3, #0
	beq _08134A48
	cmp r3, #3
	bne _08134A58
_08134A48:
	ldrh r0, [r7, #0x14]
	ldr r1, _08134BCC @ =0x0000F83F
	ands r1, r0
	movs r2, #0x98
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r7, #0x14]
_08134A58:
	ldr r0, [r7, #8]
	ldr r1, _08134BD0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
	movs r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _08134BB8 @ =0x05000011
	bl CpuSet
	ldr r3, _08134BBC @ =0x06010000
	str r3, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r2, _08134BD4 @ =gUnk_0837F078
	ldr r3, _08134BC4 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrh r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	adds r1, r7, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r0]
	adds r0, #3
	mov r1, sl
	strb r1, [r0]
	ldr r1, _08134BD8 @ =gUnk_0837F150
	ldr r2, [sp, #0x1c]
	adds r0, r2, r1
	ldr r3, [r0]
	asrs r2, r3, #2
	adds r0, r7, #0
	adds r0, #0x54
	strh r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	ldr r1, [r1]
	asrs r0, r1, #2
	adds r2, r7, #0
	adds r2, #0x56
	strh r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r7, #0x4c]
	str r3, [r7, #0x6c]
	str r1, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r3, #0x10
	mov sl, r3
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	str r5, [sp, #8]
	add r0, sp, #8
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _08134BB8 @ =0x05000011
	bl CpuSet
	ldr r2, _08134BBC @ =0x06010000
	str r2, [r4]
	movs r3, #0xf0
	lsls r3, r3, #2
	strh r3, [r4, #0x14]
	ldr r2, _08134BDC @ =gUnk_0837F170
	ldr r1, [sp, #0x20]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r3, _08134BC4 @ =gLanguage
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r2, sl
	strb r2, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	ldr r1, _08134BE0 @ =gUnk_0837F1D0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r4, #0x10]
	add r1, r8
	ldr r1, [r1]
	asrs r0, r1, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r2, [r4, #0x28]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	mov r1, sb
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134BB4: .4byte gUnk_0203AD3C
_08134BB8: .4byte 0x05000011
_08134BBC: .4byte 0x06010000
_08134BC0: .4byte gUnk_0837EFC8
_08134BC4: .4byte gLanguage
_08134BC8: .4byte gUnk_0837F058
_08134BCC: .4byte 0x0000F83F
_08134BD0: .4byte 0xFFFFCFFF
_08134BD4: .4byte gUnk_0837F078
_08134BD8: .4byte gUnk_0837F150
_08134BDC: .4byte gUnk_0837F170
_08134BE0: .4byte gUnk_0837F1D0

	thumb_func_start sub_08134BE4
sub_08134BE4: @ 0x08134BE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xd0
	ldrh r0, [r3]
	ldr r2, _08134C4C @ =0x0000FEFF
	ands r2, r0
	movs r7, #0
	movs r6, #0
	ldr r0, _08134C50 @ =0x0000FDFF
	ands r2, r0
	strh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08134C12
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08134C12:
	ldrh r1, [r3]
	ldr r0, _08134C54 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
	adds r5, r4, #0
	adds r5, #0xcc
	ldr r0, [r5]
	cmp r0, #0
	beq _08134C2A
	bl TaskDestroy
	str r6, [r5]
_08134C2A:
	adds r0, r4, #0
	adds r0, #0xdc
	strh r6, [r0]
	adds r0, #3
	strb r7, [r0]
	adds r0, #1
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134C4C: .4byte 0x0000FEFF
_08134C50: .4byte 0x0000FDFF
_08134C54: .4byte 0x0000FFDF

	thumb_func_start sub_08134C58
sub_08134C58: @ 0x08134C58
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08134C88 @ =0x05006000
	mov r0, sp
	bl CpuSet
	ldr r3, _08134C8C @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08134C94
	ldr r0, _08134C90 @ =gUnk_0837F4C4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl LoadBgPaletteWithTransformation
	b _08134CAA
	.align 2, 0
_08134C88: .4byte 0x05006000
_08134C8C: .4byte gMainFlags
_08134C90: .4byte gUnk_0837F4C4
_08134C94:
	ldr r1, _08134CC8 @ =0x040000D4
	ldr r0, _08134CCC @ =gUnk_0837F4C4
	str r0, [r1]
	ldr r0, _08134CD0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08134CD4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08134CAA:
	ldr r0, _08134CD8 @ =gUnk_0837F6C4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _08134CDC @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134D38
	lsls r0, r0, #2
	ldr r1, _08134CE0 @ =_08134CE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134CC8: .4byte 0x040000D4
_08134CCC: .4byte gUnk_0837F4C4
_08134CD0: .4byte gBgPalette
_08134CD4: .4byte 0x80000100
_08134CD8: .4byte gUnk_0837F6C4
_08134CDC: .4byte gLanguage
_08134CE0: .4byte _08134CE4
_08134CE4: @ jump table
	.4byte _08134CFC @ case 0
	.4byte _08134D04 @ case 1
	.4byte _08134D0C @ case 2
	.4byte _08134D14 @ case 3
	.4byte _08134D1C @ case 4
	.4byte _08134D30 @ case 5
_08134CFC:
	ldr r0, _08134D00 @ =gUnk_083828DC
	b _08134D1E
	.align 2, 0
_08134D00: .4byte gUnk_083828DC
_08134D04:
	ldr r0, _08134D08 @ =gUnk_08383C0C
	b _08134D1E
	.align 2, 0
_08134D08: .4byte gUnk_08383C0C
_08134D0C:
	ldr r0, _08134D10 @ =gUnk_08384098
	b _08134D1E
	.align 2, 0
_08134D10: .4byte gUnk_08384098
_08134D14:
	ldr r0, _08134D18 @ =gUnk_0838326C
	b _08134D1E
	.align 2, 0
_08134D18: .4byte gUnk_0838326C
_08134D1C:
	ldr r0, _08134D28 @ =gUnk_08383774
_08134D1E:
	ldr r1, _08134D2C @ =0x06004000
	bl LZ77UnCompVram
	b _08134D38
	.align 2, 0
_08134D28: .4byte gUnk_08383774
_08134D2C: .4byte 0x06004000
_08134D30:
	ldr r0, _08134D50 @ =gUnk_08382DB8
	ldr r1, _08134D54 @ =0x06004000
	bl LZ77UnCompVram
_08134D38:
	ldr r1, _08134D58 @ =gUnk_08D61B80
	ldr r0, _08134D5C @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08134D60 @ =0x06010000
	bl LZ77UnCompVram
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08134D50: .4byte gUnk_08382DB8
_08134D54: .4byte 0x06004000
_08134D58: .4byte gUnk_08D61B80
_08134D5C: .4byte gLanguage
_08134D60: .4byte 0x06010000

	thumb_func_start sub_08134D64
sub_08134D64: @ 0x08134D64
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08134DCC @ =gRngVal
	movs r2, #0
	str r2, [r0]
	ldr r1, _08134DD0 @ =gDispCnt
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08134DD4 @ =gBgCntRegs
	ldr r0, _08134DD8 @ =0x00001C02
	strh r0, [r1]
	adds r0, #0xff
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08134DDC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r1, _08134DE0 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _08134DE4 @ =sub_08134E54
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08134DE8 @ =nullsub_128
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08134DEC
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08134DF4
	.align 2, 0
_08134DCC: .4byte gRngVal
_08134DD0: .4byte gDispCnt
_08134DD4: .4byte gBgCntRegs
_08134DD8: .4byte 0x00001C02
_08134DDC: .4byte gBldRegs
_08134DE0: .4byte gBgScrollRegs
_08134DE4: .4byte sub_08134E54
_08134DE8: .4byte nullsub_128
_08134DEC:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08134DF4:
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08134E38 @ =0x01000210
	adds r1, r5, #0
	bl CpuSet
	bl sub_0813862C
	str r0, [r5, #0xc]
	ldr r0, _08134E3C @ =gUnk_0203AD14
	ldrb r1, [r0]
	ldr r2, _08134E40 @ =0x0000041C
	adds r0, r5, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08134E44 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	ldr r3, _08134E48 @ =0x0000041D
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, _08134E4C @ =0x0000040E
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _08134E50 @ =0x00000416
	adds r0, r5, r2
	strb r4, [r0]
	subs r3, #6
	adds r0, r5, r3
	strb r4, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134E38: .4byte 0x01000210
_08134E3C: .4byte gUnk_0203AD14
_08134E40: .4byte 0x0000041C
_08134E44: .4byte gUnk_0203AD3C
_08134E48: .4byte 0x0000041D
_08134E4C: .4byte 0x0000040E
_08134E50: .4byte 0x00000416

	thumb_func_start sub_08134E54
sub_08134E54: @ 0x08134E54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08134E7C @ =0xFFFFF878
	add sp, r4
	ldr r2, _08134E80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134E84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134E8C
	.align 2, 0
_08134E7C: .4byte 0xFFFFF878
_08134E80: .4byte gCurTask
_08134E84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134E8C:
	ldr r1, _08134EB0 @ =0x00000784
	add r1, sp
	str r0, [r1]
	ldr r0, [r2]
	ldr r1, _08134EB4 @ =sub_081358EC
	str r1, [r0, #8]
	ldr r0, _08134EB8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bls _08134EA4
	bl _08135736
_08134EA4:
	lsls r0, r0, #2
	ldr r1, _08134EBC @ =_08134EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134EB0: .4byte 0x00000784
_08134EB4: .4byte sub_081358EC
_08134EB8: .4byte gLanguage
_08134EBC: .4byte _08134EC0
_08134EC0: @ jump table
	.4byte _08134ED8 @ case 0
	.4byte _08135044 @ case 1
	.4byte _08135188 @ case 2
	.4byte _081352CC @ case 3
	.4byte _08135428 @ case 4
	.4byte _081355B8 @ case 5
_08134ED8:
	ldr r2, _08135034 @ =0x06010000
	mov sb, r2
	str r2, [sp]
	mov r0, sp
	movs r7, #0
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135038 @ =0x00000366
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp, #8]
	bl sub_08155128
	add r0, sp, #0x28
	mov r1, sb
	str r1, [sp, #0x28]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #7
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #1
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x50
	mov r3, sb
	str r3, [sp, #0x50]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #6
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x78
	mov r2, sb
	str r2, [sp, #0x78]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xa0
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xc8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _0813503C @ =0x0000036A
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xf0
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #2
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x118
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _08135040 @ =0x00000369
	strh r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #7
	strb r2, [r0, #0x1f]
	b _0813559C
	.align 2, 0
_08135034: .4byte 0x06010000
_08135038: .4byte 0x00000366
_0813503C: .4byte 0x0000036A
_08135040: .4byte 0x00000369
_08135044:
	add r0, sp, #0x140
	ldr r3, _0813517C @ =0x06010000
	mov sb, r3
	str r3, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _08135180 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x168
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x190
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1b8
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1e0
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x208
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135184 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x230
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x258
	b _0813557E
	.align 2, 0
_0813517C: .4byte 0x06010000
_08135180: .4byte 0x00000366
_08135184: .4byte 0x0000036A
_08135188:
	add r0, sp, #0x280
	ldr r4, _081352C0 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081352C4 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2a8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2d0
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2f8
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x320
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x348
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081352C8 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x370
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x398
	b _0813557E
	.align 2, 0
_081352C0: .4byte 0x06010000
_081352C4: .4byte 0x00000366
_081352C8: .4byte 0x0000036A
_081352CC:
	add r0, sp, #0x3c0
	ldr r4, _0813541C @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _08135420 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x3e8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x82
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x87
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x8c
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x91
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135424 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x96
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x9b
	lsls r0, r0, #3
	b _0813557C
	.align 2, 0
_0813541C: .4byte 0x06010000
_08135420: .4byte 0x00000366
_08135424: .4byte 0x0000036A
_08135428:
	movs r0, #0xa0
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _081355A8 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081355AC @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xa5
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xaa
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081355B0 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xc3
	lsls r0, r0, #3
_0813557C:
	add r0, sp
_0813557E:
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _081355B4 @ =0x00000369
	strh r1, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #7
	strb r3, [r0, #0x1f]
_0813559C:
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	b _08135736
	.align 2, 0
_081355A8: .4byte 0x06010000
_081355AC: .4byte 0x00000366
_081355B0: .4byte 0x0000036A
_081355B4: .4byte 0x00000369
_081355B8:
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _081358A0 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081358A4 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xd7
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xdc
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xe1
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081358A8 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xe6
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xeb
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _081358AC @ =0x00000369
	strh r1, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #7
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
_08135736:
	ldr r0, _081358B0 @ =gUnk_0838454C
	ldr r1, _081358B4 @ =0x0600E000
	bl RLUnCompVram
	ldr r0, _081358B8 @ =gUnk_083849B8
	ldr r1, _081358BC @ =0x0600E800
	bl RLUnCompVram
	ldr r0, _081358C0 @ =gUnk_08384F18
	ldr r1, _081358C4 @ =0x0600F000
	bl RLUnCompVram
	movs r5, #0
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	str r5, [r4]
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #0
	bl sub_08134930
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #1
	bl sub_08134930
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #2
	bl sub_08134930
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #3
	bl sub_08134930
	movs r0, #0xf0
	lsls r0, r0, #3
	add r0, sp
	str r5, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r4, r4, r2
	ldr r2, _081358CC @ =0x05000011
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _081358A0 @ =0x06010000
	str r0, [r4]
	movs r7, #0
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r3, _081358D0 @ =gUnk_0837F228
	ldr r2, _081358D4 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r3, #0x10
	strb r3, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	movs r0, #0xf2
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _081358D8 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r4, r1
	strb r7, [r0]
	ldr r2, _081358DC @ =0x00000409
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #2
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #0x10
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #0xd
	adds r4, r4, r2
	strh r3, [r4]
	ldr r3, _081358C8 @ =0x00000784
	add r3, sp
	ldr r3, [r3]
	ldr r0, _081358E0 @ =0x00000416
	adds r6, r3, r0
	ldrh r1, [r6]
	adds r0, #0xf4
	cmp r1, r0
	bne _08135872
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r3, _081358C8 @ =0x00000784
	add r3, sp
	ldr r3, [r3]
	ldr r4, _081358E4 @ =0x0000041C
	adds r1, r3, r4
	movs r0, #3
	strb r0, [r1]
_08135872:
	strb r5, [r6]
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	ldr r1, _081358E8 @ =0x00000417
	adds r0, r4, r1
	strb r7, [r0]
	adds r1, #7
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0x23
	bl m4aSongNumStart
	movs r3, #0xf1
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081358A0: .4byte 0x06010000
_081358A4: .4byte 0x00000366
_081358A8: .4byte 0x0000036A
_081358AC: .4byte 0x00000369
_081358B0: .4byte gUnk_0838454C
_081358B4: .4byte 0x0600E000
_081358B8: .4byte gUnk_083849B8
_081358BC: .4byte 0x0600E800
_081358C0: .4byte gUnk_08384F18
_081358C4: .4byte 0x0600F000
_081358C8: .4byte 0x00000784
_081358CC: .4byte 0x05000011
_081358D0: .4byte gUnk_0837F228
_081358D4: .4byte gLanguage
_081358D8: .4byte 0xFFFFCFFF
_081358DC: .4byte 0x00000409
_081358E0: .4byte 0x00000416
_081358E4: .4byte 0x0000041C
_081358E8: .4byte 0x00000417

	thumb_func_start sub_081358EC
sub_081358EC: @ 0x081358EC
	push {r4, r5, lr}
	ldr r2, _08135908 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813590C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135914
	.align 2, 0
_08135908: .4byte gCurTask
_0813590C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135914:
	adds r5, r0, #0
	ldr r0, _08135934 @ =0x0000040E
	adds r1, r5, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0813593C
	cmp r0, #0xb3
	ble _081359B2
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, _08135938 @ =sub_081359EC
	str r0, [r1, #8]
	b _081359B2
	.align 2, 0
_08135934: .4byte 0x0000040E
_08135938: .4byte sub_081359EC
_0813593C:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r2, _081359D4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _081359D8 @ =gUnk_08384F18
	ldr r1, _081359DC @ =0x0600F000
	bl RLUnCompVram
	bl sub_08137C98
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081359B2
	ldr r0, _081359E0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _081359E4 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_081378D4
	movs r4, #0
_0813598A:
	movs r0, #0xec
	adds r2, r4, #0
	muls r2, r0, r2
	adds r0, r5, r2
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081359A8
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08137AF8
_081359A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813598A
_081359B2:
	ldr r3, _081359E8 @ =0x0000040E
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081359D4: .4byte gDispCnt
_081359D8: .4byte gUnk_08384F18
_081359DC: .4byte 0x0600F000
_081359E0: .4byte 0x0000FFEF
_081359E4: .4byte 0x0000041D
_081359E8: .4byte 0x0000040E

	thumb_func_start sub_081359EC
sub_081359EC: @ 0x081359EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08135A10 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135A14
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08135A1C
	.align 2, 0
_08135A10: .4byte gCurTask
_08135A14:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08135A1C:
	ldr r1, [r2]
	ldr r0, _08135B28 @ =sub_08137420
	str r0, [r1, #8]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r2, r0, #0
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r3, _08135B2C @ =0x0000040C
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #2
	adds r1, r6, r3
	strh r0, [r1]
	strh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08135A60
	strh r5, [r4]
_08135A60:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08135A70
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08135A70:
	adds r7, r6, #0
	adds r7, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08134BE4
	movs r0, #0xfc
	adds r0, r0, r6
	mov r8, r0
	movs r1, #1
	bl sub_08134BE4
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	movs r1, #2
	bl sub_08134BE4
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r3, r3, r6
	mov sl, r3
	mov r0, sl
	movs r1, #3
	bl sub_08134BE4
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	ldr r3, _08135B30 @ =0x0000EFFF
	ands r3, r0
	strh r3, [r2]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08135ACC
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08135ACC:
	adds r0, r6, #0
	bl sub_08136D5C
	adds r0, r6, #0
	bl sub_081375BC
	ldr r1, _08135B34 @ =0x0000041C
	adds r5, r6, r1
	ldrb r1, [r5]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r4, r6, r3
	ldrh r2, [r4]
	adds r0, r7, #0
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, r8
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sb
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sl
	bl sub_08137610
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135B28: .4byte sub_08137420
_08135B2C: .4byte 0x0000040C
_08135B30: .4byte 0x0000EFFF
_08135B34: .4byte 0x0000041C

	thumb_func_start sub_08135B38
sub_08135B38: @ 0x08135B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08135B60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135B64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135B6C
	.align 2, 0
_08135B60: .4byte gCurTask
_08135B64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135B6C:
	adds r5, r0, #0
	bl sub_08136C68
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08135C84 @ =0x00000412
	adds r6, r5, r1
	ldrh r0, [r4]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08135BA4
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r5, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_08137668
	ldr r0, [r5, #0xc]
	bl sub_081386DC
_08135BA4:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08135BD2
	ldrh r0, [r4]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08135BD2
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08135BD2
	bl sub_08137874
_08135BD2:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0xe0
	str r1, [sp, #4]
_08135BDE:
	movs r0, #0xec
	adds r2, r6, #0
	muls r2, r0, r2
	str r2, [sp, #8]
	adds r2, r2, r5
	mov ip, r2
	mov r4, ip
	adds r4, #0xe0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08135CBA
	movs r7, #0x80
	lsls r7, r7, #2
	mov sb, r7
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne _08135CBA
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	mov sl, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08135CBA
	movs r1, #0x83
	lsls r1, r1, #3
	adds r3, r5, r1
	ldrh r1, [r3]
	movs r2, #0x20
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135C36
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r3]
_08135C36:
	mov r2, ip
	adds r2, #0xf0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08135CBA
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08135C84 @ =0x00000412
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _08135C88 @ =0x0000040D
	adds r0, r5, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135C8C
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	mov r3, sl
	orrs r0, r3
	strh r0, [r1]
	b _08135CBA
	.align 2, 0
_08135C84: .4byte 0x00000412
_08135C88: .4byte 0x0000040D
_08135C8C:
	ldrh r1, [r4]
	mov r0, sb
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #8]
	adds r0, #0x10
	adds r0, r5, r0
	ldr r3, _08135D34 @ =gUnk_0837F1F0
	lsls r2, r6, #1
	lsls r1, r6, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_081380C0
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r4, [sp, #8]
	adds r1, r1, r4
	str r0, [r1]
_08135CBA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135BDE
	ldr r7, [sp]
	cmp r7, #0
	beq _08135CD4
	ldr r0, _08135D38 @ =0x0000040D
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08135CD4:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08135DC6
	ldr r2, _08135D3C @ =0x00000414
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08135DC6
	movs r6, #0
	ldr r3, _08135D40 @ =gCurTask
	mov sb, r3
	ldr r4, _08135D44 @ =sub_08135E9C
	mov sl, r4
	movs r7, #0x80
	lsls r7, r7, #1
	mov r8, r7
	movs r7, #0x80
	lsls r7, r7, #2
	movs r4, #0x40
	ldr r0, _08135D48 @ =0x0000040C
	adds r3, r5, r0
_08135D10:
	movs r0, #0xec
	muls r0, r6, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xe0
	ldrh r2, [r0]
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _08135D4C
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _08135D4C
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08135D54
	.align 2, 0
_08135D34: .4byte gUnk_0837F1F0
_08135D38: .4byte 0x0000040D
_08135D3C: .4byte 0x00000414
_08135D40: .4byte gCurTask
_08135D44: .4byte sub_08135E9C
_08135D48: .4byte 0x0000040C
_08135D4C:
	adds r1, #0xec
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
_08135D54:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135D10
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r4, _08135E88 @ =gUnk_08D61B6C
	ldr r0, _08135E8C @ =0x0000040C
	adds r3, r5, r0
_08135D70:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135DA2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08135DA2
	adds r1, r2, #0
	adds r1, #0xf2
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0xef
	strb r1, [r0]
_08135DA2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135D70
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r4, sb
	ldr r0, [r4]
	mov r7, sl
	str r7, [r0, #8]
_08135DC6:
	ldr r0, _08135E90 @ =0x00000412
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r3, r5, r2
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08135E0A
	ldrh r1, [r1]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r5, r4
	ldrh r0, [r0]
	movs r7, #0x96
	lsls r7, r7, #2
	adds r0, r0, r7
	cmp r1, r0
	blt _08135E0A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08135E94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08135E98 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08135E0A:
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r5, r7
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08135E94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08135E98 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08135E68:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135E88: .4byte gUnk_08D61B6C
_08135E8C: .4byte 0x0000040C
_08135E90: .4byte 0x00000412
_08135E94: .4byte gCurTask
_08135E98: .4byte sub_081366B8

	thumb_func_start sub_08135E9C
sub_08135E9C: @ 0x08135E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08135EC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135EC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135ECC
	.align 2, 0
_08135EC0: .4byte gCurTask
_08135EC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135ECC:
	adds r6, r0, #0
	movs r7, #0
	movs r0, #1
	mov sl, r0
	ldr r1, _08136050 @ =gUnk_0837EFC8
	mov sb, r1
	ldr r2, _08136054 @ =gLanguage
	mov r8, r2
_08135EDC:
	movs r0, #0xec
	adds r4, r7, #0
	muls r4, r0, r4
	adds r0, r6, r4
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08135F1E
	ldr r3, _08136058 @ =0x0000FFFE
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08135F1E
	ldr r0, _0813605C @ =0x00000239
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r6, r0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08136F3C
_08135F1E:
	movs r0, #0xec
	muls r0, r7, r0
	adds r5, r6, r0
	adds r4, r5, #0
	adds r4, #0xec
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135F7E
	ldr r0, _0813605C @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _08136060 @ =0x0000023A
	bl m4aSongNumStart
	ldrh r1, [r4]
	ldr r2, _08136064 @ =0x0000FFEF
	adds r0, r2, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strh r1, [r4]
	adds r2, r5, #0
	adds r2, #0x10
	mov r3, r8
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #8]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0, #0xa]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r2, #0x34
	ldrh r0, [r2]
	ldr r3, _08136068 @ =0x0000F7FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
_08135F7E:
	ldrh r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08135FDC
	adds r3, r5, #0
	adds r3, #0x44
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08135FDC
	ldr r1, _0813606C @ =0x0000FFDF
	adds r0, r1, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
	adds r2, r5, #0
	adds r2, #0x10
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08135FDC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bhi _08135FE8
	b _08135EDC
_08135FE8:
	adds r0, r6, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r3, #0xec
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	ldr r0, _08136070 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136074 @ =sub_08136078
	str r0, [r1, #8]
_08136030:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136050: .4byte gUnk_0837EFC8
_08136054: .4byte gLanguage
_08136058: .4byte 0x0000FFFE
_0813605C: .4byte 0x00000239
_08136060: .4byte 0x0000023A
_08136064: .4byte 0x0000FFEF
_08136068: .4byte 0x0000F7FF
_0813606C: .4byte 0x0000FFDF
_08136070: .4byte gCurTask
_08136074: .4byte sub_08136078

	thumb_func_start sub_08136078
sub_08136078: @ 0x08136078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0813609C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081360A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081360A8
	.align 2, 0
_0813609C: .4byte gCurTask
_081360A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081360A8:
	adds r7, r0, #0
	bl sub_08136C68
	movs r0, #0
	mov r8, r0
	ldr r1, _0813619C @ =gUnk_0837F078
	mov sl, r1
	ldr r0, _081361A0 @ =gLanguage
	mov sb, r0
_081360BA:
	movs r0, #0xec
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r6, r7, r0
	adds r5, r6, #0
	adds r5, #0xef
	ldrb r0, [r5]
	cmp r0, #0
	beq _08136136
	adds r4, r6, #0
	adds r4, #0xf7
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08136136
	ldr r0, _081361A4 @ =0x0000023B
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	adds r3, r6, #0
	adds r3, #0xee
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08136106
	movs r0, #8
	strb r0, [r3]
_08136106:
	adds r2, r6, #0
	adds r2, #0x54
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08136136:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _081360BA
	adds r0, r7, #0
	adds r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	ldr r1, _081361A8 @ =0x000001DB
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	ldr r0, _081361AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081361B0 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_0813617C:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_081288DC
	adds r0, r7, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813619C: .4byte gUnk_0837F078
_081361A0: .4byte gLanguage
_081361A4: .4byte 0x0000023B
_081361A8: .4byte 0x000001DB
_081361AC: .4byte gCurTask
_081361B0: .4byte sub_081366B8

	thumb_func_start sub_081361B4
sub_081361B4: @ 0x081361B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _081361DC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081361E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081361E8
	.align 2, 0
_081361DC: .4byte gCurTask
_081361E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081361E8:
	adds r5, r0, #0
	bl sub_08136C68
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08136300 @ =0x00000412
	adds r6, r5, r1
	ldrh r0, [r4]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08136220
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r5, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_08137668
	ldr r0, [r5, #0xc]
	bl sub_081386DC
_08136220:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0813624E
	ldrh r0, [r4]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _0813624E
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0813624E
	bl sub_08137874
_0813624E:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0xe0
	str r1, [sp, #4]
_0813625A:
	movs r0, #0xec
	adds r2, r6, #0
	muls r2, r0, r2
	str r2, [sp, #8]
	adds r2, r2, r5
	mov ip, r2
	mov r4, ip
	adds r4, #0xe0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08136336
	movs r7, #0x80
	lsls r7, r7, #2
	mov sb, r7
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne _08136336
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	mov sl, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08136336
	movs r1, #0x83
	lsls r1, r1, #3
	adds r3, r5, r1
	ldrh r1, [r3]
	movs r2, #0x20
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _081362B2
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r3]
_081362B2:
	mov r2, ip
	adds r2, #0xf0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08136336
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08136300 @ =0x00000412
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _08136304 @ =0x0000040D
	adds r0, r5, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08136308
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	mov r3, sl
	orrs r0, r3
	strh r0, [r1]
	b _08136336
	.align 2, 0
_08136300: .4byte 0x00000412
_08136304: .4byte 0x0000040D
_08136308:
	ldrh r1, [r4]
	mov r0, sb
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #8]
	adds r0, #0x10
	adds r0, r5, r0
	ldr r3, _081363B0 @ =gUnk_0837F1F0
	lsls r2, r6, #1
	lsls r1, r6, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_081380C0
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r4, [sp, #8]
	adds r1, r1, r4
	str r0, [r1]
_08136336:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813625A
	ldr r7, [sp]
	cmp r7, #0
	beq _08136350
	ldr r0, _081363B4 @ =0x0000040D
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08136350:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08136442
	ldr r2, _081363B8 @ =0x00000414
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08136442
	movs r6, #0
	ldr r3, _081363BC @ =gCurTask
	mov sl, r3
	ldr r4, _081363C0 @ =sub_08136518
	mov sb, r4
	movs r7, #0x80
	lsls r7, r7, #1
	mov r8, r7
	movs r7, #0x80
	lsls r7, r7, #2
	movs r4, #0x40
	ldr r0, _081363C4 @ =0x0000040C
	adds r3, r5, r0
_0813638C:
	movs r0, #0xec
	muls r0, r6, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xe0
	ldrh r2, [r0]
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _081363C8
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _081363C8
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _081363D0
	.align 2, 0
_081363B0: .4byte gUnk_0837F1F0
_081363B4: .4byte 0x0000040D
_081363B8: .4byte 0x00000414
_081363BC: .4byte gCurTask
_081363C0: .4byte sub_08136518
_081363C4: .4byte 0x0000040C
_081363C8:
	adds r1, #0xec
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
_081363D0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813638C
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r4, _08136504 @ =gUnk_08D61B6C
	ldr r0, _08136508 @ =0x0000040C
	adds r3, r5, r0
_081363EC:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0813641E
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0813641E
	adds r1, r2, #0
	adds r1, #0xf2
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0xef
	strb r1, [r0]
_0813641E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _081363EC
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r4, sl
	ldr r0, [r4]
	mov r7, sb
	str r7, [r0, #8]
_08136442:
	ldr r0, _0813650C @ =0x00000412
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r3, r5, r2
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08136486
	ldrh r1, [r1]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r5, r4
	ldrh r0, [r0]
	movs r7, #0x96
	lsls r7, r7, #1
	adds r0, r0, r7
	cmp r1, r0
	blt _08136486
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08136510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136514 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08136486:
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r5, r7
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08136510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136514 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_081364E4:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136504: .4byte gUnk_08D61B6C
_08136508: .4byte 0x0000040C
_0813650C: .4byte 0x00000412
_08136510: .4byte gCurTask
_08136514: .4byte sub_081366B8

	thumb_func_start sub_08136518
sub_08136518: @ 0x08136518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08136540 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813654C
	.align 2, 0
_08136540: .4byte gCurTask
_08136544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813654C:
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	mov r8, r0
	ldr r1, _08136694 @ =gUnk_0837EFC8
	mov sl, r1
	ldr r2, _08136698 @ =gLanguage
	mov sb, r2
_0813655C:
	movs r0, #0xec
	mov r4, r8
	muls r4, r0, r4
	adds r0, r6, r4
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0813659E
	ldr r3, _0813669C @ =0x0000FFFE
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0813659E
	ldr r0, _081366A0 @ =0x00000239
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r6, r0
	mov r1, r8
	movs r2, #1
	bl sub_08136F3C
_0813659E:
	movs r0, #0xec
	mov r7, r8
	muls r7, r0, r7
	adds r5, r6, r7
	adds r4, r5, #0
	adds r4, #0xec
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081365F2
	ldr r2, _081366A4 @ =0x0000FFEF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _081366A0 @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _081366A8 @ =0x0000023A
	bl m4aSongNumStart
	adds r2, r5, #0
	adds r2, #0x10
	mov r3, sb
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xc]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xe]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_081365F2:
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0813661C
	ldr r2, _081366AC @ =0x0000FFDF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r6, r0
	bl sub_0813773C
	ldr r3, [sp]
	cmp r3, #0
	bne _0813661C
	movs r0, #1
	str r0, [sp]
	bl sub_081377D4
_0813661C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _0813655C
	adds r0, r6, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r3, #0xb1
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	ldr r0, _081366B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081366B4 @ =sub_08137498
	str r0, [r1, #8]
_08136672:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r6, r2
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136694: .4byte gUnk_0837EFC8
_08136698: .4byte gLanguage
_0813669C: .4byte 0x0000FFFE
_081366A0: .4byte 0x00000239
_081366A4: .4byte 0x0000FFEF
_081366A8: .4byte 0x0000023A
_081366AC: .4byte 0x0000FFDF
_081366B0: .4byte gCurTask
_081366B4: .4byte sub_08137498

	thumb_func_start sub_081366B8
sub_081366B8: @ 0x081366B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _081366DC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081366E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081366E8
	.align 2, 0
_081366DC: .4byte gCurTask
_081366E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081366E8:
	adds r6, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _081366F4
	b _08136806
_081366F4:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0xdc
	movs r0, #0xee
	adds r0, r0, r6
	mov r8, r0
_08136700:
	movs r0, #0xec
	muls r0, r5, r0
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08136714
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_08136714:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08136700
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #7
	bhi _08136746
	movs r1, #0xed
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08136746
	adds r1, #0xec
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08136746
	adds r1, #0xec
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bls _08136758
_08136746:
	ldr r0, _08136750 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136754 @ =sub_0813683C
	str r0, [r1, #8]
	b _08136806
	.align 2, 0
_08136750: .4byte gCurTask
_08136754: .4byte sub_0813683C
_08136758:
	ldr r0, _08136824 @ =0x0000041A
	adds r2, r6, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0813676E
	movs r0, #7
	strb r0, [r2]
_0813676E:
	ldr r0, _08136828 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0813682C @ =sub_081358EC
	str r0, [r1, #8]
	movs r5, #0
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
	ldr r0, _08136830 @ =gUnk_0837EFC8
	mov r8, r0
	ldr r7, _08136834 @ =gLanguage
	adds r1, #0x18
	adds r1, r1, r6
	mov sl, r1
	mov sb, r2
_0813678C:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r6, r0
	adds r4, r3, #0
	adds r4, #0xe0
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _081367D0
	ldr r0, _08136838 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r4]
	adds r2, r3, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r3, #0
	adds r0, #0x2f
	strb r5, [r0]
_081367D0:
	mov r1, sl
	ldrh r0, [r1]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _081367FC
	mov r0, sb
	strb r1, [r0]
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081367FC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081367FC
	mov r0, ip
	orrs r0, r1
	strh r0, [r4]
_081367FC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0813678C
_08136806:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136824: .4byte 0x0000041A
_08136828: .4byte gCurTask
_0813682C: .4byte sub_081358EC
_08136830: .4byte gUnk_0837EFC8
_08136834: .4byte gLanguage
_08136838: .4byte 0x0000FBFF

	thumb_func_start sub_0813683C
sub_0813683C: @ 0x0813683C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08136860 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136864
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813686C
	.align 2, 0
_08136860: .4byte gCurTask
_08136864:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813686C:
	adds r5, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _08136878
	b _08136A1A
_08136878:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	adds r0, r5, #0
	bl sub_08137204
	movs r0, #0
	mov sb, r0
	ldr r7, _08136920 @ =gLanguage
	movs r1, #0xff
	mov sl, r1
	ldr r2, _08136924 @ =gUnk_0837EFC8
	mov r8, r2
_08136896:
	movs r0, #0xec
	mov r6, sb
	muls r6, r0, r6
	adds r4, r6, r5
	adds r2, r4, #0
	adds r2, #0x98
	adds r3, r4, #0
	adds r3, #0xf8
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08136928 @ =gUnk_0837F170
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08136928 @ =gUnk_0837F170
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	adds r2, #0x48
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	mov r2, sb
	strb r2, [r0]
	ldrb r0, [r3]
	cmp r0, #0
	bne _0813692C
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #0x16]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r5, #0
	adds r1, #0x3c
	adds r1, r1, r6
	ldr r0, [r1]
	subs r0, #0x30
	str r0, [r1]
	b _0813699C
	.align 2, 0
_08136920: .4byte gLanguage
_08136924: .4byte gUnk_0837EFC8
_08136928: .4byte gUnk_0837F170
_0813692C:
	cmp r0, #3
	bne _0813695A
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #0x12]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	b _0813699C
_0813695A:
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x44
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0813699C:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _081369AC
	b _08136896
_081369AC:
	ldr r1, _081369F8 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08136A0C
	adds r0, r1, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #8
	bne _08136A04
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r3, _081369FC @ =0x000002C6
	adds r2, r5, r3
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r2, _08136A00 @ =0x000003B2
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #8
	bne _08136A04
	movs r0, #0x22
	bl m4aSongNumStart
	b _08136A12
	.align 2, 0
_081369F8: .4byte 0x0000041D
_081369FC: .4byte 0x000002C6
_08136A00: .4byte 0x000003B2
_08136A04:
	movs r0, #0x21
	bl m4aSongNumStart
	b _08136A12
_08136A0C:
	movs r0, #0x24
	bl m4aSongNumStart
_08136A12:
	ldr r0, _08136A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136A3C @ =sub_08136A40
	str r0, [r1, #8]
_08136A1A:
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r5, r3
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136A38: .4byte gCurTask
_08136A3C: .4byte sub_08136A40

	thumb_func_start sub_08136A40
sub_08136A40: @ 0x08136A40
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08136A60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136A64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136A6C
	.align 2, 0
_08136A60: .4byte gCurTask
_08136A64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136A6C:
	adds r5, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _08136A78
	b _08136BBC
_08136A78:
	ldr r2, [r5]
	cmp r2, #0
	bne _08136B44
	ldr r0, _08136A94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136A9C
	ldr r0, _08136A98 @ =gUnk_020382D0
	ldrh r2, [r0, #0x10]
	ldrh r1, [r0, #8]
	b _08136AA4
	.align 2, 0
_08136A94: .4byte gUnk_0203AD10
_08136A98: .4byte gUnk_020382D0
_08136A9C:
	ldr r0, _08136ACC @ =gPressedKeys
	ldrh r2, [r0]
	ldr r0, _08136AD0 @ =gInput
	ldrh r1, [r0]
_08136AA4:
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08136B0C
	ldr r0, _08136AD4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	cmp r2, #0
	beq _08136AE0
	ldr r0, _08136AD8 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08136ADC @ =gUnk_0837EF38
	adds r0, r0, r1
	movs r1, #0x82
	str r1, [sp]
	str r3, [sp, #4]
	b _08136AF4
	.align 2, 0
_08136ACC: .4byte gPressedKeys
_08136AD0: .4byte gInput
_08136AD4: .4byte gUnk_0203AD3C
_08136AD8: .4byte gLanguage
_08136ADC: .4byte gUnk_0837EF38
_08136AE0:
	ldr r0, _08136B04 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08136B08 @ =gUnk_0837EF38
	adds r0, r0, r1
	movs r1, #0x82
	str r1, [sp]
	str r2, [sp, #4]
_08136AF4:
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08128F44
	str r0, [r5]
	b _08136BBC
	.align 2, 0
_08136B04: .4byte gLanguage
_08136B08: .4byte gUnk_0837EF38
_08136B0C:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08136BBC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08136B28
	ldr r0, _08136B24 @ =0x00000416
	adds r1, r5, r0
	b _08136B36
	.align 2, 0
_08136B24: .4byte 0x00000416
_08136B28:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08136BBC
	ldr r2, _08136B40 @ =0x00000417
	adds r1, r5, r2
_08136B36:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08136BBC
	.align 2, 0
_08136B40: .4byte 0x00000417
_08136B44:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136B5A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08136B62
_08136B5A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08136B62:
	adds r0, r4, #0
	bl sub_0812A328
	cmp r0, #0
	beq _08136BBC
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	ldr r1, _08136B9C @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08136BA0 @ =0x0000041C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136BAC
	ldr r0, _08136BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136BA8 @ =sub_081374E8
	str r0, [r1, #8]
	b _08136BBC
	.align 2, 0
_08136B9C: .4byte 0x000002AD
_08136BA0: .4byte 0x0000041C
_08136BA4: .4byte gCurTask
_08136BA8: .4byte sub_081374E8
_08136BAC:
	ldr r0, _08136BD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136BD8 @ =sub_08136BE4
	str r0, [r1, #8]
	ldr r0, _08136BDC @ =gUnk_0838518C
	ldr r1, _08136BE0 @ =0x0600F000
	bl RLUnCompVram
_08136BBC:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08136BD4: .4byte gCurTask
_08136BD8: .4byte sub_08136BE4
_08136BDC: .4byte gUnk_0838518C
_08136BE0: .4byte 0x0600F000

	thumb_func_start sub_08136BE4
sub_08136BE4: @ 0x08136BE4
	push {r4, r5, lr}
	ldr r0, _08136C00 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136C04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08136C0C
	.align 2, 0
_08136C00: .4byte gCurTask
_08136C04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08136C0C:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _08136C4A
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	str r5, [r4, #0xc]
	ldr r0, _08136C50 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136C3C
	ldr r2, _08136C54 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _08136C58 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08136C3C:
	ldr r1, _08136C5C @ =0x0000041E
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08136C60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136C64 @ =sub_0813754C
	str r0, [r1, #8]
_08136C4A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08136C50: .4byte gUnk_0203AD10
_08136C54: .4byte gUnk_020382D0
_08136C58: .4byte 0x0000FFFD
_08136C5C: .4byte 0x0000041E
_08136C60: .4byte gCurTask
_08136C64: .4byte sub_0813754C

	thumb_func_start sub_08136C68
sub_08136C68: @ 0x08136C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r4, #0
	ldr r0, _08136CC0 @ =0x00000412
	add r0, sl
	mov sb, r0
	ldr r5, _08136CC4 @ =gUnk_020382D0
	movs r1, #0x18
	adds r1, r1, r5
	mov r8, r1
_08136C84:
	movs r0, #0xec
	muls r0, r4, r0
	mov r6, sl
	adds r3, r6, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08136CC8
	adds r0, r3, #0
	adds r0, #0xe8
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r2, #0
	adds r0, #0xe
	ldrh r0, [r0]
	mov r7, sb
	ldrh r7, [r7]
	cmp r0, r7
	bne _08136CB6
	movs r2, #1
_08136CB6:
	adds r0, r3, #0
	adds r0, #0xe4
	strh r2, [r0]
	adds r0, #6
	b _08136D32
	.align 2, 0
_08136CC0: .4byte 0x00000412
_08136CC4: .4byte gUnk_020382D0
_08136CC8:
	ldr r0, _08136D08 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136D0C
	movs r0, #0xe6
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
	lsls r2, r4, #1
	adds r0, r5, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	mov r1, ip
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe4
	strh r1, [r0]
	add r2, r8
	ldrh r1, [r2]
	adds r0, #6
	b _08136D32
	.align 2, 0
_08136D08: .4byte gUnk_0203AD10
_08136D0C:
	ldr r0, _08136D4C @ =gPrevInput
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
	ldr r0, _08136D50 @ =gInput
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0xe6
	strh r0, [r1]
	ldr r0, _08136D54 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe4
	strh r1, [r0]
	ldr r0, _08136D58 @ =gReleasedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xea
_08136D32:
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08136C84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136D4C: .4byte gPrevInput
_08136D50: .4byte gInput
_08136D54: .4byte gPressedKeys
_08136D58: .4byte gReleasedKeys

	thumb_func_start sub_08136D5C
sub_08136D5C: @ 0x08136D5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08136DCC @ =gRngVal
	ldr r0, [r5]
	ldr r1, _08136DD0 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08136DD4 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r2, r0, #0x10
	movs r3, #0xf
	ands r2, r3
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r3
	ldr r3, _08136DD8 @ =gUnk_0837F408
	ldr r4, _08136DDC @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08136DEC
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08136DE0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	subs r4, #0x3b
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r4, _08136DE4 @ =gUnk_0837F228
	ldr r3, _08136DE8 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x16]
	b _08136E24
	.align 2, 0
_08136DCC: .4byte gRngVal
_08136DD0: .4byte 0x00196225
_08136DD4: .4byte 0x3C6EF35F
_08136DD8: .4byte gUnk_0837F408
_08136DDC: .4byte 0x0000041A
_08136DE0: .4byte 0x0000FFFE
_08136DE4: .4byte gUnk_0837F228
_08136DE8: .4byte gLanguage
_08136DEC:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r2, r6, r4
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08136E30 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	subs r4, #0x58
	adds r2, r6, r4
	ldr r4, _08136E34 @ =gUnk_0837F228
	ldr r3, _08136E38 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #2]
_08136E24:
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08136E30: .4byte 0x000003DF
_08136E34: .4byte gUnk_0837F228
_08136E38: .4byte gLanguage

	thumb_func_start sub_08136E3C
sub_08136E3C: @ 0x08136E3C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08136E5C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08136E60
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08136E68
	.align 2, 0
_08136E5C: .4byte gCurTask
_08136E60:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08136E68:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08136E82
	cmp r0, #0x37
	bne _08136EBC
	ldr r0, [r6]
	bl sub_08137E24
	b _08136EBC
_08136E82:
	ldr r3, [r6]
	ldr r4, _08136EC4 @ =gUnk_0837EFC8
	ldr r2, _08136EC8 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x10]
	movs r5, #0
	strh r0, [r3, #0xc]
	ldr r3, [r6]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x12]
	strb r0, [r3, #0x1a]
	ldr r1, [r6]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #0x1f]
	strb r5, [r6, #4]
	ldr r1, [r7]
	ldr r0, _08136ECC @ =sub_08136ED0
	str r0, [r1, #8]
_08136EBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136EC4: .4byte gUnk_0837EFC8
_08136EC8: .4byte gLanguage
_08136ECC: .4byte sub_08136ED0

	thumb_func_start sub_08136ED0
sub_08136ED0: @ 0x08136ED0
	push {r4, r5, lr}
	ldr r2, _08136EF0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08136EF4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136EFC
	.align 2, 0
_08136EF0: .4byte gCurTask
_08136EF4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136EFC:
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0x15
	bhi _08136F1C
	ldr r2, [r4]
	ldr r1, _08136F18 @ =gUnk_0837F210
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _08136F2E
	.align 2, 0
_08136F18: .4byte gUnk_0837F210
_08136F1C:
	ldr r1, [r4]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x40
	orrs r0, r2
	strh r0, [r1]
	ldr r0, [r5]
	bl TaskDestroy
_08136F2E:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08136F3C
sub_08136F3C: @ 0x08136F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r0, _08136F80 @ =sub_08137190
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136F84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136F8C
	.align 2, 0
_08136F80: .4byte sub_08137190
_08136F84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136F8C:
	adds r5, r0, #0
	str r4, [r5, #0x54]
	adds r0, r4, #0
	adds r0, #0xdf
	ldrb r7, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08136FA2
	adds r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08136FA2:
	ldr r2, _081370A4 @ =gUnk_0837EFC8
	ldr r1, _081370A8 @ =gLanguage
	mov r8, r1
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	movs r6, #0
	strh r0, [r4, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	str r4, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	str r2, [sp, #0x10]
	movs r1, #2
	strh r1, [r2]
	ldr r2, _081370AC @ =gUnk_0837F318
	mov r4, sb
	lsls r3, r4, #1
	lsls r4, r4, #3
	mov ip, r4
	add ip, r2
	mov r0, ip
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x4c]
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	str r3, [sp, #0xc]
	cmp r4, #0
	beq _081370BC
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081370B0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081370B4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _081370B8 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x23
	movs r0, #7
	strb r0, [r4]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	adds r3, r4, #0
	b _0813713C
	.align 2, 0
_081370A4: .4byte gUnk_0837EFC8
_081370A8: .4byte gLanguage
_081370AC: .4byte gUnk_0837F318
_081370B0: .4byte 0x05000011
_081370B4: .4byte 0x06010000
_081370B8: .4byte gUnk_0837F228
_081370BC:
	str r4, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0813717C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137180 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _08137184 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x23
	movs r0, #7
	strb r0, [r3]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_0813713C:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08137146
	movs r0, #5
	strb r0, [r3]
_08137146:
	ldr r0, [r5, #0xc]
	ldr r1, _08137188 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r1, _0813718C @ =gUnk_0837F338
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813717C: .4byte 0x05000011
_08137180: .4byte 0x06010000
_08137184: .4byte gUnk_0837F228
_08137188: .4byte 0xFFFFCFFF
_0813718C: .4byte gUnk_0837F338

	thumb_func_start sub_08137190
sub_08137190: @ 0x08137190
	push {r4, lr}
	ldr r0, _081371AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081371B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081371B8
	.align 2, 0
_081371AC: .4byte gCurTask
_081371B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081371B8:
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _081371C6
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_081371C6:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _081371D2
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_081371D2:
	adds r0, r4, #0
	bl sub_0812A2C0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _081371F8
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _081371F8
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08137200 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081371F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137200: .4byte gCurTask

	thumb_func_start sub_08137204
sub_08137204: @ 0x08137204
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	adds r0, #0xee
	ldrb r0, [r0]
	strb r0, [r1]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r0, #0
	mov r8, r0
	mov r2, sp
_08137238:
	movs r1, #0
	mov ip, r1
	ldrb r4, [r2]
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137250
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _08137256
	b _0813725A
_08137250:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _0813725A
_08137256:
	ldrb r0, [r2, #1]
	b _08137264
_0813725A:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813726A
	ldrb r0, [r2, #2]
_08137264:
	cmp r4, r0
	bgt _08137270
	b _08137274
_0813726A:
	ldrb r0, [r2, #3]
	cmp r4, r0
	ble _08137274
_08137270:
	ldrb r0, [r2]
	b _0813729E
_08137274:
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137286
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _0813728C
	b _08137290
_08137286:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _08137290
_0813728C:
	ldrb r0, [r2, #1]
	b _0813729E
_08137290:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813729C
	ldrb r0, [r2, #2]
	b _0813729E
_0813729C:
	ldrb r0, [r2, #3]
_0813729E:
	adds r5, r0, #0
	movs r3, #0
	mov sb, r3
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r6, r0
	movs r7, #0xec
_081372AC:
	adds r0, r3, #0
	muls r0, r7, r0
	adds r0, r6, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp r5, r1
	bne _081372DC
	adds r0, #0xf8
	mov r1, r8
	strb r1, [r0]
	mov r0, r8
	add r0, ip
	adds r0, r4, r0
	strb r3, [r0]
	mov r1, sp
	adds r0, r1, r3
	mov r1, sb
	strb r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_081372DC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081372AC
	mov r0, r8
	add r0, ip
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08137238
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137304
sub_08137304: @ 0x08137304
	push {r4, r5, r6, lr}
	ldr r2, _08137324 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08137328
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08137330
	.align 2, 0
_08137324: .4byte gCurTask
_08137328:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08137330:
	ldr r4, _0813739C @ =gBgScrollRegs
	ldr r2, _081373A0 @ =gUnk_0837F488
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r1, _081373A4 @ =gUnk_0837F497
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #2]
	adds r0, r0, r6
	strh r0, [r4, #2]
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #6]
	adds r0, r0, r6
	strh r0, [r4, #6]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08137394
	movs r0, #8
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [r5]
	bl TaskDestroy
_08137394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813739C: .4byte gBgScrollRegs
_081373A0: .4byte gUnk_0837F488
_081373A4: .4byte gUnk_0837F497

	thumb_func_start sub_081373A8
sub_081373A8: @ 0x081373A8
	push {r4, r5, lr}
	ldr r2, _081373C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _081373CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081373D4
	.align 2, 0
_081373C8: .4byte gCurTask
_081373CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081373D4:
	ldr r3, _08137414 @ =gBgScrollRegs
	ldr r1, _08137418 @ =gUnk_0837F4A6
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #0
	strh r0, [r3, #8]
	ldr r1, _0813741C @ =gUnk_0837F4B5
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0xa]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813740C
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
_0813740C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137414: .4byte gBgScrollRegs
_08137418: .4byte gUnk_0837F4A6
_0813741C: .4byte gUnk_0837F4B5

	thumb_func_start sub_08137420
sub_08137420: @ 0x08137420
	push {r4, lr}
	ldr r0, _0813743C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137440
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137448
	.align 2, 0
_0813743C: .4byte gCurTask
_08137440:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137448:
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_081386A8
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137470
	ldr r0, _08137468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0813746C @ =sub_08135B38
	b _08137476
	.align 2, 0
_08137468: .4byte gCurTask
_0813746C: .4byte sub_08135B38
_08137470:
	ldr r0, _08137490 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137494 @ =sub_081361B4
_08137476:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137490: .4byte gCurTask
_08137494: .4byte sub_081361B4

	thumb_func_start sub_08137498
sub_08137498: @ 0x08137498
	push {r4, lr}
	ldr r2, _081374B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081374B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081374C0
	.align 2, 0
_081374B4: .4byte gCurTask
_081374B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081374C0:
	ldr r0, [r2]
	ldr r1, _081374E4 @ =sub_081366B8
	str r1, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081374E4: .4byte sub_081366B8

	thumb_func_start sub_081374E8
sub_081374E8: @ 0x081374E8
	push {r4, r5, lr}
	ldr r0, _08137504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137508
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137510
	.align 2, 0
_08137504: .4byte gCurTask
_08137508:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137510:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _0813752E
	bl m4aMPlayAllStop
	ldr r0, _08137544 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137548 @ =sub_08134E54
	str r0, [r1, #8]
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
_0813752E:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137544: .4byte gCurTask
_08137548: .4byte sub_08134E54

	thumb_func_start sub_0813754C
sub_0813754C: @ 0x0813754C
	push {r4, lr}
	ldr r2, _0813756C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137578
	.align 2, 0
_0813756C: .4byte gCurTask
_08137570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137578:
	ldr r1, _081375B0 @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _081375AA
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _081375B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081375A4
	bl sub_08031CC8
	bl sub_081589E8
_081375A4:
	movs r0, #0
	bl sub_08138D64
_081375AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081375B0: .4byte 0x0000041E
_081375B4: .4byte gUnk_0203AD10

	thumb_func_start nullsub_128
nullsub_128: @ 0x081375B8
	bx lr
	.align 2, 0

	thumb_func_start sub_081375BC
sub_081375BC: @ 0x081375BC
	push {r4, r5, lr}
	ldr r4, _081375FC @ =gRngVal
	ldr r2, [r4]
	ldr r1, _08137600 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _08137604 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _08137608 @ =gUnk_0837F388
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _0813760C @ =0x0000041C
	adds r1, r0, r5
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r2, r2, r1
	adds r2, r2, r4
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsrs r3, r3, #2
	movs r1, #0xf
	ands r3, r1
	adds r2, r2, r3
	subs r5, #0xc
	adds r0, r0, r5
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081375FC: .4byte gRngVal
_08137600: .4byte 0x00196225
_08137604: .4byte 0x3C6EF35F
_08137608: .4byte gUnk_0837F388
_0813760C: .4byte 0x0000041C

	thumb_func_start sub_08137610
sub_08137610: @ 0x08137610
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137652
	ldr r2, _08137658 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813765C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08137660 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _08137664 @ =gUnk_0837F348
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xe4
	strh r0, [r1]
_08137652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137658: .4byte gRngVal
_0813765C: .4byte 0x00196225
_08137660: .4byte 0x3C6EF35F
_08137664: .4byte gUnk_0837F348

	thumb_func_start sub_08137668
sub_08137668: @ 0x08137668
	push {lr}
	sub sp, #4
	ldr r0, _08137698 @ =sub_081376E4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813769C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081376A4
	.align 2, 0
_08137698: .4byte sub_081376E4
_0813769C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081376A4:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _081376D0 @ =gUnk_03000530
	str r1, [r0]
	ldr r3, _081376D4 @ =gUnk_03002470
	ldr r2, _081376D8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _081376DC @ =sub_081378BC
	str r1, [r0]
	ldr r2, _081376E0 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_081376D0: .4byte gUnk_03000530
_081376D4: .4byte gUnk_03002470
_081376D8: .4byte gUnk_03006070
_081376DC: .4byte sub_081378BC
_081376E0: .4byte gMainFlags

	thumb_func_start sub_081376E4
sub_081376E4: @ 0x081376E4
	push {r4, lr}
	ldr r2, _08137704 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137708
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137710
	.align 2, 0
_08137704: .4byte gCurTask
_08137708:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137710:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0813772E
	ldr r2, _08137734 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08137738 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
_0813772E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137734: .4byte gDispCnt
_08137738: .4byte 0x0000FBFF

	thumb_func_start sub_0813773C
sub_0813773C: @ 0x0813773C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0813776C @ =sub_08136E3C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137770
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137778
	.align 2, 0
_0813776C: .4byte sub_08136E3C
_08137770:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137778:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137788
sub_08137788: @ 0x08137788
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_0813778E:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_081288DC
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081377B2
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_081288DC
_081377B2:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081377C4
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_081288DC
_081377C4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813778E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081377D4
sub_081377D4: @ 0x081377D4
	push {lr}
	sub sp, #4
	ldr r0, _08137804 @ =sub_0813781C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137808
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137810
	.align 2, 0
_08137804: .4byte sub_0813781C
_08137808:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137810:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813781C
sub_0813781C: @ 0x0813781C
	push {r4, lr}
	ldr r0, _08137838 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813783C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137844
	.align 2, 0
_08137838: .4byte gCurTask
_0813783C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137844:
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _0813785E
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _0813786C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137870 @ =sub_08137304
	str r0, [r1, #8]
_0813785E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813786C: .4byte gCurTask
_08137870: .4byte sub_08137304

	thumb_func_start sub_08137874
sub_08137874: @ 0x08137874
	push {lr}
	sub sp, #4
	ldr r0, _081378A4 @ =sub_081373A8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081378A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081378B0
	.align 2, 0
_081378A4: .4byte sub_081373A8
_081378A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081378B0:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081378BC
sub_081378BC: @ 0x081378BC
	push {lr}
	ldr r0, _081378CC @ =gUnk_083850A4
	ldr r1, _081378D0 @ =0x0600F000
	bl RLUnCompVram
	pop {r0}
	bx r0
	.align 2, 0
_081378CC: .4byte gUnk_083850A4
_081378D0: .4byte 0x0600F000

	thumb_func_start sub_081378D4
sub_081378D4: @ 0x081378D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137908 @ =sub_08137A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813790C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137914
	.align 2, 0
_08137908: .4byte sub_08137A80
_0813790C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137914:
	adds r5, r0, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08137930 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137964
	lsls r0, r0, #2
	ldr r1, _08137934 @ =_08137938
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137930: .4byte gLanguage
_08137934: .4byte _08137938
_08137938: @ jump table
	.4byte _08137950 @ case 0
	.4byte _08137950 @ case 1
	.4byte _08137950 @ case 2
	.4byte _08137950 @ case 3
	.4byte _08137950 @ case 4
	.4byte _08137950 @ case 5
_08137950:
	ldr r0, _081379F8 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081379FC @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08137964:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137A08
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A00 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A04 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137A60
	.align 2, 0
_081379F8: .4byte 0xFFFF0000
_081379FC: .4byte 0xFF00FFFF
_08137A00: .4byte 0x05000011
_08137A04: .4byte 0x06010000
_08137A08:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A78 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A7C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137A60:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137A78: .4byte 0x05000011
_08137A7C: .4byte 0x06010000

	thumb_func_start sub_08137A80
sub_08137A80: @ 0x08137A80
	push {r4, lr}
	ldr r0, _08137A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137AA8
	.align 2, 0
_08137A9C: .4byte gCurTask
_08137AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137AA8:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08137AC8
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08137AC8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137AEE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08137AE6
	subs r0, #1
	strh r0, [r1]
	b _08137AEE
_08137AE6:
	ldr r0, _08137AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08137AEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137AF4: .4byte gCurTask

	thumb_func_start sub_08137AF8
sub_08137AF8: @ 0x08137AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137B2C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137B30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137B38
	.align 2, 0
_08137B2C: .4byte sub_08128980
_08137B30:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137B38:
	adds r5, r0, #0
	ldr r0, _08137B4C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137B80
	lsls r0, r0, #2
	ldr r1, _08137B50 @ =_08137B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137B4C: .4byte gLanguage
_08137B50: .4byte _08137B54
_08137B54: @ jump table
	.4byte _08137B6C @ case 0
	.4byte _08137B6C @ case 1
	.4byte _08137B6C @ case 2
	.4byte _08137B6C @ case 3
	.4byte _08137B6C @ case 4
	.4byte _08137B6C @ case 5
_08137B6C:
	ldr r0, _08137C14 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08137C18 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08137B80:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137C24
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C20 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137C7C
	.align 2, 0
_08137C14: .4byte 0xFFFF0000
_08137C18: .4byte 0xFF00FFFF
_08137C1C: .4byte 0x05000011
_08137C20: .4byte 0x06010000
_08137C24:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C90 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C94 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137C7C:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137C90: .4byte 0x05000011
_08137C94: .4byte 0x06010000

	thumb_func_start sub_08137C98
sub_08137C98: @ 0x08137C98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08137CC8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137CCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137CD4
	.align 2, 0
_08137CC8: .4byte sub_08128980
_08137CCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137CD4:
	adds r4, r0, #0
	ldr r0, _08137CE8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137D16
	lsls r0, r0, #2
	ldr r1, _08137CEC @ =_08137CF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137CE8: .4byte gLanguage
_08137CEC: .4byte _08137CF0
_08137CF0: @ jump table
	.4byte _08137D08 @ case 0
	.4byte _08137D08 @ case 1
	.4byte _08137D08 @ case 2
	.4byte _08137D08 @ case 3
	.4byte _08137D08 @ case 4
	.4byte _08137D08 @ case 5
_08137D08:
	ldr r0, _08137DAC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08137DB0 @ =0xFF00FFFF
	ands r5, r0
_08137D16:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137DBC
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137DB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137DB8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08137E14
	.align 2, 0
_08137DAC: .4byte 0xFFFF0000
_08137DB0: .4byte 0xFF00FFFF
_08137DB4: .4byte 0x05000011
_08137DB8: .4byte 0x06010000
_08137DBC:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137E1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137E20 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08137E14:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137E1C: .4byte 0x05000011
_08137E20: .4byte 0x06010000

	thumb_func_start sub_08137E24
sub_08137E24: @ 0x08137E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137E58 @ =sub_08137FC8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137E5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137E64
	.align 2, 0
_08137E58: .4byte sub_08137FC8
_08137E5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137E64:
	adds r5, r0, #0
	mov r0, r8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08137E88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137EB4
	lsls r0, r0, #2
	ldr r1, _08137E8C @ =_08137E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137E88: .4byte gLanguage
_08137E8C: .4byte _08137E90
_08137E90: @ jump table
	.4byte _08137EA8 @ case 0
	.4byte _08137EA8 @ case 1
	.4byte _08137EA8 @ case 2
	.4byte _08137EA8 @ case 3
	.4byte _08137EA8 @ case 4
	.4byte _08137EA8 @ case 5
_08137EA8:
	ldr r0, _08137F44 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _08137F48 @ =0x0000036A
	orrs r4, r0
	ldr r0, _08137F4C @ =0xFF00FFFF
	ands r4, r0
_08137EB4:
	mov r1, r8
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137F58
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137F50 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137F54 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137FAE
	.align 2, 0
_08137F44: .4byte 0xFFFF0000
_08137F48: .4byte 0x0000036A
_08137F4C: .4byte 0xFF00FFFF
_08137F50: .4byte 0x05000011
_08137F54: .4byte 0x06010000
_08137F58:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137FC0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137FC4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137FAE:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137FC0: .4byte 0x05000011
_08137FC4: .4byte 0x06010000

	thumb_func_start sub_08137FC8
sub_08137FC8: @ 0x08137FC8
	push {r4, r5, lr}
	ldr r0, _08137FE4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137FF0
	.align 2, 0
_08137FE4: .4byte gCurTask
_08137FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137FF0:
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0812A2C0
	movs r0, #0x59
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne _0813802C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r3, [r2]
	b _081380B4
_0813802C:
	cmp r3, #1
	bne _0813809C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08138068 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081380B4
	lsls r0, r0, #2
	ldr r1, _0813806C @ =_08138070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138068: .4byte gLanguage
_0813806C: .4byte _08138070
_08138070: @ jump table
	.4byte _08138088 @ case 0
	.4byte _08138088 @ case 1
	.4byte _08138088 @ case 2
	.4byte _08138088 @ case 3
	.4byte _08138088 @ case 4
	.4byte _08138088 @ case 5
_08138088:
	ldr r0, _08138098 @ =0x0000036A
	strh r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	b _081380B4
	.align 2, 0
_08138098: .4byte 0x0000036A
_0813809C:
	cmp r3, #2
	bne _081380B4
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081380B4
	ldr r0, _081380BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081380B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081380BC: .4byte gCurTask

	thumb_func_start sub_081380C0
sub_081380C0: @ 0x081380C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	ldr r0, _08138100 @ =sub_0813870C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138104
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813810E
	.align 2, 0
_08138100: .4byte sub_0813870C
_08138104:
	mov r2, r8
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813810E:
	adds r5, r0, #0
	ldr r0, _08138124 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08138150
	lsls r0, r0, #2
	ldr r1, _08138128 @ =_0813812C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138124: .4byte gLanguage
_08138128: .4byte _0813812C
_0813812C: @ jump table
	.4byte _08138144 @ case 0
	.4byte _08138144 @ case 1
	.4byte _08138144 @ case 2
	.4byte _08138144 @ case 3
	.4byte _08138144 @ case 4
	.4byte _08138144 @ case 5
_08138144:
	ldr r0, _081381E0 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081381E4 @ =0x00000369
	orrs r4, r0
	ldr r0, _081381E8 @ =0xFF00FFFF
	ands r4, r0
_08138150:
	mov r0, sb
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	mov r2, sl
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081381F4
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081381EC @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081381F0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813824A
	.align 2, 0
_081381E0: .4byte 0xFFFF0000
_081381E4: .4byte 0x00000369
_081381E8: .4byte 0xFF00FFFF
_081381EC: .4byte 0x05000011
_081381F0: .4byte 0x06010000
_081381F4:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138290 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138294 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813824A:
	mov r4, sb
	ldr r0, [r4, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08138298 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _0813829C @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x54
	strb r3, [r0]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08138290: .4byte 0x05000011
_08138294: .4byte 0x06010000
_08138298: .4byte 0xFFFFCFFF
_0813829C: .4byte 0x0000F83F

	thumb_func_start sub_081382A0
sub_081382A0: @ 0x081382A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _081382D8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081382DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081382E4
	.align 2, 0
_081382D8: .4byte sub_08128980
_081382DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081382E4:
	adds r5, r0, #0
	ldr r0, _081382F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813832A
	lsls r0, r0, #2
	ldr r1, _081382FC @ =_08138300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081382F8: .4byte gLanguage
_081382FC: .4byte _08138300
_08138300: @ jump table
	.4byte _08138318 @ case 0
	.4byte _08138318 @ case 1
	.4byte _08138318 @ case 2
	.4byte _08138318 @ case 3
	.4byte _08138318 @ case 4
	.4byte _08138318 @ case 5
_08138318:
	ldr r0, _081383B8 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081383BC @ =0x0000036A
	orrs r4, r0
	ldr r0, _081383C0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r4, r0
_0813832A:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r6, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081383CC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081383C4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081383C8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08138422
	.align 2, 0
_081383B8: .4byte 0xFFFF0000
_081383BC: .4byte 0x0000036A
_081383C0: .4byte 0xFF00FFFF
_081383C4: .4byte 0x05000011
_081383C8: .4byte 0x06010000
_081383CC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138430 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138434 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08138422:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138430: .4byte 0x05000011
_08138434: .4byte 0x06010000

	thumb_func_start sub_08138438
sub_08138438: @ 0x08138438
	push {r4, r5, lr}
	ldr r0, _08138454 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138458
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138460
	.align 2, 0
_08138454: .4byte gCurTask
_08138458:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138460:
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0813850C
	ldr r2, _081384A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081384A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081384A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _081384AC @ =gUnk_083852D0
	adds r1, r0, r2
	ldrb r5, [r1]
	strb r5, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r0, r3, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384B0
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	adds r0, r5, r0
	b _081384B8
	.align 2, 0
_081384A0: .4byte gRngVal
_081384A4: .4byte 0x00196225
_081384A8: .4byte 0x3C6EF35F
_081384AC: .4byte gUnk_083852D0
_081384B0:
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	subs r0, r5, r0
_081384B8:
	strb r0, [r4]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384D2
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	b _081384DE
_081384D2:
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	subs r1, r1, r0
	strb r1, [r4, #1]
_081384DE:
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_081382A0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0813850C
	ldr r0, _08138508 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08138512
	.align 2, 0
_08138508: .4byte gCurTask
_0813850C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08138512:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08138518
sub_08138518: @ 0x08138518
	push {r4, lr}
	sub sp, #4
	ldr r2, _08138538 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813853C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138544
	.align 2, 0
_08138538: .4byte gCurTask
_0813853C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138544:
	adds r4, r0, #0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08138558
	ldr r0, [r2]
	bl TaskDestroy
	b _081385C6
_08138558:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081385C6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081385C6
	ldr r0, _08138598 @ =sub_08138438
	str r1, [sp]
	movs r1, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813859C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _081385A2
	.align 2, 0
_08138598: .4byte sub_08138438
_0813859C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_081385A2:
	adds r2, r0, r1
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	ldr r2, _081385D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081385D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081385D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_081385C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081385D0: .4byte gRngVal
_081385D4: .4byte 0x00196225
_081385D8: .4byte 0x3C6EF35F

	thumb_func_start sub_081385DC
sub_081385DC: @ 0x081385DC
	push {lr}
	sub sp, #4
	ldr r0, _0813860C @ =sub_08138438
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138610
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08138618
	.align 2, 0
_0813860C: .4byte sub_08138438
_08138610:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08138618:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813862C
sub_0813862C: @ 0x0813862C
	push {lr}
	sub sp, #4
	ldr r0, _0813865C @ =sub_08138518
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138668
	.align 2, 0
_0813865C: .4byte sub_08138518
_08138660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138668:
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08138678
sub_08138678: @ 0x08138678
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138692
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813869A
_08138692:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813869A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081386A8
sub_081386A8: @ 0x081386A8
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386C2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386CA
_081386C2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386CA:
	ldrh r1, [r2]
	ldr r0, _081386D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081386D8: .4byte 0x0000FFFD

	thumb_func_start sub_081386DC
sub_081386DC: @ 0x081386DC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386F6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386FE
_081386F6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386FE:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813870C
sub_0813870C: @ 0x0813870C
	push {lr}
	ldr r0, _08138728 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813872C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138734
	.align 2, 0
_08138728: .4byte gCurTask
_0813872C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138734:
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0813874A
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0813874A:
	adds r0, r1, #0
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start nullsub_129
nullsub_129: @ 0x08138754
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08138758
	bx lr
	.align 2, 0

	thumb_func_start nullsub_131
nullsub_131: @ 0x0813875C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_132
nullsub_132: @ 0x08138760
	bx lr
	.align 2, 0

	thumb_func_start sub_08138764
sub_08138764: @ 0x08138764
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r1, #0
	cmp r1, r4
	bhs _081387A4
	movs r7, #0xf
_08138776:
	adds r2, r5, r1
	subs r0, r4, r1
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r7, #0
	lsls r3, r0
	ands r3, r6
	asrs r3, r0
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x39
	bls _0813879A
	adds r0, r3, #0
	adds r0, #0x37
	strb r0, [r2]
_0813879A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	blo _08138776
_081387A4:
	adds r1, r5, r1
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

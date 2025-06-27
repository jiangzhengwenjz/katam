	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	

	thumb_func_start sub_08128788
sub_08128788: @ 0x08128788
	push {r4, lr}
	ldr r0, _081287A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081287A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081287B0
	.align 2, 0
_081287A4: .4byte gCurTask
_081287A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081287B0:
	adds r4, r0, #0
	bl sub_0812A304
	cmp r0, #0
	bne _081287E2
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _081287C8
	movs r0, #0
	bl CreatePauseWorldMap
	b _081287D0
_081287C8:
	cmp r0, #1
	bne _081287D0
	bl sub_08124430
_081287D0:
	movs r0, #0x20
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _081287F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081287E2:
	adds r0, r4, #0
	bl sub_08128074
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081287F0: .4byte gCurTask

	thumb_func_start sub_081287F4
sub_081287F4: @ 0x081287F4
	push {r4, lr}
	ldr r0, _08128810 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08128814
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812881C
	.align 2, 0
_08128810: .4byte gCurTask
_08128814:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812881C:
	adds r0, r4, #0
	bl sub_08128074
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0x12
	ble _08128854
	ldr r2, _0812885C @ =gUnk_0203ACC0
	ldr r0, _08128860 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08128864 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08039670
_08128854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812885C: .4byte gUnk_0203ACC0
_08128860: .4byte gUnk_0203AD3C
_08128864: .4byte gCurTask

	thumb_func_start sub_08128868
sub_08128868: @ 0x08128868
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _081288D4 @ =gUnk_08D61220
	lsls r1, r0, #3
	adds r0, r4, #2
	adds r0, r1, r0
	ldrh r3, [r0]
	adds r0, r4, #6
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r3, r0
	bhi _081288C6
	adds r5, r1, #0
	adds r0, r4, #4
	adds r1, r5, r0
	mov ip, r1
	mov sb, r2
	mov r8, r0
	adds r6, r5, r4
_08128892:
	ldrh r2, [r6]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r4, _081288D8 @ =0x0600B800
	adds r0, r0, r4
	adds r1, r1, r0
	adds r3, #1
	mov r7, ip
	ldrh r7, [r7]
	cmp r2, r7
	bhi _081288BE
	movs r0, #0xe1
	lsls r0, r0, #7
	adds r4, r0, #0
	mov r7, r8
	adds r0, r5, r7
_081288B2:
	strh r4, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r0]
	cmp r2, r7
	bls _081288B2
_081288BE:
	mov r0, sb
	ldrh r0, [r0]
	cmp r3, r0
	bls _08128892
_081288C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081288D4: .4byte gUnk_08D61220
_081288D8: .4byte 0x0600B800

	thumb_func_start sub_081288DC
sub_081288DC: @ 0x081288DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081288F4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_081288F4:
	ldrh r2, [r4, #0x34]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08128908
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_08128908:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08128974
	adds r0, r4, #0
	bl sub_0812A254
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0812896E
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	beq _08128944
	ldrh r0, [r4, #0x34]
	ldr r1, _08128940 @ =0x0000FDFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4, #0x34]
	b _08128964
	.align 2, 0
_08128940: .4byte 0x0000FDFF
_08128944:
	ldrh r1, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08128956
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	b _08128964
_08128956:
	ldr r0, _0812897C @ =0x0000FBFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0x34]
_08128964:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0812896E
	bl sub_081288DC
_0812896E:
	adds r0, r4, #0
	bl sub_081564D8
_08128974:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812897C: .4byte 0x0000FBFF

	thumb_func_start sub_08128980
sub_08128980: @ 0x08128980
	push {r4, r5, lr}
	ldr r0, _0812899C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081289A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081289A8
	.align 2, 0
_0812899C: .4byte gCurTask
_081289A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081289A8:
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x48]
	adds r3, r0, r1
	str r3, [r4, #0x48]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x4c]
	adds r2, r0, r1
	str r2, [r4, #0x4c]
	str r3, [r4, #0x2c]
	str r2, [r4, #0x30]
	adds r5, r4, #0
	adds r5, #0x52
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081289DC
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r1, r3, r1
	str r1, [r4, #0x2c]
	ldr r0, [r0, #0x2c]
	adds r0, r2, r0
	str r0, [r4, #0x30]
_081289DC:
	adds r0, r4, #4
	bl sub_081288DC
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08128A0C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _081289FC
	subs r0, #1
	strh r0, [r1]
	b _08128A20
_081289FC:
	ldr r0, _08128A08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08128A20
	.align 2, 0
_08128A08: .4byte gCurTask
_08128A0C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08128A20
	ldr r0, _08128A28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08128A20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08128A28: .4byte gCurTask

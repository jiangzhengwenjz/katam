	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0811C758
sub_0811C758: @ 0x0811C758
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _0811C764 @ =sub_0811C5D8
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0811C764: .4byte sub_0811C5D8

	thumb_func_start sub_0811C768
sub_0811C768: @ 0x0811C768
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811C782
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811C78A
_0811C782:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811C78A:
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r6, [r1]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #2]
	ldrb r7, [r0, #3]
	ldr r1, _0811C7C8 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r1, _0811C7CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r2, #0
	bl ObjectDestroy
	cmp r5, #0
	bne _0811C7B6
	cmp r6, #0xff
	beq _0811C7C2
_0811C7B6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08001678
_0811C7C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C7C8: .4byte gCurLevelInfo
_0811C7CC: .4byte 0x0000065E

	thumb_func_start sub_0811C7D0
sub_0811C7D0: @ 0x0811C7D0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0811C8A8 @ =gCurLevelInfo
	mov ip, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r4, r5, #0
	muls r4, r0, r4
	mov r0, ip
	adds r0, #0x7c
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x84
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x80
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x88
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa0
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa4
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa8
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xac
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	movs r6, #0x10
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _0811C8AC
	mov r0, ip
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x74
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x70
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x78
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	adds r1, r6, #0
	lsls r1, r5
	ldr r2, [r3, #4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0811C8B4
	orrs r2, r1
	str r2, [r3, #4]
	mov r0, ip
	adds r0, #0x90
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x94
	adds r0, r4, r0
	ldr r1, [r3, #0xc]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x98
	adds r0, r4, r0
	ldr r1, [r3, #0x10]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x9c
	adds r0, r4, r0
	ldr r1, [r3, #0x14]
	str r1, [r0]
	b _0811C8B4
	.align 2, 0
_0811C8A8: .4byte gCurLevelInfo
_0811C8AC:
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_0811C8BC
_0811C8B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811C8BC
sub_0811C8BC: @ 0x0811C8BC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r2, #0x10
	lsls r2, r6
	ldr r1, [r3, #4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0811C9BE
	orrs r1, r2
	str r1, [r3, #4]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #8]
	subs r0, r0, r1
	ldr r1, _0811C9C4 @ =0x0000EFFF
	ldr r2, _0811C9C8 @ =gCurLevelInfo
	mov ip, r2
	cmp r0, r1
	ble _0811C91C
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x6c
	adds r4, r1, r0
	subs r0, #0x60
	adds r5, r1, r0
	ldr r0, [r5]
	ldr r7, _0811C9CC @ =0xFFFFF800
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C906
	str r2, [r4]
_0811C906:
	mov r0, ip
	adds r0, #0x74
	adds r2, r1, r0
	ldr r0, [r5]
	movs r4, #0xf8
	lsls r4, r4, #8
	adds r1, r0, r4
	ldr r0, [r2]
	cmp r0, r1
	blt _0811C91C
	str r1, [r2]
_0811C91C:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0xc]
	subs r0, r0, r1
	ldr r1, _0811C9D0 @ =0x00009FFF
	cmp r0, r1
	ble _0811C95E
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x70
	adds r3, r2, r0
	subs r0, #0x60
	adds r4, r2, r0
	ldr r0, [r4]
	ldr r5, _0811C9CC @ =0xFFFFF800
	adds r1, r0, r5
	ldr r0, [r3]
	cmp r0, r1
	bgt _0811C948
	str r1, [r3]
_0811C948:
	mov r0, ip
	adds r0, #0x78
	adds r2, r2, r0
	ldr r0, [r4]
	movs r7, #0xa8
	lsls r7, r7, #8
	adds r1, r0, r7
	ldr r0, [r2]
	cmp r0, r1
	blt _0811C95E
	str r1, [r2]
_0811C95E:
	mov r3, ip
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r4, r1, r0
	subs r0, #0x84
	adds r6, r1, r0
	ldr r0, [r6]
	ldr r7, _0811C9CC @ =0xFFFFF800
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C980
	str r2, [r4]
_0811C980:
	adds r0, r3, #0
	adds r0, #0x94
	adds r4, r1, r0
	subs r0, #0x84
	adds r5, r1, r0
	ldr r0, [r5]
	adds r2, r0, r7
	ldr r0, [r4]
	cmp r0, r2
	bgt _0811C996
	str r2, [r4]
_0811C996:
	adds r0, r3, #0
	adds r0, #0x98
	adds r3, r1, r0
	ldr r0, [r6]
	movs r4, #0xf8
	lsls r4, r4, #8
	adds r2, r0, r4
	ldr r0, [r3]
	cmp r0, r2
	blt _0811C9AC
	str r2, [r3]
_0811C9AC:
	mov r0, ip
	adds r0, #0x9c
	adds r1, r1, r0
	ldr r0, [r5]
	adds r2, r0, r4
	ldr r0, [r1]
	cmp r0, r2
	blt _0811C9BE
	str r2, [r1]
_0811C9BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C9C4: .4byte 0x0000EFFF
_0811C9C8: .4byte gCurLevelInfo
_0811C9CC: .4byte 0xFFFFF800
_0811C9D0: .4byte 0x00009FFF

	thumb_func_start sub_0811C9D4
sub_0811C9D4: @ 0x0811C9D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r7, #0
	strh r7, [r6, #4]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	movs r1, #3
	mov r8, r1
	mov r5, r8
	ands r5, r0
	cmp r5, #1
	beq _0811CA30
	cmp r5, #1
	bgt _0811C9FE
	cmp r5, #0
	beq _0811CA0C
	b _0811CA06
_0811C9FE:
	cmp r5, #2
	beq _0811CA54
	cmp r5, #3
	beq _0811CA78
_0811CA06:
	adds r4, r6, #0
	adds r4, #0x8c
	b _0811CA96
_0811CA0C:
	movs r0, #0x44
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp]
	ldr r2, _0811CA2C @ =0x05000011
	mov r0, sp
	bl CpuSet
	ldr r1, [r4]
	movs r0, #1
	b _0811CA94
	.align 2, 0
_0811CA2C: .4byte 0x05000011
_0811CA30:
	movs r0, #0x54
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #4]
	add r0, sp, #4
	ldr r2, _0811CA50 @ =0x05000015
	bl CpuSet
	ldr r0, [r4]
	str r5, [r0]
	b _0811CA96
	.align 2, 0
_0811CA50: .4byte 0x05000015
_0811CA54:
	movs r0, #0x44
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #8]
	add r0, sp, #8
	ldr r2, _0811CA74 @ =0x05000011
	bl CpuSet
	ldr r0, [r4]
	mov r1, r8
	str r1, [r0]
	b _0811CA96
	.align 2, 0
_0811CA74: .4byte 0x05000011
_0811CA78:
	movs r0, #0x54
	bl EwramMalloc
	adds r1, r0, #0
	adds r4, r6, #0
	adds r4, #0x8c
	str r1, [r4]
	str r7, [sp, #0xc]
	add r0, sp, #0xc
	ldr r2, _0811CB08 @ =0x05000015
	bl CpuSet
	ldr r1, [r4]
	movs r0, #4
_0811CA94:
	str r0, [r1]
_0811CA96:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r2, [r4]
	ldr r3, _0811CB0C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x18]
	adds r0, r3, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x1c]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x20]
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x24]
	adds r0, r3, #0
	adds r0, #0xa0
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x28]
	adds r0, r3, #0
	adds r0, #0xa4
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x2c]
	adds r0, r3, #0
	adds r0, #0xa8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2, #0x30]
	adds r0, r3, #0
	adds r0, #0xac
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x34]
	ldr r2, [r2]
	cmp r2, #2
	beq _0811CB22
	cmp r2, #2
	bhi _0811CB10
	cmp r2, #1
	beq _0811CB1A
	b _0811CB38
	.align 2, 0
_0811CB08: .4byte 0x05000015
_0811CB0C: .4byte gCurLevelInfo
_0811CB10:
	cmp r2, #3
	beq _0811CB2A
	cmp r2, #4
	beq _0811CB32
	b _0811CB38
_0811CB1A:
	adds r0, r6, #0
	bl sub_0811CB44
	b _0811CB38
_0811CB22:
	adds r0, r6, #0
	bl sub_0811CBB8
	b _0811CB38
_0811CB2A:
	adds r0, r6, #0
	bl sub_0811CD1C
	b _0811CB38
_0811CB32:
	adds r0, r6, #0
	bl sub_0811CD90
_0811CB38:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811CB44
sub_0811CB44: @ 0x0811CB44
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r4, [r0]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r2, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r5, r0, #4
	str r5, [r4, #8]
	ldr r0, [r3]
	ldrb r0, [r0, #0x14]
	lsls r2, r0, #0xc
	str r2, [r4, #0xc]
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	ands r1, r0
	lsls r1, r1, #4
	adds r7, r5, r1
	str r7, [r4, #0x10]
	ldr r0, [r3]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r6, r2, r0
	str r6, [r4, #0x14]
	ldr r0, [r3]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811CB9E
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	str r0, [r4, #8]
	adds r0, r2, r1
	str r0, [r4, #0xc]
	adds r0, r7, r1
	str r0, [r4, #0x10]
	adds r1, r6, r1
	str r1, [r4, #0x14]
_0811CB9E:
	ldr r0, _0811CBB4 @ =sub_0811CEF4
	mov r1, ip
	str r0, [r1, #0x78]
	ldr r0, [r4, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CBB4: .4byte sub_0811CEF4

	thumb_func_start sub_0811CBB8
sub_0811CBB8: @ 0x0811CBB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #4
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, [r5]
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #0xc
	mov r0, ip
	str r2, [r0, #0xc]
	ldr r0, [r5]
	ldrh r3, [r0, #0x12]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x10]
	ldr r0, [r5]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x14]
	ldr r2, _0811CC74 @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r5]
	ldrh r1, [r0, #0x18]
	adds r0, r4, #0
	ands r0, r1
	lsrs r0, r0, #4
	mov r6, ip
	adds r6, #0x44
	strh r0, [r6]
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	mov r3, ip
	adds r3, #0x46
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	ands r4, r0
	lsrs r4, r4, #4
	mov r0, ip
	adds r0, #0x48
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	mov r1, ip
	adds r1, #0x4a
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #0
	cmp r0, #0
	blt _0811CC7C
	mov r1, ip
	ldr r3, [r1, #8]
	ldr r2, [r1, #0x10]
	ldrh r0, [r6]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r1, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CC78 @ =0xFFFFF800
	adds r0, r0, r1
	adds r4, r3, #0
	cmp r2, r0
	ble _0811CC98
	b _0811CC94
	.align 2, 0
_0811CC74: .4byte gCurLevelInfo
_0811CC78: .4byte 0xFFFFF800
_0811CC7C:
	ldrh r0, [r6]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #8]
	subs r0, r2, r0
	str r0, [r1, #0x4c]
	ldr r1, _0811CCD8 @ =0x000007FF
	adds r4, r2, #0
	cmp r0, r1
	bgt _0811CC98
	movs r0, #0x80
	lsls r0, r0, #4
_0811CC94:
	mov r1, ip
	str r0, [r1, #0x4c]
_0811CC98:
	mov r0, ip
	adds r0, #0x4a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0811CCE0
	mov r0, ip
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x50]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CCDC @ =0xFFFFE800
	adds r0, r0, r1
	cmp r2, r0
	ble _0811CD00
	b _0811CCFC
	.align 2, 0
_0811CCD8: .4byte 0x000007FF
_0811CCDC: .4byte 0xFFFFE800
_0811CCE0:
	mov r0, ip
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #0xc]
	adds r0, r2, r0
	str r0, [r1, #0x50]
	ldr r1, _0811CD14 @ =0x000007FF
	adds r3, r2, #0
	cmp r0, r1
	bgt _0811CD00
	movs r0, #0x80
	lsls r0, r0, #4
_0811CCFC:
	mov r1, ip
	str r0, [r1, #0x50]
_0811CD00:
	ldr r0, _0811CD18 @ =sub_0811D158
	str r0, [r7, #0x78]
	mov r0, ip
	str r4, [r0, #0x38]
	str r3, [r0, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CD14: .4byte 0x000007FF
_0811CD18: .4byte sub_0811D158

	thumb_func_start sub_0811CD1C
sub_0811CD1C: @ 0x0811CD1C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r0, #0x8c
	ldr r4, [r0]
	mov r3, ip
	adds r3, #0xb0
	ldr r0, [r3]
	ldrh r2, [r0, #0x14]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	lsls r5, r0, #4
	str r5, [r4, #8]
	ldr r0, [r3]
	ldrb r0, [r0, #0x14]
	lsls r2, r0, #0xc
	str r2, [r4, #0xc]
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	ands r1, r0
	lsls r1, r1, #4
	adds r7, r5, r1
	str r7, [r4, #0x10]
	ldr r0, [r3]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r6, r2, r0
	str r6, [r4, #0x14]
	ldr r0, [r3]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811CD76
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	str r0, [r4, #8]
	adds r0, r2, r1
	str r0, [r4, #0xc]
	adds r0, r7, r1
	str r0, [r4, #0x10]
	adds r1, r6, r1
	str r1, [r4, #0x14]
_0811CD76:
	ldr r0, _0811CD8C @ =sub_0811D508
	mov r1, ip
	str r0, [r1, #0x78]
	ldr r0, [r4, #8]
	str r0, [r4, #0x38]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CD8C: .4byte sub_0811D508

	thumb_func_start sub_0811CD90
sub_0811CD90: @ 0x0811CD90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	mov ip, r0
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrh r0, [r0, #0x14]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	lsls r1, r1, #4
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, [r5]
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #0xc
	mov r0, ip
	str r2, [r0, #0xc]
	ldr r0, [r5]
	ldrh r3, [r0, #0x12]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r0, ip
	str r1, [r0, #0x10]
	ldr r0, [r5]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0xc
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x14]
	ldr r2, _0811CE4C @ =gCurLevelInfo
	movs r0, #0x56
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r5]
	ldrh r1, [r0, #0x18]
	adds r0, r4, #0
	ands r0, r1
	lsrs r0, r0, #4
	mov r6, ip
	adds r6, #0x44
	strh r0, [r6]
	ldr r0, [r5]
	ldrh r0, [r0, #0x18]
	mov r3, ip
	adds r3, #0x46
	strb r0, [r3]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	ands r4, r0
	lsrs r4, r4, #4
	mov r0, ip
	adds r0, #0x48
	strh r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	mov r1, ip
	adds r1, #0x4a
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r5, r2, #0
	cmp r0, #0
	blt _0811CE54
	mov r1, ip
	ldr r3, [r1, #8]
	ldr r2, [r1, #0x10]
	ldrh r0, [r6]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r1, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbc
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CE50 @ =0xFFFFF800
	adds r0, r0, r1
	adds r4, r3, #0
	cmp r2, r0
	ble _0811CE70
	b _0811CE6C
	.align 2, 0
_0811CE4C: .4byte gCurLevelInfo
_0811CE50: .4byte 0xFFFFF800
_0811CE54:
	ldrh r0, [r6]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #8]
	subs r0, r2, r0
	str r0, [r1, #0x4c]
	ldr r1, _0811CEB0 @ =0x000007FF
	adds r4, r2, #0
	cmp r0, r1
	bgt _0811CE70
	movs r0, #0x80
	lsls r0, r0, #4
_0811CE6C:
	mov r1, ip
	str r0, [r1, #0x4c]
_0811CE70:
	mov r0, ip
	adds r0, #0x4a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0811CEB8
	mov r0, ip
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r1, ip
	str r2, [r1, #0x50]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	ldr r1, _0811CEB4 @ =0xFFFFE800
	adds r0, r0, r1
	cmp r2, r0
	ble _0811CED8
	b _0811CED4
	.align 2, 0
_0811CEB0: .4byte 0x000007FF
_0811CEB4: .4byte 0xFFFFE800
_0811CEB8:
	mov r0, ip
	adds r0, #0x48
	ldrh r0, [r0]
	lsls r0, r0, #8
	mov r1, ip
	ldr r2, [r1, #0xc]
	adds r0, r2, r0
	str r0, [r1, #0x50]
	ldr r1, _0811CEEC @ =0x000007FF
	adds r3, r2, #0
	cmp r0, r1
	bgt _0811CED8
	movs r0, #0x80
	lsls r0, r0, #4
_0811CED4:
	mov r1, ip
	str r0, [r1, #0x50]
_0811CED8:
	ldr r0, _0811CEF0 @ =sub_0811D68C
	str r0, [r7, #0x78]
	mov r0, ip
	str r4, [r0, #0x38]
	str r3, [r0, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811CEEC: .4byte 0x000007FF
_0811CEF0: .4byte sub_0811D68C

	thumb_func_start sub_0811CEF4
sub_0811CEF4: @ 0x0811CEF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x8c
	ldr r7, [r0]
	adds r1, r6, #0
	adds r1, #0x60
	ldr r0, _0811D0A0 @ =gKirbys
	mov r8, r0
	adds r0, #0x60
	ldrh r2, [r0]
	ldrh r1, [r1]
	cmp r2, r1
	beq _0811CF1A
	b _0811D138
_0811CF1A:
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811CF28
	b _0811D138
_0811CF28:
	movs r0, #0xec
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r0]
	cmp r2, r1
	beq _0811CF36
	b _0811D138
_0811CF36:
	movs r0, #0xab
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r2
	beq _0811CF44
	b _0811D138
_0811CF44:
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	adds r5, r6, #0
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov sb, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, sb
	bl sub_08039430
	lsls r0, r0, #0x18
	mov sb, r5
	cmp r0, #0
	bne _0811CF74
	b _0811D0B8
_0811CF74:
	movs r0, #0xd4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	ldr r5, [r5]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811CFA2
	b _0811D0B8
_0811CFA2:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov r4, sb
	ldr r5, [r4]
	movs r4, #0x1a
	ldrsh r3, [r5, r4]
	str r3, [sp, #0xc]
	movs r4, #0x1c
	ldrsh r3, [r5, r4]
	str r3, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D0B8
	movs r0, #0x9f
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	mov r3, sb
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D0B8
	ldr r0, [r7, #4]
	movs r2, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D018
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	str r1, [r0]
_0811D018:
	ldr r0, [r7, #4]
	movs r2, #2
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D030
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r2, _0811D0A8 @ =0x00000854
	adds r0, r0, r2
	str r1, [r0]
_0811D030:
	ldr r0, [r7, #4]
	movs r2, #4
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D048
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r3, _0811D0AC @ =0x00000EBC
	adds r0, r0, r3
	str r1, [r0]
_0811D048:
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D060
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D0A4 @ =gCurLevelInfo
	ldr r4, _0811D0B0 @ =0x00001524
	adds r0, r0, r4
	str r1, [r0]
_0811D060:
	movs r0, #0
	mov sl, r0
	ldr r0, _0811D0B4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bge _0811D0C2
	mov r5, r8
_0811D06E:
	mov r1, sl
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x56
	ldrb r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	mov sl, r3
	asrs r4, r4, #0x18
	ldr r0, _0811D0B4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blt _0811D06E
	b _0811D0C2
	.align 2, 0
_0811D0A0: .4byte gKirbys
_0811D0A4: .4byte gCurLevelInfo
_0811D0A8: .4byte 0x00000854
_0811D0AC: .4byte 0x00000EBC
_0811D0B0: .4byte 0x00001524
_0811D0B4: .4byte gUnk_0203AD44
_0811D0B8:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0811D0C2:
	ldr r1, _0811D12C @ =gKirbys
	mov r4, sl
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D0EA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0811DB48
_0811D0EA:
	mov r2, sb
	ldr r5, [r2]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D142
	adds r1, r0, #0
	ldr r3, _0811D130 @ =gCurLevelInfo
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r3, _0811D134 @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D142
	subs r0, #1
	str r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0811D142
	.align 2, 0
_0811D12C: .4byte gKirbys
_0811D130: .4byte gCurLevelInfo
_0811D134: .4byte 0x0000065E
_0811D138:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
_0811D142:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811D158
sub_0811D158: @ 0x0811D158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r0, [r0]
	mov sl, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0811D182
	b _0811D378
_0811D182:
	ldr r0, _0811D31C @ =gKirbys
	mov r8, r0
	adds r0, #0x60
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811D190
	b _0811D36C
_0811D190:
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r0]
	cmp r2, r1
	beq _0811D19E
	b _0811D36C
_0811D19E:
	movs r0, #0xec
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	cmp r1, r2
	beq _0811D1AC
	b _0811D36C
_0811D1AC:
	movs r0, #0xab
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	cmp r0, r1
	beq _0811D1BA
	b _0811D36C
_0811D1BA:
	mov r2, sb
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	mov r5, sb
	adds r5, #0xb0
	ldr r4, [r5]
	movs r0, #0x1a
	ldrsh r3, [r4, r0]
	mov sl, r3
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	mov r0, r8
	mov r3, sl
	bl sub_08039430
	lsls r0, r0, #0x18
	mov sl, r5
	cmp r0, #0
	bne _0811D1EC
	b _0811D334
_0811D1EC:
	movs r0, #0xd4
	lsls r0, r0, #1
	add r0, r8
	mov r4, sb
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r5, [r5]
	movs r4, #0x1a
	ldrsh r3, [r5, r4]
	str r3, [sp, #0xc]
	movs r4, #0x1c
	ldrsh r3, [r5, r4]
	str r3, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0811D21C
	b _0811D334
_0811D21C:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, r8
	mov r2, sb
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	mov r3, sl
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D334
	movs r0, #0x9f
	lsls r0, r0, #3
	add r0, r8
	mov r4, sb
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	mov r3, sl
	ldr r5, [r3]
	movs r3, #0x1a
	ldrsh r4, [r5, r3]
	str r4, [sp, #0xc]
	movs r3, #0x1c
	ldrsh r4, [r5, r3]
	str r4, [sp]
	ldrh r4, [r5, #0x1e]
	str r4, [sp, #4]
	ldrh r4, [r5, #0x20]
	str r4, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D334
	ldr r0, [r7, #4]
	movs r2, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D296
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	str r1, [r0]
_0811D296:
	ldr r0, [r7, #4]
	movs r2, #2
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2AE
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r2, _0811D324 @ =0x00000854
	adds r0, r0, r2
	str r1, [r0]
_0811D2AE:
	ldr r0, [r7, #4]
	movs r2, #4
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2C6
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r3, _0811D328 @ =0x00000EBC
	adds r0, r0, r3
	str r1, [r0]
_0811D2C6:
	ldr r0, [r7, #4]
	movs r2, #8
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D2DE
	orrs r0, r2
	str r0, [r7, #4]
	ldr r0, _0811D320 @ =gCurLevelInfo
	ldr r4, _0811D32C @ =0x00001524
	adds r0, r0, r4
	str r1, [r0]
_0811D2DE:
	movs r6, #0
	ldr r0, _0811D330 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0811D310
	mov r4, r8
_0811D2EA:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r4
	adds r0, #0x56
	ldrb r1, [r0]
	mov r2, sl
	ldr r0, [r2]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0811D330 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r6, r0
	blo _0811D2EA
_0811D310:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0811D33C
	.align 2, 0
_0811D31C: .4byte gKirbys
_0811D320: .4byte gCurLevelInfo
_0811D324: .4byte 0x00000854
_0811D328: .4byte 0x00000EBC
_0811D32C: .4byte 0x00001524
_0811D330: .4byte gUnk_0203AD44
_0811D334:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
_0811D33C:
	str r0, [r7, #4]
	ldr r1, _0811D368 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D360
	mov r0, sb
	adds r1, r6, #0
	bl sub_0811DB48
_0811D360:
	mov r4, sl
	ldr r5, [r4]
	ldrb r0, [r5, #4]
	b _0811D4A8
	.align 2, 0
_0811D368: .4byte gKirbys
_0811D36C:
	ldr r0, [r7, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	b _0811D4E2
_0811D378:
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r1, #0
	beq _0811D406
	ldr r4, _0811D3F4 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x7c
	adds r6, r2, r0
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0x84
	adds r5, r2, r0
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xa0
	adds r1, r2, r1
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r2, r2, r0
	mov r4, r8
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D406
	cmp r0, #0
	ble _0811D3F8
	ldr r1, [r5]
	ldr r0, [r7, #0x4c]
	cmp r1, r0
	ble _0811D406
	movs r0, #0
	strb r0, [r4]
	b _0811D406
	.align 2, 0
_0811D3F4: .4byte gCurLevelInfo
_0811D3F8:
	ldr r1, [r6]
	ldr r0, _0811D478 @ =0x000007FF
	cmp r1, r0
	bgt _0811D406
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0811D406:
	adds r0, r7, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0811D48E
	ldr r5, _0811D47C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r3, ip
	str r0, [r3]
	adds r0, r5, #0
	adds r0, #0x88
	adds r6, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	adds r1, r2, r1
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D48E
	cmp r0, #0
	ble _0811D480
	ldr r1, [r6]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	ble _0811D48E
	b _0811D48A
	.align 2, 0
_0811D478: .4byte 0x000007FF
_0811D47C: .4byte gCurLevelInfo
_0811D480:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0811D4FC @ =0x000007FF
	cmp r1, r0
	bgt _0811D48E
_0811D48A:
	movs r0, #0
	strb r0, [r4]
_0811D48E:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0811D4E2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0811D4E2
	mov r0, sb
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #4]
_0811D4A8:
	cmp r0, #0
	beq _0811D4E2
	adds r1, r0, #0
	ldr r3, _0811D500 @ =gCurLevelInfo
	mov r0, sb
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811D504 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D4E2
	subs r0, #1
	str r0, [r1]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_0811D4E2:
	mov r4, sb
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D4FC: .4byte 0x000007FF
_0811D500: .4byte gCurLevelInfo
_0811D504: .4byte 0x0000065E

	thumb_func_start sub_0811D508
sub_0811D508: @ 0x0811D508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r0, #0x8c
	ldr r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	movs r0, #0
	b _0811D664
_0811D524:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	mov sb, r1
	ldr r2, _0811D5B4 @ =gKirbys
	add r2, sb
	mov r8, r2
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	beq _0811D542
	b _0811D648
_0811D542:
	ldr r1, [r7, #0x40]
	ldr r2, [r7, #0x44]
	adds r5, r7, #0
	adds r5, #0xb0
	ldr r4, [r5]
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
	mov r0, r8
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0811D5C0
	ldr r0, _0811D5B8 @ =gKirbys+0xC
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D5CC
	movs r2, #1
	mov r0, sl
	lsls r2, r0
	ldr r0, [r6, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D5A2
	orrs r0, r2
	str r0, [r6, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D5BC @ =gCurLevelInfo+0x1EC
	adds r0, r0, r3
	str r1, [r0]
_0811D5A2:
	mov r0, r8
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r6, #0
	bl sub_0811C7D0
	b _0811D5CC
	.align 2, 0
_0811D5B4: .4byte gKirbys
_0811D5B8: .4byte gKirbys+0xC
_0811D5BC: .4byte gCurLevelInfo+0x1EC
_0811D5C0:
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5CC:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D63C @ =gKirbys
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D5FE
	adds r0, r7, #0
	mov r1, sl
	bl sub_0811DB48
	movs r1, #0x10
	mov r0, sl
	lsls r1, r0
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0811D5FE:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D65C
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D640 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D644 @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D65C
	subs r0, #1
	str r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	b _0811D65C
	.align 2, 0
_0811D63C: .4byte gKirbys
_0811D640: .4byte gCurLevelInfo
_0811D644: .4byte 0x0000065E
_0811D648:
	movs r0, #0x10
	mov r1, sl
	lsls r0, r1
	ldr r1, [r6, #4]
	bics r1, r0
	movs r0, #1
	mov r2, sl
	lsls r0, r2
	bics r1, r0
	str r1, [r6, #4]
_0811D65C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0811D664:
	mov sl, r0
	ldr r0, _0811D688 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sl, r0
	bhs _0811D670
	b _0811D524
_0811D670:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D688: .4byte gUnk_0203AD44

	thumb_func_start sub_0811D68C
sub_0811D68C: @ 0x0811D68C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r0, #0x8c
	ldr r7, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0811D6BA
	b _0811D818
_0811D6BA:
	movs r0, #0
	mov sb, r0
	ldr r0, _0811D760 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	blo _0811D6C8
	b _0811D986
_0811D6C8:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
	ldr r6, _0811D764 @ =gKirbys
	add r6, r8
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, [sp, #0xc]
	cmp r0, r2
	beq _0811D6E4
	b _0811D7F0
_0811D6E4:
	mov r3, sl
	ldr r1, [r3, #0x40]
	ldr r2, [r3, #0x44]
	mov r5, sl
	adds r5, #0xb0
	ldr r4, [r5]
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
	beq _0811D770
	ldr r0, _0811D768 @ =gKirbys+0xC
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811D77C
	movs r2, #1
	mov r0, sb
	lsls r2, r0
	ldr r0, [r7, #4]
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	bne _0811D746
	orrs r0, r2
	str r0, [r7, #4]
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0811D76C @ =gCurLevelInfo+0x1EC
	adds r0, r0, r3
	str r1, [r0]
_0811D746:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, [r5]
	ldrh r2, [r0, #0x22]
	adds r0, r7, #0
	bl sub_0811C7D0
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0811D77A
	.align 2, 0
_0811D760: .4byte gUnk_0203AD44
_0811D764: .4byte gKirbys
_0811D768: .4byte gKirbys+0xC
_0811D76C: .4byte gCurLevelInfo+0x1EC
_0811D770:
	movs r1, #1
	mov r0, sb
	lsls r1, r0
	ldr r0, [r7, #4]
	bics r0, r1
_0811D77A:
	str r0, [r7, #4]
_0811D77C:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0811D7E4 @ =gKirbys
	adds r0, r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _0811D7A2
	mov r0, sl
	mov r1, sb
	bl sub_0811DB48
_0811D7A2:
	ldr r5, [r5]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0811D7FC
	adds r1, r0, #0
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	ldr r2, _0811D7E8 @ =gCurLevelInfo
	adds r0, r0, r2
	ldr r3, _0811D7EC @ =0x0000065E
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D7FC
	subs r0, #1
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #8]
	b _0811D7FC
	.align 2, 0
_0811D7E4: .4byte gKirbys
_0811D7E8: .4byte gCurLevelInfo
_0811D7EC: .4byte 0x0000065E
_0811D7F0:
	movs r1, #1
	mov r3, sb
	lsls r1, r3
	ldr r0, [r7, #4]
	bics r0, r1
	str r0, [r7, #4]
_0811D7FC:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0811D814 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0811D810
	b _0811D6C8
_0811D810:
	b _0811D986
	.align 2, 0
_0811D814: .4byte gUnk_0203AD44
_0811D818:
	adds r0, r7, #0
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _0811D8AA
	ldr r4, _0811D898 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x7c
	adds r6, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0x84
	adds r5, r2, r0
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xa0
	adds r1, r2, r1
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	adds r2, r2, r0
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0811D8AA
	cmp r0, #0
	ble _0811D89C
	ldr r1, [r5]
	ldr r0, [r7, #0x4c]
	cmp r1, r0
	ble _0811D8AA
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	b _0811D8AA
	.align 2, 0
_0811D898: .4byte gCurLevelInfo
_0811D89C:
	ldr r1, [r6]
	ldr r0, _0811D91C @ =0x000007FF
	cmp r1, r0
	bgt _0811D8AA
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
_0811D8AA:
	adds r0, r7, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	beq _0811D932
	ldr r5, _0811D920 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r2, r8
	muls r2, r0, r2
	adds r0, r5, #0
	adds r0, #0x80
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x88
	adds r6, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	adds r1, r2, r1
	movs r3, #0
	ldrsb r3, [r4, r3]
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xac
	adds r2, r2, r0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0811D932
	cmp r0, #0
	ble _0811D924
	ldr r1, [r6]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	ble _0811D932
	b _0811D92E
	.align 2, 0
_0811D91C: .4byte 0x000007FF
_0811D920: .4byte gCurLevelInfo
_0811D924:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0811D9A0 @ =0x000007FF
	cmp r1, r0
	bgt _0811D932
_0811D92E:
	movs r0, #0
	strb r0, [r4]
_0811D932:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0811D986
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0811D986
	mov r0, sl
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0811D986
	adds r1, r0, #0
	ldr r3, _0811D9A4 @ =gCurLevelInfo
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0811D9A8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0811D986
	subs r0, #1
	str r0, [r1]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
_0811D986:
	mov r1, sl
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811D9A0: .4byte 0x000007FF
_0811D9A4: .4byte gCurLevelInfo
_0811D9A8: .4byte 0x0000065E

	thumb_func_start sub_0811D9AC
sub_0811D9AC: @ 0x0811D9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811D9D0
	ldrh r0, [r7, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0811D9D8
_0811D9D0:
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0811D9D8:
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r3, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	mov sb, r0
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	mov sl, r0
	ldrb r4, [r1, #3]
	str r4, [sp]
	ldr r2, _0811DA24 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r4, [sp, #8]
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r4, _0811DA28 @ =0x0000065E
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r1, #0x22]
	movs r0, #8
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _0811DB10
	movs r6, #0
	ldr r0, _0811DA2C @ =gUnk_0203AD44
	mov r8, r0
	b _0811DB0A
	.align 2, 0
_0811DA24: .4byte gCurLevelInfo
_0811DA28: .4byte 0x0000065E
_0811DA2C: .4byte gUnk_0203AD44
_0811DA30:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0811DB40 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sb
	bne _0811DB02
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r6, #0
	muls r2, r0, r2
	mov r0, ip
	adds r0, #0x7c
	adds r5, r2, r0
	ldr r1, [r3, #0x38]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DB02
	mov r0, ip
	adds r0, #0x80
	adds r4, r2, r0
	ldr r1, [r3, #0x3c]
	ldr r0, [r4]
	cmp r1, r0
	bne _0811DB02
	ldr r0, [r3, #0x18]
	str r0, [r5]
	ldr r0, [r3, #0x1c]
	str r0, [r4]
	mov r0, ip
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r3, #0x18]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r3, #0x1c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r3, #0x20]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r3, #0x24]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r3, #0x28]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r3, #0x2c]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r3, #0x30]
	str r1, [r0]
	mov r0, ip
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r3, #0x34]
	str r1, [r0]
	ldr r4, _0811DB44 @ =gCurLevelInfo+0x1EC
	adds r1, r2, r4
	movs r0, #0
	str r0, [r1]
_0811DB02:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, r8
_0811DB0A:
	ldrb r0, [r0]
	cmp r6, r0
	blo _0811DA30
_0811DB10:
	adds r0, r7, #0
	bl ObjectDestroy
	mov r1, sl
	cmp r1, #0
	bne _0811DB22
	ldr r4, [sp, #8]
	cmp r4, #0xff
	beq _0811DB2E
_0811DB22:
	mov r0, sl
	ldr r1, [sp]
	ldr r2, [sp, #4]
	movs r3, #1
	bl sub_08001678
_0811DB2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811DB40: .4byte gKirbys
_0811DB44: .4byte gCurLevelInfo+0x1EC

	thumb_func_start sub_0811DB48
sub_0811DB48: @ 0x0811DB48
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r4, [r1]
	adds r0, #0x60
	ldr r2, _0811DC38 @ =gKirbys
	movs r1, #0xd4
	lsls r1, r1, #1
	muls r1, r5, r1
	adds r1, r1, r2
	adds r1, #0x60
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0811DC30
	ldr r3, _0811DC3C @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x7c
	adds r6, r2, r0
	ldr r1, [r4, #0x38]
	ldr r0, [r6]
	cmp r1, r0
	bne _0811DC30
	adds r0, r3, #0
	adds r0, #0x80
	adds r5, r2, r0
	ldr r1, [r4, #0x3c]
	ldr r0, [r5]
	cmp r1, r0
	bne _0811DC30
	ldr r0, [r4, #0x18]
	str r0, [r6]
	ldr r0, [r4, #0x1c]
	str r0, [r5]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x88
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa0
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa4
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xa8
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0xac
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x6c
	adds r0, r2, r0
	ldr r1, [r4, #0x18]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x70
	adds r0, r2, r0
	ldr r1, [r4, #0x1c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	adds r0, r2, r0
	ldr r1, [r4, #0x20]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x78
	adds r0, r2, r0
	ldr r1, [r4, #0x24]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r2, r0
	ldr r1, [r4, #0x28]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x94
	adds r0, r2, r0
	ldr r1, [r4, #0x2c]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x98
	adds r0, r2, r0
	ldr r1, [r4, #0x30]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x9c
	adds r0, r2, r0
	ldr r1, [r4, #0x34]
	str r1, [r0]
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0]
_0811DC30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0811DC38: .4byte gKirbys
_0811DC3C: .4byte gCurLevelInfo

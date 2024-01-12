	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08018E50
sub_08018E50: @ 0x08018E50
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018E74
	ldr r0, _08018E78 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018E74:
	pop {r0}
	bx r0
	.align 2, 0
_08018E78: .4byte sub_0801519C

	thumb_func_start sub_08018E7C
sub_08018E7C: @ 0x08018E7C
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018E90 @ =sub_08018E94
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018E90: .4byte sub_08018E94

	thumb_func_start sub_08018E94
sub_08018E94: @ 0x08018E94
	ldr r3, _08018EB8 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _08018EBC @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08018EC0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x7f
	ands r1, r2
	adds r1, #5
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08018EC4 @ =sub_08018EC8
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018EB8: .4byte gRngVal
_08018EBC: .4byte 0x00196225
_08018EC0: .4byte 0x3C6EF35F
_08018EC4: .4byte sub_08018EC8

	thumb_func_start sub_08018EC8
sub_08018EC8: @ 0x08018EC8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018EEC
	ldr r0, _08018EF0 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018EEC:
	pop {r0}
	bx r0
	.align 2, 0
_08018EF0: .4byte sub_0801519C

	thumb_func_start sub_08018EF4
sub_08018EF4: @ 0x08018EF4
	adds r3, r0, #0
	ldr r2, _08018F24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018F28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018F2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x10
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08018F30 @ =sub_08017800
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F24: .4byte gRngVal
_08018F28: .4byte 0x00196225
_08018F2C: .4byte 0x3C6EF35F
_08018F30: .4byte sub_08017800

	thumb_func_start sub_08018F34
sub_08018F34: @ 0x08018F34
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _08018F4C @ =sub_08018F50
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F4C: .4byte sub_08018F50

	thumb_func_start sub_08018F50
sub_08018F50: @ 0x08018F50
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, _08018F60 @ =sub_0801786C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018F60: .4byte sub_0801786C

	thumb_func_start sub_08018F64
sub_08018F64: @ 0x08018F64
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018F78 @ =sub_08018F7C
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018F78: .4byte sub_08018F7C

	thumb_func_start sub_08018F7C
sub_08018F7C: @ 0x08018F7C
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x10
	strh r0, [r1]
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08018F98 @ =sub_08018F9C
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018F98: .4byte sub_08018F9C

	thumb_func_start sub_08018F9C
sub_08018F9C: @ 0x08018F9C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018FB4
	ldr r0, _08018FB8 @ =sub_08018FBC
	str r0, [r2, #0xc]
_08018FB4:
	pop {r0}
	bx r0
	.align 2, 0
_08018FB8: .4byte sub_08018FBC

	thumb_func_start sub_08018FBC
sub_08018FBC: @ 0x08018FBC
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08018FCC @ =sub_08018FD0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018FCC: .4byte sub_08018FD0

	thumb_func_start sub_08018FD0
sub_08018FD0: @ 0x08018FD0
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08018FF2
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r2]
_08018FF2:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019006
	ldr r0, _0801900C @ =sub_08019010
	str r0, [r3, #0xc]
_08019006:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801900C: .4byte sub_08019010

	thumb_func_start sub_08019010
sub_08019010: @ 0x08019010
	push {lr}
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08019028 @ =sub_0801902C
	str r1, [r0, #0xc]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08019028: .4byte sub_0801902C

	thumb_func_start sub_0801902C
sub_0801902C: @ 0x0801902C
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08019044
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08019044:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019058
	ldr r0, _0801905C @ =sub_08019060
	str r0, [r3, #0xc]
_08019058:
	pop {r0}
	bx r0
	.align 2, 0
_0801905C: .4byte sub_08019060

	thumb_func_start sub_08019060
sub_08019060: @ 0x08019060
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x3c
	strh r1, [r2]
	ldr r1, _08019070 @ =sub_08019074
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019070: .4byte sub_08019074

	thumb_func_start sub_08019074
sub_08019074: @ 0x08019074
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801908C
	ldr r0, _08019090 @ =sub_0801519C
	str r0, [r2, #0xc]
_0801908C:
	pop {r0}
	bx r0
	.align 2, 0
_08019090: .4byte sub_0801519C

	thumb_func_start sub_08019094
sub_08019094: @ 0x08019094
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x40]
	ldr r2, _080190C0 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _080190C8
	ldr r0, _080190C4 @ =sub_0801519C
	b _080190DE
	.align 2, 0
_080190C0: .4byte 0x00000103
_080190C4: .4byte sub_0801519C
_080190C8:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080190DC
	ldr r0, _080190D8 @ =sub_08019138
	b _080190DE
	.align 2, 0
_080190D8: .4byte sub_08019138
_080190DC:
	ldr r0, _080190E4 @ =sub_080190E8
_080190DE:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080190E4: .4byte sub_080190E8

	thumb_func_start sub_080190E8
sub_080190E8: @ 0x080190E8
	ldr r1, _080190F0 @ =sub_080190F4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080190F0: .4byte sub_080190F4

	thumb_func_start sub_080190F4
sub_080190F4: @ 0x080190F4
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08019108 @ =sub_0801910C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019108: .4byte sub_0801910C

	thumb_func_start sub_0801910C
sub_0801910C: @ 0x0801910C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	bne _08019130
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08019134
	ldr r0, _0801912C @ =sub_08019138
	str r0, [r2, #0xc]
	b _08019134
	.align 2, 0
_0801912C: .4byte sub_08019138
_08019130:
	subs r0, #1
	strh r0, [r1]
_08019134:
	pop {r0}
	bx r0

	thumb_func_start sub_08019138
sub_08019138: @ 0x08019138
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08019168 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801916C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019170 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #5
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _08019174 @ =sub_08019178
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08019168: .4byte gRngVal
_0801916C: .4byte 0x00196225
_08019170: .4byte 0x3C6EF35F
_08019174: .4byte sub_08019178

	thumb_func_start sub_08019178
sub_08019178: @ 0x08019178
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019190
	ldr r0, _08019194 @ =sub_0801519C
	str r0, [r2, #0xc]
_08019190:
	pop {r0}
	bx r0
	.align 2, 0
_08019194: .4byte sub_0801519C

	thumb_func_start sub_08019198
sub_08019198: @ 0x08019198
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, _080191C8 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080191D0
	cmp r0, #0x16
	beq _080191D0
	ldr r0, _080191CC @ =sub_0801519C
	b _080191E6
	.align 2, 0
_080191C8: .4byte 0x00000103
_080191CC: .4byte sub_0801519C
_080191D0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080191E4
	ldr r0, _080191E0 @ =sub_08019378
	b _080191E6
	.align 2, 0
_080191E0: .4byte sub_08019378
_080191E4:
	ldr r0, _080191EC @ =sub_080191F0
_080191E6:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080191EC: .4byte sub_080191F0

	thumb_func_start sub_080191F0
sub_080191F0: @ 0x080191F0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x40]
	ldr r3, _08019210 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #8
	bne _08019218
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08019218
	ldr r0, _08019214 @ =sub_08019378
	b _0801923E
	.align 2, 0
_08019210: .4byte 0x00000103
_08019214: .4byte sub_08019378
_08019218:
	ldr r0, [r2, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801922C
	ldr r0, _08019228 @ =sub_0801519C
	b _0801923E
	.align 2, 0
_08019228: .4byte sub_0801519C
_0801922C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0801923C
	ldr r0, _08019238 @ =sub_08017A4C
	b _0801923E
	.align 2, 0
_08019238: .4byte sub_08017A4C
_0801923C:
	ldr r0, _08019244 @ =sub_08019248
_0801923E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019244: .4byte sub_08019248

	thumb_func_start sub_08019248
sub_08019248: @ 0x08019248
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r1, _08019260 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019268
	cmp r0, #0x16
	beq _08019268
	ldr r0, _08019264 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019260: .4byte 0x00000103
_08019264: .4byte sub_0801519C
_08019268:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0801927C
	ldr r0, _08019278 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019278: .4byte sub_0801519C
_0801927C:
	ldr r0, _08019284 @ =sub_08019288
_0801927E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019284: .4byte sub_08019288

	thumb_func_start sub_08019288
sub_08019288: @ 0x08019288
	ldr r3, _080192AC @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080192B0 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080192B4 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	adds r1, #0xa
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080192B8 @ =sub_08017950
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192AC: .4byte gRngVal
_080192B0: .4byte 0x00196225
_080192B4: .4byte 0x3C6EF35F
_080192B8: .4byte sub_08017950

	thumb_func_start sub_080192BC
sub_080192BC: @ 0x080192BC
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _080192D0 @ =sub_080192D4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192D0: .4byte sub_080192D4

	thumb_func_start sub_080192D4
sub_080192D4: @ 0x080192D4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r1, _080192EC @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080192F4
	cmp r0, #0x16
	beq _080192F4
	ldr r0, _080192F0 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_080192EC: .4byte 0x00000103
_080192F0: .4byte sub_0801519C
_080192F4:
	ldr r0, [r3, #0x40]
	ldr r1, [r0, #8]
	movs r2, #0x60
	ands r2, r1
	cmp r2, #0x20
	beq _08019308
	ldr r0, _08019304 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_08019304: .4byte sub_0801519C
_08019308:
	ands r1, r2
	cmp r1, #0
	bne _0801931C
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801931C
	ldr r0, _08019320 @ =sub_08019324
_0801931A:
	str r0, [r3, #0xc]
_0801931C:
	pop {r0}
	bx r0
	.align 2, 0
_08019320: .4byte sub_08019324

	thumb_func_start sub_08019324
sub_08019324: @ 0x08019324
	ldr r3, _08019348 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801934C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019350 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0xf
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019354 @ =sub_08019358
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019348: .4byte gRngVal
_0801934C: .4byte 0x00196225
_08019350: .4byte 0x3C6EF35F
_08019354: .4byte sub_08019358

	thumb_func_start sub_08019358
sub_08019358: @ 0x08019358
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019370
	ldr r0, _08019374 @ =sub_08019378
	str r0, [r2, #0xc]
_08019370:
	pop {r0}
	bx r0
	.align 2, 0
_08019374: .4byte sub_08019378

	thumb_func_start sub_08019378
sub_08019378: @ 0x08019378
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x40]
	ldr r2, _08019390 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019398
	cmp r0, #0x16
	beq _08019398
	ldr r0, _08019394 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_08019390: .4byte 0x00000103
_08019394: .4byte sub_0801519C
_08019398:
	ldr r0, [r1, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080193AC
	ldr r0, _080193A8 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_080193A8: .4byte sub_0801519C
_080193AC:
	ldr r0, _080193B4 @ =sub_080193B8
_080193AE:
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080193B4: .4byte sub_080193B8

	thumb_func_start sub_080193B8
sub_080193B8: @ 0x080193B8
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080193E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080193EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080193F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _080193F4 @ =sub_080193F8
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_080193E8: .4byte gRngVal
_080193EC: .4byte 0x00196225
_080193F0: .4byte 0x3C6EF35F
_080193F4: .4byte sub_080193F8

	thumb_func_start sub_080193F8
sub_080193F8: @ 0x080193F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019410
	ldr r0, _08019414 @ =sub_08019378
	str r0, [r2, #0xc]
_08019410:
	pop {r0}
	bx r0
	.align 2, 0
_08019414: .4byte sub_08019378

	thumb_func_start sub_08019418
sub_08019418: @ 0x08019418
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _08019434 @ =sub_08019438
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019434: .4byte sub_08019438

	thumb_func_start sub_08019438
sub_08019438: @ 0x08019438
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #0
	bne _08019470
	ldr r2, _08019464 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019468 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801946C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	b _08019476
	.align 2, 0
_08019464: .4byte gRngVal
_08019468: .4byte 0x00196225
_0801946C: .4byte 0x3C6EF35F
_08019470:
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
_08019476:
	adds r1, r3, #0
	adds r1, #0xea
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08019488 @ =sub_08017BA8
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019488: .4byte sub_08017BA8

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	ldr r3, _080194B0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080194B4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080194B8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080194BC @ =sub_080194C0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080194B0: .4byte gRngVal
_080194B4: .4byte 0x00196225
_080194B8: .4byte 0x3C6EF35F
_080194BC: .4byte sub_080194C0

	thumb_func_start sub_080194C0
sub_080194C0: @ 0x080194C0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080194D8
	ldr r0, _080194DC @ =sub_08017C24
	str r0, [r2, #0xc]
_080194D8:
	pop {r0}
	bx r0
	.align 2, 0
_080194DC: .4byte sub_08017C24

	thumb_func_start sub_080194E0
sub_080194E0: @ 0x080194E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019500
	ldr r0, _08019504 @ =sub_08019508
	str r0, [r2, #0xc]
_08019500:
	pop {r0}
	bx r0
	.align 2, 0
_08019504: .4byte sub_08019508

	thumb_func_start sub_08019508
sub_08019508: @ 0x08019508
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	movs r1, #2
	adds r3, r2, #0
	adds r3, #0x9e
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _08019520 @ =sub_08019524
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019520: .4byte sub_08019524

	thumb_func_start sub_08019524
sub_08019524: @ 0x08019524
	ldr r3, _08019548 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801954C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019550 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019554 @ =sub_08019558
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019548: .4byte gRngVal
_0801954C: .4byte 0x00196225
_08019550: .4byte 0x3C6EF35F
_08019554: .4byte sub_08019558

	thumb_func_start sub_08019558
sub_08019558: @ 0x08019558
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801959A
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801957E
	cmp r0, #0x70
	blt _0801957E
	movs r1, #1
_0801957E:
	cmp r1, #0
	beq _0801958C
	ldr r0, _08019588 @ =sub_08019524
	b _08019598
	.align 2, 0
_08019588: .4byte sub_08019524
_0801958C:
	ldr r0, [r2, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080195A0 @ =sub_0801519C
_08019598:
	str r0, [r2, #0xc]
_0801959A:
	pop {r0}
	bx r0
	.align 2, 0
_080195A0: .4byte sub_0801519C

	thumb_func_start sub_080195A4
sub_080195A4: @ 0x080195A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _080195C0 @ =sub_080195C4
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080195C0: .4byte sub_080195C4

	thumb_func_start sub_080195C4
sub_080195C4: @ 0x080195C4
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #1
	beq _080195E8
	cmp r0, #1
	bgt _080195DA
	cmp r0, #0
	beq _080195E0
	b _080195F8
_080195DA:
	cmp r0, #2
	beq _080195F0
	b _080195F8
_080195E0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	b _080195FE
_080195E8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _080195FE
_080195F0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _080195FE
_080195F8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x78
_080195FE:
	strh r0, [r1]
	ldr r0, _08019608 @ =sub_0801960C
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019608: .4byte sub_0801960C

	thumb_func_start sub_0801960C
sub_0801960C: @ 0x0801960C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019630
	ldr r0, _08019634 @ =sub_0801519C
	str r0, [r3, #0xc]
_08019630:
	pop {r0}
	bx r0
	.align 2, 0
_08019634: .4byte sub_0801519C

	thumb_func_start sub_08019638
sub_08019638: @ 0x08019638
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _08019660 @ =sub_08019664
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019660: .4byte sub_08019664

	thumb_func_start sub_08019664
sub_08019664: @ 0x08019664
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	beq _08019688
	cmp r0, #1
	blo _08019680
	cmp r0, #2
	beq _08019690
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x96
	b _08019696
_08019680:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _08019696
_08019688:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _08019696
_08019690:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x64
_08019696:
	strh r0, [r1]
	ldr r0, _080196A0 @ =sub_08017DC4
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080196A0: .4byte sub_08017DC4

	thumb_func_start sub_080196A4
sub_080196A4: @ 0x080196A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _080196CC @ =sub_080196D0
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080196CC: .4byte sub_080196D0

	thumb_func_start sub_080196D0
sub_080196D0: @ 0x080196D0
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080196E0 @ =sub_08017EA0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080196E0: .4byte sub_08017EA0

	thumb_func_start sub_080196E4
sub_080196E4: @ 0x080196E4
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #0xdd
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, _0801971C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08019724
	ldr r0, _08019720 @ =sub_0801519C
	b _08019726
	.align 2, 0
_0801971C: .4byte 0x00000103
_08019720: .4byte sub_0801519C
_08019724:
	ldr r0, _08019730 @ =sub_08017F88
_08019726:
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019730: .4byte sub_08017F88

	thumb_func_start sub_08019734
sub_08019734: @ 0x08019734
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _08019750 @ =sub_08019758
	str r1, [r0]
	ldr r1, _08019754 @ =sub_08013A60
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08019750: .4byte sub_08019758
_08019754: .4byte sub_08013A60

	thumb_func_start sub_08019758
sub_08019758: @ 0x08019758
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801977A
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019780 @ =sub_08013804
	str r0, [r2]
_0801977A:
	pop {r0}
	bx r0
	.align 2, 0
_08019780: .4byte sub_08013804

	thumb_func_start sub_08019784
sub_08019784: @ 0x08019784
	strb r1, [r0, #0x1b]
	ldr r1, _08019790 @ =sub_08013B00
	str r1, [r0, #4]
	ldr r1, _08019794 @ =sub_08019798
	str r1, [r0]
	bx lr
	.align 2, 0
_08019790: .4byte sub_08013B00
_08019794: .4byte sub_08019798

	thumb_func_start sub_08019798
sub_08019798: @ 0x08019798
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080197B2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r0, _080197B8 @ =sub_08013804
	str r0, [r2]
_080197B2:
	pop {r0}
	bx r0
	.align 2, 0
_080197B8: .4byte sub_08013804

	thumb_func_start sub_080197BC
sub_080197BC: @ 0x080197BC
	adds r2, r0, #0
	adds r2, #0xbc
	strh r1, [r2]
	ldr r1, _080197D0 @ =sub_080197DC
	str r1, [r0]
	ldr r1, _080197D4 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080197D8 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080197D0: .4byte sub_080197DC
_080197D4: .4byte nullsub_104
_080197D8: .4byte nullsub_105

	thumb_func_start sub_080197DC
sub_080197DC: @ 0x080197DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbe
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _08019810 @ =sub_08019818
	str r0, [r2]
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0801980C
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	adds r1, #0x20
	strh r0, [r1]
	adds r1, #6
	movs r0, #0
	str r0, [r1]
	ldr r0, _08019814 @ =sub_08018F34
	str r0, [r2, #0xc]
_0801980C:
	pop {r0}
	bx r0
	.align 2, 0
_08019810: .4byte sub_08019818
_08019814: .4byte sub_08018F34

	thumb_func_start sub_08019818
sub_08019818: @ 0x08019818
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08019834
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019842
_08019834:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019848 @ =sub_08013804
	str r0, [r2]
_08019842:
	pop {r0}
	bx r0
	.align 2, 0
_08019848: .4byte sub_08013804

	thumb_func_start sub_0801984C
sub_0801984C: @ 0x0801984C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _0801986C @ =sub_08019878
	str r1, [r0]
	ldr r1, _08019870 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _08019874 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0801986C: .4byte sub_08019878
_08019870: .4byte nullsub_104
_08019874: .4byte nullsub_105

	thumb_func_start sub_08019878
sub_08019878: @ 0x08019878
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019890
	ldr r0, _0801988C @ =sub_080198C4
	b _080198B6
	.align 2, 0
_0801988C: .4byte sub_080198C4
_08019890:
	ldr r4, _080198AC @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080198B4
	cmp r0, #0x17
	beq _080198B4
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080198B4
	ldr r0, _080198B0 @ =sub_08019914
	b _080198B6
	.align 2, 0
_080198AC: .4byte 0x00000103
_080198B0: .4byte sub_08019914
_080198B4:
	ldr r0, _080198C0 @ =sub_0801995C
_080198B6:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080198C0: .4byte sub_0801995C

	thumb_func_start sub_080198C4
sub_080198C4: @ 0x080198C4
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _080198D8 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _080198DC @ =sub_080198E0
	str r1, [r0]
	bx lr
	.align 2, 0
_080198D8: .4byte sub_0801737C
_080198DC: .4byte sub_080198E0

	thumb_func_start sub_080198E0
sub_080198E0: @ 0x080198E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _080198F6
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019906
_080198F6:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801990A
_08019906:
	ldr r0, _08019910 @ =sub_0801995C
	str r0, [r2]
_0801990A:
	pop {r0}
	bx r0
	.align 2, 0
_08019910: .4byte sub_0801995C

	thumb_func_start sub_08019914
sub_08019914: @ 0x08019914
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019928 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _0801992C @ =sub_08019930
	str r1, [r0]
	bx lr
	.align 2, 0
_08019928: .4byte sub_0801519C
_0801992C: .4byte sub_08019930

	thumb_func_start sub_08019930
sub_08019930: @ 0x08019930
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019950
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019954
_08019950:
	ldr r0, _08019958 @ =sub_0801995C
	str r0, [r2]
_08019954:
	pop {r0}
	bx r0
	.align 2, 0
_08019958: .4byte sub_0801995C

	thumb_func_start sub_0801995C
sub_0801995C: @ 0x0801995C
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xbc
	ldrh r0, [r2]
	adds r0, #5
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0xbe
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _0801998C @ =0x0000FFFF
	strh r0, [r1]
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	strh r1, [r0]
	ldr r0, _08019990 @ =sub_0801745C
	str r0, [r3, #0xc]
	ldr r0, _08019994 @ =sub_08019998
	str r0, [r3]
	bx lr
	.align 2, 0
_0801998C: .4byte 0x0000FFFF
_08019990: .4byte sub_0801745C
_08019994: .4byte sub_08019998

	thumb_func_start sub_08019998
sub_08019998: @ 0x08019998
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0
	beq _080199B4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080199C2
_080199B4:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080199C8 @ =sub_08013804
	str r0, [r2]
_080199C2:
	pop {r0}
	bx r0
	.align 2, 0
_080199C8: .4byte sub_08013804

	thumb_func_start sub_080199CC
sub_080199CC: @ 0x080199CC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #4
	strh r1, [r2]
	ldr r1, _080199E4 @ =sub_08013924
	str r1, [r0]
	ldr r1, _080199E8 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080199EC @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080199E4: .4byte sub_08013924
_080199E8: .4byte nullsub_104
_080199EC: .4byte nullsub_105

	thumb_func_start sub_080199F0
sub_080199F0: @ 0x080199F0
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A04 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _08019A08 @ =sub_08019A0C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A04: .4byte sub_0801737C
_08019A08: .4byte sub_08019A0C

	thumb_func_start sub_08019A0C
sub_08019A0C: @ 0x08019A0C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08019A22
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019A32
_08019A22:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A36
_08019A32:
	ldr r0, _08019A3C @ =sub_08013924
	str r0, [r2]
_08019A36:
	pop {r0}
	bx r0
	.align 2, 0
_08019A3C: .4byte sub_08013924

	thumb_func_start sub_08019A40
sub_08019A40: @ 0x08019A40
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A54 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019A58 @ =sub_08019A5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A54: .4byte sub_0801519C
_08019A58: .4byte sub_08019A5C

	thumb_func_start sub_08019A5C
sub_08019A5C: @ 0x08019A5C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019A7C
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A80
_08019A7C:
	ldr r0, _08019A84 @ =sub_08013924
	str r0, [r2]
_08019A80:
	pop {r0}
	bx r0
	.align 2, 0
_08019A84: .4byte sub_08013924

	thumb_func_start sub_08019A88
sub_08019A88: @ 0x08019A88
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A9C @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019AA0 @ =sub_08019AA4
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A9C: .4byte sub_0801519C
_08019AA0: .4byte sub_08019AA4

	thumb_func_start sub_08019AA4
sub_08019AA4: @ 0x08019AA4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08019AC4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019AC8
_08019AC4:
	ldr r0, _08019ACC @ =sub_08013924
	str r0, [r2]
_08019AC8:
	pop {r0}
	bx r0
	.align 2, 0
_08019ACC: .4byte sub_08013924

	thumb_func_start sub_08019AD0
sub_08019AD0: @ 0x08019AD0
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0xbe
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	adds r2, #0x20
	ldr r0, _08019AEC @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08019AF0 @ =sub_08017144
	str r0, [r1, #0xc]
	ldr r0, _08019AF4 @ =sub_08019AF8
	str r0, [r1]
	bx lr
	.align 2, 0
_08019AEC: .4byte 0x0000FFFF
_08019AF0: .4byte sub_08017144
_08019AF4: .4byte sub_08019AF8

	thumb_func_start sub_08019AF8
sub_08019AF8: @ 0x08019AF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08019B14
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019B22
_08019B14:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019B28 @ =sub_08013804
	str r0, [r2]
_08019B22:
	pop {r0}
	bx r0
	.align 2, 0
_08019B28: .4byte sub_08013804

	thumb_func_start nullsub_106
nullsub_106: @ 0x08019B2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08019B30
sub_08019B30: @ 0x08019B30
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r4, r3, #0
	adds r4, #0xcc
	ldrh r0, [r4]
	cmp r0, #0
	beq _08019B4C
	subs r0, #1
	strh r0, [r4]
_08019B4C:
	ldr r1, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r3, #0x1a]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08019B6E
	ldrb r0, [r3, #0x1b]
	cmp r0, #0xff
	beq _08019B6E
	ldrh r0, [r4]
	cmp r0, #0
	bne _08019B78
_08019B6E:
	movs r0, #1
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08019B80 @ =sub_0801852C
	str r0, [r3, #8]
_08019B78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019B80: .4byte sub_0801852C

	thumb_func_start sub_08019B84
sub_08019B84: @ 0x08019B84
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019BB4
	ldr r2, _08019BA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BAC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BB0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019BC6
	.align 2, 0
_08019BA8: .4byte gRngVal
_08019BAC: .4byte 0x00196225
_08019BB0: .4byte 0x3C6EF35F
_08019BB4:
	ldr r2, _08019BDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019BC6:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019BE8 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019BEC @ =sub_08013D0C
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019BDC: .4byte gRngVal
_08019BE0: .4byte 0x00196225
_08019BE4: .4byte 0x3C6EF35F
_08019BE8: .4byte sub_0801852C
_08019BEC: .4byte sub_08013D0C

	thumb_func_start sub_08019BF0
sub_08019BF0: @ 0x08019BF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080103BC
	cmp r0, #0
	bne _08019C08
	ldr r0, _08019C04 @ =sub_080184DC
	str r0, [r4, #4]
	b _08019C44
	.align 2, 0
_08019C04: .4byte sub_080184DC
_08019C08:
	ldr r0, [r4, #0x44]
	bl sub_0800EEBC
	strb r0, [r4, #0x1b]
	ldr r2, [r4, #0x44]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r2, #0x44]
	str r0, [r1]
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08010144
_08019C44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019C4C
sub_08019C4C: @ 0x08019C4C
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019C7C
	ldr r2, _08019C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019C8E
	.align 2, 0
_08019C70: .4byte gRngVal
_08019C74: .4byte 0x00196225
_08019C78: .4byte 0x3C6EF35F
_08019C7C:
	ldr r2, _08019CA4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019CA8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019CAC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019C8E:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019CB0 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019CB4 @ =sub_08014B28
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019CA4: .4byte gRngVal
_08019CA8: .4byte 0x00196225
_08019CAC: .4byte 0x3C6EF35F
_08019CB0: .4byte sub_0801852C
_08019CB4: .4byte sub_08014B28

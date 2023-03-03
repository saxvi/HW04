	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r0, #120
	mov	lr, #12
	mov	r1, #80
	mov	ip, #32
	ldr	r3, .L4
	str	lr, [r3, #28]
	str	r0, [r3]
	str	r0, [r3, #8]
	str	ip, [r3, #24]
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idiv
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	ldr	r8, .L10
	ldr	r4, .L10+4
	ldr	r7, .L10+8
	ldr	r6, .L10+12
	ldr	r5, .L10+16
.L7:
	mov	lr, pc
	bx	r4
	smull	r2, r3, r6, r0
	asr	r1, r0, #31
	rsb	r1, r1, r3, asr #1
	add	r3, r1, r1, lsl #2
	add	r1, r1, r3, lsl #1
	sub	r1, r0, r1
	add	r1, r1, #1
	mov	r0, #240
	mov	lr, pc
	bx	r7
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	smull	r2, r3, r6, r0
	asr	r1, r0, #31
	rsb	r1, r1, r3, asr #1
	add	r3, r1, r1, lsl #2
	add	r1, r1, r3, lsl #1
	sub	r1, r0, r1
	add	r1, r1, #1
	mov	r0, #160
	mov	lr, pc
	bx	r7
	str	r0, [r8, #4]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	mul	r0, r9, r0
	add	r0, r0, #1
	str	r0, [r8, #16]
	mov	lr, pc
	bx	r4
	mov	r2, #1
	smull	r3, lr, r5, r0
	mov	ip, #28
	mov	r1, #24
	asr	r3, r0, #31
	rsb	r3, r3, lr, asr r2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	mul	r0, r9, r0
	add	r9, r9, r2
	add	r0, r0, r2
	cmp	r9, #10
	str	r0, [r8, #16]
	str	ip, [r8, #28]
	str	r1, [r8, #24]
	str	r2, [r8, #36]
	add	r8, r8, #40
	bne	.L7
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	enemies
	.word	rand
	.word	__aeabi_idiv
	.word	780903145
	.word	1717986919
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCoin, %function
initCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L16
	ldr	r6, .L16+4
	ldr	r5, .L16+8
	ldr	r9, .L16+12
	ldr	r8, .L16+16
	add	r7, r4, #400
.L13:
	mov	lr, pc
	bx	r6
	smull	r2, r3, r9, r0
	asr	r1, r0, #31
	rsb	r1, r1, r3, asr #3
	add	r1, r1, r1, lsl #2
	sub	r1, r0, r1, lsl #2
	add	r1, r1, #1
	mov	r0, #240
	mov	lr, pc
	bx	r5
	str	r0, [r4]
	mov	lr, pc
	bx	r6
	smull	r2, r3, r8, r0
	asr	r1, r0, #31
	add	r3, r3, r0
	rsb	r1, r1, r3, asr #3
	rsb	r1, r1, r1, lsl #4
	sub	r1, r0, r1
	add	r1, r1, #1
	mov	r0, #160
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r2, #5
	str	r0, [r4, #4]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #36]
	str	r2, [r4, #28]
	str	r2, [r4, #24]
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L13
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	coins
	.word	rand
	.word	__aeabi_idiv
	.word	1717986919
	.word	-2004318071
	.size	initCoin, .-initCoin
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #120
	mov	r4, #0
	mov	r2, #80
	mov	ip, #12
	mov	r0, #32
	ldr	r3, .L24
	ldr	lr, .L24+4
	sub	sp, sp, #20
	str	ip, [r3, #28]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r4, [lr]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #36]
	str	r0, [r3, #24]
	bl	initEnemies
	bl	initCoin
	mov	r1, #31
	ldr	r0, .L24+8
	ldr	lr, .L24+12
	ldr	ip, .L24+16
	mov	r3, #256
	mov	r2, #83886080
	str	r4, [sp]
	str	r0, [sp, #4]
	strh	r1, [sp, #2]	@ movhi
	mov	r0, #3
	ldr	r1, .L24+20
	ldr	r5, .L24+24
	str	r4, [sp, #12]
	str	lr, [sp, #8]
	strh	ip, [sp, #12]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r1, sp
	mov	r2, r4
	ldr	r3, .L24+28
	ldr	r0, .L24+32
	b	.L20
.L23:
	ldrh	r2, [r1, #2]!
.L20:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L23
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	player
	.word	score
	.word	67075072
	.word	1039074272
	.word	831
	.word	asteroidPal
	.word	DMANow
	.word	83886576
	.word	83886592
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L46
	ldrh	ip, [r3]
	ldr	r3, .L46+4
	tst	ip, #32
	push	{r4, lr}
	ldr	r0, [r3]
	bne	.L27
	cmp	r0, #0
	ble	.L44
.L27:
	tst	ip, #16
	beq	.L29
.L30:
	ldr	r1, [r3, #16]
.L28:
	tst	ip, #64
	ldr	lr, [r3, #4]
	bne	.L31
	cmp	lr, #0
	ble	.L45
.L31:
	tst	ip, #128
	beq	.L33
.L34:
	ldr	r2, [r3, #20]
.L32:
	add	r2, r2, lr
	add	r1, r1, r0
	str	lr, [r3, #12]
	stm	r3, {r1, r2}
	str	r0, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L33:
	ldr	r2, [r3, #28]
	add	r2, lr, r2
	cmp	r2, #160
	ble	.L34
	mov	r2, #2
	ldr	r4, .L46+8
	ldrh	r4, [r4]
	tst	r4, #256
	str	r2, [r3, #20]
	beq	.L32
	tst	ip, #256
	moveq	r2, #6
	streq	r2, [r3, #20]
	b	.L32
.L29:
	ldr	r2, [r3, #24]
	add	r2, r0, r2
	cmp	r2, #240
	ble	.L30
	mov	r1, #2
	ldr	r2, .L46+8
	ldrh	r2, [r2]
	tst	r2, #256
	str	r1, [r3, #16]
	beq	.L28
	tst	ip, #256
	moveq	r1, #6
	streq	r1, [r3, #16]
	b	.L28
.L45:
	mvn	r2, #1
	ldr	r4, .L46+8
	ldrh	r4, [r4]
	tst	r4, #512
	str	r2, [r3, #20]
	beq	.L32
	tst	ip, #512
	mvneq	r2, #5
	streq	r2, [r3, #20]
	b	.L32
.L44:
	mvn	r1, #1
	ldr	r2, .L46+8
	ldrh	r2, [r2]
	tst	r2, #512
	str	r1, [r3, #16]
	beq	.L28
	tst	ip, #512
	mvneq	r1, #5
	streq	r1, [r3, #16]
	b	.L28
.L47:
	.align	2
.L46:
	.word	buttons
	.word	player
	.word	oldButtons
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0
	push	{r4, r5, lr}
	ldr	r3, [r0, #16]
	ldr	lr, [r0]
	ldr	r4, [r0, #20]
	ldr	r2, [r0, #4]
	add	r0, lr, r3
	add	r1, r2, r4
	str	r2, [ip, #12]
	ldr	r2, [ip, #24]
	cmp	r0, #239
	str	lr, [ip, #8]
	rsble	lr, r2, #240
	rsble	r3, r3, #0
	str	r0, [ip]
	addle	r0, r0, lr
	strle	r3, [ip, #16]
	strle	r0, [ip]
	ldr	r3, [ip, #28]
	cmp	r1, #0
	rsblt	r4, r4, #0
	add	lr, r1, r3
	strlt	r4, [ip, #20]
	add	r4, r0, r2
	str	r1, [ip, #4]
	movlt	r1, lr
	strlt	lr, [ip, #4]
	addlt	lr, lr, r3
	cmp	r4, #240
	sub	sp, sp, #20
	ble	.L51
	ldr	r5, [ip, #16]
	sub	r4, r4, #240
	sub	r0, r0, r4
	rsb	r4, r5, #0
	str	r0, [ip]
	str	r4, [ip, #16]
.L51:
	cmp	lr, #160
	ble	.L52
	ldr	r4, [ip, #20]
	sub	lr, lr, #160
	sub	r1, r1, lr
	rsb	lr, r4, #0
	str	r1, [ip, #4]
	str	lr, [ip, #20]
.L52:
	ldr	ip, .L58
	add	r4, ip, #24
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r4, .L58+4
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L58+8
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	player
	.word	collision
	.word	lives
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	updatePlayer
	ldr	r4, .L66
	add	r5, r4, #400
.L61:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateEnemy
	cmp	r4, r5
	bne	.L61
	ldr	r4, .L66+4
	ldr	r6, .L66+8
	add	r5, r4, #400
.L62:
	mov	r0, r4
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r5, r4
	bne	.L62
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	enemies
	.word	coins
	.word	updateCoins
	.size	updateGame, .-updateGame
	.comm	t,4,4
	.comm	spawned,4,4
	.comm	coins,400,4
	.comm	enemies,400,4
	.comm	coin,40,4
	.comm	enemy,40,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"

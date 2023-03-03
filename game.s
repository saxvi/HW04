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
	mov	r0, #120
	mov	lr, #12
	mov	r1, #80
	mov	r2, #0
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
	mov	r10, #0
	ldr	r9, .L11
	ldr	r4, .L11+4
	ldr	r7, .L11+8
	ldr	r6, .L11+12
	ldr	r5, .L11+16
	ldr	r8, .L11+20
.L8:
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
	str	r0, [r9]
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
	str	r0, [r9, #4]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	mul	r0, r10, r0
	add	r0, r0, #1
	str	r0, [r9, #16]
	mov	lr, pc
	bx	r4
	smull	r3, ip, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	add	r3, r10, r10, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r10, r3, lsl #1
	cmp	r3, r8
	movls	r3, #1
	mov	r1, #28
	mov	r2, #24
	mul	r0, r10, r0
	add	r10, r10, #1
	strls	r3, [r9, #36]
	add	r0, r0, #1
	cmp	r10, #10
	str	r0, [r9, #16]
	str	r1, [r9, #28]
	str	r2, [r9, #24]
	add	r9, r9, #40
	bne	.L8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	enemies
	.word	rand
	.word	__aeabi_idiv
	.word	780903145
	.word	1717986919
	.word	1431655765
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
	ldr	r4, .L17
	ldr	r6, .L17+4
	ldr	r5, .L17+8
	ldr	r9, .L17+12
	ldr	r8, .L17+16
	add	r7, r4, #400
.L14:
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
	mov	r2, #24
	str	r0, [r4, #4]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #36]
	str	r2, [r4, #28]
	str	r2, [r4, #24]
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L14
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L18:
	.align	2
.L17:
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
	ldr	r3, .L25
	ldr	lr, .L25+4
	sub	sp, sp, #20
	str	ip, [r3, #28]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r4, [lr]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r0, [r3, #24]
	bl	initEnemies
	bl	initCoin
	mov	r1, #31
	ldr	r0, .L25+8
	ldr	lr, .L25+12
	ldr	ip, .L25+16
	mov	r3, #256
	mov	r2, #83886080
	str	r4, [sp]
	str	r0, [sp, #4]
	strh	r1, [sp, #2]	@ movhi
	mov	r0, #3
	ldr	r1, .L25+20
	ldr	r5, .L25+24
	str	r4, [sp, #12]
	str	lr, [sp, #8]
	strh	ip, [sp, #12]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r1, sp
	mov	r2, r4
	ldr	r3, .L25+28
	ldr	r0, .L25+32
	b	.L21
.L24:
	ldrh	r2, [r1, #2]!
.L21:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L24
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L48
	ldrh	r2, [r3]
	ldr	r3, .L48+4
	tst	r2, #32
	str	lr, [sp, #-4]!
	ldr	r1, [r3]
	bne	.L28
	cmp	r1, #1
	ble	.L28
	mvn	r0, #1
	ldr	ip, .L48+8
	ldrh	ip, [ip]
	tst	ip, #512
	str	r0, [r3, #16]
	beq	.L30
	tst	r2, #512
	mvneq	r0, #5
	streq	r0, [r3, #16]
	tst	r2, #64
	ldr	r0, [r3, #4]
	beq	.L45
.L33:
	tst	r2, #128
	beq	.L46
.L37:
	mov	r2, #0
	mov	ip, r0
	str	r2, [r3, #20]
.L35:
	ldr	r2, [r3, #16]
	add	r2, r2, r1
	stm	r3, {r2, ip}
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L28:
	tst	r2, #16
	beq	.L47
.L32:
	mov	r0, #0
	str	r0, [r3, #16]
.L30:
	tst	r2, #64
	ldr	r0, [r3, #4]
	bne	.L33
.L45:
	cmp	r0, #1
	ble	.L33
	mvn	ip, #1
	ldr	lr, .L48+8
	ldrh	lr, [lr]
	tst	lr, #512
	str	ip, [r3, #20]
	beq	.L44
	tst	r2, #512
	mvneq	r2, #5
	subne	ip, r0, #2
	streq	r2, [r3, #20]
	addeq	ip, r0, r2
	b	.L35
.L46:
	ldr	ip, [r3, #28]
	add	ip, r0, ip
	cmp	ip, #159
	bgt	.L37
	mov	ip, #2
	ldr	lr, .L48+8
	ldrh	lr, [lr]
	tst	lr, #256
	str	ip, [r3, #20]
	beq	.L44
	tst	r2, #256
	moveq	r2, #6
	addne	ip, r0, #2
	streq	r2, [r3, #20]
	addeq	ip, r0, r2
	b	.L35
.L47:
	ldr	r0, [r3, #24]
	add	r0, r1, r0
	cmp	r0, #239
	bgt	.L32
	mov	r0, #2
	ldr	ip, .L48+8
	ldrh	ip, [ip]
	tst	ip, #256
	str	r0, [r3, #16]
	beq	.L30
	tst	r2, #256
	moveq	r0, #6
	streq	r0, [r3, #16]
	b	.L30
.L44:
	add	ip, r0, ip
	b	.L35
.L49:
	.align	2
.L48:
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
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #1
	movle	r3, #2
	ldr	r1, [r4, #4]
	strle	r3, [r4, #16]
	cmp	r1, #1
	movle	r3, #2
	ldr	r2, [r4, #24]
	strle	r3, [r4, #20]
	add	r3, r0, r2
	cmp	r3, #238
	mvngt	r3, #1
	strgt	r3, [r4, #16]
	ldr	r3, [r4, #28]
	add	ip, r1, r3
	cmp	ip, #158
	mvngt	ip, #1
	strgt	ip, [r4, #20]
	ldr	ip, .L60
	add	r5, ip, #24
	ldm	r5, {r5, lr}
	sub	sp, sp, #20
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L60+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L55
	mov	r1, #0
	ldr	r2, .L60+8
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
.L55:
	ldr	r0, [r4]
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #20]
	add	r2, r2, r0
	add	r3, r3, r1
	str	r0, [r4, #8]
	str	r2, [r4]
	str	r1, [r4, #12]
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	player
	.word	collision
	.word	lives
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoins, %function
updateCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L69
	ldr	r2, .L69+4
	ldr	r3, [r3]
	ldr	r1, .L69+8
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	movcs	r3, #1
	push	{r4, r5, lr}
	mov	r4, r0
	strcs	r3, [r0, #36]
	ldr	r0, .L69+12
	ldr	r5, [r4, #28]
	ldr	ip, [r4, #24]
	sub	sp, sp, #20
	add	r2, r0, #24
	ldr	lr, [r4, #4]
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L69+16
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L62
	mov	r2, #67108864
	mov	ip, #0
	mov	r0, #21248
	ldr	r1, .L69+20
	ldr	r3, [r1]
	add	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L69+24
	str	ip, [r4, #36]
	strh	r0, [r2, #104]	@ movhi
	strh	r3, [r2, #108]	@ movhi
.L62:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	t
	.word	9544370
	.word	-2023406815
	.word	player
	.word	collision
	.word	score
	.word	-30887
	.size	updateCoins, .-updateCoins
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
	ldr	r4, .L77
	add	r5, r4, #400
.L72:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateEnemy
	cmp	r4, r5
	bne	.L72
	ldr	r4, .L77+4
	add	r5, r4, #400
.L73:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateCoins
	cmp	r5, r4
	bne	.L73
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	enemies
	.word	coins
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L81
	ldr	ip, .L81+4
	sub	sp, sp, #8
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L81+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	player
	.word	spaceshipBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, lr}
	ldr	r2, [r0, #36]
	cmp	r2, #0
	add	r2, r3, #24
	ldr	r1, [r3, #4]
	ldr	r0, [r0]
	ldm	r2, {r2, r3}
	sub	sp, sp, #8
	beq	.L84
	ldr	ip, .L87
	ldr	r4, .L87+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L84:
	mov	ip, #248
	ldr	r4, .L87+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	asteroidBitmap
	.word	drawImage4
	.word	drawRect4
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoins, %function
drawCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, lr}
	ldr	r2, [r0, #36]
	cmp	r2, #0
	add	r2, r3, #24
	ldr	r1, [r3, #4]
	ldr	r0, [r0]
	ldm	r2, {r2, r3}
	sub	sp, sp, #8
	beq	.L90
	ldr	ip, .L93
	ldr	r4, .L93+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L90:
	mov	ip, #248
	ldr	r4, .L93+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	USETHISCOINBitmap
	.word	drawImage4
	.word	drawRect4
	.size	drawCoins, .-drawCoins
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r0, .L101
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	ldr	r4, .L101+8
	add	r5, r4, #400
.L96:
	mov	r0, r4
	add	r4, r4, #40
	bl	drawEnemy
	cmp	r4, r5
	bne	.L96
	ldr	r4, .L101+12
	add	r5, r4, #400
.L97:
	mov	r0, r4
	add	r4, r4, #40
	bl	drawCoins
	cmp	r5, r4
	bne	.L97
	ldr	r3, .L101+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	backgroundBitmap
	.word	drawFullscreenImage4
	.word	enemies
	.word	coins
	.word	flipPage
	.word	waitForVBlank
	.size	drawGame, .-drawGame
	.comm	t,4,4
	.comm	coins,400,4
	.comm	enemies,400,4
	.comm	coin,40,4
	.comm	enemy,40,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"

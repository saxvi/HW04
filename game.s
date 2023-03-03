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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy.part.0, %function
updateEnemy.part.0:
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
	ldr	ip, .L12
	add	r5, ip, #24
	ldm	r5, {r5, lr}
	sub	sp, sp, #20
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L12+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L6
	mov	r1, #0
	ldr	r2, .L12+8
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
.L6:
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
.L13:
	.align	2
.L12:
	.word	player
	.word	collision
	.word	lives
	.size	updateEnemy.part.0, .-updateEnemy.part.0
	.align	2
	.global	initPlayer
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
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
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
	ldr	r9, .L23
	ldr	r4, .L23+4
	ldr	r7, .L23+8
	ldr	r6, .L23+12
	ldr	r5, .L23+16
	ldr	r8, .L23+20
.L20:
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
	str	r0, [r9, #20]
	str	r1, [r9, #28]
	str	r2, [r9, #24]
	add	r9, r9, #40
	bne	.L20
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r4, .L29
	ldr	r6, .L29+4
	ldr	r5, .L29+8
	ldr	r9, .L29+12
	ldr	r8, .L29+16
	add	r7, r4, #400
.L26:
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
	bne	.L26
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L30:
	.align	2
.L29:
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
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #80
	mov	lr, #12
	mov	ip, #32
	mov	r0, #120
	ldr	r3, .L33
	str	r2, [r3]
	ldr	r3, .L33+4
	sub	sp, sp, #16
	str	lr, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3, #24]
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #8]
	bl	initEnemies
	bl	initCoin
	mov	ip, sp
	ldr	r3, .L33+8
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r4, .L33+12
	strh	r3, [ip]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L33+16
	mov	lr, pc
	bx	r4
	ldrh	r2, [sp]
	ldr	r3, .L33+20
	strh	r2, [r3, #242]	@ movhi
	ldrh	r2, [sp, #2]
	strh	r2, [r3, #244]	@ movhi
	ldrh	r2, [sp, #4]
	strh	r2, [r3, #246]	@ movhi
	ldrh	r2, [sp, #6]
	strh	r2, [r3, #248]	@ movhi
	ldrh	r2, [sp, #8]
	strh	r2, [r3, #250]	@ movhi
	ldrh	r2, [sp, #10]
	strh	r2, [r3, #252]	@ movhi
	ldrh	r2, [sp, #12]
	strh	r2, [r3, #254]	@ movhi
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	score
	.word	player
	.word	.LANCHOR0
	.word	DMANow
	.word	asteroidPal
	.word	83886336
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
	ldr	r3, .L56
	ldrh	r2, [r3]
	ldr	r3, .L56+4
	tst	r2, #32
	str	lr, [sp, #-4]!
	ldr	r1, [r3]
	bne	.L36
	cmp	r1, #1
	ble	.L36
	mvn	r0, #3
	ldr	ip, .L56+8
	ldrh	ip, [ip]
	tst	ip, #512
	str	r0, [r3, #16]
	beq	.L38
	tst	r2, #512
	mvneq	r0, #9
	streq	r0, [r3, #16]
	tst	r2, #64
	ldr	r0, [r3, #4]
	beq	.L53
.L41:
	tst	r2, #128
	beq	.L54
.L45:
	mov	r2, #0
	mov	ip, r0
	str	r2, [r3, #20]
.L43:
	ldr	r2, [r3, #16]
	add	r2, r2, r1
	stm	r3, {r2, ip}
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L36:
	tst	r2, #16
	beq	.L55
.L40:
	mov	r0, #0
	str	r0, [r3, #16]
.L38:
	tst	r2, #64
	ldr	r0, [r3, #4]
	bne	.L41
.L53:
	cmp	r0, #1
	ble	.L41
	mvn	ip, #3
	ldr	lr, .L56+8
	ldrh	lr, [lr]
	tst	lr, #512
	str	ip, [r3, #20]
	beq	.L52
	tst	r2, #512
	mvneq	r2, #9
	subne	ip, r0, #4
	streq	r2, [r3, #20]
	addeq	ip, r0, r2
	b	.L43
.L54:
	ldr	ip, [r3, #28]
	add	ip, r0, ip
	cmp	ip, #159
	bgt	.L45
	mov	ip, #4
	ldr	lr, .L56+8
	ldrh	lr, [lr]
	tst	lr, #256
	str	ip, [r3, #20]
	beq	.L52
	tst	r2, #256
	moveq	r2, #10
	addne	ip, r0, #4
	streq	r2, [r3, #20]
	addeq	ip, r0, r2
	b	.L43
.L55:
	ldr	r0, [r3, #24]
	add	r0, r1, r0
	cmp	r0, #239
	bgt	.L40
	mov	r0, #4
	ldr	ip, .L56+8
	ldrh	ip, [ip]
	tst	ip, #256
	str	r0, [r3, #16]
	beq	.L38
	tst	r2, #256
	moveq	r0, #10
	streq	r0, [r3, #16]
	b	.L38
.L52:
	add	ip, r0, ip
	b	.L43
.L57:
	.align	2
.L56:
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
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	b	updateEnemy.part.0
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
	ldr	r3, .L71
	ldr	r2, .L71+4
	ldr	r3, [r3]
	mul	r3, r2, r3
	ldr	r2, .L71+8
	add	r3, r3, #61341696
	add	r3, r3, #14976
	cmp	r2, r3, ror #2
	movcs	r3, #1
	push	{r4, r5, lr}
	mov	r4, r0
	strcs	r3, [r0, #36]
	sub	sp, sp, #20
	bcc	.L70
.L62:
	ldr	r0, .L71+12
	ldr	r5, [r4, #28]
	ldr	ip, [r4, #24]
	add	r2, r0, #24
	ldr	lr, [r4, #4]
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L71+16
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L60
	mov	r2, #67108864
	mov	ip, #0
	mov	r0, #21248
	ldr	r1, .L71+20
	ldr	r3, [r1]
	add	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L71+24
	str	ip, [r4, #36]
	strh	r0, [r2, #104]	@ movhi
	strh	r3, [r2, #108]	@ movhi
.L60:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L70:
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bne	.L62
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	t
	.word	-1963413621
	.word	30678336
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
	ldr	r4, .L83
	add	r5, r4, #400
.L75:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	movne	r0, r4
	blne	updateEnemy.part.0
.L74:
	add	r4, r4, #40
	cmp	r4, r5
	bne	.L75
	ldr	r4, .L83+4
	add	r5, r4, #400
.L76:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateCoins
	cmp	r5, r4
	bne	.L76
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	r0, .L87
	ldr	ip, .L87+4
	sub	sp, sp, #8
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
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
	.word	player
	.word	spaceshipBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
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
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L105
	ldr	r0, .L105+4
	ldr	r3, .L105+8
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r7, .L105+12
	bl	drawPlayer
	ldr	r6, .L105+16
	add	r5, r4, #400
	b	.L91
.L90:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L103
.L91:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L90
	str	r7, [sp]
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L91
.L103:
	ldr	r4, .L105+20
	ldr	r7, .L105+24
	ldr	r6, .L105+16
	add	r5, r4, #400
	b	.L93
.L92:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L104
.L93:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L92
	str	r7, [sp]
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L93
.L104:
	ldr	r3, .L105+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+32
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	enemies
	.word	backgroundBitmap
	.word	drawFullscreenImage4
	.word	asteroidBitmap
	.word	drawImage4
	.word	coins
	.word	USETHISCOINBitmap
	.word	flipPage
	.word	waitForVBlank
	.size	drawGame, .-drawGame
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
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r2, .L116
	sub	sp, sp, #8
	ldr	r3, [r0, #28]
	str	r2, [sp]
	ldr	r4, .L116+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	asteroidBitmap
	.word	drawImage4
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
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r2, .L127
	sub	sp, sp, #8
	ldr	r3, [r0, #28]
	str	r2, [sp]
	ldr	r4, .L127+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	USETHISCOINBitmap
	.word	drawImage4
	.size	drawCoins, .-drawCoins
	.comm	t,4,4
	.comm	coins,400,4
	.comm	enemies,400,4
	.comm	coin,40,4
	.comm	enemy,40,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	0
	.short	31
	.short	31744
	.short	1023
	.short	992
	.short	15855
	.short	831
	.ident	"GCC: (devkitARM release 53) 9.1.0"

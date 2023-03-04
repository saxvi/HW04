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
	push	{r4, r5, r6, lr}
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
	ldr	r5, [ip, #36]
	cmp	r5, #0
	sub	sp, sp, #16
	beq	.L11
.L6:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r2, r2, r0
	add	r3, r3, r1
	stm	r4, {r2, r3}
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L11:
	add	r6, ip, #24
	ldm	r6, {r6, lr}
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r6, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r6, .L12+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, .L12+8
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r5, [r4, #36]
	strne	r3, [r2]
	ldm	r4, {r0, r1}
	b	.L6
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
	mov	r2, #0
	mov	r0, #120
	mov	lr, #12
	mov	r1, #80
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
	str	r2, [r3, #36]
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
	mov	r9, #0
	ldr	r8, .L22
	ldr	r4, .L22+4
	ldr	r6, .L22+8
	ldr	r5, .L22+12
	ldr	r7, .L22+16
.L19:
	mov	lr, pc
	bx	r4
	smull	r2, r3, r5, r0
	asr	r1, r0, #31
	rsb	r1, r1, r3, asr #1
	add	r3, r1, r1, lsl #2
	add	r1, r1, r3, lsl #1
	sub	r1, r0, r1
	add	r1, r1, #1
	mov	r0, #240
	mov	lr, pc
	bx	r6
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	smull	r2, r3, r5, r0
	asr	r1, r0, #31
	rsb	r1, r1, r3, asr #1
	add	r3, r1, r1, lsl #2
	add	r1, r1, r3, lsl #1
	sub	r1, r0, r1
	add	r1, r1, #1
	mov	r0, #160
	mov	lr, pc
	bx	r6
	str	r0, [r8, #4]
	mov	lr, pc
	bx	r4
	smull	r2, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	mul	r0, r9, r0
	add	r0, r0, #1
	str	r0, [r8, #16]
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #28
	mov	r2, #24
	cmp	r0, #0
	and	r0, r0, r3
	rsblt	r0, r0, #0
	mul	r0, r9, r0
	add	r9, r9, r3
	add	r0, r0, r3
	cmp	r9, #10
	str	r0, [r8, #20]
	str	r1, [r8, #28]
	str	r2, [r8, #24]
	str	r3, [r8, #36]
	add	r8, r8, #40
	bne	.L19
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	enemies
	.word	rand
	.word	__aeabi_idiv
	.word	780903145
	.word	1431655766
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
	mov	r9, #0
	ldr	r8, .L28
	ldr	r4, .L28+4
	ldr	r7, .L28+8
	ldr	r6, .L28+12
	add	r5, r8, #400
.L25:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3
	add	r0, r0, #1
	add	r0, r0, r0, lsl #2
	lsl	r0, r0, #1
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	mov	r2, #24
	smull	r3, r1, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #4
	sub	r0, r0, r3
	add	r0, r0, #1
	add	r0, r0, r0, lsl #2
	lsl	r0, r0, #1
	str	r9, [r8, #16]
	str	r9, [r8, #20]
	str	r9, [r8, #36]
	str	r0, [r8, #4]
	str	r2, [r8, #28]
	str	r2, [r8, #24]
	add	r8, r8, #40
	cmp	r8, r5
	bne	.L25
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	coins
	.word	rand
	.word	1374389535
	.word	2021161081
	.size	initCoin, .-initCoin
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #80
	mov	lr, #12
	mov	ip, #32
	mov	r0, #120
	ldr	r3, .L32
	str	r2, [r3]
	ldr	r3, .L32+4
	ldr	r4, .L32+8
	str	lr, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	str	ip, [r3, #24]
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #8]
	bl	initEnemies
	bl	initCoin
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	score
	.word	player
	.word	DMANow
	.word	ASTEROIDUSETHISONEPal
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
	ldr	r3, .L57
	ldrh	r2, [r3]
	ldr	r3, .L57+4
	tst	r2, #32
	str	lr, [sp, #-4]!
	ldr	r0, [r3]
	bne	.L35
	cmp	r0, #1
	ble	.L35
	mvn	r1, #7
	ldr	ip, .L57+8
	ldrh	ip, [ip]
	tst	ip, #512
	str	r1, [r3, #16]
	beq	.L37
	tst	r2, #512
	mvneq	r1, #29
	streq	r1, [r3, #16]
.L37:
	mov	r1, #0
	tst	r2, #64
	str	r1, [r3, #36]
	ldr	ip, [r3, #4]
	beq	.L54
.L41:
	tst	r2, #128
	beq	.L55
.L44:
	mov	r1, #0
	mov	r2, ip
	str	r1, [r3, #20]
.L43:
	ldr	r1, [r3, #16]
	add	r1, r1, r0
	stm	r3, {r1, r2}
	str	r0, [r3, #8]
	str	ip, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L35:
	tst	r2, #16
	beq	.L56
.L40:
	mov	r1, #0
	tst	r2, #64
	str	r1, [r3, #16]
	ldr	ip, [r3, #4]
	bne	.L41
.L54:
	cmp	ip, #1
	ble	.L41
	mvn	r1, #7
	ldr	lr, .L57+8
	ldrh	lr, [lr]
	tst	lr, #512
	str	r1, [r3, #20]
	beq	.L45
	tst	r2, #512
	mvneq	r1, #29
	streq	r1, [r3, #20]
.L45:
	mov	lr, #0
	add	r2, ip, r1
	str	lr, [r3, #36]
	b	.L43
.L55:
	ldr	r1, [r3, #28]
	add	r1, ip, r1
	cmp	r1, #159
	bgt	.L44
	mov	r1, #8
	ldr	lr, .L57+8
	ldrh	lr, [lr]
	tst	lr, #256
	str	r1, [r3, #20]
	beq	.L45
	tst	r2, #256
	moveq	r1, #30
	streq	r1, [r3, #20]
	b	.L45
.L56:
	ldr	r1, [r3, #24]
	add	r1, r0, r1
	cmp	r1, #239
	bgt	.L40
	mov	r1, #8
	ldr	ip, .L57+8
	ldrh	ip, [ip]
	tst	ip, #256
	str	r1, [r3, #16]
	beq	.L37
	tst	r2, #256
	moveq	r1, #30
	streq	r1, [r3, #16]
	b	.L37
.L58:
	.align	2
.L57:
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
	ldr	r3, .L63
	ldr	r2, .L63+4
	ldr	r1, .L63+8
	ldr	r3, [r3]
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	movcs	r3, #1
	strcs	r3, [r0, #36]
	bcs	.L61
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
.L61:
	b	updateEnemy.part.0
.L64:
	.align	2
.L63:
	.word	t
	.word	10177646
	.word	1852331867
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
	ldr	r3, .L76
	ldr	r2, .L76+4
	ldr	r3, [r3]
	mul	r3, r2, r3
	ldr	r2, .L76+8
	add	r3, r3, #61341696
	add	r3, r3, #14976
	cmp	r2, r3, ror #2
	movcs	r3, #1
	push	{r4, r5, lr}
	mov	r4, r0
	strcs	r3, [r0, #36]
	sub	sp, sp, #20
	bcc	.L75
.L67:
	ldr	r0, .L76+12
	ldr	r5, [r4, #28]
	ldr	ip, [r4, #24]
	add	r2, r0, #24
	ldr	lr, [r4, #4]
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L76+16
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L65
	mov	r2, #67108864
	mov	ip, #0
	mov	r0, #21248
	ldr	r1, .L76+20
	ldr	r3, [r1]
	add	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L76+24
	str	ip, [r4, #36]
	strh	r0, [r2, #104]	@ movhi
	strh	r3, [r2, #108]	@ movhi
.L65:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L75:
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bne	.L67
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L77:
	.align	2
.L76:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L92
	bl	updatePlayer
	mov	r9, #1
	ldr	r8, .L92+4
	ldr	r7, .L92+8
	ldr	r5, .L92+12
	add	r6, r4, #400
	b	.L82
.L91:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L80
	add	r4, r4, #40
	cmp	r6, r4
	beq	.L90
.L82:
	ldr	r3, [r8]
	mla	r3, r7, r3, r5
	cmp	r5, r3, ror #1
	strcs	r9, [r4, #36]
	bcc	.L91
.L80:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateEnemy.part.0
	cmp	r6, r4
	bne	.L82
.L90:
	ldr	r4, .L92+16
	add	r5, r4, #400
.L83:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateCoins
	cmp	r4, r5
	bne	.L83
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	enemies
	.word	t
	.word	1852331867
	.word	10177646
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
	mov	r3, #256
	sub	sp, sp, #8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96
	ldr	r4, .L96+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L96+8
	ldr	ip, .L96+12
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L96+16
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	ASTEROIDUSETHISONEPal
	.word	DMANow
	.word	player
	.word	SPACESHIPUSETHISONE______Bitmap
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
	ldr	r4, .L114
	ldr	r0, .L114+4
	ldr	r3, .L114+8
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r7, .L114+12
	bl	drawPlayer
	ldr	r6, .L114+16
	add	r5, r4, #400
	b	.L100
.L99:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L112
.L100:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L99
	str	r7, [sp]
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L100
.L112:
	ldr	r4, .L114+20
	ldr	r7, .L114+24
	ldr	r6, .L114+16
	add	r5, r4, #400
	b	.L102
.L101:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L113
.L102:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L101
	str	r7, [sp]
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L102
.L113:
	ldr	r3, .L114+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+32
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	enemies
	.word	BACKGROUDN__________Bitmap
	.word	drawFullscreenImage4
	.word	ASTEROIDUSETHISONEBitmap
	.word	drawImage4
	.word	coins
	.word	COINTHISONEBitmap
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
	ldr	r2, .L125
	sub	sp, sp, #8
	ldr	r3, [r0, #28]
	str	r2, [sp]
	ldr	r4, .L125+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	ASTEROIDUSETHISONEBitmap
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
	ldr	r2, .L136
	sub	sp, sp, #8
	ldr	r3, [r0, #28]
	str	r2, [sp]
	ldr	r4, .L136+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	COINTHISONEBitmap
	.word	drawImage4
	.size	drawCoins, .-drawCoins
	.comm	t,4,4
	.comm	coins,400,4
	.comm	enemies,400,4
	.comm	coin,40,4
	.comm	enemy,40,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"

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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"space guys\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L4
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	r1, #38
	ldr	r2, .L4+16
	mov	r0, #90
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	ldr	r4, .L4+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+28
	ldr	r2, .L4+32
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	COINPLEASEPal
	.word	DMANow
	.word	BACKGROUDN__________Bitmap
	.word	drawFullscreenImage4
	.word	.LC0
	.word	drawString4
	.word	waitForVBlank
	.word	state
	.word	rSeed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #2
	mvn	ip, #170
	mov	r2, #0
	str	lr, [sp, #-4]!
	ldr	lr, .L8
	strh	lr, [r3]	@ movhi
	strh	r0, [r3, #132]	@ movhi
	strh	ip, [r3, #128]	@ movhi
	ldr	r0, .L8+4
	strh	r1, [r3, #130]	@ movhi
	ldr	r1, .L8+8
	ldrh	r0, [r0, #48]
	ldr	r3, .L8+12
	ldr	lr, [sp], #4
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	1027
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L17
	ldr	r3, [r4]
	ldr	r2, .L17+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L17+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L17+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L16
.L10:
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	r0, [r4]
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L17+24
	ldr	r3, .L17+28
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	rSeed
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	state
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L20
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"game paused!\000"
	.align	2
.LC2:
	.ascii	"press start to continue\000"
	.align	2
.LC3:
	.ascii	"press select to quit\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #83886080
	mov	r0, #239
	ldr	r3, .L24
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+4
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #38
	mov	r0, #90
	ldr	r2, .L24+8
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #58
	mov	r0, #60
	ldr	r2, .L24+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L24+16
	mov	r1, #68
	mov	r0, #70
	ldrb	r3, [r5, #36]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L24+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	fillScreen4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"you lost!\000"
	.align	2
.LC5:
	.ascii	"score: \000"
	.align	2
.LC6:
	.ascii	"press start to try again\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #83886080
	sub	sp, sp, #12
	mov	r0, #239
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	ldr	r2, .L28+4
	mov	r3, #24
	str	r2, [sp]
	mov	r1, #90
	mov	r2, #28
	mov	r0, #83
	ldr	r4, .L28+8
	mov	lr, pc
	bx	r4
	ldr	r4, .L28+12
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #48
	mov	r0, #85
	ldr	r2, .L28+16
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #85
	ldr	r2, .L28+20
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #125
	ldr	r2, .L28+24
	mov	lr, pc
	bx	r4
	mov	r1, #88
	mov	r0, #45
	ldr	r2, .L28+28
	ldrb	r3, [r5, #36]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+36
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L28+40
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	fillScreen4
	.word	SPACESHIPUSETHISONE______Bitmap
	.word	drawImage4
	.word	drawString4
	.word	.LC4
	.word	.LC5
	.word	hscore
	.word	.LC6
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"lives: \000"
	.align	2
.LC8:
	.ascii	"%d\000"
	.text
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	mov	r5, #83886080
	mov	r1, #2
	ldr	r4, .L39+8
	mov	r0, r1
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldr	r2, .L39+12
	ldr	r6, .L39+16
	mov	lr, pc
	bx	r4
	ldr	r8, .L39+20
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #10
	mov	r0, #2
	ldr	r2, .L39+24
	mov	lr, pc
	bx	r4
	ldr	r7, .L39+28
	ldr	r2, [r6]
	ldr	r1, .L39+32
	ldr	r0, .L39+36
	mov	lr, pc
	bx	r7
	ldr	r2, [r8]
	ldr	r1, .L39+32
	ldr	r0, .L39+40
	mov	lr, pc
	bx	r7
	mov	r1, #2
	mov	r0, #42
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldr	r2, .L39+36
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #42
	ldr	r2, .L39+40
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L39+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L31
	ldr	r3, .L39+56
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L37
.L31:
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L38
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L38:
	ldr	r2, [r8]
	ldr	r3, .L39+60
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToLose
.L37:
	bl	goToPause
	b	.L31
.L40:
	.align	2
.L39:
	.word	updateGame
	.word	drawGame
	.word	drawString4
	.word	.LC7
	.word	.LANCHOR0
	.word	score
	.word	.LC5
	.word	sprintf
	.word	.LC8
	.word	buffer
	.word	hscore
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.word	temp
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L48
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L42
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
.L42:
	ldr	r3, .L48+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L47:
	bl	goToStart
	b	.L42
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"scoreboard\000"
	.align	2
.LC10:
	.ascii	"1. \000"
	.align	2
.LC11:
	.ascii	"2. \000"
	.align	2
.LC12:
	.ascii	"3. \000"
	.text
	.align	2
	.global	goToScoreboard
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToScoreboard, %function
goToScoreboard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #83886080
	push	{r4, r5, r6, lr}
	ldr	r6, .L58
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L51
	ldr	r3, .L58+8
	ldr	r3, [r3]
	strb	r3, [r6]
.L52:
	mov	r5, #83886080
	ldr	r2, .L58+12
	mov	r3, #24
	str	r2, [sp]
	mov	r1, #90
	mov	r2, #28
	mov	r0, #83
	ldr	r4, .L58+16
	mov	lr, pc
	bx	r4
	ldr	r4, .L58+20
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #48
	mov	r0, #85
	ldr	r2, .L58+24
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #85
	ldr	r2, .L58+28
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #125
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #80
	mov	r0, #85
	ldr	r2, .L58+32
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	mov	r1, #80
	mov	r0, #125
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #92
	mov	r0, #85
	ldr	r2, .L58+36
	mov	lr, pc
	bx	r4
	ldrb	r2, [r6, #2]	@ zero_extendqisi2
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #92
	mov	r0, #125
	mov	lr, pc
	bx	r4
	mov	r1, #148
	mov	r0, #45
	ldr	r2, .L58+40
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+48
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L58+52
	str	r2, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r2, .L58+8
	ldr	r2, [r2]
	cmp	r3, r2
	bge	.L53
	ldr	r1, .L58+56
	strb	r2, [r6]
	strb	r3, [r6, #1]
	strb	r3, [r1]
	b	.L52
.L53:
	ble	.L52
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	rsbs	r1, r3, #1
	movcc	r1, #0
	cmp	r2, r3
	orrgt	r1, r1, #1
	cmp	r1, #0
	ldrne	r1, .L58+56
	strbne	r2, [r6, #1]
	strbne	r3, [r6, #2]
	strbne	r3, [r1]
	b	.L52
.L59:
	.align	2
.L58:
	.word	leaderboard
	.word	fillScreen4
	.word	score
	.word	SPACESHIPUSETHISONE______Bitmap
	.word	drawImage4
	.word	drawString4
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC6
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	temp
	.size	goToScoreboard, .-goToScoreboard
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L76
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L61
	ldr	r2, .L76+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #1
	ldreq	r2, .L76+8
	streq	r1, [r2]
.L61:
	tst	r3, #4
	beq	.L62
	ldr	r2, .L76+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L74
.L62:
	tst	r3, #1
	beq	.L60
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L75
.L60:
	pop	{r4, lr}
	bx	lr
.L75:
	pop	{r4, lr}
	b	goToScoreboard
.L74:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L62
.L77:
	.align	2
.L76:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.align	2
	.global	scoreboard
	.syntax unified
	.arm
	.fpu softvfp
	.type	scoreboard, %function
scoreboard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L90
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L79
	ldr	r2, .L90+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L88
.L79:
	tst	r3, #1
	beq	.L78
	ldr	r3, .L90+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L89
.L78:
	pop	{r4, lr}
	bx	lr
.L89:
	pop	{r4, lr}
	b	goToPause
.L88:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L79
.L91:
	.align	2
.L90:
	.word	oldButtons
	.word	buttons
	.size	scoreboard, .-scoreboard
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	mov	r3, #67108864
	mvn	ip, #170
	mov	lr, #128
	mov	r1, #2
	mov	r0, #0
	ldr	r6, .L102
	ldr	r4, .L102+4
	strh	r6, [r3]	@ movhi
	ldr	r2, .L102+8
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #132]	@ movhi
	strh	ip, [r3, #128]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	ldr	r8, .L102+12
	mov	r5, r2
	ldr	r4, .L102+16
	ldrh	r2, [r2, #48]
	ldr	r6, .L102+20
	ldr	r3, .L102+24
	strh	r2, [r8]	@ movhi
	strh	r0, [r4]	@ movhi
	ldr	fp, .L102+28
	mov	lr, pc
	bx	r3
	ldr	r10, .L102+32
	ldrh	r3, [r8]
	ldr	ip, [r6]
	ldr	r9, .L102+36
	ldr	r7, .L102+40
.L100:
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r8]	@ movhi
	cmp	ip, #5
	ldrls	pc, [pc, ip, asl #2]
	b	.L93
.L95:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L93
	.word	.L96
	.word	.L94
.L94:
	ldr	r3, .L102+44
	mov	lr, pc
	bx	r3
	ldrh	r3, [r8]
	ldr	ip, [r6]
.L93:
	ldr	r0, [r7]
	add	r0, r0, #1
	str	r0, [r7]
	b	.L100
.L96:
	ldr	r3, .L102+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L93
.L97:
	mov	lr, pc
	bx	r9
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L93
.L99:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L93
.L98:
	mov	lr, pc
	bx	r10
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L93
.L103:
	.align	2
.L102:
	.word	1044
	.word	1027
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	state
	.word	goToStart
	.word	start
	.word	game
	.word	pause
	.word	.LANCHOR1
	.word	scoreboard
	.word	lose
	.size	main, .-main
	.comm	leaderboard,3,4
	.comm	temp,1,1
	.comm	hscore,41,4
	.comm	buffer,41,4
	.comm	temp2,1,4
	.comm	rSeed,4,4
	.comm	state,4,4
	.global	lives
	.comm	highscore,4,4
	.comm	score,4,4
	.global	skipFrames
	.global	t
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	NOTES,2,2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	lives, %object
	.size	lives, 4
lives:
	.word	5
	.type	skipFrames, %object
	.size	skipFrames, 4
skipFrames:
	.word	2
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	t, %object
	.size	t, 4
t:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

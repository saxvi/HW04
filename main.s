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
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+32
	ldr	r2, .L4+36
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
	.word	flipPage
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
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L17+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L16
.L10:
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	r0, [r4]
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L17+20
	ldr	r3, .L17+24
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
	.ascii	"lives: \000"
	.align	2
.LC5:
	.ascii	"score: \000"
	.align	2
.LC6:
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+4
	mov	lr, pc
	bx	r3
	mov	r5, #83886080
	mov	r1, #2
	ldr	r4, .L33+8
	mov	r0, r1
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldr	r2, .L33+12
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #2
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldr	r2, .L33+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L33+20
	ldr	r1, .L33+24
	ldr	r2, [r3]
	ldr	r6, .L33+28
	ldr	r0, .L33+32
	mov	lr, pc
	bx	r6
	ldr	r3, .L33+36
	ldr	r1, .L33+24
	ldr	r2, [r3]
	ldr	r0, .L33+40
	mov	lr, pc
	bx	r6
	mov	r1, #2
	mov	r0, #42
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldr	r2, .L33+32
	mov	lr, pc
	bx	r4
	mov	r1, #10
	mov	r0, #42
	ldr	r2, .L33+40
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L33+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L26
	ldr	r3, .L33+56
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L32
.L26:
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L34:
	.align	2
.L33:
	.word	updateGame
	.word	drawGame
	.word	drawString4
	.word	.LC4
	.word	.LC5
	.word	.LANCHOR0
	.word	.LC6
	.word	sprintf
	.word	buffer
	.word	score
	.word	hscore
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	game, .-game
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"you lost!\000"
	.align	2
.LC8:
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
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r2, .L37+4
	mov	r3, #24
	str	r2, [sp]
	mov	r1, #90
	mov	r2, #28
	mov	r0, #83
	ldr	r4, .L37+8
	mov	lr, pc
	bx	r4
	ldr	r4, .L37+12
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #48
	mov	r0, #85
	ldr	r2, .L37+16
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #85
	ldr	r2, .L37+20
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #125
	ldr	r2, .L37+24
	mov	lr, pc
	bx	r4
	mov	r1, #88
	mov	r0, #45
	ldr	r2, .L37+28
	ldrb	r3, [r5, #36]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L37+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+36
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L37+40
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	fillScreen4
	.word	SPACESHIPUSETHISONE______Bitmap
	.word	drawImage4
	.word	drawString4
	.word	.LC7
	.word	.LC5
	.word	hscore
	.word	.LC8
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r3, .L46
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L40
	ldr	r3, .L46+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
.L40:
	ldr	r3, .L46+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L45:
	bl	goToStart
	b	.L40
.L47:
	.align	2
.L46:
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"this is where\000"
	.align	2
.LC10:
	.ascii	"i will put score \000"
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
	push	{r4, r5, lr}
	mov	r5, #83886080
	sub	sp, sp, #12
	mov	r0, #239
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r2, .L50+4
	mov	r3, #24
	str	r2, [sp]
	mov	r1, #90
	mov	r2, #28
	mov	r0, #83
	ldr	r4, .L50+8
	mov	lr, pc
	bx	r4
	ldr	r4, .L50+12
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	mov	r1, #48
	mov	r0, #85
	ldr	r2, .L50+16
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #85
	ldr	r2, .L50+20
	mov	lr, pc
	bx	r4
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	r1, #68
	mov	r0, #125
	ldr	r2, .L50+24
	mov	lr, pc
	bx	r4
	mov	r1, #88
	mov	r0, #45
	ldr	r2, .L50+28
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+36
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L50+40
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	fillScreen4
	.word	SPACESHIPUSETHISONE______Bitmap
	.word	drawImage4
	.word	drawString4
	.word	.LC9
	.word	.LC10
	.word	hscore
	.word	.LC8
	.word	waitForVBlank
	.word	flipPage
	.word	state
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
	ldr	r4, .L68
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L53
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #1
	ldreq	r2, .L68+8
	streq	r1, [r2]
.L53:
	tst	r3, #4
	beq	.L54
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L66
.L54:
	tst	r3, #1
	beq	.L52
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L67
.L52:
	pop	{r4, lr}
	bx	lr
.L67:
	pop	{r4, lr}
	b	goToScoreboard
.L66:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L54
.L69:
	.align	2
.L68:
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
	ldr	r4, .L82
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L71
	ldr	r2, .L82+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L80
.L71:
	tst	r3, #1
	beq	.L70
	ldr	r3, .L82+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L81
.L70:
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToPause
.L80:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L71
.L83:
	.align	2
.L82:
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
	ldr	r6, .L94
	ldr	r4, .L94+4
	strh	r6, [r3]	@ movhi
	ldr	r2, .L94+8
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #132]	@ movhi
	strh	ip, [r3, #128]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	ldr	r8, .L94+12
	mov	r5, r2
	ldr	r4, .L94+16
	ldrh	r2, [r2, #48]
	ldr	r6, .L94+20
	ldr	r3, .L94+24
	strh	r2, [r8]	@ movhi
	strh	r0, [r4]	@ movhi
	ldr	fp, .L94+28
	mov	lr, pc
	bx	r3
	ldr	r10, .L94+32
	ldrh	r3, [r8]
	ldr	ip, [r6]
	ldr	r9, .L94+36
	ldr	r7, .L94+40
.L92:
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r8]	@ movhi
	cmp	ip, #5
	ldrls	pc, [pc, ip, asl #2]
	b	.L85
.L87:
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L85
	.word	.L88
	.word	.L86
.L86:
	ldr	r3, .L94+44
	mov	lr, pc
	bx	r3
	ldrh	r3, [r8]
	ldr	ip, [r6]
.L85:
	ldr	r0, [r7]
	add	r0, r0, #1
	str	r0, [r7]
	b	.L92
.L88:
	ldr	r3, .L94+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L85
.L89:
	mov	lr, pc
	bx	r9
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L85
.L91:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L85
.L90:
	mov	lr, pc
	bx	r10
	ldrh	r3, [r8]
	ldr	ip, [r6]
	b	.L85
.L95:
	.align	2
.L94:
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

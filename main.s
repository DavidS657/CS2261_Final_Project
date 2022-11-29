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
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L21
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L15
	ldr	r3, .L21+4
	ldr	r2, [r3, #12]
	cmp	r2, #0
	push	{r4, lr}
	beq	.L4
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L4
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L19
	ldr	r0, .L21+8
	ldr	r1, .L21+12
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L4:
	ldr	r3, .L21+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L8
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L8
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L20
	ldr	r0, .L21+8
	ldr	r1, .L21+12
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
.L8:
	mov	r2, #1
	ldr	r3, .L21
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L21
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L15:
	mov	r2, #1
	ldr	r3, .L21
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L19:
	ldm	r3, {r0, r1}
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	b	.L4
.L20:
	ldm	r3, {r0, r1}
	ldr	r3, .L21+24
	mov	lr, pc
	bx	r3
	b	.L8
.L22:
	.align	2
.L21:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	playSoundA
	.word	playSoundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r4, #0
	ldr	r0, .L27
	ldr	r1, .L27+4
	strh	r4, [r3, #18]	@ movhi
	ldr	r2, .L27+8
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #20]	@ movhi
	str	r4, [r0]
	str	r4, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L27+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L27+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+24
	mov	lr, pc
	bx	r5
	mov	r3, #2608
	mov	r0, #3
	ldr	r2, .L27+28
	ldr	r1, .L27+32
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L27+36
	ldr	r1, .L27+40
	mov	lr, pc
	bx	r5
	mov	r3, #2608
	mov	r0, #3
	ldr	r2, .L27+44
	ldr	r1, .L27+32
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L27+48
	mov	r0, #3
	ldr	r1, .L27+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L27+52
	ldr	r2, [r3]
	ldr	r3, .L27+56
	cmp	r2, r4
	str	r4, [r3]
	beq	.L26
.L24:
	mov	r2, #0
	ldr	r3, .L27+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L26:
	ldr	r3, .L27+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L27+72
	ldr	r3, .L27+76
	mov	lr, pc
	bx	r3
	b	.L24
.L28:
	.align	2
.L27:
	.word	levelsCleared
	.word	usedCheat
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	bgStartPal
	.word	100679680
	.word	bgStartTiles
	.word	100724736
	.word	bgStartMap
	.word	100696064
	.word	100720640
	.word	comingFromInstructions
	.word	seed
	.word	state
	.word	stopSound
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
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
	push	{r4, lr}
	mov	r3, #4864
	mov	r4, #67108864
	ldr	r1, .L31
	ldr	r2, .L31+4
	strh	r3, [r4]	@ movhi
	strh	r1, [r4, #10]	@ movhi
	ldr	r3, .L31+8
	strh	r2, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldrh	r1, [r4, #4]
	ldr	r3, .L31+12
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	r0, .L31+16
	strh	r1, [r4, #4]	@ movhi
	ldr	r1, .L31+20
	orr	r2, r2, ip
	strh	r2, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	str	r1, [r0, #4092]
	b	goToStart
.L32:
	.align	2
.L31:
	.word	24068
	.word	23560
	.word	setupSounds
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	initialize, .-initialize
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
	push	{r4, r5, r6, lr}
	ldr	r6, .L56
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L45
	cmp	r0, #1
	ldr	r4, .L56+4
	beq	.L47
.L35:
	cmp	r0, #2
	beq	.L48
.L36:
	cmp	r0, #3
	beq	.L49
.L37:
	cmp	r0, #4
	beq	.L50
.L38:
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L56+8
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L56+16
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #0
	beq	.L51
	cmp	r5, #1
	beq	.L52
.L40:
	cmp	r5, #2
	beq	.L53
.L41:
	cmp	r5, #3
	beq	.L54
.L42:
	cmp	r5, #4
	beq	.L55
.L43:
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L56+24
	ldr	r1, .L56+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L56+32
	ldr	r1, .L56+36
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+40
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+44
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L56+56
	ldr	r3, .L56+60
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #2
	ldr	r2, .L56+64
	ldr	r0, .L56+68
	ldrh	r2, [r2]
	ldrh	r0, [r0]
	strh	r2, [r3, #18]	@ movhi
	ldr	r2, .L56+72
	strh	r0, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	bx	lr
.L45:
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L56+76
	ldr	r4, .L56+4
	mov	lr, pc
	bx	r4
	ldr	r0, [r6]
	cmp	r0, #1
	bne	.L35
.L47:
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L56+80
	mov	lr, pc
	bx	r4
	ldr	r0, [r6]
	cmp	r0, #2
	bne	.L36
.L48:
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L56+84
	mov	lr, pc
	bx	r4
	ldr	r0, [r6]
	cmp	r0, #3
	bne	.L37
.L49:
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L56+88
	mov	lr, pc
	bx	r4
	ldr	r0, [r6]
	cmp	r0, #4
	bne	.L38
.L50:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+92
	mov	lr, pc
	bx	r4
	b	.L38
.L51:
	mov	r3, #2368
	mov	r0, #3
	ldr	r2, .L56+96
	ldr	r1, .L56+100
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L56+104
	ldr	r1, .L56+108
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #1
	bne	.L40
.L52:
	mov	r3, #5568
	mov	r0, #3
	ldr	r2, .L56+96
	ldr	r1, .L56+112
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L56+104
	ldr	r1, .L56+116
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #2
	bne	.L41
.L53:
	mov	r0, #3
	ldr	r3, .L56+120
	ldr	r2, .L56+96
	ldr	r1, .L56+124
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L56+104
	ldr	r1, .L56+128
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #3
	bne	.L42
.L54:
	mov	r0, r5
	ldr	r3, .L56+132
	ldr	r2, .L56+96
	ldr	r1, .L56+136
	mov	lr, pc
	bx	r4
	mov	r0, r5
	mov	r3, #2048
	ldr	r2, .L56+104
	ldr	r1, .L56+140
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #4
	bne	.L43
.L55:
	mov	r0, #3
	ldr	r3, .L56+144
	ldr	r2, .L56+96
	ldr	r1, .L56+148
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L56+104
	ldr	r1, .L56+152
	mov	lr, pc
	bx	r4
	b	.L43
.L57:
	.align	2
.L56:
	.word	levelsCleared
	.word	DMANow
	.word	100679680
	.word	parallaxSkyTiles
	.word	100724736
	.word	parallaxSkyMap
	.word	100728832
	.word	playerBlastSpritesheetTiles
	.word	83886592
	.word	playerBlastSpritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	gameSong_length
	.word	gameSong_data
	.word	playSoundA
	.word	vOff
	.word	hOff
	.word	state
	.word	levelOnePal
	.word	levelTwoPal
	.word	levelThreePal
	.word	levelFourPal
	.word	levelFivePal
	.word	100696064
	.word	levelOneTiles
	.word	100720640
	.word	levelOneMap
	.word	levelTwoTiles
	.word	levelTwoMap
	.word	4576
	.word	levelThreeTiles
	.word	levelThreeMap
	.word	6064
	.word	levelFourTiles
	.word	levelFourMap
	.word	6128
	.word	levelFiveTiles
	.word	levelFiveMap
	.size	goToGame, .-goToGame
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
	mov	r2, #67108864
	mov	r3, #0
	ldr	r0, .L60
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L60+4
	strh	r3, [r2, #18]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	ldr	r3, .L60+8
	ldr	r4, .L60+12
	mov	lr, pc
	bx	r3
	ldr	r7, .L60+16
	ldr	r6, .L60+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L60+24
	mov	lr, pc
	bx	r4
	ldr	r5, .L60+28
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+32
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r0, #3
	ldr	r2, .L60+36
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L60+40
	mov	lr, pc
	bx	r4
	mov	r3, r7
	mov	r1, r6
	mov	r0, #3
	ldr	r2, .L60+44
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L60+48
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L60+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L60+60
	ldr	r3, .L60+64
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L60+68
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
	.word	comingFromInstructions
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	5408
	.word	bgPauseTiles
	.word	shadowOAM
	.word	bgPauseMap
	.word	bgPausePal
	.word	100679680
	.word	100724736
	.word	100696064
	.word	100720640
	.word	stopSound
	.word	restSong_length
	.word	restSong_data
	.word	playSoundA
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r4, .L74
	ldr	r3, .L74+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L63
	ldr	r2, .L74+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L72
.L63:
	tst	r3, #4
	beq	.L62
	ldr	r3, .L74+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L73
.L62:
	pop	{r4, lr}
	bx	lr
.L73:
	pop	{r4, lr}
	b	goToStart
.L72:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L63
.L75:
	.align	2
.L74:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	pause, .-pause
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+4
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	lr, #67108864
	ldr	r2, .L78+8
	ldr	r4, .L78+12
	str	ip, [r2]
	ldr	r6, .L78+16
	strh	ip, [lr, #18]	@ movhi
	mov	r3, #512
	strh	ip, [lr, #16]	@ movhi
	mov	r2, #117440512
	strh	ip, [lr, #22]	@ movhi
	mov	r0, #3
	strh	ip, [lr, #20]	@ movhi
	ldr	r1, .L78+20
	mov	lr, pc
	bx	r4
	ldr	r5, .L78+24
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+28
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1248
	mov	r0, #3
	ldr	r2, .L78+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L78+36
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1248
	mov	r0, #3
	ldr	r2, .L78+40
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L78+44
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L78+56
	ldr	r3, .L78+60
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L78+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	waitForVBlank
	.word	hideSprites
	.word	comingFromInstructions
	.word	DMANow
	.word	bgLoseTiles
	.word	shadowOAM
	.word	bgLoseMap
	.word	bgLosePal
	.word	100679680
	.word	100724736
	.word	100696064
	.word	100720640
	.word	stopSound
	.word	loseSong_length
	.word	loseSong_data
	.word	playSoundA
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
	ldr	r3, .L87
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
	ldr	r3, .L87+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L80:
	pop	{r4, lr}
	bx	lr
.L86:
	pop	{r4, lr}
	b	goToStart
.L88:
	.align	2
.L87:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	goToComplete
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToComplete, %function
goToComplete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r2, .L91+4
	ldr	r3, .L91+8
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	ldr	r6, .L91+12
	strh	r4, [ip, #18]	@ movhi
	mov	r3, #512
	strh	r4, [ip, #16]	@ movhi
	mov	r2, #117440512
	strh	r4, [ip, #22]	@ movhi
	mov	r0, #3
	strh	r4, [ip, #20]	@ movhi
	ldr	r1, .L91+16
	ldr	r4, .L91+20
	mov	lr, pc
	bx	r4
	ldr	r5, .L91+24
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+28
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1456
	mov	r0, #3
	ldr	r2, .L91+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L91+36
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #1456
	mov	r0, #3
	ldr	r2, .L91+40
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r0, #3
	ldr	r2, .L91+44
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L91+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L91+56
	ldr	r3, .L91+60
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L91+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	waitForVBlank
	.word	comingFromInstructions
	.word	hideSprites
	.word	bgCompleteTiles
	.word	shadowOAM
	.word	DMANow
	.word	bgCompleteMap
	.word	bgCompletePal
	.word	100679680
	.word	100724736
	.word	100696064
	.word	100720640
	.word	stopSound
	.word	pauseSong_length
	.word	pauseSong_data
	.word	playSoundA
	.word	state
	.size	goToComplete, .-goToComplete
	.align	2
	.global	complete
	.syntax unified
	.arm
	.fpu softvfp
	.type	complete, %function
complete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L105
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L94
	ldr	r2, .L105+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L103
.L94:
	tst	r3, #8
	beq	.L93
	ldr	r3, .L105+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L104
.L93:
	pop	{r4, lr}
	bx	lr
.L104:
	ldr	r3, .L105+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L103:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L94
.L106:
	.align	2
.L105:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	initGame
	.size	complete, .-complete
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	r3, .L113
	mov	lr, pc
	bx	r3
	ldr	r2, .L113+4
	ldr	r3, .L113+8
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #100
	mov	r1, #136
	ldr	r2, .L113+12
	ldr	r2, [r2]
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #22]	@ movhi
	strh	r4, [r3, #20]	@ movhi
	ldr	r3, .L113+16
	cmp	r2, #2
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	bgt	.L108
	ldr	r2, .L113+20
	strh	r2, [r3, #12]	@ movhi
.L109:
	ldr	r4, .L113+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L113+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L113+28
	mov	lr, pc
	bx	r4
	mov	r3, #1648
	mov	r0, #3
	ldr	r2, .L113+32
	ldr	r1, .L113+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L113+40
	ldr	r1, .L113+44
	mov	lr, pc
	bx	r4
	mov	r3, #1648
	mov	r0, #3
	ldr	r2, .L113+48
	ldr	r1, .L113+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L113+52
	ldr	r1, .L113+44
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L113+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L113+64
	ldr	r3, .L113+68
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L113+72
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L108:
	cmp	r2, #3
	ldreq	r2, .L113+76
	strheq	r2, [r3, #12]	@ movhi
	beq	.L109
	ldr	r2, .L113+80
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #944
	ldreq	r2, .L113+84
	strh	r2, [r3, #12]	@ movhi
	b	.L109
.L114:
	.align	2
.L113:
	.word	waitForVBlank
	.word	comingFromInstructions
	.word	hideSprites
	.word	playerLives
	.word	shadowOAM
	.word	946
	.word	DMANow
	.word	bgWinPal
	.word	100679680
	.word	bgWinTiles
	.word	100724736
	.word	bgWinMap
	.word	100696064
	.word	100720640
	.word	stopSound
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	state
	.word	945
	.word	usedCheat
	.word	978
	.size	goToWin, .-goToWin
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
	push	{r4, lr}
	ldr	r3, .L130
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L116
	ldr	r3, .L130+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L126
.L116:
	ldr	r3, .L130+16
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L127
.L120:
	ldr	r3, .L130+20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L128
.L115:
	pop	{r4, lr}
	bx	lr
.L126:
	ldr	r3, .L130+24
	ldr	r3, [r3]
	cmp	r3, #300
	blt	.L116
	ldr	r3, .L130+28
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L116
	ldr	r3, .L130+32
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L115
	ldr	r3, .L130+36
	ldr	r3, [r3]
	cmn	r3, #9
	bge	.L120
	bl	goToPause
	b	.L116
.L128:
	ldr	r3, .L130+24
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L115
	ldr	r2, .L130+40
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #5
	str	r3, [r2]
	beq	.L129
	pop	{r4, lr}
	b	goToComplete
.L127:
	ldr	r3, .L130+32
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L120
	ldr	r3, .L130+36
	ldr	r3, [r3]
	cmn	r3, #9
	bge	.L120
	bl	goToLose
	b	.L120
.L129:
	pop	{r4, lr}
	b	goToWin
.L131:
	.align	2
.L130:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	playerLives
	.word	enemyCount
	.word	winTimer
	.word	cheatTimer
	.word	deathTimer
	.word	deathTranTimer
	.word	levelsCleared
	.size	game, .-game
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L135
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+4
	mov	lr, pc
	bx	r3
	mov	lr, #0
	mov	ip, #67108864
	ldr	r4, .L135+8
	strh	lr, [ip, #18]	@ movhi
	ldr	r6, .L135+12
	strh	lr, [ip, #16]	@ movhi
	mov	r3, #512
	strh	lr, [ip, #22]	@ movhi
	mov	r2, #117440512
	strh	lr, [ip, #20]	@ movhi
	mov	r0, #3
	ldr	r1, .L135+16
	mov	lr, pc
	bx	r4
	ldr	r5, .L135+20
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L135+24
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #3920
	mov	r0, #3
	ldr	r2, .L135+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L135+32
	mov	lr, pc
	bx	r4
	mov	r1, r6
	mov	r3, #3920
	mov	r0, #3
	ldr	r2, .L135+36
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #1024
	ldr	r2, .L135+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L135+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L136:
	.align	2
.L135:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	bgInstructionsTiles
	.word	shadowOAM
	.word	bgInstructionsMap
	.word	bgInstructionsPal
	.word	100679680
	.word	100724736
	.word	100696064
	.word	100720640
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	ldr	r2, .L149
	ldr	r4, .L149+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L138
	ldr	r2, .L149+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L147
.L138:
	tst	r3, #4
	beq	.L137
	ldr	r3, .L149+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L148
.L137:
	pop	{r4, lr}
	bx	lr
.L148:
	pop	{r4, lr}
	b	goToInstructions
.L147:
	ldr	r3, .L149+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L149+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L138
.L150:
	.align	2
.L149:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L158
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L158+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L151
	ldr	r3, .L158+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L157
.L151:
	pop	{r4, lr}
	bx	lr
.L157:
	mov	r2, #1
	ldr	r3, .L158+12
	pop	{r4, lr}
	str	r2, [r3]
	b	goToStart
.L159:
	.align	2
.L158:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	comingFromInstructions
	.size	instructions, .-instructions
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
	ldr	r3, .L173
	mov	lr, pc
	bx	r3
	ldr	r6, .L173+4
	ldr	r8, .L173+8
	ldr	r5, .L173+12
	ldr	fp, .L173+16
	ldr	r10, .L173+20
	ldr	r9, .L173+24
	ldr	r7, .L173+28
	ldr	r4, .L173+32
.L161:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L162:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L162
.L164:
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L166
	.word	.L165
	.word	.L163
	.word	.L163
.L163:
	mov	lr, pc
	bx	r7
	b	.L161
.L165:
	ldr	r3, .L173+36
	mov	lr, pc
	bx	r3
	b	.L161
.L166:
	ldr	r3, .L173+40
	mov	lr, pc
	bx	r3
	b	.L161
.L167:
	mov	lr, pc
	bx	r9
	b	.L161
.L168:
	mov	lr, pc
	bx	r10
	b	.L161
.L169:
	mov	lr, pc
	bx	fp
	b	.L161
.L174:
	.align	2
.L173:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	lose
	.word	67109120
	.word	complete
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L177
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L177+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L177+8
	orr	r2, r2, lr
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L178:
	.align	2
.L177:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	comingFromInstructions,4,4
	.comm	state,4,4
	.comm	seed,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
